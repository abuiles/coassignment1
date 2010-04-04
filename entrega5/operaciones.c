#include <stdio.h>
#include <matrix.h>

//extern void suma ();
//extern void resta ();

void main(){
  int n = 3 ;
  int m = 3;
  int i,j;
  float a[n][m];
  float b[n][m];
  float c[n][m];

  for (int r =0 ; r < n ; r++ ){
    for (int c = 0; c < m; c++){
      a[r][c] = 3;
      b[r][c] = 3;
    }
  }

  suma (n,m,a,b,*c);


  for (int r =0 ; r < n ; r++ ){
    for (int cr = 0; cr< m; cr++){
      printf("%f ",c[r][cr]);
    }
    printf("\n");

  }


  resta (n,m,a,b,*c);

  printf("\n");
  printf("\n");


  for (int r =0 ; r < n ; r++ ){
    for (int cr = 0; cr< m; cr++){
      printf("%f ",c[r][cr]);
    }
    printf("\n");
  }



}

