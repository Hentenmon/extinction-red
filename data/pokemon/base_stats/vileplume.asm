	db DEX_VILEPLUME ; pokedex id

	db  85,  80,  95,  60, 110
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 184 ; base exp

	INCBIN "gfx/pokemon/front/vileplume.pic", 0, 1 ; sprite dimensions
	dw VileplumePicFront, VileplumePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SLUDGE_BOMB, MUD_SLAP, GIGA_DRAIN, SOLARBEAM, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, REST, BULLET_SEED, SUBSTITUTE, CUT
	; end

	db BANK(VileplumePicFront)
	assert BANK(VileplumePicFront) == BANK(VileplumePicBack)
