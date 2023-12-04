# Event Commands

Defined in [macros/scripts/events.asm] and [engine/overworld/scripting.asm:ScriptCommandTable].


## `$00`: <code>scall <i>script</i></code>


## `$01`: <code>farscall <i>script</i></code>


## `$02`: <code>memcall <i>script</i></code>


## `$03`: <code>sjump <i>script</i></code>


## `$04`: <code>farsjump <i>script</i></code>


## `$05`: <code>memjump <i>script</i></code>


## `$06`: <code>ifequal <i>byte</i>, <i>script</i></code>


## `$07`: <code>ifnotequal <i>byte</i>, <i>script</i></code>


## `$08`: <code>iffalse <i>script</i></code>


## `$09`: <code>iftrue <i>script</i></code>


## `$0A`: <code>ifgreater <i>byte</i>, <i>script</i></code>


## `$0B`: <code>ifless <i>byte</i>, <i>script</i></code>


## `$0C`: <code>jumpstd <i>std_script</i></code>


## `$0D`: <code>callstd <i>std_script</i></code>


## `$0E`: <code>callasm <i>asm</i></code>


## `$0F`: <code>special <i>special_pointer</i></code>


## `$10`: <code>memcallasm <i>asm</i></code>


## `$11`: <code>checkmapscene <i>map</i></code>


## `$12`: <code>setmapscene <i>map</i>, <i>scene_id</i></code>


## `$13`: `checkscene`


## `$14`: <code>setscene <i>scene_id</i></code>


## `$15`: <code>setval <i>value</i></code>

<code>[wScriptVar] = <i>value</i></code>


## `$16`: <code>addval <i>value</i></code>

<code>[wScriptVar] += <i>value</i></code>


## `$17`: <code>random <i>value</i></code>


## `$18`: `checkver`


## `$19`: <code>readmem <i>address</i></code>

<code>[wScriptVar] = [<i>address</i>]</code>


## `$1A`: <code>writemem <i>address</i></code>

<code>[<i>address</i>] = [wScriptVar]</code>


## `$1B`: <code>loadmem <i>address</i>, <i>value</i></code>

<code>[<i>address</i>] = <i>value</i></code>


## `$1C`: <code>readvar <i>variable</i></code>

<code>[wScriptVar] = GetVarAction(<i>variable</i>)</code>


## `$1D`: <code>writevar <i>variable</i></code>

<code>GetVarAction(<i>variable</i>) = [wScriptVar]</code>


## `$1E`: <code>loadvar <i>variable</i>, <i>value</i></code>

<code>GetVarAction(<i>variable</i>) = <i>value</i></code>


## `$1F`: <code>giveitem <i>item_id</i>[, <i>quantity</i>=1]</code>


## `$20`: <code>takeitem <i>item_id</i>[, <i>quantity</i>=1]</code>


## `$21`: <code>checkitem <i>item_id</i></code>


## `$22`: <code>givemoney <i>account</i>, <i>value</i></code>


## `$23`: <code>takemoney <i>account</i>, <i>value</i></code>


## `$24`: <code>checkmoney <i>account</i>, <i>value</i></code>


## `$25`: <code>givecoins <i>value</i></code>


## `$26`: <code>takecoins <i>value</i></code>


## `$27`: <code>checkcoins <i>value</i></code>


## `$28`: <code>addcellnum <i>contact_id</i></code>


## `$29`: <code>delcellnum <i>contact_id</i></code>


## `$2A`: <code>checkcellnum <i>contact_id</i></code>


## `$2B`: <code>checktime <i>time</i></code>


## `$2C`: <code>checkpoke <i>mon_id</i></code>


## `$2D`: <code>givepoke <i>mon_id</i>, <i>level</i>[, <i>item</i>=0[, <i>trainer</i>=0, <i>ot_name</i>, <i>nickname</i>]]</code>


## `$2E`: <code>giveegg <i>mon_id</i>, <i>level</i></code>


## `$2F`: <code>givepokemail <i>pointer</i></code>


## `$30`: <code>checkpokemail <i>pointer</i></code>


## `$31`: <code>checkevent <i>event_flag</i></code>


## `$32`: <code>clearevent <i>event_flag</i></code>


## `$33`: <code>setevent <i>event_flag</i></code>


