	db DEX_KINGLER ; pokedex id

	db  55, 130, 115,  75,  80
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 60 ; catch rate
	db 206 ; base exp

	INCBIN "gfx/pokemon/front/kingler.pic", 0, 1 ; sprite dimensions
	dw KinglerPicFront, KinglerPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SWORDS_DANCE, TOXIC, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, SUPERPOWER, COUNTER, MUD_SLAP, DOUBLE_TEAM, REFLECT, ROCK_TOMB, SWIFT, X_SCISSOR, REST, SUBSTITUTE, CUT, SURF, STRENGTH
	; end

	db BANK(KinglerPicFront)
	assert BANK(KinglerPicFront) == BANK(KinglerPicBack)
