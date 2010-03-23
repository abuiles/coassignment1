segment .data
matriz1: dq 4.0,1.0,4.0,1.0,4.0,1.0,4.0,1.0,4.0,1.0
matriz2: dq 3.0,1.0,4.0,1.0,4.0,1.0,4.0,1.0,4.0,1.0
 msg2: db "%lf ,",10,0

segment .bss
matriz3: resq 10
aux: resd 1
aux2: resd 1
aux3: resq 1

segment .text
   global main
   extern printf
main:
   mov   eax,matriz1
   mov   ebx,matriz2
   mov   edx,matriz3
   mov   ecx,10
   jmp   lp

lp:
   fld   qword [eax]
   fld   qword [ebx]
   faddp st1
   fstp  qword [edx]
   add   eax,8
   add   ebx,8
   add   edx,8
   loop  lp
   mov   ecx,10
   mov   eax,matriz3
   call  printm
   jmp   exit

printm:
   mov   [aux],eax
   mov   [aux2],ecx
   push  dword [eax+4]
   push  dword [eax]
   push  dword msg2
   call  printf
   add   esp,12
   mov   eax,[aux]
   mov   ecx,[aux2]
   add   eax,8
   loop  printm
   ret

exit:
   mov   eax,1
   mov   ebx,0
   int   0x80
