	db DEX_AMAROWAK ; pokedex id

	db  60, 100, 110,  45,  80
	;   hp  atk  def  spd  spc

	db FIRE, GHOST ; type
	db 75 ; catch rate
	db 149 ; base exp

	INCBIN "gfx/pokemon/front/amarowak.pic", 0, 1 ; sprite dimensions
	dw AMarowakPicFront, AMarowakPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SWORDS_DANCE, FLAMETHROWER, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM, BLIZZARD, HYPER_BEAM, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, THUNDERBOLT, THUNDER, EARTHQUAKE, FISSURE, DIG, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, WILL_O_WISP, FIRE_BLAST, SWIFT, SHADOW_BALL, IRON_TAIL, REST, ROCK_SLIDE, SUBSTITUTE, STRENGTH
	; end

	db BANK(AMarowakPicFront)
	assert BANK(AMarowakPicFront) == BANK(AMarowakPicBack)
