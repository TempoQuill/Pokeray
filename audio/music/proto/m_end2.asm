End2:
	channel_count 3
	channel 1, End2_Ch1
	channel 2, End2_Ch2
	channel 3, End2_Ch3

End2_Ch1:
	tempo 265
	volume 7
	duty_cycle 2
	vibrato 16, 4, 2
	note_type 12, 3, 7
	rest 4
	octave 4
	note E_, 6
	volume_envelope 6, 5
	octave 3
	note B_, 4
	note A_, 2
.mainloop:
	note G#, 4
	octave 4
	note E_, 2
	octave 3
	note F#, 2
	octave 4
	note C#, 4
	note A_, 2
	octave 3
	note A_, 2
	note G#, 4
	note B_, 2
	octave 4
	note D#, 2
	note C#, 2
	octave 3
	note B_, 2
	note A_, 4
	octave 4
	note G#, 4
	note E_, 4
	note C#, 6
	octave 3
	note A_, 2
	note G#, 4
	note E_, 4
	note B_, 4
	note A_, 4
	sound_loop 2, .mainloop
	note B_, 4
	note A_, 4
	note G#, 4
	note F#, 4
	note E_, 4
	note A_, 4
	octave 4
	note C#, 4
	octave 3
	note A_, 4
	octave 4
	note D#, 4
	octave 3
	note B_, 4
	note F#, 8
	note B_, 8
	note F#, 2
	note B_, 6
	sound_jump .mainloop

End2_Ch2:
	duty_cycle 2
	vibrato 16, 2, 2
	note_type 12, 1, 7
	octave 4
	note E_, 6
	volume_envelope 7, 5
	octave 3
	note B_, 2
	volume_envelope 9, 5
	note A_, 4
	volume_envelope 10, 4
	octave 4
	note F#, 4
.mainloop:
	volume_envelope 10, 4
	sound_call .sub1
	note G#, 8
	note F#, 4
	sound_call .sub1
.loop1:
	note B_, 1
	octave 5
	note C#, 1
	octave 4
	note B_, 4
	sound_loop 2, .loop1
	note B_, 6
	note G#, 2
	note E_, 8
	octave 5
	note C#, 6
	octave 4
	note A_, 2
	note F#, 8
	octave 5
	note F#, 6
	note D#, 2
	octave 4
	note B_, 2
	note B_, 2
	note B_, 2
	note A_, 2
	note G#, 4
	note B_, 4
	note G#, 2
	note F#, 6
	sound_jump .mainloop

.sub1:
	note E_, 6
	note F#, 1
	note G#, 1
	note A_, 6
	note B_, 1
	octave 5
	note C#, 1
	octave 4
	note B_, 4
	octave 5
	note E_, 4
	note F#, 6
	note E_, 1
	note D#, 1
	note C#, 4
	octave 4
	note B_, 4
	note A_, 3
	note G#, 1
	note A_, 2
	octave 5
	note C#, 2
	octave 4
	note B_, 4
	sound_ret

End2_Ch3:
	note_type 3, 3, -3
	octave 4
	note E_, 8
	note B_, 8
	octave 5
	note G#, 8
	volume_envelope 2, -3
	octave 4
	note E_, 4
	volume_envelope 3, -3
	note E_, 4
	volume_envelope 2, -3
	octave 3
	note B_, 4
	volume_envelope 3, -3
	note B_, 4
	sound_call .sub1
	sound_call .sub2
	sound_call .sub4
