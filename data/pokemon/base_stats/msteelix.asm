	db DEX_MSTEELIX ; pokedex id

	db  75, 125, 230,  30,  95
	;   hp  atk  def  spd  spc

	db STEEL, GROUND ; type
	db 25 ; catch rate
	db 179 ; base exp

	INCBIN "gfx/pokemon/front/msteelix.pic", 0, 1 ; sprite dimensions
	dw MSteelixPicFront, MSteelixPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SUPERPOWER, COUNTER, MUD_SLAP, DRAGONBREATH, EARTHQUAKE, FISSURE, DIG, DOUBLE_TEAM, REFLECT, ROCK_TOMB, SWIFT, IRON_TAIL, REST, ROCK_SLIDE, SUBSTITUTE, STRENGTH
	; end

	db BANK(MSteelixPicFront)
	assert BANK(MSteelixPicFront) == BANK(MSteelixPicBack)
