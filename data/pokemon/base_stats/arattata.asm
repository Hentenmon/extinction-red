	db DEX_ARATTATA ; pokedex id

	db  30,  56,  35,  72,  25
	;   hp  atk  def  spd  spc

	db DARK, NORMAL ; type
	db 255 ; catch rate
	db 57 ; base exp

	INCBIN "gfx/pokemon/front/arattata.pic", 0, 1 ; sprite dimensions
	dw ARattataPicFront, ARattataPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM, BLIZZARD, MUD_SLAP, DIG, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, IRON_TAIL, REST, DARK_PULSE, SUBSTITUTE, CUT
	; end

	db BANK(ARattataPicFront)
	assert BANK(ARattataPicFront) == BANK(ARattataPicBack)
