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
# Modules      : adt::stack
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
use adt::stack;

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
#Stack Size default
my $stack0=adt::stack->new();
$cew_Test_Count=$cew_Test_Count+1;
          load($stack0 ,0); $stack0->push(10)  ;
          if (($stack0->top() ) !=  (10 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 58, "\n");
             print("Actual Value is ", $stack0->top() , " \n");
             print("Expected Value is ", 10 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_full() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 59, "\n");
             print("Actual Value is ", $stack0->get_full() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_empty() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 60, "\n");
             print("Actual Value is ", $stack0->get_empty() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;

$stack0=adt::stack->new();
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_empty() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 63, "\n");
             print("Actual Value is ", $stack0->get_empty() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_full() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 64, "\n");
             print("Actual Value is ", $stack0->get_full() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
          load($stack0 ,0); $stack0->pop()  ;
          if (($stack0->get_empty() ) !=  (1 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 65, "\n");
             print("Actual Value is ", $stack0->get_empty() , " \n");
             print("Expected Value is ", 1 , "\n");
          }
;
$stack0=adt::stack->new();
$cew_Test_Count=$cew_Test_Count+1;
          load($stack0 ,0); $stack0->top()  ;
          if (($stack0->get_empty() ) !=  (1 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 67, "\n");
             print("Actual Value is ", $stack0->get_empty() , " \n");
             print("Expected Value is ", 1 , "\n");
          }
;

# Stack Size 10
my $stack0=adt::stack->new(10);
$cew_Test_Count=$cew_Test_Count+1;
          load($stack0 ,0); $stack0->push(10)  ;
          if (($stack0->top() ) !=  (10 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 71, "\n");
             print("Actual Value is ", $stack0->top() , " \n");
             print("Expected Value is ", 10 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_full() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 72, "\n");
             print("Actual Value is ", $stack0->get_full() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_empty() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 73, "\n");
             print("Actual Value is ", $stack0->get_empty() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;

$stack0=adt::stack->new(10);
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_empty() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 76, "\n");
             print("Actual Value is ", $stack0->get_empty() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_full() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 77, "\n");
             print("Actual Value is ", $stack0->get_full() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
          load($stack0 ,0); $stack0->pop()  ;
          if (($stack0->get_empty() ) !=  (1 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 78, "\n");
             print("Actual Value is ", $stack0->get_empty() , " \n");
             print("Expected Value is ", 1 , "\n");
          }
;
$stack0=adt::stack->new(10);
$cew_Test_Count=$cew_Test_Count+1;
          load($stack0 ,0); $stack0->top()  ;
          if (($stack0->get_empty() ) !=  (1 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 80, "\n");
             print("Actual Value is ", $stack0->get_empty() , " \n");
             print("Expected Value is ", 1 , "\n");
          }
;

#################
# half full stack
#################
# Default Stack Size
$stack0=adt::stack->new();
$cew_Test_Count=$cew_Test_Count+1;
          load($stack0 ,2); $stack0->push(30)  ;
          if (($stack0->top() ) !=  (30 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 87, "\n");
             print("Actual Value is ", $stack0->top() , " \n");
             print("Expected Value is ", 30 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_full() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 88, "\n");
             print("Actual Value is ", $stack0->get_full() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_empty() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 89, "\n");
             print("Actual Value is ", $stack0->get_empty() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;

$stack0=adt::stack->new();
$cew_Test_Count=$cew_Test_Count+1;
          load($stack0 ,2)  ;
          if (($stack0->get_empty() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 92, "\n");
             print("Actual Value is ", $stack0->get_empty() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
          $stack0->pop()  ;
          if (($stack0->top() ) !=  (10 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 93, "\n");
             print("Actual Value is ", $stack0->top() , " \n");
             print("Expected Value is ", 10 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_empty() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 94, "\n");
             print("Actual Value is ", $stack0->get_empty() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_full() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 95, "\n");
             print("Actual Value is ", $stack0->get_full() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;

#Stack Size 10
$stack0=adt::stack->new(10);
$cew_Test_Count=$cew_Test_Count+1;
          load($stack0 ,2); $stack0->push(30)  ;
          if (($stack0->top() ) !=  (30 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 99, "\n");
             print("Actual Value is ", $stack0->top() , " \n");
             print("Expected Value is ", 30 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_full() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 100, "\n");
             print("Actual Value is ", $stack0->get_full() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_empty() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 101, "\n");
             print("Actual Value is ", $stack0->get_empty() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;

$stack0=adt::stack->new(10);
$cew_Test_Count=$cew_Test_Count+1;
          load($stack0 ,2)  ;
          if (($stack0->get_empty() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 104, "\n");
             print("Actual Value is ", $stack0->get_empty() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
          $stack0->pop()  ;
          if (($stack0->top() ) !=  (10 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 105, "\n");
             print("Actual Value is ", $stack0->top() , " \n");
             print("Expected Value is ", 10 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_empty() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 106, "\n");
             print("Actual Value is ", $stack0->get_empty() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_full() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 107, "\n");
             print("Actual Value is ", $stack0->get_full() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;

############
# full stack
############
#Stack Size Default
$stack0=adt::stack->new();
$cew_Test_Count=$cew_Test_Count+1;
          load($stack0 ,5);  ;
          if (($stack0->get_full() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 114, "\n");
             print("Actual Value is ", $stack0->get_full() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
          $stack0->push(30)  ;
          if (($stack0->top() ) !=  (50 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 115, "\n");
             print("Actual Value is ", $stack0->top() , " \n");
             print("Expected Value is ", 50 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_full() ) !=  (1 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 116, "\n");
             print("Actual Value is ", $stack0->get_full() , " \n");
             print("Expected Value is ", 1 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_empty() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 117, "\n");
             print("Actual Value is ", $stack0->get_empty() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
          $stack0->pop()  ;
          if (($stack0->top() ) !=  (40 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 118, "\n");
             print("Actual Value is ", $stack0->top() , " \n");
             print("Expected Value is ", 40 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_full() ) !=  (1 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 119, "\n");
             print("Actual Value is ", $stack0->get_full() , " \n");
             print("Expected Value is ", 1 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_empty() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 120, "\n");
             print("Actual Value is ", $stack0->get_empty() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;

$stack0=adt::stack->new();
$cew_Test_Count=$cew_Test_Count+1;
          load($stack0 ,5)  ;
          if (($stack0->get_empty() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 123, "\n");
             print("Actual Value is ", $stack0->get_empty() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
          $stack0->pop()  ;
          if (($stack0->top() ) !=  (40 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 124, "\n");
             print("Actual Value is ", $stack0->top() , " \n");
             print("Expected Value is ", 40 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_full() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 125, "\n");
             print("Actual Value is ", $stack0->get_full() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_empty() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 126, "\n");
             print("Actual Value is ", $stack0->get_empty() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
          $stack0->push(30)  ;
          if (($stack0->top() ) !=  (30 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 127, "\n");
             print("Actual Value is ", $stack0->top() , " \n");
             print("Expected Value is ", 30 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_full() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 128, "\n");
             print("Actual Value is ", $stack0->get_full() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_empty() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 129, "\n");
             print("Actual Value is ", $stack0->get_empty() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;

# Stack Size 10
$stack0=adt::stack->new(10);
$cew_Test_Count=$cew_Test_Count+1;
          load($stack0 ,10);  ;
          if (($stack0->get_full() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 133, "\n");
             print("Actual Value is ", $stack0->get_full() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
          $stack0->push(30)  ;
          if (($stack0->top() ) !=  (100 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 134, "\n");
             print("Actual Value is ", $stack0->top() , " \n");
             print("Expected Value is ", 100 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_full() ) !=  (1 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 135, "\n");
             print("Actual Value is ", $stack0->get_full() , " \n");
             print("Expected Value is ", 1 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_empty() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 136, "\n");
             print("Actual Value is ", $stack0->get_empty() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
          $stack0->pop()  ;
          if (($stack0->top() ) !=  (90 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 137, "\n");
             print("Actual Value is ", $stack0->top() , " \n");
             print("Expected Value is ", 90 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_full() ) !=  (1 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 138, "\n");
             print("Actual Value is ", $stack0->get_full() , " \n");
             print("Expected Value is ", 1 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_empty() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 139, "\n");
             print("Actual Value is ", $stack0->get_empty() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;

$stack0=adt::stack->new(10);
$cew_Test_Count=$cew_Test_Count+1;
          load($stack0 ,10)  ;
          if (($stack0->get_empty() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 142, "\n");
             print("Actual Value is ", $stack0->get_empty() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
          $stack0->pop()  ;
          if (($stack0->top() ) !=  (90 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 143, "\n");
             print("Actual Value is ", $stack0->top() , " \n");
             print("Expected Value is ", 90 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_full() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 144, "\n");
             print("Actual Value is ", $stack0->get_full() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_empty() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 145, "\n");
             print("Actual Value is ", $stack0->get_empty() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
          $stack0->push(30)  ;
          if (($stack0->top() ) !=  (30 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 146, "\n");
             print("Actual Value is ", $stack0->top() , " \n");
             print("Expected Value is ", 30 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_full() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 147, "\n");
             print("Actual Value is ", $stack0->get_full() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;
$cew_Test_Count=$cew_Test_Count+1;
           ;
          if (($stack0->get_empty() ) !=  (0 )) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", 148, "\n");
             print("Actual Value is ", $stack0->get_empty() , " \n");
             print("Expected Value is ", 0 , "\n");
          }
;

print("\n**********Summary**********\n");
          print("Total number of test cases = ", $cew_Test_Count, "\n");
          print("Total number of test cases in error = ", $cew_Error_Count, "\n");

