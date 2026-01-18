	db DEX_ANNIHILAPE ; pokedex id

	db 110, 115,  80,  90,  90
	;   hp  atk  def  spd  spc

	db FIGHTING, GHOST ; type
	db 45 ; catch rate
	db 225 ; base exp

	INCBIN "gfx/pokemon/front/annihilape.pic", 0, 1 ; sprite dimensions
	dw AnnihilapePicFront, AnnihilapePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SHOCK_WAVE, TOXIC, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, HYPER_BEAM, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, THUNDERBOLT, THUNDER, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, SWIFT, SHADOW_BALL, IRON_TAIL, REST, ROCK_SLIDE, SUBSTITUTE, STRENGTH
	; end

	db BANK(AnnihilapePicFront)
	assert BANK(AnnihilapePicFront) == BANK(AnnihilapePicBack)
