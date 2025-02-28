INCLUDE "constants.asm"


SECTION "Audio", ROMX

INCLUDE "audio/engine.asm"
INCLUDE "audio/notes.asm"
INCLUDE "audio/wave_samples.asm"
INCLUDE "audio/wavetable_groups.asm"
INCLUDE "audio/volume_envelope_groups.asm"
INCLUDE "audio/drumkits.asm"
INCLUDE "audio/music_pointers.asm"
INCLUDE "audio/music/nothing.asm"
INCLUDE "audio/cry_pointers.asm"
INCLUDE "audio/sfx_pointers.asm"


SECTION "Songs 1", ROMX

INCLUDE "audio/music/stereo/route55.asm"
INCLUDE "audio/music/stereo/larch.asm"
INCLUDE "audio/music/stereo/gymbattle.asm"
INCLUDE "audio/music/stereo/parkerbattle.asm"
INCLUDE "audio/music/stereo/cottagetown.asm"
INCLUDE "audio/music/stereo/traversalcity.asm"
INCLUDE "audio/music/stereo/titlescreen.asm"
INCLUDE "audio/music/stereo/dilappokecenter.asm"
INCLUDE "audio/music/stereo/trainervictory.asm"
INCLUDE "audio/music/stereo/trademenu.asm"
INCLUDE "audio/music/stereo/lanaweforest.asm"
INCLUDE "audio/music/stereo/ssvapor.asm"
INCLUDE "audio/music/stereo/lighthouse.asm"


SECTION "Songs 2", ROMX

INCLUDE "audio/music/stereo/pokecenter.asm"
INCLUDE "audio/music/stereo/lookgirl.asm"
INCLUDE "audio/music/stereo/lookwarden.asm"
INCLUDE "audio/music/stereo/hurryalong.asm"
INCLUDE "audio/music/stereo/gamecorner.asm"
INCLUDE "audio/music/stereo/bicycle.asm"
INCLUDE "audio/music/stereo/watchinovermejingle.asm"
INCLUDE "audio/music/stereo/route53.asm"
INCLUDE "audio/music/stereo/equintoleague.asm"
INCLUDE "audio/music/stereo/route61.asm"
INCLUDE "audio/music/stereo/hideout.asm"
INCLUDE "audio/music/stereo/lookwoman.asm"
INCLUDE "audio/music/stereo/healalternate.asm"
INCLUDE "audio/music/stereo/houseenroute.asm"
INCLUDE "audio/music/stereo/timecapsulemenu.asm"
INCLUDE "audio/music/stereo/partyhostbattle.asm"
INCLUDE "audio/music/stereo/shaggybattle.asm"
INCLUDE "audio/music/stereo/lookpartyhost.asm"
INCLUDE "audio/music/stereo/lookartist.asm"
INCLUDE "audio/music/stereo/departure.asm"


SECTION "Songs 3", ROMX

INCLUDE "audio/music/stereo/stamptown.asm"
INCLUDE "audio/music/stereo/route49.asm"
INCLUDE "audio/music/stereo/halloffame.asm"
INCLUDE "audio/music/healpokemon.asm"
INCLUDE "audio/music/stereo/event.asm"
INCLUDE "audio/music/stereo/printer.asm"


SECTION "Songs 4", ROMX

INCLUDE "audio/music/stereo/eastcoaststop.asm"
INCLUDE "audio/music/stereo/hypercoincity.asm"
INCLUDE "audio/music/stereo/wildvictory.asm"
INCLUDE "audio/music/stereo/gymvictory.asm"
INCLUDE "audio/music/stereo/looksibs.asm"
INCLUDE "audio/music/stereo/gym.asm"
INCLUDE "audio/music/stereo/rival.asm"
INCLUDE "audio/music/stereo/surf.asm"
INCLUDE "audio/music/stereo/norgeotown.asm"
INCLUDE "audio/music/stereo/portitecity.asm"
INCLUDE "audio/music/stereo/mtvacuum.asm"
INCLUDE "audio/music/stereo/wildbattle.asm"
INCLUDE "audio/music/stereo/trainerbattle.asm"
INCLUDE "audio/music/stereo/lookyouth.asm"
INCLUDE "audio/music/stereo/oddishfarm.asm"
INCLUDE "audio/music/stereo/golempalace.asm"
INCLUDE "audio/music/stereo/sunkernswamp.asm"
INCLUDE "audio/music/stereo/mom.asm"
INCLUDE "audio/music/stereo/bestfriendslullaby.asm"
INCLUDE "audio/music/stereo/morninginequintomarch.asm"
INCLUDE "audio/music/stereo/rayshadeopening1.asm"
INCLUDE "audio/music/stereo/rayshadeopening2.asm"
INCLUDE "audio/music/stereo/lookmaniac.asm"
INCLUDE "audio/music/stereo/lookhavoc.asm"
INCLUDE "audio/music/stereo/teamhavoctheme.asm"
INCLUDE "audio/music/stereo/mainmenu.asm"
INCLUDE "audio/music/stereo/pokeflutemedley.asm"


SECTION "Extra Songs 1", ROMX

INCLUDE "audio/music/stereo/staffroll.asm"
INCLUDE "audio/music/stereo/theend.asm"


SECTION "Sound Effects", ROMX

INCLUDE "audio/sfx.asm"


SECTION "Cry Bases", ROMX

INCLUDE "audio/cries.asm"
INCLUDE "audio/cries_proto.asm"

SECTION "Cries", ROMX

INCLUDE "data/pokemon/cries.asm"

SECTION "New Sound Effects", ROMX

INCLUDE "audio/fanfares.asm"
INCLUDE "audio/crystal_sfx.asm"
INCLUDE "audio/yoshi_sfx.asm"
