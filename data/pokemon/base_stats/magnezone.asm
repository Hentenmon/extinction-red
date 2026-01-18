	db DEX_MAGNETON ; pokedex id

	db  70,  70, 115,  60, 130
	;   hp  atk  def  spd  spc

	db ELECTRIC, STEEL ; type
	db 60 ; catch rate
	db 161 ; base exp

	INCBIN "gfx/pokemon/front/magnezone.pic", 0, 1 ; sprite dimensions
	dw MagnezonePicFront, MagnezonePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, DOUBLE_EDGE, HYPER_BEAM, THUNDERBOLT, THUNDER, DOUBLE_TEAM, REFLECT, SWIFT, FLASH_CANNON, REST, THUNDER_WAVE, SUBSTITUTE, FLASH
	; end

	db BANK(MagnezonePicFront)
	assert BANK(MagnezonePicFront) == BANK(MagnezonePicBack)
