MOV AL, ' '					; Set to nonbreaking space
mov DS, 0b800h				; Set DS to the video memory segment

mov SI, 0					; initialize
loop:
	mov b[DS:SI], AL		; using byte offsets, in the video memory segmet, offset of value si by label/offset of byte then put al in there

add SI, 2					; itterate
cmd SI, 4000				; comparison
jg loop						; jump if greater

INT 020
