org 0x7E00
bits 16

start:
    cli                     ; Disable interrupts
    lgdt [gdt_descriptor]   ; Load GDT

    ; Enable A20 line (simplified - might not work on all hardware)
    in al, 0x92
    or al, 2
    out 0x92, al

    mov eax, cr0
    or eax, 1               ; Set protected mode bit
    mov cr0, eax

    jmp CODE_SEG:start_32bit ; Far jump to 32-bit code

gdt_start:
    dq 0 ; Null descriptor
gdt_code:
    dw 0xFFFF    ; Limit
    dw 0         ; Base (low)
    db 0         ; Base (middle)
    db 10011010b ; Access
    db 11001111b ; Granularity
    db 0         ; Base (high)
gdt_data:
    dw 0xFFFF
    dw 0
    db 0
    db 10010010b
    db 11001111b
    db 0
gdt_end:

gdt_descriptor:
    dw gdt_end - gdt_start - 1 ; GDT size
    dd gdt_start               ; GDT address

CODE_SEG equ gdt_code - gdt_start
DATA_SEG equ gdt_data - gdt_start

bits 32
start_32bit:
    mov ax, DATA_SEG
    mov ds, ax
    mov ss, ax
    mov es, ax
    mov fs, ax
    mov gs, ax

    ; Update stack
    mov ebp, 0x90000
    mov esp, ebp

    ; Print a character (video memory in protected mode)
    mov byte [0xB8000], 'P'
    mov byte [0xB8001], 0x0F ; White on black

    jmp $ ; Infinite loop

times 512-($-$$) db 0 ; Pad to 512 bytes