	db DEX_ESPEON ; pokedex id

	db  65,  65,  60, 110, 130
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 184 ; base exp

	INCBIN "gfx/pokemon/front/espeon.pic", 0, 1 ; sprite dimensions
	dw EspeonPicFront, EspeonPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, MUD_SLAP, DIG, PSYCHIC_M, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, REST, SUBSTITUTE, FLASH
	; end

	db BANK(EspeonPicFront)
	assert BANK(EspeonPicFront) == BANK(EspeonPicBack)
