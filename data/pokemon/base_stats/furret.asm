	db DEX_FURRET ; pokedex id

	db  85,  76,  64,  90,  55
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 116 ; base exp

	INCBIN "gfx/pokemon/front/furret.pic", 0, 1 ; sprite dimensions
	dw FurretPicFront, FurretPicBack

	db TACKLE, DEFENSE_CURL, QUICK_ATTACK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST; growth rate

	; tm/hm learnset
	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, \
		 ICE_BEAM, BLIZZARD, HYPER_BEAM, RAGE, \
		 THUNDERBOLT, THUNDER, DIG, MIMIC, \
		 DOUBLE_TEAM, BIDE, SWIFT, REST, \
		 SUBSTITUTE, CUT, SURF, STRENGTH
	; end

	db 0 ; padding
