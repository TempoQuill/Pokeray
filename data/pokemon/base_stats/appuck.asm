	dw APPUCK

	db  60, 100,  80, 100,  45,  60
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GRASS ; type
	db 135 ; catch rate
	db 140 ; base exp
	db MIRACLE_SEED, MIRACLE_SEED ; items
	db GENDER_F100 ; gender ratio
	db 45 ; step cycles to hatch
INCBIN "gfx/pokemon/appuck/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ROLLOUT, ROCK_SMASH, HIDDEN_POWER, IRON_TAIL, EARTHQUAKE, DIG, MUD_SLAP, ATTRACT, STRENGTH
	; end
