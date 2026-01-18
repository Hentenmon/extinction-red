	db DEX_MANKEY ; pokedex id

	db  40,  80,  35,  70,  35
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 190 ; catch rate
	db 74 ; base exp

	INCBIN "gfx/pokemon/front/mankey.pic", 0, 1 ; sprite dimensions
	dw MankeyPicFront, MankeyPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SHOCK_WAVE, TOXIC, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, THUNDERBOLT, THUNDER, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, SWIFT, SHADOW_BALL, IRON_TAIL, REST, ROCK_SLIDE, SUBSTITUTE, STRENGTH
	; end

	db BANK(MankeyPicFront)
	assert BANK(MankeyPicFront) == BANK(MankeyPicBack)
