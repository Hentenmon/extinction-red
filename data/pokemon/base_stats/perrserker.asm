	db DEX_PERRSERKER ; pokedex id

	db  70, 110, 100,  50,  60
	;   hp  atk  def  spd  spc

	db STEEL, STEEL ; type
	db 90 ; catch rate
	db 148 ; base exp

	INCBIN "gfx/pokemon/front/perrserker.pic", 0, 1 ; sprite dimensions
	dw PerrserkerPicFront, PerrserkerPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SWORDS_DANCE, TOXIC, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, HYPER_BEAM, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, EARTHQUAKE, FISSURE, DIG, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, SWIFT, SHADOW_BALL, X_SCISSOR, FLASH_CANNON, IRON_TAIL, REST, ROCK_SLIDE, SUBSTITUTE, CUT, STRENGTH
	; end

	db BANK(PerrserkerPicFront)
	assert BANK(PerrserkerPicFront) == BANK(PerrserkerPicBack)
