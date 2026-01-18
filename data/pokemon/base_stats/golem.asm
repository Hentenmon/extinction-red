	db DEX_GOLEM ; pokedex id

	db  80, 110, 130,  45,  55
	;   hp  atk  def  spd  spc

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 177 ; base exp

	INCBIN "gfx/pokemon/front/golem.pic", 0, 1 ; sprite dimensions
	dw GolemPicFront, GolemPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, EARTHQUAKE, FISSURE, DIG, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, FIRE_BLAST, SWIFT, REST, ROCK_SLIDE, SUBSTITUTE, STRENGTH
	; end

	db BANK(GolemPicFront)
	assert BANK(GolemPicFront) == BANK(GolemPicBack)
