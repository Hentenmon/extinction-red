	db DEX_HGROWLITHE ; pokedex id

	db  60,  75,  45,  55,  50
	;   hp  atk  def  spd  spc

	db FIRE, ROCK ; type
	db 190 ; catch rate
	db 91 ; base exp

	INCBIN "gfx/pokemon/front/hgrowlithe.pic", 0, 1 ; sprite dimensions
	dw HGrowlithePicFront, HGrowlithePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, TOXIC, BODY_SLAM, DOUBLE_EDGE, MUD_SLAP, DIG, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, WILL_O_WISP, FIRE_BLAST, SWIFT, SHADOW_BALL, REST, ROCK_SLIDE, SUBSTITUTE, STRENGTH
	; end

	db BANK(HGrowlithePicFront)
	assert BANK(HGrowlithePicFront) == BANK(HGrowlithePicBack)
