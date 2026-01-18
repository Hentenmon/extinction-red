	db DEX_GRAPIDASH ; pokedex id

	db  65, 100,  70, 105,  80
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, FAIRY ; type
	db 60 ; catch rate
	db 192 ; base exp

	INCBIN "gfx/pokemon/front/grapidash.pic", 0, 1 ; sprite dimensions
	dw GRapidashPicFront, GRapidashPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, MUD_SLAP, PSYCHIC_M, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, THUNDER_WAVE, DRAININGKISS, SUBSTITUTE, STRENGTH, FLASH
	; end

	db BANK(GRapidashPicFront)
	assert BANK(GRapidashPicFront) == BANK(GRapidashPicBack)
