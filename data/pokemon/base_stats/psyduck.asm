	db DEX_PSYDUCK ; pokedex id

	db  50,  52,  48,  55,  50
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 190 ; catch rate
	db 80 ; base exp

	INCBIN "gfx/pokemon/front/psyduck.pic", 0, 1 ; sprite dimensions
	dw PsyduckPicFront, PsyduckPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, TOXIC, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, SUPERPOWER, COUNTER, MUD_SLAP, PSYCHIC_M, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, SWIFT, REST, SUBSTITUTE, SURF, STRENGTH
	; end

	db BANK(PsyduckPicFront)
	assert BANK(PsyduckPicFront) == BANK(PsyduckPicBack)
