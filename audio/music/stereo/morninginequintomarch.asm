Music_MorningInEquintoMarch:
	channel_count 4
	channel 1, Music_MorningInEquintoMarch_Ch1
	channel 2, Music_MorningInEquintoMarch_Ch2
	channel 3, Music_MorningInEquintoMarch_Ch3
	channel 4, Music_MorningInEquintoMarch_Ch4

Music_MorningInEquintoMarch_Ch1:
	tempo 148
	volume 7
	duty_cycle 2
	stereo_panning FALSE, TRUE
.loop1:
	sound_call .sub1
	rest 8
	sound_call .sub1
	rest 8
	sound_call .sub1
	rest 8
	sound_call .sub1
	rest 8
	sound_loop 4, .loop1
.mainloop:
	sound_call .sub2
	sound_call .sub3
	sound_call .sub2
	sound_call .sub4
	sound_call .sub2
	sound_call .sub3
.loop2:
	sound_call .sub1
	rest 4
	volume_envelope 10, 1
	octave 3
	note C_, 4
	sound_loop 3, .loop2
	sound_call .sub1
	rest 4
	volume_envelope 10, 1
	octave 3
	note E_, 4
.loop3:
	sound_call .sub1
	rest 8
	sound_call .sub1
	rest 8
	sound_call .sub1
	rest 8
	sound_call .sub1
	rest 8
	sound_loop 2, .loop3
	sound_call .sub2
	sound_call .sub3
	sound_call .sub2
	sound_call .sub4
	note_type 8, 14, 1
	note C_, 1
	note A_, 11
	volume_envelope 12, 2
	note C_, 1
	note A#, 11
	volume_envelope 14, 1
	note D#, 1
	octave 4
	note C_, 11
	octave 3
	note D#, 1
	note A#, 11
.loop4:
	sound_call .sub1
	rest 4
	volume_envelope 10, 1
	octave 3
	note F_, 4
	sound_loop 3, .loop4
	sound_call .sub1
	rest 4
	volume_envelope 10, 1
	octave 3
	note C#, 4
.loop5:
	sound_call .sub1
	rest 4
	volume_envelope 10, 1
	octave 3
	note F_, 4
	sound_loop 2, .loop5
	sound_call .sub1
	rest 4
	volume_envelope 10, 1
	octave 3
	note E_, 4
.loop6:
	sound_call .sub1
	rest 8
	sound_loop 9, .loop6
	sound_jump .mainloop

.sub1:
	note_type 4, 8, 8
	octave 1
	note D#, 1
	volume_envelope 6, 8
	note D_, 1
	volume_envelope 4, 8
	note C#, 1
	volume_envelope 2, 8
	note C_, 1
	sound_ret

.sub2:
	note_type 4, 8, 8
	octave 1
	note D#, 1
	volume_envelope 6, 8
	note D_, 1
	volume_envelope 4, 8
	note C#, 1
	volume_envelope 2, 8
	note C_, 1
	rest 4
	volume_envelope 10, 1
	octave 3
	note C_, 4
	volume_envelope 8, 8
	octave 1
	note D#, 1
	volume_envelope 6, 8
	note D_, 1
	volume_envelope 4, 8
	note C#, 1
	volume_envelope 2, 8
	note C_, 1
	rest 4
	volume_envelope 10, 1
	octave 3
	note C_, 4
	volume_envelope 8, 8
	octave 1
	note D#, 1
	volume_envelope 6, 8
	note D_, 1
	volume_envelope 4, 8
	note C#, 1
	volume_envelope 2, 8
	note C_, 1
	rest 4
	volume_envelope 10, 1
	octave 3
	note D_, 4
	volume_envelope 8, 8
	octave 1
	note D#, 1
	volume_envelope 6, 8
	note D_, 1
	volume_envelope 4, 8
	note C#, 1
	volume_envelope 2, 8
	note C_, 1
	rest 4
	volume_envelope 10, 1
	octave 3
	note D_, 4
	sound_ret

