	db DEX_SNORLAX ; pokedex id

	db 160, 110,  65,  30,  65
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 25 ; catch rate
	db 154 ; base exp

	INCBIN "gfx/pokemon/front/snorlax.pic", 0, 1 ; sprite dimensions
	dw SnorlaxPicFront, SnorlaxPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, FLAMETHROWER, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, SLUDGE_BOMB, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, SOLARBEAM, EARTHQUAKE, FISSURE, PSYCHIC_M, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, FIRE_BLAST, SWIFT, SHADOW_BALL, REST, DRAININGKISS, ROCK_SLIDE, SUBSTITUTE, SURF, STRENGTH
	; end

	db BANK(SnorlaxPicFront)
	assert BANK(SnorlaxPicFront) == BANK(SnorlaxPicBack)
