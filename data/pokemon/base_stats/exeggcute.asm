	db DEX_EXEGGCUTE ; pokedex id

	db  60,  40,  80,  40,  60
	;   hp  atk  def  spd  spc

	db GRASS, PSYCHIC_TYPE ; type
	db 90 ; catch rate
	db 98 ; base exp

	INCBIN "gfx/pokemon/front/exeggcute.pic", 0, 1 ; sprite dimensions
	dw ExeggcutePicFront, ExeggcutePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, BODY_SLAM, DOUBLE_EDGE, SLUDGE_BOMB, MUD_SLAP, GIGA_DRAIN, SOLARBEAM, PSYCHIC_M, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, REST, DARK_PULSE, BULLET_SEED, SUBSTITUTE, STRENGTH
	; end

	db BANK(ExeggcutePicFront)
	assert BANK(ExeggcutePicFront) == BANK(ExeggcutePicBack)
