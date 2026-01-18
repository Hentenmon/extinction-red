	db DEX_PARASECT ; pokedex id

	db  80, 105, 110,  30, 100
	;   hp  atk  def  spd  spc

	db BUG, GRASS ; type
	db 75 ; catch rate
	db 128 ; base exp

	INCBIN "gfx/pokemon/front/parasect.pic", 0, 1 ; sprite dimensions
	dw ParasectPicFront, ParasectPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SLUDGE_BOMB, MUD_SLAP, GIGA_DRAIN, SOLARBEAM, DIG, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, SWIFT, SHADOW_BALL, X_SCISSOR, REST, BULLET_SEED, SUBSTITUTE, CUT
	; end

	db BANK(ParasectPicFront)
	assert BANK(ParasectPicFront) == BANK(ParasectPicBack)
