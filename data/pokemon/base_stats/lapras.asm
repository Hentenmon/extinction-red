	db DEX_LAPRAS ; pokedex id

	db 140,  95,  90,  50, 105
	;   hp  atk  def  spd  spc

	db WATER, ICE ; type
	db 45 ; catch rate
	db 219 ; base exp

	INCBIN "gfx/pokemon/front/lapras.pic", 0, 1 ; sprite dimensions
	dw LaprasPicFront, LaprasPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, SOLARBEAM, DRAGONBREATH, THUNDERBOLT, THUNDER, EARTHQUAKE, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, SUBSTITUTE, SURF, STRENGTH

	db BANK(LaprasPicFront)
	assert BANK(LaprasPicFront) == BANK(LaprasPicBack)
