	db DEX_PERSIAN ; pokedex id

	db  65,  70,  60, 115,  65
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 148 ; base exp

	INCBIN "gfx/pokemon/front/persian.pic", 0, 1 ; sprite dimensions
	dw PersianPicFront, PersianPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, BODY_SLAM, AERIAL_ACE, DOUBLE_EDGE, SCALD, ICE_BEAM, BLIZZARD, HYPER_BEAM, SUPERPOWER, COUNTER, MUD_SLAP, THUNDERBOLT, THUNDER, DAZZLE_GLEAM, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, SHADOW_BALL, IRON_TAIL, REST, SUBSTITUTE, CUT, FLASH
	; end

	db BANK(PersianPicFront)
	assert BANK(PersianPicFront) == BANK(PersianPicBack)
