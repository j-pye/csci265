#!/usr/bin/perl
# password generator client (PROTOTYPE)
# Peter Walsh csci 265

use IO::Socket;

$sock = new IO::Socket::INET (
                              PeerAddr => '192.168.18.248',
                              PeerPort => '7071',
                              Proto => 'tcp'
                             );
die "Could not create socket: $!\n" unless $sock;

# request 6 passwords of type num each with 12 characters
print $sock "6:num:12\n";

while (1) {
   $pass = <$sock>;
   chop $pass;
   last if $pass eq "CLOSE";
   print "$pass \n";
}

