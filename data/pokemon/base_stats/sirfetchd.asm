	db DEX_SIRFETCHD ; pokedex id

	db  62, 135,  95,  65,  68
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 177 ; base exp

	INCBIN "gfx/pokemon/front/sirfetchd.pic", 0, 1 ; sprite dimensions
	dw SirfetchdPicFront, SirfetchdPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SWORDS_DANCE, TOXIC, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, HYPER_BEAM, SUPERPOWER, COUNTER, MUD_SLAP, DOUBLE_TEAM, REFLECT, ROCK_TOMB, SWIFT, X_SCISSOR, REST, ROCK_SLIDE, SUBSTITUTE, CUT
	; end

	db BANK(SirfetchdPicFront)
	assert BANK(SirfetchdPicFront) == BANK(SirfetchdPicBack)
