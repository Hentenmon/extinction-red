	db DEX_GROWLITHE ; pokedex id

	db  55,  70,  45,  60,  50
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 91 ; base exp

	INCBIN "gfx/pokemon/front/growlithe.pic", 0, 1 ; sprite dimensions
	dw GrowlithePicFront, GrowlithePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, TOXIC, BODY_SLAM, DOUBLE_EDGE, MUD_SLAP, DIG, CHARM, DOUBLE_TEAM, REFLECT, WILL_O_WISP, FIRE_BLAST, SWIFT, SHADOW_BALL, REST, SUBSTITUTE, STRENGTH
	; end

	db BANK(GrowlithePicFront)
	assert BANK(GrowlithePicFront) == BANK(GrowlithePicBack)
