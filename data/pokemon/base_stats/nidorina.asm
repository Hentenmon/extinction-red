	db DEX_NIDORINA ; pokedex id

	db  70,  62,  67,  56,  55
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 120 ; catch rate
	db 117 ; base exp

	INCBIN "gfx/pokemon/front/nidorina.pic", 0, 1 ; sprite dimensions
	dw NidorinaPicFront, NidorinaPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, SLUDGE_BOMB, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, SOLARBEAM, THUNDERBOLT, THUNDER, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, FIRE_BLAST, SWIFT, SHADOW_BALL, REST, DRAININGKISS, SUBSTITUTE, STRENGTH
	; end

	db BANK(NidorinaPicFront)
	assert BANK(NidorinaPicFront) == BANK(NidorinaPicBack)
