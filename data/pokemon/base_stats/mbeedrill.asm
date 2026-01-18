	db DEX_MBEEDRILL ; pokedex id

	db  65, 150,  40, 145,  15
	;   hp  atk  def  spd  spc

	db BUG, POISON ; type
	db 45 ; catch rate
	db 159 ; base exp

	INCBIN "gfx/pokemon/front/mbeedrill.pic", 0, 1 ; sprite dimensions
	dw MBeedrillPicFront, MBeedrillPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SWORDS_DANCE, TOXIC, ROOST, AERIAL_ACE, DOUBLE_EDGE, HYPER_BEAM, SLUDGE_BOMB, MUD_SLAP, GIGA_DRAIN, SOLARBEAM, DOUBLE_TEAM, REFLECT, SWIFT, X_SCISSOR, REST, SUBSTITUTE, CUT
	; end

	db BANK(MBeedrillPicFront)
	assert BANK(MBeedrillPicFront) == BANK(MBeedrillPicBack)
