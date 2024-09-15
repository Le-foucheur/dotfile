#include <stdio.h>

int naive(char *m, char *t){
    int lt = strlen(t);
    int lm = strlen(m);
    int i, res = 0;
    while(i < lt){
        if(strncmp(t,m,3) == 1){
            res += 1;
        }
    }
    return res;
}

int main(){




    return 0;
}