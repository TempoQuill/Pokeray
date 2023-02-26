Music_TimeCapsuleMenu:
	channel_count 4
	channel 1, Music_TimeCapsuleMenu_Ch1
	channel 2, Music_TimeCapsuleMenu_Ch2
	channel 3, Music_TimeCapsuleMenu_Ch3
	channel 4, Music_TimeCapsuleMenu_Ch4

Music_TimeCapsuleMenu_Ch1:
	tempo 148
	volume 7
	duty_cycle 2
	stereo_panning FALSE, TRUE
	note_type 6, 8, 2
	octave 3
	note F_, 12
	note F_, 2
	note F_, 2
	note F_, 4
	note F_, 4
	note F_, 8
	note F_, 12
	note F_, 2
	note F_, 2
	note F_, 4
	note F_, 4
	note D#, 2
	note D#, 2
	note E_, 2
	note E_, 2
.mainloop:
	stereo_panning TRUE, FALSE
	note_type 6, 8, 2
	octave 3
	note F_, 2
	note C_, 2
	octave 2
	note A_, 2
	octave 3
	note C_, 2
	note A_, 4
	note F_, 4
	octave 4
	note C_, 4
	octave 3
	note A_, 4
	note F_, 4
	note C_, 3
	note F_, 1
	sound_call .sub1
	note A_, 2
	note A#, 2
	note A_, 2
	note A#, 2
	note A_, 4
	note C_, 4
	note F_, 4
	note C_, 4
	octave 2
	note A_, 4
	octave 3
	note F_, 4
	note A_, 2
	note A#, 2
	note A_, 2
	note A#, 2
	note_type 12, 10, 5
	note A_, 12
	note_type 6, 8, 2
	note D#, 2
	octave 2
	note A#, 2
	note G_, 2
	note A#, 2
	octave 3
	note G_, 4
	note D#, 4
	note A#, 4
	note G_, 4
	note D#, 4
	octave 2
	note A#, 3
	octave 3
	note F_, 1
	sound_call .sub1
	note F_, 2
	note G_, 2
	note F_, 2
	note G_, 2
	note F_, 4
	note C_, 4
	note A_, 4
	note C_, 4
	octave 2
	note A#, 4
	note A_, 4
	octave 3
	note C_, 2
	octave 2
	note A#, 2
	note A_, 2
	note A#, 2
	octave 3
	note C_, 4
	octave 2
	note A_, 4
	octave 3
	note C_, 4
	note F_, 8
	note C_, 4
	note_type 8, 7, 8
	octave 2
	note A#, 3
	octave 3
	note D_, 3
	rest 3
	note F_, 3
	rest 3
	note G_, 3
	rest 3
	note A_, 3
	note A#, 3
	note G_, 3
	note D_, 3
	note G_, 1
	note A_, 1
	octave 4
	note C_, 1
	octave 3
	note A#, 3
	octave 4
	note C_, 3
	note D_, 3
	octave 3
	note A#, 3
	note_type 6, 7, 8
	octave 4
	note C_, 4
	octave 3
	note G_, 1
	note A_, 7
	note C_, 4
	note A_, 4
	note G_, 4
	note F_, 4
	note E_, 4
	note D_, 4
	octave 2
	note F_, 4
	octave 3
	note C_, 4
	octave 2
	note F_, 4
	note A#, 4
	note F_, 4
	note A_, 4
	octave 3
	note C_, 4
	octave 2
	note A#, 4
	octave 3
	note D_, 4
	rest 4
	note F_, 4
	rest 4
	note G_, 4
	rest 4
	note A_, 4
	note A#, 4
	note G_, 4
	note D_, 4
	note F_, 4
	note G_, 4
	note E_, 4
	note G_, 4
	octave 4
	note D_, 4
	note C_, 4
	octave 3
	note A_, 8
	note C_, 8
	octave 2
	note A#, 4
	note A_, 4
	note A#, 4
	note_type 12, 7, 8
	octave 3
	note C_, 2
	octave 2
	note A_, 10
	rest 4
	sound_jump .mainloop

.sub1:
	note G_, 4
	octave 2
	note A#, 4
	octave 3
	note F_, 4
	octave 2
	note A#, 4
	octave 3
	note D#, 4
	octave 2
	note A#, 4
	octave 3
	note D#, 4
	note G_, 4
	sound_ret

Music_TimeCapsuleMenu_Ch2:
	stereo_panning TRUE, TRUE
	note_type 6, 14, 1
	octave 1
	note F_, 4
	duty_cycle 1
	volume_envelope 6, 8
	octave 2
	note A_, 2
	note A#, 2
	octave 3
	note C_, 4
	duty_cycle 0
	volume_envelope 14, 1
	octave 1
	note F_, 2
	note F_, 2
	note F_, 4
	note F_, 4
	note F_, 8
	note F_, 4
	duty_cycle 1
	volume_envelope 6, 8
	octave 3
	note C_, 2
	note E_, 2
	note F_, 4
	duty_cycle 0
	volume_envelope 14, 1
	octave 1
	note F_, 2
	note F_, 2
	note F_, 4
	note F_, 4
	note F_, 8
