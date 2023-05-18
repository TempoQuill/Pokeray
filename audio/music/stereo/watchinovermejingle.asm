Music_WatchinOverMeJingle:
	channel_count 4
	channel 1, Music_WatchinOverMeJingle_Ch1
	channel 2, Music_WatchinOverMeJingle_Ch2
	channel 3, Music_WatchinOverMeJingle_Ch3
	channel 4, Music_WatchinOverMeJingle_Ch4

Music_WatchinOverMeJingle_Ch1:
	tempo 148
	volume 7
	duty_cycle 1
	vibrato 7, 3, 3
	old_panning %1101, %1110
	note_type 12, 9, 2
	octave 3
	note E_, 2
	octave 2
	note B_, 2
	octave 3
	note E_, 2
	note F#, 4
	octave 2
	note B_, 2
	octave 3
	note E_, 2
	note G#, 4
	note F#, 2
	note E_, 2
	note A_, 4
	note E_, 4
	note F#, 2
	octave 3
	note E_, 2
	octave 2
	note B_, 2
	octave 3
	note E_, 2
	note G#, 4
	note F#, 2
	note E_, 4
	note G_, 4
	note A_, 2
	note E_, 2
	note A_, 2
	note B_, 4
	note D_, 2
	note A_, 2
	octave 4
	note D_, 14
	sound_ret

Music_WatchinOverMeJingle_Ch2:
	duty_cycle 2
	vibrato 31, 7, 4
	note_type 12, 14, 7
	octave 1
	note E_, 16
	note A_, 6
	note D_, 10
	note E_, 16
	note G_, 4
	note A_, 6
	note E_, 6
	note D_, 16
	sound_ret

Music_WatchinOverMeJingle_Ch3:
	vibrato 0, 2, 3
	note_type 12, 0, 0
	relative_pitch 2
	sound_call .sub1
	rest 6
	relative_pitch 0
	sound_call .sub1
	vibrato 8, 2, 2
	note_type 12, 1, -6
	note E_, 1
	rest 1
	note E_, 4
	note F#, 2
	note E_, 2
	note F#, 2
	note E_, 2
	note B_, 6
	rest 2
	note A_, 2
	note G#, 2
	note A_, 2
	note G#, 2
	note A_, 2
	note G#, 2
	note A_, 2
	note G#, 2
	note F#, 8
	rest 8
	sound_ret

.sub1:
	volume_envelope 3, 4
	octave 5
	note A_, 2
	volume_envelope 2, 4
	note A_, 2
	volume_envelope 1, 4
	note A_, 2
	volume_envelope 2, 4
	note A_, 2
	volume_envelope 3, 4
	note A_, 2
	sound_ret

Music_WatchinOverMeJingle_Ch4:
	toggle_noise 3
.loop1:
	drum_speed 12
	drum_note 11, 2
	drum_note 4, 2
	drum_note 3, 2
	drum_note 4, 2
	drum_note 11, 2
	drum_note 4, 2
	drum_note 3, 2
	drum_note 4, 2
	sound_loop 3,.loop1
	drum_note 3, 2
	drum_note 8, 2
	drum_note 12, 4
	drum_note 3, 2
	drum_note 4, 2
	drum_note 11, 2
	drum_note 4, 2
	drum_note 12, 16
	sound_ret
