	db DEX_MAGMAR ; pokedex id

	db  65,  95,  57,  93,  85
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 167 ; base exp

	INCBIN "gfx/pokemon/front/magmar.pic", 0, 1 ; sprite dimensions
	dw MagmarPicFront, MagmarPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, FLAMETHROWER, TOXIC, BODY_SLAM, DOUBLE_EDGE, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, PSYCHIC_M, CHARM, DOUBLE_TEAM, REFLECT, FIRE_PUNCH, WILL_O_WISP, FIRE_BLAST, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, SUBSTITUTE, STRENGTH
	; end

	db BANK(MagmarPicFront)
	assert BANK(MagmarPicFront) == BANK(MagmarPicBack)
