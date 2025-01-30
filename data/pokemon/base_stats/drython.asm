	dw DRYTHON

	db  70,  65,  80,  50,  45,  60
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 110 ; catch rate
	db 215 ; base exp
	db NO_ITEM, POISON_BARB ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/drython/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, GIGA_DRAIN, ENDURE, FRUSTRATION, IRON_TAIL, RETURN, DIG, DOUBLE_TEAM, DEFENSE_CURL
	; end
