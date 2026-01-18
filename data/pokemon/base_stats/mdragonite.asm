	db DEX_MDRAGONITE ; pokedex id

	db  91, 124, 115, 100, 145
	;   hp  atk  def  spd  spc

	db DRAGON, FLYING ; type
	db 45 ; catch rate
	db 218 ; base exp

	INCBIN "gfx/pokemon/front/mdragonite.pic", 0, 1 ; sprite dimensions
	dw MDragonitePicFront, MDragonitePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, SHOCK_WAVE, TOXIC, ROOST, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, SCALD, HURRICANE, ICE_BEAM, BLIZZARD, HYPER_BEAM, SOLARBEAM, DRAGONBREATH, THUNDERBOLT, THUNDER, EARTHQUAKE, FISSURE, DIG, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, FIRE_BLAST, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, THUNDER_WAVE, ROCK_SLIDE, SUBSTITUTE, FLY, SURF, STRENGTH
	; end

	db BANK(MDragonitePicFront)
	assert BANK(MDragonitePicFront) == BANK(MDragonitePicBack)