## `$34`: <code>checkflag <i>engine_flag</i></code>


## `$35`: <code>clearflag <i>engine_flag</i></code>


## `$36`: <code>setflag <i>engine_flag</i></code>


## `$37`: `wildon`


## `$38`: `wildoff`


## `$39`: <code>xycompare <i>pointer</i></code>


## `$3A`: <code>warpmod <i>warp_id</i>, <i>map</i></code>


## `$3B`: <code>blackoutmod <i>map</i></code>


## `$3C`: <code>warp <i>map</i>, <i>x</i>, <i>y</i></code>


## `$3D`: <code>getmoney <i>string_buffer</i>, <i>account</i></code>

<code>GetStringBuffer(<i>string_buffer</i>) = PrintNum(GetMoneyAccount(<i>account</i>))</code>


## `$3E`: <code>getcoins <i>string_buffer</i></code>

<code>GetStringBuffer(<i>string_buffer</i>) = PrintNum([wCoins])</code>


## `$3F`: <code>getnum <i>string_buffer</i></code>

<code>GetStringBuffer(<i>string_buffer</i>) = PrintNum([wScriptVar])</code>


## `$40`: <code>getmonname <i>string_buffer</i>, <i>mon_id</i></code>

<code>GetStringBuffer(<i>string_buffer</i>) = GetPokemonName(<i>mon_id</i>)</code>

If <code><i>mon_id</i></code> = `USE_SCRIPT_VAR`, then it uses `[wScriptVar]` instead.


## `$41`: <code>getitemname <i>string_buffer</i>, <i>item_id</i></code>

<code>GetStringBuffer(<i>string_buffer</i>) = GetItemName(<i>item_id</i>)</code>

If <code><i>item_id</i></code> = `USE_SCRIPT_VAR`, then it uses `[wScriptVar]` instead.


## `$42`: <code>getcurlandmarkname <i>string_buffer</i></code>

<code>GetStringBuffer(<i>string_buffer</i>) = GetLandmarkName(GetWorldMapLocation())</code>


## `$43`: <code>gettrainername <i>string_buffer</i>, <i>trainer_group</i>, <i>trainer_id</i></code>

<code>GetStringBuffer(<i>string_buffer</i>) = GetTrainerName(<i>trainer_group</i>, <i>trainer_id</i>)</code>


## `$44`: <code>getstring <i>string_buffer</i>, <i>text_pointer</i></code>

<code>GetStringBuffer(<i>string_buffer</i>) = CopyName1([wScriptBank], <i>text_pointer</i>)</code>


## `$45`: `itemnotify`


## `$46`: `pocketisfull`


## `$47`: `opentext`


## `$48`: <code>refreshscreen [<i>dummy</i>=0]</code>


## `$49`: `closetext`


## `$4A`: <code>writeunusedbyte <i>byte</i></code>

<code>[<i>wUnusedScriptByte</i>] = <i>byte</i></code>


## `$4B`: <code>farwritetext <i>text_pointer</i></code>


## `$4C`: <code>writetext <i>text_pointer</i></code>


## `$4D`: <code>repeattext <i>byte1</i>, <i>byte2</i></code>


## `$4E`: `yesorno`


## `$4F`: <code>loadmenu <i>menu_header</i></code>


## `$50`: `closewindow`


## `$51`: <code>jumptextfaceplayer <i>text_pointer</i></code>


## `$52`: <code>jumptext <i>text_pointer</i></code>


## `$53`: `waitbutton`


## `$54`: `promptbutton`


## `$55`: <code>pokepic <i>mon_id</i></code>


## `$56`: `closepokepic`


## `$57`: `_2dmenu`


## `$58`: `verticalmenu`


## `$59`: `loadpikachudata`


## `$5A`: `randomwildmon`


## `$5B`: `loadtemptrainer`

`[wOtherTrainer] = [wTempTrainer]`


## `$5C`: <code>loadwildmon <i>mon_id</i>, <i>level</i></code>


## `$5D`: <code>loadtrainer <i>trainer_group</i>, <i>trainer_id</i></code>


## `$5E`: `startbattle`


## `$5F`: `reloadmapafterbattle`


## `$60`: <code>catchtutorial <i>byte</i></code>


