; Pokedex_RunJumptable.Jumptable indexes
	const_def
	const DEXSTATE_MAIN_SCR
	const DEXSTATE_UPDATE_MAIN_SCR
	const DEXSTATE_DEX_ENTRY_SCR
	const DEXSTATE_UPDATE_DEX_ENTRY_SCR
	const DEXSTATE_REINIT_DEX_ENTRY_SCR
	const DEXSTATE_SEARCH_SCR
	const DEXSTATE_UPDATE_SEARCH_SCR
	const DEXSTATE_OPTION_SCR
	const DEXSTATE_UPDATE_OPTION_SCR
	const DEXSTATE_SEARCH_RESULTS_SCR
	const DEXSTATE_UPDATE_SEARCH_RESULTS_SCR
	const DEXSTATE_UNOWN_MODE
	const DEXSTATE_UPDATE_UNOWN_MODE
	const DEXSTATE_EXIT

POKEDEX_SCX EQU 5
EXPORT POKEDEX_SCX

Pokedex:
	ld a, BANK("Pokedex")
	call OpenSRAM
	ldh a, [hWX]
	ld l, a
	ldh a, [hWY]
	ld h, a
	push hl
	ldh a, [hSCX]
	push af
	ld hl, wOptions
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]
	ld a, [wVramState]
	push af
	xor a
	ld [wVramState], a
	ldh a, [hInMenu]
	push af
	ld a, $1
	ldh [hInMenu], a

	xor a
	ldh [hMapAnims], a
	call InitPokedex
	call DelayFrame

.main
	call JoyTextDelay
	ld a, [wJumptableIndex]
	bit 7, a
	jr nz, .exit
	call Pokedex_RunJumptable
	call DelayFrame
	jr .main

.exit
	ld de, SFX_READ_TEXT_2
	call PlaySFX
	call WaitSFX
	call ClearSprites
	ld a, [sCurDexMode]
	ld [wLastDexMode], a
	call CloseSRAM

	pop af
	ldh [hInMenu], a
	pop af
	ld [wVramState], a
	pop af
	ld [wOptions], a
	pop af
	ldh [hSCX], a
	pop hl
	ld a, l
	ldh [hWX], a
	ld a, h
	ldh [hWY], a
	ret

InitPokedex:
	call ClearBGPalettes
	call ClearSprites
	call ClearTilemap
	call Pokedex_LoadGFX

	ld hl, sPokedexDataStart
	ld bc, sPokedexDataEnd - sPokedexDataStart
	xor a
	call ByteFill

	xor a
	ld [wJumptableIndex], a
	ld [wPrevDexEntryJumptableIndex], a
	ld [wPrevDexEntryBackup], a
	ld [wce66], a

	call Pokedex_CheckUnlockedUnownMode

	ld a, [wLastDexMode]
	ld [sCurDexMode], a

	call Pokedex_OrderMonsByMode
	call Pokedex_InitCursorPosition
	call Pokedex_GetLandmark
	farcall DrawDexEntryScreenRightEdge
	call Pokedex_ResetBGMapMode
	ret

Pokedex_CheckUnlockedUnownMode:
	ld a, [wStatusFlags]
	bit STATUSFLAGS_UNOWN_DEX_F, a
	ld a, FALSE
	jr z, .locked

	inc a
.locked
	ld [sUnlockedUnownMode], a
	ret

Pokedex_InitCursorPosition:
	ld hl, sPokedexOrder
	ld a, [wPrevDexEntry + 1]
	and a
	jr nz, .next
	cp HIGH(NUM_POKEMON)
	jr c, .next
	jr nz, .done
	ld a, [wPrevDexEntry]
	and a
	jr z, .done
	cp LOW(NUM_POKEMON + 1)
	jr nc, .done

.next
	ld b, a
	ld a, [sDexListingEnd]
	cp $8
	jr c, .only_one_page

	sub $7
	ld c, a
.loop1
	ld a, b
	cp [hl]
	jr z, .done
	inc hl
	ld a, [sDexListingScrollOffset]
	inc a
	ld [sDexListingScrollOffset], a
	dec c
	jr nz, .loop1

.only_one_page
	ld c, $7
.loop2
	ld a, b
	cp [hl]
	jr z, .done
	inc hl
	ld a, [sDexListingCursor]
	inc a
	ld [sDexListingCursor], a
	dec c
	jr nz, .loop2

.done
	ret

Pokedex_GetLandmark:
	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	call GetWorldMapLocation

	cp LANDMARK_SPECIAL
	jr nz, .load

	ld a, [wBackupMapGroup]
	ld b, a
	ld a, [wBackupMapNumber]
	ld c, a
	call GetWorldMapLocation

.load
	ld [sDexCurLocation], a
	ret

Pokedex_RunJumptable:
	ld a, [wJumptableIndex]
	ld hl, .Jumptable
	call Pokedex_LoadPointer
	jp hl

.Jumptable:
; entries correspond to DEXSTATE_* constants
	dw Pokedex_InitMainScreen
	dw Pokedex_UpdateMainScreen
	dw Pokedex_InitDexEntryScreen
	dw Pokedex_UpdateDexEntryScreen
	dw Pokedex_ReinitDexEntryScreen
	dw Pokedex_InitSearchScreen
	dw Pokedex_UpdateSearchScreen
	dw Pokedex_InitOptionScreen
	dw Pokedex_UpdateOptionScreen
	dw Pokedex_InitSearchResultsScreen
	dw Pokedex_UpdateSearchResultsScreen
	dw Pokedex_InitUnownMode
	dw Pokedex_UpdateUnownMode
	dw Pokedex_Exit

Pokedex_IncrementDexPointer:
	ld hl, wJumptableIndex
	inc [hl]
	ret

Pokedex_Exit:
	ld hl, wJumptableIndex
	set 7, [hl]
	ret

Pokedex_InitMainScreen:
	xor a
	ldh [hBGMapMode], a
	call ClearSprites
	xor a
	hlcoord 0, 0, wAttrmap
	ld bc, SCREEN_HEIGHT * SCREEN_WIDTH
	call ByteFill
	farcall DrawPokedexListWindow
	hlcoord 0, 17
	ld de, String_START_SEARCH
	call Pokedex_PlaceString
	ld a, 7
	ld [sDexListingHeight], a
	call Pokedex_PrintListing
	call Pokedex_SetBGMapMode_3ifDMG_4ifCGB
	call Pokedex_ResetBGMapMode
	call Pokedex_DrawMainScreenBG
	ld a, POKEDEX_SCX
	ldh [hSCX], a

	ld a, [sCurDexMode]
	cp DEXMODE_OLD
	ld a, $4a
	jr z, .okay
	ld a, $47
.okay
	ldh [hWX], a
	xor a
	ldh [hWY], a
	call WaitBGMap

	call Pokedex_ResetBGMapMode
	ld a, -1
	ld [wCurPartySpecies], a
	ld [wCurPartySpecies + 1], a
	ld a, SCGB_POKEDEX
	call Pokedex_GetSGBLayout
	call Pokedex_UpdateCursorOAM
	farcall DrawPokedexListWindow
	hlcoord 0, 17
	ld de, String_START_SEARCH
	call Pokedex_PlaceString
	ld a, 7
	ld [sDexListingHeight], a
	call Pokedex_PrintListing
	call Pokedex_IncrementDexPointer
	ret

Pokedex_UpdateMainScreen:
	ld hl, hJoyPressed
	ld a, [hl]
	and B_BUTTON
	jr nz, .b
	ld a, [hl]
	and A_BUTTON
	jr nz, .a
	ld a, [hl]
	and SELECT
	jr nz, .select
	ld a, [hl]
	and START
	jr nz, .start
	call Pokedex_ListingHandleDPadInput
	ret nc
	call Pokedex_UpdateCursorOAM
	xor a
	ldh [hBGMapMode], a
	call Pokedex_PrintListing
	call Pokedex_SetBGMapMode3
	call Pokedex_ResetBGMapMode
	ret

.a
	call Pokedex_GetSelectedMon
	call Pokedex_CheckSeen
	ret z
	ld a, DEXSTATE_DEX_ENTRY_SCR
	ld [wJumptableIndex], a
	ld a, DEXSTATE_MAIN_SCR
	ld [wPrevDexEntryJumptableIndex], a
	ret

.select
	call Pokedex_BlackOutBG
	ld a, DEXSTATE_OPTION_SCR
	ld [wJumptableIndex], a
	xor a
	ldh [hSCX], a
	ld a, $a7
	ldh [hWX], a
	call DelayFrame
	ret

.start
	call Pokedex_BlackOutBG
	ld a, DEXSTATE_SEARCH_SCR
	ld [wJumptableIndex], a
	xor a
	ldh [hSCX], a
	ld a, $a7
	ldh [hWX], a
	call DelayFrame
	ret

.b
	ld a, DEXSTATE_EXIT
	ld [wJumptableIndex], a
	ret

Pokedex_InitDexEntryScreen:
	call LowVolume
	xor a ; page 1
	ld [wPokedexStatus], a
	xor a
	ldh [hBGMapMode], a
	call ClearSprites
	call Pokedex_LoadCurrentFootprint
	call Pokedex_DrawDexEntryScreenBG
	call Pokedex_InitArrowCursor
	call Pokedex_GetSelectedMon
	ld [wPrevDexEntry], a
	farcall DisplayDexEntry
	call Pokedex_DrawFootprint
	call WaitBGMap
	ld a, $a7
	ldh [hWX], a
	call Pokedex_GetSelectedMon
	ld [wCurPartySpecies], a
	ld a, SCGB_POKEDEX
	call Pokedex_GetSGBLayout
	ld a, [wCurPartySpecies]
	ld c, a
	ld a, [wCurPartySpecies + 1]
	ld b, a
	call PlayMonCry
	call Pokedex_IncrementDexPointer
	ret

