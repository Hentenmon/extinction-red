	db DEX_PIDGEOTTO ; pokedex id

	db  63,  60,  55,  71,  50
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 120 ; catch rate
	db 113 ; base exp

	INCBIN "gfx/pokemon/front/pidgeotto.pic", 0, 1 ; sprite dimensions
	dw PidgeottoPicFront, PidgeottoPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, ROOST, AERIAL_ACE, DOUBLE_EDGE, HURRICANE, MUD_SLAP, DOUBLE_TEAM, REFLECT, SWIFT, REST, SUBSTITUTE, FLY
	; end

	db BANK(PidgeottoPicFront)
	assert BANK(PidgeottoPicFront) == BANK(PidgeottoPicBack)
