	db DEX_MVENUSAUR ; pokedex id

	db  80, 100, 123,  80, 122
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 208 ; base exp

	INCBIN "gfx/pokemon/front/mvenusaur.pic", 0, 1 ; sprite dimensions
	dw MVenusaurPicFront, MVenusaurPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SLUDGE_BOMB, GIGA_DRAIN, SOLARBEAM, EARTHQUAKE, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, REST, BULLET_SEED, SUBSTITUTE, CUT, STRENGTH
	; end

	db BANK(MVenusaurPicFront)
	assert BANK(MVenusaurPicFront) == BANK(MVenusaurPicBack)