Pokedex_UpdateDexEntryScreen:
	ld de, DexEntryScreen_ArrowCursorData
	call Pokedex_MoveArrowCursor
	ld hl, hJoyPressed
	ld a, [hl]
	and B_BUTTON
	jr nz, .return_to_prev_screen
	ld a, [hl]
	and A_BUTTON
	jr nz, .do_menu_action
	call Pokedex_NextOrPreviousDexEntry
	ret nc
	call Pokedex_IncrementDexPointer
	ret

.do_menu_action
	ld a, [sDexArrowCursorPosIndex]
	ld hl, DexEntryScreen_MenuActionJumptable
	call Pokedex_LoadPointer
	jp hl

.return_to_prev_screen
	ld a, [wLastVolume]
	and a
	jr z, .max_volume
	ld a, $77
	ld [wLastVolume], a

.max_volume
	call MaxVolume
	ld a, [wPrevDexEntryJumptableIndex]
	ld [wJumptableIndex], a
	ret

Pokedex_Page:
	ld a, [wPokedexStatus]
	xor 1 ; toggle page
	ld [wPokedexStatus], a
	call Pokedex_GetSelectedMon
	ld [wPrevDexEntry], a
	farcall DisplayDexEntry
	call WaitBGMap
	ret

Pokedex_ReinitDexEntryScreen:
; Reinitialize the Pokédex entry screen after changing the selected mon.
	call Pokedex_BlackOutBG
	xor a ; page 1
	ld [wPokedexStatus], a
	xor a
	ldh [hBGMapMode], a
	call Pokedex_DrawDexEntryScreenBG
	call Pokedex_InitArrowCursor
	call Pokedex_LoadCurrentFootprint
	call Pokedex_GetSelectedMon
	ld [wPrevDexEntry], a
	farcall DisplayDexEntry
	call Pokedex_DrawFootprint
	call Pokedex_LoadSelectedMonTiles
	call WaitBGMap
	call Pokedex_GetSelectedMon
	ld [wCurPartySpecies], a
	ld a, SCGB_POKEDEX
	call Pokedex_GetSGBLayout
	ld a, [wCurPartySpecies]
	ld c, a
	ld a, [wCurPartySpecies + 1]
	ld b, a
	call PlayMonCry
	ld hl, wJumptableIndex
	dec [hl]
	ret

DexEntryScreen_ArrowCursorData:
	db D_RIGHT | D_LEFT, 4
	dwcoord 1, 17  ; PAGE
	dwcoord 6, 17  ; AREA
	dwcoord 11, 17 ; CRY
	dwcoord 15, 17 ; PRNT

DexEntryScreen_MenuActionJumptable:
	dw Pokedex_Page
	dw .Area
	dw .Cry
	dw .Print

.Area:
	call Pokedex_BlackOutBG
	xor a
	ldh [hSCX], a
	call DelayFrame
	ld a, $7
	ldh [hWX], a
	ld a, $90
	ldh [hWY], a
	call Pokedex_GetSelectedMon
	ld a, [sDexCurLocation]
	ld e, a
	predef Pokedex_GetArea
	call Pokedex_BlackOutBG
	call DelayFrame
	xor a
	ldh [hBGMapMode], a
	ld a, $90
	ldh [hWY], a
	ld a, POKEDEX_SCX
	ldh [hSCX], a
	call DelayFrame
	call Pokedex_RedisplayDexEntry
	call Pokedex_LoadSelectedMonTiles
	call WaitBGMap
	push bc
	call Pokedex_GetSelectedMon
	ld a, c
	ld [wCurPartySpecies], a
	ld a, b
	ld [wCurPartySpecies + 1], a
	pop bc
	ld a, SCGB_POKEDEX
	call Pokedex_GetSGBLayout
	ret

.Cry:
	call Pokedex_GetSelectedMon
	ld a, [wTempSpecies]
	ld c, a
	ld a, [wTempSpecies + 1]
	ld b, a
	call GetCryIndex
	ld e, c
	ld d, b
	call PlayCry
	ret

.Print:
	call Pokedex_ApplyPrintPals
	xor a
	ldh [hSCX], a
	ld a, [wPrevDexEntryBackup]
	push af
	ld a, [wPrevDexEntryJumptableIndex]
	push af
	ld a, [wJumptableIndex]
	push af
	farcall PrintDexEntry
	pop af
	ld [wJumptableIndex], a
	pop af
	ld [wPrevDexEntryJumptableIndex], a
	pop af
	ld [wPrevDexEntryBackup], a
	call ClearBGPalettes
	call DisableLCD
	call Pokedex_LoadInvertedFont
	call Pokedex_RedisplayDexEntry
	call EnableLCD
	call WaitBGMap
	ld a, POKEDEX_SCX
	ldh [hSCX], a
	call Pokedex_ApplyUsualPals
	ret

Pokedex_RedisplayDexEntry:
	call Pokedex_DrawDexEntryScreenBG
	call Pokedex_GetSelectedMon
	farcall DisplayDexEntry
	call Pokedex_DrawFootprint
	ret

Pokedex_InitOptionScreen:
	xor a
	ldh [hBGMapMode], a
	call ClearSprites
	call Pokedex_DrawOptionScreenBG
	call Pokedex_InitArrowCursor
	ld a, [sCurDexMode] ; Index of the topmost visible item in a scrolling menu ???
	ld [sDexArrowCursorPosIndex], a
	call Pokedex_DisplayModeDescription
	call WaitBGMap
	ld a, SCGB_POKEDEX_SEARCH_OPTION
	call Pokedex_GetSGBLayout
	call Pokedex_IncrementDexPointer
	ret

Pokedex_UpdateOptionScreen:
	ld a, [sUnlockedUnownMode]
	and a
	jr nz, .okay
	ld de, .NoUnownModeArrowCursorData
	jr .okay2
.okay
	ld de, .ArrowCursorData
.okay2
	call Pokedex_MoveArrowCursor
	call c, Pokedex_DisplayModeDescription
	ld hl, hJoyPressed
	ld a, [hl]
	and SELECT | B_BUTTON
	jr nz, .return_to_main_screen
	ld a, [hl]
	and A_BUTTON
	jr nz, .do_menu_action
	ret

.do_menu_action
	ld a, [sDexArrowCursorPosIndex]
	ld hl, .MenuActionJumptable
	call Pokedex_LoadPointer
	jp hl

.return_to_main_screen
	call Pokedex_BlackOutBG
	ld a, DEXSTATE_MAIN_SCR
	ld [wJumptableIndex], a
	ret

.NoUnownModeArrowCursorData:
	db D_UP | D_DOWN, 3
	dwcoord 2,  4 ; NEW
	dwcoord 2,  6 ; OLD
	dwcoord 2,  8 ; ABC

.ArrowCursorData:
	db D_UP | D_DOWN, 4
	dwcoord 2,  4 ; NEW
	dwcoord 2,  6 ; OLD
	dwcoord 2,  8 ; ABC
	dwcoord 2, 10 ; UNOWN

.MenuActionJumptable:
	dw .MenuAction_NewMode
	dw .MenuAction_OldMode
	dw .MenuAction_ABCMode
	dw .MenuAction_UnownMode

.MenuAction_NewMode:
	ld b, DEXMODE_NEW
	jr .ChangeMode

.MenuAction_OldMode:
	ld b, DEXMODE_OLD
	jr .ChangeMode

.MenuAction_ABCMode:
	ld b, DEXMODE_ABC

.ChangeMode:
	ld a, [sCurDexMode]
	cp b
	jr z, .skip_changing_mode ; Skip if new mode is same as current.

	ld a, b
	ld [sCurDexMode], a
	call Pokedex_OrderMonsByMode
	call Pokedex_DisplayChangingModesMessage
	xor a
	ld [sDexListingScrollOffset], a
	ld [sDexListingCursor], a
	call Pokedex_InitCursorPosition

.skip_changing_mode
	call Pokedex_BlackOutBG
	ld a, DEXSTATE_MAIN_SCR
	ld [wJumptableIndex], a
	ret

.MenuAction_UnownMode:
	call Pokedex_BlackOutBG
	ld a, DEXSTATE_UNOWN_MODE
	ld [wJumptableIndex], a
	ret

Pokedex_InitSearchScreen:
	xor a
	ldh [hBGMapMode], a
	call ClearSprites
	call Pokedex_DrawSearchScreenBG
	call Pokedex_InitArrowCursor
	ld a, NORMAL + 1
	ld [sDexSearchMonType1], a
	xor a
	ld [sDexSearchMonType2], a
	call Pokedex_PlaceSearchScreenTypeStrings
	xor a
	ld [sDexSearchSlowpokeFrame], a
	farcall DoDexSearchSlowpokeFrame
	call WaitBGMap
	ld a, SCGB_POKEDEX_SEARCH_OPTION
	call Pokedex_GetSGBLayout
	jp Pokedex_IncrementDexPointer

Pokedex_UpdateSearchScreen:
	ld de, .ArrowCursorData
	call Pokedex_MoveArrowCursor
	call Pokedex_UpdateSearchMonType
	call c, Pokedex_PlaceSearchScreenTypeStrings
	ld hl, hJoyPressed
	ld a, [hl]
	and START | B_BUTTON
	jr nz, .cancel
	ld a, [hl]
	and A_BUTTON
	ret z
	ld a, [sDexArrowCursorPosIndex]
	ld hl, .MenuActionJumptable
	call Pokedex_LoadPointer
	jp hl

