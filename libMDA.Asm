.486
.model flat,stdcall
option casemap:none
include libMDA.inc
.code
DllEntry proc hInst:HINSTANCE, reason:DWORD, reserved1:DWORD
	
	mov eax, hInst
	mov hInstance, eax
	mov eax, TRUE
	ret
DllEntry Endp
function1 proc a:DWORD,b:DWORD
	mov eax,a
	add eax,b
	ret

function1 endp
sub_10022FED proc arg_0:DWORD,arg_4:DWORD,arg_8:DWORD,arg_c:DWORD
	mov     ecx, arg_0
	mov     eax, [ecx]
	mov     ebx, [ecx+4]
	xor     esi, esi
	xor     edi, edi
	push    edi
	mov     edi, arg_8
	xor     ecx, ecx
	loc_10023002:
	xor     edx, edx
	mov     dl, [ecx+edi]
	test    edx, edx
	jnz     short loc_1002300D
	jmp     short loc_10023023
	loc_1002300D:
	dec     edx
	cmp     edx, 1Fh
	ja      short loc_10023018
	bt      eax, edx
	jmp     short loc_1002301E
	loc_10023018:
	sub     edx, 20h
	bt      ebx, edx
	loc_1002301E:
	jnb     short loc_10023023
	bts	esi,ecx
	loc_10023023:
	inc     ecx
	cmp     ecx, 20h
	jz      short loc_10023030
	cmp     ecx, arg_c
	jz      short loc_1002306C
	jmp     short loc_10023002
	loc_10023030:
	cmp     ecx, arg_c
	jz      short loc_1002306C
	sub     arg_c, 20h
	pop     edi
	push    esi
	xor     ecx, ecx
	mov     esi, arg_8
	add     esi, 20h
	loc_10023043:
	xor     edx, edx
	mov     dl, [ecx+esi]
	test    edx, edx
	jnz     short loc_1002304E
	jmp     short loc_10023064
	loc_1002304E:
	dec     edx
	cmp     edx, 1Fh
	ja      short loc_10023059
	bt      eax, edx
	jmp     short loc_1002305F
	loc_10023059:
	sub     edx, 20h
	bt      ebx, edx
	loc_1002305F:
	jnb     short loc_10023064
	bts     edi, ecx
	loc_10023064:
	inc     ecx
	cmp     ecx, arg_c
	jz      short loc_1002306F
	jmp     short loc_10023043
	loc_1002306C: 
	pop     edi
	jmp     short loc_10023070
	loc_1002306F:
	pop     esi
	loc_10023070:
	mov     ecx, arg_4
	mov     [ecx], esi
	mov     [ecx+4], edi
	xor     eax, eax
	ret
sub_10022FED endp
sub_10022F3C proc arg_0:DWORD,arg_4:DWORD,arg_8:DWORD,arg_c:DWORD,arg_10:DWORD
	
	push    3Ch
	push arg_8
	push arg_4
	push arg_0
	call sub_10022FED
	mov ebx,arg_4
	mov     eax, [ebx]
	mov edx,arg_10
	xor ecx,ecx
	mov cl,[edx]
loc_10022F5B:
	btr     eax, 1Bh
	rol     eax, 1
	jnb     loc_10022F69
	bts     eax, 0
	jmp     loc_10022F6D
loc_10022F69:
	btr     eax, 0
loc_10022F6D:
	loop    loc_10022F5B
	mov     [ebx], eax
	add     ebx, 4
	mov     eax, [ebx]
	xor     ecx, ecx
	mov     cl, [edx]
loc_10022F7A:
	btr     eax, 1Bh
	rol     eax, 1
	jnb     loc_10022F88 
	bts     eax, 0
	jmp     short loc_10022F8C
loc_10022F88:
	btr     eax, 0
loc_10022F8C:
	loop    loc_10022F7A
	mov     [ebx], eax
	mov     edi, arg_4
	mov     esi, arg_10
	inc     esi
	xor     ecx, ecx
loc_10022F99:
	lea     edx, [edi+ecx*4]
	mov     eax, [edx]
	push    ecx
	shr     ecx, 1
	mov     cl, [ecx+esi]
	and     ecx, 0FFh
loc_10022FAA:
	btr     eax, 1Bh
	rol     eax, 1
	jnb     loc_10022FB8
	bts     eax, 0
	jmp     short loc_10022FBC
loc_10022FB8:
	btr     eax, 0
loc_10022FBC:
	loop    loc_10022FAA
	add     edx, 8
	mov     [edx], eax
	pop     ecx
	inc     ecx
	cmp     ecx, 1Eh
	jnz     short loc_10022F99
	xor     ecx, ecx
loc_10022FCC:
	push    ecx
	push    30h
	mov     eax, arg_c
	push    eax
	mov     esi, arg_4
	lea     eax, [esi+ecx*8]
	push    eax
	push    eax
	call    sub_10022FED
	pop     ecx
	inc     ecx
	cmp     ecx, 10h
	jnz     short loc_10022FCC
	xor     eax, eax
	ret

