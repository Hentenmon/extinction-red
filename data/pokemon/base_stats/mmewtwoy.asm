	db DEX_MMEWTWOY ; pokedex id

	db 106, 150,  70, 140, 194
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 3 ; catch rate
	db 220 ; base exp

	INCBIN "gfx/pokemon/front/mmewtwoy.pic", 0, 1 ; sprite dimensions
	dw MMewtwoYPicFront, MMewtwoYPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, FLAMETHROWER, SHOCK_WAVE, TOXIC, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, SLUDGE_BOMB, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, SOLARBEAM, THUNDERBOLT, THUNDER, EARTHQUAKE, FISSURE, DIG, PSYCHIC_M, DAZZLE_GLEAM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, WILL_O_WISP, FIRE_BLAST, SWIFT, SHADOW_BALL, FLASH_CANNON, IRON_TAIL, REST, THUNDER_WAVE, DARK_PULSE, ROCK_SLIDE, SUBSTITUTE, FLY, SURF, STRENGTH, FLASH
	; end

	db BANK(MMewtwoYPicFront)
	assert BANK(MMewtwoYPicFront) == BANK(MMewtwoYPicBack)
