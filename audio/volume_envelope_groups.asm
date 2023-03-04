EnvelopeSequences:
; sets of volume envelopes are read in order
; encountering $fe loops the sequences to the start
; encountering $ff cuts the note off entirely
	dw ENVSequence0
	dw ENVSequence1
	dw ENVSequence2
	dw ENVSequence3
	dw ENVSequence4 ; silence
	dw ENVSequence4

ENVSequence0:
	env_note 1,  1
	env_note 2,  1
	env_note 3,  1
	env_note 4,  1
	env_note 5,  1
	env_note 6,  1
	env_note 7,  1
	env_note 8,  1
	env_note 9,  1
	env_note 10, 1
	env_note 11, 1
	env_note 12, 1
	env_note 13, 1
	env_note 14, 1
	env_note 15, 1
	env_note 15, 1
	env_note 15, 1
	env_note 15, 1
	env_note 15, 1
	env_note 15, 1
	env_note 14, 1
	env_note 14, 1
	env_note 14, 1
	env_note 14, 1
	env_note 13, 1
	env_note 13, 1
	env_note 13, 1
	env_note 13, 1
	env_note 12, 1
	env_note 12, 1
	env_note 12, 1
	env_note 12, 1
	env_note 11, 1
	env_note 11, 1
	env_note 11, 1
	env_note 11, 1
	env_note 10, 1
	env_note 10, 1
	env_note 10, 1
	env_note 10, 1
	env_note 9,  1
	env_note 9,  1
	env_note 9,  1
	env_note 9,  1
	env_note 8,  1
	env_note 8,  1
	env_note 8,  1
	env_note 8,  1
	env_note 7,  1
	env_note 7,  1
	env_note 7,  1
	env_note 7,  1
	env_note 6,  1
	env_note 6,  1
	env_note 6,  1
	env_note 6,  1
	env_note 5,  1
	env_note 5,  1
	env_note 5,  1
	env_note 5,  1
	env_note 4,  1
	env_note 4,  1
	env_note 4,  1
	env_note 4,  1
	env_note 3,  1
	env_note 3,  1
	env_note 3,  1
	env_note 3,  1
	env_note 2,  1
	env_note 2,  1
	env_note 2,  1
	env_note 2,  1
	env_note 1,  1
	env_note 1,  1
	env_note 1,  1
	env_note 1,  1
	env_ret

ENVSequence1:
	env_note 1,  1
	env_note 9,  1
	env_note 13, 1
	env_note 15, 1
	env_note 15, 1
	env_note 15, 1
	env_note 15, 1
	env_note 15, 1
	env_note 13, 1
	env_note 13, 1
	env_note 13, 1
	env_note 13, 1
	env_note 10, 1
	env_note 10, 1
	env_note 10, 1
	env_note 10, 1
	env_note 8,  1
	env_note 8,  1
	env_note 8,  1
	env_note 8,  1
	env_note 6,  1
	env_note 6,  1
	env_note 6,  1
	env_note 6,  1
	env_note 4,  1
	env_note 4,  1
	env_note 4,  1
	env_note 4,  1
	env_note 2,  1
	env_note 2,  1
	env_note 2,  1
	env_note 2,  1
	env_ret

ENVSequence2:
	env_note 3,  1
	env_note 5,  1
	env_note 10, 1
	env_note 5,  1
	env_note 15, 1
	env_note 5,  1
	env_note 15, 1
	env_note 5,  1
	env_note 15, 1
	env_note 5,  1
	env_note 15, 1
	env_note 5,  1
	env_note 13, 1
	env_note 5,  1
	env_note 13, 1
	env_note 5,  1
	env_note 11, 1
	env_note 5,  1
	env_note 11, 1
	env_note 5,  1
	env_note 9,  1
	env_note 5,  1
	env_note 9,  1
	env_note 5,  1
	env_note 7,  1
	env_note 5,  1
	env_note 7,  1
	env_note 5,  1
	env_note 5,  1
	env_note 5,  1
	env_note 5,  1
	env_note 5,  1
	env_note 3,  1
	env_note 5,  1
	env_note 3,  1
	env_note 5,  1
	env_note 1,  1
	env_note 5,  1
	env_note 1,  1
	env_note 5,  1
	env_ret

ENVSequence3:
	env_note 15, 0
	env_note 14, 0
	env_note 13, 0
	env_note 12, 0
	env_note 11, 0
	env_note 10, 0
	env_note 9,  0
	env_note 8,  0
	env_note 7,  0
	env_note 6,  0
	env_note 5,  0
	env_note 4,  0
	env_note 3,  0
	env_note 2,  0
	env_note 1,  0
	env_note 0,  0
ENVSequence4:
	env_ret
