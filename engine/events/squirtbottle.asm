_Squirtbottle:
	ld hl, .SquirtbottleScript
	call QueueScript
	ld a, $1
	ld [wItemEffectSucceeded], a
	ret

.SquirtbottleScript:
	reloadmappart
	special UpdateTimePals
	callasm .CheckCanUseSquirtbottle
	iffalse .SquirtbottleNothingScript
	farsjump WateredWeirdTreeScript

.SquirtbottleNothingScript:
	jumptext .SquirtbottleNothingText

.SquirtbottleNothingText:
	text_far _SquirtbottleNothingText
	text_end

.CheckCanUseSquirtbottle:
	farcall GetFacingObject
	jr c, .nope

	ld a, d
	cp SPRITEMOVEDATA_SUDOWOODO
	jr nz, .nope

	ld a, 1
	ld [wScriptVar], a
	ret

.nope
	xor a
	ld [wScriptVar], a
	ret
