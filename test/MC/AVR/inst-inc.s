; RUN: llvm-mc -triple avr-none -show-encoding < %s | FileCheck %s


foo:

  inc r12 
  inc r29
  inc r6
  inc r20

; CHECK: inc r12                  ; encoding: [0xc3,0x94]
; CHECK: inc r29                  ; encoding: [0xd3,0x95]
; CHECK: inc r6                   ; encoding: [0x63,0x94]
; CHECK: inc r20                  ; encoding: [0x43,0x95]
