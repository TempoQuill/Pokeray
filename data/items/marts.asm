Marts:
; entries correspond to MART_* constants
	dw MartUnderground
.End

MartTraversal:
	db 7 ; # items
	db POTION
	db ANTIDOTE
	db PARALYZEHEAL
	db AWAKENING
	db BURN_HEAL
	db FIRE_STONE
	db BRICK_PIECE
	db -1 ; end

MartTraversalDex:
	db 8 ; # items
	db POKE_BALL
	db POTION
	db ANTIDOTE
	db PARALYZEHEAL
	db AWAKENING
	db BURN_HEAL
	db FIRE_STONE
	db BRICK_PIECE
	db -1 ; end

MartFoliage:
	db 7 ; # items
	db POTION
	db ANTIDOTE
	db PARALYZEHEAL
	db BURN_HEAL
	db ICE_HEAL
	db LEAF_STONE
	db MAGNET
	db -1 ; end

MartFoliageDex:
	db 8 ; # items
	db POKE_BALL
	db POTION
	db ANTIDOTE
	db PARALYZEHEAL
	db BURN_HEAL
	db ICE_HEAL
	db LEAF_STONE
	db MAGNET
	db -1 ; end

MartPortite2F:
	db 10 ; # items
	db POKE_BALL
	db GREAT_BALL
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARALYZEHEAL
	db BURN_HEAL
	db ICE_HEAL
	db AWAKENING
	db FULL_HEAL
	db -1 ; end

MartPortite3F1:
	db 10 ; # items
	db FIRE_STONE
	db THUNDERSTONE
	db WATER_STONE
	db SPHERE_STONE
	db DUCKY_AMULET
	db NIGHT_ARMOR
	db ROYAL_ROCK
	db FLASH_STONE
	db TRUSTY_STONE
	db PUMP_BOTTLE
	db -1 ; end

MartPortite3F2:
	db 10 ; # items
	db POKE_DOLL
	db BUDDING_SEED
	db NAPKIN
	db SILVER_LEAF
	db GOLD_LEAF
	db MUSHROOM
	db BIG_MUSHROOM
	db LUGNUT
	db PEARL
	db SILVER_PEARL
	db -1 ; end

MartPortite4F:
	db 10 ; # items
	db HP_UP
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db X_ACCURACY
	db X_ATTACK
	db X_DEFEND
	db X_SPEED
	db X_SPECIAL
	db -1 ; end

MartUnderground:
	db 4 ; # items
	db ENERGYPOWDER
	db ENERGY_ROOT
	db HEAL_POWDER
	db REVIVAL_HERB
	db -1 ; end

DefaultMart:
	db 2 ; # items
	db POKE_BALL
	db POTION
	db -1 ; end
