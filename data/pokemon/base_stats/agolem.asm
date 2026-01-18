	db DEX_AGOLEM ; pokedex id

	db  80, 120, 130,  45,  55
	;   hp  atk  def  spd  spc

	db ROCK, ELECTRIC ; type
	db 45 ; catch rate
	db 177 ; base exp

	INCBIN "gfx/pokemon/front/agolem.pic", 0, 1 ; sprite dimensions
	dw AGolemPicFront, AGolemPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, THUNDERBOLT, THUNDER, EARTHQUAKE, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, FIRE_BLAST, SWIFT, REST, THUNDER_WAVE, ROCK_SLIDE, SUBSTITUTE, STRENGTH
	; end

	db BANK(AGolemPicFront)
	assert BANK(AGolemPicFront) == BANK(AGolemPicBack)
