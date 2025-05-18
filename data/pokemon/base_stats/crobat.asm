	db DEX_CROBAT ; pokedex id

	db  85,  90,  80, 130,  80
	;   hp  atk  def  spd  spc

	db POISON, FLYING ; type
	db 90 ; catch rate
	db 204 ; base exp

	INCBIN "gfx/pokemon/front/crobat.pic", 0, 1 ; sprite dimensions
	dw CrobatPicFront, CrobatPicBack

	db SCREECH, LEECH_LIFE, SUPERSONIC, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND, TOXIC, TAKE_DOWN, DOUBLE_EDGE, \
		 HYPER_BEAM, RAGE, MEGA_DRAIN, MIMIC, \ 
		 DOUBLE_TEAM, BIDE, SWIFT, REST, \
		 SUBSTITUTE, FLY
	; end

	db 0 ; padding
