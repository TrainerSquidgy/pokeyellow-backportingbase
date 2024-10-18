	db DEX_GLIGAR ; pokedex id

	db  65,  75, 105,  85,  65
	;   hp  atk  def  spd  spc

	db GROUND, FLYING ; type
	db 60 ; catch rate
	db 108 ; base exp

	INCBIN "gfx/pokemon/front/gligar.pic", 0, 1 ; sprite dimensions
	dw GligarPicFront, GligarPicBack

	db POISON_STING, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   SWORDS_DANCE,    TOXIC,        TAKE_DOWN, \
		 DOUBLE_EDGE,  COUNTER, RAGE, MIMIC,\
	     DOUBLE_TEAM, BIDE, SWIFT, DREAM_EATER,  \
	     REST, ROCK_SLIDE, SUBSTITUTE
	; end

	db 0 ; padding
