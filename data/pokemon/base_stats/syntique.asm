	dw SYNTIQUE ; 258

	db 100,  45, 100,  75,  90,  15
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 139 ; catch rate
	db 195 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 196 ; step cycles to hatch
INCBIN "gfx/pokemon/syntique/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm CUT, FLASH
	; end
