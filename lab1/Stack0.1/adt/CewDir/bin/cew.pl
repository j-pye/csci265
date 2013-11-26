changecom(`#')

define(cew_Variables,
         `my $cew_Test_Count=0;
          my $cew_Error_Count=0;'
)

define(cew_Summary,
         `print("\n**********Summary**********\n");
          print("Total number of test cases = ", $cew_Test_Count, "\n");
          print("Total number of test cases in error = ", $cew_Error_Count, "\n");'
)

define(cew_Ncase,
          `$cew_Test_Count=$cew_Test_Count+1;
          $2 ;
          if (($3) $5 ($4)) {
             $cew_Error_Count=$cew_Error_Count+1;
             print("Test Case ERROR (Ncase) in script at line number ", $1, "\n");
             print("Actual Value is ", $3, " \n");
             print("Expected Value is ", $4, "\n");
          }'
)

