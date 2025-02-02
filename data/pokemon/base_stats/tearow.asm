	dw TEAROW ; 022

	db  75, 105,  78, 120,  70,  70
	;   hp  atk  def  spd  sat  sdf

	db FLYING, FLYING ; type
	db 50 ; catch rate
	db 204 ; base exp
	db NO_ITEM, SHARP_BEAK ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
IF DEF(_RAY)
	INCBIN "gfx/pokemon/tearow/front_gold.dimensions"
ELIF DEF(_SHADE)
	INCBIN "gfx/pokemon/tearow/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, SNORE, HYPER_BEAM, PROTECT, ENDURE, FRUSTRATION, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, DETECT, REST, ATTRACT, THIEF, STEEL_WING, FLY
	; end
