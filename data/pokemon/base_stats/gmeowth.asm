	db DEX_GMEOWTH ; pokedex id

	db  50,  65,  55,  40,  40
	;   hp  atk  def  spd  spc

	db STEEL, STEEL ; type
	db 255 ; catch rate
	db 69 ; base exp

	INCBIN "gfx/pokemon/front/gmeowth.pic", 0, 1 ; sprite dimensions
	dw GMeowthPicFront, GMeowthPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SWORDS_DANCE, TOXIC, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, EARTHQUAKE, FISSURE, DIG, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, SWIFT, SHADOW_BALL, X_SCISSOR, FLASH_CANNON, IRON_TAIL, REST, ROCK_SLIDE, SUBSTITUTE, CUT, STRENGTH
	; end

	db BANK(GMeowthPicFront)
	assert BANK(GMeowthPicFront) == BANK(GMeowthPicBack)
