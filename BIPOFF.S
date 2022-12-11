; Désactiver le bip clavier en assembleur sur Atari ST
; Par Vretrocomputing, 2022.

	move.l	#bipoff,-(sp)
	move.w	#$26,-(sp)	;Supexec
	trap	#14		;XBIOS
	addq.l	#6,sp

	clr.w	-(sp)		;Pterm0
	trap	#1		;GEMDOS

bipoff:
	bclr.b	#0,$484.w	;Désactiver le bip clavier
	rts
