NPCTrade::
	ld a, e
	ld [wJumptableIndex], a
	call Trade_GetDialog
	ld b, CHECK_FLAG
	call TradeFlagAction
	ld a, TRADE_DIALOG_AFTER
	jr nz, .done

	ld a, TRADE_DIALOG_INTRO
	call PrintTradeText

	call YesNoBox
	ld a, TRADE_DIALOG_CANCEL
	jr c, .done

; Select givemon from party
	ld b, PARTYMENUACTION_GIVE_MON
	farcall SelectTradeOrDayCareMon
	ld a, TRADE_DIALOG_CANCEL
	jr c, .done

	ld e, NPCTRADE_GIVEMON
	call GetTradeAttribute
	ld a, [wCurPartySpecies]
	cp [hl]
	ld a, TRADE_DIALOG_WRONG
	jr nz, .done
	inc hl
	ld a, [wCurPartySpecies + 1]
	cp [hl]
	ld a, TRADE_DIALOG_WRONG
	jr nz, .done

	call CheckTradeGender
	ld a, TRADE_DIALOG_WRONG
	jr c, .done

	ld b, SET_FLAG
	call TradeFlagAction

	ld hl, NPCTradeCableText
	call PrintText

	call DoNPCTrade
	call .TradeAnimation
	call GetTradeMonNames

	ld hl, TradedForText
	call PrintText

	call RestartMapMusic

	ld a, TRADE_DIALOG_COMPLETE

.done
	call PrintTradeText
	ret

.TradeAnimation:
	call DisableSpriteUpdates
	ld a, [wJumptableIndex]
	push af
	ld a, [wce64]
	push af
	predef TradeAnimation
	pop af
	ld [wce64], a
	pop af
	ld [wJumptableIndex], a
	call ReturnToMapWithSpeechTextbox
	ret

CheckTradeGender:
	xor a
	ld [wMonType], a

	ld e, NPCTRADE_GENDER
	call GetTradeAttribute
	ld a, [hl]
	and a ; TRADE_GENDER_EITHER
	jr z, .matching
	cp TRADE_GENDER_MALE
	jr z, .check_male
	; TRADE_GENDER_FEMALE
	farcall GetGender
	jr nz, .not_matching
	jr .matching

.check_male
	farcall GetGender
	jr z, .not_matching

.matching
	and a
	ret

.not_matching
	scf
	ret

TradeFlagAction:
	ld hl, wTradeFlags
	ld a, [wJumptableIndex]
	ld c, a
	predef SmallFarFlagAction
	ld a, c
	and a
	ret

Trade_GetDialog:
	ld e, NPCTRADE_DIALOG
	call GetTradeAttribute
	ld a, [hl]
	ld [wce64], a
	ret

DoNPCTrade:
	ld e, NPCTRADE_GIVEMON
	call GetTradeAttribute
	ld a, [hli]
	ld [wPlayerTrademonSpecies], a
	ld a, [hld]
	ld [wPlayerTrademonSpecies + 1], a

	ld e, NPCTRADE_GETMON
	call GetTradeAttribute
	ld a, [hli]
	ld [wOTTrademonSpecies], a
	ld a, [hld]
	ld [wOTTrademonSpecies + 1], a

	ld a, [wPlayerTrademonSpecies]
	ld [wNamedObjectIndexBuffer], a
	ld a, [wPlayerTrademonSpecies + 1]
	ld de, wPlayerTrademonSpeciesName
	call GetTradeMonName
	call CopyTradeName

	ld a, [wOTTrademonSpecies]
	ld [wNamedObjectIndexBuffer], a
	ld a, [wOTTrademonSpecies + 1]
	ld de, wOTTrademonSpeciesName
	call GetTradeMonName
	call CopyTradeName

	ld hl, wPartyMonOT
	ld bc, NAME_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld de, wPlayerTrademonOTName
	call CopyTradeName

	ld hl, wPlayerName
	ld de, wPlayerTrademonSenderName
	call CopyTradeName

	ld hl, wPartyMon1ID
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld de, wPlayerTrademonID
	call Trade_CopyTwoBytes

	ld hl, wPartyMon1DVs
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld de, wPlayerTrademonDVs
	call Trade_CopyTwoBytes

	ld hl, wPartyMon1Level
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld a, [hl]
	ld [wCurPartyLevel], a
	ld a, [wOTTrademonSpecies]
	ld [wCurPartySpecies], a
	ld a, [wOTTrademonSpecies + 1]
	ld [wCurPartySpecies + 1], a
	xor a
	ld [wMonType], a ; PARTYMON
	ld [wPokemonWithdrawDepositParameter], a ; REMOVE_PARTY
	callfar RemoveMonFromPartyOrBox
	predef TryAddMonToParty

	ld e, NPCTRADE_NICK
	call GetTradeAttribute
	ld de, wOTTrademonNickname
	call CopyTradeName

	ld hl, wPartyMonNicknames
	ld bc, MON_NAME_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonNickname
	call CopyTradeName

	ld e, NPCTRADE_OT_NAME
	call GetTradeAttribute
	push hl
	ld de, wOTTrademonOTName
	call CopyTradeName
	pop hl
	ld de, wOTTrademonSenderName
	call CopyTradeName

	ld hl, wPartyMonOT
	ld bc, NAME_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonOTName
	call CopyTradeName

	ld e, NPCTRADE_DVS
	call GetTradeAttribute
	ld de, wOTTrademonDVs
	call Trade_CopyTwoBytes

	ld hl, wPartyMon1DVs
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonDVs
	call Trade_CopyTwoBytes

	ld e, NPCTRADE_OT_ID
	call GetTradeAttribute
	ld de, wOTTrademonID + 1
	call Trade_CopyTwoBytesReverseEndian

	ld hl, wPartyMon1ID
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonID
	call Trade_CopyTwoBytes

	ld e, NPCTRADE_ITEM
	call GetTradeAttribute
	push hl
	ld hl, wPartyMon1Item
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfLastPartymon
	pop hl
	ld a, [hl]
	ld [de], a

	push af
	push bc
	push de
	push hl
	ld a, [wCurPartyMon]
	push af
	ld a, [wPartyCount]
	dec a
	ld [wCurPartyMon], a
	farcall ComputeNPCTrademonStats
	pop af
	ld [wCurPartyMon], a
	pop hl
	pop de
	pop bc
	pop af
	ret

