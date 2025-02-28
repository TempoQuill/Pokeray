; Every Pokémon sorted in New Pokédex Order.

NewPokedexOrder:
	; starters - cannot be found in the wild
		dw ORKID
		dw SYNTIQUE
		dw PHOTORDEN
		dw FLAMBEAR
		dw VOLBEAR
		dw DYNABEAR
		dw CRUZ
		dw AQUACENT
		dw AQUARIA
	; from here on, any pokemon not labeled with a location is an evolution
	; of the previous one unless specified
	; early-birds
		dw PIDGEY	; anywhere
		dw PIDGEOTTO
		dw PIDGEOT
		dw SPEAROW	; anywhere
		dw FEAROW
		dw TEAROW
		dw HOOTHOOT	; anywhere
		dw NOCTOWL
		dw NOCTGLIDE
		dw CROVEN	; anywhere
		dw ASTROVEN
	; early-rodents
		dw RATTATA	; anywhere
		dw RATICATE
		dw RAVERMIN
		dw SENTRET	; anywhere
		dw FURRET
		dw COATRET
		dw PICHU	; anywhere
		dw PIKACHU
		dw RAICHU
	; early-bugs
		dw CATERPIE	; anywhere
		dw METAPOD
		dw BUTTERFREE
		dw WEEDLE	; anywhere
		dw KAKUNA
		dw BEEDRILL
		dw LEDYBA	; anywhere
		dw LEDIAN
		dw LEDIURY
		dw SPINARAK	; anywhere
		dw ARIADOS
		dw TIERACNID
	; cave-types
		dw GEODUDE	; Mt. Vacuum / Mt. Saber
		dw GRAVELER
		dw GOLEM	; Golem Palace - trade evolution from GRAVELER
		dw ZUBAT	; Mt. Vacuum / Mt. Saber
		dw GOLBAT
		dw CROBAT
	; cute-types
		dw CLEFFA	; anywhere
		dw CLEFAIRY
		dw CLEFABLE
		dw IGGLYBUFF	; anywhere
		dw JIGGLYPUFF
		dw WIGGLYTUFF
		dw TOGEPI	; gift
		dw TOGETIC
	; warmth-reliant
		dw SANDSHREW	; Route 57 / Route 58 / Route 59 / Route 60 
		dw SANDSLASH
		dw SANDSCOUR
		dw EKANS	; Route 57 / Route 58 / Route 59 / Route 60 
		dw ARBOK
		dw NOHTYP
		dw DUNSPARCE	; Mt. Vacuum / Mt. Saber
		dw ASSISDRA	; Solar Conference
		dw DRYTHON	; Mt. Vacuum / Mt. Saber
		dw CYCORPION	; Route 57 / Route 58 / Route 59 / Route 60 
	; light-aided
		dw MAREEP	; Route 62 / Route 63 / Route 64
		dw FLAAFFY
		dw AMPHAROS
		dw WOOPER	; Sunkern Swamp
		dw QUAGSIRE
		dw QUAGAMI
		dw UNOWN
		dw FOSSLIX	; Mt. Vacuum / Mt. Saber
		dw ONIX
		dw STEELIX
		dw UNILIGHT	; Solar Conference
		dw ALIDUSK
	; grass-dwelling
		dw BELLSPROUT	; Route 52 / Route 53 / Route 54
		dw WEEPINBELL
		dw VICTREEBEL
		dw BELMITT
		dw HOPPIP	; Route 57 / Route 58 / Route 59 / Route 60 
		dw SKIPLOOM
		dw JUMPLUFF
		dw PARABUD	; Lanawe Forest / Sunkern Swamp
		dw PARAS
		dw PARASECT
	; sea-dwelling
		dw POLIWAG	; Cottage Town
		dw POLIWHIRL
		dw POLIWRATH
		dw POLITOED	; evolves from POLIWHIRL
		dw MAGIKARP	; anywhere
		dw GYARADOS
		dw MOUNDIVER	; evolves from MAGIKARP
		dw ORSCHUL	; Route 53 / Portite City
		dw GOLDEEN
		dw SEAKING
		dw SLOWPOKE	; Route 64 / Route 65
		dw SLOWBRO
		dw SLOWKING
		dw MOLAMBINO	; Route 66
		dw ANGORE
		dw GROTESS
		dw SQUIDRILL	; Route 66
	; mid-game
		dw ODDISH	; Route 56 / Route 59
		dw GLOOM
		dw VILEPLUME
		dw BELLOSSOM	; evolves from GLOOM
		dw DROWZEE	; Route 54
		dw HYPNO
		dw ALREM
		dw ABRA		; Route 54
		dw KADABRA
		dw ALAKAZAM
		dw DITTO	; Route 57 / Route 58 / Route 59 / Route 60 
		dw LYKWYSE
		dw ANTLOG	; Route 61 / 62
		dw FLINJA	; Route 56 / Route 57 / Route 58 / Route 61
	; suburban
		dw PINECO	; Route 53 / Route 57
		dw FORRETRESS
		dw NIDORAN_F	; Route 62 / Route 63 / Route 64
		dw NIDORINA
		dw NIDOQUEEN
		dw NIDORAN_M	; Route 62 / Route 63 / Route 64
		dw NIDORINO
		dw NIDOKING
		dw RAKUKI	; Route 53 / Route 57
	; landscape
		dw YANMA	; Route 57 / Route 58 / Route 59 / Route 60 
		dw SUNKERN	; Route 60 / Sunkern Swamp
		dw SUNFLORA
		dw SUNTHESIA
		dw EXEGGCUTE	; Route 57 / Route 58 / Route 59 / Route 60 
		dw EXEGGUTOR
		dw SUDOWOODO	; Route 64 / Route 65
		dw WOBBUFFET	; Route 66
		dw KOALIMB	; Route 57 / Route 58 / Route 59 / Route 60 
	; middle bugs
		dw VENONAT	; Route 62 / Route 63 / Route 64
		dw VENOMOTH
		dw VENOCLOTH
		dw SCYTHER	; Route 56 / Route 50 / Route 53
		dw SCIZOR
		dw PINSIR	; Route 56 / Route 50 / Route 53
		dw PLUX
		dw HERACROSS	; Route 57 / Route 58 / Route 59 / Route 60 
		dw LAROON	; Route 60 / TRADE
		dw CADITIN
		dw CHRYSALTY
		dw MOSCARF	; Route 62 / Route 63 / Route 64
		dw FLIDER
	; industrious
		dw KOFFING	; Route 53 / Route 57
		dw WEEZING
		dw CHOAKING
		dw SMUJJ	; Route 53 / Route 57
		dw GRIMER
		dw MUK
		dw MAGNEMITE	; Route 57
		dw MAGNETON
		dw VOLTORB	; Route 57
		dw ELECTRODE
		dw KOTORA	; Route 58 / 61
		dw RAITORA
		dw TIARANT	; Route 55
		dw SILVEALTH	; Route 55
	; wildlife
		dw AIPOM	; Lanawe Forest / Sunkern Swamp
		dw SNUBBULL	; Lanawe Forest / Sunkern Swamp
		dw GRANBULL
		dw TRIFOX	; TRADE
		dw VULPIX
		dw NINETALES
		dw WINDKITT	; anywhere
		dw TODBRUSH
		dw RUFFY	; anywhere
		dw GROWLITHE
		dw ARCANINE
		dw STANTLER	; Route 62 / Route 63 / Route 64
		dw MARILL	; Cottage Town
		dw AZUMARILL
		dw DIGLETT	; Caves
		dw DUGTRIO
		dw DUGQUINTET
		dw MANKEY	; Lanawe Forest / Sunkern Swamp
		dw PRIMEAPE
		dw ALPHAPE
		dw COINTEN	; Route 62 / Route 63 / Route 64
		dw MEOWTH
		dw PERSIAN
		dw PSYDUCK	; Route 53 / Portite City
		dw GOLDUCK
		dw EMPEDUCK
		dw ANIMADISE	; Lanawe Forest
	; fighters
		dw MACHOP	; Route 52 / Route 53 / Route 54
		dw MACHOKE
		dw MACHAMP
		dw TYROGUE	; gift
		dw HITMONLEE
		dw HITMONCHAN	; all HITMON's evolve from TYROGUE
		dw HITMONTOP
		dw KICLOUD	; Route 61
		dw APPUCK	; Route 55
	; user-fit
		dw SIAMAIS	; Route 58
		dw GIRAFARIG
		dw TAUROS	; Route 62 / Route 63 / Route 64
		dw MILCALF	; Route 62 / Route 63 / Route 64
		dw MILTANK
		dw MAGBY	; Mt. Saber
		dw MAGMAR
		dw SMOOCHUM	; Route 62 / Route 63 / Route 64
		dw JYNX
		dw MURPHELT
		dw ELEKID	; Route 56 / Route 57 / Route 58 / Route 61
		dw ELECTABUZZ
		dw MR__MIME	; Solar Conference
		dw SMEARGLE	; Mt. Saber
		dw FARFETCH_D	; Route 56 / Route 50 / Route 53
		dw MADAME
		dw NATU		; Route 56 / Route 50 / Route 53
		dw XATU
		dw SEWMA	; Route 49 / Route 55
		dw SWEOTE	; Route 49 / Route 55
	; intertidal
		dw QWILFISH	; Brewery City
		dw NUMPUFF
		dw TENTACOOL	; Brewery City
		dw TENTACRUEL
		dw TENTACRIME
		dw KRABBY	; Brewery City
		dw KINGLER
		dw PINCHLER
		dw SHUCKLE	; Route 62 / Route 63 / Route 64
		dw SHUVEL
		dw STARYU	; Portite City
		dw STARMIE
		dw STARELLO
		dw SHELLDER	; Brewery City
		dw CLOYSTER
		dw TURBANN	; evolves from SHELLDER
		dw CORSOLA	; Route 66
		dw REMORAID	; Brewery City
		dw OCTILLERY
		dw CHINCHOU	; Route 64 / Route 65
		dw LANTURN
		dw SEEL		; Route 64 / Route 65
		dw DEWGONG
		dw LIODEW
		dw HIGHPO	; Route 66
	; domestic
		dw LICKITUNG	; Route 57
		dw BURGELA	; Route 53
		dw TANGELA
		dw EEVEE	; gift
		dw VAPOREON
		dw JOLTEON	; all EEVEElutions evolve from EEVEE
		dw FLAREON
		dw ESPEON
		dw UMBREON
		dw WHISPEON
		dw ASSEMBLEON
		dw HORSEA	; Route 66
		dw SEADRA
		dw KINGDRA
		dw GATOLL	; gift
		dw BELLBOYANT
		dw MARLOON	; Route 58 / Route 59 / Route 53
		dw SEARCHLE	; Route 61
		dw DONKRANK	; Route 53
		dw PARROBRASS
	; cool-aclimates
		dw GLIGAR	; Route 62 / Route 63 / Route 64
		dw DELFLAP	; Route 62 / Route 63 / Route 64
		dw DELIBIRD
		dw SWINUB	; Route 62 / Route 63 / Route 64
		dw PILOSWINE
		dw TEDDIURSA	; Route 62 / Route 63 / Route 64
		dw URSARING
		dw PHANPY	; Route 57 / Route 58 / Route 59 / Route 60 
		dw DONPHAN
		dw WOLFMAN	; Route 62 / Route 63 / Route 64
		dw WARWOLF
		dw GRIFLET	; Route 65 / Route 66
		dw CIRRIFFON
		dw COSMOREAS
		dw SNOBURI	; Route 62 / Route 63 / Route 64
		dw SNOBUSTER
		dw ARBUGS
		dw WILLOFUDD	; evolves from SNOBUSTER
	; unusual-flyers
		dw MANTINE	; Brewery City
		dw METABEAK	; Route 62 / Route 63 / Route 64
		dw SKARMORY
		dw CRANEST	; evolves from METABEAK
		dw DODAERIE	; Route 62 / Route 63 / Route 64
		dw DODUO
		dw DODRIO
		dw SCOOTEN	; Route 55 / Route 49
		dw QUAILTER	; Route 65 / Route 66
		dw STAFFBIRD	; TRADE - evolves from QUAILTER
		dw SAILWING	; Route 65 / Route 66
		dw SCAFAROW	; Route 55 / Route 58 / Route 59 / Ruote 60
		dw GLABBIT	; Lanawe Forest
	; rare
		dw FOLICORN	; Mt. Saber
		dw PONYTA
		dw RAPIDASH
		dw CUBONE	; Route 65 / Route 66
		dw MAROWAK
		dw POUCHENT
		dw MIGHTALEX	; TRADE
		dw KANGASKHAN
		dw RHYHORN	; Route 57 / Route 58 / Route 59 / Route 60 
		dw RHYDON
		dw BOMOCA	; Route 66
		dw TOUFENSE	; Route 57 / Route 58 / Route 59 / Route 60 
		dw GUARNID	; Golem Palace
		dw DRATINI	; Route 62 / Route 63 / Route 64
		dw DRAGONAIR
		dw DRAGONITE
		dw DRAGONISCE	; evolves from DRAGONAIR
		dw LARVITAR	; TRADE
		dw PUPITAR
		dw TYRANITAR
		dw ARLURRY	; Golem Palace
		dw MAGENZA
		dw ILLUSIRO
	; dark
		dw MURKROW	; TRADE
		dw HOUNDOUR	; Route 66
		dw HOUNDOOM
		dw HOUNDREAD
		dw GASTLY	; Lanawe Forest / Mt. Vacuum
		dw HAUNTER
		dw GENGAR
		dw SLUGMA	; Route 66
		dw MAGCARGO
		dw SNEASEL	; Route 62 / Route 63 / Route 64
		dw COAZIGOAST	; Route 50
		dw MISDREAVUS	; Lanawe Forest
		dw KURSTRAW	; Lanawe Forest
		dw PANGSHI
	; man-dwelling
		dw PORYGON	; GAME CORNER
		dw PORYGON2
		dw PORYSPHIA	; evolves from PORYGON
		dw CHANSEY	; Route 57
		dw BLISSEY
		dw MAGNEVEN	; Route 66
	; fossils
		dw LAPRAS	; gift
		dw OMANYTE	; HELIX_FOSSIL
		dw OMASTAR
		dw OMANOVA
		dw KABUTO	; DOME_FOSSIL
		dw KABUTOPS
		dw KABOULDER
		dw AERODACTYL	; OLD_AMBER
		dw SHELLAPTOR	; FOSSIL_ROCK
	; the following pokemon would need to be transferred over from Gold to
	; obtain them in Ray/Shade
	; imports
		dw SNORLAX
		dw RECLINAX
		dw BULBASAUR
		dw IVYSAUR
		dw VENUSAUR
		dw CHARMANDER
		dw CHARMELEON
		dw CHARIZARD
		dw SQUIRTLE
		dw WARTORTLE
		dw BLASTOISE
		dw CHIKORITA
		dw BAYLEEF
		dw MEGANIUM
		dw CYNDAQUIL
		dw QUILAVA
		dw TYPHLOSION
		dw TOTODILE
		dw CROCONAW
		dw FERALIGATR
	; any legacy legendary / mythical would need to be transferred over
	; from Gold to obtain them in Ray/Shade
	; legends
		dw ARTICUNO
		dw ZAPDOS
		dw MOLTRES
		dw RAIKOU
		dw ENTEI
		dw SUICUNE
		dw GOBELDORL
		dw CENTIR
		dw DRISCORINA
		dw LUGIA
		dw HO_OH
		dw SELENUMIA
		dw HELICELIA
		dw MEWTWO
		dw MEW
		dw CELEBI
		dw PARBELL
