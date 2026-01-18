	db DEX_MELMETAL ; pokedex id

	db 135, 143, 143,  34,  65
	;   hp  atk  def  spd  spc

	db STEEL, STEEL ; type
	db 255 ; catch rate
	db 53 ; base exp

	INCBIN "gfx/pokemon/front/melmetal.pic", 0, 1 ; sprite dimensions
	dw MelmetalPicFront, MelmetalPicBack

	db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HEADBUTT, DRAIN_PUNCH, SHOCK_WAVE, TOXIC, BODY_SLAM, DOUBLE_EDGE, HYPER_BEAM, SUPERPOWER, COUNTER, THUNDERPUNCH, MUD_SLAP, THUNDERBOLT, THUNDER, EARTHQUAKE, FISSURE, DOUBLE_TEAM, REFLECT, ROCK_TOMB, ICE_PUNCH, FIRE_PUNCH, SWIFT, FLASH_CANNON, REST, THUNDER_WAVE, ROCK_SLIDE, SUBSTITUTE, STRENGTH, FLASH
	; end

	db BANK(MelmetalPicFront)
	assert BANK(MelmetalPicFront) == BANK(MelmetalPicBack)
