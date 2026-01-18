	db DEX_SCYTHER ; pokedex id

	db  70, 110,  80, 105,  55
	;   hp  atk  def  spd  spc

	db BUG, FLYING ; type
	db 45 ; catch rate
	db 187 ; base exp

	INCBIN "gfx/pokemon/front/scyther.pic", 0, 1 ; sprite dimensions
	dw ScytherPicFront, ScytherPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SWORDS_DANCE, TOXIC, ROOST, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, HURRICANE, HYPER_BEAM, SUPERPOWER, COUNTER, MUD_SLAP, GIGA_DRAIN, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, X_SCISSOR, REST, SUBSTITUTE, CUT
	; end

	db BANK(ScytherPicFront)
	assert BANK(ScytherPicFront) == BANK(ScytherPicBack)
