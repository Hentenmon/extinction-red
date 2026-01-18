	db DEX_GYARADOS ; pokedex id

	db  95, 155, 109,  81, 130
	;   hp  atk  def  spd  spc

	db WATER, DARK ; type
	db 45 ; catch rate
	db 214 ; base exp

	INCBIN "gfx/pokemon/front/mgyarados.pic", 0, 1 ; sprite dimensions
	dw MGyaradosPicFront, MGyaradosPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, SHOCK_WAVE, TOXIC, ROOST, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, SCALD, HURRICANE, ICE_BEAM, BLIZZARD, HYPER_BEAM, SOLARBEAM, DRAGONBREATH, THUNDERBOLT, THUNDER, EARTHQUAKE, FISSURE, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, FIRE_BLAST, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, THUNDER_WAVE, DARK_PULSE, ROCK_SLIDE, SUBSTITUTE, SURF, STRENGTH
	; end

	db BANK(MGyaradosPicFront)
	assert BANK(MGyaradosPicFront) == BANK(MGyaradosPicBack)
