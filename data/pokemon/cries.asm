mon_cry: MACRO
; index, pitch, length
	dw \1, \2, \3
ENDM

PokemonCries::
; entries correspond to constants/pokemon_constants.asm
	; kanto mons
	mon_cry CRY_GYAOON,       128,  129 ; BULBASAUR
	mon_cry CRY_GYAOON,        32,  256 ; IVYSAUR
	mon_cry CRY_GYAOON,         0,  320 ; VENUSAUR
	mon_cry CRY_RHYHORN,       96,  192 ; CHARMANDER
	mon_cry CRY_RHYHORN,       32,  192 ; CHARMELEON
	mon_cry CRY_RHYHORN,        0,  256 ; CHARIZARD
	mon_cry CRY_KARABATHEO,    96,  192 ; SQUIRTLE
	mon_cry CRY_KARABATHEO,    32,  192 ; WARTORTLE
	mon_cry CRY_BLASTOISE,      0,  256 ; BLASTOISE
	mon_cry CRY_SCYTHER,      128,  160 ; CATERPIE
	mon_cry CRY_GASTLY,       204,  129 ; METAPOD
	mon_cry CRY_SCYTHER,      119,  192 ; BUTTERFREE
	mon_cry CRY_ARCANINE,     238,  129 ; WEEDLE
	mon_cry CRY_BLASTOISE,    255,  129 ; KAKUNA
	mon_cry CRY_BLASTOISE,     96,  256 ; BEEDRILL
	mon_cry CRY_PIP,          223,  132 ; PIDGEY
	mon_cry CRY_PINSIR,        40,  320 ; PIDGEOTTO
	mon_cry CRY_PINSIR,        17,  383 ; PIDGEOT
	mon_cry CRY_RATTATA,        0,  256 ; RATTATA
	mon_cry CRY_RATTATA,       32,  383 ; RATICATE
	mon_cry CRY_SPEAROW,        0,  256 ; SPEAROW
	mon_cry CRY_SHELLDER,      64,  288 ; FEAROW
	mon_cry CRY_GYARADOS,      18,  192 ; EKANS
	mon_cry CRY_GYARADOS,     224,  144 ; ARBOK
	mon_cry CRY_GYAOON,       238,  129 ; PIKACHU
	mon_cry CRY_NIDOKING,     238,  136 ; RAICHU
	mon_cry CRY_NIDORAN_M,     32,  192 ; SANDSHREW
	mon_cry CRY_NIDORAN_M,    255,  383 ; SANDSLASH
	mon_cry CRY_NIDORAN_F,      0,  256 ; NIDORAN_F
	mon_cry CRY_NIDORAN_F,     44,  352 ; NIDORINA
	mon_cry CRY_NIDOQUEEN,      0,  256 ; NIDOQUEEN
	mon_cry CRY_NIDORAN_M,      0,  256 ; NIDORAN_M
	mon_cry CRY_NIDORAN_M,     44,  320 ; NIDORINO
	mon_cry CRY_NIDOKING,       0,  256 ; NIDOKING
	mon_cry CRY_CUBONE,       204,  129 ; CLEFAIRY
	mon_cry CRY_CUBONE,       170,  160 ; CLEFABLE
	mon_cry CRY_GRAVELER,      79,  144 ; VULPIX
	mon_cry CRY_GRAVELER,     136,  224 ; NINETALES
	mon_cry CRY_PIP,          255,  181 ; JIGGLYPUFF
	mon_cry CRY_PIP,          104,  224 ; WIGGLYTUFF
	mon_cry CRY_KARABATHEO,   224,  256 ; ZUBAT
	mon_cry CRY_KARABATHEO,   250,  256 ; GOLBAT
	mon_cry CRY_IVYSAUR_OLD,  221,  129 ; ODDISH
	mon_cry CRY_IVYSAUR_OLD,  170,  192 ; GLOOM
	mon_cry CRY_KINGSAURUS,    34,  383 ; VILEPLUME
	mon_cry CRY_STARMIE,       32,  352 ; PARAS
	mon_cry CRY_STARMIE,       66,  383 ; PARASECT
	mon_cry CRY_TENTACOOL,     68,  192 ; VENONAT
	mon_cry CRY_TENTACOOL,     41,  256 ; VENOMOTH
	mon_cry CRY_EXEGGCUTE,    170,  129 ; DIGLETT
	mon_cry CRY_EXEGGCUTE,     42,  144 ; DUGTRIO
	mon_cry CRY_CUBONE,       119,  144 ; MEOWTH
	mon_cry CRY_CUBONE,       153,  383 ; PERSIAN
	mon_cry CRY_36,            32,  224 ; PSYDUCK
	mon_cry CRY_36,           255,  192 ; GOLDUCK
	mon_cry CRY_NIDOQUEEN,    221,  224 ; MANKEY
	mon_cry CRY_NIDOQUEEN,    175,  192 ; PRIMEAPE
	mon_cry CRY_SLOWBRO,       32,  192 ; GROWLITHE
	mon_cry CRY_ARCANINE,       0,  256 ; ARCANINE
	mon_cry CRY_PIP,          255,  383 ; POLIWAG
	mon_cry CRY_PIP,          119,  224 ; POLIWHIRL
	mon_cry CRY_PIP,            0,  383 ; POLIWRATH
	mon_cry CRY_GASTLY,       192,  129 ; ABRA
	mon_cry CRY_GASTLY,       168,  320 ; KADABRA
	mon_cry CRY_GASTLY,       152,  383 ; ALAKAZAM
	mon_cry CRY_SLOWBRO,      238,  129 ; MACHOP
	mon_cry CRY_SLOWBRO,       72,  224 ; MACHOKE
	mon_cry CRY_SLOWBRO,        8,  320 ; MACHAMP
	mon_cry CRY_36,            85,  129 ; BELLSPROUT
	mon_cry CRY_PONYTA,        68,  160 ; WEEPINBELL
	mon_cry CRY_PONYTA,       102,  332 ; VICTREEBEL
	mon_cry CRY_TENTACOOL,      0,  256 ; TENTACOOL
	mon_cry CRY_TENTACOOL,    238,  383 ; TENTACRUEL
	mon_cry CRY_GRAVELER,     240,  144 ; GEODUDE
	mon_cry CRY_GRAVELER,       0,  256 ; GRAVELER
	mon_cry CRY_TANGELA,      224,  192 ; GOLEM
	mon_cry CRY_PONYTA,         0,  256 ; PONYTA
	mon_cry CRY_PONYTA,        32,  320 ; RAPIDASH
	mon_cry CRY_SLOWPOKE,       0,  256 ; SLOWPOKE
	mon_cry CRY_SLOWBRO,        0,  256 ; SLOWBRO
	mon_cry CRY_GASTLY,       128,  224 ; MAGNEMITE
	mon_cry CRY_GASTLY,        32,  320 ; MAGNETON
	mon_cry CRY_SPEAROW,      221,  129 ; FARFETCH_D
	mon_cry CRY_EXEGGCUTE,    187,  129 ; DODUO
	mon_cry CRY_EXEGGCUTE,    153,  160 ; DODRIO
	mon_cry CRY_LICKITUNG,    136,  320 ; SEEL
	mon_cry CRY_LICKITUNG,     35,  383 ; DEWGONG
	mon_cry CRY_GRIMER,         0,  256 ; GRIMER
	mon_cry CRY_GENGAR,       239,  383 ; MUK
	mon_cry CRY_SHELLDER,       0,  256 ; SHELLDER
	mon_cry CRY_SHELLDER,     111,  352 ; CLOYSTER
	mon_cry CRY_GASTLY,         0,  256 ; GASTLY
	mon_cry CRY_GASTLY,        48,  192 ; HAUNTER
	mon_cry CRY_GENGAR,         0,  383 ; GENGAR
	mon_cry CRY_GYARADOS,     255,  320 ; ONIX
	mon_cry CRY_EXEGGCUTOR,   136,  160 ; DROWZEE
	mon_cry CRY_EXEGGCUTOR,   238,  192 ; HYPNO
	mon_cry CRY_34,            32,  352 ; KRABBY
	mon_cry CRY_34,           238,  352 ; KINGLER
	mon_cry CRY_VOLTORB,      237,  256 ; VOLTORB
	mon_cry CRY_VOLTORB,      168,  272 ; ELECTRODE
	mon_cry CRY_EXEGGCUTE,      0,  256 ; EXEGGCUTE
	mon_cry CRY_EXEGGCUTOR,     0,  256 ; EXEGGUTOR
	mon_cry CRY_CUBONE,         0,  256 ; CUBONE
	mon_cry CRY_IVYSAUR_OLD,   79,  224 ; MAROWAK
	mon_cry CRY_TANGELA,      128,  320 ; HITMONLEE
	mon_cry CRY_LICKITUNG,    238,  320 ; HITMONCHAN
	mon_cry CRY_LICKITUNG,      0,  256 ; LICKITUNG
	mon_cry CRY_TANGELA,      230,  349 ; KOFFING
	mon_cry CRY_TANGELA,      255,  383 ; WEEZING
	mon_cry CRY_RHYHORN,        0,  256 ; RHYHORN
	mon_cry CRY_RHYDON,         0,  256 ; RHYDON
	mon_cry CRY_PINSIR,        10,  320 ; CHANSEY
	mon_cry CRY_TANGELA,        0,  256 ; TANGELA
	mon_cry CRY_KANGASKHAN,     0,  256 ; KANGASKHAN
	mon_cry CRY_CUBONE,       153,  144 ; HORSEA
	mon_cry CRY_CUBONE,        60,  129 ; SEADRA
	mon_cry CRY_SCYTHER,      128,  192 ; GOLDEEN
	mon_cry CRY_SCYTHER,       16,  383 ; SEAKING
	mon_cry CRY_STARMIE,        2,  160 ; STARYU
	mon_cry CRY_STARMIE,        0,  256 ; STARMIE
	mon_cry CRY_34,             8,  192 ; MR__MIME
	mon_cry CRY_SCYTHER,        0,  256 ; SCYTHER
	mon_cry CRY_EXEGGCUTOR,   255,  383 ; JYNX
	mon_cry CRY_VOLTORB,      143,  383 ; ELECTABUZZ
	mon_cry CRY_RHYHORN,      255,  176 ; MAGMAR
	mon_cry CRY_PINSIR,         0,  256 ; PINSIR
	mon_cry CRY_KARABATHEO,    17,  192 ; TAUROS
	mon_cry CRY_GYARADOS,     128,  128 ; MAGIKARP
	mon_cry CRY_GYARADOS,       0,  256 ; GYARADOS
	mon_cry CRY_LAPRAS,         0,  256 ; LAPRAS
	mon_cry CRY_PIP,          255,  383 ; DITTO
	mon_cry CRY_TENTACOOL,    136,  224 ; EEVEE
	mon_cry CRY_TENTACOOL,    170,  383 ; VAPOREON
	mon_cry CRY_TENTACOOL,     61,  256 ; JOLTEON
	mon_cry CRY_TENTACOOL,     16,  160 ; FLAREON
	mon_cry CRY_PONYTA,       170,  383 ; PORYGON
	mon_cry CRY_SLOWBRO,      240,  129 ; OMANYTE
	mon_cry CRY_SLOWBRO,      255,  192 ; OMASTAR
	mon_cry CRY_SCYTHER,      187,  192 ; KABUTO
	mon_cry CRY_SHELLDER,     238,  129 ; KABUTOPS
	mon_cry CRY_KINGSAURUS,    32,  368 ; AERODACTYL
	mon_cry CRY_GRIMER,        85,  129 ; SNORLAX
	mon_cry CRY_NIDOKING,     128,  192 ; ARTICUNO
	mon_cry CRY_SHELLDER,     255,  256 ; ZAPDOS
	mon_cry CRY_NIDOKING,     248,  192 ; MOLTRES
	mon_cry CRY_GYAOON,        96,  192 ; DRATINI
	mon_cry CRY_GYAOON,        64,  256 ; DRAGONAIR
	mon_cry CRY_GYAOON,        60,  320 ; DRAGONITE
	mon_cry CRY_STARMIE,      153,  383 ; MEWTWO
	mon_cry CRY_STARMIE,      238,  383 ; MEW
	; johto mons
	mon_cry CRY_CHIKORITA,    -16,  176 ; CHIKORITA
	mon_cry CRY_CHIKORITA,    -34,  288 ; BAYLEEF
	mon_cry CRY_CHIKORITA,   -183,  512 ; MEGANIUM
	mon_cry CRY_GROWL,        839,  128 ; CYNDAQUIL
	mon_cry CRY_GROWL,        801,  288 ; QUILAVA
	mon_cry CRY_LUGIA,       3840,  212 ; TYPHLOSION
	mon_cry CRY_ROAR_60,     1132,  232 ; TOTODILE
	mon_cry CRY_ROAR_60,     1088,  272 ; CROCONAW
	mon_cry CRY_ROAR_60,     1020,  384 ; FERALIGATR
	mon_cry CRY_PHANPY,       138,  184 ; SENTRET
	mon_cry CRY_PHANPY,       107,  258 ; FURRET
	mon_cry CRY_HOOTHOOT,     145,  216 ; HOOTHOOT
	mon_cry CRY_HOOTHOOT,       0,  416 ; NOCTOWL
	mon_cry CRY_LEDYBA,         0,  222 ; LEDYBA
	mon_cry CRY_LEDYBA,      -150,  312 ; LEDIAN
	mon_cry CRY_DERBLE_4,      17,  512 ; SPINARAK
	mon_cry CRY_DERBLE_4,    -174,  482 ; ARIADOS
	mon_cry CRY_KARABATHEO,   -16,  320 ; CROBAT
	mon_cry CRY_GROWL,        969,  320 ; CHINCHOU
	mon_cry CRY_GROWL,        720,  272 ; LANTURN
	mon_cry CRY_MOUSE,          0,  320 ; PICHU
	mon_cry CRY_COTTONCAT,     97,  145 ; CLEFFA
	mon_cry CRY_CHIKORITA,    232,  232 ; IGGLYBUFF
	mon_cry CRY_DERBLE_1,      16,  256 ; TOGEPI
	mon_cry CRY_DERBLE_2,      59,   56 ; TOGETIC
	mon_cry CRY_MADAME,      -103,  256 ; NATU
	mon_cry CRY_MADAME,      -167,  360 ; XATU
	mon_cry CRY_BLEET_1,       34,  216 ; MAREEP
	mon_cry CRY_BLEET_1,       -7,  384 ; FLAAFFY
	mon_cry CRY_ROAR_50,     -124,  232 ; AMPHAROS
	mon_cry CRY_COTTONCAT,    132,  336 ; BELLOSSOM
	mon_cry CRY_CROW,         283,  288 ; MARILL
	mon_cry CRY_CROW,         182,  384 ; AZUMARILL
	mon_cry CRY_COTTONCAT,   3904,  384 ; SUDOWOODO
	mon_cry CRY_COTTONCAT,   -675,  456 ; POLITOED
	mon_cry CRY_COTTONCAT,     59,  200 ; HOPPIP
	mon_cry CRY_COTTONCAT,     39,  312 ; SKIPLOOM
	mon_cry CRY_COTTONCAT,      0,  384 ; JUMPLUFF
	mon_cry CRY_HO_OH,        -81,  232 ; AIPOM
	mon_cry CRY_CROW,         299,  184 ; SUNKERN
	mon_cry CRY_ROAR_40,      -32,  384 ; SUNFLORA
	mon_cry CRY_ROAR_60,       49,  200 ; YANMA
	mon_cry CRY_SNEASEL,      147,  175 ; WOOPER
	mon_cry CRY_SNEASEL,     -198,  320 ; QUAGSIRE
	mon_cry CRY_HO_OH,        162,  320 ; ESPEON
	mon_cry CRY_TENTACOOL,   -233,  240 ; UMBREON
	mon_cry CRY_CROW,         -31,  384 ; MURKROW
	mon_cry CRY_SLOWKING,     260,  512 ; SLOWKING
	mon_cry CRY_HOOTHOOT,     304,  232 ; MISDREAVUS
	mon_cry CRY_HOOTHOOT,     354,  256 ; UNOWN
	mon_cry CRY_ROAR_50,      635,  324 ; WOBBUFFET
	mon_cry CRY_FELINE,        65,  512 ; GIRAFARIG
	mon_cry CRY_SLOWKING,     128,  256 ; PINECO
	mon_cry CRY_SLOWKING,       0,  384 ; FORRETRESS
	mon_cry CRY_GRANBULL,     452,  256 ; DUNSPARCE
	mon_cry CRY_MILTANK,     -258,  256 ; GLIGAR
	mon_cry CRY_LUGIA,        239,  247 ; STEELIX
	mon_cry CRY_GRANBULL,     274,  232 ; SNUBBULL
	mon_cry CRY_GRANBULL,       0,  384 ; GRANBULL
	mon_cry CRY_SLOWKING,     352,  224 ; QWILFISH
	mon_cry CRY_ROAR_50,        0,  352 ; SCIZOR
	mon_cry CRY_GRANBULL,     656,  168 ; SHUCKLE
	mon_cry CRY_ROAR_50,       53,  224 ; HERACROSS
	mon_cry CRY_SNEASEL,       83,  175 ; SNEASEL
	mon_cry CRY_ROAR_30,     1954,  110 ; TEDDIURSA
	mon_cry CRY_ROAR_30,     1600,  216 ; URSARING
	mon_cry CRY_HITMONTOP,   -472,  320 ; SLUGMA
	mon_cry CRY_SUICUNE,     -525,  448 ; MAGCARGO
	mon_cry CRY_GROWL,        510,  320 ; SWINUB
	mon_cry CRY_SUICUNE,     -265,  256 ; PILOSWINE
	mon_cry CRY_SUICUNE,      161,  232 ; CORSOLA
	mon_cry CRY_ROAR_40,       13,  256 ; REMORAID
	mon_cry CRY_ROAR_60,        0,  384 ; OCTILLERY
	mon_cry CRY_ROAR_30,        2,  106 ; DELIBIRD
	mon_cry CRY_MANTINE,     -190,  240 ; MANTINE
	mon_cry CRY_ROAR_50,     2217,  384 ; SKARMORY
	mon_cry CRY_GROWL,         57,  320 ; HOUNDOUR
	mon_cry CRY_ROAR_60,     -266,  256 ; HOUNDOOM
	mon_cry CRY_HITMONTOP,    763,  256 ; KINGDRA
	mon_cry CRY_PHANPY,        72,  560 ; PHANPY
	mon_cry CRY_DONPHAN,        0,  416 ; DONPHAN
	mon_cry CRY_FELINE,       115,  576 ; PORYGON2
	mon_cry CRY_HO_OH,       -352,  384 ; STANTLER
	mon_cry CRY_MOUSE,       -538,  496 ; SMEARGLE
	mon_cry CRY_HO_OH,         44,  264 ; TYROGUE
	mon_cry CRY_HITMONTOP,      0,  256 ; HITMONTOP
	mon_cry CRY_CROW,         104,  256 ; SMOOCHUM
	mon_cry CRY_ROAR_40,     -728,  180 ; ELEKID
	mon_cry CRY_ROAR_30,      374,   58 ; MAGBY
	mon_cry CRY_MILTANK,     -461,  416 ; MILTANK
	mon_cry CRY_SLOWKING,     659,  320 ; BLISSEY
	mon_cry CRY_TYRANITAR,    558,  288 ; RAIKOU
	mon_cry CRY_TIGER,          0,  416 ; ENTEI
	mon_cry CRY_SUICUNE,        0,  384 ; SUICUNE
	mon_cry CRY_TYRANITAR,     95,  208 ; LARVITAR
	mon_cry CRY_DERBLE_4,    -475,  336 ; PUPITAR
	mon_cry CRY_TYRANITAR,   -256,  384 ; TYRANITAR
	mon_cry CRY_LUGIA,          0,  256 ; LUGIA
	mon_cry CRY_HO_OH,          0,  384 ; HO_OH
	mon_cry CRY_TIGER,        330,  273 ; CELEBI
	mon_cry CRY_NIDORAN_M,      0,    0 ; 252
	mon_cry CRY_NIDORAN_M,      0,    0 ; 253
	mon_cry CRY_NIDORAN_M,      0,    0 ; 254
	mon_cry CRY_NIDORAN_M,      0,    0 ; 255
	mon_cry CRY_NIDORAN_M,      0,    0 ; 0
	; equinto mons
	mon_cry CRY_MILTANK,      112,   160 ; ORKID
	mon_cry CRY_MILTANK,       92,   192 ; SYNTIQUE
	mon_cry CRY_COTTONCAT,     19,   448 ; PHOTORDEN
	mon_cry CRY_ROAR_30,       28,     0 ; FLAMBEAR		; TSK
	mon_cry CRY_ROAR_30,     1767,   128 ; VOLBEAR		; TSK
	mon_cry CRY_LUGIA,       1835,   212 ; DYNABEAR		; TSK
	mon_cry CRY_36,           560,   203 ; CRUZ		; TSK
	mon_cry CRY_36,           487,   272 ; AQUACENT		; TSK
	mon_cry CRY_ROAR_60,      802,   349 ; AQUARIA		; TSK
	mon_cry CRY_SPEAROW,      300,    72 ; CROVEN
	mon_cry CRY_SPEAROW,      265,   387 ; ASTROVEN
	mon_cry CRY_HOOTHOOT,    1903,   616 ; NOCTGLIDE
	mon_cry CRY_YOSHI,       2040,   197 ; SNOBURI
	mon_cry CRY_YOSHI,       1925,   271 ; SNOBUSTER
	mon_cry CRY_RATTATA,      200,   420 ; ARBUGS
	mon_cry CRY_IVYSAUR_OLD,  344,   260 ; WILLOFUDD
	mon_cry CRY_GRAVELER,     160,   176 ; TRIFOX		; TSK
	mon_cry CRY_CROW,        1868,   272 ; BURGELA		; OVGG
	mon_cry CRY_EARTHTRON,   1537,   224 ; TENTACRIME
	mon_cry CRY_SLOWKING,    1998,   352 ; NUMPUFF		; OVGG
	mon_cry CRY_TYRANITAR,    144,   176 ; MIGHTALEX
	mon_cry CRY_SNEASEL,     1505,   465 ; QUAGAMI
	mon_cry CRY_DUGQUINTET,    32,   382 ; QUAILTER
	mon_cry CRY_DUGQUINTET,    10,   511 ; STAFFBIRD
	mon_cry CRY_SCYTHER,      137,   208 ; ORSCHUL		; TSK
	mon_cry CRY_TENTACOOL,     90,   232 ; MOUNDIVER
	mon_cry CRY_MANTINE,     1962,   234 ; MOLAMBINO	; TSK
	mon_cry CRY_COTTONCAT,   1546,   272 ; ANGORE
	mon_cry CRY_SLOWBRO,     1231,   373 ; GROTESS		; TSK
	mon_cry CRY_POUCHENT,     231,   192 ; SAILWING
	mon_cry CRY_STARMIE,       34,   251 ; PARABUD		; TSK
	mon_cry CRY_DERBLE_4,    1683,   452 ; TIERACNID
	mon_cry CRY_DERBLE_4,      47,   549 ; METABEAK
	mon_cry CRY_NIDOKING,      47,   341 ; CRANEST
	mon_cry CRY_PIP,          354,   288 ; LYKWYSE		; OVGG
	mon_cry CRY_EXEGGCUTE,    197,   226 ; DODAERIE		; TSK
	mon_cry CRY_SHELLDER,     232,   495 ; SUNTHESIA
	mon_cry CRY_TOUFENSE,      30,   304 ; TOUFENSE
	mon_cry CRY_FELINE,        48,   256 ; SIAMAIS		; GF
	mon_cry CRY_TIGER,        400,   196 ; RAKUKI
	mon_cry CRY_CUBONE,       140,   204 ; COINTEN		; TSK
	mon_cry CRY_COTTONCAT,     76,   320 ; GATOLL		; TSK
	mon_cry CRY_MILTANK,     2000,   533 ; BELLBOYANT	; TSK
	mon_cry CRY_STARMIE,     2046,   352 ; STARELLO
	mon_cry CRY_LICKITUNG,   1980,   446 ; LIODEW
	mon_cry CRY_MOUSE,       1984,   383 ; UNILIGHT
	mon_cry CRY_ASSISDRA,    2046,   160 ; ALIDUSK
	mon_cry CRY_LEDYBA,      1748,   402 ; LEDIURY
	mon_cry CRY_PONYTA,        32,   192 ; FOLICORN		; TSK
	mon_cry CRY_GASTLY,        16,    96 ; WHISPEON
	mon_cry CRY_KARABATHEO,   272,    96 ; ASSEMBLEON
	mon_cry CRY_SLOWKING,     198,   448 ; TURBANN		; TSK
	mon_cry CRY_GRIMER,       284,   185 ; SMUJJ		; TSK
	mon_cry CRY_TIGER,        287,   430 ; DRAGONISCE
	mon_cry CRY_KICLOUD,      208,   170 ; KICLOUD
	mon_cry CRY_SLOWBRO,       88,   192 ; TIRUFF		; TSK
	mon_cry CRY_APPUCK,         0,   256 ; APPUCK
	mon_cry CRY_EXEGGCUTOR,   340,   224 ; ALREM
	mon_cry CRY_MURPHELT,       0,   256 ; MURPHELT
	mon_cry CRY_POUCHENT,      82,   187 ; TIARANT
	mon_cry CRY_BLASTOISE,    360,   295 ; SILVEALTH
	mon_cry CRY_ANTLOG,       140,   195 ; SEARCHLE
	mon_cry CRY_SLOWKING,     572,   256 ; BELMITT		; GF
	mon_cry CRY_MILTANK,     1843,   342 ; MILCALF
	mon_cry CRY_ROAR_60,     1920,   251 ; BOMOCA		; TSK
	mon_cry CRY_YOSHI,       2024,   208 ; DELFLAP
	mon_cry CRY_MOUSE,       1908,   576 ; KOTORA		; TSK
	mon_cry CRY_LAPRAS,      1834,   289 ; RAITORA		; TSK
	mon_cry CRY_MADAME,         0,   256 ; MADAME		; GF
	mon_cry CRY_PHANPY,       214,   384 ; KURSTRAW		; TSK
	mon_cry CRY_TANGELA,      523,   384 ; PANGSHI		; TSK
	mon_cry CRY_DERBLE_4,    1968,   308 ; SCAFAROW
	mon_cry CRY_HITMONTOP,    556,   193 ; RECLINAX
	mon_cry CRY_MURPHELT,    1683,   336 ; MOSCARF
	mon_cry CRY_MURPHELT,    1427,   400 ; FLIDER
	mon_cry CRY_ROAR_50,      555,   336 ; PLUX		; GF
	mon_cry CRY_SLOWBRO,     1838,   211 ; HOUNDREAD
	mon_cry CRY_FELINE,        13,    96 ; WOLFMAN		; TSK
	mon_cry CRY_ROAR_30,      262,   192 ; WARWOLF		; TSK
	mon_cry CRY_BIG_YOSHI,   1320,   207 ; PORYSPHIA
	mon_cry CRY_RATTATA,       64,   510 ; RAVERMIN
	mon_cry CRY_FOSSLIX,        0,   256 ; FOSSLIX
	mon_cry CRY_DONPHAN,     1925,   443 ; MAGNEVEN
	mon_cry CRY_SLOWKING,     293,   423 ; DONKRANK
	mon_cry CRY_TANGELA,      280,   418 ; CHOAKING
	mon_cry CRY_MANTINE,       79,   234 ; SANDSCOUR
	mon_cry CRY_GYARADOS,     864,   192 ; TEAROW
	mon_cry CRY_GYARADOS,     430,    96 ; NOHTYP
	mon_cry CRY_TENTACOOL,     14,   320 ; VENOKNIGHT
	mon_cry CRY_DUGQUINTET,  2000,   384 ; DUGQUINTET
	mon_cry CRY_36,           478,   160 ; EMPEDUCK
	mon_cry CRY_NIDOQUEEN,    129,   160 ; ALPHAPE
	mon_cry CRY_34,           444,   352 ; PINCHLER
	mon_cry CRY_POUCHENT,    1856,   256 ; POUCHENT
	mon_cry CRY_SLOWBRO,      270,   255 ; OMANOVA
	mon_cry CRY_ASSISDRA,     144,   149 ; KABOULDER
	mon_cry CRY_PHANPY,        76,   332 ; COATRET
	mon_cry CRY_SUICUNE,     1992,   296 ; SHUVEL
	mon_cry CRY_COAZIGOAST,     0,   256 ; COAZIGOAST
	mon_cry CRY_SUICUNE,       82,   240 ; WINDKITT
	mon_cry CRY_GENGAR,       228,   383 ; TODBRUSH
	mon_cry CRY_ASSISDRA,    1927,   352 ; SEWMA
	mon_cry CRY_SPEAROW_OLD,  496,   280 ; ANIMADISE
	mon_cry CRY_SPEAROW_OLD,  336,   304 ; MARLOON
	mon_cry CRY_ASSISDRA,      19,   208 ; ASSISDRA
	mon_cry CRY_FOSSLIX,     1918,   146 ; SCOOTEN
	mon_cry CRY_CROW,          78,   439 ; SWEOTE
	mon_cry CRY_APPUCK,       147,   274 ; GRIFLET
	mon_cry CRY_GLABBIT,     2008,   208 ; CIRRIFFON
	mon_cry CRY_ROAR_50,     1857,   334 ; COSMOREAS
	mon_cry CRY_HO_OH,        188,   329 ; LAROON
	mon_cry CRY_EARTHTRON,   2032,   192 ; CADITIN
	mon_cry CRY_COAZIGOAST,  1715,   400 ; CHRYSALTY
	mon_cry CRY_ROAR_60,       71,   132 ; DRYTHON
	mon_cry CRY_ANTLOG,      1708,   243 ; ANTLOG
	mon_cry CRY_GRIMER,       460,   128 ; KOALIMB
	mon_cry CRY_GASTLY,      1307,   207 ; HIGHPO
	mon_cry CRY_GLABBIT,       72,   112 ; GLABBIT
	mon_cry CRY_36,           803,   320 ; CYCORPION
	mon_cry CRY_GUARNID,     1668,   272 ; GUARNID
	mon_cry CRY_GASTLY,      2024,   320 ; SQUIDRILL
	mon_cry CRY_COAZIGOAST,  1997,   230 ; PARROBRASS
	mon_cry CRY_GUARNID,     2028,   117 ; FLINJA
	mon_cry CRY_DRISCORINA,   531,   176 ; SHELLAPTOR
	mon_cry CRY_ROAR_60,     1504,   384 ; GOBELDORL
	mon_cry CRY_NIDOQUEEN,   1928,   314 ; CENTIR
	mon_cry CRY_DRISCORINA,    99,   336 ; DRISCORINA
	mon_cry CRY_RHYHORN,      347,   168 ; ARLURRY
	mon_cry CRY_KICLOUD,       96,   274 ; MAGENZA
	mon_cry CRY_TANGELA,      444,   180 ; ILLUSIRO
	mon_cry CRY_GUARNID,      268,   212 ; HELICELIA
	mon_cry CRY_KINGSAURUS,  2020,   767 ; SELENUMIA
	mon_cry CRY_LUGIA,        488,   195 ; PARBELL
