	db DEX_MR_RIME ; pokedex id

	db  80,  85,  75,  70, 110
	;   hp  atk  def  spd  spc

	db ICE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 161 ; base exp

	INCBIN "gfx/pokemon/front/mr.rime.pic", 0, 1 ; sprite dimensions
	dw MrRimePicFront, MrRimePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM, BLIZZARD, HYPER_BEAM, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, THUNDERBOLT, THUNDER, PSYCHIC_M, CHARM, DOUBLE_TEAM, REFLECT, ICE_PUNCH, FIRE_PUNCH, SWIFT, SHADOW_BALL, REST, DARK_PULSE, SUBSTITUTE, STRENGTH
	; end

	db BANK(MrRimePicFront)
	assert BANK(MrRimePicFront) == BANK(MrRimePicBack)
