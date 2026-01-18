	db DEX_MAROWAK ; pokedex id

	db  60,  80, 110,  45,  50
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 75 ; catch rate
	db 124 ; base exp

	INCBIN "gfx/pokemon/front/marowak.pic", 0, 1 ; sprite dimensions
	dw MarowakPicFront, MarowakPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SWORDS_DANCE, FLAMETHROWER, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM, BLIZZARD, HYPER_BEAM, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, THUNDERBOLT, THUNDER, EARTHQUAKE, FISSURE, DIG, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, FIRE_BLAST, SWIFT, SHADOW_BALL, IRON_TAIL, REST, ROCK_SLIDE, SUBSTITUTE, STRENGTH
	; end

	db BANK(MarowakPicFront)
	assert BANK(MarowakPicFront) == BANK(MarowakPicBack)
