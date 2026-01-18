	db DEX_SCIZOR ; pokedex id

	db  70, 130, 100,  65,  55
	;   hp  atk  def  spd  spc

	db BUG, STEEL ; type
	db 25 ; catch rate
	db 200 ; base exp

	INCBIN "gfx/pokemon/front/scizor.pic", 0, 1 ; sprite dimensions
	dw ScizorPicFront, ScizorPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SUPERPOWER, COUNTER, MUD_SLAP, GIGA_DRAIN, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, X_SCISSOR, FLASH_CANNON, REST, SUBSTITUTE, CUT
	; end

	db BANK(ScizorPicFront)
	assert BANK(ScizorPicFront) == BANK(ScizorPicBack)