.cancel
	call Pokedex_BlackOutBG
	ld a, DEXSTATE_MAIN_SCR
	ld [wJumptableIndex], a
	ret

.ArrowCursorData:
	db D_UP | D_DOWN, 4
	dwcoord 2, 4  ; TYPE 1
	dwcoord 2, 6  ; TYPE 2
	dwcoord 2, 13 ; BEGIN SEARCH
	dwcoord 2, 15 ; CANCEL

.MenuActionJumptable:
	dw .MenuAction_MonSearchType
	dw .MenuAction_MonSearchType
	dw .MenuAction_BeginSearch
	dw .MenuAction_Cancel

.MenuAction_MonSearchType:
	call Pokedex_NextSearchMonType
	jp Pokedex_PlaceSearchScreenTypeStrings

.MenuAction_BeginSearch:
	call Pokedex_SearchForMons
	farcall AnimateDexSearchSlowpoke
	ld a, [sDexSearchResultCount]
	and a
	jr nz, .show_search_results

; No mon with matching types was found.
	call Pokedex_OrderMonsByMode
	call Pokedex_DisplayTypeNotFoundMessage
	xor a
	ldh [hBGMapMode], a
	call Pokedex_DrawSearchScreenBG
	call Pokedex_InitArrowCursor
	call Pokedex_PlaceSearchScreenTypeStrings
	jp WaitBGMap

.show_search_results
	ld [sDexListingEnd], a
	ld a, [sDexListingScrollOffset]
	ld [sDexListingScrollOffsetBackup], a
	ld a, [sDexListingCursor]
	ld [sDexListingCursorBackup], a
	ld a, [wPrevDexEntry]
	ld [wPrevDexEntryBackup], a
	xor a
	ld [sDexListingScrollOffset], a
	ld [sDexListingCursor], a
	call Pokedex_BlackOutBG
	ld a, DEXSTATE_SEARCH_RESULTS_SCR
	ld [wJumptableIndex], a
	ret

.MenuAction_Cancel:
	call Pokedex_BlackOutBG
	ld a, DEXSTATE_MAIN_SCR
	ld [wJumptableIndex], a
	ret

Pokedex_InitSearchResultsScreen:
	xor a
	ldh [hBGMapMode], a
	xor a
	hlcoord 0, 0, wAttrmap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	call ByteFill
	call Pokedex_SetBGMapMode4
	call Pokedex_ResetBGMapMode
	farcall DrawPokedexSearchResultsWindow
	call Pokedex_PlaceSearchResultsTypeStrings
	ld a, 4
	ld [sDexListingHeight], a
	call Pokedex_PrintListing
	call Pokedex_SetBGMapMode3
	call Pokedex_ResetBGMapMode
	call Pokedex_DrawSearchResultsScreenBG
	ld a, POKEDEX_SCX
	ldh [hSCX], a
	ld a, $4a
	ldh [hWX], a
	xor a
	ldh [hWY], a
	call WaitBGMap
	call Pokedex_ResetBGMapMode
	farcall DrawPokedexSearchResultsWindow
	call Pokedex_PlaceSearchResultsTypeStrings
	call Pokedex_UpdateSearchResultsCursorOAM
	ld a, -1
	ld [wCurPartySpecies], a
	ld [wCurPartySpecies + 1], a
	ld a, SCGB_POKEDEX
	call Pokedex_GetSGBLayout
	jp Pokedex_IncrementDexPointer

Pokedex_UpdateSearchResultsScreen:
	ld hl, hJoyPressed
	ld a, [hl]
	and B_BUTTON
	jr nz, .return_to_search_screen
	ld a, [hl]
	and A_BUTTON
	jr nz, .go_to_dex_entry
	call Pokedex_ListingHandleDPadInput
	ret nc
	call Pokedex_UpdateSearchResultsCursorOAM
	xor a
	ldh [hBGMapMode], a
	call Pokedex_PrintListing
	call Pokedex_SetBGMapMode3
	jp Pokedex_ResetBGMapMode

.go_to_dex_entry
	call Pokedex_GetSelectedMon
	call Pokedex_CheckSeen
	ret z
	ld a, DEXSTATE_DEX_ENTRY_SCR
	ld [wJumptableIndex], a
	ld a, DEXSTATE_SEARCH_RESULTS_SCR
	ld [wPrevDexEntryJumptableIndex], a
	ret

.return_to_search_screen
	ld a, BANK("Pokedex")
	call OpenSRAM
	ld a, [sDexListingScrollOffsetBackup]
	ld [sDexListingScrollOffset], a
	ld a, [sDexListingCursorBackup]
	ld [sDexListingCursor], a
	ld a, [wPrevDexEntryBackup]
	ld [wPrevDexEntry], a
	call Pokedex_BlackOutBG
	call ClearSprites
	call Pokedex_OrderMonsByMode
	call CloseSRAM
	ld a, DEXSTATE_SEARCH_SCR
	ld [wJumptableIndex], a
	xor a
	ldh [hSCX], a
	ld a, $a7
	ldh [hWX], a
	ret

Pokedex_InitUnownMode:
	call Pokedex_LoadUnownFont
	call Pokedex_DrawUnownModeBG
	xor a
	ld [sDexCurUnownIndex], a
	call Pokedex_LoadUnownFrontpicTiles
	call Pokedex_UnownModePlaceCursor
	farcall PrintUnownWord
	call WaitBGMap
	ld a, SCGB_POKEDEX_UNOWN_MODE
	call Pokedex_GetSGBLayout
	call Pokedex_IncrementDexPointer
	ret

Pokedex_UpdateUnownMode:
	ld hl, hJoyPressed
	ld a, [hl]
	and A_BUTTON | B_BUTTON
	jr nz, .a_b
	call Pokedex_UnownModeHandleDPadInput
	ret

.a_b
	call Pokedex_BlackOutBG
	ld a, DEXSTATE_OPTION_SCR
	ld [wJumptableIndex], a
	call DelayFrame
	call Pokedex_CheckSGB
	jr nz, .decompress
	farcall LoadSGBPokedexGFX2
	jr .done

.decompress
	ld hl, PokedexLZ
	ld de, vTiles2 tile $31
	lb bc, BANK(PokedexLZ), 58
	call DecompressRequest2bpp

.done
	ret

Pokedex_UnownModeHandleDPadInput:
	ld hl, hJoyLast
	ld a, [hl]
	and D_RIGHT
	jr nz, .right
	ld a, [hl]
	and D_LEFT
	jr nz, .left
	ret

.right
	ld a, [sDexUnownCount]
	ld e, a
	ld hl, sDexCurUnownIndex
	ld a, [hl]
	inc a
	cp e
	ret nc
	ld a, [hl]
	inc [hl]
	jr .update

.left
	ld hl, sDexCurUnownIndex
	ld a, [hl]
	and a
	ret z
	ld a, [hl]
	dec [hl]

.update
	push af
	xor a
	ldh [hBGMapMode], a
	pop af
	call Pokedex_UnownModeEraseCursor
	call Pokedex_LoadUnownFrontpicTiles
	call Pokedex_UnownModePlaceCursor
	farcall PrintUnownWord
	ld a, $1
	ldh [hBGMapMode], a
	call DelayFrame
	call DelayFrame
	ret

Pokedex_UnownModeEraseCursor:
	ld c, " "
	jr Pokedex_UnownModeUpdateCursorGfx

Pokedex_UnownModePlaceCursor:
	ld a, [sDexCurUnownIndex]
	ld c, FIRST_UNOWN_CHAR + NUM_UNOWN ; diamond cursor

Pokedex_UnownModeUpdateCursorGfx:
	ld e, a
	ld d, 0
	ld hl, UnownModeLetterAndCursorCoords + 2
rept 4
	add hl, de
endr
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld [hl], c
	ret

Pokedex_NextOrPreviousDexEntry:
	ld a, [sDexListingCursor]
	ld [sBackupDexListingCursor], a
	ld a, [sDexListingScrollOffset]
	ld [sBackupDexListingPage], a
	ld hl, hJoyLast
	ld a, [hl]
	and D_UP
	jr nz, .up
	ld a, [hl]
	and D_DOWN
	jr nz, .down
	and a
	ret

.up
	ld a, [sDexListingHeight]
	ld d, a
	ld a, [sDexListingEnd]
	ld e, a
	call Pokedex_ListingMoveCursorUp
	jr nc, .nope
	call Pokedex_GetSelectedMon
	call Pokedex_CheckSeen
	jr nz, .yep
	jr .up

.down
	ld a, [sDexListingHeight]
	ld d, a
	ld a, [sDexListingEnd]
	ld e, a
	call Pokedex_ListingMoveCursorDown
	jr nc, .nope
	call Pokedex_GetSelectedMon
	call Pokedex_CheckSeen
	jr nz, .yep
	jr .down

.yep
	scf
	ret

.nope
	ld a, [sBackupDexListingCursor]
	ld [sDexListingCursor], a
	ld a, [sBackupDexListingPage]
	ld [sDexListingScrollOffset], a
	and a
	ret

Pokedex_ListingHandleDPadInput:
; Handles D-pad input for a list of Pokémon.
	ld a, [sDexListingHeight]
	ld d, a
	ld a, [sDexListingEnd]
	ld e, a
	ld hl, hJoyLast
	ld a, [hl]
	and D_UP
	jr nz, Pokedex_ListingMoveCursorUp
	ld a, [hl]
	and D_DOWN
	jr nz, Pokedex_ListingMoveCursorDown
	ld a, d
	cp e
	jr nc, Pokedex_ListingPosStayedSame
	ld a, [hl]
	and D_LEFT
	jr nz, Pokedex_ListingMoveUpOnePage
	ld a, [hl]
	and D_RIGHT
	jr nz, Pokedex_ListingMoveDownOnePage
	jr Pokedex_ListingPosStayedSame

