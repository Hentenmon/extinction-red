	db DEX_MACHAMP ; pokedex id

	db 100, 130,  90,  65,  75
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 193 ; base exp

	INCBIN "gfx/pokemon/front/machamp.pic", 0, 1 ; sprite dimensions
	dw MachampPicFront, MachampPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, FLAMETHROWER, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, EARTHQUAKE, FISSURE, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, SWIFT, REST, ROCK_SLIDE, SUBSTITUTE, STRENGTH
	; end

	db BANK(MachampPicFront)
	assert BANK(MachampPicFront) == BANK(MachampPicBack)
