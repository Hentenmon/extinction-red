	db DEX_VENOMOTH ; pokedex id

	db  80,  75,  70, 100, 100
	;   hp  atk  def  spd  spc

	db BUG, POISON ; type
	db 75 ; catch rate
	db 138 ; base exp

	INCBIN "gfx/pokemon/front/venomoth.pic", 0, 1 ; sprite dimensions
	dw VenomothPicFront, VenomothPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, ROOST, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, HURRICANE, HYPER_BEAM, SLUDGE_BOMB, MUD_SLAP, GIGA_DRAIN, SOLARBEAM, PSYCHIC_M, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, REST, DARK_PULSE, SUBSTITUTE, CUT, FLASH
	; end

	db BANK(VenomothPicFront)
	assert BANK(VenomothPicFront) == BANK(VenomothPicBack)