.mainloop:
	stereo_panning TRUE, TRUE
	note_type 6, 14, 1
	octave 1
	note F_, 4
	volume_envelope 13, 3
	note A_, 8
	volume_envelope 14, 1
	note F_, 2
	note F_, 2
	note F_, 4
	note F_, 4
	note F_, 4
	note F_, 4
	sound_call .sub1
	note F_, 4
	volume_envelope 13, 3
	note A_, 4
	octave 2
	note C_, 4
	volume_envelope 14, 1
	octave 1
	note F_, 2
	note F_, 2
	note F_, 4
	volume_envelope 13, 3
	octave 2
	note C_, 4
	volume_envelope 14, 1
	octave 1
	note F_, 4
	note F_, 4
	volume_envelope 14, 1
	octave 1
	note F_, 4
	volume_envelope 13, 3
	octave 2
	note D_, 4
	note C_, 4
	volume_envelope 14, 1
	octave 1
	note F_, 2
	note F_, 2
	note F_, 4
	note F_, 4
	note F_, 4
	note F_, 4
	volume_envelope 14, 1
	octave 1
	note D#, 4
	volume_envelope 13, 3
	note A#, 8
	volume_envelope 14, 1
	note D#, 2
	note D#, 2
	note D#, 4
	note D#, 4
	note D#, 4
	note D#, 4
	sound_call .sub1
	note F_, 4
	volume_envelope 13, 3
	octave 2
	note C_, 4
	note F_, 4
	volume_envelope 14, 1
	octave 1
	note F_, 2
	note F_, 2
	note F_, 4
	volume_envelope 13, 3
	octave 2
	note C_, 4
	volume_envelope 14, 1
	octave 1
	note F_, 4
	note F_, 4
	note F_, 4
	volume_envelope 13, 3
	octave 3
	note C_, 4
	octave 2
	note A_, 4
	volume_envelope 14, 1
	octave 1
	note F_, 2
	note F_, 2
	note F_, 4
	volume_envelope 13, 3
	octave 2
	note C_, 4
	volume_envelope 14, 1
	octave 1
	note F_, 4
	note F#, 4
	stereo_panning FALSE, TRUE
	volume_envelope 13, 2
	sound_call .sub2
	stereo_panning TRUE, TRUE
	octave 2
	note F_, 4
	octave 1
	note F_, 2
	rest 2
	stereo_panning TRUE, FALSE
	volume_envelope 9, 3
	octave 2
	note A_, 4
	stereo_panning TRUE, TRUE
	volume_envelope 13, 2
	octave 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 3
	rest 1
	note F_, 3
	rest 5
	note C_, 2
	note E_, 2
	sound_call .sub3
	stereo_panning FALSE, TRUE
	sound_call .sub2
	stereo_panning TRUE, TRUE
	octave 2
	note F_, 4
	octave 1
	note F_, 2
	rest 6
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 3
	rest 1
	note F_, 3
	rest 5
	note C_, 2
	note E_, 2
	sound_call .sub3
	sound_jump .mainloop

.sub1:
	note D#, 4
	volume_envelope 13, 3
	note A#, 4
	octave 2
	note G_, 4
	volume_envelope 14, 1
	octave 1
	note D#, 2
	note D#, 2
	note D#, 4
	volume_envelope 13, 3
	note A#, 4
	volume_envelope 14, 1
	note D#, 4
	note E_, 4
	sound_ret

.sub2:
	octave 1
	note G_, 4
	volume_envelope 9, 8
	octave 2
	note G_, 4
	note F_, 4
	note D_, 4
	volume_envelope 13, 2
	octave 1
	note G_, 4
	volume_envelope 9, 8
	octave 2
	note D_, 4
	note G_, 4
	note F_, 4
	volume_envelope 13, 2
	octave 1
	note G_, 4
	volume_envelope 9, 8
	octave 2
	note A#, 4
	volume_envelope 13, 2
	octave 1
	note G_, 4
	volume_envelope 13, 3
	octave 2
	note D_, 8
	volume_envelope 13, 2
	note E_, 4
	note F_, 4
	note G_, 4
	sound_ret

.sub3:
	note F_, 3
	rest 1
	note F_, 2
	rest 6
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 3
	rest 1
	note F_, 3
	rest 1
	note A#, 1
	octave 2
	note C_, 3
	octave 1
	note F_, 2
	rest 2
	sound_ret

