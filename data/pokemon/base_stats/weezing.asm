	db DEX_WEEZING ; pokedex id

	db  85, 100, 120,  60,  85
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 60 ; catch rate
	db 173 ; base exp

	INCBIN "gfx/pokemon/front/weezing.pic", 0, 1 ; sprite dimensions
	dw WeezingPicFront, WeezingPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, SHOCK_WAVE, TOXIC, DOUBLE_EDGE, HYPER_BEAM, SLUDGE_BOMB, THUNDERBOLT, THUNDER, DOUBLE_TEAM, REFLECT, WILL_O_WISP, FIRE_BLAST, SWIFT, SHADOW_BALL, REST, DARK_PULSE, SUBSTITUTE
	; end

	db BANK(WeezingPicFront)
	assert BANK(WeezingPicFront) == BANK(WeezingPicBack)
