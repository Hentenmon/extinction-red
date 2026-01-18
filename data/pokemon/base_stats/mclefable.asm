	db DEX_MCLEFABLE ; pokedex id

	db  95,  80,  93,  70, 135
	;   hp  atk  def  spd  spc

	db FAIRY, FLYING ; type
	db 25 ; catch rate
	db 129 ; base exp

	INCBIN "gfx/pokemon/front/mclefable.pic", 0, 1 ; sprite dimensions
	dw MClefablePicFront, MClefablePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, FLAMETHROWER, SHOCK_WAVE, TOXIC, ROOST, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, SCALD, HURRICANE, ICE_BEAM, BLIZZARD, HYPER_BEAM, SUPERPOWER, COUNTER, THUNDERPUNCH, SOLARBEAM, THUNDERBOLT, THUNDER, PSYCHIC_M, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, ICE_PUNCH, FIRE_PUNCH, FIRE_BLAST, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, THUNDER_WAVE, DRAININGKISS, SUBSTITUTE, FLY, STRENGTH
	; end

	db BANK(MClefablePicFront)
	assert BANK(MClefablePicFront) == BANK(MClefablePicBack)
