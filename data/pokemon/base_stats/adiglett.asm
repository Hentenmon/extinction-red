	db DEX_ADIGLETT ; pokedex id

	db  10,  55,  30,  90,  45
	;   hp  atk  def  spd  spc

	db GROUND, STEEL ; type
	db 255 ; catch rate
	db 81 ; base exp

	INCBIN "gfx/pokemon/front/adiglett.pic", 0, 1 ; sprite dimensions
	dw ADiglettPicFront, ADiglettPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, BODY_SLAM, DOUBLE_EDGE, SLUDGE_BOMB, MUD_SLAP, EARTHQUAKE, FISSURE, DIG, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, SWIFT, REST, ROCK_SLIDE, SUBSTITUTE, CUT
	; end

	db BANK(ADiglettPicFront)
	assert BANK(ADiglettPicFront) == BANK(ADiglettPicBack)
