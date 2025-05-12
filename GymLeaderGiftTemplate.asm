.gymleadergiftscript
	ld hl, MistyGetNextPokemonText
	call PrintText
	ld a, 1
	ld [wPokemonInWaiting], a
	ld a, [wNextRNGGiftMon]
	ld b, a
	ld a, 25 ; level
	ld c, a
	call GivePokemon
	jr nc, .party_full
	SetEvent EVENT_GOT_MON_FROM_MISTY
.reroll
	call Random
	cp NUM_POKEMON
	jr nc, .reroll
	ld [wNextRNGGiftMon], a
	xor a
	ld [wPokemonInWaiting], a
	ld hl, MistyGoodLuckWithYourNextBadgeText
	call PrintText
	jp TextScriptEnd
.party_full
	ld hl, MistyPartyIsFullText
	call PrintText
	jp TextScriptEnd
	
	ld a, [wPokemonInWaiting]
	and a
	jr z, .noPokemonInWaiting
	ld hl, MistyPokemonInWaitingText
	call PrintText
	jp TextScriptEnd
.noPokemonInWaiting

MistyGetNextPokemonText:
	text_far _GetNextPokemonText
	text_end

MistyGoodLuckWithYourNextBadgeText:
	text_far _GoodLuckWithYourNextBadgeText
	text_end
	
MistyPokemonInWaitingText:
	text_far _PokemonInWaitingText
	text_end
	
MistyPartyIsFullText:
	text_far _PartyIsFullText
	text_end