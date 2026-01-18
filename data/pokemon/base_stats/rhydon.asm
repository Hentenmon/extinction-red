	db DEX_RHYDON ; pokedex id

	db 105, 130, 120,  40,  45
	;   hp  atk  def  spd  spc

	db GROUND, ROCK ; type
	db 60 ; catch rate
	db 204 ; base exp

	INCBIN "gfx/pokemon/front/rhydon.pic", 0, 1 ; sprite dimensions
	dw RhydonPicFront, RhydonPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, SUPERPOWER, COUNTER, MUD_SLAP, EARTHQUAKE, FISSURE, DIG, DOUBLE_TEAM, REFLECT, ROCK_TOMB, FIRE_BLAST, SWIFT, IRON_TAIL, ROCK_SLIDE, SUBSTITUTE, SURF, STRENGTH
	; end

	db BANK(RhydonPicFront)
	assert BANK(RhydonPicFront) == BANK(RhydonPicBack)
