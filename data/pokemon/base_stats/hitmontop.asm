	db DEX_HITMONTOP ; pokedex id

	db 120, 100,  95,  70,  85
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 139 ; base exp

	INCBIN "gfx/pokemon/front/hitmontop.pic", 0, 1 ; sprite dimensions
	dw HitmontopPicFront, HitmontopPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, TOXIC, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, HYPER_BEAM, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, SWIFT, SHADOW_BALL, REST, ROCK_SLIDE, SUBSTITUTE, STRENGTH
	; end

	db BANK(HitmontopPicFront)
	assert BANK(HitmontopPicFront) == BANK(HitmontopPicBack)
