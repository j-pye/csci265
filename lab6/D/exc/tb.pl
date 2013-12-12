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
# Modules      : exc::exception
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
# 1.0          PW      Oct 12  New version (using cewEcase only)
#================================================================--

$|=1;
use strict;
use warnings;











use lib '../';
use exc::exception;
use Try::Tiny;

my $cew_Test_Count=0;
          my $cew_Error_Count=0;


# no exception thrown (should not fail)

          do {
            $cew_Test_Count=$cew_Test_Count+1;
            try {
                 ;
                if ((0) != (0)) {
                    $cew_Error_Count=$cew_Error_Count+1;
                    print("Test Case ERROR (Ncase) in script at line number ", 41, "\n");
                    print("Actual Value is ", 0, " \n");
                    print("Expected Value is ", 0, "\n");
                }
             }
             catch{
                $cew_Error_Count=$cew_Error_Count+1;
                my $except = $_;
                if (ref($except) eq "exc::exception") {
                    print("Test Case ERROR (Ncase) in script at line number ", 41, "\n");
                    print("Unexpected Exception full thrown\n");
                }
             }
          };


# unexpected exception thrown (should fail)

          do {
            $cew_Test_Count=$cew_Test_Count+1;
            try {
                die(exc::exception->new("full")) ;
                if ((0) != (0)) {
                    $cew_Error_Count=$cew_Error_Count+1;
                    print("Test Case ERROR (Ncase) in script at line number ", 44, "\n");
                    print("Actual Value is ", 0, " \n");
                    print("Expected Value is ", 0, "\n");
                }
             }
             catch{
                $cew_Error_Count=$cew_Error_Count+1;
                my $except = $_;
                if (ref($except) eq "exc::exception") {
                    print("Test Case ERROR (Ncase) in script at line number ", 44, "\n");
                    print("Unexpected Exception full thrown\n");
                }
             }
          };


# expected exception thrown (should not fail)

          do {
              $cew_Test_Count=$cew_Test_Count+1;
              try {
                  die(exc::exception->new("full"));  
                  $cew_Error_Count=$cew_Error_Count+1;
                  print("Test Case ERROR (Ecase) in script at line number ", 47, "\n");
                  print ( "Expected exception full not thrown\n");
              }
              catch {
                  my $error = $_;
                  if (ref($error) eq "exc::exception") {
                      if ($error->get_exc_name() eq "full") {
                      }
                      else {
                          $cew_Error_Count=$cew_Error_Count+1;  
                          print("Test Case ERROR (Ecase) in script at line number ", 47, "\n");
                          print ( "Unexpected exception ", "full", " thrown\n");                  
                      }
                  }
               }
           };


# unexpected exception thrown (should fail)

          do {
              $cew_Test_Count=$cew_Test_Count+1;
              try {
                  die(exc::exception->new("ull"));  
                  $cew_Error_Count=$cew_Error_Count+1;
                  print("Test Case ERROR (Ecase) in script at line number ", 50, "\n");
                  print ( "Expected exception full not thrown\n");
              }
              catch {
                  my $error = $_;
                  if (ref($error) eq "exc::exception") {
                      if ($error->get_exc_name() eq "full") {
                      }
                      else {
                          $cew_Error_Count=$cew_Error_Count+1;  
                          print("Test Case ERROR (Ecase) in script at line number ", 50, "\n");
                          print ( "Unexpected exception ", "full", " thrown\n");                  
                      }
                  }
               }
           };


          do {
              $cew_Test_Count=$cew_Test_Count+1;
              try {
                  die(exc::exception->new("full"));  
                  $cew_Error_Count=$cew_Error_Count+1;
                  print("Test Case ERROR (Ecase) in script at line number ", 51, "\n");
                  print ( "Expected exception full not thrown\n");
              }
              catch {
                  my $error = $_;
                  if (ref($error) eq "exc::exception") {
                      if ($error->get_exc_name() eq "ull") {
                      }
                      else {
                          $cew_Error_Count=$cew_Error_Count+1;  
                          print("Test Case ERROR (Ecase) in script at line number ", 51, "\n");
                          print ( "Unexpected exception ", "ull", " thrown\n");                  
                      }
                  }
               }
           };


# expected exception not thrown (should fail)

          do {
              $cew_Test_Count=$cew_Test_Count+1;
              try {
                  ;  
                  $cew_Error_Count=$cew_Error_Count+1;
                  print("Test Case ERROR (Ecase) in script at line number ", 54, "\n");
                  print ( "Expected exception full not thrown\n");
              }
              catch {
                  my $error = $_;
                  if (ref($error) eq "exc::exception") {
                      if ($error->get_exc_name() eq "full") {
                      }
                      else {
                          $cew_Error_Count=$cew_Error_Count+1;  
                          print("Test Case ERROR (Ecase) in script at line number ", 54, "\n");
                          print ( "Unexpected exception ", "full", " thrown\n");                  
                      }
                  }
               }
           };


print("\n**********Summary**********\n");
          print("Total number of test cases = ", $cew_Test_Count, "\n");
          print("Total number of test cases in error = ", $cew_Error_Count, "\n");

