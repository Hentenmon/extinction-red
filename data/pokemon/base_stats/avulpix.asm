	db DEX_AVULPIX ; pokedex id

	db  38,  41,  40,  65,  65
	;   hp  atk  def  spd  spc

	db ICE, ICE ; type
	db 190 ; catch rate
	db 63 ; base exp

	INCBIN "gfx/pokemon/front/avulpix.pic", 0, 1 ; sprite dimensions
	dw AVulpixPicFront, AVulpixPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM, BLIZZARD, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, REST, DRAININGKISS, SUBSTITUTE
	; end

	db BANK(AVulpixPicFront)
	assert BANK(AVulpixPicFront) == BANK(AVulpixPicBack)
