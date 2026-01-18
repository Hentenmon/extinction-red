	db DEX_CHANSEY ; pokedex id

	db 250,   5,   5,  50, 105
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 255 ; base exp

	INCBIN "gfx/pokemon/front/chansey.pic", 0, 1 ; sprite dimensions
	dw ChanseyPicFront, ChanseyPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, FLAMETHROWER, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, SOLARBEAM, THUNDERBOLT, THUNDER, FISSURE, PSYCHIC_M, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, FIRE_BLAST, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, THUNDER_WAVE, DRAININGKISS, SUBSTITUTE, STRENGTH, FLASH
	; end

	db BANK(ChanseyPicFront)
	assert BANK(ChanseyPicFront) == BANK(ChanseyPicBack)
