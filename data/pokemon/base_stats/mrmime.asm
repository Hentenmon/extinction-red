	db DEX_MR_MIME ; pokedex id

	db  60,  55,  75, 100, 110
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, FAIRY ; type
	db 45 ; catch rate
	db 136 ; base exp

	INCBIN "gfx/pokemon/front/mr.mime.pic", 0, 1 ; sprite dimensions
	dw MrMimePicFront, MrMimePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, THUNDERBOLT, THUNDER, PSYCHIC_M, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, ICE_PUNCH, FIRE_PUNCH, SWIFT, SHADOW_BALL, REST, DARK_PULSE, SUBSTITUTE, STRENGTH
	; end

	db BANK(MrMimePicFront)
	assert BANK(MrMimePicFront) == BANK(MrMimePicBack)
