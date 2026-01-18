	db DEX_HAUNTER ; pokedex id

	db  45,  50,  45,  95, 115
	;   hp  atk  def  spd  spc

	db GHOST, POISON ; type
	db 90 ; catch rate
	db 126 ; base exp

	INCBIN "gfx/pokemon/front/haunter.pic", 0, 1 ; sprite dimensions
	dw HaunterPicFront, HaunterPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SHOCK_WAVE, TOXIC, DOUBLE_EDGE, SLUDGE_BOMB, SUPERPOWER, COUNTER, THUNDERPUNCH, GIGA_DRAIN, THUNDERBOLT, THUNDER, PSYCHIC_M, DAZZLE_GLEAM, DOUBLE_TEAM, REFLECT, ICE_PUNCH, FIRE_PUNCH, WILL_O_WISP, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, DARK_PULSE, SUBSTITUTE
	; end

	db BANK(HaunterPicFront)
	assert BANK(HaunterPicFront) == BANK(HaunterPicBack)
