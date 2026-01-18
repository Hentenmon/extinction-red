	db DEX_STARMIE ; pokedex id

	db  60,  75,  85, 115, 100
	;   hp  atk  def  spd  spc

	db WATER, PSYCHIC_TYPE ; type
	db 60 ; catch rate
	db 207 ; base exp

	INCBIN "gfx/pokemon/front/starmie.pic", 0, 1 ; sprite dimensions
	dw StarmiePicFront, StarmiePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, THUNDERBOLT, THUNDER, PSYCHIC_M, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, DARK_PULSE, SUBSTITUTE, SURF, FLASH
	; end

	db BANK(StarmiePicFront)
	assert BANK(StarmiePicFront) == BANK(StarmiePicBack)
