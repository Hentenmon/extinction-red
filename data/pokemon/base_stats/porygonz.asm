	db DEX_PORYGONZ ; pokedex id

	db  85,  80,  70,  90, 135
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 130 ; base exp

	INCBIN "gfx/pokemon/front/porygonz.pic", 0, 1 ; sprite dimensions
	dw PorygonZPicFront, PorygonZPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM, BLIZZARD, HYPER_BEAM, SOLARBEAM, THUNDERBOLT, THUNDER, PSYCHIC_M, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, THUNDER_WAVE, DARK_PULSE, SUBSTITUTE, FLASH
	; end

	db BANK(PorygonZPicFront)
	assert BANK(PorygonZPicFront) == BANK(PorygonZPicBack)