Music_TimeCapsuleMenu_Ch3:
	staccato 5
	vibrato 9, 2, 3
	stereo_panning TRUE, TRUE
	note_type 12, 1, -6
	octave 4
	note C_, 2
	staccato -1
	volume_envelope 2, 6
	octave 3
	note F_, 1
	note G_, 1
	note A_, 2
	staccato 5
	volume_envelope 1, -6
	octave 4
	note C_, 1
	note C_, 1
	note C_, 2
	note C_, 2
	note C_, 4
	note C_, 2
	staccato -1
	volume_envelope 2, 6
	octave 3
	note A_, 1
	note A#, 1
	octave 4
	note C_, 2
	staccato 5
	volume_envelope 1, -6
	note C_, 1
	note C_, 1
	note C_, 2
	note C_, 2
	note C_, 1
	note C_, 1
	note C_, 1
	note C_, 1
.mainloop:
	staccato -1
	stereo_panning FALSE, TRUE
	note_type 6, 1, 3
	octave 4
	note E_, 1
	note F_, 11
	volume_envelope 2, 3
	note F_, 8
	volume_envelope 1, 3
	octave 5
	note C_, 4
	octave 4
	note A_, 4
	note F_, 3
	volume_envelope 2, 3
	octave 5
	note D_, 1
	sound_call .sub1
	note_type 12, 1, 3
	octave 5
	note C_, 1
	note D_, 1
	note C_, 1
	note D_, 1
	note C_, 12
	volume_envelope 2, 3
	note C_, 16
	note_type 6, 1, 3
	octave 4
	note A_, 1
	note A#, 11
	volume_envelope 2, 3
	note A#, 8
	volume_envelope 1, 3
	note A#, 4
	note G_, 4
	note D#, 3
	volume_envelope 2, 3
	octave 5
	note D_, 1
	sound_call .sub1
	note A_, 12
	note F_, 4
	octave 5
	note C_, 16
	stereo_panning TRUE, TRUE
	volume_envelope 2, 7
	octave 4
	note F_, 12
	note C_, 4
	note A_, 16
	volume_envelope 1, 2
	note E_, 1
	note F_, 3
	note G_, 4
	rest 4
	note A_, 4
	rest 4
	note A#, 4
	rest 4
	octave 5
	note C_, 4
	note_type 8, 1, 2
	note D_, 9
	note E_, 1
	note F_, 1
	note A_, 1
	note G_, 12
	note F_, 3
	note C_, 9
	stereo_panning FALSE, TRUE
	note_type 6, 1, -3
	octave 3
	note A_, 2
	octave 4
	note C_, 2
	note F_, 2
	note A_, 2
	note C_, 2
	note F_, 2
	note A_, 2
	octave 5
	note C_, 2
	octave 4
	note A#, 8
	note A_, 8
	note G_, 8
	note F_, 8
	note G_, 8
	note A_, 8
	note A#, 8
	octave 5
	note C_, 8
	volume_envelope 2, -3
	note C#, 1
	volume_envelope 1, -3
	note D_, 15
	note A#, 16
	note_type 12, 1, -3
	note A_, 2
	note F_, 14
	volume_envelope 2, -3
	note A_, 2
	note F_, 10
	volume_envelope 1, 3
	octave 3
	note F_, 1
	note A_, 1
	note A#, 1
	octave 4
	note C_, 1
	sound_jump .mainloop

.sub1:
	volume_envelope 1, 3
	note D#, 16
	rest 3
	volume_envelope 2, 3
	note C_, 1
	note C#, 1
	volume_envelope 1, 3
	note D_, 3
	note C_, 4
	octave 4
	note A#, 2
	rest 2
	sound_ret

Music_TimeCapsuleMenu_Ch4:
	toggle_noise 7
	stereo_panning TRUE, FALSE
	drum_speed 6
	sound_call .sub1
	sound_call .sub2
.mainloop:
.loop1:
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	sound_call .sub3
	sound_loop 2, .loop1
.loop2:
	drum_note 5, 16
	rest 8
	drum_note 7, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 10, 2
	drum_note 5, 12
	drum_note 6, 12
	drum_note 10, 1
	drum_note 9, 1
	drum_note 8, 1
	drum_note 7, 1
	drum_note 8, 1
	drum_note 9, 1
	drum_note 10, 1
	drum_note 11, 1
	sound_call .sub1
	sound_call .sub3
	sound_loop 2, .loop2
	sound_jump .mainloop

.sub1:
	drum_note 1, 4
	drum_note 5, 2
	drum_note 4, 2
	drum_note 5, 2
	drum_note 4, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 5, 2
	drum_note 4, 2
	sound_ret

.sub2:
	drum_note 10, 4
	drum_note 5, 2
	drum_note 4, 2
	drum_note 5, 2
	drum_note 4, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 2
	sound_ret

.sub3:
	drum_note 10, 4
	drum_note 5, 2
	drum_note 4, 2
	drum_note 5, 2
	drum_note 4, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 1
	drum_note 9, 1
	drum_note 8, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 8, 1
	drum_note 9, 1
	sound_ret
