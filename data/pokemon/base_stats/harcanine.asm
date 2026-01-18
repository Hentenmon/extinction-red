	db DEX_HARCANINE ; pokedex id

	db  95, 115,  80,  90,  80
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 75 ; catch rate
	db 213 ; base exp

	INCBIN "gfx/pokemon/front/harcanine.pic", 0, 1 ; sprite dimensions
	dw HArcaninePicFront, HArcaninePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, MUD_SLAP, DIG, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, WILL_O_WISP, FIRE_BLAST, SWIFT, SHADOW_BALL, REST, ROCK_SLIDE, SUBSTITUTE, STRENGTH
	; end

	db BANK(HArcaninePicFront)
	assert BANK(HArcaninePicFront) == BANK(HArcaninePicBack)
