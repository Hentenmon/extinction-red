	db DEX_ALAKAZAM ; pokedex id

	db  55,  50,  45, 120, 135
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 50 ; catch rate
	db 186 ; base exp

	INCBIN "gfx/pokemon/front/alakazam.pic", 0, 1 ; sprite dimensions
	dw AlakazamPicFront, AlakazamPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, COUNTER, THUNDERPUNCH, MUD_SLAP, DIG, PSYCHIC_M, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, ICE_PUNCH, FIRE_PUNCH, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, THUNDER_WAVE, DARK_PULSE, SUBSTITUTE, FLASH
	; end

	db BANK(AlakazamPicFront)
	assert BANK(AlakazamPicFront) == BANK(AlakazamPicBack)
