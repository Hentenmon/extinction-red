	db DEX_VENONAT ; pokedex id

	db  60,  55,  50,  45,  40
	;   hp  atk  def  spd  spc

	db BUG, POISON ; type
	db 190 ; catch rate
	db 75 ; base exp

	INCBIN "gfx/pokemon/front/venonat.pic", 0, 1 ; sprite dimensions
	dw VenonatPicFront, VenonatPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SLUDGE_BOMB, MUD_SLAP, GIGA_DRAIN, SOLARBEAM, PSYCHIC_M, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, REST, DARK_PULSE, SUBSTITUTE, CUT, FLASH
	; end

	db BANK(VenonatPicFront)
	assert BANK(VenonatPicFront) == BANK(VenonatPicBack)
