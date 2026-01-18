	db DEX_APERSIAN ; pokedex id

	db  65,  60,  60, 115,  75
	;   hp  atk  def  spd  spc

	db DARK, DARK ; type
	db 90 ; catch rate
	db 148 ; base exp

	INCBIN "gfx/pokemon/front/apersian.pic", 0, 1 ; sprite dimensions
	dw APersianPicFront, APersianPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, SUPERPOWER, COUNTER, MUD_SLAP, THUNDERBOLT, THUNDER, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, IRON_TAIL, REST, DARK_PULSE, SUBSTITUTE, CUT
	; end

	db BANK(APersianPicFront)
	assert BANK(APersianPicFront) == BANK(APersianPicBack)
