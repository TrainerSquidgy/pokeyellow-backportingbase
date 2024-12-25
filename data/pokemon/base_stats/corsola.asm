	db DEX_CORSOLA ; pokedex id

	db  55,  55, 85,  35,  85
	;   hp  atk  def  spd  spc

	db WATER, ROCK ; type
	db 113 ; catch rate
	db 60 ; base exp

	INCBIN "gfx/pokemon/front/corsola.pic", 0, 1 ; sprite dimensions
	dw CorsolaPicFront, CorsolaPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, \
	BUBBLEBEAM, WATER_GUN, ICE_BEAM, BLIZZARD, \
	RAGE, EARTHQUAKE, DIG, MIMIC, \
	DOUBLE_TEAM, REFLECT, BIDE, SELFDESTRUCT, \
	REST, EXPLOSION, ROCK_SLIDE, SUBSTITUTE, \
	SURF, STRENGTH
	; end

	db 0 ; padding
