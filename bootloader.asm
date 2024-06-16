; Basic Bootloader
org 0x7C00      ; Origin, tell the assembler where we expect to be loaded
bits 16         ; We're working with 16-bit code in real mode

; Code starts here
start:
    cli         ; Disable interrupts
    mov si, msg ; Load message
    call print
        mov ah, 0x02    ; BIOS read sector function
    mov al, 1       ; Number of sectors to read
    mov ch, 0       ; Cylinder number
    mov dh, 0       ; Head number
    mov cl, 2       ; Sector number (1 is the boot sector, so start from 2)
    mov bx, 0x7E00  ; Load data after bootloader (0x7C00 + 512 bytes)

    int 0x13        ; BIOS interrupt for disk operations
    jc disk_error   ; Jump if carry flag is set (meaning there was an error)

    jmp 0x7E00      ; Jump to the loaded code

disk_error:
    mov si, disk_error_msg
    call print
    jmp $           ; Infinite loop

disk_error_msg db 'Disk read error!', 0

print:
    lodsb       ; Load a byte from SI into AL and increment SI
    or al, al   ; Is AL == 0?
    jz done     ; If so, we're done
    mov ah, 0x0E ; INT 10h / AH = 0Eh - teletype output
    int 0x10    ; Call BIOS interrupt
    jmp print   ; And repeat with next character

done:
    ret

msg: db 'Welcome to AkiraOS!', 0

; Padding and magic number
times 510-($-$$) db 0   ; Pad with zeros
dw 0xAA55               ; Boot signature