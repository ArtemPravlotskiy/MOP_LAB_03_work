.686

PUBLIC _Merge1@20
PUBLIC @Merge2@20
PUBLIC _Merge3

.model flat
;.data tmp dw?
.code

 _Merge1@20 proc

    push ebp
    mov ebp, esp


   xor esi, esi

        mov edi, dword ptr[ebp + 24]

        mov ecx, 0 
        mov edx, 0 
        
            mov eax, dword ptr[ebp + 8]
            mov ebx, dword ptr[ebp + 16]

        Merge:

        cmp ecx, dword ptr[ebp + 12]
            jge end_array2

            cmp edx, [ebp + 20]
            jge end_array1

            push ebx
            mov ebx, dword ptr [ebx + 4 * edx]
            cmp dword ptr [eax + 4 * ecx], ebx
            pop ebx
            jg add_array2

            push eax
            mov eax, dword ptr [eax + 4 * ecx]
            mov dword ptr[edi + 4 * esi], eax
            pop eax

            inc ecx
            jmp Continue

            add_array2 :
            push ebx
            mov ebx, dword ptr [ebx + 4 * edx]
        mov dword ptr[edi + 4 * esi], ebx
        pop ebx
            inc edx

            Continue :
        inc esi
            jmp Merge

            end_array1 :
            push eax
            mov eax, dword ptr [eax + 4 * ecx]
            mov dword ptr[edi + 4 * esi], eax
            pop eax
            inc ecx
            inc esi
            cmp ecx, [ebp + 12]
            jl end_array1

            jmp done


            end_array2 :
            push ebx
            mov ebx, dword ptr [ebx + 4 * edx]
            mov dword ptr[edi+ 4 * esi], ebx
            pop ebx
            inc edx
            inc esi
            cmp edx, [ebp + 20]
            jl end_array2

            done :


        pop ebp
        ret 20

_Merge1@20 endp

;**************************************************************************************

@Merge2@20 proc


    push ebp
    mov ebp, esp


   xor esi, esi

        mov edi, dword ptr[ebp + 16]

        mov eax, ecx
        mov ebx, edx

        mov ecx, 0 
        mov edx, 0 
        
            

        Merge:

        cmp ecx, dword ptr[ebp + 8]
            jge end_array2

            cmp edx, [ebp + 12]
            jge end_array1

            push ebx
            mov ebx, dword ptr [ebx + 4 * edx]
            cmp dword ptr [eax + 4 * ecx], ebx
            pop ebx
            jg add_array2

            push eax
            mov eax, dword ptr [eax + 4 * ecx]
            mov dword ptr[edi + 4 * esi], eax
            pop eax

            inc ecx
            jmp Continue

            add_array2 :
            push ebx
            mov ebx, dword ptr [ebx + 4 * edx]
        mov dword ptr[edi + 4 * esi], ebx
        pop ebx
            inc edx

            Continue :
        inc esi
            jmp Merge

            end_array1 :
            push eax
            mov eax, dword ptr [eax + 4 * ecx]
            mov dword ptr[edi + 4 * esi], eax
            pop eax
            inc ecx
            inc esi
            cmp ecx, [ebp + 8]
            jl end_array1

            jmp done


            end_array2 :
            push ebx
            mov ebx, dword ptr [ebx + 4 * edx]
            mov dword ptr[edi+ 4 * esi], ebx
            pop ebx
            inc edx
            inc esi
            cmp edx, [ebp + 12]
            jl end_array2

            done :


        pop ebp
        ret 

@Merge2@20 endp

;****************************************************************************************

_Merge3 proc

    push ebp
    mov ebp, esp


   xor esi, esi

        mov edi, dword ptr[ebp + 24]

        mov ecx, 0 
        mov edx, 0 
        
            mov eax, dword ptr[ebp + 8]
            mov ebx, dword ptr[ebp + 16]

        Merge:

        cmp ecx, dword ptr[ebp + 12]
            jge end_array2

            cmp edx, [ebp + 20]
            jge end_array1

            push ebx
            mov ebx, dword ptr [ebx + 4 * edx]
            cmp dword ptr [eax + 4 * ecx], ebx
            pop ebx
            jg add_array2

            push eax
            mov eax, dword ptr [eax + 4 * ecx]
            mov dword ptr[edi + 4 * esi], eax
            pop eax

            inc ecx
            jmp Continue

            add_array2 :
            push ebx
            mov ebx, dword ptr [ebx + 4 * edx]
        mov dword ptr[edi + 4 * esi], ebx
        pop ebx
            inc edx

            Continue :
        inc esi
            jmp Merge

            end_array1 :
            push eax
            mov eax, dword ptr [eax + 4 * ecx]
            mov dword ptr[edi + 4 * esi], eax
            pop eax
            inc ecx
            inc esi
            cmp ecx, [ebp + 12]
            jl end_array1

            jmp done


            end_array2 :
            push ebx
            mov ebx, dword ptr [ebx + 4 * edx]
            mov dword ptr[edi+ 4 * esi], ebx
            pop ebx
            inc edx
            inc esi
            cmp edx, [ebp + 20]
            jl end_array2

            done :


        pop ebp
        ret

_Merge3 endp






end
