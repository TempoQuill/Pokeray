	dw WINDKITT ; 335

	db  75,  70,  40,  55,  50,  20
	;   hp  atk  def  spd  sat  sdf

	db GROUND, FIRE ; type
	db 167 ; catch rate
	db 168 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 49 ; step cycles to hatch
INCBIN "gfx/pokemon/windkitt/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROLLOUT, ROAR, HIDDEN_POWER, SUNNY_DAY, FRUSTRATION, IRON_TAIL, DRAGONBREATH, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, FIRE_BLAST, REST, ATTRACT, THIEF, CUT
	; end
