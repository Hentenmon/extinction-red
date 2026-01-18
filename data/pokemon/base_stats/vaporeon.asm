	db DEX_VAPOREON ; pokedex id

	db 130,  65,  60,  65, 110
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 196 ; base exp

	INCBIN "gfx/pokemon/front/vaporeon.pic", 0, 1 ; sprite dimensions
	dw VaporeonPicFront, VaporeonPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, MUD_SLAP, DIG, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, REST, SUBSTITUTE, SURF
	; end

	db BANK(VaporeonPicFront)
	assert BANK(VaporeonPicFront) == BANK(VaporeonPicBack)
