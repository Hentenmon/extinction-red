	db DEX_GOLDUCK ; pokedex id

	db  85,  87,  83,  90,  85
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 75 ; catch rate
	db 174 ; base exp

	INCBIN "gfx/pokemon/front/golduck.pic", 0, 1 ; sprite dimensions
	dw GolduckPicFront, GolduckPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, TOXIC, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, SUPERPOWER, COUNTER, MUD_SLAP, PSYCHIC_M, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, SWIFT, REST, SUBSTITUTE, SURF, STRENGTH
	; end

	db BANK(GolduckPicFront)
	assert BANK(GolduckPicFront) == BANK(GolduckPicBack)
