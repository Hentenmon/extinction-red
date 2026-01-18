	db DEX_VENUSAUR ; pokedex id

	db  80,  82,  83,  80, 100
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 208 ; base exp

	INCBIN "gfx/pokemon/front/venusaur.pic", 0, 1 ; sprite dimensions
	dw VenusaurPicFront, VenusaurPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SLUDGE_BOMB, GIGA_DRAIN, SOLARBEAM, EARTHQUAKE, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, REST, BULLET_SEED, SUBSTITUTE, CUT, STRENGTH
	; end

	db BANK(VenusaurPicFront)
	assert BANK(VenusaurPicFront) == BANK(VenusaurPicBack)
