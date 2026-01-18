	db DEX_DEWGONG ; pokedex id

	db  95,  75,  85,  75, 100
	;   hp  atk  def  spd  spc

	db WATER, ICE ; type
	db 75 ; catch rate
	db 176 ; base exp

	INCBIN "gfx/pokemon/front/dewgong.pic", 0, 1 ; sprite dimensions
	dw DewgongPicFront, DewgongPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, REST, SUBSTITUTE, SURF, STRENGTH
	; end

	db BANK(DewgongPicFront)
	assert BANK(DewgongPicFront) == BANK(DewgongPicBack)
