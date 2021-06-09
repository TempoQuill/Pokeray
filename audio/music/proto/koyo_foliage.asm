Koyo:
	channel_count 3
	channel 1, Koyo_Ch1
	channel 2, Koyo_Ch2
	channel 3, Koyo_Ch3
	channel 4 ; from Mushroom BGM and Cherrygrove City

Koyo_Ch1:
	tempo 109
	volume 7
	duty_cycle 1
	vibrato 5, 3, 2
	note_type 12, 10, 3
	octave 3
	note A_, 4
	octave 4
	note C#, 2
	octave 3
	note B_, 4
	octave 4
	note C#, 2
	note D_, 6
	note E_, 2
	note F#, 2
	note E_, 2
	octave 3
	note A_, 2
	octave 4
	note E_, 2
	note D_, 2
	note C#, 2
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	octave 3
	note A_, 6
	note E_, 2
	note G#, 2
	note B_, 2
.mainloop:
	note_type 6, 10, 3
	sound_call .sub1
	note D_, 4
	note E_, 4
	note A_, 4
	note B_, 4
	note A_, 4
	note G#, 4
	note B_, 4
	sound_call .sub1
	note F#, 4
	note G_, 1
	note G#, 3
	note F#, 4
	note E_, 4
	note D_, 4
	note C#, 4
	rest 2
	note D#, 2
	note E_, 4
	note D#, 4
	note E_, 4
	note F#, 4
	note E_, 4
	note F_, 4
	note F#, 4
	note D_, 4
	note F#, 4
	note A_, 4
	note G#, 4
	note F#, 4
	note E_, 4
	note D#, 4
	note E_, 4
	note F#, 4
	note E_, 4
	note F_, 4
	note F#, 4
	note G#, 4
	note F#, 4
	note D_, 4
	note E_, 4
	note F#, 4
	note G#, 4
	note G_, 4
	note G#, 4
	note E_, 4
	note D_, 4
	note C#, 4
	note_type 12, 10, 7
	octave 2
	note B_, 12
	note_type 6, 10, 3
	octave 3
	note G#, 4
	note G_, 4
	note E_, 4
	note D_, 4
	octave 2
	note B_, 4
	note A_, 4
	note G#, 4
	note A_, 4
	note B_, 4
	note G#, 4
	note A_, 4
	note B_, 4
	sound_call .sub2
	octave 4
	note C#, 4
	note D_, 4
	note E_, 4
	note F#, 4
	note E_, 4
	note D_, 4
	note C#, 4
	sound_call .sub2
	note A_, 4
	note F#, 4
	note E_, 4
	note D_, 4
	note C#, 4
	note F#, 4
	note G_, 4
	note G#, 4
	note G_, 4
	note G#, 4
	note F#, 4
	note E_, 4
	note D#, 4
	octave 2
	note B_, 4
	octave 3
	note E_, 4
	note G#, 4
	note G#, 8
	note F#, 2
	note G_, 2
	note G#, 4
	note G_, 4
	note G#, 4
	note F#, 4
	note D#, 4
	octave 2
	note B_, 4
	note G#, 8
	octave 3
	note G#, 4
	note G#, 4
	note A_, 4
	note B_, 4
	note E_, 4
	note D_, 4
	note C#, 4
	note E_, 8
	sound_call .sub3
	octave 4
	note C#, 4
	octave 3
	note A_, 4
	note G#, 4
	note F#, 4
	note E_, 4
	note D_, 4
	octave 2
	note B_, 4
	sound_call .sub2
	note G#, 4
	note A_, 12
	note E_, 8
	note E_, 4
	octave 2
	note G#, 2
	rest 2
	note G#, 2
	rest 2
	note G#, 2
	rest 2
	octave 3
	note D_, 12
	octave 2
	note A_, 2
	rest 2
	note A_, 2
	rest 2
	note A_, 2
	rest 2
	octave 3
	note F#, 12
	octave 2
	note B_, 2
	rest 2
	note B_, 2
	rest 2
	note B_, 2
	rest 2
	octave 3
	note A_, 4
	note G#, 4
	note F#, 4
	note E_, 4
	note D_, 4
	note C#, 4
	note D_, 8
	note C#, 4
	octave 2
	note B_, 4
	note A_, 4
	note B_, 4
	note A_, 4
	note B_, 4
	note A_, 4
	note B_, 4
	octave 3
	note C#, 4
	note D_, 4
	note G#, 4
	note A_, 4
	note B_, 4
