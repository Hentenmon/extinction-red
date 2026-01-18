	db DEX_ASANDSLASH ; pokedex id

	db  75, 100, 120,  65,  25
	;   hp  atk  def  spd  spc

	db ICE, STEEL ; type
	db 90 ; catch rate
	db 163 ; base exp

	INCBIN "gfx/pokemon/front/asandslash.pic", 0, 1 ; sprite dimensions
	dw ASandslashPicFront, ASandslashPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM, BLIZZARD, HYPER_BEAM, SUPERPOWER, COUNTER, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, SWIFT, X_SCISSOR, FLASH_CANNON, IRON_TAIL, REST, ROCK_SLIDE, SUBSTITUTE, CUT, STRENGTH
	; end

	db BANK(ASandslashPicFront)
	assert BANK(ASandslashPicFront) == BANK(ASandslashPicBack)
