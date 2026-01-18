	db DEX_ODDISH ; pokedex id

	db  45,  50,  55,  30,  75
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 255 ; catch rate
	db 78 ; base exp

	INCBIN "gfx/pokemon/front/oddish.pic", 0, 1 ; sprite dimensions
	dw OddishPicFront, OddishPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SLUDGE_BOMB, MUD_SLAP, GIGA_DRAIN, SOLARBEAM, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, REST, BULLET_SEED, SUBSTITUTE, CUT
	; end

	db BANK(OddishPicFront)
	assert BANK(OddishPicFront) == BANK(OddishPicBack)
