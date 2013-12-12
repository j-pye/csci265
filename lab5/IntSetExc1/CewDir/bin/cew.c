changecom(`/* */')

define(cew_Variables,
	`int cew_Test_Count = 0;
	 int cew_Error_Count = 0;
	'
)

define(cew_Summary,
	`printf("\n**********Summary**********\n");
	 printf("Total number of test cases = %d\n", cew_Test_Count);
	 printf("Total number of test cases in error = %d\n", cew_Error_Count);
	'
)

define(cew_Ncase,
	`TRY {
		 cew_Test_Count = cew_Test_Count + 1;
		 $2;
		 if ($3 != $4){
			 cew_Error_Count = cew_Error_Count + 1;
			 printf("Test Case ERROR (Ncase) in script at line number %d\n", $1);
			 printf("Actual Value was %d\n", $3);
	       printf("Expected Value was %d\n", $4);
		 }
	 }
	 CATCH {
		 cew_Error_Count = cew_Error_Count + 1;
		 printf("Test Case ERROR (Ecase) in script at line number %d\n", $1);
		 printf("Unexpected Exception thrown was %s\n", getException(EXnum__));
	 }
	 FINALLY
	 ETRY;
	'
)

define(cew_Ecase,
	`TRY {
		 cew_Test_Count = cew_Test_Count + 1;
		 $2;
		 cew_Error_Count = cew_Error_Count + 1;
		 printf("Test Case ERROR (Ecase) in script at line number %d\n", $1);
		 printf("There was no Exception thrown\n");
		 printf("Expected Exception was %s\n", getException($3));
	 }
	 CATCH {
		 if (EXnum__ != ($3)) {
			 cew_Error_Count = cew_Error_Count + 1;
			 printf("Test Case ERROR (Ncase) in script at line number %d\n", $1);
			 printf("Unexpected Exception thrown was %s\n", getException(EXnum__));
		 }
	 }
 	 FINALLY
	 ETRY;
	'
)
