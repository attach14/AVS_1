#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <time.h>
double compute(double x, int times){
    double res, last, n;
    for(int j = 0; j < times; j++){
        res = x;
        last = x;
        n = 1;
        while(fabs(last) > 0.0001){
            last = last * (x / (n + 1)) * (x / (n + 2));
            n += 2;
            res += last;
        }
    }
    return res;
}
void write(double ans, double x, FILE* stream){
    fprintf(stream, "x = %0.10lf\n", x);
    fprintf(stream, "sh(x) = %0.10lf\n", ans);
}
int main(int argc, char* argv[]){
    double x;
    if (argc != 4){
        printf("Wrong number of arguments - %d instead of 2\n", argc - 1);
        return 0;
    } 
    if(strcmp(argv[1], "--random") == 0){
        srand(time(NULL));
        x = ((double) rand()) / RAND_MAX;
        x *= 20;
    }
    else {
        FILE* in = fopen(argv[1], "r");
        if(in == NULL){
            printf("Wrong input file path\n");
            return 0;
        }
        fscanf(in, "%lf", &x);
        if(fabs(x) > 20){
            printf("Wrong number\n");
            return 0;
        }
        fclose(in);
    }
    int times = atoi(argv[2]);
    if(times == 0){
        printf("Wrong number of repeats");
    }
    clock_t start = clock();
    double ans = compute(x, times);
    clock_t finish = clock();
    double res = (double) finish - start;
    res /= CLOCKS_PER_SEC;
    FILE* out = fopen(argv[3], "w");
    if(out == NULL){
        printf("Wrong output file path");
        return 0;
    }
    fprintf(out, "Execution time is %2.3f seconds\n", res);
    write(ans, x, out);
    return 0;
}
