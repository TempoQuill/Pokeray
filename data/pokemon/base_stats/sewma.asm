	dw SEWMA

	db  64,  55,  55,  60,  85,  85
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, ROCK ; type
	db 100 ; catch rate
	db 80 ; base exp
	db NEEDLE, NEEDLE ; items
	db GENDER_F100 ; gender ratio
	db 30 ; step cycles to hatch
INCBIN "gfx/pokemon/sewma/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, ZAP_CANNON, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, FRUSTRATION, SOLARBEAM, IRON_TAIL, THUNDER, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SANDSTORM, FIRE_BLAST, SWIFT, DETECT, REST, ATTRACT, NIGHTMARE, FLASH
	; end
