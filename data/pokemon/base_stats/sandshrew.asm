	db DEX_SANDSHREW ; pokedex id

	db  50,  75,  85,  40,  30
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 255 ; catch rate
	db 93 ; base exp

	INCBIN "gfx/pokemon/front/sandshrew.pic", 0, 1 ; sprite dimensions
	dw SandshrewPicFront, SandshrewPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SUPERPOWER, COUNTER, MUD_SLAP, EARTHQUAKE, FISSURE, DIG, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, SWIFT, SHADOW_BALL, X_SCISSOR, REST, ROCK_SLIDE, SUBSTITUTE, CUT, STRENGTH
	; end

	db BANK(SandshrewPicFront)
	assert BANK(SandshrewPicFront) == BANK(SandshrewPicBack)
