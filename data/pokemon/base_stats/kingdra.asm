	db DEX_KINGDRA ; pokedex id

	db  75,  95,  95,  85,  95
	;   hp  atk  def  spd  spc

	db WATER, DRAGON ; type
	db 45 ; catch rate
	db 243 ; base exp

	INCBIN "gfx/pokemon/front/kingdra.pic", 0, 1 ; sprite dimensions
	dw KingdraPicFront, KingdraPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, SLUDGE_BOMB, DRAGONBREATH, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, FLASH_CANNON, REST, SUBSTITUTE, SURF
	; end

	db BANK(KingdraPicFront)
	assert BANK(KingdraPicFront) == BANK(KingdraPicBack)
