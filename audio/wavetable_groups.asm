WaveTableSequences:
; sets of wavetable ID's are read in order
; encountering $fe loops the sequences to the start
; encountering $ff cuts the note off entirely
	dw GenericWaveSequence
	dw GenericWaveSequence
	dw GenericWaveSequence
	dw GenericWaveSequence
	dw GenericWaveSequence
	dw GenericWaveSequence

GenericWaveSequence:
	wav_note RED_POKECENTER
	wav_note RED_OAK
	wav_note RED_PALLET
	wav_note RED_CELADON
	wav_note RED_RIVAL
	wav_note RED_CELADON
	wav_note RED_PALLET
	wav_note RED_OAK
	env_loop
