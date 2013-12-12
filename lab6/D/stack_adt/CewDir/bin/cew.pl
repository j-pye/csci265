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

define(cew_Ncase,`
          do {
            $cew_Test_Count=$cew_Test_Count+1;
            try {
                $2 ;
                if (($3) $5 ($4)) {
                    $cew_Error_Count=$cew_Error_Count+1;
                    print("Test Case ERROR (Ncase) in script at line number ", $1, "\n");
                    print("Actual Value is ", $3, " \n");
                    print("Expected Value is ", $4, "\n");
                }
             }
             catch{
                $cew_Error_Count=$cew_Error_Count+1;
                my $except = $_;
                if (ref($except) eq "exc::exception") {
                    print("Test Case ERROR (Ncase) in script at line number ", $1, "\n");
                    print("Unexpected Exception full thrown\n");
                }
             }
          };
')

define(cew_Ecase,`
          do {
              $cew_Test_Count=$cew_Test_Count+1;
              try {
                  $2;  
                  $cew_Error_Count=$cew_Error_Count+1;
                  print("Test Case ERROR (Ecase) in script at line number ", $1, "\n");
                  print ( "Expected exception full not thrown\n");
              }
              catch {
                  my $error = $_;
                  if (ref($error) eq "exc::exception") {
                      if ($error->get_exc_name() eq $3) {
                      }
                      else {
                          $cew_Error_Count=$cew_Error_Count+1;  
                          print("Test Case ERROR (Ecase) in script at line number ", $1, "\n");
                          print ( "Unexpected exception ", $3, " thrown\n");                  
                      }
                  }
               }
           };
')