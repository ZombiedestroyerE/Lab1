.section .bss
.global ram
.lcomm ram, 256

.section .text
.global fill_ram

fill_ram:
  mov $0xA, %BL
  mov $0x00, %AL
  loop_increment:
    add %BL, %AL
    decq %BL
    jne loop_increment:
  mov %BL, ram+0x50
  ret

  .section .note.GNU-stack,"",@progbits
