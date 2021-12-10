#include <stdio.h>
#include <string.h>

#define MAX 128


int len_words(int *N, char *A) {
	int i = 0, cnt = 0;
	
	for (int j = 0; j < strlen(A); j++) {		
		if (A[j] == ' ' || A[j] == '.') {
			N[i++] = cnt;
			cnt = 0;
		} else {
			cnt++;
		}

	}
	return i;
}

void output_str(int *N, int i) {
	printf("array B = [");
	for (int j = 0; j < i; j++) {
		printf("%d", N[j]);
		if (j != i - 1) printf(", ");


	}
	printf("]\n");




}

int main() {
printf("Вариант-7\n");

char A[MAX] = "1 2 aaa qwerty.";
printf("%s\n", A);
int N[32];
int i;

i = len_words(N, A);
output_str(N, i);



return 0;
}
