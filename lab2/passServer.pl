#!/usr/bin/perl
# Tcp  password generator server Tester (PROTOTYPE)
# Peter Walsh csci 265

use lib '/home/faculty/pwalsh/lib/x86_64-linux-gnu-thread-multi';
use IO::Socket;
use Session::Token;

$sock = new IO::Socket::INET (
                              LocalHost => '',
                              LocalPort => '7071',
                              Proto => 'tcp',
			      Listen => 3,
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
      # added for testing
      if ($ptype eq "num") { 
         $pass=~s/./0/g;
      } else {
         $pass=~s/./a/g;
      }
      print "$pass \n";
      print $new_sock  $pass , "\n"; 
   }
   print "Send CLOSE to client \n";
   print $new_sock  "CLOSE\n"; 
   close($new_sock);
}

close($sock);

