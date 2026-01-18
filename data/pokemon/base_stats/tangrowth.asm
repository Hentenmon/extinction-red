	db DEX_TANGROWTH ; pokedex id

	db 100, 100, 125,  50, 110
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 30 ; catch rate
	db 187 ; base exp

	INCBIN "gfx/pokemon/front/tangrowth.pic", 0, 1 ; sprite dimensions
	dw TangrowthPicFront, TangrowthPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SLUDGE_BOMB, SUPERPOWER, COUNTER, MUD_SLAP, GIGA_DRAIN, SOLARBEAM, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, REST, BULLET_SEED, SUBSTITUTE, CUT, STRENGTH
	; end

	db BANK(TangrowthPicFront)
	assert BANK(TangrowthPicFront) == BANK(TangrowthPicBack)
