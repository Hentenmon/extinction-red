	db DEX_SCREAMTAIL ; pokedex id

	db 115,  65,  99, 111, 115
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, FAIRY ; type
	db 50 ; catch rate
	db 230 ; base exp

	INCBIN "gfx/pokemon/front/screamtail.pic", 0, 1 ; sprite dimensions
	dw ScreamTailPicFront, ScreamTailPicBack

	db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, FLAMETHROWER, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, SOLARBEAM, THUNDERBOLT, THUNDER, PSYCHIC_M, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, FIRE_BLAST, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, THUNDER_WAVE, DARK_PULSE, DRAININGKISS, SUBSTITUTE, STRENGTH, FLASH
	; end

	db BANK(ScreamTailPicFront)
	assert BANK(ScreamTailPicFront) == BANK(ScreamTailPicBack)
