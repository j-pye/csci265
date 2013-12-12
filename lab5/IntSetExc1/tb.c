#include "IntSet.h"
#include "Exceptions.h"
#include <stdio.h>













int main() {

	int cew_Test_Count = 0;
	 int cew_Error_Count = 0;
	


	/******************************************************************
	Empty Simple Set 
	******************************************************************/
	TRY {
		 cew_Test_Count = cew_Test_Count + 1;
		 SSInit();SSAdd(10);SSDel(10);SSDel(10);
		 cew_Error_Count = cew_Error_Count + 1;
		 printf("Test Case ERROR (Ecase) in script at line number %d\n", 15);
		 printf("There was no Exception thrown\n");
		 printf("Expected Exception was %s\n", getException(NotFoundExc));
	 }
	 CATCH {
		 if (EXnum__ != (NotFoundExc)) {
			 cew_Error_Count = cew_Error_Count + 1;
			 printf("Test Case ERROR (Ncase) in script at line number %d\n", 15);
			 printf("Unexpected Exception thrown was %s\n", getException(EXnum__));
		 }
	 }
 	 FINALLY
	 ETRY;
	

	TRY {
		 cew_Test_Count = cew_Test_Count + 1;
		 SSInit();SSAdd(10);SSDel(10);
		 if (SSSize() != 0){
			 cew_Error_Count = cew_Error_Count + 1;
			 printf("Test Case ERROR (Ncase) in script at line number %d\n", 16);
			 printf("Actual Value was %d\n", SSSize());
	       printf("Expected Value was %d\n", 0);
		 }
	 }
	 CATCH {
		 cew_Error_Count = cew_Error_Count + 1;
		 printf("Test Case ERROR (Ecase) in script at line number %d\n", 16);
		 printf("Unexpected Exception thrown was %s\n", getException(EXnum__));
	 }
	 FINALLY
	 ETRY;
	

	TRY {
		 cew_Test_Count = cew_Test_Count + 1;
		 SSInit();SSAdd(10);SSDel(10); (1/0);
		 if (SSSize() != 0){
			 cew_Error_Count = cew_Error_Count + 1;
			 printf("Test Case ERROR (Ncase) in script at line number %d\n", 17);
			 printf("Actual Value was %d\n", SSSize());
	       printf("Expected Value was %d\n", 0);
		 }
	 }
	 CATCH {
		 cew_Error_Count = cew_Error_Count + 1;
		 printf("Test Case ERROR (Ecase) in script at line number %d\n", 17);
		 printf("Unexpected Exception thrown was %s\n", getException(EXnum__));
	 }
	 FINALLY
	 ETRY;
	

	TRY {
		 cew_Test_Count = cew_Test_Count + 1;
		 SSInit();SSAdd(10);
		 cew_Error_Count = cew_Error_Count + 1;
		 printf("Test Case ERROR (Ecase) in script at line number %d\n", 18);
		 printf("There was no Exception thrown\n");
		 printf("Expected Exception was %s\n", getException(FullExc));
	 }
	 CATCH {
		 if (EXnum__ != (FullExc)) {
			 cew_Error_Count = cew_Error_Count + 1;
			 printf("Test Case ERROR (Ncase) in script at line number %d\n", 18);
			 printf("Unexpected Exception thrown was %s\n", getException(EXnum__));
		 }
	 }
 	 FINALLY
	 ETRY;
	
 				/* Should Fail*/

	/****************************************************************** 
	Half Full Simple Set 
	******************************************************************/
	TRY {
		 cew_Test_Count = cew_Test_Count + 1;
		 SSInit();SSAdd(9);SSDel(10);SSSize();
		 cew_Error_Count = cew_Error_Count + 1;
		 printf("Test Case ERROR (Ecase) in script at line number %d\n", 23);
		 printf("There was no Exception thrown\n");
		 printf("Expected Exception was %s\n", getException(1));
	 }
	 CATCH {
		 if (EXnum__ != (1)) {
			 cew_Error_Count = cew_Error_Count + 1;
			 printf("Test Case ERROR (Ncase) in script at line number %d\n", 23);
			 printf("Unexpected Exception thrown was %s\n", getException(EXnum__));
		 }
	 }
 	 FINALLY
	 ETRY;
	
	/* Should Fail*/
   TRY {
		 cew_Test_Count = cew_Test_Count + 1;
		 SSInit();SSAdd(10);
		 if (SSSize() != 1){
			 cew_Error_Count = cew_Error_Count + 1;
			 printf("Test Case ERROR (Ncase) in script at line number %d\n", 24);
			 printf("Actual Value was %d\n", SSSize());
	       printf("Expected Value was %d\n", 1);
		 }
	 }
	 CATCH {
		 cew_Error_Count = cew_Error_Count + 1;
		 printf("Test Case ERROR (Ecase) in script at line number %d\n", 24);
		 printf("Unexpected Exception thrown was %s\n", getException(EXnum__));
	 }
	 FINALLY
	 ETRY;
	

	TRY {
		 cew_Test_Count = cew_Test_Count + 1;
		 SSInit();SSAdd(10);
		 if (SSIsMem(10) != 1){
			 cew_Error_Count = cew_Error_Count + 1;
			 printf("Test Case ERROR (Ncase) in script at line number %d\n", 25);
			 printf("Actual Value was %d\n", SSIsMem(10));
	       printf("Expected Value was %d\n", 1);
		 }
	 }
	 CATCH {
		 cew_Error_Count = cew_Error_Count + 1;
		 printf("Test Case ERROR (Ecase) in script at line number %d\n", 25);
		 printf("Unexpected Exception thrown was %s\n", getException(EXnum__));
	 }
	 FINALLY
	 ETRY;
	


	/****************************************************************** 
	Full Simple Set 	
	******************************************************************/
	TRY {
		 cew_Test_Count = cew_Test_Count + 1;
		 SSInit();SSAdd(10);SSAdd(10);
		 cew_Error_Count = cew_Error_Count + 1;
		 printf("Test Case ERROR (Ecase) in script at line number %d\n", 30);
		 printf("There was no Exception thrown\n");
		 printf("Expected Exception was %s\n", getException(DuplicateExc));
	 }
	 CATCH {
		 if (EXnum__ != (DuplicateExc)) {
			 cew_Error_Count = cew_Error_Count + 1;
			 printf("Test Case ERROR (Ncase) in script at line number %d\n", 30);
			 printf("Unexpected Exception thrown was %s\n", getException(EXnum__));
		 }
	 }
 	 FINALLY
	 ETRY;
	

	TRY {
		 cew_Test_Count = cew_Test_Count + 1;
		 SSInit();SSAdd(10);SSAdd(10);
		 cew_Error_Count = cew_Error_Count + 1;
		 printf("Test Case ERROR (Ecase) in script at line number %d\n", 31);
		 printf("There was no Exception thrown\n");
		 printf("Expected Exception was %s\n", getException(FullExc));
	 }
	 CATCH {
		 if (EXnum__ != (FullExc)) {
			 cew_Error_Count = cew_Error_Count + 1;
			 printf("Test Case ERROR (Ncase) in script at line number %d\n", 31);
			 printf("Unexpected Exception thrown was %s\n", getException(EXnum__));
		 }
	 }
 	 FINALLY
	 ETRY;
	
	/* Should Fail*/
	TRY {
		 cew_Test_Count = cew_Test_Count + 1;
		 SSInit();SSAdd(10);SSAdd(11);
		 if (SSSize() != 2){
			 cew_Error_Count = cew_Error_Count + 1;
			 printf("Test Case ERROR (Ncase) in script at line number %d\n", 32);
			 printf("Actual Value was %d\n", SSSize());
	       printf("Expected Value was %d\n", 2);
		 }
	 }
	 CATCH {
		 cew_Error_Count = cew_Error_Count + 1;
		 printf("Test Case ERROR (Ecase) in script at line number %d\n", 32);
		 printf("Unexpected Exception thrown was %s\n", getException(EXnum__));
	 }
	 FINALLY
	 ETRY;
	

	TRY {
		 cew_Test_Count = cew_Test_Count + 1;
		 SSInit();SSAdd(10);SSAdd(11);SSAdd(12);
		 cew_Error_Count = cew_Error_Count + 1;
		 printf("Test Case ERROR (Ecase) in script at line number %d\n", 33);
		 printf("There was no Exception thrown\n");
		 printf("Expected Exception was %s\n", getException(FullExc));
	 }
	 CATCH {
		 if (EXnum__ != (FullExc)) {
			 cew_Error_Count = cew_Error_Count + 1;
			 printf("Test Case ERROR (Ncase) in script at line number %d\n", 33);
			 printf("Unexpected Exception thrown was %s\n", getException(EXnum__));
		 }
	 }
 	 FINALLY
	 ETRY;
	


	printf("\n**********Summary**********\n");
	 printf("Total number of test cases = %d\n", cew_Test_Count);
	 printf("Total number of test cases in error = %d\n", cew_Error_Count);
	

	
	return 0;
}
