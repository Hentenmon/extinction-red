	db DEX_ASANDSHREW ; pokedex id

	db  50,  75,  90,  40,  10
	;   hp  atk  def  spd  spc

	db ICE, STEEL ; type
	db 255 ; catch rate
	db 93 ; base exp

	INCBIN "gfx/pokemon/front/asandshrew.pic", 0, 1 ; sprite dimensions
	dw ASandshrewPicFront, ASandshrewPicBack

	db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM, BLIZZARD, SUPERPOWER, COUNTER, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, SWIFT, X_SCISSOR, FLASH_CANNON, IRON_TAIL, REST, ROCK_SLIDE, SUBSTITUTE, CUT, STRENGTH
	; end

	db BANK(ASandshrewPicFront)
	assert BANK(ASandshrewPicFront) == BANK(ASandshrewPicBack)
