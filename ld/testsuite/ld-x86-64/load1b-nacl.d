#source: load1.s
#as: --x32
#ld: -melf32_x86_64
#objdump: -dw --sym
#target: x86_64-*-nacl*

.*: +file format .*

SYMBOL TABLE:
#...
10030074 l     O .data	0+1 bar
#...
10030075 g     O .data	0+1 foo
#...

Disassembly of section .text:

0+20000 <_start>:
[ 	]*[a-f0-9]+:	81 d0 74 00 03 10    	adc    \$0x10030074,%eax
[ 	]*[a-f0-9]+:	81 c3 74 00 03 10    	add    \$0x10030074,%ebx
[ 	]*[a-f0-9]+:	81 e1 74 00 03 10    	and    \$0x10030074,%ecx
[ 	]*[a-f0-9]+:	81 fa 74 00 03 10    	cmp    \$0x10030074,%edx
[ 	]*[a-f0-9]+:	81 ce 74 00 03 10    	or     \$0x10030074,%esi
[ 	]*[a-f0-9]+:	81 df 74 00 03 10    	sbb    \$0x10030074,%edi
[ 	]*[a-f0-9]+:	81 ed 74 00 03 10    	sub    \$0x10030074,%ebp
[ 	]*[a-f0-9]+:	41 81 f0 74 00 03 10 	xor    \$0x10030074,%r8d
[ 	]*[a-f0-9]+:	41 f7 c7 74 00 03 10 	test   \$0x10030074,%r15d
[ 	]*[a-f0-9]+:	48 81 d0 74 00 03 10 	adc    \$0x10030074,%rax
[ 	]*[a-f0-9]+:	48 81 c3 74 00 03 10 	add    \$0x10030074,%rbx
[ 	]*[a-f0-9]+:	48 81 e1 74 00 03 10 	and    \$0x10030074,%rcx
[ 	]*[a-f0-9]+:	48 81 fa 74 00 03 10 	cmp    \$0x10030074,%rdx
[ 	]*[a-f0-9]+:	48 81 cf 74 00 03 10 	or     \$0x10030074,%rdi
[ 	]*[a-f0-9]+:	48 81 de 74 00 03 10 	sbb    \$0x10030074,%rsi
[ 	]*[a-f0-9]+:	48 81 ed 74 00 03 10 	sub    \$0x10030074,%rbp
[ 	]*[a-f0-9]+:	49 81 f0 74 00 03 10 	xor    \$0x10030074,%r8
[ 	]*[a-f0-9]+:	49 f7 c7 74 00 03 10 	test   \$0x10030074,%r15
[ 	]*[a-f0-9]+:	81 d0 75 00 03 10    	adc    \$0x10030075,%eax
[ 	]*[a-f0-9]+:	81 c3 75 00 03 10    	add    \$0x10030075,%ebx
[ 	]*[a-f0-9]+:	81 e1 75 00 03 10    	and    \$0x10030075,%ecx
[ 	]*[a-f0-9]+:	81 fa 75 00 03 10    	cmp    \$0x10030075,%edx
[ 	]*[a-f0-9]+:	81 ce 75 00 03 10    	or     \$0x10030075,%esi
[ 	]*[a-f0-9]+:	81 df 75 00 03 10    	sbb    \$0x10030075,%edi
[ 	]*[a-f0-9]+:	81 ed 75 00 03 10    	sub    \$0x10030075,%ebp
[ 	]*[a-f0-9]+:	41 81 f0 75 00 03 10 	xor    \$0x10030075,%r8d
[ 	]*[a-f0-9]+:	41 f7 c7 75 00 03 10 	test   \$0x10030075,%r15d
[ 	]*[a-f0-9]+:	48 81 d0 75 00 03 10 	adc    \$0x10030075,%rax
[ 	]*[a-f0-9]+:	48 81 c3 75 00 03 10 	add    \$0x10030075,%rbx
[ 	]*[a-f0-9]+:	48 81 e1 75 00 03 10 	and    \$0x10030075,%rcx
[ 	]*[a-f0-9]+:	48 81 fa 75 00 03 10 	cmp    \$0x10030075,%rdx
[ 	]*[a-f0-9]+:	48 81 cf 75 00 03 10 	or     \$0x10030075,%rdi
[ 	]*[a-f0-9]+:	48 81 de 75 00 03 10 	sbb    \$0x10030075,%rsi
[ 	]*[a-f0-9]+:	48 81 ed 75 00 03 10 	sub    \$0x10030075,%rbp
[ 	]*[a-f0-9]+:	49 81 f0 75 00 03 10 	xor    \$0x10030075,%r8
[ 	]*[a-f0-9]+:	49 f7 c7 75 00 03 10 	test   \$0x10030075,%r15
#pass
