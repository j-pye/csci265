int
main(int argc, char** argv)
{
   do{ jmp_buf ex_buf__; switch( _setjmp (ex_buf__) ){ case 0:
   {
      printf("In Try Statement\n");
      longjmp(ex_buf__, (2));
      printf("I do not appear\n");
   }
   break; case (1):
   {
      printf("Got Foo!\n");
   }
   break; case (2):
   {
      printf("Got Bar!\n");
   }
   break; case (3):
   {
      printf("Got Baz!\n");
   }
   } }while(0);

   return 0;
}

