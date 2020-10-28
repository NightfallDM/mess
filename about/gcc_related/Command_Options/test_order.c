#include<stdio.h>

int test_order_first(int a, int b, int c){
	return a - b - c;
}

int test_order_rest(int a, int b, int c){
	return a + b - c;
}

int main(void){
	printf("The result1 is : %d\n", test_order_first(5, 4, 3));
	printf("The result is : %d\n", test_order_rest(5, 4, 3));
}
