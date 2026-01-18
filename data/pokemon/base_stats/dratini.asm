	db DEX_DRATINI ; pokedex id

	db  41,  64,  45,  50,  50
	;   hp  atk  def  spd  spc

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 67 ; base exp

	INCBIN "gfx/pokemon/front/dratini.pic", 0, 1 ; sprite dimensions
	dw DratiniPicFront, DratiniPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, SOLARBEAM, DRAGONBREATH, THUNDERBOLT, THUNDER, EARTHQUAKE, FISSURE, DIG, CHARM, DOUBLE_TEAM, REFLECT, FIRE_BLAST, SWIFT, SHADOW_BALL, FLASH_CANNON, REST, THUNDER_WAVE, SUBSTITUTE, SURF
	; end

	db BANK(DratiniPicFront)
	assert BANK(DratiniPicFront) == BANK(DratiniPicBack)
