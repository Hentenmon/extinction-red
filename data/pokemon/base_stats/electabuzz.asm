	db DEX_ELECTABUZZ ; pokedex id

	db  65,  83,  57, 105,  85
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 156 ; base exp

	INCBIN "gfx/pokemon/front/electabuzz.pic", 0, 1 ; sprite dimensions
	dw ElectabuzzPicFront, ElectabuzzPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, THUNDERBOLT, THUNDER, CHARM, DOUBLE_TEAM, REFLECT, FIRE_PUNCH, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, THUNDER_WAVE, SUBSTITUTE, STRENGTH, FLASH
	; end

	db BANK(ElectabuzzPicFront)
	assert BANK(ElectabuzzPicFront) == BANK(ElectabuzzPicBack)
