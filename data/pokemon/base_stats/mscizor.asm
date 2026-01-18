	db DEX_MSCIZOR ; pokedex id

	db  70, 150, 140,  75,  65
	;   hp  atk  def  spd  spc

	db BUG, STEEL ; type
	db 25 ; catch rate
	db 200 ; base exp

	INCBIN "gfx/pokemon/front/mscizor.pic", 0, 1 ; sprite dimensions
	dw MScizorPicFront, MScizorPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SUPERPOWER, COUNTER, MUD_SLAP, GIGA_DRAIN, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, X_SCISSOR, FLASH_CANNON, REST, SUBSTITUTE, CUT
	; end

	db BANK(MScizorPicFront)
	assert BANK(MScizorPicFront) == BANK(MScizorPicBack)
