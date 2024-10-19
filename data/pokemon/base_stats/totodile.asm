	db DEX_TOTODILE ; pokedex id

	db  50,  65,  64,  43,  48
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 66 ; base exp

	INCBIN "gfx/pokemon/front/totodile.pic", 0, 1 ; sprite dimensions
	dw TotodilePicFront, TotodilePicBack

	db SCRATCH, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH, SWORDS_DANCE, MEGA_KICK, TOXIC, \
		BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, ICE_BEAM, \
		BLIZZARD, COUNTER, SEISMIC_TOSS, RAGE, \
		DIG, MIMIC, DOUBLE_TEAM, BIDE, \
		REST, ROCK_SLIDE, SUBSTITUTE, CUT, \
		SURF, STRENGTH

	; end

	db 0 ; padding
