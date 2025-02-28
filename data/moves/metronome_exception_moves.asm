; Metronome cannot turn into these moves.
MetronomeExcepts:
; This list has potential pardons. Listed in the comments below.

; Priority isn't much of a problem due to moves like Quick Attack and Vital
; Throw's treatment as acceptable moves

; Ditto for accuracy, since Lock-on is acceptable.

; Fainting interactions seem fine, judging by accepted moves like the
; user-faint and OHKO moves.

; Thief seemed to be profiled here, since aside from stealing a held item, it
; simply does damage like any other normal hit.
	db NO_MOVE	; invalid move
	db METRONOME	; potentially locks the game
	db STRUGGLE	; used only after all PP are exhausted
	db SKETCH	; would remove Metronome permanently
	db MIMIC	; would remove Metronome for the battle
	db COUNTER	; low priority, damage dependant move, potential pardon
	db MIRROR_COAT	; low priority, damage dependant move, potential pardon
	db PROTECT	; high priority, damage nullifying move, potential pardon
	db DETECT	; high priority, damage nullifying move, potential pardon
	db ENDURE	; prevents fainting that turn, potential pardon
	db DESTINY_BOND	; opponent faints if user does, potential pardon
	db SLEEP_TALK	; utterly useless through metronome
	db THIEF	; steals opponent's held item, potential pardon
	db -1
