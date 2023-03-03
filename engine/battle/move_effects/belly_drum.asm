BattleCommand_BellyDrum:
; bellydrum
	callfar GetHalfMaxHP
	callfar CheckUserHasEnoughHP
	jr nc, .failed

	call BattleCommand_AttackUp2
	ld a, [wAttackMissed]
	and a
	jr nz, .failed

	push bc
	call AnimateCurrentMove
	pop bc
	callfar SubtractHPFromUser
	call UpdateUserInParty

rept 5
	call BattleCommand_AttackUp2
endr

	ld hl, BellyDrumText
	jp StdBattleTextbox

.failed
	call AnimateFailedMove
	jp PrintButItFailed
