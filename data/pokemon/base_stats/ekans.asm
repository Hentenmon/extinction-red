	db DEX_EKANS ; pokedex id

	db  35,  60,  44,  55,  40
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 255 ; catch rate
	db 62 ; base exp

	INCBIN "gfx/pokemon/front/ekans.pic", 0, 1 ; sprite dimensions
	dw EkansPicFront, EkansPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, TOXIC, BODY_SLAM, DOUBLE_EDGE, SLUDGE_BOMB, COUNTER, MUD_SLAP, GIGA_DRAIN, EARTHQUAKE, FISSURE, DOUBLE_TEAM, REFLECT, ROCK_TOMB, FIRE_BLAST, SWIFT, SHADOW_BALL, IRON_TAIL, REST, DARK_PULSE, ROCK_SLIDE, SUBSTITUTE
	; end

	db BANK(EkansPicFront)
	assert BANK(EkansPicFront) == BANK(EkansPicBack)
