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


  int sum = suma (n,m,a,b,*c);

  printf("suma %i\n",sum);

  for (int r =0 ; r < n ; r++ ){
    for (int cr = 0; cr< m; cr++){
      printf("%f ",c[r][cr]);
    }
    printf("\n");

  }


  int res = resta (n,m,a,b,*c);

  printf("\n");
  printf("resta %i\n",res);


  for (int r =0 ; r < n ; r++ ){
    for (int cr = 0; cr< m; cr++){
      printf("%f ",c[r][cr]);
    }
    printf("\n");
  }

  int nc = 50;

  int rs = smultiplicacion(n,m,nc,a,*c);

  printf("\n");
  printf("multiplicación por escalar %i\n",rs);
  
  for (int r =0 ; r < n ; r++ ){
    for (int cr = 0; cr< m; cr++){
      printf("%f ",c[r][cr]);
    }
    printf("\n");
  }

  int r = multiplicacion(n,m,6,m2,a,d,e);
  printf("\n");

  if (r == 0) {
    printf("\n");
    printf("multiplicación %i\n",r);
  
    for (int r =0 ; r < n ; r++ ){
      for (int cr = 0; cr< m2; cr++){
        printf("%f ",e[r][cr]);
      }
      printf("\n");
    }
  }else{
    printf("No son iguales n y m %i\n",r);
  }


  return 0;


}


