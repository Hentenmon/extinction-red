	db DEX_SLOWPOKE ; pokedex id

	db  90,  65,  65,  15,  40
	;   hp  atk  def  spd  spc

	db WATER, PSYCHIC_TYPE ; type
	db 190 ; catch rate
	db 99 ; base exp

	INCBIN "gfx/pokemon/front/slowpoke.pic", 0, 1 ; sprite dimensions
	dw SlowpokePicFront, SlowpokePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, MUD_SLAP, THUNDERBOLT, THUNDER, EARTHQUAKE, FISSURE, DIG, PSYCHIC_M, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, FIRE_BLAST, SWIFT, SHADOW_BALL, FLASH_CANNON, IRON_TAIL, REST, THUNDER_WAVE, DARK_PULSE, SUBSTITUTE, SURF, STRENGTH, FLASH
	; end

	db BANK(SlowpokePicFront)
	assert BANK(SlowpokePicFront) == BANK(SlowpokePicBack)
