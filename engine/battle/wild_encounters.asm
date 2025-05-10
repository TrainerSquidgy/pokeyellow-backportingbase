; try to initiate a wild pokemon encounter
; returns success in Z
TryDoWildEncounter:
	ld a, [wNPCMovementScriptPointerTableNum]
	and a
	ret nz
	ld a, [wMovementFlags]
	and a ; is player exiting a door, jumping over a ledge, or fishing?
	ret nz
	callfar IsPlayerStandingOnDoorTileOrWarpTile
	jr nc, .notStandingOnDoorOrWarpTile
.CantEncounter
	ld a, $1
	and a
	ret
.notStandingOnDoorOrWarpTile
	callfar IsPlayerJustOutsideMap
	jr z, .CantEncounter
	ld a, [wRepelRemainingSteps]
	and a
	jr z, .next
	dec a
	jp z, .lastRepelStep
	ld [wRepelRemainingSteps], a
.next
; determine if wild pokemon can appear in the half-block we're standing in
; is the bottom left tile (8,9) of the half-block we're standing in a grass/water tile?
; note that by using the bottom left tile, this prevents the "left-shore" tiles from generating grass encounters
	hlcoord 8, 9
	ld c, [hl]
	ld a, [wGrassTile]
	cp c
	ld a, [wGrassRate]
	jr z, .CanEncounter
	ld a, $14 ; in all tilesets with a water tile, this is its id
	cp c
	ld a, [wWaterRate]
	jr z, .CanEncounter
; even if not in grass/water, standing anywhere we can encounter pokemon
; so long as the map is "indoor" and has wild pokemon defined.
; ...as long as it's not Viridian Forest or Safari Zone.
	ld a, [wCurMap]
	cp FIRST_INDOOR_MAP ; is this an indoor map?
	jp c, .CantEncounter2
	ld a, [wCurMapTileset]
	cp FOREST ; Viridian Forest/Safari Zone
	jp z, .CantEncounter2
	ld a, [wGrassRate]
.CanEncounter
; compare encounter chance with a random number to determine if there will be an encounter
	ld b, a
	ldh a, [hRandomAdd]
	cp b
	jp nc, .CantEncounter2
	ldh a, [hRandomSub]
	ld b, a
	ld hl, WildMonEncounterSlotChances
.determineEncounterSlot
	ld a, [hli]
	cp b
	jr nc, .gotEncounterSlot
	inc hl
	jr .determineEncounterSlot
.gotEncounterSlot
; determine which wild pokemon (grass or water) can appear in the half-block we're standing in
	ld c, [hl]
	ld hl, wGrassMons
	lda_coord 8, 9
	cp $14 ; is the bottom left tile (8,9) of the half-block we're standing in a water tile?
	jr nz, .gotWildEncounterType ; else, it's treated as a grass tile by default
	ld hl, wWaterMons
.gotWildEncounterType
	ld b, 0
	add hl, bc
	ld a, [hli]
	ld [wCurEnemyLevel], a
	ld a, [hl]
	ld [wCurPartySpecies], a
	ld [wEnemyMonSpecies2], a
	
	ld a, [wHMFriendHelp]
	and a
	jr z, .skip_force_encounter
	
	ld a, [wParasEncounters] 
	and a 
	jr nz, .skip_paras
	ld a, [wCurMap] 
	cp MT_MOON_1F 
	jr nz, .skip_paras 
	ld a, 1
	ld [wParasEncounters], a 
	ld a, 8
	ld [wCurEnemyLevel], a
	ld a, PARAS
	ld [wCurPartySpecies], a
	ld [wEnemyMonSpecies2], a
	jr .skip_force_encounter
.skip_paras
	ld a, [wSpearowEncounters] 
	and a 
	jr nz, .skip_spearow
	ld a, [wCurMap] 
	cp ROUTE_3 
	jr nz, .skip_spearow 
	ld a, 1
	ld [wSpearowEncounters], a 
	ld a, 8
	ld [wCurEnemyLevel], a
	ld a, SPEAROW
	ld [wCurPartySpecies], a
	ld [wEnemyMonSpecies2], a
	jr .skip_force_encounter
.skip_spearow
	ld a, [wAbraEncounters] 
	and a 
	jr nz, .skip_force_encounter
	ld a, [wCurMap] 
	cp ROUTE_5 
	jr z, .force_abra
	cp ROUTE_6
	jr z, .force_abra
	cp ROUTE_7
	jr z, .force_abra
	cp ROUTE_8
	jr nz, .skip_force_encounter
.force_abra
	ld a, 1
	ld [wAbraEncounters], a 
	ld a, 10
	ld [wCurEnemyLevel], a
	ld a, ABRA
	ld [wCurPartySpecies], a
	ld [wEnemyMonSpecies2], a
	jr .skip_force_encounter

.skip_force_encounter
	ld a, [wRepelRemainingSteps]
	and a
	jr z, .willEncounter
	ld a, [wPartyMon1Level]
	ld b, a
	ld a, [wCurEnemyLevel]
	cp b
	jr c, .CantEncounter2 ; repel prevents encounters if the leading party mon's level is higher than the wild mon
	jr .willEncounter
.lastRepelStep
	ld [wRepelRemainingSteps], a
	ld a, TEXT_REPEL_WORE_OFF
	ldh [hTextID], a
	call EnableAutoTextBoxDrawing
	call DisplayTextID
.CantEncounter2
	ld a, $1
	and a
	ret
.willEncounter
	xor a
	ret

INCLUDE "data/wild/probabilities.asm"
