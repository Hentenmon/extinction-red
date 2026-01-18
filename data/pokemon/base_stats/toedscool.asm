	db DEX_TOEDSCOOL ; pokedex id

	db  40,  40,  35,  70, 100
	;   hp  atk  def  spd  spc

	db GROUND, GRASS ; type
	db 190 ; catch rate
	db 105 ; base exp

	INCBIN "gfx/pokemon/front/toedscool.pic", 0, 1 ; sprite dimensions
	dw ToedscoolPicFront, ToedscoolPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SWORDS_DANCE, TOXIC, BODY_SLAM, DOUBLE_EDGE, SLUDGE_BOMB, MUD_SLAP, GIGA_DRAIN, SOLARBEAM, EARTHQUAKE, FISSURE, DIG, DOUBLE_TEAM, REFLECT, ROCK_TOMB, SWIFT, SHADOW_BALL, REST, ROCK_SLIDE, BULLET_SEED, SUBSTITUTE, CUT, STRENGTH
	; end

	db BANK(ToedscoolPicFront)
	assert BANK(ToedscoolPicFront) == BANK(ToedscoolPicBack)
