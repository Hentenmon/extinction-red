	db DEX_HVOLTORB ; pokedex id

	db  40,  30,  50, 100,  55
	;   hp  atk  def  spd  spc

	db ELECTRIC, GRASS ; type
	db 190 ; catch rate
	db 66 ; base exp

	INCBIN "gfx/pokemon/front/hvoltorb.pic", 0, 1 ; sprite dimensions
	dw HVoltorbPicFront, HVoltorbPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, DOUBLE_EDGE, GIGA_DRAIN, SOLARBEAM, THUNDERBOLT, THUNDER, DOUBLE_TEAM, REFLECT, SWIFT, REST, THUNDER_WAVE, BULLET_SEED, SUBSTITUTE, FLASH
	; end

	db BANK(HVoltorbPicFront)
	assert BANK(HVoltorbPicFront) == BANK(HVoltorbPicBack)