Pokedex_ListingMoveCursorUp:
	ld hl, sDexListingCursor
	ld a, [hl]
	and a
	jr z, .try_scrolling
	dec [hl]
	jr Pokedex_ListingPosChanged
.try_scrolling
	ld hl, sDexListingScrollOffset
	ld a, [hl]
	and a
	jr z, Pokedex_ListingPosStayedSame
	dec [hl]
	jr Pokedex_ListingPosChanged

Pokedex_ListingMoveCursorDown:
	ld hl, sDexListingCursor
	ld a, [hl]
	inc a
	cp e
	jr nc, Pokedex_ListingPosStayedSame
	cp d
	jr nc, .try_scrolling
	inc [hl]
	jr Pokedex_ListingPosChanged
.try_scrolling
	ld hl, sDexListingScrollOffset
	add [hl]
	cp e
	jr nc, Pokedex_ListingPosStayedSame
	inc [hl]
	jr Pokedex_ListingPosChanged

Pokedex_ListingMoveUpOnePage:
	ld hl, sDexListingScrollOffset
	ld a, [hl]
	and a
	jr z, Pokedex_ListingPosStayedSame
	cp d
	jr nc, .not_near_top
; If we're already less than page away from the top, go to the top.
	xor a
	ld [hl], a
	jr Pokedex_ListingPosChanged
.not_near_top
	sub d
	ld [hl], a
	jr Pokedex_ListingPosChanged

Pokedex_ListingMoveDownOnePage:
; When moving down a page, the return value always report a change in position.
	ld hl, sDexListingScrollOffset
	ld a, d
	add a
	add [hl]
	jr c, .near_bottom
	cp e
	jr c, .not_near_bottom
.near_bottom
	ld a, e
	sub d
	ld [hl], a
	jr Pokedex_ListingPosChanged
.not_near_bottom
	ld a, [hl]
	add d
	ld [hl], a
	jr Pokedex_ListingPosChanged

Pokedex_ListingPosStayedSame:
	and a
	ret

Pokedex_ListingPosChanged:
	scf
	ret

Pokedex_FillColumn:
; Fills a column starting at hl, going downwards.
; b is the height of the column, and a is the tile it's filled with.
	push de
	ld de, SCREEN_WIDTH
.loop
	ld [hl], a
	add hl, de
	dec b
	jr nz, .loop
	pop de
	ret

Pokedex_DrawMainScreenBG:
; Draws the left sidebar and the bottom bar on the main screen.
	hlcoord 0, 17
	ld de, String_START_SEARCH
	call Pokedex_PlaceString
	ld a, $32
	hlcoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	call ByteFill
	hlcoord 0, 0
	lb bc, 7, 7
	call Pokedex_PlaceBorder
	hlcoord 0, 9
	lb bc, 6, 7
	call Pokedex_PlaceBorder
	hlcoord 1, 11
	ld de, String_SEEN
	call Pokedex_PlaceString
	ld hl, wPokedexSeen
	ld b, wEndPokedexSeen - wPokedexSeen
	call CountSetBits
	ld de, wNumSetBits
	hlcoord 5, 12
	lb bc, 1, 3
	call PrintNum
	hlcoord 1, 14
	ld de, String_OWN
	call Pokedex_PlaceString
	ld hl, wPokedexCaught
	ld b, wEndPokedexCaught - wPokedexCaught
	call CountSetBits
	ld de, wNumSetBits
	hlcoord 5, 15
	lb bc, 1, 3
	call PrintNum
	hlcoord 1, 17
	ld de, String_SELECT_OPTION
	call Pokedex_PlaceString
	hlcoord 8, 1
	ld b, 7
	ld a, $5a
	call Pokedex_FillColumn
	hlcoord 8, 10
	ld b, 6
	ld a, $5a
	call Pokedex_FillColumn
	hlcoord 8, 0
	ld [hl], $59
	hlcoord 8, 8
	ld [hl], $53
	hlcoord 8, 9
	ld [hl], $54
	hlcoord 8, 16
	ld [hl], $5b
	call Pokedex_PlaceFrontpicTopLeftCorner
	ret

String_SEEN:
	db "SEEN", -1
String_OWN:
	db "OWN", -1
String_SELECT_OPTION:
	db $3b, $48, $49, $4a, $44, $45, $46, $47 ; SELECT > OPTION
	; fallthrough
String_START_SEARCH:
	db $3c, $3b, $41, $42, $43, $4b, $4c, $4d, $4e, $3c, -1 ; START > SEARCH

Pokedex_DrawDexEntryScreenBG:
	call Pokedex_FillBackgroundColor2
	hlcoord 0, 0
	lb bc, 15, 18
	call Pokedex_PlaceBorder
	hlcoord 19, 0
	ld [hl], $34
	hlcoord 19, 1
	ld a, " "
	ld b, 15
	call Pokedex_FillColumn
	ld [hl], $39
	hlcoord 1, 10
	ld bc, 19
	ld a, $61
	call ByteFill
	hlcoord 1, 17
	ld bc, 18
	ld a, " "
	call ByteFill
	hlcoord 9, 7
	ld de, .Height
	call Pokedex_PlaceString
	hlcoord 9, 9
	ld de, .Weight
	call Pokedex_PlaceString
	hlcoord 0, 17
	ld de, .MenuItems
	call Pokedex_PlaceString
	call Pokedex_PlaceFrontpicTopLeftCorner
	ret

.Unused:
	db $5c, $5d, -1 ; No.
.Height:
	db "HT  ?", $5e, "??", $5f, -1 ; HT  ?'??"
.Weight:
	db "WT   ???lb", -1 ; WT   ???lb
.MenuItems:
	db $3b, " PAGE AREA CRY PRNT", -1

Pokedex_DrawOptionScreenBG:
	call Pokedex_FillBackgroundColor2
	hlcoord 0, 2
	lb bc, 8, 18
	call Pokedex_PlaceBorder
	hlcoord 0, 12
	lb bc, 4, 18
	call Pokedex_PlaceBorder
	hlcoord 0, 1
	ld de, .Title
	call Pokedex_PlaceString
	hlcoord 3, 4
	ld de, .Modes
	call PlaceString
	ld a, [sUnlockedUnownMode]
	and a
	ret z
	hlcoord 3, 10
	ld de, .UnownMode
	call PlaceString
	ret

.Title:
	db $3b, " OPTION ", $3c, -1

.Modes:
	db   "NEW #DEX MODE"
	next "OLD #DEX MODE"
	next "ALPHABETICAL MODE"
	db   "@"

.UnownMode:
	db "UNOWN MODE@"

Pokedex_DrawSearchScreenBG:
	call Pokedex_FillBackgroundColor2
	hlcoord 0, 2
	lb bc, 14, 18
	call Pokedex_PlaceBorder
	hlcoord 0, 1
	ld de, .Title
	call Pokedex_PlaceString
	hlcoord 8, 4
	ld de, .TypeLeftRightArrows
	call Pokedex_PlaceString
	hlcoord 8, 6
	ld de, .TypeLeftRightArrows
	call Pokedex_PlaceString
	hlcoord 3, 4
	ld de, .Types
	call PlaceString
	hlcoord 3, 13
	ld de, .Menu
	call PlaceString
	ret

.Title:
	db $3b, " SEARCH ", $3c, -1

.TypeLeftRightArrows:
	db $3d, "        ", $3e, -1

.Types:
	db   "TYPE1"
	next "TYPE2"
	db   "@"

.Menu:
	db   "START SEARCH!!"
	next "CANCEL"
	db   "@"

Pokedex_DrawSearchResultsScreenBG:
	call Pokedex_FillBackgroundColor2
	hlcoord 0, 0
	lb bc, 7, 7
	call Pokedex_PlaceBorder
	hlcoord 0, 11
	lb bc, 5, 18
	call Pokedex_PlaceBorder
	hlcoord 1, 12
	ld de, .BottomWindowText
	call PlaceString
	ld de, sDexSearchResultCount
	hlcoord 1, 16
	lb bc, 1, 3
	call PrintNum
	hlcoord 8, 0
	ld [hl], $59
	hlcoord 8, 1
	ld b, 7
	ld a, $5a
	call Pokedex_FillColumn
	hlcoord 8, 8
	ld [hl], $53
	hlcoord 8, 9
	ld [hl], $69
	hlcoord 8, 10
	ld [hl], $6a
	call Pokedex_PlaceFrontpicTopLeftCorner
	ret

.BottomWindowText:
	db   "SEARCH RESULTS"
	next "  TYPE"
	next "    FOUND!"
	db   "@"

Pokedex_PlaceSearchResultsTypeStrings:
	ld a, [sDexSearchMonType1]
	hlcoord 0, 14
	call Pokedex_PlaceTypeString
	ld a, [sDexSearchMonType1]
	ld b, a
	ld a, [sDexSearchMonType2]
	and a
	jr z, .done
	cp b
	jr z, .done
	hlcoord 2, 15
	call Pokedex_PlaceTypeString
	hlcoord 1, 15
	ld [hl], "/"
.done
	ret

Pokedex_DrawUnownModeBG:
	call Pokedex_FillBackgroundColor2
	hlcoord 2, 1
	lb bc, 10, 13
	call Pokedex_PlaceBorder
	hlcoord 2, 14
	lb bc, 1, 13
	call Pokedex_PlaceBorder
	hlcoord 2, 15
	ld [hl], $3d
	hlcoord 16, 15
	ld [hl], $3e
	hlcoord 6, 5
	call Pokedex_PlaceFrontpicAtHL
	ld de, 0
	ld b, 0
	ld c, NUM_UNOWN
