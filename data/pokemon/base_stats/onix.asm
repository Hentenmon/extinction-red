	db DEX_ONIX ; pokedex id

	db  35,  45, 160,  70,  30
	;   hp  atk  def  spd  spc

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 108 ; base exp

	INCBIN "gfx/pokemon/front/onix.pic", 0, 1 ; sprite dimensions
	dw OnixPicFront, OnixPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, TOXIC, BODY_SLAM, DOUBLE_EDGE, SUPERPOWER, COUNTER, MUD_SLAP, DRAGONBREATH, EARTHQUAKE, FISSURE, DIG, DOUBLE_TEAM, REFLECT, ROCK_TOMB, SWIFT, IRON_TAIL, REST, ROCK_SLIDE, SUBSTITUTE, STRENGTH
	; end

	db BANK(OnixPicFront)
	assert BANK(OnixPicFront) == BANK(OnixPicBack)