GetTradeAttribute:
	ld d, 0
	push de
	ld a, [wJumptableIndex]
	and $f
	swap a
	ld e, a
	ld d, 0
	ld hl, NPCTrades
	add hl, de
	add hl, de
	pop de
	add hl, de
	ret

Trade_GetAttributeOfCurrentPartymon:
	ld a, [wCurPartyMon]
	call AddNTimes
	ret

Trade_GetAttributeOfLastPartymon:
	ld a, [wPartyCount]
	dec a
	call AddNTimes
	ld e, l
	ld d, h
	ret

GetTradeMonName:
	push de
	ld [wNamedObjectIndexBuffer + 1], a
	call GetBasePokemonName
	ld hl, wStringBuffer1
	pop de
	ret

CopyTradeName:
	ld bc, NAME_LENGTH
	call CopyBytes
	ret

Functionfcbc7: ; unreferenced
	ld bc, 4
	call CopyBytes
	ld a, "@"
	ld [de], a
	ret

Functionfcbd1: ; unreferenced
	ld bc, 3
	call CopyBytes
	ld a, "@"
	ld [de], a
	ret

Trade_CopyTwoBytes:
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	ret

Trade_CopyTwoBytesReverseEndian:
	ld a, [hli]
	ld [de], a
	dec de
	ld a, [hl]
	ld [de], a
	ret

GetTradeMonNames:
	ld e, NPCTRADE_GETMON
	call GetTradeAttribute
	ld a, [hli]
	ld [wNamedObjectIndexBuffer], a
	ld a, [hl]
	call GetTradeMonName

	ld de, wStringBuffer2
	call CopyTradeName

	ld e, NPCTRADE_GIVEMON
	call GetTradeAttribute
	ld a, [hli]
	ld [wNamedObjectIndexBuffer], a
	ld a, [hl]
	call GetTradeMonName

	ld de, wMonOrItemNameBuffer
	call CopyTradeName

	ld hl, wStringBuffer1
.loop
	ld a, [hli]
	cp "@"
	jr nz, .loop

	dec hl
	push hl
	ld e, NPCTRADE_GENDER
	call GetTradeAttribute
	ld a, [hl]
	pop hl
	and a ; TRADE_GENDER_EITHER
	ret z
	cp TRADE_GENDER_MALE
	ld a, "♂"
	jr z, .done
	; TRADE_GENDER_FEMALE
	ld a, "♀"
.done
	ld [hli], a
	ld [hl], "@"
	ret

INCLUDE "data/events/npc_trades.asm"

PrintTradeText:
	push af
	call GetTradeMonNames
	pop af
	ld e, a
	ld d, 0
	ld hl, TradeTexts
rept 6
	add hl, de
endr
	ld a, [wce64]
	ld e, a
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call PrintText
	ret

TradeTexts:
; entries correspond to TRADE_DIALOG_* × TRADE_DIALOGSET_* constants
; TRADE_DIALOG_INTRO
	dw NPCTradeIntroText1
	dw NPCTradeIntroText2
	dw NPCTradeIntroText3
	dw NPCTradeIntroText4
	dw NPCTradeIntroText5
