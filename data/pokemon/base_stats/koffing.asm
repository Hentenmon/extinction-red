	db DEX_KOFFING ; pokedex id

	db  40,  65,  95,  35,  60
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 190 ; catch rate
	db 114 ; base exp

	INCBIN "gfx/pokemon/front/koffing.pic", 0, 1 ; sprite dimensions
	dw KoffingPicFront, KoffingPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, SHOCK_WAVE, TOXIC, DOUBLE_EDGE, SLUDGE_BOMB, THUNDERBOLT, THUNDER, DOUBLE_TEAM, REFLECT, WILL_O_WISP, FIRE_BLAST, SWIFT, SHADOW_BALL, REST, DARK_PULSE, SUBSTITUTE
	; end

	db BANK(KoffingPicFront)
	assert BANK(KoffingPicFront) == BANK(KoffingPicBack)
