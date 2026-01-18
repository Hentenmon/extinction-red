	db DEX_GASTLY ; pokedex id

	db  30,  35,  30,  80, 100
	;   hp  atk  def  spd  spc

	db GHOST, POISON ; type
	db 190 ; catch rate
	db 95 ; base exp

	INCBIN "gfx/pokemon/front/gastly.pic", 0, 1 ; sprite dimensions
	dw GastlyPicFront, GastlyPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, DOUBLE_EDGE, SLUDGE_BOMB, GIGA_DRAIN, THUNDERBOLT, THUNDER, PSYCHIC_M, DAZZLE_GLEAM, DOUBLE_TEAM, REFLECT, WILL_O_WISP, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, DARK_PULSE, SUBSTITUTE
	; end

	db BANK(GastlyPicFront)
	assert BANK(GastlyPicFront) == BANK(GastlyPicBack)
