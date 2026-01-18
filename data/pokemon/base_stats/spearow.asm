	db DEX_SPEAROW ; pokedex id

	db  40,  60,  30,  70,  31
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 255 ; catch rate
	db 58 ; base exp

	INCBIN "gfx/pokemon/front/spearow.pic", 0, 1 ; sprite dimensions
	dw SpearowPicFront, SpearowPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, ROOST, AERIAL_ACE, DOUBLE_EDGE, HURRICANE, MUD_SLAP, DOUBLE_TEAM, REFLECT, SWIFT, REST, SUBSTITUTE, FLY
	; end

	db BANK(SpearowPicFront)
	assert BANK(SpearowPicFront) == BANK(SpearowPicBack)
