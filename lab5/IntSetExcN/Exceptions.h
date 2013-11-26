/********** Exceptions module---interface specification **********/
/*
**              Overview
**      Supports throw/catch/finally in C
**      
**      state:
**              EXenv__ is declared in Exceptions.c
**              Each exception is defined in the range [1..n]
**             
**      assumptions:
**              none
*/

#include <setjmp.h>

/***** constants *****/

extern jmp_buf EXenv__;
#define TRY do{ switch( setjmp(EXenv__) ){ case 0: while(1){
#define CATCH(x) break; case (x):
#define FINALLY break; } default:
#define ETRY } }while(0)
#define THROW(x) longjmp(EXenv__, (x)); 

#define DuplicateExc (1)
#define FullExc (2)
#define NotFoundExc (3)