.loop
	ld hl, wUnownDex
	add hl, de
	ld a, [hl]
	and a
	jr z, .done
	push af
	ld hl, UnownModeLetterAndCursorCoords
rept 4
	add hl, de
endr
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop af
	add FIRST_UNOWN_CHAR - 1 ; Unown A
	ld [hl], a
	inc de
	inc b
	dec c
	jr nz, .loop
.done
	ld a, b
	ld [sDexUnownCount], a
	ret

UnownModeLetterAndCursorCoords:
; entries correspond to Unown forms
;           letter, cursor
	dwcoord   4,11,   3,11 ; A
	dwcoord   4,10,   3,10 ; B
	dwcoord   4, 9,   3, 9 ; C
	dwcoord   4, 8,   3, 8 ; D
	dwcoord   4, 7,   3, 7 ; E
	dwcoord   4, 6,   3, 6 ; F
	dwcoord   4, 5,   3, 5 ; G
	dwcoord   4, 4,   3, 4 ; H
	dwcoord   4, 3,   3, 2 ; I
	dwcoord   5, 3,   5, 2 ; J
	dwcoord   6, 3,   6, 2 ; K
	dwcoord   7, 3,   7, 2 ; L
	dwcoord   8, 3,   8, 2 ; M
	dwcoord   9, 3,   9, 2 ; N
	dwcoord  10, 3,  10, 2 ; O
	dwcoord  11, 3,  11, 2 ; P
	dwcoord  12, 3,  12, 2 ; Q
	dwcoord  13, 3,  13, 2 ; R
	dwcoord  14, 3,  15, 2 ; S
	dwcoord  14, 4,  15, 4 ; T
	dwcoord  14, 5,  15, 5 ; U
	dwcoord  14, 6,  15, 6 ; V
	dwcoord  14, 7,  15, 7 ; W
	dwcoord  14, 8,  15, 8 ; X
	dwcoord  14, 9,  15, 9 ; Y
	dwcoord  14,10,  15,10 ; Z

Pokedex_FillBackgroundColor2:
	hlcoord 0, 0
	ld a, $32
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	call ByteFill
	ret

Pokedex_PlaceFrontpicTopLeftCorner:
	hlcoord 1, 1
Pokedex_PlaceFrontpicAtHL:
	xor a
	ld b, $7
.row
	ld c, $7
	push af
	push hl
.col
	ld [hli], a
	add $7
	dec c
	jr nz, .col
	pop hl
	ld de, SCREEN_WIDTH
	add hl, de
	pop af
	inc a
	dec b
	jr nz, .row
	ret

Pokedex_PlaceString:
.loop
	ld a, [de]
	cp -1
	ret z
	inc de
	ld [hli], a
	jr .loop

Pokedex_PlaceBorder:
	push hl
	ld a, $33
	ld [hli], a
	ld d, $34
	call .FillRow
	ld a, $35
	ld [hl], a
	pop hl
	ld de, SCREEN_WIDTH
	add hl, de
.loop
	push hl
	ld a, $36
	ld [hli], a
	ld d, $7f
	call .FillRow
	ld a, $37
	ld [hl], a
	pop hl
	ld de, SCREEN_WIDTH
	add hl, de
	dec b
	jr nz, .loop
	ld a, $38
	ld [hli], a
	ld d, $39
	call .FillRow
	ld a, $3a
	ld [hl], a
	ret

.FillRow:
	ld e, c
.row_loop
	ld a, e
	and a
	ret z
	ld a, d
	ld [hli], a
	dec e
	jr .row_loop

Pokedex_PrintListing:
; Prints the list of Pokémon on the main Pokédex screen.

; Clear (2 * [sDexListingHeight] + 1) by 11 box starting at 0,1
	ld c, 11
	hlcoord 0, 1
	ld a, [sDexListingHeight]
	add a
	inc a
	ld b, a
	ld a, " "
	call Pokedex_FillBox

; Load de with sPokedexOrder + [sDexListingScrollOffset]
	ld a, [sDexListingScrollOffset]
	ld e, a
	ld d, $0
	ld hl, sPokedexOrder
	add hl, de
	add hl, de
	ld e, l
	ld d, h
	hlcoord 0, 2
	ld a, [sDexListingHeight]
.loop
	push af
	ld a, [de]
	inc de
	ld [wTempSpecies], a ; also sets wNamedObjectIndexBuffer
	ld a, [de]
	dec de
	ld [wTempSpecies + 1], a
	push de
	push hl
	call .PrintEntry
	pop hl
	ld de, 2 * SCREEN_WIDTH
	add hl, de
	pop de
	inc de
	pop af
	dec a
	jr nz, .loop
	call Pokedex_LoadSelectedMonTiles
	ret

.PrintEntry:
; Prints one entry in the list of Pokémon on the main Pokédex screen.
	and a
	ret z
	call Pokedex_PrintNumberIfOldMode
	call Pokedex_RevertTempSpeciesIfModded ; pretty sure we need this
	call Pokedex_PlaceDefaultStringIfNotSeen
	ret c
	call Pokedex_PlaceCaughtSymbolIfCaught
	push hl
	call GetPokemonName
	pop hl
	call PlaceString
	ret

Pokedex_PrintNumberIfOldMode:
	ld a, [sCurDexMode]
	cp DEXMODE_OLD
	ret nz
	push hl
	ld de, -SCREEN_WIDTH
	add hl, de
; new mons start at $101 to simplify the Time Capsule -- to compensate,
; the Pokedex temporarily subtracts 5 from wTempSpecies to print the number
	; load the upper byte
	ld de, wTempSpecies + 1
	ld a, [de]
	and a ; is it active?
	dec de
	call nz .modify ; call if so
	lb bc, PRINTNUM_LEADINGZEROS | 1, 3
	call PrintNum ; print the final number
	pop hl
	ret

.modify:
	ld a, [de]
	sub 5
	ld [de], a
	inc de
	ld a, [de]
	sbc 0
	ld [de], a
	dec de
	ret

Pokedex_RevertTempSpeciesIfModded:
; restore wTempSpecies if it was modified
	push hl
	push de
	ld hl, wTempSpecies + 1
	ld a, [hld]
	ld e, [hl]
	ld d, a
	and a
	jr nz, .modify
	ld a, NEW_MONS
	cp e
	jr nc, .modify
.clean
	pop de
	pop hl
	ret

.modify:
	ld a, 5
	add d
	ld d, a
	ld a, 0
	adc e
	ld e, a
	ld [hl], e
	inc hl
	ld [hl], d
	jr .clean

Pokedex_PlaceCaughtSymbolIfCaught:
	call Pokedex_CheckCaught
	jr nz, .place_caught_symbol
	inc hl
	ret

.place_caught_symbol
	ld a, $4f
	ld [hli], a
	ret

Pokedex_PlaceDefaultStringIfNotSeen:
	call Pokedex_CheckSeen
	ret nz
	inc hl
	ld de, .NameNotSeen
	call PlaceString
	scf
	ret

.NameNotSeen:
	db "-----@"

Pokedex_DrawFootprint:
	hlcoord 18, 1
	ld a, $62
	ld [hli], a
	inc a
	ld [hl], a
	hlcoord 18, 2
	ld a, $64
	ld [hli], a
	inc a
	ld [hl], a
	ret

Pokedex_GetSelectedMon:
; Gets the species of the currently selected Pokémon. This corresponds to the
; position of the cursor in the main listing, but this function can be used
; on all Pokédex screens.
	ld a, [sDexListingCursor]
	ld hl, sDexListingScrollOffset
	add [hl]
	ld c, a
	ld a, [sDexListingCursor + 1]
	ld b, a
	ld e, b
	ld d, c
	ld hl, sPokedexOrder
	add hl, de
	add hl, de
	ld a, [hli]
	ld [wTempSpecies], a
	ld a, [hli]
	ld [wTempSpecies + 1], a
	ret

Pokedex_CheckCaught:
	push de
	push hl
	ld a, [wTempSpecies + 1]
	push af
	ld a, [wTempSpecies]
	dec a
	ld c, a
	pop af
	call CheckCaughtMon
	pop hl
	pop de
	ret

Pokedex_CheckSeen:
	push de
	push hl
	ld a, [wTempSpecies + 1]
	ld b, a
	ld a, [wTempSpecies]
	dec a
	call CheckSeenMon
	pop hl
	pop de
	ret

Pokedex_OrderMonsByMode:
	ld hl, sPokedexOrder
	ld bc, sPokedexOrderEnd - sPokedexOrder
	xor a
	call ByteFill
	ld a, [sCurDexMode]
	ld hl, .Jumptable
	call Pokedex_LoadPointer
	jp hl

.Jumptable:
	dw .NewMode
	dw .OldMode
	dw Pokedex_ABCMode

.NewMode:
	ld de, NewPokedexOrder
	ld hl, sPokedexOrder
	ld bc, NUM_POKEMON
.loopnew
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	ld a, [de]
	inc de
	ld [hli], a
	jr z, .checknew
	jr nc, .loopnew
	dec b
.checknew
	ld a, b
	and a
	jr nz, .loopnew
	call .FindLastSeen
	ret

.OldMode:
	ld hl, sPokedexOrder
	ld de, 0
	ld bc, NUM_DEF_POKEMON
