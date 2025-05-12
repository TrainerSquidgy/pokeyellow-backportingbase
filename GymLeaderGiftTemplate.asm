.gymleadergiftscript
	ld hl, BrockGetNextPokemonText
	call PrintText
	ld a, 1
	ld [wPokemonInWaiting], a
	ld a, [wNextRNGGiftMon]
	ld b, a
	ld a, 25 ; level
	ld c, a
	call GivePokemon
	jr nc, .party_full
	SetEvent EVENT_GOT_MON_FROM_BROCK
.reroll
	call Random
	cp NUM_POKEMON
	jr nc, .reroll
	ld [wNextRNGGiftMon], a
	xor a
	ld [wPokemonInWaiting], a
	ld hl, BrockGoodLuckWithYourNextBadgeText
	call PrintText
	jp TextScriptEnd
.party_full
	ld hl, BrockPartyIsFullText
	call PrintText
	jp TextScriptEnd
	
	
BrockGetNextPokemonText:
	text_far _GetNextPokemonText
	text_end

BrockGoodLuckWithYourNextBadgeText:
	text_far _GoodLuckWithYourNextBadgeText
	text_end
	
BrockPokemonInWaitingText:
	text_far _PokemonInWaitingText
	text_end
	
BrockPartyIsFullText:
	text_far _PartyIsFullText
	text_end