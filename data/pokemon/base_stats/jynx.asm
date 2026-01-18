	db DEX_JYNX ; pokedex id

	db  75,  60,  65, 105, 115
	;   hp  atk  def  spd  spc

	db ICE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 137 ; base exp

	INCBIN "gfx/pokemon/front/jynx.pic", 0, 1 ; sprite dimensions
	dw JynxPicFront, JynxPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, SUPERPOWER, COUNTER, MUD_SLAP, PSYCHIC_M, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, ICE_PUNCH, SWIFT, SHADOW_BALL, REST, DRAININGKISS, SUBSTITUTE
	; end

	db BANK(JynxPicFront)
	assert BANK(JynxPicFront) == BANK(JynxPicBack)
