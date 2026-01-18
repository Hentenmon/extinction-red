	db DEX_POLIWRATH ; pokedex id

	db  90,  85,  95,  70,  70
	;   hp  atk  def  spd  spc

	db WATER, FIGHTING ; type
	db 45 ; catch rate
	db 185 ; base exp

	INCBIN "gfx/pokemon/front/poliwrath.pic", 0, 1 ; sprite dimensions
	dw PoliwrathPicFront, PoliwrathPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, SUPERPOWER, COUNTER, MUD_SLAP, EARTHQUAKE, FISSURE, PSYCHIC_M, CHARM, DOUBLE_TEAM, REFLECT, ICE_PUNCH, SWIFT, REST, SUBSTITUTE, SURF, STRENGTH
	; end

	db BANK(PoliwrathPicFront)
	assert BANK(PoliwrathPicFront) == BANK(PoliwrathPicBack)
