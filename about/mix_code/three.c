#include<stdio.h>

extern int add_three(int, int, int);
int main(void){
	printf("%d + %d + %d = %d\n", 4, 6, 10, add_three(4, 6, 10));
}