.mainloop:
	sound_call .sub6
	sound_call .sub4
	sound_call .sub7
	sound_call .sub14
	sound_call .sub6
	sound_call .sub8
	sound_call .sub9
	sound_call .sub15
	sound_call .sub6
	sound_call .sub4
	sound_call .sub7
	sound_call .sub4
	sound_call .sub10
	sound_call .sub7
	sound_call .sub12
	sound_call .sub17
	sound_call .sub6
	sound_call .sub13
	sound_call .sub8
	sound_call .sub7
	sound_call .sub6
	sound_call .sub18
	sound_call .sub8
	sound_call .sub9
	sound_call .sub6
	sound_call .sub13
	sound_call .sub4
	sound_call .sub9
	sound_call .sub2
	sound_call .sub8
	volume_envelope 1, -3
	octave 4
	note B_, 3
	sound_call .sub5
	sound_call .sub10
	sound_call .sub6
	sound_call .sub4
	sound_call .sub7
	sound_call .sub14
	sound_call .sub6
	sound_call .sub8
	sound_call .sub9
	sound_call .sub15
	sound_call .sub6
	sound_call .sub4
	sound_call .sub7
	sound_call .sub4
	sound_call .sub10
	sound_call .sub7
	sound_call .sub12
	sound_call .sub17
	sound_call .sub6
	sound_call .sub13
	sound_call .sub8
	sound_call .sub7
	sound_call .sub6
	sound_call .sub18
	sound_call .sub8
	sound_call .sub9
	sound_call .sub6
	sound_call .sub13
	sound_call .sub4
	sound_call .sub9
	sound_call .sub2
	sound_call .sub8
	sound_call .sub2
	sound_call .sub12
	sound_call .sub6
	sound_call .sub13
	sound_call .sub4
	sound_call .sub9
	sound_call .sub13
	sound_call .sub4
	sound_call .sub9
	sound_call .sub4
	sound_call .sub1
	sound_call .sub10
	sound_call .sub8
	sound_call .sub9
	volume_envelope 1, -3
	octave 4
	note A_, 3
	sound_call .sub11
	sound_call .sub8
	sound_call .sub9
	sound_call .sub12
	sound_call .sub16
	volume_envelope 1, -3
	octave 4
	note D#, 3
	sound_call .sub3
	sound_call .sub12
	sound_call .sub4
	sound_call .sub2
	sound_call .sub8
	sound_call .sub2
	sound_call .sub8
	sound_call .sub6
	volume_envelope 1, -3
	note G#, 3
	volume_envelope 2, -3
	note G#, 3
	volume_envelope 3, -3
	note G#, 4
	rest 6
	sound_call .sub4
	sound_call .sub16
	volume_envelope 1, -3
	octave 4
	note D#, 3
	volume_envelope 2, -3
	note D#, 3
	volume_envelope 3, -3
	note D#, 4
	rest 14
	sound_jump .mainloop

.sub1:
	volume_envelope 1, -3
	octave 4
	note F#, 3
.sub1_9:
	volume_envelope 2, -3
	note F#, 3
	volume_envelope 3, -3
	note F#, 2
	sound_ret

.sub2:
	volume_envelope 1, -3
	octave 5
	note D#, 3
.sub3:
	volume_envelope 2, -3
	note D#, 3
	volume_envelope 3, -3
	note D#, 2
	sound_ret

.sub4:
	volume_envelope 1, -3
	note B_, 3
.sub5:
	volume_envelope 2, -3
	note B_, 3
	volume_envelope 3, -3
	note B_, 2
	sound_ret

.sub6:
	volume_envelope 1, -3
	octave 4
	note E_, 3
.sub6_7:
	volume_envelope 2, -3
	note E_, 3
	volume_envelope 3, -3
	note E_, 2
	sound_ret

.sub7:
	volume_envelope 1, -3
	octave 5
	note G#, 3
.sub7_10:
	volume_envelope 2, -3
	note G#, 3
	volume_envelope 3, -3
	note G#, 2
	sound_ret

.sub8:
	volume_envelope 1, -3
	octave 5
	note C#, 3
	volume_envelope 2, -3
	note C#, 3
	volume_envelope 3, -3
	note C#, 2
	sound_ret

.sub9:
	volume_envelope 1, -3
	octave 5
	note E_, 3
	sound_jump .sub6_7

.sub10:
	volume_envelope 1, -3
	note A_, 3
.sub11:
	volume_envelope 2, -3
	note A_, 3
	volume_envelope 3, -3
	note A_, 2
	sound_ret

.sub12:
	volume_envelope 1, -3
	note F#, 3
	sound_jump .sub1_9

.sub13:
	volume_envelope 1, -3
	octave 4
	note G#, 3
	sound_jump .sub7_10

.sub14:
	volume_envelope 1, -3
	note D#, 3
	volume_envelope 2, -3
	note D#, 1
	volume_envelope 1, -3
	note E_, 3
	volume_envelope 2, -3
	note E_, 1
	sound_ret

.sub15:
	volume_envelope 1, -3
	note G#, 3
	volume_envelope 2, -3
	note G#, 1
	volume_envelope 1, -3
	note A_, 3
	volume_envelope 2, -3
	note A_, 1
	sound_ret

.sub16:
	volume_envelope 1, -3
	octave 3
	note B_, 3
	sound_jump .sub5

.sub17:
	volume_envelope 1, -3
	note G#, 3
	volume_envelope 2, -3
	note G#, 1
	volume_envelope 1, -3
	note F#, 3
	volume_envelope 2, -3
	note F#, 1
	sound_ret

.sub18:
	volume_envelope 1, -3
	note A_, 3
	volume_envelope 2, -3
	note A_, 1
	volume_envelope 1, -3
	note B_, 3
	volume_envelope 2, -3
	note B_, 1
	sound_ret
