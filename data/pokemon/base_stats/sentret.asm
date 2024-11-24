	db DEX_SENTRET ; pokedex id

	db  35,  46,  34,  20,  35
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 57 ; base exp

	INCBIN "gfx/pokemon/front/sentret.pic", 0, 1 ; sprite dimensions
	dw SentretPicFront, SentretPicBack

	db TACKLE, DEFENSE_CURL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, \
		 ICE_BEAM, RAGE, THUNDERBOLT, DIG, \
		 MIMIC, DOUBLE_TEAM, BIDE, SWIFT, \
		 REST, SUBSTITUTE, CUT, SURF
	; end

	db 0 ; padding
