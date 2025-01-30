	dw TRIFOX ; 268

	db  31,  34,  33,  54,  42,  54
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 255 ; catch rate
	db 22 ; base exp
	db SPICY_BERRY, SPICY_BERRY ; items
	db GENDER_F75 ; gender ratio
	db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/trifox/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, SNORE, FRUSTRATION, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, SWIFT, REST, ATTRACT
	; end
