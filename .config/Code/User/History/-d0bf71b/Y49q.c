#include <stdio.h>
#include <string.h>

int naive(char *m, char *t){
    int lt = strlen(t);
    int lm = strlen(m);
    int i = 0;
    int res = 0;
    while(i < lt){
        if(strncmp(t,m,3) == 1){
            res += 1;
        }
    }
    return res;
}

int main(){
    char text[17] = "blabablabalablaba" ;
    char mot[3] = "bla";
    int oc = 0;
    oc = naive(mot, text);
    printf("il y en a : %d", oc);



    return 0;
}