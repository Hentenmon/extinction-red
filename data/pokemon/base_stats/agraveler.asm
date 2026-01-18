	db DEX_AGRAVELER ; pokedex id

	db  55,  95, 115,  35,  45
	;   hp  atk  def  spd  spc

	db ROCK, ELECTRIC ; type
	db 120 ; catch rate
	db 134 ; base exp

	INCBIN "gfx/pokemon/front/agraveler.pic", 0, 1 ; sprite dimensions
	dw AGravelerPicFront, AGravelerPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, THUNDERBOLT, THUNDER, EARTHQUAKE, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, FIRE_BLAST, SWIFT, REST, THUNDER_WAVE, ROCK_SLIDE, SUBSTITUTE, STRENGTH
	; end

	db BANK(AGravelerPicFront)
	assert BANK(AGravelerPicFront) == BANK(AGravelerPicBack)
