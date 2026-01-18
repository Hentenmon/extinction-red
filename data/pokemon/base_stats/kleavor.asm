	db DEX_KLEAVOR ; pokedex id

	db  70, 135,  95,  85,  45
	;   hp  atk  def  spd  spc

	db BUG, FLYING ; type
	db 15 ; catch rate
	db 187 ; base exp

	INCBIN "gfx/pokemon/front/kleavor.pic", 0, 1 ; sprite dimensions
	dw KleavorPicFront, KleavorPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SUPERPOWER, COUNTER, MUD_SLAP, GIGA_DRAIN, DOUBLE_TEAM, ROCK_TOMB, REFLECT, SWIFT, SHADOW_BALL, X_SCISSOR, REST, ROCK_SLIDE, SUBSTITUTE, CUT
	; end

	db BANK(KleavorPicFront)
	assert BANK(KleavorPicFront) == BANK(KleavorPicBack)
