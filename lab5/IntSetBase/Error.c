/********** Error module---implementation **********/

#include "Error.h"

/***** local constants *****/

/***** local types *****/

/***** local variables *****/

static int eFlag; 

/***** local functions *****/

/***** exported functions *****/

void set_eFlag(void) {
   eFlag=1;
}

void clear_eFlag(void) {
   eFlag=0;
}

int get_eFlag(void) {
   return eFlag;
}

