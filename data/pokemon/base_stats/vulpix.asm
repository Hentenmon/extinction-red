	db DEX_VULPIX ; pokedex id

	db  38,  41,  40,  65,  65
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 63 ; base exp

	INCBIN "gfx/pokemon/front/vulpix.pic", 0, 1 ; sprite dimensions
	dw VulpixPicFront, VulpixPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, TOXIC, BODY_SLAM, DOUBLE_EDGE, MUD_SLAP, DIG, CHARM, DOUBLE_TEAM, REFLECT, WILL_O_WISP, FIRE_BLAST, SWIFT, SHADOW_BALL, REST, DARK_PULSE, SUBSTITUTE, FLASH
	; end

	db BANK(VulpixPicFront)
	assert BANK(VulpixPicFront) == BANK(VulpixPicBack)
