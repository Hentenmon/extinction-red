	db DEX_DROWZEE ; pokedex id

	db  60,  48,  45,  42,  90
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 190 ; catch rate
	db 102 ; base exp

	INCBIN "gfx/pokemon/front/drowzee.pic", 0, 1 ; sprite dimensions
	dw DrowzeePicFront, DrowzeePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, TOXIC, BODY_SLAM, DOUBLE_EDGE, SLUDGE_BOMB, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, PSYCHIC_M, DAZZLE_GLEAM, DOUBLE_TEAM, REFLECT, ICE_PUNCH, FIRE_PUNCH, WILL_O_WISP, SWIFT, SHADOW_BALL, REST, THUNDER_WAVE, DARK_PULSE, SUBSTITUTE, STRENGTH, FLASH
	; end

	db BANK(DrowzeePicFront)
	assert BANK(DrowzeePicFront) == BANK(DrowzeePicBack)
