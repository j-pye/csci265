#================================================================--
# Design Unit  : cew testbench for stack
#
# File Name    : tb.cew
#
# Purpose      : unit testing
#
# Note         :
#
# Limitations  :
#
# Errors       : none known
#
# Modules      : stack_adt::stack
#
# Dependences  : cew
#
# Author       : Peter Walsh, Vancouver Island University
#
# System       : Perl (Linux)
#
#------------------------------------------------------------------
# Revision List
# Version      Author  Date    Changes
# 1.0          PW      Oct 12  New version
#================================================================--

$|=1;
use strict;
use warnings;











use lib '../';
use stack_adt::stack;
use exc::exception;
use Try::Tiny;

my $cew_Test_Count=0;
          my $cew_Error_Count=0;


# Local Function Load (s, n);
# pushes n values on the stack from
# the sequence 10, 100, 1000 ... 
# note: no exception checking

sub load {
   my $s=shift @_;
   my $n=shift @_;
   
   for (my $i=0; $i<$n; $i++) {
      $s->push(($i+1)*10);
   }
}

#############
# empty stack
#############

my $stack0=stack_adt::stack->new(10);

          do {
              $cew_Test_Count=$cew_Test_Count+1;
              try {
                  $stack0->top();  
                  $cew_Error_Count=$cew_Error_Count+1;
                  print("Test Case ERROR (Ecase) in script at line number ", 60, "\n");
                  print ( "Expected exception full not thrown\n");
              }
              catch {
                  my $error = $_;
                  if (ref($error) eq "exc::exception") {
                      if ($error->get_exc_name() eq "empty") {
                      }
                      else {
                          $cew_Error_Count=$cew_Error_Count+1;  
                          print("Test Case ERROR (Ecase) in script at line number ", 60, "\n");
                          print ( "Unexpected exception ", "empty", " thrown\n");                  
                      }
                  }
               }
           };


          do {
              $cew_Test_Count=$cew_Test_Count+1;
              try {
                  $stack0->pop();  
                  $cew_Error_Count=$cew_Error_Count+1;
                  print("Test Case ERROR (Ecase) in script at line number ", 61, "\n");
                  print ( "Expected exception full not thrown\n");
              }
              catch {
                  my $error = $_;
                  if (ref($error) eq "exc::exception") {
                      if ($error->get_exc_name() eq "empty") {
                      }
                      else {
                          $cew_Error_Count=$cew_Error_Count+1;  
                          print("Test Case ERROR (Ecase) in script at line number ", 61, "\n");
                          print ( "Unexpected exception ", "empty", " thrown\n");                  
                      }
                  }
               }
           };


#################
# half full stack
#################

my $stack1=stack_adt::stack->new(10);

          do {
            $cew_Test_Count=$cew_Test_Count+1;
            try {
                load($stack1, 5) ;
                if (($stack1->top()) != (50)) {
                    $cew_Error_Count=$cew_Error_Count+1;
                    print("Test Case ERROR (Ncase) in script at line number ", 68, "\n");
                    print("Actual Value is ", $stack1->top(), " \n");
                    print("Expected Value is ", 50, "\n");
                }
             }
             catch{
                $cew_Error_Count=$cew_Error_Count+1;
                my $except = $_;
                if (ref($except) eq "exc::exception") {
                    print("Test Case ERROR (Ncase) in script at line number ", 68, "\n");
                    print("Unexpected Exception full thrown\n");
                }
             }
          };


          do {
            $cew_Test_Count=$cew_Test_Count+1;
            try {
                $stack1->pop() ;
                if (($stack1->top()) != (40)) {
                    $cew_Error_Count=$cew_Error_Count+1;
                    print("Test Case ERROR (Ncase) in script at line number ", 69, "\n");
                    print("Actual Value is ", $stack1->top(), " \n");
                    print("Expected Value is ", 40, "\n");
                }
             }
             catch{
                $cew_Error_Count=$cew_Error_Count+1;
                my $except = $_;
                if (ref($except) eq "exc::exception") {
                    print("Test Case ERROR (Ncase) in script at line number ", 69, "\n");
                    print("Unexpected Exception full thrown\n");
                }
             }
          };


          do {
            $cew_Test_Count=$cew_Test_Count+1;
            try {
                $stack1->pop() ;
                if (($stack1->top()) != (30)) {
                    $cew_Error_Count=$cew_Error_Count+1;
                    print("Test Case ERROR (Ncase) in script at line number ", 70, "\n");
                    print("Actual Value is ", $stack1->top(), " \n");
                    print("Expected Value is ", 30, "\n");
                }
             }
             catch{
                $cew_Error_Count=$cew_Error_Count+1;
                my $except = $_;
                if (ref($except) eq "exc::exception") {
                    print("Test Case ERROR (Ncase) in script at line number ", 70, "\n");
                    print("Unexpected Exception full thrown\n");
                }
             }
          };


#################
# full stack
#################

