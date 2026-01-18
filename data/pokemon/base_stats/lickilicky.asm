	db DEX_LICKILICKY ; pokedex id

	db 110,  85,  95,  50,  80
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 127 ; base exp

	INCBIN "gfx/pokemon/front/lickilicky.pic", 0, 1 ; sprite dimensions
	dw LickilickyPicFront, LickilickyPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SWORDS_DANCE, FLAMETHROWER, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, SLUDGE_BOMB, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, SOLARBEAM, THUNDERBOLT, THUNDER, EARTHQUAKE, FISSURE, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, FIRE_BLAST, SWIFT, SHADOW_BALL, IRON_TAIL, REST, DRAININGKISS, ROCK_SLIDE, SUBSTITUTE, CUT, SURF, STRENGTH
	; end

	db BANK(LickilickyPicFront)
	assert BANK(LickilickyPicFront) == BANK(LickilickyPicBack)
