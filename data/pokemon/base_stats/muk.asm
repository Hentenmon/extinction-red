	db DEX_MUK ; pokedex id

	db 105, 105,  75,  50,  65
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 75 ; catch rate
	db 157 ; base exp

	INCBIN "gfx/pokemon/front/muk.pic", 0, 1 ; sprite dimensions
	dw MukPicFront, MukPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, FLAMETHROWER, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SLUDGE_BOMB, THUNDERPUNCH, MUD_SLAP, GIGA_DRAIN, THUNDERBOLT, THUNDER, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, FIRE_BLAST, SWIFT, SHADOW_BALL, REST, DARK_PULSE, SUBSTITUTE
	; end

	db BANK(MukPicFront)
	assert BANK(MukPicFront) == BANK(MukPicBack)