.loop1:
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	sound_loop 3, .loop1
	note_type 12, 10, 3
	octave 4
	note C#, 12
	sound_jump .mainloop

.sub1:
	octave 4
	note C#, 2
	rest 2
	note C#, 2
	rest 2
	note C#, 2
	rest 2
	octave 2
	note A_, 4
	note B_, 4
	octave 3
	note E_, 4
	note A_, 4
	note D_, 4
	note A_, 4
	note A#, 1
	note B_, 3
	note F#, 4
	note A_, 4
	note G#, 4
	note F#, 4
	note E_, 4
	note F#, 4
	note E_, 4
	sound_ret

.sub2:
	octave 3
	note C#, 4
	note D_, 4
	note E_, 4
	note C#, 8
.sub3:
	octave 4
	note C#, 4
	note D_, 4
	note C#, 4
	octave 3
	note B_, 4
	note A_, 4
	note B_, 4
	octave 4
	note C#, 4
	octave 3
	note C#, 4
	note D_, 4
	note E_, 4
	note C#, 8
	sound_ret

Koyo_Ch2:
	duty_cycle 2
	vibrato 13, 2, 4
	note_type 6, 10, 3
	octave 1
	note A_, 4
	rest 4
	octave 2
	note A_, 4
	note C#, 4
	rest 4
	note A_, 4
	note D_, 4
	note F#, 4
	note A_, 4
	note E_, 4
	rest 4
	note G#, 4
	note A_, 4
	octave 3
	note C#, 4
	octave 2
	note A_, 4
	note D_, 4
	rest 4
	note E_, 4
	octave 1
	note A_, 8
	rest 4
	octave 2
	note C#, 4
	note D_, 4
	note E_, 4
.mainloop:
	sound_call .sub1
	sound_call .sub2
	octave 3
	note G#, 2
	rest 2
	note B_, 2
	rest 2
	octave 2
	note D_, 4
	octave 3
	note D_, 2
	rest 2
	note F#, 2
	rest 2
	octave 2
	note C#, 4
	octave 3
	note E_, 2
	rest 2
	note A_, 2
	rest 2
	octave 1
	note B_, 4
	octave 3
	note E_, 2
	rest 2
	note B_, 2
	rest 2
	sound_call .sub1
	sound_call .sub2
	octave 3
	note E_, 2
	rest 2
	note B_, 2
	rest 2
	octave 2
	note D_, 4
	octave 3
	note D_, 2
	rest 2
	octave 4
	note D_, 2
	rest 2
	octave 2
	note E_, 4
	note G#, 2
	rest 2
	note B_, 2
	rest 2
	octave 1
	note G#, 4
	octave 2
	note E_, 2
	rest 2
	octave 3
	note E_, 2
	rest 2
	sound_call .sub1
	octave 2
	note D_, 2
	rest 2
	note F#, 2
	rest 2
	note A_, 2
	rest 2
	octave 3
	note D_, 4
	note E_, 4
	note D_, 4
	sound_call .sub1
	octave 2
	note D_, 4
	note F#, 2
	rest 2
	octave 3
	note D_, 2
	rest 2
	note A_, 4
	note B_, 4
	octave 4
	note C#, 4
	sound_call .sub3
	note G#, 4
	note E_, 2
	rest 2
	octave 2
	note B_, 2
	rest 2
	sound_call .sub3
	octave 1
	note B_, 4
	octave 2
	note A_, 2
	rest 2
	octave 3
	note D_, 2
	rest 2
