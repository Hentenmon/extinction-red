	db DEX_NINETALES ; pokedex id

	db  73,  76,  75, 100, 100
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 75 ; catch rate
	db 178 ; base exp

	INCBIN "gfx/pokemon/front/ninetales.pic", 0, 1 ; sprite dimensions
	dw NinetalesPicFront, NinetalesPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, FLAMETHROWER, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, MUD_SLAP, DIG, CHARM, DOUBLE_TEAM, REFLECT, WILL_O_WISP, FIRE_BLAST, SWIFT, SHADOW_BALL, REST, DARK_PULSE, SUBSTITUTE, FLASH
	; end

	db BANK(NinetalesPicFront)
	assert BANK(NinetalesPicFront) == BANK(NinetalesPicBack)
