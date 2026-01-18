	db DEX_PTAUROSA ; pokedex id

	db  75, 110, 105, 100,  70
	;   hp  atk  def  spd  spc

	db FIGHTING, WATER ; type
	db 45 ; catch rate
	db 211 ; base exp

	INCBIN "gfx/pokemon/front/ptaurosa.pic", 0, 1 ; sprite dimensions
	dw PTaurosAPicFront, PTaurosAPicBack

	db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, SUPERPOWER, COUNTER, MUD_SLAP, SOLARBEAM, THUNDERBOLT, THUNDER, EARTHQUAKE, FISSURE, DOUBLE_TEAM, REFLECT, ROCK_TOMB, FIRE_BLAST, SWIFT, SHADOW_BALL, IRON_TAIL, REST, ROCK_SLIDE, SUBSTITUTE, SURF, STRENGTH
	; end

	db BANK(PTaurosAPicFront)
	assert BANK(PTaurosAPicFront) == BANK(PTaurosAPicBack)
