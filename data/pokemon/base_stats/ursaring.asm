	db DEX_URSARING ; pokedex id

	db 60, 80,  50,  40,  50
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 120 ; catch rate
	db 124 ; base exp

	INCBIN "gfx/pokemon/front/ursaring.pic", 0, 1 ; sprite dimensions
	dw UrsaringPicFront, UrsaringPicBack

	db SCRATCH, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH, SWORDS_DANCE, MEGA_KICK, TOXIC,  \
		BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, HYPER_BEAM, \
		COUNTER, SEISMIC_TOSS, RAGE, EARTHQUAKE, \
		DIG, MIMIC, DOUBLE_TEAM, BIDE, \
		METRONOME, SWIFT, REST, ROCK_SLIDE, \
		SUBSTITUTE, CUT, STRENGTH
	; end

	db 0 ; padding
