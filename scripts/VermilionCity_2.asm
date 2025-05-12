VermilionCityPrintOfficerJennyText::
	ld hl, OfficerJennyText5
	call PrintText
	ret

OfficerJennyText1:
	text_far _OfficerJennyText1
	text_end

OfficerJennyText2:
	text_far _OfficerJennyText2
	text_end

OfficerJennyText3:
	text_far _OfficerJennyText3
	text_waitbutton
	text_end

OfficerJennyText4:
	text_far _OfficerJennyText4
	text_end

OfficerJennyText5:
	text_far _OfficerJennyText5
	text_end

VermilionCityPrintSignText::
	ld hl, .text
	call PrintText
	ret

.text
	text_far _VermilionCitySignText
	text_end

VermilionCityPrintNoticeSignText::
	ld hl, .text
	call PrintText
	ret

.text
	text_far _VermilionCityNoticeSignText
	text_end

VermilionCityPrintPokemonFanClubSignText::
	ld hl, .text
	call PrintText
	ret

.text
	text_far _VermilionCityPokemonFanClubSignText
	text_end

VermilionCityPrintGymSignText::
	ld hl, .text
	call PrintText
	ret

.text
	text_far _VermilionCityGymSignText
	text_end

VermilionCityPrintHarborSignText::
	ld hl, .text
	call PrintText
	ret

.text
	text_far _VermilionCityHarborSignText
	text_end
