	db DEX_DODRIO ; pokedex id

	db  60, 110,  70, 100,  60
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 158 ; base exp

	INCBIN "gfx/pokemon/front/dodrio.pic", 0, 1 ; sprite dimensions
	dw DodrioPicFront, DodrioPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SWORDS_DANCE, TOXIC, ROOST, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, HURRICANE, HYPER_BEAM, MUD_SLAP, DOUBLE_TEAM, REFLECT, SWIFT, REST, SUBSTITUTE, FLY
	; end

	db BANK(DodrioPicFront)
	assert BANK(DodrioPicFront) == BANK(DodrioPicBack)
