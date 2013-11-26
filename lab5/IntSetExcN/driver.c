#include "IntSet.h"
#include "Exceptions.h"
#include <stdio.h>

int main() {

   TRY {
      printf("In Try Statement\n");
      SSInit();
      SSAdd(1);
      SSAdd(2);
      SSAdd(3); 
   }

   CATCH(DuplicateExc) {
      printf("Duplicate Exc!\n");
   }

   CATCH(FullExc) {
      printf("Full Exc!\n");
   }

   CATCH(NotFoundExc) {
      printf("Not Found Exc!\n");
   }

   FINALLY {
      printf("In Finally\n");
      SSDump();
   }

   ETRY;

   return 0;

}

