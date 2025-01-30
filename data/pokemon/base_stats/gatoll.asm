	dw GATOLL ; 281

	db  70,  20,  85,  65,  45,  65
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 102 ; catch rate
	db 36 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/gatoll/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SNORE, FRUSTRATION, IRON_TAIL, DRAGONBREATH, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, DREAM_EATER, DETECT, REST, ATTRACT, THEIF, NIGHTMARE, FLASH
	; end
