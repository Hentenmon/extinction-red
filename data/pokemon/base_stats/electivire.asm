	db DEX_ELECTIVIRE ; pokedex id

	db  75, 123,  67,  95,  95
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 30 ; catch rate
	db 199 ; base exp

	INCBIN "gfx/pokemon/front/electivire.pic", 0, 1 ; sprite dimensions
	dw ElectivirePicFront, ElectivirePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, THUNDERBOLT, THUNDER, CHARM, DOUBLE_TEAM, REFLECT, FIRE_PUNCH, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, THUNDER_WAVE, SUBSTITUTE, STRENGTH, FLASH
	; end

	db BANK(ElectivirePicFront)
	assert BANK(ElectivirePicFront) == BANK(ElectivirePicBack)
