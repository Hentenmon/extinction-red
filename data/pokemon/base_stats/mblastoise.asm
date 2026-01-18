	db DEX_MBLASTOISE ; pokedex id

	db  79, 103, 120,  78, 135
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 210 ; base exp

	INCBIN "gfx/pokemon/front/mblastoise.pic", 0, 1 ; sprite dimensions
	dw MBlastoisePicFront, MBlastoisePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, MUD_SLAP, EARTHQUAKE, FISSURE, DIG, CHARM, DOUBLE_TEAM, REFLECT, ICE_PUNCH, FLASH_CANNON, IRON_TAIL, REST, DARK_PULSE, SUBSTITUTE, SURF, STRENGTH
	; end

	db BANK(MBlastoisePicFront)
	assert BANK(MBlastoisePicFront) == BANK(MBlastoisePicBack)
