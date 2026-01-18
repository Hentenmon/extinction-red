	db DEX_MOLTRES ; pokedex id

	db  90, 100,  90,  90, 125
	;   hp  atk  def  spd  spc

	db FIRE, FLYING ; type
	db 3 ; catch rate
	db 217 ; base exp

	INCBIN "gfx/pokemon/front/moltres.pic", 0, 1 ; sprite dimensions
	dw MoltresPicFront, MoltresPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, TOXIC, ROOST, AERIAL_ACE, DOUBLE_EDGE, HURRICANE, HYPER_BEAM, SOLARBEAM, DOUBLE_TEAM, REFLECT, WILL_O_WISP, FIRE_BLAST, SWIFT, REST, SUBSTITUTE, FLY
	; end

	db BANK(MoltresPicFront)
	assert BANK(MoltresPicFront) == BANK(MoltresPicBack)
