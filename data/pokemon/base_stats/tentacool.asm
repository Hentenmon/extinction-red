	db DEX_TENTACOOL ; pokedex id

	db  40,  40,  35,  70, 100
	;   hp  atk  def  spd  spc

	db WATER, POISON ; type
	db 190 ; catch rate
	db 105 ; base exp

	INCBIN "gfx/pokemon/front/tentacool.pic", 0, 1 ; sprite dimensions
	dw TentacoolPicFront, TentacoolPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SWORDS_DANCE, TOXIC, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, SLUDGE_BOMB, DAZZLE_GLEAM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, DARK_PULSE, SUBSTITUTE, SURF, FLASH
	; end

	db BANK(TentacoolPicFront)
	assert BANK(TentacoolPicFront) == BANK(TentacoolPicBack)
