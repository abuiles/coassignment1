   %define numN   ebp+8
   %define numM   ebp+12
   %define numConstante ebp+16
   %define dirMatrizA   ebp+16
   %define dirMatrizB   ebp+20
   %define dirMatrizRespuesta   ebp+24
   %define numAN   ebp+8
   %define numAM   ebp+12
   %define numBN   ebp+16
   %define numBM   ebp+20
   %define dirMA   ebp+24
   %define dirMB   ebp+28
   %define dirMR   ebp+32


segment .data

segment .bss
aux:     resd 1
aux2:    resd 1
aux3:    resd 1
aux4:    resd 1
n:       resd  1
escalar: resd 1
m1n:     resd 1
m1m:     resd 1
m2n:     resd 1
m2m:     resd 1
m1:      resd 1
m2:      resd 1
mr:      resd 1
i:       resd 1
j:       resd 1
k:       resd 1
sum:     resd 1


segment .text
   global suma:function
   global resta:function
   global smultiplicacion:function
   global multiplicacion:function

suma:
   push  ebp
   mov   ebp,esp
   mov   dword edx,0
   mov   eax,[numN]
   mul   dword [numM]
   mov   [n],eax
   mov   ecx,[n]
   mov   dword eax, [dirMatrizA]        ;; Coloca la dirección de la matriz A en eax
   mov   dword ebx, [dirMatrizB]        ;; Coloca la dirección de la matriz B en ebx
   mov   dword edx, [dirMatrizRespuesta] ;;Coloca la dirección de la matriz C en edx
lp:
   fld   dword [eax]                    ;; Carga el valor al que apunta eax a la fpu
   fld   dword [ebx]                    ;; Carga el valor al que apunta ebx a la fpu
   faddp                                ;; Suma los dos valores que esta en el top de la pila
   fstp  dword [edx]                    ;; Copia el valor del tope de la pila a la direccion dada, en este caso la que esta en edx, que es la dir de la matriz respuesta.
   add   eax,4                          ;; Se mueve a la siguiente posición de A
   add   ebx,4                          ;; Se mueve a la siguiente posición de B
   add   edx,4                          ;; Se mueve a la siguiente posicion de C
   loop  lp                             ;; la instruccion loop verifica si ecx es 0, sino va a la etiqueta dada y resta 1 de ecx.
   jmp   exit

;;;;;fin Suma

;;;;; Resta de Matrices
resta:
   push  ebp
   mov   ebp,esp
   mov   eax,[numN]
   mov   dword edx,0
   mul   dword [numM]
   mov   [n],eax
   mov   ecx,[n]
   mov   dword eax, [dirMatrizA]
   mov   dword ebx, [dirMatrizB]
   mov   dword edx, [dirMatrizRespuesta]
lpResta:
   fld   dword [eax]
   fld   dword [ebx]
   fsubp st1
   fstp  dword [edx]
   add   eax,4
   add   ebx,4
   add   edx,4
   loop  lpResta
   jmp   exit
;;;;; fin resta de matrices
;;;;; Multiplicación por escalar
smultiplicacion:
   push  ebp
   mov   ebp,esp
   mov   edx, 0
   mov   dword eax,[numN]
   mul   dword [numM]
   mov   dword [n],eax
   mov   dword ecx,[n]
   mov   dword ebx,[numConstante]
   mov   dword [escalar],ebx
   mov   dword eax,[dirMatrizB]
   mov   dword edx,[dirMatrizRespuesta]
smulLp:
   fld   dword [eax]
   fild  dword [escalar]
   fmulp st1
   fstp  dword [edx]
   add   eax,4
   add   edx,4
   loop  smulLp
   jmp   exit

;;;;Multiplicacion de matrices

multiplicacion:
   mov   dword[i],0
   mov   dword[j],0
   mov   dword[k],0
   mov   dword[sum],0
   push  ebp
   mov   ebp,esp
   mov   dword eax,[numAN]
   mov   dword[m1n],eax

   mov   dword eax,[numAM]
   mov   dword[m1m],eax

   mov   dword eax,[numBN]
   mov   dword[m2n],eax

   mov   dword eax,[numBM]
   mov   dword[m2m],eax

   mov   dword eax,[dirMA]
   mov   dword[m1],eax


   mov   dword eax,[dirMB]
   mov   dword[m2],eax


   mov   dword eax,[dirMR]
   mov   dword[mr],eax

   jmp   lp1

lp1:
   mov   ecx, [i]                       ;; Cargo la i en ecx para el primer contador
   cmp   ecx, [m1n]                     ;; Si i < m1n, salta a lp2
   jge   exit
   mov   dword[j],0
lp2:
   mov   ecx, [j]                       ;; Cargo la j en ecx para el segundo contador
   cmp   ecx,[m2m]                      ;; Si j < m2m, salta a lp3 y sum = 0
   jge   inclp1
   mov   dword[sum], 0
   mov   dword[k],0
lp3:
   mov   ecx, [k]
   cmp   ecx,[m1m]
   jge   inclp2
   ;; Calculo sum
   ;; mov eax, [sum] ;; Los resultados de sum se llevaran en eax
   ;; Calculo indice m1[i][k] = 2*i+k
   mov   edx, 0
   mov   eax,[i]
   mov   edi,[k]
   mov   esi,[m1]
   mul   dword [m1m]
   add   eax,edi
   ;; Uso Coprocesador
   fld   dword[esi+4*eax]               ;; m1[i][k]
   mov   ecx,[j]
   mov   edx,0
   mov   eax,[k]
   mov   esi,[m2]
   mul   dword [m2m]
   add   eax,ecx
;;; Coprocesador
   fld   dword [esi+4*eax]
   fmulp st1                            ;; m2[k][j]
   fadd  dword[sum]
   fstp  dword[sum]
   mov   eax,[sum]
   mov   eax,0
   ;; ;;; Fin calculo sum
   mov   ecx,dword[k]
   inc   ecx
   mov   dword[k],ecx
   jmp   lp3

inclp1:
   ;; increment on i
   mov   ecx,dword[i]
   inc   ecx
   mov   dword[i],ecx
   jmp   lp1

inclp2:
   ;; Calcular result
   mov   edx,0
   mov   eax,[i]
   mov   ebx,[j]
   mov   esi,[m2m]
   mul   esi
   add   eax,ebx
;;;   Limpio el stack del coprocesador
   ffree st0
   ;;fld   dword[sum]
   ;;   fstp  dword[mr+4*eax]
   mov   ecx,dword[sum]
   mov   edi,[mr]
   mov   dword[edi+4*eax],ecx
   ;; increment on j
   mov   ecx,[j]
   inc   ecx
   mov   dword [j],ecx
   jmp   lp2
;;;;; fin multiplicacion

exit:
   leave
   ret
