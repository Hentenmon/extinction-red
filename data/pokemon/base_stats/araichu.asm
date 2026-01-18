	db DEX_ARAICHU ; pokedex id

	db  60,  85,  50, 110,  95
	;   hp  atk  def  spd  spc

	db ELECTRIC, PSYCHIC_TYPE ; type
	db 75 ; catch rate
	db 122 ; base exp

	INCBIN "gfx/pokemon/front/araichu.pic", 0, 1 ; sprite dimensions
	dw ARaichuPicFront, ARaichuPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, THUNDERPUNCH, MUD_SLAP, THUNDERBOLT, THUNDER, PSYCHIC_M, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, REST, THUNDER_WAVE, SUBSTITUTE, SURF, STRENGTH, FLASH
	; end

	db BANK(ARaichuPicFront)
	assert BANK(ARaichuPicFront) == BANK(ARaichuPicBack)
