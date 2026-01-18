	db DEX_PIKACHU ; pokedex id

	db  35,  55,  30,  90,  50
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 82 ; base exp

	INCBIN "gfx/pokemon/front/pikachu.pic", 0, 1 ; sprite dimensions
	dw PikachuPicFront, PikachuPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, THUNDERPUNCH, MUD_SLAP, THUNDERBOLT, THUNDER, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, REST, THUNDER_WAVE, SUBSTITUTE, SURF, STRENGTH, FLASH
	; end

	db BANK(PikachuPicFront)
	assert BANK(PikachuPicFront) == BANK(PikachuPicBack)
