	db DEX_OMASTAR ; pokedex id

	db  80,  80, 135,  65, 125
	;   hp  atk  def  spd  spc

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 199 ; base exp

	INCBIN "gfx/pokemon/front/omastar.pic", 0, 1 ; sprite dimensions
	dw OmastarPicFront, OmastarPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, MUD_SLAP, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, SWIFT, FLASH_CANNON, REST, ROCK_SLIDE, SUBSTITUTE, SURF, STRENGTH
	; end

	db BANK(OmastarPicFront)
	assert BANK(OmastarPicFront) == BANK(OmastarPicBack)
