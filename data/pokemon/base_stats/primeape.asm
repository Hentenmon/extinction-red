	db DEX_PRIMEAPE ; pokedex id

	db  65, 105,  60,  95,  60
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 75 ; catch rate
	db 149 ; base exp

	INCBIN "gfx/pokemon/front/primeape.pic", 0, 1 ; sprite dimensions
	dw PrimeapePicFront, PrimeapePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SHOCK_WAVE, TOXIC, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, THUNDERBOLT, THUNDER, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, SWIFT, SHADOW_BALL, IRON_TAIL, REST, ROCK_SLIDE, SUBSTITUTE, STRENGTH
	; end

	db BANK(PrimeapePicFront)
	assert BANK(PrimeapePicFront) == BANK(PrimeapePicBack)
