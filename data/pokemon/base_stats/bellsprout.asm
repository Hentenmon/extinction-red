	db DEX_BELLSPROUT ; pokedex id

	db  50,  75,  35,  40,  70
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 255 ; catch rate
	db 84 ; base exp

	INCBIN "gfx/pokemon/front/bellsprout.pic", 0, 1 ; sprite dimensions
	dw BellsproutPicFront, BellsproutPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SLUDGE_BOMB, MUD_SLAP, GIGA_DRAIN, SOLARBEAM, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, X_SCISSOR, REST, BULLET_SEED, SUBSTITUTE, CUT
	; end

	db BANK(BellsproutPicFront)
	assert BANK(BellsproutPicFront) == BANK(BellsproutPicBack)
