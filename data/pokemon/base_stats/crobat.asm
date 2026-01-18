	db DEX_CROBAT ; pokedex id

	db  85,  90,  80,  130,  80
	;   hp  atk  def  spd  spc

	db POISON, FLYING ; type
	db 90 ; catch rate
	db 241 ; base exp

	INCBIN "gfx/pokemon/front/crobat.pic", 0, 1 ; sprite dimensions
	dw CrobatPicFront, CrobatPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, ROOST, AERIAL_ACE, DOUBLE_EDGE, HURRICANE, HYPER_BEAM, SLUDGE_BOMB, GIGA_DRAIN, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, REST, DARK_PULSE, FLY, FLASH
	; end

	db BANK(CrobatPicFront)
	assert BANK(CrobatPicFront) == BANK(CrobatPicBack)
