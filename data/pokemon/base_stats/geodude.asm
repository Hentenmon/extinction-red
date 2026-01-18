	db DEX_GEODUDE ; pokedex id

	db  40,  80, 100,  20,  30
	;   hp  atk  def  spd  spc

	db ROCK, GROUND ; type
	db 255 ; catch rate
	db 86 ; base exp

	INCBIN "gfx/pokemon/front/geodude.pic", 0, 1 ; sprite dimensions
	dw GeodudePicFront, GeodudePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, TOXIC, BODY_SLAM, DOUBLE_EDGE, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, EARTHQUAKE, FISSURE, DIG, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, FIRE_BLAST, SWIFT, REST, ROCK_SLIDE, SUBSTITUTE, STRENGTH
	; end

	db BANK(GeodudePicFront)
	assert BANK(GeodudePicFront) == BANK(GeodudePicBack)
