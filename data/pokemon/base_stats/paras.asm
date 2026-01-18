	db DEX_PARAS ; pokedex id

	db  35,  70,  55,  25,  55
	;   hp  atk  def  spd  spc

	db BUG, GRASS ; type
	db 190 ; catch rate
	db 70 ; base exp

	INCBIN "gfx/pokemon/front/paras.pic", 0, 1 ; sprite dimensions
	dw ParasPicFront, ParasPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SLUDGE_BOMB, MUD_SLAP, GIGA_DRAIN, SOLARBEAM, DIG, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, SWIFT, SHADOW_BALL, X_SCISSOR, REST, BULLET_SEED, SUBSTITUTE, CUT
	; end

	db BANK(ParasPicFront)
	assert BANK(ParasPicFront) == BANK(ParasPicBack)
