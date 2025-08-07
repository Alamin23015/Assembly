.model small
.stack 100h
.code 
main proc
    mov ah,1
    int 21h
    sub al,48 
    mov bl,al
    
    mov ah,1
    int 21h 
    sub al,48
    mov bh,al
    
    cmp bl,bh 
    jae show_bl
    mov dl,bh
    add dl,48
    jmp print 
    
    
    show_bl:
    mov dl,bl
    add dl,48
    
    print:
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main
    
     
