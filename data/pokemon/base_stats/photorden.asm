	dw PHOTORDEN

	db 124,  47, 246,  85, 119,  13
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 126 ; catch rate
	db 214 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 216 ; step cycles to hatch
	db 5 ; unknown 2
INCBIN "gfx/pokemon/photorden/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	tmhm CUT, FLASH