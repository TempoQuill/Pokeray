	dw COAZIGOAST ; 334

	;    1,   1,   1,   1,     0
	db  70,  97,  97, 100,  45,  55
	;   hp  atk  def  spd  satk sdef

	db NORMAL, GHOST ; type
	db 255 ; catch rate
	db 50 ; base exp
	db AUX_BERRY, FILLINGBERRY ; items
	db GENDER_F100 ; gender ratio
	db 70 ; step cycles to hatch
INCBIN "gfx/pokemon/coazigoast/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROAR, PSYCH_UP, SUNNY_DAY, SWEET_SCENT, BLIZZARD, ICY_WIND, RAIN_DANCE. FRUSTRATION, THUNDER, DIG, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SWAGGER, DREAM_EATER, REST, ATTRACT, FLY, FLASH
	; end
