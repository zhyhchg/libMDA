include windows.inc
function1 PROTO :DWORD, :DWORD
sub_10022FED PROTO :DWORD, :DWORD, :DWORD, :DWORD
sub_10022F3C PROTO :DWORD, :DWORD, :DWORD, :DWORD, :DWORD
sub_1002316A PROTO :DWORD, :DWORD, :DWORD, :DWORD
sub_1002307E PROTO :DWORD, :DWORD, :DWORD, :DWORD, :DWORD
.data
unk_1004C1B8 db 3ah,32h,2ah,22h,1ah,12h,0ah,2,3ch,34h,2ch,24h,1ch,14h,0ch,4,3eh,36h,2eh,26h,1eh,16h,0eh,6,40h,38h,30h,28h,20h,18h,10h,8,39h,31h,29h,21h,19h,11h,9,1,3bh,33h,2bh,23h,1bh,13h,0bh,3
	     db 3dh,35h,2dh,25h,1dh,15h,0dh,5,3fh,37h,2fh,27h,1fh,17h,0fh,7
unk_1004C238 db 20h,1,2,3,4,5,4,5,6,7,8,9,8,9,0ah,0bh,0ch,0dh,0ch,0dh,0eh,0fh,10h,11h,10h,11h,12h,13h,14h,15h,14h,15h,16h,17h,18h,19h,18h,19h,1ah,1bh,1ch,1dh,1ch,1dh,1eh,1fh,20h,1
unk_1004C2F4 db 0Eh,0,4,0Fh,0Dh,7,1,4,2,0Eh,0Fh,2,0Bh,0Dh,0Bh,0Eh,3,0Ah
	     db 0Ah
	     db 6,6,0Ch,0Ch,0Bh,5,9,9,5,0,3,7,8,4,0Fh,1,0Ch,0Eh,8,8,2,0Dh,4,6,9,2,1,0Bh,7,0Fh,5,0Ch,0Bh,9,3,7,0Eh,3,0Ah
	     db 0Ah
	     db 0,5,6,0,0Dh,0Fh,3,1,0Dh,8,4,0Eh,7,6,0Fh,0Bh,2,3,8,4,0Fh,9,0Ch,7,0,2,1,0Dh,0Ah
	     db 0Ch,6,0,9,5,0Bh,0Ah
	     db 5,0,0Dh,0Eh,8,7,0Ah
	     db 0Bh,1,0Ah
	     db 3,4,0Fh,0Dh,4,1,2,5,0Bh,8,6,0Ch,7,6,0Ch,9,0,3,5,2,0Eh,0Fh,9,0Ah
	     db 0Dh,0,7,9,0,0Eh,9,6,3,3,4,0Fh,6,5,0Ah
	     db 1,2,0Dh,8,0Ch,5,7,0Eh,0Bh,0Ch,4,0Bh,2,0Fh,8,1,0Dh,1,6,0Ah
	     db 4,0Dh,9,0,8,6,0Fh,9,3,8,0,7,0Bh,4,1,0Fh,2,0Eh,0Ch,3,5,0Bh,0Ah
	     db 5,0Eh,2,7,0Ch,7,0Dh,0Dh,8,0Eh,0Bh,3,5,0,6,6,0Fh,9,0,0Ah
	     db 3,1,4,2,7,8,2,5,0Ch,0Bh,1,0Ch,0Ah
	     db 4,0Eh,0Fh,9,0Ah
	     db 3,6,0Fh,9,0,0,6,0Ch,0Ah
	     db 0Bh,0Ah
	     db 7,0Dh,0Dh,8,0Fh,9,1,4,3,5,0Eh,0Bh,5,0Ch,2,7,8,2,4,0Eh,2,0Eh,0Ch,0Bh,4,2,1,0Ch,7,4,0Ah
	     db 7,0Bh,0Dh,6,1,8,5,5,0,3,0Fh,0Fh,0Ah
	     db 0Dh,3,0,9,0Eh,8,9,6,4,0Bh,2,8,1,0Ch,0Bh,7,0Ah
	     db 1,0Dh,0Eh,7,2,8,0Dh,0Fh,6,9,0Fh,0Ch,0,5,9,6,0Ah
	     db 3,4,0,5,0Eh,3,0Ch,0Ah
	     db 1,0Fh,0Ah
	     db 4,0Fh,2,9,7,2,0Ch,6,9,8,5,0,6,0Dh,1,3,0Dh,4,0Eh,0Eh,0,7,0Bh,5,3,0Bh,8,9,4,0Eh,3,0Fh,2,5,0Ch,2,9,8,5,0Ch,0Fh,3,0Ah
	     db 7,0Bh,0,0Eh,4,1,0Ah
     	     db 7,1,6,0Dh,0,0Bh,8,6,0Dh,4,0Dh,0Bh,0,2,0Bh,0Eh,7,0Fh,4,0,9,8,1,0Dh,0Ah
	     db 3,0Eh,0Ch,3,9,5,7,0Ch,5,2,0Ah
	     db 0Fh,6,8,1,6,1,6,4,0Bh,0Bh,0Dh,0Dh,8,0Ch,1,3,4,7,0Ah
             db 0Eh,7,0Ah
		db 9,0Fh,5,6,0,8,0Fh,0,0Eh,5,2,9,3,2,0Ch,0Dh,1,2,0Fh,8,0Dh,4,8,6,0Ah
		db 0Fh,3,0Bh,7,1,4,0Ah
		db 0Ch,9,5,3,6,0Eh,0Bh,5,0,0,0Eh,0Ch,9,7,2,7,2,0Bh,1,4,0Eh,1,7,9,4,0Ch,0Ah
		db 0Eh,8,2,0Dh,0,0Fh,6,0Ch,0Ah
		db 9,0Dh,0,0Fh,3,3,5,5,6,8,0Bh
asc_1004C2D4    db 10h,7,14h,15h,1Dh,0Ch,1Ch,11h,1,0Fh,17h,1Ah,5,12h,1Fh,0Ah
                db 2,8,18h,0Eh,' ',1Bh,3,9,13h,0Dh,1Eh,6,16h,0Bh,4,19h
a08@7?_6543219  db '(',8,'0',10h,'8',18h,'@ ',27h,7,'/',0Fh,'7',17h,'?',1Fh,'&',6,'.',0Eh,'6',16h,'>',1Eh,'%',5,'-',0Dh
                db '5',15h,'=',1Dh,'$',4,',',0Ch,'4',14h,'<',1Ch,'#',3,'+',0Bh,'3',13h,';',1Bh,'"',2,'*',0Ah
                db '2',12h,':',1Ah,'!',1,')',9,'1',11h,'9',19h
unk_1004C4F4 db 1,1,2,2,2,2,2,2,1,2,2,2,2,2,2,1
 a837140592_6    db 0Eh,11h,0Bh,18h,1,5,3,1Ch,0Fh,6,15h,0Ah
 		 db 17h,13h,0Ch,4,1Ah,8,10h,7,1Bh,14h,0Dh,2,'-8#)3;",71%405+<&92.6(!$'
a91234?76_5     db '91)!',19h,11h,9,1,':2*"',1Ah,12h,0Ah
                 db 2,';3+#',1Bh,13h,0Bh,3,'<4,$',0,0,0,0,'?7/',27h,1Fh,17h,0Fh,7,'>6.&',1Eh,16h,0Eh,6,'=5-%',1Dh,15h,0Dh,5,1Ch,14h,0Ch,4
.data?
hInstance		dd ?