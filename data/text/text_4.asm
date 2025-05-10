_FileDataDestroyedText::
	text "The file data is"
	line "destroyed!"
	prompt

_WouldYouLikeToSaveText::
	text "Would you like to"
	line "SAVE the game?"
	done

_SavingText::
	text "Saving..."
	done

_GameSavedText::
	text "<PLAYER> saved"
	line "the game!"
	done

_OlderFileWillBeErasedText::
	text "The older file"
	line "will be erased to"
	cont "save. Okay?"
	done

_WhenYouChangeBoxText::
	text "When you change a"
	line "#MON BOX, data"
	cont "will be saved."

	para "Is that okay?"
	done

_ChooseABoxText::
	text "Choose a"
	line "<PKMN> BOX.@"
	text_end

_EvolvedText::
	text_ram wStringBuffer
	text " evolved"
	done

_IntoText::
	text_start
	line "into @"
	text_ram wNameBuffer
	text "!"
	done

_StoppedEvolvingText::
	text "Huh? @"
	text_ram wStringBuffer
	text_start
	line "stopped evolving!"
	prompt

_RainContinuesToFall::
	text "Rain continues to"
	line "fall."
	prompt

_TheSunlightIsStrong::
	text "The sunlight is"
	line "strong."
	prompt

_TheRainStopped::
	text "The rain stopped."
	prompt

_TheSunlightFaded::
	text "The sunlight"
	line "faded."
	prompt

_DownpourText::
	text "A downpour"
	line "started!"
	prompt

_SunGotBrightText::
	text "The sunlight got"
	line "bright!"
	prompt

