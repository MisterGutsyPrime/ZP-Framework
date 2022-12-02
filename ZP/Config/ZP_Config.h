#include "ZP_Macros.h"
/*
    Author - R00x
    © All Fucks Reserved
    Website - http://zagreusplatoon.com/
	
	enablePlayerInventorySave - BOOL - Enable player gear saving? Disable this if you are not using defult ZP gear and arsinal
	enableNameCheck  - BOOL - Check if Arma name is in the right format and announces to them to change if not
	enableInsignia  - BOOL - Add callsigns insignia to each player automaticaly?
	enableRole  - BOOL - Enable role bassed traits and acsses
	enableFrequency  - BOOL - Set freq of players radios automcaicly?
	enableTickets  - BOOL - Disables Respawn tickets (infinte lives)
	ZPrespawnTickets  - INTEGER - Simply the ammount of lives each player has.

	admins - ARRAY OF STRINGS - Admins PUIDs
	
	adminKey - INTEGER - Key to push to open admin menu, default is Left Windows (0xDB / 219), see links above
	
	savingMethod - STRING - Use "Profile" for server profile or "extDB" for extDB3, if the latest make sure you have extDB3 setup correctly (see https://github.com/Ppgtjmad/SimpleShops/wiki/Database)
	extDBDatabase - STRING - If "extDB" is used as savingMethod, set the DB config to use (the one defined in @extDB3\extdb3-conf.ini file) *CASE SENSITIVE*
	extDBProtocol - STRING - If "extDB" is used as savingMethod, set the saving protocol used by extDB3 either "SQL" or "SQL_CUSTOM"
	extDBCustomFile - STRING - If "extDB" is used as savingMethod & extDBProtocol is "SQL_CUSTOM", set the custom file to use (located in @extDB3\sql_custom folder)
*/


/* SYSTEMS */

enablePlayerInventorySave = true;
enableNameCheck = true;
enableInsignia = true;
enableRole = true;
enableFrequency = true;
enableTickets = true;
ZPrespawnTickets = 2;

/* ADMINS */
admins[] = {"76561198120909845"};

/* KEYS */
adminKey = 0x37;

/* SAVING */
savingMethod = "extDB"; //extDB, Profile
extDBDatabase = "okdnhwyn_";
extDBProtocol = "SQL_CUSTOM";
extDBCustomFile = "custom2.ini";
