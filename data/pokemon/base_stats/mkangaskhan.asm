	db DEX_MKANGASKHAN ; pokedex id

	db 105, 125, 100, 100,  60
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 175 ; base exp

	INCBIN "gfx/pokemon/front/mkangaskhan.pic", 0, 1 ; sprite dimensions
	dw MKangaskhanPicFront, MKangaskhanPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, FLAMETHROWER, SHOCK_WAVE, TOXIC, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, SLUDGE_BOMB, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, DRAGONBREATH, THUNDERBOLT, THUNDER, EARTHQUAKE, FISSURE, DIG, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, FIRE_BLAST, SWIFT, SHADOW_BALL, IRON_TAIL, REST, DRAININGKISS, ROCK_SLIDE, SUBSTITUTE, CUT, SURF, STRENGTH
	; end

	db BANK(MKangaskhanPicFront)
	assert BANK(MKangaskhanPicFront) == BANK(MKangaskhanPicBack)
