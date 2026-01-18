	db DEX_BLASTOISE ; pokedex id

	db  79,  83, 100,  78,  85
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 210 ; base exp

	INCBIN "gfx/pokemon/front/blastoise.pic", 0, 1 ; sprite dimensions
	dw BlastoisePicFront, BlastoisePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, SUPERPOWER, COUNTER, MUD_SLAP, EARTHQUAKE, FISSURE, DIG, CHARM, DOUBLE_TEAM, REFLECT, ICE_PUNCH, FLASH_CANNON, IRON_TAIL, REST, DARK_PULSE, SUBSTITUTE, SURF, STRENGTH
	; end

	db BANK(BlastoisePicFront)
	assert BANK(BlastoisePicFront) == BANK(BlastoisePicBack)
