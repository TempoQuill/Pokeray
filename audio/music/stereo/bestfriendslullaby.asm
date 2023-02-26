Music_BestFriendsLullaby:
	channel_count 3
	channel 1, Music_BestFriendsLullaby_Ch1
	channel 2, Music_BestFriendsLullaby_Ch2
	channel 3, Music_BestFriendsLullaby_Ch3

Music_BestFriendsLullaby_Ch1:
	tempo 272
	volume 7
	pitch_offset 2
	old_panning %1101, %1110
.mainloop:
	note_type 12, 8, 7
	octave 3
	note E_, 4
	note E_, 6
	note G_, 3
	note F_, 1
	note G_, 1
	note B_, 1
	sound_call .sub1
	octave 2
	note A_, 2
	octave 3
	note A_, 4
	note E_, 4
	note F_, 4
	note G_, 6
	note C_, 2
	note E_, 2
	note F_, 2
	note G_, 3
	note F_, 1
	note G_, 1
	note B_, 1
	sound_call .sub1
	octave 2
	note A_, 6
	octave 3
	note C_, 2
	octave 2
	note A_, 2
	octave 3
	note C_, 2
	note G_, 4
	note A_, 4
	note G_, 2
	note C_, 4
	note D_, 2
	note C_, 4
	note C_, 2
	note F_, 2
	note C_, 4
	note C_, 4
	note A_, 2
	note F_, 2
	note E_, 4
	note G_, 2
	note F_, 4
	note F_, 2
	note E_, 4
	rest 16
	sound_jump .mainloop

.sub1:
	octave 4
	note C_, 4
	octave 3
	note B_, 4
	note G_, 4
	note F_, 4
	note E_, 4
	note C_, 4
	note E_, 2
	note F_, 4
	note G_, 2
	sound_ret

Music_BestFriendsLullaby_Ch2:
	pitch_inc_switch
.mainloop:
	duty_cycle 1
	note_type 12, 10, 7
	octave 4
	note C_, 4
	note C_, 6
	duty_cycle 2
	volume_envelope 7, 7
	octave 3
	note E_, 3
	note D_, 1
	note E_, 1
	note F_, 1
	sound_call .sub1
	octave 2
	note A_, 2
	duty_cycle 1
	volume_envelope 10, 7
	octave 4
	note C_, 2
	note C_, 2
	octave 3
	note A_, 2
	octave 4
	note C_, 2
	note D_, 4
	note E_, 12
	duty_cycle 2
	volume_envelope 7, 7
	octave 3
	note E_, 3
	note D_, 1
	note E_, 1
	note F_, 1
	sound_call .sub1
	octave 2
	note A_, 6
	duty_cycle 1
	volume_envelope 10, 7
	octave 4
	note E_, 2
	note E_, 2
	note D_, 2
	note C_, 4
	note C_, 4
	octave 3
	note B_, 2
	note A_, 4
	note G_, 2
	note A_, 4
	rest 2
	note A_, 2
	note A_, 2
	note G_, 2
	note A_, 4
	octave 4
	note C_, 4
	note C_, 4
	note C_, 2
	note D_, 4
	note C_, 2
	note C_, 4
	rest 16
	sound_jump .mainloop

.sub1:
	note G_, 2
	duty_cycle 1
	volume_envelope 10, 7
	note A_, 2
	octave 4
	note C_, 2
	octave 3
	note A_, 2
	octave 4
	note C_, 4
	note D_, 4
	note C_, 2
	octave 3
	note A_, 6
	duty_cycle 2
	volume_envelope 7, 7
	note C_, 2
	note D_, 4
	note E_, 2
	sound_ret

Music_BestFriendsLullaby_Ch3:
.mainloop:
	note_type 12, 1, -2
	sound_call .sub1
	sound_call .sub2
	octave 3
	note A_, 2
	octave 4
	note C_, 2
	note E_, 2
	note A_, 2
	octave 5
	note C_, 2
	octave 4
	note G_, 2
	note E_, 2
	note D_, 2
	sound_call .sub1
	sound_call .sub2
	sound_call .sub2
	note F_, 2
	note E_, 2
	note D_, 2
	note F_, 2
	rest 2
	note C_, 2
	note F_, 2
	note C_, 2
	octave 3
	note F_, 2
	octave 4
	note C_, 2
	note F_, 2
	note C_, 2
	note F_, 2
	note E_, 2
	note F_, 2
	note A_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	note E_, 2
	note G_, 2
	rest 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	rest 2
	volume_envelope 2, -2
	octave 5
	note C_, 2
	octave 4
	note G_, 2
	octave 5
	note E_, 2
	note D_, 2
	rest 2
	note E_, 2
	note C_, 2
	rest 2
	sound_jump .mainloop

.sub1:
	octave 4
	note C_, 2
	note E_, 2
	note G_, 2
	note B_, 2
	octave 5
	note C_, 2
	octave 4
	note B_, 2
	note G_, 2
	note E_, 2
	note C_, 2
	note E_, 2
	note G_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	note C_, 2
	octave 3
	note B_, 2
	sound_ret

.sub2:
	octave 3
	note A_, 2
	octave 4
	note C_, 2
	note E_, 2
	note A_, 2
	octave 5
	note C_, 2
	octave 4
	note A_, 2
	note E_, 2
	note C_, 2
	sound_ret
