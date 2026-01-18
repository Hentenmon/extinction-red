	db DEX_DODUO ; pokedex id

	db  35,  85,  45,  75,  35
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 190 ; catch rate
	db 96 ; base exp

	INCBIN "gfx/pokemon/front/doduo.pic", 0, 1 ; sprite dimensions
	dw DoduoPicFront, DoduoPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SWORDS_DANCE, TOXIC, ROOST, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, HURRICANE, MUD_SLAP, DOUBLE_TEAM, REFLECT, SWIFT, REST, SUBSTITUTE, FLY
	; end

	db BANK(DoduoPicFront)
	assert BANK(DoduoPicFront) == BANK(DoduoPicBack)
