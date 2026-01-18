	db DEX_KRABBY ; pokedex id

	db  30, 105,  90,  50,  25
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 225 ; catch rate
	db 115 ; base exp

	INCBIN "gfx/pokemon/front/krabby.pic", 0, 1 ; sprite dimensions
	dw KrabbyPicFront, KrabbyPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SWORDS_DANCE, TOXIC, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, SUPERPOWER, COUNTER, MUD_SLAP, DOUBLE_TEAM, REFLECT, ROCK_TOMB, SWIFT, X_SCISSOR, REST, SUBSTITUTE, CUT, SURF, STRENGTH
	; end

	db BANK(KrabbyPicFront)
	assert BANK(KrabbyPicFront) == BANK(KrabbyPicBack)
