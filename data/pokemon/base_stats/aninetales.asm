	db DEX_ANINETALES ; pokedex id

	db  73,  67,  75, 109, 100
	;   hp  atk  def  spd  spc

	db ICE, FAIRY ; type
	db 75 ; catch rate
	db 178 ; base exp

	INCBIN "gfx/pokemon/front/aninetales.pic", 0, 1 ; sprite dimensions
	dw ANinetalesPicFront, ANinetalesPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM, BLIZZARD, HYPER_BEAM, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, REST, DRAININGKISS, SUBSTITUTE
	; end

	db BANK(ANinetalesPicFront)
	assert BANK(ANinetalesPicFront) == BANK(ANinetalesPicBack)
