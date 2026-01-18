	db DEX_MAGMORTAR ; pokedex id

	db  75,  95,  67,  83, 125
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 167 ; base exp

	INCBIN "gfx/pokemon/front/magmortar.pic", 0, 1 ; sprite dimensions
	dw MagmortarPicFront, MagmortarPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, FLAMETHROWER, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, PSYCHIC_M, CHARM, DOUBLE_TEAM, REFLECT, FIRE_PUNCH, WILL_O_WISP, FIRE_BLAST, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, SUBSTITUTE, STRENGTH
	; end

	db BANK(MagmortarPicFront)
	assert BANK(MagmortarPicFront) == BANK(MagmortarPicBack)
