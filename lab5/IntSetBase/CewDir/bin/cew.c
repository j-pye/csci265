changecom(`#')

define(cew_Variables,
	`int cew_Test_Count = 0;
	 int cew_Error_Count = 0;
	 #define TRY do{ jmp_buf ex_buf__; switch( setjmp(ex_buf__) ){ case 0: while(1){
	 #define CATCH(x) break; case x:
	 #define FINALLY break; } default:
	 #define ETRY } }while(0);
	 #define THROW(x) longjmp(ex_buf__, x)
	'
)

define(cew_Summary,
	`printf("\n**********Summary**********\n");
	 printf("Total number of test cases = ", cew_Test_Count, "\n");
	 printf("Total number of test cases in error = ", cew_Error_Count, "\n");
	'
)

define(cew_Ncase,
	`TRY {
		 cew_Test_Count = cew_Test_Count + 1;
		 $2
		 if (($3) $5 ($4)){
			 cew_Error_Count = cew_Error_Count + 1;
			 THROW(1);
		 }
	 }
	 CATCH(1) {
		 printf("Test Case ERROR (Ncase) in script at line number ", $1, "\n");
		 printf("Actual Value is ", $3, " \n");
		 printf("Expected Value is ", $4, "\n");
	 }
	 CATCH(2){
		 
	 }
	 FINALLY{
		 
	 }
	 ETRY;
	'
)

define(cew_Ecase,
	`TRY {
   	 cew_Test_Count = cew_Test_Count + 1;
		 $2;
		 TRHOW(2);
	 }
	 CATCH(1) {
		 
	 }
	 CATCH(2) {
		 
	 }
	 FINALLY {
		 
	 }	
	 ETRY;
	'