## `$61`: <code>trainertext <i>text_id</i></code>


## `$62`: <code>trainerflagaction <i>action</i></code>


## `$63`: <code>winlosstext <i>win_text_pointer</i>, <i>loss_text_pointer</i></code>


## `$64`: `scripttalkafter`


## `$65`: `endifjustbattled`


## `$66`: `checkjustbattled`


## `$67`: <code>setlasttalked <i>object_id</i></code>


## `$68`: <code>applymovement <i>object_id</i>, <i>data_pointer</i></code>


## `$69`: <code>applymovementlasttalked <i>data_pointer</i></code>


## `$6A`: `faceplayer`


## `$6B`: <code>faceobject <i>object1</i>, <i>object2</i></code>


## `$6C`: <code>variablesprite <i>variable_sprite_id</i>, <i>sprite_id</i></code>


## `$6D`: <code>disappear <i>object_id</i></code>


## `$6E`: <code>appear <i>object_id</i></code>


## `$6F`: <code>follow <i>object2</i>, <i>object1</i></code>


## `$70`: `stopfollow`


## `$71`: <code>moveobject <i>object_id</i>, <i>x</i>, <i>y</i></code>


## `$72`: <code>writeobjectxy <i>object_id</i></code>


## `$73`: <code>loademote <i>emote_id</i></code>


## `$74`: <code>showemote <i>emote_id</i>, <i>object_id</i>, <i>length</i></code>


## `$75`: <code>turnobject <i>object_id</i>, <i>facing</i></code>


## `$76`: <code>follownotexact <i>object2</i>, <i>object1</i></code>


## `$77`: <code>earthquake <i>param</i></code>


## `$78`: <code>changemapblocks <i>blockdata_pointer</i></code>

<code>ChangeMap(<i>blockdata_pointer</i>)</code>


## `$79`: <code>changeblock <i>x</i>, <i>y</i>, <i>block</i></code>


## `$7A`: `reloadmap`


## `$7B`: `reloadmappart`


## `$7C`: <code>writecmdqueue <i>queue_pointer</i></code>


## `$7D`: <code>delcmdqueue <i>byte</i></code>


## `$7E`: <code>playmusic <i>music_id</i></code>


## `$7F`: `encountermusic`


## `$80`: <code>musicfadeout <i>music_id</i>, <i>length</i></code>


## `$81`: `playmapmusic`


## `$82`: `dontrestartmapmusic`


## `$83`: <code>cry <i>mon_id</i></code>


## `$84`: <code>playsound <i>sfx_id</i></code>


## `$85`: `waitsfx`


## `$86`: `warpsound`


## `$87`: `specialsound`


## `$88`: <code>autoinput <i>input_pointer</i></code>


## `$89`: <code>newloadmap <i>which_method</i></code>


## `$8A`: <code>pause <i>length</i></code>


## `$8B`: <code>deactivatefacing <i>length</i></code>


## `$8C`: <code>prioritysjump <i>script</i></code>


## `$8D`: `warpcheck`


## `$8E`: <code>stopandsjump <i>script</i></code>


## `$8F`: `endcallback`


## `$90`: `end`


## `$91`: <code>reloadend <i>which_method</i></code>


## `$92`: `endall`


## `$93`: <code>pokemart <i>mart_type</i>, <i>mart_id</i></code>


## `$94`: <code>elevator <i>floor_list</i></code>


## `$95`: <code>trade <i>trade_id</i></code>


## `$96`: <code>askforemailaddr <i>contact_id</i></code>


## `$97`: <code>email <i>call_id</i></code>


## `$98`: `endofmessage`


## `$99`: <code>describedecoration <i>byte</i></code>


## `$9A`: <code>fruittree <i>tree_id</i></code>


## `$9B`: <code>specialemail <i>call_id</i></code>


## `$9C`: `checkemail`


## `$9D`: <code>verbosegiveitem <i>item_id</i>[, <i>quantity</i>=1]</code>


## `$9E`: <code>swarm <i>swarm_id</i>, <i>map</i></code>


## `$9F`: `halloffame`


## `$A0`: `credits`


## `$A1`: <code>warpfacing <i>facing</i>, <i>map</i>, <i>x</i>, <i>y</i></code>
