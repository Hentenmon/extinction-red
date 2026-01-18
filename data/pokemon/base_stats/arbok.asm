	db DEX_ARBOK ; pokedex id

	db  70,  95,  79,  90,  75
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 90 ; catch rate
	db 147 ; base exp

	INCBIN "gfx/pokemon/front/arbok.pic", 0, 1 ; sprite dimensions
	dw ArbokPicFront, ArbokPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SLUDGE_BOMB, COUNTER, MUD_SLAP, GIGA_DRAIN, EARTHQUAKE, FISSURE, DOUBLE_TEAM, REFLECT, ROCK_TOMB, FIRE_BLAST, SWIFT, SHADOW_BALL, IRON_TAIL, REST, DARK_PULSE, ROCK_SLIDE, SUBSTITUTE
	; end

	db BANK(ArbokPicFront)
	assert BANK(ArbokPicFront) == BANK(ArbokPicBack)
