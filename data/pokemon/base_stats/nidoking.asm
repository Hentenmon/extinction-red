	db DEX_NIDOKING ; pokedex id

	db  81,  92,  77,  85,  75
	;   hp  atk  def  spd  spc

	db POISON, GROUND ; type
	db 45 ; catch rate
	db 195 ; base exp

	INCBIN "gfx/pokemon/front/nidoking.pic", 0, 1 ; sprite dimensions
	dw NidokingPicFront, NidokingPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, SLUDGE_BOMB, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, SOLARBEAM, THUNDERBOLT, THUNDER, EARTHQUAKE, FISSURE, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, FIRE_BLAST, SWIFT, SHADOW_BALL, REST, SUBSTITUTE, STRENGTH
	; end

	db BANK(NidokingPicFront)
	assert BANK(NidokingPicFront) == BANK(NidokingPicBack)
