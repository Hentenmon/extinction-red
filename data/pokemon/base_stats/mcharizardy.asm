	db DEX_MCHARIZARDY ; pokedex id

	db  78, 104,  78, 100, 159
	;   hp  atk  def  spd  spc

	db FIRE, FLYING ; type
	db 45 ; catch rate
	db 209 ; base exp

	INCBIN "gfx/pokemon/front/mcharizardy.pic", 0, 1 ; sprite dimensions
	dw MCharizardYPicFront, MCharizardYPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SWORDS_DANCE, FLAMETHROWER, TOXIC, ROOST, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, HURRICANE, HYPER_BEAM, COUNTER, THUNDERPUNCH, MUD_SLAP, DRAGONBREATH, EARTHQUAKE, FISSURE, DIG, CHARM, DOUBLE_TEAM, REFLECT, FIRE_PUNCH, FIRE_BLAST, SWIFT, REST, SUBSTITUTE, CUT, FLY, STRENGTH
	; end

	db BANK(MCharizardYPicFront)
	assert BANK(MCharizardYPicFront) == BANK(MCharizardYPicBack)
