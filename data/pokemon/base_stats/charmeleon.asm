	db DEX_CHARMELEON ; pokedex id

	db  58,  64,  58,  80,  65
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 142 ; base exp

	INCBIN "gfx/pokemon/front/charmeleon.pic", 0, 1 ; sprite dimensions
	dw CharmeleonPicFront, CharmeleonPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SWORDS_DANCE, FLAMETHROWER, TOXIC, BODY_SLAM, DOUBLE_EDGE, COUNTER, THUNDERPUNCH, MUD_SLAP, DRAGONBREATH, DIG, CHARM, DOUBLE_TEAM, REFLECT, FIRE_PUNCH, WILL_O_WISP, FIRE_BLAST, SWIFT, IRON_TAIL, REST, SUBSTITUTE, CUT, STRENGTH
	; end

	db BANK(CharmeleonPicFront)
	assert BANK(CharmeleonPicFront) == BANK(CharmeleonPicBack)
