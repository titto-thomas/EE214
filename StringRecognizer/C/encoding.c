#include <stdio.h>
#include <string.h>

const char *byte_to_binary(int x)
{
    static char b[6];
    b[0] = '\0';

    int z;
    for (z = 16; z > 0; z >>= 1)
    {
        strcat(b, ((x & z) == z) ? "1" : "0");
    }

    return b;
}


int main()
{
int i=0;

for ( i=1; i<=26; i++ )
{
	printf("when '%c' => sl := \"%s\";\n", (char)i+'a'-1, byte_to_binary(i));
}
return 0;
}
