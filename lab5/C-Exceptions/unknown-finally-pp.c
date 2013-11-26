#include <stdio.h>
#include <setjmp.h>

#define TRY do{ jmp_buf ex_buf__; switch( setjmp(ex_buf__) ){ case 0: while(1){
#define CATCH(x) break; case x:
#define FINALLY break; } default:
#define ETRY } }while(0)
#define THROW(x) longjmp(ex_buf__, x)

#define FOO_EXCEPTION (1)
#define BAR_EXCEPTION (2)
#define BAZ_EXCEPTION (3)
#define UNKNOWN_EXC (>3)

int main()
{
    TRY
    {
        printf("In Try Statement\n");
        THROW(4);
        printf("I do not appear\n");
    }
    CATCH( FOO_EXCEPTION )
    {
        printf("Got Foo!\n");
    }
    CATCH( BAR_EXCEPTION )
    {
        printf("Got Bar!\n");
    }
    CATCH( BAZ_EXCEPTION )
    {
        printf("Got Baz!\n");
    }
    CATCH(!x )
    {
        printf("Unkown Exception\n");
    }
    FINALLY
    {
        printf("In Finally\n");
    }
    ETRY;

    return 0;
}

