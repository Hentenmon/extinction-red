	db DEX_RHYHORN ; pokedex id

	db  80,  85,  95,  25,  30
	;   hp  atk  def  spd  spc

	db GROUND, ROCK ; type
	db 120 ; catch rate
	db 135 ; base exp

	INCBIN "gfx/pokemon/front/rhyhorn.pic", 0, 1 ; sprite dimensions
	dw RhyhornPicFront, RhyhornPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, SUPERPOWER, COUNTER, MUD_SLAP, EARTHQUAKE, FISSURE, DIG, DOUBLE_TEAM, REFLECT, ROCK_TOMB, FIRE_BLAST, SWIFT, IRON_TAIL, ROCK_SLIDE, SUBSTITUTE, STRENGTH
	; end

	db BANK(RhyhornPicFront)
	assert BANK(RhyhornPicFront) == BANK(RhyhornPicBack)
