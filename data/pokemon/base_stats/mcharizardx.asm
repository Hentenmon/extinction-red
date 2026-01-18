	db DEX_MCHARIZARDX ; pokedex id

	db  78, 130, 111, 100,  85
	;   hp  atk  def  spd  spc

	db FIRE, DRAGON ; type
	db 45 ; catch rate
	db 209 ; base exp

	INCBIN "gfx/pokemon/front/mcharizardx.pic", 0, 1 ; sprite dimensions
	dw MCharizardXPicFront, MCharizardXPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SWORDS_DANCE, FLAMETHROWER, TOXIC, ROOST, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, HURRICANE, HYPER_BEAM, COUNTER, THUNDERPUNCH, MUD_SLAP, DRAGONBREATH, EARTHQUAKE, FISSURE, DIG, CHARM, DOUBLE_TEAM, REFLECT, FIRE_PUNCH, FIRE_BLAST, SWIFT, REST, SUBSTITUTE, CUT, FLY, STRENGTH
	; end

	db BANK(MCharizardXPicFront)
	assert BANK(MCharizardXPicFront) == BANK(MCharizardXPicBack)
