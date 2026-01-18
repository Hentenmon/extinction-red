	db DEX_SHELLDER ; pokedex id

	db  30,  65, 100,  40,  45
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 190 ; catch rate
	db 97 ; base exp

	INCBIN "gfx/pokemon/front/shellder.pic", 0, 1 ; sprite dimensions
	dw ShellderPicFront, ShellderPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, DOUBLE_TEAM, REFLECT, SWIFT, FLASH_CANNON, REST, SUBSTITUTE, SURF
	; end

	db BANK(ShellderPicFront)
	assert BANK(ShellderPicFront) == BANK(ShellderPicBack)
