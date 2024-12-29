	db DEX_FLAAFFY ; pokedex id

	db  70,  55,  55,  45, 60
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 200 ; catch rate
	db 73 ; base exp

	INCBIN "gfx/pokemon/front/flaaffy.pic", 0, 1 ; sprite dimensions
	dw FlaaffyPicFront, FlaaffyPicBack

	db TACKLE, GROWL, THUNDERSHOCK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH, MEGA_KICK, TOXIC, BODY_SLAM, \
	TAKE_DOWN, DOUBLE_EDGE, COUNTER, SEISMIC_TOSS, \
	RAGE, THUNDERBOLT, THUNDER, MIMIC, \
	DOUBLE_TEAM, REFLECT, BIDE, SWIFT, \
	REST, THUNDER_WAVE, SUBSTITUTE, STRENGTH, \
	FLASH

	db 0 ; padding
