	db DEX_MPIDGEOT ; pokedex id

	db  83,  80,  80, 121, 135
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 172 ; base exp

	INCBIN "gfx/pokemon/front/mpidgeot.pic", 0, 1 ; sprite dimensions
	dw MPidgeotPicFront, MPidgeotPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, SHOCK_WAVE, ROOST, AERIAL_ACE, DOUBLE_EDGE, HURRICANE, HYPER_BEAM, MUD_SLAP, THUNDERBOLT, THUNDER, DOUBLE_TEAM, REFLECT, FIRE_BLAST, SWIFT, REST, SUBSTITUTE
	; end

	db BANK(MPidgeotPicFront)
	assert BANK(MPidgeotPicFront) == BANK(MPidgeotPicBack)
