	db DEX_GOLDEEN ; pokedex id

	db  55,  67,  70,  73,  60
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 225 ; catch rate
	db 111 ; base exp

	INCBIN "gfx/pokemon/front/goldeen.pic", 0, 1 ; sprite dimensions
	dw GoldeenPicFront, GoldeenPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, REST, SUBSTITUTE, SURF
	; end

	db BANK(GoldeenPicFront)
	assert BANK(GoldeenPicFront) == BANK(GoldeenPicBack)
