%define numN   ebp+8
%define numM   ebp+12
%define numConstante ebp+16
%define dirMatrizA   ebp+16
%define dirMatrizB   ebp+20
%define dirMatrizRespuesta   ebp+24

segment .data

segment .bss
aux: resd 1
aux2: resd 1
aux3: resd 1
aux4: resd 1
n: resd  1
escalar: resd 1

segment .text

   global suma:
suma:
   push  ebp
   mov   ebp,esp
   mov   dword edx,0
   mov   eax,[numN]
   mul   dword [numM]
   mov   [n],eax
   mov   ecx,[n]
   mov   dword eax, [dirMatrizA]
   mov   dword ebx, [dirMatrizB]
   mov   dword edx, [dirMatrizRespuesta]
lp:
   fld   dword [eax]
   fld   dword [ebx]
   faddp
   fstp  dword [edx]
   add   eax,4
   add   ebx,4
   add   edx,4
   loop  lp
   jmp exit

;;;;;fin Suma

;;;;; Resta de Matrices
   global resta:
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

   global smultiplicacion:
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
   jmp   smulLp

smulLp:
   fld   dword [eax]
   fild   dword [escalar]
   fmulp st1
   fstp  dword [edx]
   add   eax,4
   add   edx,4
   loop  smulLp
   jmp   exit
exit:
   leave
   ret
