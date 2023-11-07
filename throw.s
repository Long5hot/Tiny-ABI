	.file	"throw.cpp"
	.intel_syntax noprefix
	.text
	.globl	_Z5raisev
	.type	_Z5raisev, @function
_Z5raisev:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	edi, 1
	call	__cxa_allocate_exception@PLT
	mov	rcx, rax
	mov	edx, 0
	lea	rax, _ZTI9Exception[rip]
	mov	rsi, rax
	mov	rdi, rcx
	call	__cxa_throw@PLT
	.cfi_endproc
.LFE0:
	.size	_Z5raisev, .-_Z5raisev
	.section	.rodata
	.align 8
.LC0:
	.string	"try_but_dont_catch handled an exception and resumed execution"
	.align 8
.LC1:
	.string	"Running try_but_dont_catch::catch(Fake_Exception)"
	.text
	.globl	_Z18try_but_dont_catchv
	.type	_Z18try_but_dont_catchv, @function
_Z18try_but_dont_catchv:
.LFB1:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 24
	.cfi_offset 3, -24
.LEHB0:
	call	_Z5raisev
.LEHE0:
.L5:
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
.LEHB1:
	call	printf@PLT
	jmp	.L9
.L7:
	endbr64
	cmp	rdx, 1
	je	.L4
	mov	rdi, rax
	call	_Unwind_Resume@PLT
.LEHE1:
.L4:
	mov	rdi, rax
	call	__cxa_begin_catch@PLT
	mov	QWORD PTR -24[rbp], rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
.LEHB2:
	call	puts@PLT
.LEHE2:
	call	__cxa_end_catch@PLT
	jmp	.L5
.L8:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L9:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA1:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT1-.LLSDATTD1
.LLSDATTD1:
	.byte	0x1
	.uleb128 .LLSDACSE1-.LLSDACSB1
.LLSDACSB1:
	.uleb128 .LEHB0-.LFB1
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L7-.LFB1
	.uleb128 0x1
	.uleb128 .LEHB1-.LFB1
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB1
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L8-.LFB1
	.uleb128 0
	.uleb128 .LEHB3-.LFB1
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE1:
	.byte	0x1
	.byte	0
	.align 4
	.long	DW.ref._ZTI14Fake_Exception-.
.LLSDATT1:
	.text
	.size	_Z18try_but_dont_catchv, .-_Z18try_but_dont_catchv
	.section	.rodata
	.align 8
.LC2:
	.string	"catchit handled an exception and resumed execution"
	.align 8
.LC3:
	.string	"Running try_but_dont_catch::catch(Exception)"
	.text
	.globl	_Z7catchitv
	.type	_Z7catchitv, @function
_Z7catchitv:
.LFB2:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 24
	.cfi_offset 3, -24
.LEHB4:
	call	_Z18try_but_dont_catchv
.LEHE4:
.L14:
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
.LEHB5:
	call	printf@PLT
	jmp	.L20
.L17:
	endbr64
	cmp	rdx, 1
	je	.L12
	cmp	rdx, 2
	je	.L13
	mov	rdi, rax
	call	_Unwind_Resume@PLT
.LEHE5:
.L12:
	mov	rdi, rax
	call	__cxa_begin_catch@PLT
	mov	QWORD PTR -24[rbp], rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
.LEHB6:
	call	puts@PLT
.LEHE6:
	call	__cxa_end_catch@PLT
	jmp	.L14
.L13:
	mov	rdi, rax
	call	__cxa_begin_catch@PLT
	mov	QWORD PTR -32[rbp], rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
.LEHB7:
	call	puts@PLT
.LEHE7:
	call	__cxa_end_catch@PLT
	jmp	.L14
.L18:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB8:
	call	_Unwind_Resume@PLT
.L19:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
	call	_Unwind_Resume@PLT
.LEHE8:
.L20:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.section	.gcc_except_table
	.align 4
.LLSDA2:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2-.LLSDATTD2
.LLSDATTD2:
	.byte	0x1
	.uleb128 .LLSDACSE2-.LLSDACSB2
.LLSDACSB2:
	.uleb128 .LEHB4-.LFB2
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L17-.LFB2
	.uleb128 0x3
	.uleb128 .LEHB5-.LFB2
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB2
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L18-.LFB2
	.uleb128 0
	.uleb128 .LEHB7-.LFB2
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L19-.LFB2
	.uleb128 0
	.uleb128 .LEHB8-.LFB2
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE2:
	.byte	0x2
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align 4
	.long	DW.ref._ZTI14Fake_Exception-.
	.long	DW.ref._ZTI9Exception-.
.LLSDATT2:
	.text
	.size	_Z7catchitv, .-_Z7catchitv
	.globl	seppuku
	.type	seppuku, @function
seppuku:
.LFB3:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	call	_Z7catchitv
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	seppuku, .-seppuku
	.weak	_ZTI14Fake_Exception
	.section	.data.rel.ro._ZTI14Fake_Exception,"awG",@progbits,_ZTI14Fake_Exception,comdat
	.align 8
	.type	_ZTI14Fake_Exception, @object
	.size	_ZTI14Fake_Exception, 16
_ZTI14Fake_Exception:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS14Fake_Exception
	.weak	_ZTS14Fake_Exception
	.section	.rodata._ZTS14Fake_Exception,"aG",@progbits,_ZTS14Fake_Exception,comdat
	.align 16
	.type	_ZTS14Fake_Exception, @object
	.size	_ZTS14Fake_Exception, 17
_ZTS14Fake_Exception:
	.string	"14Fake_Exception"
	.weak	_ZTI9Exception
	.section	.data.rel.ro._ZTI9Exception,"awG",@progbits,_ZTI9Exception,comdat
	.align 8
	.type	_ZTI9Exception, @object
	.size	_ZTI9Exception, 16
_ZTI9Exception:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS9Exception
	.weak	_ZTS9Exception
	.section	.rodata._ZTS9Exception,"aG",@progbits,_ZTS9Exception,comdat
	.align 8
	.type	_ZTS9Exception, @object
	.size	_ZTS9Exception, 11
_ZTS9Exception:
	.string	"9Exception"
	.hidden	DW.ref._ZTI14Fake_Exception
	.weak	DW.ref._ZTI14Fake_Exception
	.section	.data.rel.local.DW.ref._ZTI14Fake_Exception,"awG",@progbits,DW.ref._ZTI14Fake_Exception,comdat
	.align 8
	.type	DW.ref._ZTI14Fake_Exception, @object
	.size	DW.ref._ZTI14Fake_Exception, 8
DW.ref._ZTI14Fake_Exception:
	.quad	_ZTI14Fake_Exception
	.hidden	DW.ref._ZTI9Exception
	.weak	DW.ref._ZTI9Exception
	.section	.data.rel.local.DW.ref._ZTI9Exception,"awG",@progbits,DW.ref._ZTI9Exception,comdat
	.align 8
	.type	DW.ref._ZTI9Exception, @object
	.size	DW.ref._ZTI9Exception, 8
DW.ref._ZTI9Exception:
	.quad	_ZTI9Exception
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
