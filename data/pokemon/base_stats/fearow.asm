	db DEX_FEAROW ; pokedex id

	db  75, 100,  75, 100,  71
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 90 ; catch rate
	db 162 ; base exp

	INCBIN "gfx/pokemon/front/fearow.pic", 0, 1 ; sprite dimensions
	dw FearowPicFront, FearowPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, ROOST, AERIAL_ACE, DOUBLE_EDGE, HURRICANE, HYPER_BEAM, MUD_SLAP, DOUBLE_TEAM, REFLECT, SWIFT, REST, SUBSTITUTE, FLY
	; end

	db BANK(FearowPicFront)
	assert BANK(FearowPicFront) == BANK(FearowPicBack)
