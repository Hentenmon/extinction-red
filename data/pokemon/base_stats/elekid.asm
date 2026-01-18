	db DEX_ELEKID ; pokedex id

	db  45,  63,  37,  95,  55
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 156 ; base exp

	INCBIN "gfx/pokemon/front/elekid.pic", 0, 1 ; sprite dimensions
	dw ElekidPicFront, ElekidPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, THUNDERBOLT, THUNDER, CHARM, DOUBLE_TEAM, REFLECT, FIRE_PUNCH, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, THUNDER_WAVE, SUBSTITUTE, STRENGTH, FLASH
	; end

	db BANK(ElekidPicFront)
	assert BANK(ElekidPicFront) == BANK(ElekidPicBack)
