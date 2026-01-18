	db DEX_MPINSIR ; pokedex id

	db  65, 155, 120, 105,  90
	;   hp  atk  def  spd  spc

	db BUG, FLYING ; type
	db 45 ; catch rate
	db 200 ; base exp

	INCBIN "gfx/pokemon/front/mpinsir.pic", 0, 1 ; sprite dimensions
	dw MPinsirPicFront, MPinsirPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SWORDS_DANCE, TOXIC, ROOST, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, HURRICANE, HYPER_BEAM, SUPERPOWER, COUNTER, MUD_SLAP, EARTHQUAKE, FISSURE, DOUBLE_TEAM, REFLECT, ROCK_TOMB, SWIFT, SHADOW_BALL, X_SCISSOR, REST, ROCK_SLIDE, SUBSTITUTE, CUT, FLY, STRENGTH
	; end

	db BANK(MPinsirPicFront)
	assert BANK(MPinsirPicFront) == BANK(MPinsirPicBack)
