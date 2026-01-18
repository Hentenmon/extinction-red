	db DEX_STARMIE ; pokedex id

	db  60, 140, 105, 120, 105
	;   hp  atk  def  spd  spc

	db WATER, PSYCHIC_TYPE ; type
	db 60 ; catch rate
	db 207 ; base exp

	INCBIN "gfx/pokemon/front/mstarmie.pic", 0, 1 ; sprite dimensions
	dw MStarmiePicFront, MStarmiePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SHOCK_WAVE, TOXIC, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, SUPERPOWER, COUNTER, THUNDERBOLT, THUNDER, EARTHQUAKE, FISSURE, PSYCHIC_M, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, DARK_PULSE, SUBSTITUTE, SURF, STRENGTH, FLASH
	; end

	db BANK(MStarmiePicFront)
	assert BANK(MStarmiePicFront) == BANK(MStarmiePicBack)
 