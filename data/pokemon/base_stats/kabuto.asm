	db DEX_KABUTO ; pokedex id

	db  30,  80,  90,  55,  45
	;   hp  atk  def  spd  spc

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 119 ; base exp

	INCBIN "gfx/pokemon/front/kabuto.pic", 0, 1 ; sprite dimensions
	dw KabutoPicFront, KabutoPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SWORDS_DANCE, TOXIC, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, MUD_SLAP, GIGA_DRAIN, EARTHQUAKE, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, SWIFT, X_SCISSOR, REST, ROCK_SLIDE, SUBSTITUTE, CUT, SURF, STRENGTH
	; end

	db BANK(KabutoPicFront)
	assert BANK(KabutoPicFront) == BANK(KabutoPicBack)
