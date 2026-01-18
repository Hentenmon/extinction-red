	db DEX_MAGNETON ; pokedex id

	db  50,  60,  95,  70, 120
	;   hp  atk  def  spd  spc

	db ELECTRIC, STEEL ; type
	db 60 ; catch rate
	db 161 ; base exp

	INCBIN "gfx/pokemon/front/magneton.pic", 0, 1 ; sprite dimensions
	dw MagnetonPicFront, MagnetonPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, DOUBLE_EDGE, THUNDERBOLT, THUNDER, DOUBLE_TEAM, REFLECT, SWIFT, FLASH_CANNON, REST, THUNDER_WAVE, SUBSTITUTE, FLASH
	; end

	db BANK(MagnetonPicFront)
	assert BANK(MagnetonPicFront) == BANK(MagnetonPicBack)
