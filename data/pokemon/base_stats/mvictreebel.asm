	db DEX_MVICTREEBEL ; pokedex id

	db  80, 125,  85,  70, 135
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 191 ; base exp

	INCBIN "gfx/pokemon/front/mvictreebel.pic", 0, 1 ; sprite dimensions
	dw MVictreebelPicFront, MVictreebelPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SLUDGE_BOMB, MUD_SLAP, GIGA_DRAIN, SOLARBEAM, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, X_SCISSOR, REST, BULLET_SEED, SUBSTITUTE, CUT
	; end

	db BANK(MVictreebelPicFront)
	assert BANK(MVictreebelPicFront) == BANK(VictreebelPicBack)
