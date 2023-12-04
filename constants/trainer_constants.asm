__trainer_class__ = 0

trainerclass: MACRO
\1 EQU __trainer_class__
__trainer_class__ = __trainer_class__ + 1
const_value = 1
ENDM

; trainer class ids
; `trainerclass` indexes are for:
; - TrainerClassNames (see data/trainers/class_names.asm)
; - TrainerClassAttributes (see data/trainers/attributes.asm)
; - TrainerClassDVs (see data/trainers/dvs.asm)
; - TrainerGroups (see data/trainers/party_pointers.asm)
; - TrainerEncounterMusic (see data/trainers/encounter_music.asm)
; - TrainerPicPointers (see data/trainers/pic_pointers.asm)
; - TrainerPalettes (see data/trainers/palettes.asm)
; trainer constants are Trainers indexes, for the sub-tables of TrainerGroups (see data/trainers/parties.asm)
CHRIS EQU __trainer_class__
	trainerclass TRAINER_NONE ; 0
	const EMAILCONTACT_MOM
	const EMAILCONTACT_BIKESHOP
	const EMAILCONTACT_BILL
	const EMAILCONTACT_ELM
	const EMAILCONTACT_LARCH
NUM_NONTRAINER_EMAILCONTACTS EQU const_value - 1

	trainerclass JAMES ; 1
	const FALKNER1
	const JAMES1

	trainerclass CINDY ; 2
	const WHITNEY1
	const CINDY1

	trainerclass ZACH ; 3
	const BUGSY1
	const ZACH1

	trainerclass GLADMAN ; 4
	const MORTY1
	const GLADMAN1

	trainerclass WOODY ; 5
	const PRYCE1
	const WOODY1

	trainerclass GORDON ; 6
	const JASMINE1
	const GORDON1

	trainerclass BRAIN ; 7
	const CHUCK1
	const BRIAN1

	trainerclass BELLE ; 8
	const CLAIR1
	const BELLE1

	trainerclass RIVAL1 ; 9
	const RIVAL1_1_ORKID
	const RIVAL1_1_FLAMBEAR
	const RIVAL1_1_CRUZ
	const RIVAL1_2_ORKID
	const RIVAL1_2_FLAMBEAR
	const RIVAL1_2_CRUZ
	const RIVAL1_3_ORKID
	const RIVAL1_3_FLAMBEAR
	const RIVAL1_3_CRUZ
	const RIVAL1_4_ORKID
	const RIVAL1_4_FLAMBEAR
	const RIVAL1_4_CRUZ
	const RIVAL1_5_ORKID
	const RIVAL1_5_FLAMBEAR
	const RIVAL1_5_CRUZ

	trainerclass POKEMON_PROF ; a

	trainerclass WILL ; b

	trainerclass CAL ; c

	trainerclass BRUNO ; d

	trainerclass KAREN ; e

	trainerclass KOGA ; f

	trainerclass CHAMPION ; 10
	const LANCE

	trainerclass BROCK ; 11

	trainerclass MISTY ; 12

	trainerclass LT_SURGE ; 13

	trainerclass SCIENTIST ; 14

	trainerclass ERIKA ; 15

	trainerclass YOUNGSTER ; 16

	trainerclass SCHOOLBOY ; 17

	trainerclass BIRD_KEEPER ; 18

	trainerclass LASS ; 19

	trainerclass JANINE ; 1a

	trainerclass COOLTRAINERM ; 1b

	trainerclass COOLTRAINERF ; 1c

	trainerclass BEAUTY ; 1d

	trainerclass POKEMANIAC ; 1e

	trainerclass GRUNTM ; 1f

	trainerclass GENTLEMAN ; 20

	trainerclass SKIER ; 21

	trainerclass TEACHER ; 22

	trainerclass SABRINA ; 23

	trainerclass BUG_CATCHER ; 24

	trainerclass FISHER ; 25

	trainerclass SWIMMERM ; 26

	trainerclass SWIMMERF ; 27

	trainerclass SAILOR ; 28

	trainerclass SUPER_NERD ; 29

	trainerclass RIVAL2 ; 2a
	const RIVAL2_1_ORKID
	const RIVAL2_1_FLAMBEAR
	const RIVAL2_1_CRUZ
	const RIVAL2_2_ORKID
	const RIVAL2_2_FLAMBEAR
	const RIVAL2_2_CRUZ

	trainerclass GUITARIST ; 2b

	trainerclass HIKER ; 2c

	trainerclass BIKER ; 2d

	trainerclass BLAINE ; 2e

	trainerclass BURGLAR ; 2f

	trainerclass FIREBREATHER ; 30

	trainerclass JUGGLER ; 31

	trainerclass BLACKBELT_T ; 32

	trainerclass EXECUTIVEM ; 33

	trainerclass PSYCHIC_T ; 34

	trainerclass PICNICKER ; 35

	trainerclass CAMPER ; 36

	trainerclass EXECUTIVEF ; 37

	trainerclass SAGE ; 38

	trainerclass MEDIUM ; 39

	trainerclass BOARDER ; 3a
	const RONALD
	const BRAD
	const DOUGLAS

	trainerclass POKEFANM ; 3b

	trainerclass KIMONO_GIRL ; 3c

	trainerclass TWINS ; 3d

	trainerclass POKEFANF ; 3e
	const BEVERLY1
	const RUTH
	const BEVERLY2
	const BEVERLY3
	const GEORGIA

	trainerclass RED ; 3f
	const RED1

	trainerclass BLUE ; 40

	trainerclass OFFICER ; 41
	const KEITH
	const DIRK

	trainerclass GRUNTF ; 42

	trainerclass C_JACE_V ; 43
	const T_JACE_V

NUM_TRAINER_CLASSES EQU __trainer_class__