my $stack2=stack_adt::stack->new(10);

          do {
            $cew_Test_Count=$cew_Test_Count+1;
            try {
                load($stack2, 10) ;
                if (($stack2->top()) != (100)) {
                    $cew_Error_Count=$cew_Error_Count+1;
                    print("Test Case ERROR (Ncase) in script at line number ", 77, "\n");
                    print("Actual Value is ", $stack2->top(), " \n");
                    print("Expected Value is ", 100, "\n");
                }
             }
             catch{
                $cew_Error_Count=$cew_Error_Count+1;
                my $except = $_;
                if (ref($except) eq "exc::exception") {
                    print("Test Case ERROR (Ncase) in script at line number ", 77, "\n");
                    print("Unexpected Exception full thrown\n");
                }
             }
          };


          do {
              $cew_Test_Count=$cew_Test_Count+1;
              try {
                  ;  
                  $cew_Error_Count=$cew_Error_Count+1;
                  print("Test Case ERROR (Ecase) in script at line number ", 78, "\n");
                  print ( "Expected exception full not thrown\n");
              }
              catch {
                  my $error = $_;
                  if (ref($error) eq "exc::exception") {
                      if ($error->get_exc_name() eq "full") {
                      }
                      else {
                          $cew_Error_Count=$cew_Error_Count+1;  
                          print("Test Case ERROR (Ecase) in script at line number ", 78, "\n");
                          print ( "Unexpected exception ", "full", " thrown\n");                  
                      }
                  }
               }
           };


          do {
              $cew_Test_Count=$cew_Test_Count+1;
              try {
                  $stack2->push(110);  
                  $cew_Error_Count=$cew_Error_Count+1;
                  print("Test Case ERROR (Ecase) in script at line number ", 79, "\n");
                  print ( "Expected exception full not thrown\n");
              }
              catch {
                  my $error = $_;
                  if (ref($error) eq "exc::exception") {
                      if ($error->get_exc_name() eq "full") {
                      }
                      else {
                          $cew_Error_Count=$cew_Error_Count+1;  
                          print("Test Case ERROR (Ecase) in script at line number ", 79, "\n");
                          print ( "Unexpected exception ", "full", " thrown\n");                  
                      }
                  }
               }
           };


          do {
            $cew_Test_Count=$cew_Test_Count+1;
            try {
                 ;
                if (($stack2->top()) != (100)) {
                    $cew_Error_Count=$cew_Error_Count+1;
                    print("Test Case ERROR (Ncase) in script at line number ", 80, "\n");
                    print("Actual Value is ", $stack2->top(), " \n");
                    print("Expected Value is ", 100, "\n");
                }
             }
             catch{
                $cew_Error_Count=$cew_Error_Count+1;
                my $except = $_;
                if (ref($except) eq "exc::exception") {
                    print("Test Case ERROR (Ncase) in script at line number ", 80, "\n");
                    print("Unexpected Exception full thrown\n");
                }
             }
          };


          do {
            $cew_Test_Count=$cew_Test_Count+1;
            try {
                $stack2->pop() ;
                if (($stack2->top()) != (90)) {
                    $cew_Error_Count=$cew_Error_Count+1;
                    print("Test Case ERROR (Ncase) in script at line number ", 81, "\n");
                    print("Actual Value is ", $stack2->top(), " \n");
                    print("Expected Value is ", 90, "\n");
                }
             }
             catch{
                $cew_Error_Count=$cew_Error_Count+1;
                my $except = $_;
                if (ref($except) eq "exc::exception") {
                    print("Test Case ERROR (Ncase) in script at line number ", 81, "\n");
                    print("Unexpected Exception full thrown\n");
                }
             }
          };


################
# stress test
################

my $stack3=stack_adt::stack->new(100);

for (my $i=0; $i<100; $i++) {
   
          do {
            $cew_Test_Count=$cew_Test_Count+1;
            try {
                $stack3->push($i) ;
                if (($stack3->top()) != ($i)) {
                    $cew_Error_Count=$cew_Error_Count+1;
                    print("Test Case ERROR (Ncase) in script at line number ", 90, "\n");
                    print("Actual Value is ", $stack3->top(), " \n");
                    print("Expected Value is ", $i, "\n");
                }
             }
             catch{
                $cew_Error_Count=$cew_Error_Count+1;
                my $except = $_;
                if (ref($except) eq "exc::exception") {
                    print("Test Case ERROR (Ncase) in script at line number ", 90, "\n");
                    print("Unexpected Exception full thrown\n");
                }
             }
          };

}

for (my $i=99; $i>=0; $i--) {
   
          do {
            $cew_Test_Count=$cew_Test_Count+1;
            try {
                 ;
                if (($stack3->top()) != ($i)) {
                    $cew_Error_Count=$cew_Error_Count+1;
                    print("Test Case ERROR (Ncase) in script at line number ", 94, "\n");
                    print("Actual Value is ", $stack3->top(), " \n");
                    print("Expected Value is ", $i, "\n");
                }
             }
             catch{
                $cew_Error_Count=$cew_Error_Count+1;
                my $except = $_;
                if (ref($except) eq "exc::exception") {
                    print("Test Case ERROR (Ncase) in script at line number ", 94, "\n");
                    print("Unexpected Exception full thrown\n");
                }
             }
          };

   
          do {
            $cew_Test_Count=$cew_Test_Count+1;
            try {
                $stack3->pop() ;
                if ((0) != (0)) {
                    $cew_Error_Count=$cew_Error_Count+1;
                    print("Test Case ERROR (Ncase) in script at line number ", 95, "\n");
                    print("Actual Value is ", 0, " \n");
                    print("Expected Value is ", 0, "\n");
                }
             }
             catch{
                $cew_Error_Count=$cew_Error_Count+1;
                my $except = $_;
                if (ref($except) eq "exc::exception") {
                    print("Test Case ERROR (Ncase) in script at line number ", 95, "\n");
                    print("Unexpected Exception full thrown\n");
                }
             }
          };

}
   
print("\n**********Summary**********\n");
          print("Total number of test cases = ", $cew_Test_Count, "\n");
          print("Total number of test cases in error = ", $cew_Error_Count, "\n");

