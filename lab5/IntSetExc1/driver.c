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

   CATCH {
      switch (EXnum__) {
         case 1: printf("Duplicate Exc!\n");
            break;
         case 2: printf("Full Exc!\n");
            break;
         case 3: printf("Not Found Exc!\n");
            break;
         default: printf("Unknown exception\n");
      }
   }

   FINALLY {
      printf("In Finally\n");
      SSDump();
   }

   ETRY;

   return 0;

}

