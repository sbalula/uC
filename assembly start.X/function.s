  .text
  .global _asmFunction
_asmFunction:
  mov #0,w0
  mov w0,_cVariable
  return
  .global _main
_main:
  call _foo
  return 
  .bss
  .global _asmVariable
  .align 2
_asmVariable: .space 2
 .end
 