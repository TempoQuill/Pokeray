ProtoCry_Roar1:
	channel_count 3
	channel 5, ProtoCry_Roar1_Ch5
	channel 6, ProtoCry_Roar1_Ch6
	channel 8, ProtoCry_Roar1_Ch8

ProtoCry_Crow:
	channel_count 3
	channel 5, ProtoCry_Crow_Ch5
	channel 6, ProtoCry_Crow_Ch6
	channel 8, ProtoCry_Crow_Ch8

ProtoCry_Derble4:
	channel_count 3
	channel 5, ProtoCry_Derble4_Ch5
	channel 6, ProtoCry_Derble4_Ch6
	channel 8, ProtoCry_Derble4_Ch8

ProtoCry_Roar2:
	channel_count 3
	channel 5, ProtoCry_Roar2_Ch5
	channel 6, ProtoCry_Roar2_Ch6
	channel 8, ProtoCry_Roar2_Ch8

ProtoCry_HOHO_1:
	channel_count 3
	channel 5, ProtoCry_HOHO_Ch5
	channel 6, ProtoCry_HOHO_Ch6
	channel 8, ProtoCry_HOHO_Ch8

ProtoCry_HOHO_2:
	channel_count 2
	channel 5, ProtoCry_HOHO_Ch5
	channel 6, ProtoCry_HOHO_Ch6

ProtoCry_Hoothoot:
	channel_count 3
	channel 5, ProtoCry_Hoothoot_Ch5
	channel 6, ProtoCry_Hoothoot_Ch6
	channel 8, ProtoCry_Hoothoot_Ch8

ProtoCry_Sneasel:
	channel_count 3
	channel 5, ProtoCry_Sneasel_Ch5
	channel 6, ProtoCry_Sneasel_Ch6
	channel 8, ProtoCry_Sneasel_Ch8

ProtoCry_Tiger:
	channel_count 3
	channel 5, ProtoCry_Tiger_Ch5
	channel 6, ProtoCry_Tiger_Ch6
	channel 8, ProtoCry_Tiger_Ch8

ProtoCry_Crocodile:
	channel_count 3
	channel 5, ProtoCry_Crocodile_Ch5
	channel 6, ProtoCry_Crocodile_Ch6
	channel 8, ProtoCry_Crocodile_Ch8

ProtoCry_MUSI:
	channel_count 2
	channel 5, Cry_Derble1_Ch6
	channel 8, ProtoCry_Roar1_Ch8

ProtoCry_Murkrow:
	channel_count 3
	channel 5, ProtoCry_Murkrow_Ch5
	channel 6, ProtoCry_Ledyba_Ch6
	channel 8, ProtoCry_Ledyba_Ch8

Cry_Lediury:
	channel_count 3
	channel 5, Cry_Lediury_Ch5
	channel 6, ProtoCry_Ledyba_Ch6
	channel 8, ProtoCry_Ledyba_Ch8

ProtoCry_Tiger_Ch5:
_chan = 1
	pitch_sweep 15, -7
	duty_cycle_pattern 0, 1, 0, 2
	square_note 1, 15, 8, 1544
	square_note 6, 9, -7, 1256
	square_note 4, 15, 8, 1492
	square_note 32, 15, 3, 1156
	sound_ret

ProtoCry_Tiger_Ch6:
_chan = 2
	duty_cycle_pattern 3, 3, 0, 1
	square_note 1, 15, 8, 1280
	square_note 5, 9, -7, 1224
	square_note 4, 15, 8, 1460
	square_note 32, 15, 3, 1124
	sound_ret

ProtoCry_Tiger_Ch8:
	noise_note 2, 6, -7, 87
	noise_note 4, 10, -4, 92
	noise_note 4, 15, 8, 94
	noise_note 32, 15, 3, 110
	sound_ret

ProtoCry_Roar1_Ch5:
	pitch_offset 32
ProtoCry_Roar1_Ch6:
	duty_cycle_pattern 1, 0, 1, 2
	square_note 2, 15, 1, 1824
	square_note 4, 15, 7, 1880
	square_note 16, 15, 2, 1824
	sound_ret
ProtoCry_Roar1_Ch8:
	noise_note 2, 8, 1, 76
	noise_note 4, 9, 7, 90
	noise_note 16, 9, 2, 62
	sound_ret

ProtoCry_Crow_Ch5:
_chan = 1
	duty_cycle_pattern 0, 2, 0, 2
	square_note 2, 9, 8, 1752
	square_note 8, 15, 2, 1760
	square_note 2, 7, 1, 1765
	square_note 2, 15, 8, 1728
	square_note 2, 15, 8, 1720
	square_note 2, 15, 8, 1712
	square_note 8, 15, 1, 1706
	sound_ret

ProtoCry_Crow_Ch6:
_chan = 2
	duty_cycle_pattern 0, 3, 0, 2
	square_note 2, 6, 8, 1713
	square_note 5, 12, 1, 1721
	square_note 5, 9, -1, 1888
	square_note 2, 11, 8, 1676
	square_note 2, 11, 8, 1668
	square_note 10, 11, 2, 1659
	sound_ret

ProtoCry_Crow_Ch8:
	noise_note 1, 9, -1, 108
	noise_note 1, 9, 2, 92
	noise_note 10, 6, 2, 76
	noise_note 2, 6, 8, 106
	noise_note 2, 6, 8, 107
	noise_note 10, 6, 2, 108
	sound_ret

ProtoCry_Derble4_Ch5:
_chan = 1
	duty_cycle 0
	pitch_offset 1
	sound_jump ProtoCry_Derble4_Ch6.body

