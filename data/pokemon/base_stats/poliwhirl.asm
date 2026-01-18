	db DEX_POLIWHIRL ; pokedex id

	db  65,  65,  65,  90,  50
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 120 ; catch rate
	db 131 ; base exp

	INCBIN "gfx/pokemon/front/poliwhirl.pic", 0, 1 ; sprite dimensions
	dw PoliwhirlPicFront, PoliwhirlPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, TOXIC, BODY_SLAM, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, SUPERPOWER, COUNTER, MUD_SLAP, EARTHQUAKE, FISSURE, PSYCHIC_M, CHARM, DOUBLE_TEAM, REFLECT, ICE_PUNCH, SWIFT, REST, SUBSTITUTE, SURF, STRENGTH
	; end

	db BANK(PoliwhirlPicFront)
	assert BANK(PoliwhirlPicFront) == BANK(PoliwhirlPicBack)