.loopold
	inc de
	ld [hl], e
	inc hl
	ld [hl], d
	inc hl
	dec c
	jr z, .checkold
	jr nc, .loopold
	dec b
	ld c, CELEBI
.checkold
	ld a, b
	and a
	jr nz, .loopold
	call .FindLastSeen
	ret

.FindLastSeen:
	ld hl, sPokedexOrder + (NUM_POKEMON * 2) - 1
	ld de, NUM_POKEMON
.loopfindend
	ld a, [hld]
	ld [wTempSpecies + 1], a
	ld b, a
	ld a, [hld]
	ld [wTempSpecies], a
	call Pokedex_CheckSeen
	jr nz, .foundend
	dec de
	ld a, d
	and a
	jr nz, .loopfindend
	ld a, e
	and a
	jr nz, .loopfindend
.foundend
	ld a, d
	ld [sDexListingEnd], a
	ret

Pokedex_ABCMode:
	xor a
	ld [sDexListingEnd], a
	ld hl, sPokedexOrder
	ld de, AlphabeticalPokedexOrder
	ld bc, NUM_POKEMON
.loop1abc
	push bc
	ld a, [de]
	ld [wTempSpecies], a
	inc de
	ld a, [de]
	ld [wTempSpecies + 1], a
	call Pokedex_CheckSeen
	jr z, .skipabc
	ld a, [wTempSpecies]
	ld [hli], a
	ld a, [wTempSpecies + 1]
	ld [hli], a
	ld a, [sDexListingEnd]
	inc a
	ld [sDexListingEnd], a

.skipabc
	inc de
	pop bc
	dec bc
	ld a, b
	and a
	jr nz, .loop1abc
	ld a, c
	and a
	jr nz, .loop1abc
	ld a, [sDexListingEnd]
	ld bc, 0
.loop2abc
	cp HIGH(NUM_POKEMON)
	jr c, .next
	jr z, .next
	cp LOW(NUM_POKEMON)
	jr z, .doneabc
.next
	ld [hl], c
	inc hl
	ld [hl], c
	inc hl
	inc a
	jr .loop2abc

.doneabc
	ret

INCLUDE "data/pokemon/dex_order_alpha.asm"

INCLUDE "data/pokemon/dex_order_new.asm"

Pokedex_DisplayModeDescription:
	xor a
	ldh [hBGMapMode], a
	hlcoord 0, 12
	lb bc, 4, 18
	call Pokedex_PlaceBorder
	ld a, [sDexArrowCursorPosIndex]
	ld hl, .Modes
	call Pokedex_LoadPointer
	ld e, l
	ld d, h
	hlcoord 1, 14
	call PlaceString
	ld a, $1
	ldh [hBGMapMode], a
	ret

.Modes:
	dw .NewMode
	dw .OldMode
	dw .ABCMode
	dw .UnownMode

.NewMode:
	db   "<PK><MN> are listed by"
	next "evolution type.@"

.OldMode:
	db   "<PK><MN> are listed by"
	next "official type.@"

.ABCMode:
	db   "<PK><MN> are listed"
	next "alphabetically.@"

.UnownMode:
	db   "UNOWN are listed"
	next "in catching order.@"

Pokedex_DisplayChangingModesMessage:
	xor a
	ldh [hBGMapMode], a
	hlcoord 0, 12
	lb bc, 4, 18
	call Pokedex_PlaceBorder
	ld de, String_ChangingModesPleaseWait
	hlcoord 1, 14
	call PlaceString
	ld a, $1
	ldh [hBGMapMode], a
	ld c, 64
	call DelayFrames
	ld de, SFX_CHANGE_DEX_MODE
	call PlaySFX
	ld c, 64
	call DelayFrames
	ret

String_ChangingModesPleaseWait:
	db   "Changing modes."
	next "Please wait.@"

Pokedex_UpdateSearchMonType:
	ld a, [sDexArrowCursorPosIndex]
	cp 2
	jr nc, .no_change
	ld hl, hJoyLast
	ld a, [hl]
	and D_LEFT
	jr nz, Pokedex_PrevSearchMonType
	ld a, [hl]
	and D_RIGHT
	jr nz, Pokedex_NextSearchMonType
.no_change
	and a
	ret

Pokedex_PrevSearchMonType:
	ld a, [sDexArrowCursorPosIndex]
	and a
	jr nz, .type2

	ld hl, sDexSearchMonType1
	ld a, [hl]
	cp 1
	jr z, .wrap_around
	dec [hl]
	jr .done

.type2
	ld hl, sDexSearchMonType2
	ld a, [hl]
	and a
	jr z, .wrap_around
	dec [hl]
	jr .done

.wrap_around
	ld [hl], NUM_TYPES - 1

.done
	scf
	ret

Pokedex_NextSearchMonType:
	ld a, [sDexArrowCursorPosIndex]
	and a
	jr nz, .type2

	ld hl, sDexSearchMonType1
	ld a, [hl]
	cp NUM_TYPES - 1
	jr nc, .type1_wrap_around
	inc [hl]
	jr .done
.type1_wrap_around
	ld [hl], 1
	jr .done

.type2
	ld hl, sDexSearchMonType2
	ld a, [hl]
	cp NUM_TYPES - 1
	jr nc, .type2_wrap_around
	inc [hl]
	jr .done
.type2_wrap_around
	ld [hl], 0

.done
	scf
	ret

Pokedex_PlaceSearchScreenTypeStrings:
	xor a
	ldh [hBGMapMode], a
	hlcoord 9, 3
	lb bc, 4, 8
	ld a, " "
	call Pokedex_FillBox
	ld a, [sDexSearchMonType1]
	hlcoord 9, 4
	call Pokedex_PlaceTypeString
	ld a, [sDexSearchMonType2]
	hlcoord 9, 6
	call Pokedex_PlaceTypeString
	ld a, $1
	ldh [hBGMapMode], a
	ret

Pokedex_PlaceTypeString:
	push hl
	ld e, a
	ld d, 0
	ld hl, PokedexTypeSearchStrings
rept 9
	add hl, de
endr
	ld e, l
	ld d, h
	pop hl
	call PlaceString
	ret

INCLUDE "data/types/search_strings.asm"

Pokedex_SearchForMons:
	ld a, [sDexSearchMonType2]
	and a
	call nz, .Search
	ld a, [sDexSearchMonType1]
	and a
	call nz, .Search
	ret

.Search:
	dec a
	ld e, a
	ld d, 0
	ld hl, PokedexTypeSearchConversionTable
	add hl, de
	ld a, [hl]
	ld [sDexConvertedMonType], a
	ld hl, sPokedexOrder
	ld de, sPokedexOrder
	ld bc, NUM_POKEMON
	xor a
	ld [sDexSearchResultCount], a
.loop
	push bc
	ld a, [hli]
	and a
	jr z, .next_mon
	ld [wTempSpecies], a
	ld [wCurSpecies], a
	ld a, [hl]
	ld [wTempSpecies + 1], a
	ld [wCurSpecies + 1], a
	call Pokedex_CheckCaught
	jr z, .next_mon
	push hl
	push de
	call GetBaseData
	pop de
	pop hl
	ld a, [sDexConvertedMonType]
	ld b, a
	ld a, [wBaseType1]
	cp b
	jr z, .match_found
	ld a, [wBaseType2]
	cp b
	jr nz, .next_mon

.match_found
	ld a, [wTempSpecies]
	ld [de], a
	inc de
	ld a, [wTempSpecies + 1]
	ld [de], a
	inc de
	ld a, [sDexSearchResultCount]
	inc a
	ld [sDexSearchResultCount], a

.next_mon
	inc hl
	pop bc
	dec c
	jr nz, .loop

	ld l, e
	ld h, d
	ld a, [sDexSearchResultCount]
	ld c, 0

.zero_remaining_mons
	cp HIGH(NUM_POKEMON)
	jr nz, .next
	cp LOW(NUM_POKEMON)
	jr z, .done
.next
	ld [hl], c
	inc hl
	inc a
	jr .zero_remaining_mons

.done
	ret

INCLUDE "data/types/search_types.asm"

Pokedex_DisplayTypeNotFoundMessage:
	xor a
	ldh [hBGMapMode], a
	hlcoord 0, 12
	lb bc, 4, 18
	call Pokedex_PlaceBorder
	ld de, .TypeNotFound
	hlcoord 1, 14
	call PlaceString
	ld a, $1
	ldh [hBGMapMode], a
	ld c, $80
	call DelayFrames
	ret

.TypeNotFound:
	db   "The specified type"
	next "was not found.@"

Pokedex_UpdateCursorOAM:
	ld a, [sCurDexMode]
	cp DEXMODE_OLD
	jr z, Pokedex_PutOldModeCursorOAM
	call Pokedex_PutNewModeABCModeCursorOAM
	jp Pokedex_PutScrollbarOAM

Pokedex_PutOldModeCursorOAM:
	ld hl, .CursorOAM
	ld a, [sDexListingCursor]
	or a
	jr nz, .okay
	ld hl, .CursorAtTopOAM
.okay
	jp Pokedex_LoadCursorOAM

