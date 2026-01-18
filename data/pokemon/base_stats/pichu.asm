	db DEX_PICHU ; pokedex id

	db  20,  40,  15,  60,  35
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 41 ; base exp

	INCBIN "gfx/pokemon/front/pichu.pic", 0, 1 ; sprite dimensions
	dw PichuPicFront, PichuPicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, THUNDERPUNCH, MUD_SLAP, THUNDERBOLT, THUNDER, CHARM, DOUBLE_TEAM, REFLECT, SWIFT, REST, THUNDER_WAVE, SUBSTITUTE, SURF, FLASH
	; end

	db BANK(PichuPicFront)
	assert BANK(PichuPicFront) == BANK(PichuPicBack)
