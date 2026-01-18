	db DEX_CLEFFA ; pokedex id

	db  50,  25,  28,  15,  45
	;   hp  atk  def  spd  spc

	db FAIRY, FAIRY ; type
	db 150 ; catch rate
	db 44 ; base exp

	INCBIN "gfx/pokemon/front/cleffa.pic", 0, 1 ; sprite dimensions
	dw CleffaPicFront, CleffaPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, FLAMETHROWER, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, COUNTER, THUNDERPUNCH, SOLARBEAM, THUNDERBOLT, THUNDER, PSYCHIC_M, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, ICE_PUNCH, FIRE_PUNCH, FIRE_BLAST, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, THUNDER_WAVE, DRAININGKISS, SUBSTITUTE, STRENGTH
	; end

	db BANK(CleffaPicFront)
	assert BANK(CleffaPicFront) == BANK(CleffaPicBack)
