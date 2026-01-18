	db DEX_MGENGAR ; pokedex id

	db  60,  65,  80, 130, 170
	;   hp  atk  def  spd  spc

	db GHOST, POISON ; type
	db 45 ; catch rate
	db 190 ; base exp

	INCBIN "gfx/pokemon/front/mgengar.pic", 0, 1 ; sprite dimensions
	dw MGengarPicFront, MGengarPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SHOCK_WAVE, TOXIC, DOUBLE_EDGE, HYPER_BEAM, SLUDGE_BOMB, SUPERPOWER, COUNTER, THUNDERPUNCH, GIGA_DRAIN, THUNDERBOLT, THUNDER, PSYCHIC_M, DAZZLE_GLEAM, DOUBLE_TEAM, REFLECT, ICE_PUNCH, FIRE_PUNCH, WILL_O_WISP, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, DARK_PULSE, SUBSTITUTE, STRENGTH
	; end

	db BANK(MGengarPicFront)
	assert BANK(MGengarPicFront) == BANK(MGengarPicBack)
