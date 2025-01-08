	db DEX_PILOSWINE ; pokedex id

	db  100,  100,  80, 50,  60
	;   hp  atk  def  spd  spc

	db ICE, GROUND ; type
	db 75 ; catch rate
	db 160 ; base exp

	INCBIN "gfx/pokemon/front/piloswine.pic", 0, 1 ; sprite dimensions
	dw PiloswinePicFront, PiloswinePicBack

	db HORN_ATTACK, POWDER_SNOW, ENDURE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, \
	ICE_BEAM, BLIZZARD, RAGE, EARTHQUAKE, \
	DIG, MIMIC, DOUBLE_TEAM, REFLECT, \
	BIDE, REST, ROCK_SLIDE, SUBSTITUTE, \
	STRENGTH, HYPER_BEAM
	; end

	db 0 ; padding
