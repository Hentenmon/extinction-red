	db DEX_MACHOKE ; pokedex id

	db  80, 100,  70,  45,  50
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 90 ; catch rate
	db 146 ; base exp

	INCBIN "gfx/pokemon/front/machoke.pic", 0, 1 ; sprite dimensions
	dw MachokePicFront, MachokePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, FLAMETHROWER, TOXIC, BODY_SLAM, DOUBLE_EDGE, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, EARTHQUAKE, FISSURE, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, SWIFT, REST, ROCK_SLIDE, SUBSTITUTE, STRENGTH
	; end

	db BANK(MachokePicFront)
	assert BANK(MachokePicFront) == BANK(MachokePicBack)
