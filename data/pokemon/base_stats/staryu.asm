	db DEX_STARYU ; pokedex id

	db  30,  45,  55,  85,  70
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 225 ; catch rate
	db 106 ; base exp

	INCBIN "gfx/pokemon/front/staryu.pic", 0, 1 ; sprite dimensions
	dw StaryuPicFront, StaryuPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, THUNDERBOLT, THUNDER, PSYCHIC_M, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, DARK_PULSE, SUBSTITUTE, SURF, FLASH
	; end

	db BANK(StaryuPicFront)
	assert BANK(StaryuPicFront) == BANK(StaryuPicBack)
