	db DEX_RATICATE ; pokedex id

	db  55,  81,  60,  97,  50
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 116 ; base exp

	INCBIN "gfx/pokemon/front/raticate.pic", 0, 1 ; sprite dimensions
	dw RaticatePicFront, RaticatePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, ICE_BEAM, BLIZZARD, HYPER_BEAM, MUD_SLAP, DIG, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, IRON_TAIL, REST, SUBSTITUTE, CUT, STRENGTH
	; end

	db BANK(RaticatePicFront)
	assert BANK(RaticatePicFront) == BANK(RaticatePicBack)
