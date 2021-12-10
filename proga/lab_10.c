#include <stdio.h>




void output_matrix(int n, int A[n][n]) {
    for (int i = 0; i < n; i++) {
        if (i != 0) printf("\n");
        for (int j = 0; j < n; j++) {
            printf("%d", A[i][j]);
            if (j != n - 1) printf(" ");
        }
    }
	printf("\n");
}

void input(int n, int A[n][n]) {
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            scanf("%d", &A[i][j]);
        }
    }
}

void array_b(int n, int *B, int A[n][n], int *index) {
    int right_diag_x_y = 0, left_diag_x = n - 1, left_diag_y = 0; // координаты x/y главной и побочной диагонали
    int q;
    for (int y = 0; y < n; y++) {
        for (int x = 0; x < n; x++) {
            if (y == right_diag_x_y && y == left_diag_y && x < right_diag_x_y && x < left_diag_x ) { // если по x левее координаты x у диагонали
                // printf("B[i]: %d\n", A[y][x]);
		B[*index] = A[y][x];
                *index += 1; 
            }

            if (x == right_diag_x_y && y == right_diag_x_y) 
                right_diag_x_y++;
            if (x == left_diag_x && y == left_diag_y) {
                left_diag_x--;
                left_diag_y++;
            }

        }
    } 
    
}


void output_array(int n, int *B) {
    printf("\n");
    //printf("index: %d\n", n);
    printf("Array_B: [");
    for (int i = 0; i < n; i++) {
        printf("%d", B[i]);
	if (i != n - 1) printf(", ");
    }
    printf("]");
    printf("\n");
}

void min(int n, int A[n][n]) {
    int min = 1000000000; 
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            if (min > A[i][j]) min = A[i][j];
        }
    }

    printf("MIN: %d\n", min);
}


int product(int n, int *B, int A[n][n], int *index) {
    int res = -1, err = -1;
    if (n % 2 != 0) {
        res = 1;
        int center  = A[n/2][n/2];
        // printf("center: %d\n", center);

        for (int i = 0; i < *index; i++) {
            if (B[i] > center) {
                err = 1;
                res *= B[i];
            } 
        }
        if (err == -1) res = 0; // проверка на то, что нашлись ли вообще такие значения, которые меньше центра

    }

    return res;
}

int main() {
    // создание матрицы
  
    int n, center, index = 0;
    printf("Введите длину массива n: ");
    scanf("%d", &n);
    int A[n][n];
    printf("заполните массив:\n");
    input(n, A);

    int B[20];

    array_b(n, B, A, &index);
    output_array(index, B);

   int res = product(n, B, A, &index);
   if (res == -1) printf("Не получилось найти произведение, т.к. нет пересечения диагоналей\n");
   else if (res == 0) printf("Не получилось найти произведение, т.к. все элементы массива В меньше точки, лежащей на пересечении диаг.\n"); 
   else printf("Произведение элементов массива B: %d\n", res);
   min(n, A);




    printf("Вывод матрицы A:\n");
    output_matrix(n, A);

    return 0;
}
