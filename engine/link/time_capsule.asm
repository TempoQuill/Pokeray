; These functions seem to be related to backwards compatibility

ValidateOTTrademon:
	ld a, [wceee]
	ld hl, wOTPartyMon1Species
	call GetPartyLocation
	push hl
	ld a, [wceee]
	inc a
	ld c, a
	ld b, 0
	ld hl, wOTPartyCount
	add hl, bc
	ld a, [hli]
	cp LOW(EGG)
	ld a, [hl]
	pop hl
	jr nz, .not_egg
	cp HIGH(EGG)
	jr z, .matching_or_egg
.not_egg
	cp [hl]
	jr nz, .abnormal

.matching_or_egg
	ld b, h
	ld c, l
	ld hl, MON_LEVEL
	add hl, bc
	ld a, [hl]
	cp MAX_LEVEL + 1
	jr nc, .abnormal
	ld a, [wLinkMode]
	cp LINK_TIMECAPSULE
	jr nz, .normal
	ld hl, wOTPartySpecies
	ld a, [wceee]
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hli]
	ld [wCurSpecies], a
	ld a, [hl]
	ld [wCurSpecies + 1], a
	call GetBaseData
	ld hl, wLinkOTPartyMonTypes
	add hl, bc
	add hl, bc
	ld a, [wBaseType1]
	cp [hl]
	jr nz, .abnormal
	inc hl
	ld a, [wBaseType2]
	cp [hl]
	jr nz, .abnormal

.normal
	and a
	ret

.abnormal
	scf
	ret

Functionfb6ed:
	ld a, [wceed]
	ld d, a
	ld a, [wPartyCount]
	ld b, a
	ld c, $0
.loop
	ld a, c
	cp d
	jr z, .next
	push bc
	ld a, c
	ld hl, wPartyMon1HP
	call GetPartyLocation
	pop bc
	ld a, [hli]
	or [hl]
	jr nz, .done

.next
	inc c
	dec b
	jr nz, .loop
	ld a, [wceee]
	ld hl, wOTPartyMon1HP
	call GetPartyLocation
	ld a, [hli]
	or [hl]
	jr nz, .done
	scf
	ret

.done
	and a
	ret

PlaceTradePartnerNamesAndParty:
	hlcoord 2, 0
	ld de, wPlayerName
	call PlaceString
	hlcoord 2, 8
	ld de, wOTPlayerName
	call PlaceString
	hlcoord 7, 1
	ld de, wPartySpecies
	call .PlaceSpeciesNames
	hlcoord 7, 9
	ld de, wOTPartySpecies
.PlaceSpeciesNames:
	ld c, 0
.loop
	ld a, [de]
	cp -1
	ret z
	ld [wNamedObjectIndexBuffer], a
	push bc
	push hl
	push de
	push hl
	ld a, c
	ldh [hProduct], a
	call GetPokemonName
	pop hl
	call PlaceString
	pop de
	inc de
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	inc c
	jr .loop
