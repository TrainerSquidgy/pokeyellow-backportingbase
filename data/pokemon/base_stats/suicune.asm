	db DEX_SUICUNE ; pokedex id

	db 100,  75, 115,  85, 115
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 3 ; catch rate
	db 215 ; base exp

	INCBIN "gfx/pokemon/front/suicune.pic", 0, 1 ; sprite dimensions
	dw SuicunePicFront, SuicunePicBack

	db BITE, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm 	TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, \
			WATER_GUN, ICE_BEAM, BLIZZARD, HYPER_BEAM, \
			RAGE, DIG, MIMIC, DOUBLE_TEAM, \
			REFLECT, BIDE, SWIFT, REST, \
			SUBSTITUTE, CUT, SURF
	; end

	db 0 ; padding
