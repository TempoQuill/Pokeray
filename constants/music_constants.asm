; song ids
; Music indexes (see audio/music_pointers.asm)
	const_def

	const MUSIC_NONE                         ; 00
	const MUSIC_TITLE                        ; 01
	const MUSIC_RS_OPENING                   ; 02
	const MUSIC_RS_OPENING_2                 ; 03
	const MUSIC_MAIN_MENU                    ; 04
	const MUSIC_HEAL                         ; 05
	const MUSIC_RG_OLD_HEAL                  ; 06 ; NON_PC_HEAL
	const MUSIC_ROUTE_29                     ; 07 ; ROUTE_49
	const MUSIC_ROUTE_55                     ; 08
	const MUSIC_EQUINTO_LEAGUE               ; 09 ; unused
	const MUSIC_ROUTE_61                     ; 0a ; unused
	const MUSIC_ROUTE_53                     ; 0b ; unused
	const MUSIC_TIME_CAPSULE_MENU            ; 0c
	const MUSIC_MOM                          ; 0d
	const MUSIC_SHOW_ME_AROUND               ; 0e
	const MUSIC_RBY_FM_TRADE                 ; 0f ; HOUSE_ENROUTE
	const MUSIC_POKEMON_CENTER               ; 10
	const MUSIC_DILAP_POKEMON_CENTER         ; 11 ; unused
	const MUSIC_COTTAGE_TOWN                 ; 12
	const MUSIC_TRAVERSAL_CITY               ; 13
	const MUSIC_WILD_BATTLE                  ; 14
	const MUSIC_TRAINER_BATTLE               ; 15
	const MUSIC_GYM_LEADER_BATTLE            ; 16
	const MUSIC_PARTY_HOST_BATTLE            ; 17
	const MUSIC_SHAGGY_BATTLE                ; 18
	const MUSIC_PARKER_BATTLE                ; 19
	const MUSIC_OFFICER_ENCOUNTER            ; 1a
	const MUSIC_LASS_ENCOUNTER               ; 1b
	const MUSIC_HIKER_ENCOUNTER              ; 1c
	const MUSIC_YOUNGSTER_ENCOUNTER          ; 1d
	const MUSIC_BEAUTY_ENCOUNTER             ; 1e
	const MUSIC_SIBLING_ENCOUNTER            ; 1f
	const MUSIC_PARTY_HOST_ENCOUNTER         ; 20
	const MUSIC_ARTIST_ENCOUNTER             ; 21
	const MUSIC_HAVOC_ENCOUNTER              ; 22
	const MUSIC_RIVAL_ENCOUNTER              ; 23
	const MUSIC_RIVAL_AFTER                  ; 24
	const MUSIC_PROF_LARCH                   ; 25
	const MUSIC_CAPTURE                      ; 26
	const MUSIC_WILD_VICTORY                 ; 27
	const MUSIC_TRAINER_VICTORY              ; 28
	const MUSIC_GYM_VICTORY                  ; 29
	const MUSIC_GYM                          ; 2a ; unused
	const MUSIC_GAME_CORNER                  ; 2b
	const MUSIC_BICYCLE                      ; 2c
	const MUSIC_HALL_OF_FAME                 ; 2d
	const MUSIC_ODDISH_FARM                  ; 2e ; unused
	const MUSIC_GOLEM_PALACE                 ; 2f ; unused
	const MUSIC_SUNKERN_SWAMP                ; 30 ; unused
	const MUSIC_EVOLUTION                    ; 31
	const MUSIC_CREDITS                      ; 32
	const MUSIC_POST_CREDITS                 ; 33
	const MUSIC_LANAWE_FOREST                ; 34 ; unused
	const MUSIC_SS_VAPOR                     ; 35 ; unused
	const MUSIC_LIGHTHOUSE                   ; 36 ; unused
	const MUSIC_EAST_COAST_STOP              ; 37 ; unused
	const MUSIC_HYPERCOIN_CITY               ; 38 ; unused
	const MUSIC_DIGLETT_CAVE                 ; 39 ; MT_VACUUM
	const MUSIC_HAVOC_THEME                  ; 3a
	const MUSIC_NORGEO_TOWN                  ; 3b ; unused
	const MUSIC_PORTITE_CITY                 ; 3c ; unused
	const MUSIC_PRINTER                      ; 3d
	const MUSIC_SS_VAPOR_DEPARTURE           ; 3e ; unused
	const MUSIC_SURF                         ; 3f
	const MUSIC_STAMP_TOWN                   ; 40 ; unused
	const MUSIC_HAVOC_HIDEOUT                ; 41 ; unused
	const MUSIC_TRADE_MENU_1                 ; 42
	const MUSIC_TRADE_MENU_2                 ; 43
	const MUSIC_WATCHIN_OVUR_ME_JINGLE       ; 44
	const MUSIC_POKEFLUTE_MEDLEY             ; 45
	const MUSIC_BEST_FRIENDS_LULLABY         ; 46
	const MUSIC_MORNING_IN_EQUINTO_MARCH     ; 47
; chaos exclusive
;	const MUSIC_ZACH_ENCOUNTER               ; 48
;	const MUSIC_MARLOON_ENCOUNTER            ; 49
;	const MUSIC_EQUINE_TRIO_BATTLE           ; 4a
;	const MUSIC_CHAOS_INTRO__SRB_THEME       ; 4b
;	const MUSIC_PILOT_TEGERE__WBA_THEME      ; 4c
;	const MUSIC_MOBILE_CONNECTION_BALLAD     ; 4d
;	const MUSIC_AT_THE_BATTLE_TOWER          ; 4e
;	const MUSIC_FIND_A_PROFILE_OPTION        ; 4f
;	const MUSIC_BATTLE_TOWER_LOBBY           ; 50
;	const MUSIC_POKEMON_COMMUNICATION_CENTER ; 51
FINAL_MUSIC_TRACK EQU const_value - 1
NUM_MUSIC_IDS EQU FINAL_MUSIC_TRACK

; speical track behavior regarding linked games
; doesn't affect map music behavior
LINK_MUSIC_1 EQU $42
LINK_MUSIC_2 EQU $43

; map music with this value will be redirected to a valid track
SPECIAL_MAP_MUSIC EQU $fd
; ExitPokegearRadio_HandleMusic uses these values
RESTART_MAP_MUSIC EQU $fe
ENTER_MAP_MUSIC   EQU $ff
