#!/usr/bin/perl
# Tcp  password generator server (PROTOTYPE)
# Peter Walsh csci 265
use lib './';
use mailer;
use IO::Socket;
use Session::Token;

$sock = new IO::Socket::INET (
                              LocalHost => 'localhost',
                              LocalPort => '7071',
                              Proto => 'tcp',
			                  Listen => 5,
                              Reuse => 1
                              );
die "Could not create socket: $!\n" unless $sock;

$NUMMAX=200;
$SIZMAX=200;

while ($new_sock = $sock->accept()) {
   $line=<$new_sock>;
   chop $line;
   ($pnum, $ptype, $psiz) = split(":", $line);

   if (($pnum > $NUMMAX) || ($pnum <= 0)) {
      $pnum=1;
   }

   if (($psiz > $SIZMAX) || ($psiz <= 0)) {
      $psiz=8;
   }


   if ($ptype eq "num") { 
      $pgen = Session::Token->new(alphabet => ['0'..'9'] , length => $psiz);
   } else {
      $pgen = Session::Token->new(length => $psiz);
   }

   for ($i=0; $i<$pnum; $i++) {
      $pass = $pgen->get;
      print "$pass \n";
      print $new_sock  $pass , "\n";
      mailer->new($new_sock);
      print $new_sock "My Socket BITCH \n"; 
   }
   print "Send CLOSE to client \n";
   print $new_sock  "CLOSE\n"; 
   close($new_sock);
}

close($sock);

