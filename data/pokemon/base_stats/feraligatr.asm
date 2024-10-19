	db DEX_FERALIGATR ; pokedex id

	db  85, 105, 100,  78,  83
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 210 ; base exp

	INCBIN "gfx/pokemon/front/feraligatr.pic", 0, 1 ; sprite dimensions
	dw FeraligatrPicFront, FeraligatrPicBack

	db SCRATCH, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH, SWORDS_DANCE, MEGA_KICK, TOXIC,	 \
		 BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, ICE_BEAM,  	\
		 BLIZZARD, HYPER_BEAM, COUNTER, SEISMIC_TOSS, 	\
		 RAGE, EARTHQUAKE, DIG, MIMIC,	 \
		 DOUBLE_TEAM, BIDE, REST, ROCK_SLIDE, \
		 SUBSTITUTE, CUT, SURF, STRENGTH


	; end

	db 0 ; padding
