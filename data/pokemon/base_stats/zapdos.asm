	db DEX_ZAPDOS ; pokedex id

	db  90,  90,  85, 100, 125
	;   hp  atk  def  spd  spc

	db ELECTRIC, FLYING ; type
	db 3 ; catch rate
	db 216 ; base exp

	INCBIN "gfx/pokemon/front/zapdos.pic", 0, 1 ; sprite dimensions
	dw ZapdosPicFront, ZapdosPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, ROOST, AERIAL_ACE, DOUBLE_EDGE, HURRICANE, HYPER_BEAM, THUNDERBOLT, THUNDER, DOUBLE_TEAM, REFLECT, SWIFT, REST, THUNDER_WAVE, FLY
	; end

	db BANK(ZapdosPicFront)
	assert BANK(ZapdosPicFront) == BANK(ZapdosPicBack)