.CursorOAM:
	dbsprite  9,  3, -1,  0, $30, 7
	dbsprite  9,  2, -1,  0, $31, 7
	dbsprite 10,  2, -1,  0, $32, 7
	dbsprite 11,  2, -1,  0, $32, 7
	dbsprite 12,  2, -1,  0, $32, 7
	dbsprite 13,  2, -1,  0, $33, 7
	dbsprite 16,  2, -2,  0, $33, 7 | X_FLIP
	dbsprite 17,  2, -2,  0, $32, 7 | X_FLIP
	dbsprite 18,  2, -2,  0, $32, 7 | X_FLIP
	dbsprite 19,  2, -2,  0, $32, 7 | X_FLIP
	dbsprite 20,  2, -2,  0, $31, 7 | X_FLIP
	dbsprite 20,  3, -2,  0, $30, 7 | X_FLIP
	dbsprite  9,  4, -1,  0, $30, 7 | Y_FLIP
	dbsprite  9,  5, -1,  0, $31, 7 | Y_FLIP
	dbsprite 10,  5, -1,  0, $32, 7 | Y_FLIP
	dbsprite 11,  5, -1,  0, $32, 7 | Y_FLIP
	dbsprite 12,  5, -1,  0, $32, 7 | Y_FLIP
	dbsprite 13,  5, -1,  0, $33, 7 | Y_FLIP
	dbsprite 16,  5, -2,  0, $33, 7 | X_FLIP | Y_FLIP
	dbsprite 17,  5, -2,  0, $32, 7 | X_FLIP | Y_FLIP
	dbsprite 18,  5, -2,  0, $32, 7 | X_FLIP | Y_FLIP
	dbsprite 19,  5, -2,  0, $32, 7 | X_FLIP | Y_FLIP
	dbsprite 20,  5, -2,  0, $31, 7 | X_FLIP | Y_FLIP
	dbsprite 20,  4, -2,  0, $30, 7 | X_FLIP | Y_FLIP
	db -1

.CursorAtTopOAM:
; OAM data for when the cursor is at the top of the list. The tiles at the top
; are cut off so they don't show up outside the list area.
	dbsprite  9,  3, -1,  0, $30, 7
	dbsprite  9,  2, -1,  0, $34, 7
	dbsprite 10,  2, -1,  0, $35, 7
	dbsprite 11,  2, -1,  0, $35, 7
	dbsprite 12,  2, -1,  0, $35, 7
	dbsprite 13,  2, -1,  0, $36, 7
	dbsprite 16,  2, -2,  0, $36, 7 | X_FLIP
	dbsprite 17,  2, -2,  0, $35, 7 | X_FLIP
	dbsprite 18,  2, -2,  0, $35, 7 | X_FLIP
	dbsprite 19,  2, -2,  0, $35, 7 | X_FLIP
	dbsprite 20,  2, -2,  0, $34, 7 | X_FLIP
	dbsprite 20,  3, -2,  0, $30, 7 | X_FLIP
	dbsprite  9,  4, -1,  0, $30, 7 | Y_FLIP
	dbsprite  9,  5, -1,  0, $31, 7 | Y_FLIP
	dbsprite 10,  5, -1,  0, $32, 7 | Y_FLIP
	dbsprite 11,  5, -1,  0, $32, 7 | Y_FLIP
	dbsprite 12,  5, -1,  0, $32, 7 | Y_FLIP
	dbsprite 13,  5, -1,  0, $33, 7 | Y_FLIP
	dbsprite 16,  5, -2,  0, $33, 7 | X_FLIP | Y_FLIP
	dbsprite 17,  5, -2,  0, $32, 7 | X_FLIP | Y_FLIP
	dbsprite 18,  5, -2,  0, $32, 7 | X_FLIP | Y_FLIP
	dbsprite 19,  5, -2,  0, $32, 7 | X_FLIP | Y_FLIP
	dbsprite 20,  5, -2,  0, $31, 7 | X_FLIP | Y_FLIP
	dbsprite 20,  4, -2,  0, $30, 7 | X_FLIP | Y_FLIP
	db -1

Pokedex_PutNewModeABCModeCursorOAM:
	ld hl, .CursorOAM
	jp Pokedex_LoadCursorOAM

.CursorOAM:
	dbsprite  9,  3, -1,  3, $30, 7
	dbsprite  9,  2, -1,  3, $31, 7
	dbsprite 10,  2, -1,  3, $32, 7
	dbsprite 11,  2, -1,  3, $32, 7
	dbsprite 12,  2, -1,  3, $33, 7
	dbsprite 16,  2,  0,  3, $33, 7 | X_FLIP
	dbsprite 17,  2,  0,  3, $32, 7 | X_FLIP
	dbsprite 18,  2,  0,  3, $32, 7 | X_FLIP
	dbsprite 19,  2,  0,  3, $31, 7 | X_FLIP
	dbsprite 19,  3,  0,  3, $30, 7 | X_FLIP
	dbsprite  9,  4, -1,  3, $30, 7 | Y_FLIP
	dbsprite  9,  5, -1,  3, $31, 7 | Y_FLIP
	dbsprite 10,  5, -1,  3, $32, 7 | Y_FLIP
	dbsprite 11,  5, -1,  3, $32, 7 | Y_FLIP
	dbsprite 12,  5, -1,  3, $33, 7 | Y_FLIP
	dbsprite 16,  5,  0,  3, $33, 7 | X_FLIP | Y_FLIP
	dbsprite 17,  5,  0,  3, $32, 7 | X_FLIP | Y_FLIP
	dbsprite 18,  5,  0,  3, $32, 7 | X_FLIP | Y_FLIP
	dbsprite 19,  5,  0,  3, $31, 7 | X_FLIP | Y_FLIP
	dbsprite 19,  4,  0,  3, $30, 7 | X_FLIP | Y_FLIP
	db -1

Pokedex_UpdateSearchResultsCursorOAM:
	ld a, [sCurDexMode]
	cp DEXMODE_OLD
	jp z, Pokedex_PutOldModeCursorOAM
	ld hl, .CursorOAM
	jp Pokedex_LoadCursorOAM

.CursorOAM:
	dbsprite  9,  3, -1,  3, $30, 7
	dbsprite  9,  2, -1,  3, $31, 7
	dbsprite 10,  2, -1,  3, $32, 7
	dbsprite 11,  2, -1,  3, $32, 7
	dbsprite 12,  2, -1,  3, $32, 7
	dbsprite 13,  2, -1,  3, $33, 7
	dbsprite 16,  2, -2,  3, $33, 7 | X_FLIP
	dbsprite 17,  2, -2,  3, $32, 7 | X_FLIP
	dbsprite 18,  2, -2,  3, $32, 7 | X_FLIP
	dbsprite 19,  2, -2,  3, $32, 7 | X_FLIP
	dbsprite 20,  2, -2,  3, $31, 7 | X_FLIP
	dbsprite 20,  3, -2,  3, $30, 7 | X_FLIP
	dbsprite  9,  4, -1,  3, $30, 7 | Y_FLIP
	dbsprite  9,  5, -1,  3, $31, 7 | Y_FLIP
	dbsprite 10,  5, -1,  3, $32, 7 | Y_FLIP
	dbsprite 11,  5, -1,  3, $32, 7 | Y_FLIP
	dbsprite 12,  5, -1,  3, $32, 7 | Y_FLIP
	dbsprite 13,  5, -1,  3, $33, 7 | Y_FLIP
	dbsprite 16,  5, -2,  3, $33, 7 | X_FLIP | Y_FLIP
	dbsprite 17,  5, -2,  3, $32, 7 | X_FLIP | Y_FLIP
	dbsprite 18,  5, -2,  3, $32, 7 | X_FLIP | Y_FLIP
	dbsprite 19,  5, -2,  3, $32, 7 | X_FLIP | Y_FLIP
	dbsprite 20,  5, -2,  3, $31, 7 | X_FLIP | Y_FLIP
	dbsprite 20,  4, -2,  3, $30, 7 | X_FLIP | Y_FLIP
	db -1

Pokedex_LoadCursorOAM:
	ld de, wVirtualOAMSprite00
.loop
	ld a, [hl]
	cp -1
	ret z
	ld a, [sDexListingCursor]
	and $7
	swap a
	add [hl] ; y
	inc hl
	ld [de], a
	inc de
	ld a, [hli] ; x
	ld [de], a
	inc de
	ld a, [hli] ; tile id
	ld [de], a
	inc de
	ld a, [hli] ; attributes
	ld [de], a
	inc de
	jr .loop

Pokedex_PutScrollbarOAM:
; Writes the OAM data for the scrollbar in the new mode and ABC mode.
	push de
	ld a, [sDexListingEnd]
	dec a
	ld e, a
	ld a, [sDexListingCursor]
	ld hl, sDexListingScrollOffset
	add [hl]
	cp e
	jr z, .max
	ld hl, 0
	ld bc, 121 ; max y - min y
	call AddNTimes
	ld e, l
	ld d, h
	ld b, 0
	ld a, d
	or e
	jr z, .done
	ld a, [sDexListingEnd]
	ld c, a
.loop
	ld a, e
	sub c
	ld e, a
	ld a, d
	sbc 0
	ld d, a
	jr c, .done
	inc b
	jr .loop
.max
	ld b, 121 ; max y - min y
.done
	ld a, 20 ; min y
	add b
	pop hl
	ld [hli], a
	ld a, 161 ; x
	ld [hli], a
	ld a, $0f ; tile id
	ld [hli], a
	ld [hl], 0 ; attributes
	ret

Pokedex_InitArrowCursor:
	xor a
	ld [sDexArrowCursorPosIndex], a
	ld [sDexArrowCursorDelayCounter], a
	ld [sDexArrowCursorBlinkCounter], a
	ret