.loop1:
	sound_call .sub4
	octave 2
	note E_, 4
	note B_, 2
	rest 2
	octave 3
	note E_, 2
	rest 2
	sound_loop 3, .loop1
	sound_call .sub4
	octave 2
	note D#, 4
	note A_, 2
	rest 2
	note A#, 2
	rest 2
	duty_cycle 1
	volume_envelope 12, 2
	sound_call .sub5
	note E_, 8
	octave 4
	note A_, 2
	note A#, 2
	sound_call .sub5
	note E_, 12
	volume_envelope 10, 4
	sound_call .sub6
	note F#, 4
	note G#, 4
	note A_, 4
	note G#, 4
	note F#, 4
	note E_, 4
	sound_call .sub6
	note F#, 12
	note A_, 8
	note G#, 2
	duty_cycle 2
	volume_envelope 10, 2
	octave 1
	note B_, 2
	note_type 12, 10, 2
	octave 2
	note C#, 12
	note D_, 12
	note E_, 16
	rest 6
	note_type 6, 10, 2
	note D_, 4
	volume_envelope 10, 3
	note E_, 12
	note D_, 12
	note C#, 12
	octave 1
	note B_, 8
	octave 2
	note D_, 4
	note C#, 12
	note A_, 12
	octave 3
	note E_, 12
	octave 1
	note A_, 8
	note E_, 2
	note G#, 2
	sound_jump .mainloop

.sub1:
	octave 1
	note A_, 4
	octave 2
	note A_, 2
	rest 2
	octave 3
	note A_, 2
	rest 2
	octave 2
	note C#, 4
	note A_, 2
	rest 2
	octave 3
	note A_, 2
	rest 2
	sound_ret

.sub2:
	octave 2
	note D_, 4
	note A_, 2
	rest 2
	octave 3
	note F#, 2
	rest 2
	octave 2
	note D#, 12
	note E_, 4
	sound_ret

.sub3:
	octave 1
	note B_, 4
	octave 2
	note A_, 2
	rest 2
	octave 3
	note D#, 2
	rest 2
	octave 2
	note D#, 4
	note A_, 2
	rest 2
	octave 3
	note F#, 2
	rest 2
	octave 2
	note E_, 4
	note B_, 2
	rest 2
	octave 3
	note E_, 2
	rest 2
	sound_ret

.sub4:
	octave 1
	note A_, 8
	octave 3
	note C#, 4
	note E_, 12
	octave 2
	note D_, 4
	note A_, 2
	rest 2
	octave 3
	note D_, 2
	rest 2
	sound_ret

.sub5:
	octave 4
	note B_, 4
	note A#, 4
	note B_, 4
	note A_, 8
	note F#, 4
	note E_, 8
	octave 5
	note E_, 4
	sound_ret

.sub6:
	octave 4
	note A_, 8
	note G#, 4
	note A_, 8
	note E_, 4
	note F#, 4
	note E_, 4
	note D_, 4
	note C#, 4
	note D_, 4
	note E_, 4
	note A_, 8
	note G#, 4
	note A_, 8
	note E_, 4
	sound_ret

Koyo_Ch3:
	vibrato 8, 1, 4
	note_type 6, 1, 3
	octave 5
	note E_, 4
	note A_, 4
	note G#, 4
	note A_, 4
	rest 4
	note E_, 4
	note F#, 4
	note G#, 4
	note A_, 4
	octave 6
	note C_, 1
	note C#, 7
	octave 5
	note B_, 4
	note E_, 4
	note A_, 4
	note G#, 4
	note F#, 8
	note G#, 4
	note A_, 6
	rest 2
	octave 4
	note B_, 2
	octave 5
	note C#, 2
	octave 4
	note A_, 8
	volume_envelope 1, 2
	octave 5
	note C#, 2
	note D_, 2
