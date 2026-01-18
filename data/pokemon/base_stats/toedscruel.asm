	db DEX_TOEDSCRUEL ; pokedex id

	db  80,  70,  65, 100, 120
	;   hp  atk  def  spd  spc

	db GROUND, GRASS ; type
	db 60 ; catch rate
	db 205 ; base exp

	INCBIN "gfx/pokemon/front/toedscruel.pic", 0, 1 ; sprite dimensions
	dw ToedscruelPicFront, ToedscruelPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SLUDGE_BOMB, MUD_SLAP, GIGA_DRAIN, SOLARBEAM, EARTHQUAKE, FISSURE, DIG, DOUBLE_TEAM, REFLECT, ROCK_TOMB, SWIFT, SHADOW_BALL, REST, ROCK_SLIDE, BULLET_SEED, SUBSTITUTE, CUT, STRENGTH
	; end

	db BANK(ToedscruelPicFront)
	assert BANK(ToedscruelPicFront) == BANK(ToedscruelPicBack)