Pokedex_MoveArrowCursor:
; bc = [de] - 1
	ld a, [de]
	ld b, a
	inc de
	ld a, [de]
	dec a
	ld c, a
	inc de
	call Pokedex_BlinkArrowCursor

	ld hl, hJoyPressed
	ld a, [hl]
	and D_LEFT | D_UP
	and b
	jr nz, .move_left_or_up
	ld a, [hl]
	and D_RIGHT | D_DOWN
	and b
	jr nz, .move_right_or_down
	ld a, [hl]
	and SELECT
	and b
	jr nz, .select
	call Pokedex_ArrowCursorDelay
	jr c, .no_action
	ld hl, hJoyLast
	ld a, [hl]
	and D_LEFT | D_UP
	and b
	jr nz, .move_left_or_up
	ld a, [hl]
	and D_RIGHT | D_DOWN
	and b
	jr nz, .move_right_or_down
	jr .no_action

.move_left_or_up
	ld a, [sDexArrowCursorPosIndex]
	and a
	jr z, .no_action
	call Pokedex_GetArrowCursorPos
	ld [hl], " "
	ld hl, sDexArrowCursorPosIndex
	dec [hl]
	jr .update_cursor_pos

.move_right_or_down
	ld a, [sDexArrowCursorPosIndex]
	cp c
	jr nc, .no_action
	call Pokedex_GetArrowCursorPos
	ld [hl], " "
	ld hl, sDexArrowCursorPosIndex
	inc [hl]

.update_cursor_pos
	call Pokedex_GetArrowCursorPos
	ld [hl], "▶"
	ld a, 12
	ld [sDexArrowCursorDelayCounter], a
	xor a
	ld [sDexArrowCursorBlinkCounter], a
	scf
	ret

.no_action
	and a
	ret

.select
	call Pokedex_GetArrowCursorPos
	ld [hl], " "
	ld a, [sDexArrowCursorPosIndex]
	cp c
	jr c, .update
	ld a, -1
.update
	inc a
	ld [sDexArrowCursorPosIndex], a
	jr .update_cursor_pos

Pokedex_GetArrowCursorPos:
	ld a, [sDexArrowCursorPosIndex]
	add a
	ld l, a
	ld h, 0
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret

Pokedex_BlinkArrowCursor:
	ld hl, sDexArrowCursorBlinkCounter
	ld a, [hl]
	inc [hl]
	and $8
	jr z, .blink_on
	call Pokedex_GetArrowCursorPos
	ld [hl], " "
	ret

.blink_on
	call Pokedex_GetArrowCursorPos
	ld [hl], "▶"
	ret

Pokedex_ArrowCursorDelay:
; Updates the delay counter set when moving the arrow cursor.
; Returns whether the delay is active in carry.
	ld hl, sDexArrowCursorDelayCounter
	ld a, [hl]
	and a
	ret z

	dec [hl]
	scf
	ret

Pokedex_FillBox:
.row
	push bc
	push hl
.col
	ld [hli], a
	dec c
	jr nz, .col
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	dec b
	jr nz, .row
	ret

Pokedex_BlackOutBG:
	ld hl, wBGPals1
	ld bc, 8 palettes
	xor a
	call ByteFill

Pokedex_ApplyPrintPals:
	ld a, $ff
	call DmgToCgbBGPals
	ld a, $ff
	call DmgToCgbObjPal0
	call DelayFrame
	ret

Pokedex_GetSGBLayout:
	ld b, a
	call GetSGBLayout

Pokedex_ApplyUsualPals:
; This applies the palettes used for most Pokédex screens.
	ld a, $e4
	call DmgToCgbBGPals
	ld a, $e0
	call DmgToCgbObjPal0
	ret

Pokedex_LoadPointer:
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret

Pokedex_LoadSelectedMonTiles:
; Loads the tiles of the currently selected Pokémon.
	call Pokedex_GetSelectedMon
	call Pokedex_CheckSeen
	jr z, .QuestionMark
	ld a, [wFirstUnownSeen]
	ld [wUnownLetter], a
	ld a, [wTempSpecies]
	ld [wCurPartySpecies], a
	ld a, [wTempSpecies + 1]
	ld [wCurPartySpecies + 1], a
	call GetBaseData
	ld de, vTiles2
	predef GetMonFrontpic
	ret

.QuestionMark:
	ld a, BANK(sScratch)
	ld [MBC3SRamBank], a
	farcall LoadQuestionMarkPic
	ld hl, vTiles2
	ld de, sScratch
	ld c, 7 * 7
	ldh a, [hROMBank]
	ld b, a
	call Get2bpp
	ld a, BANK("Pokedex")
	ld [MBC3SRamBank], a
	ret

Pokedex_LoadCurrentFootprint:
	call Pokedex_GetSelectedMon

Pokedex_LoadAnyFootprint:
	ld a, [wTempSpecies]
	dec a
	and %11111000
	srl a
	srl a
	srl a
	ld d, a
	ld a, [wTempSpecies + 1]
	and %00000111
	swap a
	sla a
	ld e, a
	ld a, [wTempSpecies]
	dec a
	and %111
	swap a ; * $10
	and a
	ld l, a
	ld a, [wTempSpecies + 1]
	dec a
	and %11111000
	srl a
	srl a
	srl a
	ld h, a
	add hl, de
	ld de, Footprints
	add hl, de

	ld e, l
	ld d, h
	ld hl, vTiles2 tile $62
	lb bc, BANK(Footprints), 4
	jp Request1bpp

Pokedex_LoadGFX:
	call DisableLCD
	ld hl, vTiles2
	ld bc, $31 tiles
	xor a
	call ByteFill
	call Pokedex_LoadInvertedFont
	call LoadFontsExtra
	ld hl, vTiles2 tile $60
	ld bc, $20 tiles
	call Pokedex_InvertTiles
	call Pokedex_CheckSGB
	jr nz, .LoadPokedexLZ
	farcall LoadSGBPokedexGFX
	jr .LoadPokedexSlowpokeLZ

.LoadPokedexLZ:
	ld hl, PokedexLZ
	ld de, vTiles2 tile $31
	call Decompress

.LoadPokedexSlowpokeLZ:
	ld hl, PokedexSlowpokeLZ
	ld de, vTiles0
	call Decompress
	ld a, 6
	call SkipMusic
	call EnableLCD
	ret

Pokedex_LoadInvertedFont:
	call LoadStandardFont
	ld hl, vTiles1
	ld bc, $80 tiles

Pokedex_InvertTiles:
.loop
	ld a, [hl]
	xor $ff
	ld [hli], a
	dec bc
	ld a, b
	or c
	jr nz, .loop
	ret

PokedexLZ:
INCBIN "gfx/pokedex/pokedex.2bpp.lz"

PokedexSlowpokeLZ:
INCBIN "gfx/pokedex/slowpoke.2bpp.lz"

Pokedex_CheckSGB:
	ldh a, [hCGB]
	or a
	ret nz
	ldh a, [hSGB]
	dec a
	ret

Pokedex_LoadUnownFont:
	ld a, BANK(sScratch)
	ld [MBC3SRamBank], a
	ld hl, UnownFont
	ld de, sScratch + $188
	ld bc, 39 tiles
	ld a, BANK(UnownFont)
	call FarCopyBytes
	ld hl, sScratch + $188
	ld bc, (NUM_UNOWN + 1) tiles
	call Pokedex_InvertTiles
	ld de, sScratch + $188
	ld hl, vTiles2 tile FIRST_UNOWN_CHAR
	lb bc, BANK(Pokedex_LoadUnownFont), NUM_UNOWN + 1
	call Request2bpp
	ld a, BANK("Pokedex")
	ld [MBC3SRamBank], a
	ret

Pokedex_LoadUnownFrontpicTiles:
	ld a, [wUnownLetter]
	push af
	ld a, [sDexCurUnownIndex]
	ld e, a
	ld d, 0
	ld hl, wUnownDex
	add hl, de
	ld a, [hl]
	ld [wUnownLetter], a
	ld a, UNOWN
	ld [wCurPartySpecies], a
	xor a
	ld [wCurPartySpecies + 1], a
	call GetBaseData
	ld de, vTiles2 tile $00
	predef GetMonFrontpic
	pop af
	ld [wUnownLetter], a
	ret

_NewPokedexEntry:
	xor a
	ldh [hBGMapMode], a
	farcall DrawDexEntryScreenRightEdge
	call Pokedex_ResetBGMapMode
	call DisableLCD
	call LoadStandardFont
	call LoadFontsExtra
	call Pokedex_LoadGFX
	call Pokedex_LoadAnyFootprint
	ld a, [wTempSpecies]
	ld [wCurPartySpecies], a
	ld a, [wTempSpecies + 1]
	ld [wCurPartySpecies + 1], a
	call Pokedex_DrawDexEntryScreenBG
	call Pokedex_DrawFootprint
	hlcoord 0, 17
	ld [hl], $3b
	inc hl
	ld bc, 19
	ld a, " "
	call ByteFill
	farcall DisplayDexEntry
	call EnableLCD
	call WaitBGMap
	call GetBaseData
	ld de, vTiles2
	predef GetMonFrontpic
	ld a, SCGB_POKEDEX
	call Pokedex_GetSGBLayout
	ld a, [wCurPartySpecies]
	ld c, a
	ld a, [wCurPartySpecies + 1]
	ld b, a
	call PlayMonCry
	ret

Pokedex_SetBGMapMode3:
	ld a, $3
	ldh [hBGMapMode], a
	ld c, 4
	call DelayFrames
	ret

Pokedex_SetBGMapMode4:
	ld a, $4
	ldh [hBGMapMode], a
	ld c, 4
	call DelayFrames
	ret

Pokedex_SetBGMapMode_3ifDMG_4ifCGB:
	ldh a, [hCGB]
	and a
	jr z, .DMG
	call Pokedex_SetBGMapMode4
.DMG:
	call Pokedex_SetBGMapMode3
	ret

Pokedex_ResetBGMapMode:
	xor a
	ldh [hBGMapMode], a
	ret
