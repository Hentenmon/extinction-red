	db DEX_GODLE ; pokedex id

	db 122, 122, 122, 122, 122
	;   hp  atk  def  spd  spc

	db BUG, POISON ; type
	db 255 ; catch rate
	db 255 ; base exp

	INCBIN "gfx/pokemon/front/godle.pic", 0, 1 ; sprite dimensions
	dw GodlePicFront, GodlePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(GodlePicFront)
	assert BANK(GodlePicFront) == BANK(GodlePicBack)
