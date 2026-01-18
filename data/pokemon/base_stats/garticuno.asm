	db DEX_GARTICUNO ; pokedex id

	db  90,  85,  85,  95, 125
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, FLYING ; type
	db 3 ; catch rate
	db 215 ; base exp

	INCBIN "gfx/pokemon/front/garticuno.pic", 0, 1 ; sprite dimensions
	dw GArticunoPicFront, GArticunoPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, ROOST, AERIAL_ACE, DOUBLE_EDGE, HURRICANE, ICE_BEAM, BLIZZARD, HYPER_BEAM, PSYCHIC_M, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, REST, SUBSTITUTE, FLY
	; end

	db BANK(GArticunoPicFront)
	assert BANK(GArticunoPicFront) == BANK(GArticunoPicBack)
