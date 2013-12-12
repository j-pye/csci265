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
          do {
             try {
                `$cew_Test_Count=$cew_Test_Count+1;
                $2 ;
                if (($3) $5 ($4)) {
                   $cew_Error_Count=$cew_Error_Count+1;
                   print("Test Case ERROR (Ncase) in script at line number ", $1, "\n");
                   print("Actual Value is ", $3, " \n");
                   print("Expected Value is ", $4, "\n");
                }
          }
          catch {
            my $e = $_;
               if(ref($e) eq "exc::exception") {
                  if ($e->get_exc_name() ne $3) {
                     print "Test Case ERROR (Ecase) in script at line number $1\n";
                     print "Unexpected Exception ", $3, " thrown\n";
							$cew_Error_Count=$cew_Error_Count+1;
                  } 
               } else {
                  print "Unhandled Exception: $_";
						$cew_Error_Count=$cew_Error_Count+1;
               }
               
          }
         };'
)

define(cew_Ecase,
         `$cew_Test_Count=$cew_Test_Count+1;
          do {
            try {
               $2;
               print "Test Case ERROR (Ecase) in script at line number $1\n";
               print "Unexpected Exception ", $3, " thrown\n";
					$cew_Error_Count=$cew_Error_Count+1;
            }
            catch {
               my $e = $_;
               if(ref($e) eq "exc::exception") {
                  if ($e->get_exc_name() ne $3) {
                     print "Test Case ERROR (Ecase) in script at line number $1\n";
                     print "Unexpected Exception ", $3, " thrown\n";
							$cew_Error_Count=$cew_Error_Count+1;
                  } 
               } else {
                  print "Unhandled Exception: $_";
               } 
            }
          };'
)
