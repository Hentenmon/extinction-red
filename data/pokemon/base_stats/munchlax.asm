	db DEX_MUNCHLAX ; pokedex id

	db 135,  85,  40,   5,  40
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 50 ; catch rate
	db 78 ; base exp

	INCBIN "gfx/pokemon/front/munchlax.pic", 0, 1 ; sprite dimensions
	dw MunchlaxPicFront, MunchlaxPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, FLAMETHROWER, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, SLUDGE_BOMB, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, SOLARBEAM, EARTHQUAKE, FISSURE, PSYCHIC_M, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, FIRE_BLAST, SWIFT, SHADOW_BALL, REST, DRAININGKISS, ROCK_SLIDE, SUBSTITUTE, SURF, STRENGTH
	; end

	db BANK(MunchlaxPicFront)
	assert BANK(MunchlaxPicFront) == BANK(MunchlaxPicBack)
