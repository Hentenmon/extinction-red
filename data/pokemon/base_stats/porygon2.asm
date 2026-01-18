	db DEX_PORYGON2 ; pokedex id

	db  85,  80,  90,  60,  95
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 130 ; base exp

	INCBIN "gfx/pokemon/front/porygon2.pic", 0, 1 ; sprite dimensions
	dw Porygon2PicFront, Porygon2PicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM, BLIZZARD, HYPER_BEAM, SOLARBEAM, THUNDERBOLT, THUNDER, PSYCHIC_M, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, THUNDER_WAVE, DARK_PULSE, SUBSTITUTE, FLASH
	; end

	db BANK(Porygon2PicFront)
	assert BANK(Porygon2PicFront) == BANK(Porygon2PicBack)
