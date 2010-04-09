#include <stdio.h>
#include <matrix.h>




int main(){
  int n = 4;
  int m = 4;
  int m2 = 5;
  int i,j;
  float a[n][m];
  float b[n][m];
  float c[n][m];
  float d[m][m2];
  float e[n][m2];

  for (int r =0 ; r < n ; r++ ){
    for (int c = 0; c < m; c++){
      a[r][c] = 3.0;
      b[r][c] = 3.0;
    }
  }

  for (int r =0 ; r < m ; r++ ){
    for (int c = 0; c < m2; c++){
      d[r][c] = 3.9;
    }
  }


  suma (n,m,a,b,*c);

  printf("suma\n");

  for (int r =0 ; r < n ; r++ ){
    for (int cr = 0; cr< m; cr++){
      printf("%f ",c[r][cr]);
    }
    printf("\n");

  }


  resta (n,m,a,b,*c);

  printf("\n");
  printf("resta\n");


  for (int r =0 ; r < n ; r++ ){
    for (int cr = 0; cr< m; cr++){
      printf("%f ",c[r][cr]);
    }
    printf("\n");
  }

  int nc = 50;

  smultiplicacion(n,m,nc,a,*c);

  printf("\n");
  printf("multiplicación por escalar\n");
  
  for (int r =0 ; r < n ; r++ ){
    for (int cr = 0; cr< m; cr++){
      printf("%f ",c[r][cr]);
    }
    printf("\n");
  }

  multiplicacion(n,m,m,m2,a,d,e);

  printf("\n");
  printf("multiplicación\n");
  
  for (int r =0 ; r < n ; r++ ){
    for (int cr = 0; cr< m2; cr++){
      printf("%f ",e[r][cr]);
    }
    printf("\n");
  }


  return 0;


}


