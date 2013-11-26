# Simple perl script with signals.

$|=1;

use strict;
use warnings;

use Try::Tiny;
use IO::Socket;

$SIG{__DIE__} =sub { };
$SIG{INT} = sub { die "ctrl C detected" };
$SIG{PIPE} = sub { die "broken pipe detected" };


sub get_option {
   print ("\n0. Perform a devide by 0 \n");
   print ("1. Perform a CTRL C \n");
   print ("2. Read from a closed pipe \n");
   print ("3. Exit script \n");
   print ("\nMake your selection: ");
   my $r=<>;
   chop($r);
   if (($r<0) || ($r>3)) {
      print ("EXIT... bad value\n");
      exit(0);
   } else { 
      return($r);
   }
}
   
while (1) {
   do {

      try {
          my $option=get_option();

          if ($option==0) {
             my $x=6/0;
          } elsif ($option==1) {
             die ("ctrl C selected (not typed) ") ;
          } elsif ($option==2) {
             # a SIG PIPE is thrown by reading from a broken pipe
             `echo "print 7;" > ret7.pl`;
             open(IN, "perl ret7.pl |");
             my $x=<IN>;
             `rm -f ret7.pl`;
             $x=<IN>;
             print $x;
          } elsif ($option==3) {
             exit (0);
          }

      }

      catch {
         print ("Signal ignored $_");
      }

   };

}




