	db DEX_GSLOWKING ; pokedex id

	db  95,  65,  80,  30, 110
	;   hp  atk  def  spd  spc

	db POISON, PSYCHIC_TYPE ; type
	db 70 ; catch rate
	db 172 ; base exp

	INCBIN "gfx/pokemon/front/gslowking.pic", 0, 1 ; sprite dimensions
	dw GSlowkingPicFront, GSlowkingPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, SLUDGE_BOMB, MUD_SLAP, THUNDERBOLT, THUNDER, EARTHQUAKE, FISSURE, DIG, PSYCHIC_M, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, FIRE_BLAST, SWIFT, SHADOW_BALL, FLASH_CANNON, IRON_TAIL, REST, THUNDER_WAVE, DARK_PULSE, SUBSTITUTE, SURF, STRENGTH, FLASH
	; end

	db BANK(GSlowkingPicFront)
	assert BANK(GSlowkingPicFront) == BANK(GSlowkingPicBack)