.sub3:
	volume_envelope 8, 8
	octave 1
	note D#, 1
	volume_envelope 6, 8
	note D_, 1
	volume_envelope 4, 8
	note C#, 1
	volume_envelope 2, 8
	note C_, 1
	rest 4
	volume_envelope 10, 1
	octave 3
	note D_, 4
	volume_envelope 8, 8
	octave 1
	note D#, 1
	volume_envelope 6, 8
	note D_, 1
	volume_envelope 4, 8
	note C#, 1
	volume_envelope 2, 8
	note C_, 1
	rest 4
	volume_envelope 10, 1
	octave 3
	note D_, 4
	volume_envelope 8, 8
	octave 1
	note D#, 1
	volume_envelope 6, 8
	note D_, 1
	volume_envelope 4, 8
	note C#, 1
	volume_envelope 2, 8
	note C_, 1
	rest 4
	volume_envelope 10, 1
	octave 3
	note C_, 4
	volume_envelope 8, 8
	octave 1
	note D#, 1
	volume_envelope 6, 8
	note D_, 1
	volume_envelope 4, 8
	note C#, 1
	volume_envelope 2, 8
	note C_, 1
	rest 4
	volume_envelope 10, 1
	octave 2
	note A#, 4
	sound_ret

.sub4:
	volume_envelope 8, 8
	octave 1
	note D#, 1
	volume_envelope 6, 8
	note D_, 1
	volume_envelope 4, 8
	note C#, 1
	volume_envelope 2, 8
	note C_, 1
	rest 4
	volume_envelope 10, 1
	octave 3
	note D#, 4
	volume_envelope 8, 8
	octave 1
	note D#, 1
	volume_envelope 6, 8
	note D_, 1
	volume_envelope 4, 8
	note C#, 1
	volume_envelope 2, 8
	note C_, 1
	rest 4
	volume_envelope 10, 1
	octave 3
	note D#, 4
	volume_envelope 8, 8
	octave 1
	note D#, 1
	volume_envelope 6, 8
	note D_, 1
	volume_envelope 4, 8
	note C#, 1
	volume_envelope 2, 8
	note C_, 1
	rest 4
	volume_envelope 10, 1
	octave 3
	note E_, 4
	volume_envelope 8, 8
	octave 1
	note D#, 1
	volume_envelope 6, 8
	note D_, 1
	volume_envelope 4, 8
	note C#, 1
	volume_envelope 2, 8
	note C_, 1
	rest 4
	volume_envelope 10, 1
	octave 3
	note E_, 4
	sound_ret

Music_MorningInEquintoMarch_Ch2:
	duty_cycle 1
	stereo_panning TRUE, TRUE
	note_type 8, 0, 0
	rest 12
	rest 12
	rest 12
	rest 12
	rest 12
	rest 12
	sound_call .sub1
.mainloop:
	sound_call .sub3
	sound_call .sub4
	sound_call .sub3
	octave 1
	note G#, 4
	octave 2
	note G#, 1
	rest 1
	octave 1
	note D#, 4
	octave 2
	note G#, 1
	rest 1
	octave 1
	note G_, 4
	octave 2
	note A#, 1
	rest 1
	octave 1
	note E_, 4
	octave 3
	note C_, 1
	rest 1
	octave 1
	note F_, 12
	rest 12
	sound_call .sub1
	sound_call .sub3
	sound_call .sub4
	volume_envelope 13, 2
	octave 1
	note F_, 12
	note G_, 12
	note G#, 12
	note A#, 12
	volume_envelope 13, 1
	octave 1
	note C#, 4
	octave 3
	note C#, 1
	rest 1
	octave 1
	note C#, 4
	octave 3
	note C#, 1
	rest 1
	octave 1
	note G#, 4
	octave 2
	note G#, 1
	rest 1
	note C#, 4
	note G#, 1
	rest 1
	note C_, 4
	note A#, 1
	rest 1
	octave 1
	note G_, 4
	octave 2
	note A#, 1
	rest 1
	octave 1
	note E_, 4
	octave 2
	note A#, 1
	rest 1
	volume_envelope 13, 2
	octave 1
	note D_, 6
.loop1:
	volume_envelope 12, 2
	note C_, 4
	volume_envelope 13, 1
	note C_, 2
	volume_envelope 12, 3
	note C_, 6
	sound_loop 2, .loop1
	volume_envelope 12, 2
	note C_, 3
	note E_, 3
	volume_envelope 13, 1
	note G_, 2
	note E_, 2
	note G_, 2
	volume_envelope 12, 3
	octave 2
	note C_, 6
	sound_call .sub2
	sound_jump .mainloop

.sub1:
	rest 12
	rest 6
.sub2:
	volume_envelope 13, 1
	octave 1
	note C_, 2
	note D_, 2
	note E_, 2
	sound_ret

