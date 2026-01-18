	db DEX_SEAKING ; pokedex id

	db 100, 102,  85,  88, 100
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 60 ; catch rate
	db 170 ; base exp

	INCBIN "gfx/pokemon/front/seaking.pic", 0, 1 ; sprite dimensions
	dw SeakingPicFront, SeakingPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, REST, SUBSTITUTE, SURF
	; end

	db BANK(SeakingPicFront)
	assert BANK(SeakingPicFront) == BANK(SeakingPicBack)
