wild: MACRO
	db \1 ; level
	dw \2 ; species
ENDM

wild_encounter: MACRO
	db \1 percent, \1 percent, \1 percent ; rates: morn/day/nite
ENDM

EquintoGrassWildMons:

	map_id ROUTE_49
	wild_encounter 10 ; encounter rate
	; morning
	wild 2, PIDGEY
	wild 2, SPEAROW
	wild 2, SENTRET
	wild 2, LEDYBA
	wild 5, CLEFFA
	wild 5, IGGLYBUFF
	wild 2, SEWMA
	; day
	wild 2, PIDGEY
	wild 2, SPEAROW
	wild 2, RATTATA
	wild 2, SENTRET
	wild 2, CATERPIE
	wild 3, SCOOTEN
	wild 5, SWEOTE
	; nite
	wild 2, HOOTHOOT
	wild 2, CROVEN
	wild 2, SPINARAK
	wild 5, CLEFFA
	wild 5, IGGLYBUFF
	wild 5, PICHU
	wild 5, SEWMA

	map_id ROUTE 50
	wild_encounter 10 ; encounter rate
	; morning
	wild 3, SCYTHER
	wild 3, SPEAROW
	wild 3, SENTRET
	wild 3, LEDYBA
	wild 5, CLEFFA
	wild 5, IGGLYBUFF
	wild 3, COAZIGOAST
	; day
	wild 3, PINSIR
	wild 3, SPEAROW
	wild 3, RATTATA
	wild 3, SENTRET
	wild 3, CATERPIE
	wild 4, RATTATA
	wild 5, PICHU
	; nite
	wild 3, HOOTHOOT
	wild 3, CROVEN
	wild 3, RATTATA
	wild 5, CLEFFA
	wild 5, PINSIR
	wild 5, SCYTHER
	wild 5, PICHU

	map_id ROUTE 51
	wild_encounter 10 ; encounter rate
	; morning
	wild 4, PIDGEY
	wild 4, SPEAROW
	wild 4, SENTRET
	wild 4, LEDYBA
	wild 5, CLEFFA
	wild 5, IGGLYBUFF
	wild 4, WINDKITT
	; day
	wild 4, PIDGEY
	wild 4, SPEAROW
	wild 4, RATTATA
	wild 4, SENTRET
	wild 4, WEEDLE
	wild 5, RATTATA
	wild 5, PICHU
	; nite
	wild 4, HOOTHOOT
	wild 4, CROVEN
	wild 4, RATTATA
	wild 5, CLEFFA
	wild 5, IGGLYBUFF
	wild 5, PICHU
	wild 5, RUFFY

	map_id MT_VACUUM
	wild_encounter 10 ; encounter rate
	; morning
	wild 4, GEODUDE
	wild 4, ZUBAT
	wild 5, DUNSPARCE
	wild 6, DRYTHON
	wild 6, DUNSPARCE
	wild 7, FOSSLIX
	wild 5, GASTLY
	; day
	wild 4, GEODUDE
	wild 4, ZUBAT
	wild 5, DUNSPARCE
	wild 6, DRYTHON
	wild 6, DUNSPARCE
	wild 7, FOSSLIX
	wild 5, GASTLY
	; nite
	wild 4, GEODUDE
	wild 4, ZUBAT
	wild 5, DUNSPARCE
	wild 6, DRYTHON
	wild 6, DUNSPARCE
	wild 7, FOSSLIX
	wild 5, GASTLY

	map_id ROUTE 52
	wild_encounter 10 ; encounter rate
	; morning
	wild 6, BELLSPROUT
	wild 6, WINDKITT
	wild 6, PICHU
	wild 7, MACHOP
	wild 7, RUFFY
	wild 7, IGGLYBUFF
	wild 8, MACHOP
	; day
	wild 6, BELLSPROUT
	wild 6, WINDKITT
	wild 6, PICHU
	wild 7, MACHOP
	wild 7, IGGLYBUFF
	wild 7, RATTATA
	wild 8, MACHOP
	; nite
	wild 6, HOOTHOOT
	wild 6, CROVEN
	wild 6, PICHU
	wild 7, RUFFY
	wild 7, CLEFFA
	wild 7, SPINARAK
	wild 8, RUFFY

	map_id ROUTE 53
	wild_encounter 10 ; encounter rate
	; morning
	wild 6, BELLSPROUT
	wild 6, PINSIR
	wild 6, MACHOP
	wild 7, FARFETCH_D
	wild 7, BURGELA
	wild 7, SENTRET
	wild 8, SENTRET
	; day
	wild 6, SCYTHER
	wild 6, PINECO
	wild 6, MACHOP
	wild 7, NATU
	wild 7, SENTRET
	wild 7, LEDYBA
	wild 8, DONKRANK
	; nite
	wild 6, RAKUKI
	wild 6, KOFFING
	wild 6, SMUJJ
	wild 7, FARFETCH_D
	wild 7, CROVEN
	wild 7, HOOTHOOT
	wild 8, MARLOON
	db -1

	map_id ROUTE_54
	wild_encounter 10 ; encounter rate
	; morning
	wild 6, ABRA
	wild 6, PIDGEY
	wild 6, LEDYBA
	wild 7, ABRA
	wild 7, RUFFY
	wild 7, WINDKITT
	wild 8, ABRA
	; day
	wild 6, ABRA
	wild 6, PIDGEY
	wild 6, IGGLYBUFF
	wild 7, ABRA
	wild 7, RUFFY
	wild 7, WINDKITT
	wild 8, ABRA
	; nite
	wild 6, CROVEN
	wild 6, HOOTHOOT
	wild 6, DROWZEE
	wild 7, DROWZEE
	wild 7, CLEFFA
	wild 7, SPINARAK
	wild 8, PICHU
