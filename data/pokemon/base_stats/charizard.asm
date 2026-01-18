	db DEX_CHARIZARD ; pokedex id

	db  78,  84,  78, 100,  85
	;   hp  atk  def  spd  spc

	db FIRE, FLYING ; type
	db 45 ; catch rate
	db 209 ; base exp

	INCBIN "gfx/pokemon/front/charizard.pic", 0, 1 ; sprite dimensions
	dw CharizardPicFront, CharizardPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SWORDS_DANCE, FLAMETHROWER, TOXIC, ROOST, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, HURRICANE, HYPER_BEAM, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, DRAGONBREATH, EARTHQUAKE, FISSURE, DIG, CHARM, DOUBLE_TEAM, REFLECT, FIRE_PUNCH, WILL_O_WISP, FIRE_BLAST, SWIFT, IRON_TAIL, REST, SUBSTITUTE, CUT, FLY, STRENGTH
	; end

	db BANK(CharizardPicFront)
	assert BANK(CharizardPicFront) == BANK(CharizardPicBack)
