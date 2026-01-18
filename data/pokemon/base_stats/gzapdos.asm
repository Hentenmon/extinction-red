	db DEX_GZAPDOS ; pokedex id

	db  90, 125,  90, 100,  85
	;   hp  atk  def  spd  spc

	db FIGHTING, FLYING ; type
	db 3 ; catch rate
	db 216 ; base exp

	INCBIN "gfx/pokemon/front/gzapdos.pic", 0, 1 ; sprite dimensions
	dw GZapdosPicFront, GZapdosPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, ROOST, AERIAL_ACE, DOUBLE_EDGE, HURRICANE, HYPER_BEAM, SUPERPOWER, COUNTER, DOUBLE_TEAM, REFLECT, SWIFT, REST, FLY
	; end

	db BANK(GZapdosPicFront)
	assert BANK(GZapdosPicFront) == BANK(GZapdosPicBack)