; TRADE_DIALOG_CANCEL
	dw NPCTradeCancelText1
	dw NPCTradeCancelText2
	dw NPCTradeCancelText3
	dw NPCTradeCancelText4
	dw NPCTradeCancelText5
; TRADE_DIALOG_WRONG
	dw NPCTradeWrongText1
	dw NPCTradeWrongText2
	dw NPCTradeWrongText3
	dw NPCTradeWrongText4
	dw NPCTradeWrongText5
; TRADE_DIALOG_COMPLETE
	dw NPCTradeCompleteText1
	dw NPCTradeCompleteText2
	dw NPCTradeCompleteText3
	dw NPCTradeCompleteText4
	dw NPCTradeCompleteText5
; TRADE_DIALOG_AFTER
	dw NPCTradeAfterText1
	dw NPCTradeAfterText2
	dw NPCTradeAfterText3
	dw NPCTradeAfterText4
	dw NPCTradeAfterText5

NPCTradeCableText:
	text_far _NPCTradeCableText
	text_end

TradedForText:
	; traded givemon for getmon
	text_far Text_NPCTraded
	text_asm
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame
	ld hl, .done
	ret

.done
	text_far _NPCTradeFanfareText
	text_end

NPCTradeIntroText1:
	text_far _NPCTradeIntroText1
	text_end

NPCTradeCancelText1:
	text_far _NPCTradeCancelText1
	text_end

NPCTradeWrongText1:
	text_far _NPCTradeWrongText1
	text_end

NPCTradeCompleteText1:
	text_far _NPCTradeCompleteText1
	text_end

NPCTradeAfterText1:
	text_far _NPCTradeAfterText1
	text_end

NPCTradeIntroText2:
	text_far _NPCTradeIntroText2
	text_end

NPCTradeCancelText2:
	text_far _NPCTradeCancelText2
	text_end

NPCTradeWrongText2:
	text_far _NPCTradeWrongText2
	text_end

NPCTradeCompleteText2:
	text_far _NPCTradeCompleteText2
	text_end

NPCTradeAfterText2:
	text_far _NPCTradeAfterText2
	text_end

NPCTradeIntroText3:
	text_far _NPCTradeIntroText3
	text_end

NPCTradeCancelText3:
	text_far _NPCTradeCancelText3
	text_end

NPCTradeWrongText3:
	text_far _NPCTradeWrongText3
	text_end

NPCTradeCompleteText3:
	text_far _NPCTradeCompleteText3
	text_end

NPCTradeAfterText3:
	text_far _NPCTradeAfterText3
	text_end

NPCTradeIntroText4:
	text "Hi. My @"
	text_ram wStringBuffer2
	line "wants a new owner."

	para "But I'd still like"
	line "to keep around a"
	cont "pet of my own."

	para "Do you have, hm, a"
	line "@"
	text_ram wMonOrItemNameBuffer
	text "?"
	text_end

NPCTradeCancelText4:
	text "Okay, just let me"
	line "know when you want"
	cont "my @"
	text_ram wStringBuffer2
	text "."
	text_end

NPCTradeWrongText4:
	text "Hey! That's not a"
	line "@"
	text_ram wMonOrItemNameBuffer
	text "! You"
	cont "knew I asked for"
	cont "one of those!"
	text_end

NPCTradeCompleteText4:
	text "Thanks for the"
	line "@"
	text_ram wMonOrItemNameBuffer
	text ", champ."
	cont "Enjoy your new"
	cont "@"
	text_ram wStringBuffer2
	text "."
	text_end

NPCTradeAfterText4:
	text "Hi. How's that"
	line "@"
	text_ram wStringBuffer2
	text " I sent"
	cont "you? @"
	text_ram wMonOrItemNameBuffer
	text " is"
	cont "doing great!"
	text_end

NPCTradeIntroText5:
	text "Hello there! I'm"
	line "conducting new"
	cont "research. Would"

	para "you mind trading"
	line "subjects? My"

	para "@"
	text_ram wStringBuffer2
	text " for a"
	line "@"
	text_ram wMonOrItemNameBuffer
	text "?"
	text_end

NPCTradeCancelText5:
	text "But what else will"
	line "I present at the"
	cont "conference?!?"

	text "I'll be a laughing"
	line "stock out there!"
	text_end

NPCTradeWrongText5:
	text "…but, that's the"
	line "wrong #MON!"

	para "I'm not ready for"
	line "that one yet!"
	text_end

NPCTradeCompleteText5:
	text "Splendid! This is"
	line "exactly the #-"
	cont "MON I needed!"
	text_end

NPCTradeAfterText5:
	text "Hello there! How's"
	line "ol' @"
	text_ram wStringBuffer2
	text "?"

	para "@"
	text_ram wMonOrItemNameBuffer
	text "'s taken"
	line "VERY well to my"
	cont "colleagues!"

	para "We may be keeping"
	line "it around here!"
	text_end