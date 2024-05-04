#include <stdlib.h>
#include <stdio.h>

int main(){
  int num;
  printf("Input the number: ");
  scanf("%d", &num);
  if (num > 0){
    exit(1);
  }
  else if (num = 0){
    exit(0);
  }
  else{
    exit(2);
  }
}
