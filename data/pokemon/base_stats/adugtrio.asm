	db DEX_ADUGTRIO ; pokedex id

	db  35, 110,  60, 110,  70
	;   hp  atk  def  spd  spc

	db GROUND, STEEL ; type
	db 50 ; catch rate
	db 153 ; base exp

	INCBIN "gfx/pokemon/front/adugtrio.pic", 0, 1 ; sprite dimensions
	dw ADugtrioPicFront, ADugtrioPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SLUDGE_BOMB, MUD_SLAP, EARTHQUAKE, FISSURE, DIG, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, SWIFT, REST, ROCK_SLIDE, SUBSTITUTE, CUT
	; end

	db BANK(ADugtrioPicFront)
	assert BANK(ADugtrioPicFront) == BANK(ADugtrioPicBack)
