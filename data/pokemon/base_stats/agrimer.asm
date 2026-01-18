	db DEX_AGRIMER ; pokedex id

	db  80,  80,  50,  25,  40
	;   hp  atk  def  spd  spc

	db POISON, DARK ; type
	db 190 ; catch rate
	db 90 ; base exp

	INCBIN "gfx/pokemon/front/agrimer.pic", 0, 1 ; sprite dimensions
	dw AGrimerPicFront, AGrimerPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, FLAMETHROWER, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SLUDGE_BOMB, THUNDERPUNCH, MUD_SLAP, GIGA_DRAIN, THUNDERBOLT, THUNDER, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, FIRE_BLAST, SWIFT, SHADOW_BALL, REST, DARK_PULSE, SUBSTITUTE
	; end

	db BANK(AGrimerPicFront)
	assert BANK(AGrimerPicFront) == BANK(AGrimerPicBack)