ProtoCry_Derble4_Ch6:
_chan = 2
	duty_cycle_pattern 0, 2, 2, 2
.body:
	square_note 3, 3, -4, 1991
	square_note 1, 0, 0, 0
	square_note 5, 6, -1, 1982
	square_note 6, 12, 4, 1981
	sound_ret

ProtoCry_Derble4_Ch8:
	noise_note 3, 9, 2, 16
	noise_note 1, 3, -1, 0
	noise_note 5, 6, -1, 16
	noise_note 6, 9, 3, 0
	sound_ret

ProtoCry_Roar2_Ch5:
	pitch_offset 48
ProtoCry_Roar2_Ch6:
	duty_cycle_pattern 0, 2, 2, 3
	square_note 4, 15, 7, 1109
	square_note 8, 15, 2, 1480
	square_note 16, 15, 1, 1456
	sound_ret
ProtoCry_Roar2_Ch8:
	noise_note 7, 8, 7, 76
	noise_note 7, 6, -4, 63
	noise_note 7, 5, 2, 79
	sound_ret

ProtoCry_HOHO_Ch5:
	pitch_offset 32
	duty_cycle 2
	sound_jump ProtoCry_HOHO_Ch6_0100
ProtoCry_HOHO_Ch6:
	duty_cycle_pattern 0, 1, 2, 3
ProtoCry_HOHO_Ch6_0100:
	sound_call Cry_Phanpy_Ch6.body
	square_note 4, 0, 0, 0
	sound_loop 2, ProtoCry_HOHO_Ch6_0100
	sound_ret
ProtoCry_HOHO_Ch8:
.loop:
	sound_call Cry_Phanpy_Ch8
	noise_note 4, 0, 0, 0
	sound_loop 2, .loop
	sound_ret

ProtoCry_Hoothoot_Ch5:
_chan = 1
	duty_cycle_pattern 1, 2, 1, 2
	square_note 4, 7, 8, 1616
	square_note 4, 15, 8, 1632
	square_note 4, 15, 8, 1628
	square_note 1, 15, 8, 1660
	square_note 4, 15, 8, 1664
	square_note 4, 15, 8, 1660
	square_note 4, 15, 8, 1656
	square_note 4, 15, 1, 1652
	sound_ret

ProtoCry_Hoothoot_Ch6:
_chan = 2
	duty_cycle_pattern 0, 2, 0, 2
.loop1:
	square_note 2, 10, 1, 1536
	sound_loop 3, .loop1
.loop2:
	square_note 2, 10, 1, 1584
	sound_loop 4, .loop2
	square_note 4, 10, 2, 1588
	square_note 4, 9, 1, 1592
	sound_ret

ProtoCry_Hoothoot_Ch8:
	noise_note 1, 5, 8, 85
	noise_note 16, 4, 8, 51
	noise_note 1, 8, 8, 87
	noise_note 16, 8, 7, 55
	sound_ret

ProtoCry_Crocodile_Ch5:
	pitch_offset 32
ProtoCry_Crocodile_Ch6:
	duty_cycle_pattern 2, 0, 0, 1
	square_note 8, 2, -3, 1857
	square_note 4, 15, 8, 1782
	square_note 10, 15, 2, 1760
	sound_ret
ProtoCry_Crocodile_Ch8:
	noise_note 8, 3, -5, 80
	noise_note 14, 7, 2, 66
	sound_ret

ProtoCry_Ledyba_Ch5:
_chan = 1
	pitch_offset 2
	duty_cycle 2
	sound_jump ProtoCry_Ledyba_Ch6.body

ProtoCry_Ledyba_Ch6:
_chan = 2
	duty_cycle_pattern 0, 0, 0, 1
.body
	square_note 3, 15, 8, 1937
	square_note 3, 13, 8, 1933
	square_note 2, 0, 0, 0
	square_note 1, 7, 8, 1729
	square_note 1, 15, 8, 1857
	square_note 4, 14, 1, 1873
	sound_ret

ProtoCry_Ledyba_Ch8:
	noise_note 3, 5, -1, 33
	noise_note 3, 8, 1, 0
	noise_note 2, 2, 0, 0
	noise_note 1, 8, 0, 33
	noise_note 1, 8, 0, 16
	noise_note 4, 8, 7, 0
	sound_ret

ProtoCry_Murkrow_Ch5:
	pitch_offset 2
	duty_cycle 0
	sound_jump ProtoCry_Ledyba_Ch6.body

Cry_Lediury_Ch5:
_chan = 1
	duty_cycle 0
	square_note 3, 15, 8, 1939
	square_note 3, 13, 8, 1935
	square_note 2, 0, 0, 0
	square_note 1, 7, 8, 1731
	square_note 1, 15, 8, 1859
	square_note 4, 14, 1, 1875
	sound_ret

ProtoCry_Sneasel_Ch5:
_chan = 1
	pitch_offset 2
	duty_cycle 2
	sound_jump ProtoCry_Sneasel_Ch6.body

ProtoCry_Sneasel_Ch6:
_chan = 2
	duty_cycle_pattern 0, 0, 1, 3
.body
	square_note 2, 11, -1, 1848
	square_note 4, 12, -3, 1858
	square_note 8, 12, -3, 1876
	square_note 4, 15, 6, 1846
	square_note 8, 15, 1, 1842
	square_note 8, 0, 0, 0
	sound_ret

ProtoCry_Sneasel_Ch8:
	noise_note 2, 5, -3, 4
	noise_note 4, 6, 8, 19
	noise_note 8, 6, 8, 32
	noise_note 4, 6, 8, 19
	noise_note 8, 5, 1, 4
	noise_note 8, 0, 0, 0
	sound_ret
