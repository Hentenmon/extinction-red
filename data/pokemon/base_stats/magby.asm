	db DEX_MAGBY ; pokedex id

	db  45,  75,  37,  83,  55
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 73 ; base exp

	INCBIN "gfx/pokemon/front/magby.pic", 0, 1 ; sprite dimensions
	dw MagbyPicFront, MagbyPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, FLAMETHROWER, TOXIC, BODY_SLAM, DOUBLE_EDGE, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, PSYCHIC_M, CHARM, DOUBLE_TEAM, REFLECT, FIRE_PUNCH, WILL_O_WISP, FIRE_BLAST, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, SUBSTITUTE, STRENGTH
	; end

	db BANK(MagbyPicFront)
	assert BANK(MagbyPicFront) == BANK(MagbyPicBack)