.mainloop:
	volume_envelope 1, 2
	sound_call .sub1
	note F#, 6
	rest 2
	note D_, 2
	rest 2
	note C#, 4
	note D_, 4
	note D#, 4
	sound_call .sub1
	note A#, 1
	note B_, 7
	note A_, 4
	note G#, 6
	rest 2
	volume_envelope 1, 4
	note E_, 2
	octave 6
	note C_, 2
	note C#, 4
	note C_, 4
	note C#, 4
	note D_, 4
	note C#, 4
	octave 5
	note B_, 4
	note A_, 8
	rest 4
	note F#, 6
	rest 2
	note A_, 2
	note B_, 2
	octave 6
	note C#, 4
	note C_, 4
	note C#, 4
	note D_, 4
	note C#, 4
	octave 5
	note B_, 4
	note A_, 4
	note B_, 4
	note A_, 4
	note F#, 4
	note G#, 4
	note A_, 4
	note B_, 4
	note A#, 4
	note B_, 2
	rest 2
	octave 6
	note C#, 4
	octave 5
	note B_, 4
	note A_, 2
	rest 2
	note G#, 10
	rest 2
	note E_, 8
	note F#, 2
	note G#, 2
	note B_, 4
	note A#, 4
	note B_, 2
	rest 2
	note F#, 4
	note G#, 4
	note F#, 2
	rest 2
	note E_, 4
	note F#, 4
	note G#, 4
	note E_, 4
	note F#, 4
	note G#, 4
	volume_envelope 1, 1
	sound_call .sub2
	note F_, 1
	note F#, 3
	note G#, 4
	note A_, 4
	note G#, 4
	note F#, 4
	note E_, 4
	sound_call .sub2
	note D_, 4
	note A_, 4
	note G#, 4
	note A_, 10
	rest 2
	volume_envelope 1, 5
	sound_call .sub3
	note E_, 8
	rest 4
	sound_call .sub3
	note E_, 4
	note F#, 4
	note G#, 4
.loop1:
	sound_call .sub4
	octave 2
	note E_, 2
	sound_loop 3, .loop1
	sound_call .sub4
	rest 2
	volume_envelope 1, 0
	octave 4
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note B_, 4
	note A_, 4
	note G#, 4
	note F#, 2
	rest 2
	note F#, 2
	rest 2
	note F#, 2
	rest 2
	octave 5
	note D_, 4
	note C#, 4
	octave 4
	note B_, 4
	note G#, 2
	rest 2
	note G#, 2
	rest 2
	note G#, 2
	rest 2
	octave 5
	note F#, 4
	note E_, 4
	note D_, 4
	note C#, 4
	note D_, 4
	note E_, 4
	note F#, 6
	rest 2
	note E_, 4
	note G#, 4
	note F#, 4
	note G#, 4
	note F#, 4
	note G#, 4
	note F#, 4
	note G#, 6
	rest 2
	note F#, 4
	note E_, 6
	rest 2
	note G#, 4
	note A_, 4
	note G#, 4
	note A_, 4
	note G#, 4
	note A_, 4
	note G#, 4
	note A_, 16
	rest 8
	sound_jump .mainloop

.sub1:
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 4
	note D_, 4
	note C#, 4
	note F#, 10
	rest 2
	note G_, 1
	note G#, 7
	note F#, 2
	rest 2
	note E_, 4
	note A_, 4
	note G#, 4
	note A_, 4
	note G#, 4
	note A_, 4
	sound_ret

.sub2:
	note A_, 6
	rest 2
	note G#, 4
	note A_, 6
	rest 2
	note E_, 4
	note F#, 4
	note E_, 4
	note D_, 4
	note C#, 4
	note D_, 4
	note E_, 4
	note A_, 6
	rest 2
	note G#, 4
	note A_, 6
	rest 2
	note E_, 4
	sound_ret

.sub3:
	octave 3
	note E_, 8
	rest 4
	octave 2
	note B_, 8
	rest 4
	octave 3
	note E_, 4
	rest 4
	octave 2
	note E_, 2
	rest 2
	sound_ret

.sub4:
	note A_, 4
	rest 8
	octave 4
	note C#, 2
	rest 10
	note D_, 2
	rest 10
	note C#, 2
	rest 6
	octave 3
	note B_, 2
	sound_ret
