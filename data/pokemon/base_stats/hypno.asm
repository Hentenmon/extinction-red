	db DEX_HYPNO ; pokedex id

	db  85,  83,  70,  67, 115
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 75 ; catch rate
	db 165 ; base exp

	INCBIN "gfx/pokemon/front/hypno.pic", 0, 1 ; sprite dimensions
	dw HypnoPicFront, HypnoPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SLUDGE_BOMB, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, PSYCHIC_M, DAZZLE_GLEAM, DOUBLE_TEAM, REFLECT, ICE_PUNCH, FIRE_PUNCH, WILL_O_WISP, SWIFT, SHADOW_BALL, REST, THUNDER_WAVE, DARK_PULSE, SUBSTITUTE, STRENGTH, FLASH
	; end

	db BANK(HypnoPicFront)
	assert BANK(HypnoPicFront) == BANK(HypnoPicBack)
