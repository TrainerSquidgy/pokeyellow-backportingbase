	db DEX_MAREEP ; pokedex id

	db  55,  40,  40,  35, 45
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 200 ; catch rate
	db 73 ; base exp

	INCBIN "gfx/pokemon/front/mareep.pic", 0, 1 ; sprite dimensions
	dw MareepPicFront, MareepPicBack

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, \
	RAGE, THUNDERBOLT, THUNDER, MIMIC, \
	DOUBLE_TEAM, REFLECT, BIDE, SWIFT, \
	REST, THUNDER_WAVE, SUBSTITUTE, FLASH

	db 0 ; padding
