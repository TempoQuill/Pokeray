ProfOaksPC:
	ld hl, OakPCText1
	call MenuTextbox
	call YesNoBox
	jr c, .shutdown
	call ProfOaksPCBoot ; player chose "yes"?
.shutdown
	ld hl, OakPCText4
	call PrintText
	call JoyWaitAorB
	call ExitMenu
	ret

ProfOaksPCBoot:
	ld hl, OakPCText2
	call PrintText
	call Rate
	call PlaySFX ; sfx loaded by previous Rate function call
	call JoyWaitAorB
	call WaitSFX
	ret

ProfOaksPCRating:
	call Rate
	push de
	ld de, MUSIC_NONE
	call PlayMusic
	pop de
	call PlaySFX
	call JoyWaitAorB
	call WaitSFX
	ret

Rate:
; calculate Seen/Owned
	ld hl, wPokedexSeen
	ld b, wEndPokedexSeen - wPokedexSeen
	call CountSetBits
	ld [wceed], a
	ld hl, wPokedexCaught
	ld b, wEndPokedexCaught - wPokedexCaught
	call CountSetBits
	ld [wceee], a

; print appropriate rating
	call .UpdateRatingBuffers
	ld hl, OakPCText3
	call PrintText
	call JoyWaitAorB
	ld a, [wceee]
	ld c, a
	ld a, [wceee + 1]
	ld b, a
	ld hl, LarchRatings
	call FindLarchRating
	push de
	call PrintText
	pop de
	ret

.UpdateRatingBuffers:
	ld hl, wStringBuffer3
	ld de, wceed
	call .UpdateRatingBuffer
	ld hl, wStringBuffer4
	ld de, wceee
	call .UpdateRatingBuffer
	ret

.UpdateRatingBuffer:
	push hl
	ld a, "@"
	ld bc, ITEM_NAME_LENGTH
	call ByteFill
	pop hl
	lb bc, PRINTNUM_LEFTALIGN | 1, 3
	call PrintNum
	ret

FindLarchRating:
; return sound effect in de
; return text pointer in hl
	nop
;	ld c, a
.loop
	ld a, [hli]
	cp c
	ld a, [hli]
	cp b
	jr nc, .match
rept 4
	inc hl
endr
	jr .loop

.match
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret

INCLUDE "data/events/pokedex_ratings.asm"

OakPCText1:
	text_far _OakPCText1
	text_end

OakPCText2:
	text_far _OakPCText2
	text_end

OakPCText3:
	text_far _OakPCText3
	text_end

LarchRating01:
	text_far _LarchRating01
	text_end

LarchRating02:
	text_far _LarchRating02
	text_end

LarchRating03:
	text_far _LarchRating03
	text_end

LarchRating04:
	text_far _LarchRating04
	text_end

LarchRating05:
	text_far _LarchRating05
	text_end

LarchRating06:
	text_far _LarchRating06
	text_end

LarchRating07:
	text_far _LarchRating07
	text_end

LarchRating08:
	text_far _LarchRating08
	text_end

LarchRating09:
	text_far _LarchRating09
	text_end

LarchRating10:
	text_far _LarchRating10
	text_end

LarchRating11:
	text_far _LarchRating11
	text_end

LarchRating12:
	text_far _LarchRating12
	text_end

LarchRating13:
	text_far _LarchRating13
	text_end

LarchRating14:
	text_far _LarchRating14
	text_end

LarchRating15:
	text_far _LarchRating15
	text_end

LarchRating16:
	text_far _LarchRating16
	text_end

LarchRating17:
	text_far _LarchRating17
	text_end

LarchRating18:
	text_far _LarchRating18
	text_end

LarchRating19:
	text_far _LarchRating19
	text_end

OakPCText4:
	text_far _OakPCText4
	text_end
