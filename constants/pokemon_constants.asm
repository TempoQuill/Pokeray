; pokemon ids
; indexes for:
; - PokemonNames (see data/pokemon/names.asm)
; - BaseData (see data/pokemon/base_stats.asm)
; - EvosAttacksPointers (see data/pokemon/evos_attacks_pointers.asm)
; - EggMovePointers (see data/pokemon/egg_move_pointers.asm)
; - PokemonCries (see data/pokemon/cries.asm)
; - MonMenuIcons (see data/pokemon/menu_icons.asm)
; - PokemonPicPointers (see data/pokemon/pic_pointers.asm)
; - PokemonPalettes (see data/pokemon/palettes.asm)
; - PokedexDataPointerTable (see data/pokemon/dex_entry_pointers.asm)
; - AlphabeticalPokedexOrder (see data/pokemon/dex_order_alpha.asm)
; - NewPokedexOrder (see data/pokemon/dex_order_new.asm)
	const_def 1
	const BULBASAUR  ; 01
	const IVYSAUR    ; 02
	const VENUSAUR   ; 03
	const CHARMANDER ; 04
	const CHARMELEON ; 05
	const CHARIZARD  ; 06
	const SQUIRTLE   ; 07
	const WARTORTLE  ; 08
	const BLASTOISE  ; 09
	const CATERPIE   ; 0a
	const METAPOD    ; 0b
	const BUTTERFREE ; 0c
	const WEEDLE     ; 0d
	const KAKUNA     ; 0e
	const BEEDRILL   ; 0f
	const PIDGEY     ; 10
	const PIDGEOTTO  ; 11
	const PIDGEOT    ; 12
	const RATTATA    ; 13
	const RATICATE   ; 14
	const SPEAROW    ; 15
	const FEAROW     ; 16
	const EKANS      ; 17
	const ARBOK      ; 18
	const PIKACHU    ; 19
	const RAICHU     ; 1a
	const SANDSHREW  ; 1b
	const SANDSLASH  ; 1c
	const NIDORAN_F  ; 1d
	const NIDORINA   ; 1e
	const NIDOQUEEN  ; 1f
	const NIDORAN_M  ; 20
	const NIDORINO   ; 21
	const NIDOKING   ; 22
	const CLEFAIRY   ; 23
	const CLEFABLE   ; 24
	const VULPIX     ; 25
	const NINETALES  ; 26
	const JIGGLYPUFF ; 27
	const WIGGLYTUFF ; 28
	const ZUBAT      ; 29
	const GOLBAT     ; 2a
	const ODDISH     ; 2b
	const GLOOM      ; 2c
	const VILEPLUME  ; 2d
	const PARAS      ; 2e
	const PARASECT   ; 2f
	const VENONAT    ; 30
	const VENOMOTH   ; 31
	const DIGLETT    ; 32
	const DUGTRIO    ; 33
	const MEOWTH     ; 34
	const PERSIAN    ; 35
	const PSYDUCK    ; 36
	const GOLDUCK    ; 37
	const MANKEY     ; 38
	const PRIMEAPE   ; 39
	const GROWLITHE  ; 3a
	const ARCANINE   ; 3b
	const POLIWAG    ; 3c
	const POLIWHIRL  ; 3d
	const POLIWRATH  ; 3e
	const ABRA       ; 3f
	const KADABRA    ; 40
	const ALAKAZAM   ; 41
	const MACHOP     ; 42
	const MACHOKE    ; 43
	const MACHAMP    ; 44
	const BELLSPROUT ; 45
	const WEEPINBELL ; 46
	const VICTREEBEL ; 47
	const TENTACOOL  ; 48
	const TENTACRUEL ; 49
	const GEODUDE    ; 4a
	const GRAVELER   ; 4b
	const GOLEM      ; 4c
	const PONYTA     ; 4d
	const RAPIDASH   ; 4e
	const SLOWPOKE   ; 4f
	const SLOWBRO    ; 50
	const MAGNEMITE  ; 51
	const MAGNETON   ; 52
	const FARFETCH_D ; 53
	const DODUO      ; 54
	const DODRIO     ; 55
	const SEEL       ; 56
	const DEWGONG    ; 57
	const GRIMER     ; 58
	const MUK        ; 59
	const SHELLDER   ; 5a
	const CLOYSTER   ; 5b
	const GASTLY     ; 5c
	const HAUNTER    ; 5d
	const GENGAR     ; 5e
	const ONIX       ; 5f
	const DROWZEE    ; 60
	const HYPNO      ; 61
	const KRABBY     ; 62
	const KINGLER    ; 63
	const VOLTORB    ; 64
	const ELECTRODE  ; 65
	const EXEGGCUTE  ; 66
	const EXEGGUTOR  ; 67
	const CUBONE     ; 68
	const MAROWAK    ; 69
	const HITMONLEE  ; 6a
	const HITMONCHAN ; 6b
	const LICKITUNG  ; 6c
	const KOFFING    ; 6d
	const WEEZING    ; 6e
	const RHYHORN    ; 6f
	const RHYDON     ; 70
	const CHANSEY    ; 71
	const TANGELA    ; 72
	const KANGASKHAN ; 73
	const HORSEA     ; 74
	const SEADRA     ; 75
	const GOLDEEN    ; 76
	const SEAKING    ; 77
	const STARYU     ; 78
	const STARMIE    ; 79
	const MR__MIME   ; 7a
	const SCYTHER    ; 7b
	const JYNX       ; 7c
	const ELECTABUZZ ; 7d
	const MAGMAR     ; 7e
	const PINSIR     ; 7f
	const TAUROS     ; 80
	const MAGIKARP   ; 81
	const GYARADOS   ; 82
	const LAPRAS     ; 83
	const DITTO      ; 84
	const EEVEE      ; 85
	const VAPOREON   ; 86
	const JOLTEON    ; 87
	const FLAREON    ; 88
	const PORYGON    ; 89
	const OMANYTE    ; 8a
	const OMASTAR    ; 8b
	const KABUTO     ; 8c
	const KABUTOPS   ; 8d
	const AERODACTYL ; 8e
	const SNORLAX    ; 8f
	const ARTICUNO   ; 90
	const ZAPDOS     ; 91
	const MOLTRES    ; 92
	const DRATINI    ; 93
	const DRAGONAIR  ; 94
	const DRAGONITE  ; 95
	const MEWTWO     ; 96
	const MEW        ; 97
