rating: MACRO
; count, sfx, text
	dw \1, \2, \3
ENDM

LarchRatings:
; if you caught at most this many, play this sound, load this text
; (text is defined in engine/events/prof_oaks_pc.asm)
	rating  21, SFX_FAIL,                     LarchRating01
	rating  43, SFX_FAIL,                     LarchRating02
	rating  64, SFX_MEDICINE,                 LarchRating03
	rating  85, SFX_MEDICINE,                 LarchRating04
	rating 106, SFX_ITEM,                     LarchRating05
	rating 127, SFX_ITEM,                     LarchRating06
	rating 149, SFX_DEX_REWARD,               LarchRating07
	rating 170, SFX_DEX_REWARD,               LarchRating08
	rating 191, SFX_KEY_ITEM,                 LarchRating09
	rating 212, SFX_KEY_ITEM,                 LarchRating10
	rating 233, SFX_GAME_CORNER_WIN,          LarchRating11
	rating 255, SFX_GAME_CORNER_WIN,          LarchRating12
	rating 276, SFX_1ST_PLACE,                LarchRating13
	rating 297, SFX_1ST_PLACE,                LarchRating14
	rating 318, SFX_ASSEMBLED_MON,            LarchRating15
	rating 339, SFX_ASSEMBLED_MON,            LarchRating16
	rating 361, SFX_COMPLETED_DEX,            LarchRating17
	rating 382, SFX_COMPLETED_DEX,            LarchRating18
	rating 511, SFX_COMPLETED_DEX,            LarchRating19
