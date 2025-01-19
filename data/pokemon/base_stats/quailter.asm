	dw QUAILTER ; 195

	db  66,  22,  30,  39,  42,  44
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 200 ; catch rate
	db 35 ; base exp
	db NO_ITEM, SHARP_BEAK ; items
	db GENDER_F50 ; gender ratio
	db 5 ; step cycles to hatch
IF DEF(_RAY)
	INCBIN "gfx/pokemon/quailter/front_gold.dimensions"
ELIF DEF(_SHADE)
	INCBIN "gfx/pokemon/quailter/front_silver.dimensions"
ENDC
	db GROWTH_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm ROLLOUT, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, SNORE, ICY_WIND, RAIN_DANCE, FRUSTRATION, SOLARBEAM, RETURN, MUD_SLAP, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, SWIFT, DEFENSE_CURL, DETECT, REST, ATTRACT, STEEL_WING, FLY
	; end
