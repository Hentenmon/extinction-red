	db DEX_MAGNEMITE ; pokedex id

	db  25,  35,  70,  45,  95
	;   hp  atk  def  spd  spc

	db ELECTRIC, STEEL ; type
	db 190 ; catch rate
	db 89 ; base exp

	INCBIN "gfx/pokemon/front/magnemite.pic", 0, 1 ; sprite dimensions
	dw MagnemitePicFront, MagnemitePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, DOUBLE_EDGE, THUNDERBOLT, THUNDER, DOUBLE_TEAM, REFLECT, SWIFT, FLASH_CANNON, REST, THUNDER_WAVE, SUBSTITUTE, FLASH
	; end

	db BANK(MagnemitePicFront)
	assert BANK(MagnemitePicFront) == BANK(MagnemitePicBack)
