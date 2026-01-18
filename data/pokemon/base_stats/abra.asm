	db DEX_ABRA ; pokedex id

	db  25,  20,  15,  90, 105
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 200 ; catch rate
	db 73 ; base exp

	INCBIN "gfx/pokemon/front/abra.pic", 0, 1 ; sprite dimensions
	dw AbraPicFront, AbraPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, TOXIC, BODY_SLAM, DOUBLE_EDGE, COUNTER, THUNDERPUNCH, MUD_SLAP, DIG, PSYCHIC_M, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, ICE_PUNCH, FIRE_PUNCH, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, THUNDER_WAVE, DARK_PULSE, SUBSTITUTE, FLASH
	; end

	db BANK(AbraPicFront)
	assert BANK(AbraPicFront) == BANK(AbraPicBack)
