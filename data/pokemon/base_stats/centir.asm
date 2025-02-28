	dw CENTIR ; 044

	db 100, 130, 100,  70, 130,  70
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 3 ; catch rate
	db 220 ; base exp
	db BERSERK_GENE, BERSERK_GENE ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; step cycles to hatch
IF DEF(_RAY)
	INCBIN "gfx/pokemon/centir/front_gold.dimensions"
ELIF DEF(_SHADE)
	INCBIN "gfx/pokemon/centir/front_silver.dimensions"
ENDC
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, ROCK_SMASH, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, SNORE, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, GIGA_DRAIN, ENDURE, FRUSTRATION, SOLARBEAM, DRAGONBREATH, THUNDER, EARTHQUAKE, DIG, PSYCHIC, SHADOW_BALL, MUD_SLAP, ICE_PUNCH, SWAGGER, SLEEP_TALK, FIRE_BLAST, SWIFT, THUNDERPUNCH, DREAM_EATER, DETECT, REST, THIEF, FIRE_PUNCH, NIGHTMARE, STRENGTH
	; end