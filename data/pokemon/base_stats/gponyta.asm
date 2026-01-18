	db DEX_GPONYTA ; pokedex id

	db  50,  85,  55,  90,  65
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 190 ; catch rate
	db 152 ; base exp

	INCBIN "gfx/pokemon/front/gponyta.pic", 0, 1 ; sprite dimensions
	dw GPonytaPicFront, GPonytaPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, BODY_SLAM, DOUBLE_EDGE, MUD_SLAP, PSYCHIC_M, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, THUNDER_WAVE, DRAININGKISS, SUBSTITUTE, STRENGTH, FLASH
	; end

	db BANK(GPonytaPicFront)
	assert BANK(GPonytaPicFront) == BANK(GPonytaPicBack)
