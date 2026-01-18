	db DEX_DUGTRIO ; pokedex id

	db  35,  90,  50, 120,  70
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 50 ; catch rate
	db 153 ; base exp

	INCBIN "gfx/pokemon/front/dugtrio.pic", 0, 1 ; sprite dimensions
	dw DugtrioPicFront, DugtrioPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SLUDGE_BOMB, MUD_SLAP, EARTHQUAKE, FISSURE, DIG, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, SWIFT, REST, ROCK_SLIDE, SUBSTITUTE, CUT
	; end

	db BANK(DugtrioPicFront)
	assert BANK(DugtrioPicFront) == BANK(DugtrioPicBack)
