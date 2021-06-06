NurseMornText:
	text "Good morning!"
	line "Welcome to our"
	cont "#MON CENTER."
	done

NurseDayText:
	text "Hello!"
	line "Welcome to our"
	cont "#MON CENTER."
	done

NurseNiteText:
	text "Good evening!"
	line "You're out late."

	para "Welcome to our"
	line "#MON CENTER."
	done

NurseAskHealText:
	text "We can heal your"
	line "#MON to perfect"
	cont "health."

	para "Shall we heal your"
	line "#MON?"
	done

NurseTakePokemonText:
	text "OK, may I see your"
	line "#MON?"
	done

NurseReturnPokemonText:
	text "Thank you for"
	line "waiting."

	para "Your #MON are"
	line "entirely healed."
	done

NurseGoodbyeText:
	text "We hope our ser-"
	line "vices have helped"
	cont "you immensely."
	done

; not used
	text "We hope to see you"
	line "again."
	done

NursePokerusText:
	text "Your #MON ap-"
	line "pear to have a"
	cont "passive virus."

	para "They're healthy and"
	line "seem to be fine."

	para "But we can't tell"
	line "you anything more"

	para "here at a #MON"
	line "CENTER."
	done

DifficultBookshelfText:
	text "It's full of"
	line "difficult books."
	done

PictureBookshelfText:
	text "A whole collection"
	line "of #MON picture"
	cont "books!"
	done

MagazineBookshelfText:
	text "#MON magazines…"
	line "#MON PAL,"

	para "#MON HANDBOOK,"
	line "#MON GRAPH…"
	done

IncenseBurnerText:
	text "What is this?"

	para "Oh, it's an"
	line "incense burner!"
	done

MerchandiseShelfText:
	text "Lots of #MON"
	line "merchandise!"
	done

LookTownMapText:
	text "It's the TOWN MAP."
	done

WindowText:
	text "My reflection!"
	line "Lookin' good!"
	done

TVText:
	text "It's a TV."
	done

WrongSideText:
	text "Oops, wrong side."
	done

; not used
	text "#MON RADIO!"

	para "Call in with your"
	line "requests now!"
	done

TrashCanText:
	text "Nope. There's only"
	line "trash here."

; not used
	text "There's nothing in"
	line "here…"
	done

; not used
	text "A #MON may be"
	line "able to move this."
	done

; not used
	text "Maybe a #MON"
	line "can break this."
	done

PokecenterSignText:
	text "Heal Your #MON!"
	line "#MON CENTER"
	done

MartSignText:
	text "For All Your"
	line "#MON Needs"

	para "#MON MART"
	done

AskNumber1MText:
	text "Wow! You're pretty"
	line "tough."

	para "Could I get your"
	line "e-mail address?"

	para "I'll message you"
	line "for a rematch."
	done

AskNumber2MText:
	text "Register the e-"
	line "mail address?"
	done

RegisteredNumberMText:
RegisteredNumberFText:
	text "<PLAYER> registered"
	line "@"
	text_ram wStringBuffer3
	text "'s number."
	done

NumberAcceptedMText:
	text "I'll e-mail you if"
	line "anything comes up."
	done

NumberDeclinedMText:
	text "Oh, OK…"
	line "Just talk to me if"

	para "you want to get my"
	line "e-mail address."
	done

PhoneFullMText:
	text "Your e-mail doesn't"
	line "have enough memory"
	cont "for more users."
	done

RematchMText:
	text "I was waiting for"
	line "you. Let's battle!"
	done

AskNumber1FText:
	text "Wow, you're good"
	line "at battling."

	para "Want to give me"
	line "your e-mail?"

	para "I'll message you"
	line "for more battles."
	done

AskNumber2FText:
	text "Register the e-"
	line "mail address?"
	done

NumberAcceptedFText:
	text "I'll e-mail you if"
	line "something's up."
	done

NumberDeclinedFText:
	text "Oh, fine then…"
	line "If you want to get"

	para "my e-mail, just"
	line "tell me."
	done

PhoneFullFText:
	text "Your e-mail doesn't"
	line "have enough memory"
	cont "for more users."
	done

RematchFText:
	text "I waited for you."
	line "Let's battle!"
	done

ReceivedItemText:
	text "<PLAYER> recieved"
	line "a @"
	text_ram wStringBuffer4
	text "."
	done

ReceivedItemGroupText:
	text "<PLAYER> recieved"
	line "a group of"
	cont "@"
	text_ram wStringBuffer4
	text "S."
	done

; not used
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer4
	text "."
	done

; not used
	text "Your party's full,"
	line "so the #MON was"

	para "sent to your BOX"
	line "in BILL's PC."
	done

GymStatue_CityGymText:
	text_ram wStringBuffer3
	text_start
	line "#MON GYM"
	done

GymStatue_WinningTrainersText:
	text "LEADER: @"
	text_ram wStringBuffer4
	text_start
	para "WINNING TRAINERS:"
	line "<PLAYER>"
	done

CoinVendor_WelcomeText:
	text "Welcome to the"
	line "GAME CORNER."
	done

CoinVendor_NoCoinCaseText:
	text "Do you need game"
	line "coins?"

	para "Oh, you don't have"
	line "a COIN CASE for"
	cont "your coins."
	done

CoinVendor_IntroText:
	text "Do you need some"
	line "game coins?"

	para "Each coin is worth"
	line "¥20."
	done

CoinVendor_BuyCoinsText:
	text "Thank you! Here"
	line "are @"
	text_decimal wDeciramBuffer 2, 4
	text " coins."
	done

CoinVendor_NotEnoughMoneyText:
	text "You don't have"
	line "enough money."
	done

CoinVendor_CoinCaseFullText:
	text "Whoops! Your COIN"
	line "CASE is full."
	done

CoinVendor_CancelText:
	text "No coins for you?"
	line "Come again!"
	done

; not used
	text "Oh? Your PACK is"
	line "full."

	para "We'll keep this"
	line "for you today, so"

	para "come back when you"
	line "make room for it."
	done

HappinessText3:
	text "Wow! You and your"
	line "#MON are really"
	cont "close!"
	done

HappinessText2:
	text "#MON get more"
	line "friendly if you"

	para "spend time with"
	line "them."
	done

HappinessText1:
	text "You haven't tamed"
	line "your #MON."

	para "If you aren't"
	line "nice, it'll pout."
	done
