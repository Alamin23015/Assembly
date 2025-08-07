   .model small
.stack 100h
.code 
main proc
    mov ah,1
    int 21h 
    mov bl,al
    
    cmp bl,'y'
    je print_char
    
    cmp bl,'Y'
    je print_char
    jmp exit
    
    
    print_char:
    mov dl,bl
    mov ah,2
    int 21h
   
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
     
