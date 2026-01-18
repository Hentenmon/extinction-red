	db DEX_CLOYSTER ; pokedex id

	db  50,  95, 180,  70,  85
	;   hp  atk  def  spd  spc

	db WATER, ICE ; type
	db 60 ; catch rate
	db 203 ; base exp

	INCBIN "gfx/pokemon/front/cloyster.pic", 0, 1 ; sprite dimensions
	dw CloysterPicFront, CloysterPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, DOUBLE_TEAM, REFLECT, SWIFT, FLASH_CANNON, REST, SUBSTITUTE, SURF
	; end

	db BANK(CloysterPicFront)
	assert BANK(CloysterPicFront) == BANK(CloysterPicBack)
