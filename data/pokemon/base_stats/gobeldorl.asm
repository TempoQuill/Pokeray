	dw GOBELDORL ; 044

	db 100,  90, 120,  60, 130, 100
	;   hp  atk  def  spd  sat  sdf

	db STEEL, STEEL ; type
	db 3 ; catch rate
	db 220 ; base exp
	db ROYAL_ROCK, ROYAL_ROCK ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; step cycles to hatch
IF DEF(_RAY)
	INCBIN "gfx/pokemon/gobeldorl/front_gold.dimensions"
ELIF DEF(_SHADE)
	INCBIN "gfx/pokemon/gobeldorl/front_silver.dimensions"
ENDC
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, ZAP_CANNON, ROCK_SMASH, PSYCH_UP, HIDDEN_POWER, SNORE, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, SOLARBEAM, DRAGONBREATH, THUNDER, EARTHQUAKE, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SWAGGER, FIRE_BLAST, SWIFT, DREAM_EATER, DETECT, REST, THIEF, NIGHTMARE, STRENGTH
	; end
