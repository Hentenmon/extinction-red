	db DEX_MIME_JR ; pokedex id

	db  20,  25,  45,   60,  70
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, FAIRY ; type
	db 45 ; catch rate
	db 136 ; base exp

	INCBIN "gfx/pokemon/front/mimejr.pic", 0, 1 ; sprite dimensions
	dw MimeJrPicFront, MimeJrPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, THUNDERBOLT, THUNDER, PSYCHIC_M, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, ICE_PUNCH, FIRE_PUNCH, SWIFT, SHADOW_BALL, REST, DARK_PULSE, SUBSTITUTE, STRENGTH
	; end

	db BANK(MimeJrPicFront)
	assert BANK(MimeJrPicFront) == BANK(MimeJrPicBack)