sub_10022F3C endp
sub_1002316A proc arg_0:DWORD,arg_4:DWORD,arg_8:DWORD,arg_c:DWORD
	LOCAL var_4:DWORD
	LOCAL var_8:DWORD
	push    40h
	push    offset unk_1004C1B8
	push    arg_4
	push    arg_0
	call    sub_10022FED
	xor     ecx, ecx
	loc_10023184:
	push    ecx
	mov     eax, arg_4
	mov     eax, [eax+4]
	lea     ebx, [ebp-8];var8
	mov     [ebx], eax
	push    30h
	push    offset unk_1004C238
	push    ebx
	push    ebx
	call    sub_10022FED
	pop     ecx
	push    ecx
	mov     edx, arg_c
	test    edx, edx
	jz      short loc_100231AC
	not     ecx
	add     ecx, 10h
	loc_100231AC:
	shl     ecx, 3
	mov     esi, arg_8
	mov     eax, [esi+ecx]
	xor     [ebp-8], eax
	mov     eax, [esi+ecx+4]
	xor     [ebp-4], eax
	mov     dl, 3Fh
	mov     eax, [ebp-8]
	mov     ecx, [ebp-4]
	mov     bl, al
	and     bl, dl
	ror     eax, 6
	mov     bh, al
	and     bh, dl
	mov     word ptr [ebp-8], bx
	ror     eax, 6
	mov     bl, al
	and     bl, dl
	ror     eax, 6
	mov     bh, al
	and     bh, dl
	mov     word ptr [ebp-8+2], bx
	ror     eax, 6
	mov     bl, al
	and     bl, dl
	ror     eax, 6
	shl     ecx, 2
	and     al, 3
	bt      ax, 0
	jnb     short loc_10023203
	bts     cx, 0
	loc_10023203:
	bt      ax, 1
	jnb     short loc_1002320F
	bts     cx, 1
	loc_1002320F:
	mov     bh, cl
	and     bh, dl
	mov     word ptr [ebp-4], bx
	ror     ecx, 6
	mov     bl, cl
	and     bl, dl
	ror     ecx, 6
	mov     bh, cl
	and     bh, dl
	mov     word ptr [ebp-4+2], bx
	xor     ecx, ecx
	mov     eax, [ebp-8]
	loc_1002322E:
	mov     edx, ecx
	shl     edx, 6
	mov     esi, offset unk_1004C2F4
	add     esi, edx
	xor     ebx, ebx
	mov     bl, al
	mov     al, [ebx+esi]
	ror     eax, 8
	inc     ecx
	cmp     ecx, 4
	jnz     short loc_10023250
	mov     [ebp-8], eax
	mov     eax, [ebp-4]
	loc_10023250:
	cmp     ecx, 8
	jnz     short loc_1002322E
	mov     [ebp-4], eax
	mov     eax, [ebp-8]
	mov     ecx, [ebp-4]
	push 	eax
	xor	eax,eax
	mov 	[ebp-4],eax
	pop 	eax
	mov     bx, ax
	rol     bl, 4
	ror     bx, 4
	mov     byte ptr [ebp-8], bl
	ror     eax, 10h
	mov     bx, ax
	rol     bl, 4
	ror     bx, 4
	mov     byte ptr [ebp-8+1], bl
	mov     bx, cx
	rol     bl, 4
	ror     bx, 4
	mov     byte ptr [ebp-8+2], bl
	ror     ecx, 10h
	mov     bx, cx
	rol     bl, 4
	ror     bx, 4
	mov     byte ptr [ebp-8+3], bl
	push    20h
	push    offset asc_1004C2D4 
	lea     eax, [ebp-8]
	push    eax
	push    eax
	call    sub_10022FED
	mov     edi, arg_4
	mov     eax, [edi]
	xor     eax, [ebp-8]
	mov     [edi], eax
	pop     ecx
	inc     ecx
	cmp     ecx, 10h
	jz      short loc_100232D0
	mov     eax, [edi]
	mov     ebx, [edi+4]
	mov     [edi], ebx
	mov     [edi+4], eax
	jmp     loc_10023184

	loc_100232D0:
	push    40h
	push    offset a08@7?_6543219 
	push    arg_4
	push    arg_4
	call    sub_10022FED
	add	esp,8
	mov     eax, 1

	ret

sub_1002316A endp
sub_1002307E proc arg_0:DWORD,arg_4:DWORD,arg_8:DWORD,arg_c:DWORD,arg_10:DWORD
	LOCAL var[256]:DWORD
	pusha
	push    offset unk_1004C4F4
	push    offset a837140592_6 
	push    offset a91234?76_5
	lea     eax, [ebp-400h]
	push    eax
	push    arg_c
	call    sub_10022F3C
	mov     ecx, arg_8
	shr     ecx, 3
	loc_100230AC:
	test    ecx, ecx
	jz      short loc_100230D2
	push    ecx
	push    arg_10
	lea     eax, [ebp-400h]
	push    eax
	push    arg_4
	push    arg_0
	call    sub_1002316A
	pop     ecx
	add     arg_4, 8
	add     arg_0, 8
	dec     ecx
	jmp     short loc_100230AC
	loc_100230D2:
	popa
	add 	esp,400h
	xor     eax, eax
	ret

sub_1002307E endp
End DllEntry