JOHTO_POKEMON EQU const_value
	const CHIKORITA  ; 98
	const BAYLEEF    ; 99
	const MEGANIUM   ; 9a
	const CYNDAQUIL  ; 9b
	const QUILAVA    ; 9c
	const TYPHLOSION ; 9d
	const TOTODILE   ; 9e
	const CROCONAW   ; 9f
	const FERALIGATR ; a0
	const SENTRET    ; a1
	const FURRET     ; a2
	const HOOTHOOT   ; a3
	const NOCTOWL    ; a4
	const LEDYBA     ; a5
	const LEDIAN     ; a6
	const SPINARAK   ; a7
	const ARIADOS    ; a8
	const CROBAT     ; a9
	const CHINCHOU   ; aa
	const LANTURN    ; ab
	const PICHU      ; ac
	const CLEFFA     ; ad
	const IGGLYBUFF  ; ae
	const TOGEPI     ; af
	const TOGETIC    ; b0
	const NATU       ; b1
	const XATU       ; b2
	const MAREEP     ; b3
	const FLAAFFY    ; b4
	const AMPHAROS   ; b5
	const BELLOSSOM  ; b6
	const MARILL     ; b7
	const AZUMARILL  ; b8
	const SUDOWOODO  ; b9
	const POLITOED   ; ba
	const HOPPIP     ; bb
	const SKIPLOOM   ; bc
	const JUMPLUFF   ; bd
	const AIPOM      ; be
	const SUNKERN    ; bf
	const SUNFLORA   ; c0
	const YANMA      ; c1
	const WOOPER     ; c2
	const QUAGSIRE   ; c3
	const ESPEON     ; c4
	const UMBREON    ; c5
	const MURKROW    ; c6
	const SLOWKING   ; c7
	const MISDREAVUS ; c8
	const UNOWN      ; c9
	const WOBBUFFET  ; ca
	const GIRAFARIG  ; cb
	const PINECO     ; cc
	const FORRETRESS ; cd
	const DUNSPARCE  ; ce
	const GLIGAR     ; cf
	const STEELIX    ; d0
	const SNUBBULL   ; d1
	const GRANBULL   ; d2
	const QWILFISH   ; d3
	const SCIZOR     ; d4
	const SHUCKLE    ; d5
	const HERACROSS  ; d6
	const SNEASEL    ; d7
	const TEDDIURSA  ; d8
	const URSARING   ; d9
	const SLUGMA     ; da
	const MAGCARGO   ; db
	const SWINUB     ; dc
	const PILOSWINE  ; dd
	const CORSOLA    ; de
	const REMORAID   ; df
	const OCTILLERY  ; e0
	const DELIBIRD   ; e1
	const MANTINE    ; e2
	const SKARMORY   ; e3
	const HOUNDOUR   ; e4
	const HOUNDOOM   ; e5
	const KINGDRA    ; e6
	const PHANPY     ; e7
	const DONPHAN    ; e8
	const PORYGON2   ; e9
	const STANTLER   ; ea
	const SMEARGLE   ; eb
	const TYROGUE    ; ec
	const HITMONTOP  ; ed
	const SMOOCHUM   ; ee
	const ELEKID     ; ef
	const MAGBY      ; f0
	const MILTANK    ; f1
	const BLISSEY    ; f2
	const RAIKOU     ; f3
	const ENTEI      ; f4
	const SUICUNE    ; f5
	const LARVITAR   ; f6
	const PUPITAR    ; f7
	const TYRANITAR  ; f8
	const LUGIA      ; f9
	const HO_OH      ; fa
	const CELEBI     ; fb
