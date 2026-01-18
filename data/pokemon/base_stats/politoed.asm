	db DEX_POLITOED ; pokedex id

	db  90,  75,  75,  70, 100
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 225 ; base exp

	INCBIN "gfx/pokemon/front/politoed.pic", 0, 1 ; sprite dimensions
	dw PolitoedPicFront, PolitoedPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, SUPERPOWER, COUNTER, MUD_SLAP, EARTHQUAKE, FISSURE, PSYCHIC_M, CHARM, DOUBLE_TEAM, REFLECT, ICE_PUNCH, SWIFT, REST, SUBSTITUTE, SURF, STRENGTH
	; end

	db BANK(PolitoedPicFront)
	assert BANK(PolitoedPicFront) == BANK(PolitoedPicBack)
