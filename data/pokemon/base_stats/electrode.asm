	db DEX_ELECTRODE ; pokedex id

	db  60,  70,  70, 150,  90
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 60 ; catch rate
	db 150 ; base exp

	INCBIN "gfx/pokemon/front/electrode.pic", 0, 1 ; sprite dimensions
	dw ElectrodePicFront, ElectrodePicBack

    db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; note: starting learnsets are part of regular learnsets
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, SHOCK_WAVE, TOXIC, DOUBLE_EDGE, HYPER_BEAM, THUNDERBOLT, THUNDER, DOUBLE_TEAM, REFLECT, SWIFT, REST, THUNDER_WAVE, SUBSTITUTE, FLASH
	; end

	db BANK(ElectrodePicFront)
	assert BANK(ElectrodePicFront) == BANK(ElectrodePicBack)
