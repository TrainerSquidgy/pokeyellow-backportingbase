.gymleadergiftscript
	ld hl, KogaGetNextPokemonText
	call PrintText
	ld a, 1
	ld [wPokemonInWaiting], a
	ld a, [wNextRNGGiftMon]
	ld b, a
	ld a, 25 ; level
	ld c, a
	call GivePokemon
	jr nc, .party_full
	SetEvent EVENT_GOT_MON_FROM_KOGA
.reroll
	call Random
	cp NUM_POKEMON
	jr nc, .reroll
	ld [wNextRNGGiftMon], a
	xor a
	ld [wPokemonInWaiting], a
	ld hl, KogaGoodLuckWithYourNextBadgeText
	call PrintText
	jp TextScriptEnd
.party_full
	ld hl, KogaPartyIsFullText
	call PrintText
	jp TextScriptEnd
	
	ld a, [wPokemonInWaiting]
	and a
	jr z, .noPokemonInWaiting
	ld hl, KogaPokemonInWaitingText
	call PrintText
	jp TextScriptEnd
.noPokemonInWaiting

KogaGetNextPokemonText:
	text_far _GetNextPokemonText
	text_end

KogaGoodLuckWithYourNextBadgeText:
	text_far _GoodLuckWithYourNextBadgeText
	text_end
	
KogaPokemonInWaitingText:
	text_far _PokemonInWaitingText
	text_end
	
KogaPartyIsFullText:
	text_far _PartyIsFullText
	text_end