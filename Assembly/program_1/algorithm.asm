; ----------------------------------------------------------------------------------------
; Runs on Linux only.
; ----------------------------------------------------------------------------------------

%macro write 3
        mov eax, 4
        mov ebx, %1
        mov ecx, %2
        mov edx, %3
        int 0x80
%endmacro
%macro exit 1
        mov eax, 1
        mov ebx, %1
        int 0x80
%endmacro

%define STDOUT 1

section .bss

section .data

section .text
global _start

_start:
        mov ebx, 1000

        mov dh, 3               ;3-loop (like fizz)
        mov dl, 5               ;5-loop (like buzz)
        xor edi, edi            ;incrementor
        xor eax, eax            ;total


        dec ebx                 ;zero-index to match PE
        jz print                ;let's not fail
  startloop:
        xor si, si              ;flag for whether to add this one

        inc di                  ;bump loops
        dec dh
        dec dl

        test dh, dh             ;trip flag if divisible by 3
        jnz nothree
        mov si, 1
        mov dh, 3
  nothree:
        test dl, dl             ;trip flag if divisible by 5
        jnz nofive
        mov si, 1
        mov dl, 5
  nofive:
        test si, si             ;check if divisible-flag was set
        jz noadd
        add eax, edi            ;add this n
  noadd:
        dec ebx
        jnz startloop

  print:
        ;; need at most 10 digits (decimal)
        sub esp, 10
        mov edi, esp

  digit:
        cdq                     ;extend to edx
        mov esi, 0xA
        div esi                 ;divide by 10

        add dl, 0x30            ;make ASCII digit of remainder
        mov [edi], dl           ;put in memory
        inc edi

        test eax, eax
        jnz digit               ;keep going until 0


        mov edx, edi            ;length of string
        sub edx, esp
        mov esi, esp            ;si at first char
        dec edi                 ;di at last char
  reverse:                      ;built rtl, now needs to be flipped
        mov al, [esi]
        mov ah, [edi]
        mov [esi], ah
        mov [edi], al
        inc esi
        dec edi

        cmp esi, edi            ;keep going until they pass
        jb reverse              ;each other

        write STDOUT, esp, edx

        add esp, 10             ;stack-neutral

        exit 0