Route2Gate_Script:
	jp EnableAutoTextBoxDrawing

Route2Gate_TextPointers:
	def_text_pointers
	dw_const Route2GateOaksAideText,  TEXT_ROUTE2GATE_OAKS_AIDE
	dw_const Route2GateYoungsterText, TEXT_ROUTE2GATE_YOUNGSTER

Route2GateOaksAideText:
	text_asm
	CheckEvent EVENT_GOT_HM05
	jr nz, .got_item
	ld a, [wObtainedBadges]
	bit BIT_BOULDERBADGE, a
	jr z, .no_item
	ld hl, BoulderBadgeGotText
	call PrintText
	ld bc, HM_FLASH
	call GiveItem
	SetEvent EVENT_GOT_HM05
	jr nc, .bag_full
.got_item
	ld hl, .FlashExplanationText
	call PrintText
	jp TextScriptEnd
.no_item
	ld hl, BoulderBadgeNeededText
	call PrintText
	jp TextScriptEnd
.bag_full
	ld hl, BoulderBadgeBagFullText
	call PrintText
	jp TextScriptEnd
	
.FlashExplanationText:
	text_far _Route2GateOaksAideFlashExplanationText
	text_end

Route2GateYoungsterText:
	text_far _Route2GateYoungsterText
	text_end

BoulderBadgeNeededText:
	text_far _BoulderBadgeNeededText
	text_end
	
BoulderBadgeGotText:
	text_far _BoulderBadgeGotText
	text_end
	
BoulderBadgeBagFullText:
	text_far _BoulderBadgeBagFullText
	text_end