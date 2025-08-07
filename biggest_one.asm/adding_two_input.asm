.model small
.stack 100h
.data 
n1 db ?
n2 db ?
sum db ?
.code 

main proc 
    mov ax,@data
    mov ds,ax
              
    mov ah,1
    int 21h 
    sub al,48
    mov n1,al

    mov ah,1
    int 21h 
    sub al,48
    mov n2,al 
    
    mov al,n1
    add al,n2
    mov sum,al  
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov al, sum
    add al, 48
    mov dl, al
    mov ah, 2
    int 21h
    
exit:
    mov ah,4ch
    int 21h
endp main
end main
