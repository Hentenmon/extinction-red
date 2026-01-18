	db DEX_RHYPERIOR ; pokedex id

	db 115, 140, 130,  40,  55
	;   hp  atk  def  spd  spc

	db GROUND, ROCK ; type
	db 30 ; catch rate
	db 241 ; base exp

	INCBIN "gfx/pokemon/front/rhyperior.pic", 0, 1 ; sprite dimensions
	dw RhyperiorPicFront, RhyperiorPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, SUPERPOWER, COUNTER, MUD_SLAP, EARTHQUAKE, FISSURE, DIG, DOUBLE_TEAM, REFLECT, ROCK_TOMB, FIRE_BLAST, SWIFT, IRON_TAIL, ROCK_SLIDE, SUBSTITUTE, SURF, STRENGTH
	; end

	db BANK(RhyperiorPicFront)
	assert BANK(RhyperiorPicFront) == BANK(RhyperiorPicBack)