NEW_MONS EQU const_value

NUM_POKEMON     EQU $fb + $85
NUM_DEF_POKEMON EQU $185
EGG             EQU $fffd ; -3
PAST_MONS       EQU 0
EQUINTO_MONS    EQU 1

; new mons
	const_next $101
	const ORKID      ; 101
	const SYNTIQUE   ; 102
	const PHOTORDEN  ; 103
	const FLAMBEAR   ; 104 ; TSK
	const VOLBEAR    ; 105 ; TSK
	const DYNABEAR   ; 106 ; TSK
	const CRUZ       ; 107 ; TSK
	const AQUACENT   ; 108
	const AQUARIA    ; 109 ; TSK
	const CROVEN     ; 10a
	const ASTROVEN   ; 10b
	const NOCTGLIDE  ; 10c
	const SNOBURI    ; 10d
	const SNOBUSTER  ; 10e
	const ARBUGS     ; 10f
	const WILLOFUDD  ; 110
	const TRIFOX     ; 111 ; TSK
	const BURGELA    ; 112 ; nob
	const TENTACRIME ; 113
	const NUMPUFF    ; 114 ; TSK
	const MIGHTALEX  ; 115
	const QUAGAMI    ; 116
	const QUAILTER   ; 117
	const STAFFBIRD  ; 118
	const ORSCHUL    ; 119
	const MOUNDIVER  ; 11a
	const MOLAMBINO  ; 11b ; nob
	const ANGORE     ; 11c ; nob
	const GROTESS    ; 11d ; TSK
	const SAILWING   ; 11e ; nob
	const PARABUD    ; 11f
	const TIERACNID  ; 120
	const METABEAK   ; 121
	const CRANEST    ; 122
	const LYKWYSE    ; 123 ; TSK
	const DODAERIE   ; 124 ; nob
	const SUNTHESIA  ; 125
	const TOUFENSE   ; 126
	const SIAMAIS    ; 127
	const RAKUKI     ; 128
	const COINTEN    ; 129
	const GATOLL     ; 12a
	const BELLBOYANT ; 12b ; TSK
	const STARELLO   ; 12c
	const LIODEW     ; 12d
	const UNILIGHT   ; 12e
	const ALIDUSK    ; 12f
	const LEDIURY    ; 130
	const FOLICORN   ; 131
	const WHISPEON   ; 132
	const ASSEMBLEON ; 133
	const TURBANN    ; 134 ; TSK
	const SMUJJ      ; 135 ; nob
	const DRAGONISCE ; 136
	const KICLOUD    ; 137
	const TIRUFF     ; 138
	const APPUCK     ; 139
	const ALREM      ; 13a
	const MURPHELT   ; 13b
	const TIARANT    ; 13c
	const SILVEALTH  ; 13d
	const SEARCHLE   ; 13e
	const BELMITT    ; 13f ; TSK
	const MILCALF    ; 140
	const BOMOCA     ; 141
	const DELFLAP    ; 142
	const KOTORA     ; 143 ; TSK
	const RAITORA    ; 144 ; TSK
	const MADAME     ; 145 ; TSK
	const KURSTRAW   ; 146 ; TSK
	const PANGSHI    ; 147 ; TSK
	const SCAFAROW   ; 148
	const RECLINAX   ; 149
	const MOSCARF    ; 14a
	const FLIDER     ; 14b
	const PLUX       ; 14c ; TSK
	const HOUNDREAD  ; 14d
	const WOLFMAN    ; 14e ; TSK
	const WARWOLF    ; 14f ; TSK
	const PORYSPHIA  ; 150
	const RAVERMIN   ; 151
	const FOSSLIX    ; 152
	const MAGNEVEN   ; 153
	const DONKRANK   ; 154
	const CHOAKING   ; 155
	const SANDSCOUR  ; 156
	const TEAROW     ; 157
	const NOHTYP     ; 158
	const VENOKNIGHT ; 159
	const DUGQUINTET ; 15a
	const EMPEDUCK   ; 15b
	const ALPHAPE    ; 15c
	const PINCHLER   ; 15d
	const POUCHENT   ; 15e
	const OMANOVA    ; 15f
	const KABOULDER  ; 160
	const COATRET    ; 161
	const SHUVEL     ; 162
	const COAZIGOAST ; 163
	const WINDKITT   ; 164
	const TODBRUSH   ; 165
	const SEWMA      ; 166
	const ANIMADISE  ; 167
	const MARLOON    ; 168
	const ASSISDRA   ; 169
	const SCOOTEN    ; 16a
	const SWEOTE     ; 16b
	const GRIFLET    ; 16c
	const CIRRIFFON  ; 16d
	const COSMOREAS  ; 16e
	const LAROON     ; 16f
	const CADITIN    ; 170
	const CHRYSALTY  ; 171
	const DRYTHON    ; 172
	const ANTLOG     ; 173
	const KOALIMB    ; 174
	const GLABBIT    ; 175
	const HIGHPO     ; 176
	const CYCORPION  ; 177
	const GUARNID    ; 178
	const SQUIDRILL  ; 179
	const PARROBRASS ; 17a
	const FLINJA     ; 17b
	const SHELLAPTOR ; 17c
	const GOBELDORL  ; 17d
	const CENTIR     ; 17e
	const DRISCORINA ; 17f
	const ARLURRY    ; 180
	const MAGENZA    ; 181
	const ILLUSIRO   ; 182
	const HELICELIA  ; 183
	const SELENUMIA  ; 184
	const PARBELL    ; 185

; Unown forms
; indexes for:
; - UnownWords (see data/pokemon/unown_words.asm)
; - UnownPicPointers (see data/pokemon/unown_pic_pointers.asm)
	const_def 1
	const UNOWN_A ;  1
	const UNOWN_B ;  2
	const UNOWN_C ;  3
	const UNOWN_D ;  4
	const UNOWN_E ;  5
	const UNOWN_F ;  6
	const UNOWN_G ;  7
	const UNOWN_H ;  8
	const UNOWN_I ;  9
	const UNOWN_J ; 10
	const UNOWN_K ; 11
	const UNOWN_L ; 12
	const UNOWN_M ; 13
	const UNOWN_N ; 14
	const UNOWN_O ; 15
	const UNOWN_P ; 16
	const UNOWN_Q ; 17
	const UNOWN_R ; 18
	const UNOWN_S ; 19
	const UNOWN_T ; 20
	const UNOWN_U ; 21
	const UNOWN_V ; 22
	const UNOWN_W ; 23
	const UNOWN_X ; 24
	const UNOWN_Y ; 25
NUM_UNOWN EQU const_value ; 26
	const UNOWN_Z ; 26
