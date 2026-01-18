	db DEX_RAICHU ; pokedex id

	db  90, 110,  75, 100, 100
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 75 ; catch rate
	db 122 ; base exp

	INCBIN "gfx/pokemon/front/raichu.pic", 0, 1 ; sprite dimensions
	dw RaichuPicFront, RaichuPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, THUNDERPUNCH, MUD_SLAP, THUNDERBOLT, THUNDER, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, REST, THUNDER_WAVE, SUBSTITUTE, SURF, STRENGTH, FLASH
	; end

	db BANK(RaichuPicFront)
	assert BANK(RaichuPicFront) == BANK(RaichuPicBack)
