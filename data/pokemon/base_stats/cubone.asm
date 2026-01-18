	db DEX_CUBONE ; pokedex id

	db  50,  50,  95,  35,  40
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 190 ; catch rate
	db 87 ; base exp

	INCBIN "gfx/pokemon/front/cubone.pic", 0, 1 ; sprite dimensions
	dw CubonePicFront, CubonePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SWORDS_DANCE, FLAMETHROWER, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM, BLIZZARD, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, THUNDERBOLT, THUNDER, EARTHQUAKE, FISSURE, DIG, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, FIRE_BLAST, SWIFT, SHADOW_BALL, IRON_TAIL, REST, ROCK_SLIDE, SUBSTITUTE, STRENGTH
	; end

	db BANK(CubonePicFront)
	assert BANK(CubonePicFront) == BANK(CubonePicBack)
