int
main(int argc, char** argv)
{
   do{ jmp_buf ex_buf__; if( !_setjmp (ex_buf__) ){
   {
      printf("In Try Statement\n");
      longjmp(ex_buf__, 1);
      printf("I do not appear\n");
   }
   } else {
   {
      printf("Got Exception!\n");
   }
   } }while(0);

   return 0;
}

