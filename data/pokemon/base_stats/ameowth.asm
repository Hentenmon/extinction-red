	db DEX_AMEOWTH ; pokedex id

	db  40,  35,  35,  90,  50
	;   hp  atk  def  spd  spc

	db DARK, DARK ; type
	db 255 ; catch rate
	db 69 ; base exp

	INCBIN "gfx/pokemon/front/ameowth.pic", 0, 1 ; sprite dimensions
	dw AMeowthPicFront, AMeowthPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, SUPERPOWER, COUNTER, MUD_SLAP, THUNDERBOLT, THUNDER, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, IRON_TAIL, REST, DARK_PULSE, SUBSTITUTE, CUT
	; end

	db BANK(AMeowthPicFront)
	assert BANK(AMeowthPicFront) == BANK(AMeowthPicBack)
