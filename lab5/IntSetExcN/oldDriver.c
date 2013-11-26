#include "IntSet.h"
#include "Exceptions.h"
#include <stdio.h>

int numCases=0,numErrors=0;

int main() {
      
   clear_eFlag(); 
   /* cew_Ncase(SSInit();SSAdd(10), SSIsMem(10), 1) */
   numCases++;
   SSInit();
   SSAdd(10);
   if (get_eFlag()) {
      printf("Failure (Ncase) in test number %d \n", numCases); 
      printf("   Unexpected exception thrown\n");
      printf("   Source script line number = \n\n");
      numErrors++;
      clear_eFlag(); 
   } else if (SSIsMem(10) != 1) {
      printf("Failure (Ncase) in test number %d \n", numCases);
      printf("   Actual value = %d\n", SSIsMem(10));
      printf("   Expected value = %d\n\n", 1);
      numErrors++;
   }
      
   clear_eFlag(); 
   /* cew_Ecase(SSInit();SSAdd(10);SSAdd(10)) */
   numCases++;
   SSInit();
   SSAdd(10);
   SSAdd(10);
   if (! get_eFlag()) {
      printf("Failure (Ecase) in test number %d \n", numCases); 
      printf("   Expected exception was not thrown\n");
      printf("   Source script line number = \n\n");
      numErrors++;
   } 

   printf("\nThe number of test cases: %d\n",numCases);
   printf("The number of errors: %d\n\n",numErrors);
}

