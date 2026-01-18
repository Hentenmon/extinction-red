	db DEX_MACHOP ; pokedex id

	db  70,  80,  50,  35,  35
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 180 ; catch rate
	db 88 ; base exp

	INCBIN "gfx/pokemon/front/machop.pic", 0, 1 ; sprite dimensions
	dw MachopPicFront, MachopPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, FLAMETHROWER, TOXIC, BODY_SLAM, DOUBLE_EDGE, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, EARTHQUAKE, FISSURE, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, SWIFT, REST, ROCK_SLIDE, SUBSTITUTE, STRENGTH
	; end

	db BANK(MachopPicFront)
	assert BANK(MachopPicFront) == BANK(MachopPicBack)
