	db DEX_MEOWTH ; pokedex id

	db  40,  45,  35,  90,  40
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 69 ; base exp

	INCBIN "gfx/pokemon/front/meowth.pic", 0, 1 ; sprite dimensions
	dw MeowthPicFront, MeowthPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, SUPERPOWER, COUNTER, MUD_SLAP, THUNDERBOLT, THUNDER, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, IRON_TAIL, REST, SUBSTITUTE, CUT
	; end

	db BANK(MeowthPicFront)
	assert BANK(MeowthPicFront) == BANK(MeowthPicBack)
