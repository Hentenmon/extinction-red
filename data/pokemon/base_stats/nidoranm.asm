	db DEX_NIDORAN_M ; pokedex id

	db  46,  57,  40,  50,  40
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 235 ; catch rate
	db 60 ; base exp

	INCBIN "gfx/pokemon/front/nidoranm.pic", 0, 1 ; sprite dimensions
	dw NidoranMPicFront, NidoranMPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, SLUDGE_BOMB, SUPERPOWER, COUNTER, MUD_SLAP, SOLARBEAM, THUNDERBOLT, THUNDER, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, FIRE_BLAST, SWIFT, SHADOW_BALL, REST, SUBSTITUTE, STRENGTH
	; end

	db BANK(NidoranMPicFront)
	assert BANK(NidoranMPicFront) == BANK(NidoranMPicBack)
