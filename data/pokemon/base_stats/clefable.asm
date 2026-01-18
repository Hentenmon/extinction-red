	db DEX_CLEFABLE ; pokedex id

	db  95,  70,  73,  60,  85
	;   hp  atk  def  spd  spc

	db FAIRY, FAIRY ; type
	db 25 ; catch rate
	db 129 ; base exp

	INCBIN "gfx/pokemon/front/clefable.pic", 0, 1 ; sprite dimensions
	dw ClefablePicFront, ClefablePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, FLAMETHROWER, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, SUPERPOWER, COUNTER, THUNDERPUNCH, SOLARBEAM, THUNDERBOLT, THUNDER, PSYCHIC_M, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, ICE_PUNCH, FIRE_PUNCH, FIRE_BLAST, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, THUNDER_WAVE, DRAININGKISS, SUBSTITUTE, STRENGTH
	; end

	db BANK(ClefablePicFront)
	assert BANK(ClefablePicFront) == BANK(ClefablePicBack)
