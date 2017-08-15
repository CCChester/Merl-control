.word 0x10000002;;cookie
.word 0x000000d4;;length
.word 0x00000064;;clen
.word 0x00001814
.word 0x0000005c;;ESR,10 abc,because it is import, so go to where is export.So we have ESD 10 abc. 3e000..8
.word 0xafdffffc
.word 0x0000f814
.word 0x00000058;find ESR 1c def, then we find ESD c def in merl2, then find 00...c 14, then 
                ;go 000..14 0.
.word 0x8fff0000
.word 0x8fff0000
.word 0x8fff0000
.word 0x03dff022
.word 0x00600009
.word 0x0000f814
.word 0x00000058;;same beacuse ESR 38 def, find ESD c def, go 0000..c 14, then go 0..0014.
.word 0x8fff0000
.word 0x8fff0000
.word 0x8fff0000
.word 0x03dff020
.word 0x8fdffffc
.word 0x03e00008
.word 0x00000004;;merl1 done
.word 0x00000060;;merl2,decide late,REL c,
                ;;since 22*4 = 88, then 88(base 10) to decimal is 58.[this is 0000c adress].
                ;since 88 we have before, then 88+8(beacuse 2 lines after 000..c, then 96.
                ;convert from 96 to decimal is 60.
.word 0x03e00008;(24-4)[because from 0-4-8-12],so 23*4 = 92(base 10), and then convert to decimal,it is 5c.
.word 0x00000054;
.word 0x00000001
.word 0x0000001c
.word 0x00000001	
.word 0x00000010
.word 0x00000001	
.word 0x00000038
.word 0x00000001;ESD		
.word 0x00000058;ESR 38 def
.word 0x00000001;?	
.word 0x00000060;

;;ESD 54 ghi,at merl1(last line)	
.word 0x00000005;ESD	
.word 0x00000054
.word 0x00000003;;beacuse it is ESD,and length of symbol name
.word 0x00000067;g
.word 0x00000068;h
.word 0x00000069;i

;ESD c def, at merl2
.word 0x00000005;ESD
.word 0x00000058
.word 0x00000003;;the length of symbol name
.word 0x00000064;d
.word 0x00000065;e
.word 0x00000066;f

;ESD 10 abc
.word 0x00000005;ESD	
.word 0x0000005c
.word 0x00000003;;the length of symbol name
.word 0x00000061;a
.word 0x00000062;b
.word 0x00000063;c
