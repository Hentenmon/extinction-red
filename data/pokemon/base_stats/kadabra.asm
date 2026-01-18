	db DEX_KADABRA ; pokedex id

	db  40,  35,  30, 105, 120
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 100 ; catch rate
	db 145 ; base exp

	INCBIN "gfx/pokemon/front/kadabra.pic", 0, 1 ; sprite dimensions
	dw KadabraPicFront, KadabraPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, TOXIC, BODY_SLAM, DOUBLE_EDGE, COUNTER, THUNDERPUNCH, MUD_SLAP, DIG, PSYCHIC_M, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, ICE_PUNCH, FIRE_PUNCH, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, THUNDER_WAVE, DARK_PULSE, SUBSTITUTE, FLASH
	; end

	db BANK(KadabraPicFront)
	assert BANK(KadabraPicFront) == BANK(KadabraPicBack)