.sub3:
	octave 1
	note F_, 4
	octave 2
	note A_, 1
	rest 1
	note C_, 4
	note A_, 1
	rest 1
	octave 1
	note G_, 4
	octave 2
	note A#, 1
	rest 1
	octave 1
	note A_, 4
	octave 2
	note A#, 1
	rest 1
	octave 1
	note A#, 4
	octave 2
	note A#, 1
	rest 1
	note D_, 4
	note A#, 1
	rest 1
	note C_, 4
	note G_, 1
	rest 1
	octave 1
	note C_, 4
	octave 2
	note G_, 1
	rest 1
	sound_ret

.sub4:
	octave 1
	note F_, 4
	octave 2
	note A_, 1
	rest 1
	note C_, 4
	note A_, 1
	rest 1
	octave 1
	note G_, 4
	octave 2
	note A#, 1
	rest 1
	note C_, 4
	note A#, 1
	rest 1
	octave 1
	note G#, 4
	octave 3
	note C_, 1
	rest 1
	octave 2
	note C_, 4
	octave 3
	note C_, 1
	rest 1
	octave 1
	note G_, 4
	octave 2
	note A#, 1
	rest 1
	octave 1
	note C_, 4
	octave 2
	note A#, 1
	rest 1
	sound_ret

Music_MorningInEquintoMarch_Ch3:
	vibrato 17, 2, 3
	stereo_panning TRUE, FALSE
.loop1:
	sound_call .sub1
	rest 8
	sound_call .sub1
	rest 8
	sound_call .sub1
	rest 8
	sound_call .sub1
	rest 8
	sound_loop 4, .loop1
.mainloop:
	stereo_panning TRUE, FALSE
	note_type 8, 1, 1
	octave 5
	note F_, 4
	rest 2
	note F_, 3
	rest 1
	note F_, 1
	rest 1
	note G_, 3
	rest 1
	note A_, 1
	rest 1
	note A#, 5
	rest 1
	note A_, 3
	rest 1
	note F_, 3
	rest 3
	note F_, 7
	rest 1
	sound_call .sub1
	rest 4
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	rest 2
	stereo_panning TRUE, FALSE
	note_type 8, 1, 1
	octave 5
	note F_, 3
	rest 1
	note F_, 1
	rest 1
	note F_, 3
	rest 1
	note F_, 1
	rest 1
	note G_, 3
	rest 1
	note F_, 1
	rest 1
	note G_, 5
	rest 1
	note G#, 3
	rest 1
	note G#, 3
	rest 3
	note F_, 2
	note G_, 5
	rest 1
	sound_call .sub1
	rest 4
	note_type 8, 1, 1
	octave 5
	note C_, 1
	rest 1
	note F_, 4
	rest 2
	note F_, 3
	rest 1
	note F_, 1
	rest 1
	note G_, 3
	rest 1
	note A_, 1
	rest 1
	note A#, 5
	rest 1
	note A_, 3
	rest 1
	note F_, 9
	rest 3
	stereo_panning FALSE, TRUE
	volume_envelope 2, 7
	octave 4
	note E_, 1
	rest 1
	stereo_panning TRUE, FALSE
	sound_call .sub1
	rest 4
	note_type 8, 1, 1
	octave 5
	note G_, 2
	note G#, 3
	rest 1
	note G#, 1
	rest 1
	note G#, 3
	rest 1
	note G#, 1
	rest 1
	note G_, 3
	rest 1
	note F_, 1
	rest 1
	note G_, 5
	rest 1
	note F_, 12
	sound_call .sub1
	rest 8
	sound_call .sub1
	rest 8
	sound_call .sub1
	rest 8
	sound_call .sub1
	rest 8
	sound_call .sub1
	rest 8
	note_type 8, 1, 3
	octave 5
	note C_, 3
	rest 1
	note E_, 2
	note F_, 3
	rest 1
	note F_, 3
	rest 3
	note F_, 1
	rest 1
	note G_, 3
	rest 1
	note A_, 1
	rest 1
	note A#, 3
	rest 1
	note A#, 1
	rest 1
	note A_, 3
	rest 1
	note F_, 7
	rest 1
	sound_call .sub1
	rest 4
	stereo_panning FALSE, TRUE
	volume_envelope 2, 7
	octave 4
	note E_, 2
	rest 2
	stereo_panning TRUE, FALSE
	note_type 8, 1, 3
	octave 5
	note C_, 3
	rest 1
	note E_, 1
	rest 1
	note F_, 3
	rest 1
	note F_, 1
	rest 1
	note F_, 3
	rest 1
	note F_, 1
	rest 1
	note G_, 3
	rest 1
	note A_, 1
	rest 1
	note A#, 5
	rest 1
	note G#, 3
	rest 1
	note G#, 9
	rest 3
	stereo_panning FALSE, TRUE
	volume_envelope 2, 7
	octave 4
	note C_, 1
	rest 1
	stereo_panning TRUE, FALSE
	sound_call .sub1
	rest 4
	note_type 8, 1, 3
	octave 5
	note F_, 1
	rest 1
	note F_, 2
	rest 4
	octave 6
	note C_, 2
	rest 4
	octave 5
	note F_, 2
	rest 4
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note G#, 3
	rest 1
	note F_, 2
	note G#, 3
	rest 3
	note F_, 5
	rest 5
	note G_, 1
	rest 1
	note G#, 3
	rest 1
	note G#, 1
	rest 1
	note G#, 3
	rest 1
	note G#, 1
	rest 1
	note G#, 3
	rest 1
	stereo_panning FALSE, TRUE
	volume_envelope 2, 7
	octave 4
	note C#, 1
	rest 1
	stereo_panning TRUE, FALSE
	volume_envelope 1, 3
	octave 5
	note F_, 3
	rest 1
	note F_, 1
	rest 1
	note G_, 3
	rest 1
	note G_, 1
	rest 1
	note G_, 3
	rest 1
	note A_, 1
	rest 1
	note G_, 10
	rest 2
