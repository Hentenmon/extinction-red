	db DEX_ARCANINE ; pokedex id

	db  90, 110,  80,  95,  80
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 75 ; catch rate
	db 213 ; base exp

	INCBIN "gfx/pokemon/front/arcanine.pic", 0, 1 ; sprite dimensions
	dw ArcaninePicFront, ArcaninePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, MUD_SLAP, DIG, CHARM, DOUBLE_TEAM, REFLECT, WILL_O_WISP, FIRE_BLAST, SWIFT, SHADOW_BALL, REST, SUBSTITUTE, STRENGTH
	; end

	db BANK(ArcaninePicFront)
	assert BANK(ArcaninePicFront) == BANK(ArcaninePicBack)
