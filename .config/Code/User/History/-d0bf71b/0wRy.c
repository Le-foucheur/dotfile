#include <stdio.h>
#include <string.h>

int naive(char *m, char *t){
    int lt = strlen(t);
    int lm = strlen(m);
    int i = 0;
    int res = 0;
    while(i < lt){
        if(strncmp(t[i],m,lm) == 0){
            res += 1;
        }
        i++;
    }
    return res;
}

int main(){
    char* text = "blabablabalablaba" ;
    char* mot = "bla";
    int oc = 0;
    oc = naive(mot, text);
    printf("il y en a : %d\n", oc);



    return 0;
}