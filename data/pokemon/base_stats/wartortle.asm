	db DEX_WARTORTLE ; pokedex id

	db  59,  63,  80,  58,  65
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 143 ; base exp

	INCBIN "gfx/pokemon/front/wartortle.pic", 0, 1 ; sprite dimensions
	dw WartortlePicFront, WartortlePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, MUD_SLAP, DIG, CHARM, DOUBLE_TEAM, REFLECT, ICE_PUNCH, FLASH_CANNON, IRON_TAIL, REST, DARK_PULSE, SUBSTITUTE, SURF, STRENGTH
	; end

	db BANK(WartortlePicFront)
	assert BANK(WartortlePicFront) == BANK(WartortlePicBack)
