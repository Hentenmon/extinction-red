	db DEX_TAUROS ; pokedex id

	db  75, 100,  95, 110,  70
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 211 ; base exp

	INCBIN "gfx/pokemon/front/tauros.pic", 0, 1 ; sprite dimensions
	dw TaurosPicFront, TaurosPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, SUPERPOWER, COUNTER, MUD_SLAP, SOLARBEAM, THUNDERBOLT, THUNDER, EARTHQUAKE, FISSURE, DOUBLE_TEAM, REFLECT, ROCK_TOMB, FIRE_BLAST, SWIFT, SHADOW_BALL, IRON_TAIL, REST, ROCK_SLIDE, SUBSTITUTE, SURF, STRENGTH
	; end

	db BANK(TaurosPicFront)
	assert BANK(TaurosPicFront) == BANK(TaurosPicBack)
