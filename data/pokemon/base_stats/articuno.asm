	db DEX_ARTICUNO ; pokedex id

	db  90,  85, 100,  85, 125
	;   hp  atk  def  spd  spc

	db ICE, FLYING ; type
	db 3 ; catch rate
	db 215 ; base exp

	INCBIN "gfx/pokemon/front/articuno.pic", 0, 1 ; sprite dimensions
	dw ArticunoPicFront, ArticunoPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, ROOST, AERIAL_ACE, DOUBLE_EDGE, HURRICANE, ICE_BEAM, BLIZZARD, HYPER_BEAM, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, REST, SUBSTITUTE, FLY
	; end

	db BANK(ArticunoPicFront)
	assert BANK(ArticunoPicFront) == BANK(ArticunoPicBack)
