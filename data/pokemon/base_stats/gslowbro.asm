	db DEX_GSLOWBRO ; pokedex id

	db  95, 100,  95,  30, 100
	;   hp  atk  def  spd  spc

	db POISON, PSYCHIC_TYPE ; type
	db 75 ; catch rate
	db 164 ; base exp

	INCBIN "gfx/pokemon/front/gslowbro.pic", 0, 1 ; sprite dimensions
	dw GSlowbroPicFront, GSlowbroPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, SLUDGE_BOMB, MUD_SLAP, THUNDERBOLT, THUNDER, EARTHQUAKE, FISSURE, DIG, PSYCHIC_M, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, FIRE_BLAST, SWIFT, SHADOW_BALL, FLASH_CANNON, IRON_TAIL, REST, THUNDER_WAVE, DARK_PULSE, SUBSTITUTE, SURF, STRENGTH, FLASH
	; end

	db BANK(GSlowbroPicFront)
	assert BANK(GSlowbroPicFront) == BANK(GSlowbroPicBack)
