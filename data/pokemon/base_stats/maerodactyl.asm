	db DEX_MAERODACTYL ; pokedex id

	db  80, 135,  85, 150,  70
	;   hp  atk  def  spd  spc

	db ROCK, FLYING ; type
	db 45 ; catch rate
	db 202 ; base exp

	INCBIN "gfx/pokemon/front/maerodactyl.pic", 0, 1 ; sprite dimensions
	dw MAerodactylPicFront, MAerodactylPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, TOXIC, ROOST, AERIAL_ACE, DOUBLE_EDGE, HURRICANE, HYPER_BEAM, MUD_SLAP, DRAGONBREATH, EARTHQUAKE, DOUBLE_TEAM, REFLECT, ROCK_TOMB, FIRE_BLAST, SWIFT, IRON_TAIL, REST, ROCK_SLIDE, SUBSTITUTE, FLY, STRENGTH
	; end

	db BANK(MAerodactylPicFront)
	assert BANK(MAerodactylPicFront) == BANK(MAerodactylPicBack)
