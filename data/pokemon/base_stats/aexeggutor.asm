	db DEX_AEXEGGUTOR ; pokedex id

	db  95, 105,  85,  45, 125
	;   hp  atk  def  spd  spc

	db GRASS, DRAGON ; type
	db 45 ; catch rate
	db 186 ; base exp

	INCBIN "gfx/pokemon/front/aexeggutor.pic", 0, 1 ; sprite dimensions
	dw AExeggutorPicFront, AExeggutorPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SLUDGE_BOMB, MUD_SLAP, GIGA_DRAIN, SOLARBEAM, DRAGONBREATH, DOUBLE_TEAM, REFLECT, SWIFT, REST, BULLET_SEED, SUBSTITUTE, STRENGTH
	; end

	db BANK(AExeggutorPicFront)
	assert BANK(AExeggutorPicFront) == BANK(AExeggutorPicBack)
