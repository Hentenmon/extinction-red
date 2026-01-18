	db DEX_FLAREON ; pokedex id

	db  65, 130,  60,  65, 110
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 198 ; base exp

	INCBIN "gfx/pokemon/front/flareon.pic", 0, 1 ; sprite dimensions
	dw FlareonPicFront, FlareonPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, MUD_SLAP, DIG, CHARM, DOUBLE_TEAM, REFLECT, WILL_O_WISP, FIRE_BLAST, SWIFT, SHADOW_BALL, REST, SUBSTITUTE, STRENGTH, FLASH
	; end

	db BANK(FlareonPicFront)
	assert BANK(FlareonPicFront) == BANK(FlareonPicBack)
