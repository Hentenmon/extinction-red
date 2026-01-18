	db DEX_OMANYTE ; pokedex id

	db  35,  40, 100,  35,  90
	;   hp  atk  def  spd  spc

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 120 ; base exp

	INCBIN "gfx/pokemon/front/omanyte.pic", 0, 1 ; sprite dimensions
	dw OmanytePicFront, OmanytePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, MUD_SLAP, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, SWIFT, FLASH_CANNON, REST, ROCK_SLIDE, SUBSTITUTE, SURF, STRENGTH
	; end

	db BANK(OmanytePicFront)
	assert BANK(OmanytePicFront) == BANK(OmanytePicBack)
