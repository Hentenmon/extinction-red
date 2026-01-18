	db DEX_LEAFEON ; pokedex id

	db  65, 110, 130,  95,  65
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 184 ; base exp

	INCBIN "gfx/pokemon/front/leafeon.pic", 0, 1 ; sprite dimensions
	dw LeafeonPicFront, LeafeonPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, MUD_SLAP, GIGA_DRAIN, SOLARBEAM, DIG, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, REST, BULLET_SEED, SUBSTITUTE
	; end

	db BANK(LeafeonPicFront)
	assert BANK(LeafeonPicFront) == BANK(LeafeonPicBack)
