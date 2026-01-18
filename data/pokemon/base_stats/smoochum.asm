	db DEX_SMOOCHUM ; pokedex id

	db  45,  30,  15,  65,  65
	;   hp  atk  def  spd  spc

	db ICE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 61 ; base exp

	INCBIN "gfx/pokemon/front/smoochum.pic", 0, 1 ; sprite dimensions
	dw SmoochumPicFront, SmoochumPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, SUPERPOWER, COUNTER, MUD_SLAP, PSYCHIC_M, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, ICE_PUNCH, SWIFT, SHADOW_BALL, REST, DRAININGKISS, SUBSTITUTE
	; end

	db BANK(SmoochumPicFront)
	assert BANK(SmoochumPicFront) == BANK(SmoochumPicBack)