.loop2:
	sound_call .sub1
	rest 8
	sound_call .sub1
	rest 8
	sound_call .sub1
	rest 8
	sound_call .sub1
	rest 8
	sound_loop 2, .loop2
	sound_jump .mainloop

.sub1:
	note_type 4, 1, 7
	octave 1
	note D#, 1
	volume_envelope 2, 7
	note D_, 1
	volume_envelope 3, 7
	note C#, 1
	note C_, 1
	sound_ret

Music_MorningInEquintoMarch_Ch4:
	toggle_noise 7
	stereo_panning TRUE, TRUE
.loop1:
	drum_speed 8
	sound_call .sub1
	sound_call .sub2
	sound_loop 2, .loop1
.mainloop:
	sound_call .sub1
	sound_call .sub3
	sound_call .sub2
	sound_call .sub1
	sound_call .sub3
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
.loop2:
	sound_call .sub3
	sound_call .sub2
	sound_call .sub4
	sound_loop 2, .loop2
	drum_speed 12
	drum_note 10, 2
	drum_note 9, 2
	drum_note 10, 1
	drum_note 9, 2
	drum_note 9, 1
	drum_speed 8
	drum_note 10, 2
	drum_note 7, 1
	drum_note 8, 1
	drum_note 9, 1
	drum_note 10, 1
	drum_note 11, 6
	sound_jump .mainloop

.sub1:
	drum_note 10, 4
	drum_note 9, 2
	drum_note 10, 1
	drum_note 9, 1
	drum_note 8, 1
	drum_note 7, 1
	drum_note 8, 1
	drum_note 9, 1
	drum_note 10, 4
	drum_note 9, 2
	drum_note 10, 1
	drum_note 9, 1
	drum_note 8, 1
	drum_note 7, 1
	drum_note 8, 1
	drum_note 9, 1
	sound_ret

.sub2:
	drum_note 10, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 10, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 10, 4
	drum_note 9, 2
	drum_note 10, 1
	drum_note 9, 1
	drum_note 8, 1
	drum_note 7, 1
	drum_note 8, 1
	drum_note 9, 1
	sound_ret

.sub3:
	drum_note 10, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 10, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 10, 4
	drum_note 8, 1
	drum_note 9, 1
	drum_note 10, 1
	drum_note 9, 1
	drum_note 8, 1
	drum_note 8, 1
	drum_note 9, 2
.sub4:
	drum_note 10, 4
	drum_note 9, 2
	drum_note 10, 1
	drum_note 9, 1
	drum_note 8, 1
	drum_note 7, 1
	drum_note 8, 1
	drum_note 9, 1
	drum_note 10, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 10, 6
	sound_ret
