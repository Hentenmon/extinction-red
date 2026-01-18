	db DEX_BELLOSSOM ; pokedex id

	db  75,  80,  85,  50, 120
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 184 ; base exp

	INCBIN "gfx/pokemon/front/bellossom.pic", 0, 1 ; sprite dimensions
	dw BellossomPicFront, BellossomPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SWORDS_DANCE, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, MUD_SLAP, GIGA_DRAIN, SOLARBEAM, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, REST, BULLET_SEED, SUBSTITUTE, CUT
	; end

	db BANK(BellossomPicFront)
	assert BANK(BellossomPicFront) == BANK(BellossomPicBack)
