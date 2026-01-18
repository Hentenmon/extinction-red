	db DEX_BUTTERFREE ; pokedex id

	db  60,  45,  50,  70,  80
	;   hp  atk  def  spd  spc

	db BUG, FLYING ; type
	db 45 ; catch rate
	db 160 ; base exp

	INCBIN "gfx/pokemon/front/butterfree.pic", 0, 1 ; sprite dimensions
	dw ButterfreePicFront, ButterfreePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, ROOST, AERIAL_ACE, DOUBLE_EDGE, HURRICANE, HYPER_BEAM, GIGA_DRAIN, SOLARBEAM, PSYCHIC_M, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, REST, SUBSTITUTE, FLY
	; end

	db BANK(ButterfreePicFront)
	assert BANK(ButterfreePicFront) == BANK(ButterfreePicBack)
