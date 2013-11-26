#!/usr/bin/perl
# password generator client (PROTOTYPE)
#  Justin Pye CSCI 265 - Peter Walsh

use strict;
use IO::Socket;
use Getopt::Long;

#File Variable
my $length = 8;
my $type = "num";
my $version = '';

#Sub Routines 
sub handT {
    my ($optname, $value) = @_;
    if ($value eq "alnum" || $value eq "num") {
        $type = $value;
    } else {
        print("Error: Invalid Type\n");
        exit;
    }
}

sub handN {
    my ($optname, $value) = @_;
    if ($value >= 2 && $value <= 64) {
        $length = $value;
    } else {
        print("Error: Invalid Length\n");
        exit;
    }
}

$SIG{__WARN__} = sub { };
GetOptions ("v" => \$version,
            "t:s" => \&handT,
			"n:i" => \&handN,
			'<>' => sub { die("Error: Invalid Switch\n") })
or die("Error: Invalid Switch\n");

my $sock = new IO::Socket::INET (
                              PeerAddr => 'localhost',
                              PeerPort => '7071',
                              Proto => 'tcp'
                             );
die "Error: Unable to Connect To Password Server\n" unless $sock;

if ($version) { print "Version: 0.1\n" };

print "Password: ";
print $sock "1:$type:$length\n";

while (1) {
   my $pass = <$sock>;
   chop $pass;
   last if $pass eq "CLOSE";
   print "$pass \n";
}


