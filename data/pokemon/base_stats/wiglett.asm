	db DEX_WIGLETT ; pokedex id

	db  10,  55,  25,  95,  35
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 255 ; catch rate
	db 49 ; base exp

	INCBIN "gfx/pokemon/front/wiglett.pic", 0, 1 ; sprite dimensions
	dw WiglettPicFront, WiglettPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, SLUDGE_BOMB, MUD_SLAP, EARTHQUAKE, FISSURE, DIG, CHARM, DOUBLE_TEAM, REFLECT, ROCK_TOMB, SWIFT, REST, ROCK_SLIDE, SUBSTITUTE, SURF, STRENGTH
	; end

	db BANK(WiglettPicFront)
	assert BANK(WiglettPicFront) == BANK(WiglettPicBack)
