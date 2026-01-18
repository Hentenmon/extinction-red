	db DEX_CHARMANDER ; pokedex id

	db  39,  52,  43,  65,  50
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 65 ; base exp

	INCBIN "gfx/pokemon/front/charmander.pic", 0, 1 ; sprite dimensions
	dw CharmanderPicFront, CharmanderPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SWORDS_DANCE, FLAMETHROWER, TOXIC, BODY_SLAM, DOUBLE_EDGE, COUNTER, THUNDERPUNCH, MUD_SLAP, DRAGONBREATH, DIG, CHARM, DOUBLE_TEAM, REFLECT, FIRE_PUNCH, WILL_O_WISP, FIRE_BLAST, SWIFT, IRON_TAIL, REST, SUBSTITUTE, CUT, STRENGTH
	; end

	db BANK(CharmanderPicFront)
	assert BANK(CharmanderPicFront) == BANK(CharmanderPicBack)
