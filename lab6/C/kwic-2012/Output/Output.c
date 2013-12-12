/********** Output module---implementation **********/

#include <stdio.h>
#include "kwic.h"
#include "Output.h"
#include "ShiftSort.h"

/***** local constants *****/

/***** local types *****/

/***** exported functions *****/

void OUInit(void)
{
	/* intentionally empty */
}

void OUPrint(void)
{
	int i; //Current Line
    int j; //Current Word
    int d; //Num of Dashes
    int s = 0; //Num of Spaces
    int c = 0; //Num chars in word
    const char* word;
    
	for (i = 0; i < SSNumLines(); i++) {
		int numWords = SSNumWords(i);
        int shiftNum = SSGetShiftNum(i);
        int s = 0;
        
		for (j = 0; j < numWords; j++) {
			word = SSGetWord(i,j);
            c = 0;
            while(word[c++] != '\0') {
                s++;
            }
            s++;
            
            // printf("%s",SSGetWord(i,j));

			/* no comma if line is unshifted
			 * otherwise comma follows last word on original line
			 */
			if (shiftNum != 0 && j == numWords-shiftNum-1)
				printf(",");

			/* space follows every word but the last */
			if (j != SSNumWords(i)-1)
				printf(" ");
		}
		printf("\n");
	}
}
