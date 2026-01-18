	db DEX_NIDORAN_F ; pokedex id

	db  55,  47,  52,  41,  40
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 235 ; catch rate
	db 59 ; base exp

	INCBIN "gfx/pokemon/front/nidoranf.pic", 0, 1 ; sprite dimensions
	dw NidoranFPicFront, NidoranFPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, SLUDGE_BOMB, SUPERPOWER, COUNTER, MUD_SLAP, SOLARBEAM, THUNDERBOLT, THUNDER, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, FIRE_BLAST, SWIFT, SHADOW_BALL, REST, DRAININGKISS, SUBSTITUTE, STRENGTH
	; end

	db BANK(NidoranFPicFront)
	assert BANK(NidoranFPicFront) == BANK(NidoranFPicBack)
