; PhoneContacts indexes (see data/phone/phone_contacts.asm)
	const_def
	const EMAIL_00
	const EMAIL_MOM
	const EMAIL_OAK ; unused, leftover
	const EMAIL_BILL
	const EMAIL_ELM ; unused, leftover
	const EMAIL_LARCH
TOTAL_CONTACTS EQU const_value

; SpecialPhoneCallList indexes (see data/phone/special_calls.asm)
	const_def
	const SPECIALCALL_NONE
	const SPECIALCALL_POKERUS
	const SPECIALCALL_SSTICKET ; unused, might be useful later
	const SPECIALCALL_BIKESHOP

; phone struct members
	const_def
	const EMAIL_CONTACT_TRAINER_CLASS
	const EMAIL_CONTACT_TRAINER_NUMBER
	const EMAIL_CONTACT_MAP_GROUP
	const EMAIL_CONTACT_MAP_NUMBER
	const EMAIL_CONTACT_SCRIPT1_TIME
	const EMAIL_CONTACT_SCRIPT1_BANK
	const EMAIL_CONTACT_SCRIPT1_ADDR
	const_skip ; high EMAIL_CONTACT_SCRIPT1_ADDR byte
	const EMAIL_CONTACT_SCRIPT2_TIME
	const EMAIL_CONTACT_SCRIPT2_BANK
	const EMAIL_CONTACT_SCRIPT2_ADDR
	const_skip ; high EMAIL_CONTACT_SCRIPT2_ADDR byte
EMAIL_CONTACT_SIZE EQU const_value

; maximum number of pokegear contacts
CONTACT_LIST_SIZE EQU 15
