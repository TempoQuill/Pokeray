	dw TODBRUSH ; 336

	db 110, 105,  60,  80,  75,  30
	;   hp  atk  def  spd  sat  sdf

	db GROUND, FIRE ; type
	db 128 ; catch rate
	db 219 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 49 ; step cycles to hatch
INCBIN "gfx/pokemon/todbrush/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROLLOUT, ROAR, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, ENDURE, FRUSTRATION, IRON_TAIL, DRAGONBREATH, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, FIRE_BLAST, REST, ATTRACT, THIEF, CUT
	; end
