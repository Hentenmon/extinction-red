	db DEX_KABUTOPS ; pokedex id

	db  60, 115, 105,  80, 115
	;   hp  atk  def  spd  spc

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 201 ; base exp

	INCBIN "gfx/pokemon/front/kabutops.pic", 0, 1 ; sprite dimensions
	dw KabutopsPicFront, KabutopsPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SWORDS_DANCE, TOXIC, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, MUD_SLAP, GIGA_DRAIN, EARTHQUAKE, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, SWIFT, X_SCISSOR, REST, ROCK_SLIDE, SUBSTITUTE, CUT, SURF, STRENGTH
	; end

	db BANK(KabutopsPicFront)
	assert BANK(KabutopsPicFront) == BANK(KabutopsPicBack)
