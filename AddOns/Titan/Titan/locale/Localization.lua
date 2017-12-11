local L = LibStub("AceLocale-3.0"):NewLocale("Titan","enUS",true)

L["TITAN_DEBUG"] = "<Titan>";
L["TITAN_INFO"] = "<Titan>"
     L["Titan Panel Main"] = "Titan Panel";
L["TITAN_NA"] = "N/A";
L["TITAN_SECONDS"] = "seconds";
L["TITAN_MINUTES"] = "minutes";
L["TITAN_HOURS"] = "hours";
L["TITAN_DAYS"] = "days";
L["TITAN_SECONDS_ABBR"] = "s";
L["TITAN_MINUTES_ABBR"] = "m";
L["TITAN_HOURS_ABBR"] = "h";
L["TITAN_DAYS_ABBR"] = "d";
L["TITAN_MILLISECOND"] = "ms";
L["TITAN_KILOBYTES_PER_SECOND"] = "KB/s";
L["TITAN_KILOBITS_PER_SECOND"] = "kbps"
L["TITAN_MEGABYTE"] = "MB";
L["TITAN_NONE"] = "None";
     
L["TITAN_MOVABLE_TOOLTIP"] = "Drag to move around";

L["TITAN_PANEL_ERROR_DUP_PLUGIN"] = " appears to be registered twice. This may cause certain plugins to malfunction, please correct/report this problem.";
L["TITAN_PANEL_ERROR_PROF_DELCURRENT"] = "You may not delete your current profile.";
L["TITAN_PANEL_RESET_WARNING"] = GREEN_FONT_COLOR_CODE.."Warning:"..FONT_COLOR_CODE_CLOSE.."This setting will reset your bar(s) and Panel settings to default values and will recreate your current profile. If you wish to continue with this operation, push 'Accept' (your UI will reload), otherwise push 'Cancel' or the 'Escape' key.";
     
-- slash command help
L["TITAN_PANEL_SLASH_STRING2"] = LIGHTYELLOW_FONT_COLOR_CODE.."Usage: |cffffffff/titan {reset | reset tipfont/tipalpha/panelscale/spacing}";
L["TITAN_PANEL_SLASH_STRING3"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset: |cffffffffResets Panel to default values/position.";
L["TITAN_PANEL_SLASH_STRING4"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset tipfont: |cffffffffResets Panel tooltip font scale to default.";
L["TITAN_PANEL_SLASH_STRING5"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset tipalpha: |cffffffffResets Panel tooltip transparency to default.";
L["TITAN_PANEL_SLASH_STRING6"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset panelscale: |cffffffffResets Panel scale to default.";
L["TITAN_PANEL_SLASH_STRING7"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset spacing: |cffffffffResets Panel button spacing to default.";
L["TITAN_PANEL_SLASH_STRING8"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."gui control: |cffffffffOpens the Ace3 Panel control GUI.";
L["TITAN_PANEL_SLASH_STRING9"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."gui trans: |cffffffffOpens the Ace3 Transparency control GUI.";
L["TITAN_PANEL_SLASH_STRING10"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."gui skin: |cffffffffOpens the Ace3 Skin control GUI.";
L["TITAN_PANEL_SLASH_STRING11"] = LIGHTYELLOW_FONT_COLOR_CODE.."For help with BonusScanner, type : |cffffffff/bscan";
     
-- slash command responses
L["TITAN_PANEL_SLASH_RESP1"] = LIGHTYELLOW_FONT_COLOR_CODE.."Titan Panel tooltip font scale has been reset.";
L["TITAN_PANEL_SLASH_RESP2"] = LIGHTYELLOW_FONT_COLOR_CODE.."Titan Panel tooltip transparency has been reset.";
L["TITAN_PANEL_SLASH_RESP3"] = LIGHTYELLOW_FONT_COLOR_CODE.."Titan Panel scale has been reset.";
L["TITAN_PANEL_SLASH_RESP4"] = LIGHTYELLOW_FONT_COLOR_CODE.."Titan Panel button spacing has been reset.";
     
-- general panel locale
L["TITAN_PANEL"] = "Titan Panel";
L["TITAN_PANEL_VERSION_INFO"] = "|cffffffff by the |cffff8c00Titan Dev Team".." |cffffffff(HonorGoG, joejanko, Lothayer, Tristanian, oXidFoX, urnati & StingerSoft)";     
L["TITAN_PANEL_MENU_TITLE"] = "Titan Panel";
L["TITAN_PANEL_MENU_HIDE"] = "Hide";
L["TITAN_PANEL_MENU_CUSTOMIZE"] = "Customize";
L["TITAN_PANEL_MENU_IN_COMBAT_LOCKDOWN"] = "(In Combat)";
L["TITAN_PANEL_MENU_RELOADUI"] = "(Reload UI)";
L["TITAN_PANEL_MENU_SHOW_COLORED_TEXT"] = "Show colored text";
L["TITAN_PANEL_MENU_SHOW_ICON"] = "Show icon";
L["TITAN_PANEL_MENU_SHOW_LABEL_TEXT"] = "Show label text";
L["TITAN_PANEL_MENU_AUTOHIDE"] = "Auto-hide";
L["TITAN_PANEL_MENU_BGMINIMAP"] = "Battleground mini-map";
L["TITAN_PANEL_MENU_CENTER_TEXT"] = "Center text";
L["TITAN_PANEL_MENU_DISPLAY_ONTOP"] = "Display on top";
L["TITAN_PANEL_MENU_DISPLAY_BOTH"] = "Display both bars";
L["TITAN_PANEL_MENU_DISABLE_PUSH"] = "Disable screen adjust";
L["TITAN_PANEL_MENU_DISABLE_MINIMAP_PUSH"] = "Disable minimap adjust";
L["TITAN_PANEL_MENU_DISABLE_LOGS"] = "Automatic log adjust";
L["TITAN_PANEL_MENU_BUILTINS"] = "Built-ins";
L["TITAN_PANEL_MENU_LEFT_SIDE"] = "Left Side";
L["TITAN_PANEL_MENU_RIGHT_SIDE"] = "Right Side";
L["TITAN_PANEL_MENU_PROFILES"] = "Profiles";
L["TITAN_PANEL_MENU_PROFILE"] = "Profile ";
L["TITAN_PANEL_MENU_PROFILE_CUSTOM"] = "Custom";
L["TITAN_PANEL_MENU_PROFILE_DELETED"] = " has been deleted.";
L["TITAN_PANEL_MENU_PROFILE_SERVERS"] = "Server";
L["TITAN_PANEL_MENU_PROFILE_CHARS"] = "Character";
L["TITAN_PANEL_MENU_PROFILE_RELOADUI"] = "Your UI will now reload upon pushing 'Okay' to allow saving of your custom profile.";
L["TITAN_PANEL_MENU_PROFILE_SAVE_CUSTOM_TITLE"] = "Enter a name for your custom profile:\n(20 chars max, no spaces allowed, case sensitive)";
L["TITAN_PANEL_MENU_PROFILE_SAVE_PENDING"] = "Current panel settings are to be saved under profile name: ";
L["TITAN_PANEL_MENU_PROFILE_ALREADY_EXISTS"] = "The profile name entered already exists. Are you sure you want to overwrite it ? Push 'Accept' if yes, otherwise push 'Cancel' or the 'Escape' key.";
L["TITAN_PANEL_MENU_MANAGE_SETTINGS"] = "Manage";
L["TITAN_PANEL_MENU_LOAD_SETTINGS"] = "Load";
L["TITAN_PANEL_MENU_DELETE_SETTINGS"] = "Delete";
L["TITAN_PANEL_MENU_SAVE_SETTINGS"] = "Save";
L["TITAN_PANEL_MENU_DOUBLE_BAR"] = "Double Bar";
L["TITAN_PANEL_MENU_CONFIGURATION"] = "Configuration";
L["TITAN_PANEL_MENU_OPTIONS"] = "Options";
L["TITAN_PANEL_MENU_OPTIONS_PANEL"] = "Panel";
L["TITAN_PANEL_MENU_OPTIONS_BARS"] = "Bars";
L["TITAN_PANEL_MENU_OPTIONS_TOOLTIPS"] = "Tooltips";
L["TITAN_PANEL_MENU_OPTIONS_FRAMES"] = "Frames";
L["TITAN_PANEL_MENU_OPTIONS_LDB"] = "Data Broker";
L["TITAN_PANEL_MENU_PLUGINS"] = "Plugins";
L["TITAN_PANEL_MENU_LOCK_BUTTONS"] = "Lock buttons";
L["TITAN_PANEL_MENU_VERSION_SHOWN"] = "Show plugin versions";
L["TITAN_PANEL_MENU_LDB_SHOWN"] = "Append Broker suffix in menu";
L["TITAN_PANEL_MENU_LDB_SIDE"] = "Right-side plugin";
L["TITAN_PANEL_MENU_LDB_FORCE_LAUNCHER"] = "Force launchers to right-side";
L["TITAN_PANEL_MENU_DISABLE_FONT"] = "Disable font scaler";
L["TITAN_PANEL_MENU_CATEGORIES"] = {"General","Combat","Information","Interface","Profession"}
L["TITAN_PANEL_MENU_TOOLTIPS_SHOWN"] = "Show tooltips";
L["TITAN_PANEL_MENU_TOOLTIPS_SHOWN_IN_COMBAT"] = "Hide tooltips in combat";
L["TITAN_PANEL_MENU_CASTINGBAR"] = "Move casting bar";
L["TITAN_PANEL_MENU_RESET"] = "Reset Panel to Default";
L["TITAN_PANEL_MENU_TEXTURE_SETTINGS"] = "Skins";     
L["TITAN_PANEL_MENU_FONT"] = "Font";
L["TITAN_PANEL_MENU_LSM_FONTS"] = "Panel Font"
L["TITAN_PANEL_MENU_ENABLED"] = "Enabled";
L["TITAN_PANEL_MENU_DISABLED"] = "Disabled";
     
-- localization strings for AceConfigDialog-3.0     
L["TITAN_PANEL_CONFIG_MAIN_LABEL"] = "Information display bar addon. Allows users to add data feed or launcher plugins on a control panel placed on the top and/or bottom of the screen.";			 
L["TITAN_TRANS_MENU_TEXT_SHORT"] = "Transparency";
L["TITAN_TRANS_MENU_DESC"] = "Adjust transparency for the Titan bars and tooltip.";		
L["TITAN_TRANS_MAIN_CONTROL_TITLE"] = "Main Bar";
L["TITAN_TRANS_AUX_CONTROL_TITLE"] = "Auxiliary Bar";
L["TITAN_TRANS_CONTROL_TITLE_TOOLTIP"] = "Tooltip";		 
L["TITAN_TRANS_MAIN_BAR_DESC"] = "Sets transparency for the Main Bar.";
L["TITAN_TRANS_AUX_BAR_DESC"] = "Sets transparency for the Auxiliary (Bottom) Bar.";
L["TITAN_TRANS_TOOLTIP_DESC"] = "Sets transparency for the tooltip of the various plugins.";
L["TITAN_UISCALE_MENU_TEXT"] = "Panel Control";
L["TITAN_UISCALE_CONTROL_TITLE_UI"] = "UI Scale";
L["TITAN_UISCALE_CONTROL_TITLE_PANEL"] = "Panel Scale";
L["TITAN_UISCALE_CONTROL_TITLE_BUTTON"] = "Button Spacing";
L["TITAN_UISCALE_CONTROL_TOOLTIP_TOOLTIPFONT"] = "Tooltip Font Scale";
L["TITAN_UISCALE_TOOLTIP_DISABLE_TEXT"] = "Disable Tooltip Font Scale";		 
L["TITAN_UISCALE_MENU_DESC"] = "Controls various aspects of the UI and Panel.";
L["TITAN_UISCALE_SLIDER_DESC"] = "Sets the scale of your entire UI.";
L["TITAN_UISCALE_PANEL_SLIDER_DESC"] = "Sets the scale for the various Panel buttons and icons.";
L["TITAN_UISCALE_BUTTON_SLIDER_DESC"] = "Adjusts the space between left-side plugins.";
L["TITAN_UISCALE_TOOLTIP_SLIDER_DESC"] = "Adjusts the scale for the tooltip of the various plugins.";
L["TITAN_UISCALE_DISABLE_TOOLTIP_DESC"] = "Disables Titan's Tooltip Font Scale Control.";
L["TITAN_SKINS_MAIN_DESC"] = "Manage various skins for the Titan bars.";
L["TITAN_SKINS_LIST_TITLE"] = "Skin List";
L["TITAN_SKINS_SET_DESC"] = "Select a skin to set for the Titan bars.";
L["TITAN_SKINS_SET_HEADER"] = "Set Panel Skin";
L["TITAN_SKINS_NEW_HEADER"] = "Add New Skin";
L["TITAN_SKINS_NAME_TITLE"] = "Skin Name";
L["TITAN_SKINS_NAME_DESC"] = "Enter a name for your new skin.";
L["TITAN_SKINS_NAME_EXAMPLE"] = "example: My Titan Skin";
L["TITAN_SKINS_PATH_TITLE"] = "Skin Path";
L["TITAN_SKINS_PATH_DESC"] = "Enter the exact path where your skin artwork is located, as shown in the example and explained in the 'Notes'.";
L["TITAN_SKINS_PATH_EXAMPLE"] = "example: Interface\\AddOns\\Titan\\Artwork\\Custom\\<My Skin folder>\\";
L["TITAN_SKINS_ADD_HEADER"] = "Add Skin";
L["TITAN_SKINS_ADD_DESC"] = "Adds a new skin to the list of available skins for the Panel.";
L["TITAN_SKINS_REMOVE_HEADER"] = "Remove Skin";
L["TITAN_SKINS_REMOVE_DESC"] = "Select a skin to remove from the available skins for the Panel.";
L["TITAN_SKINS_REMOVE_BUTTON"] = "Remove";
L["TITAN_SKINS_REMOVE_BUTTON_DESC"] = "Removes the selected skin from the list of available skins for the Panel.";
L["TITAN_SKINS_NOTES"] = "|cff19ff19Notes:|r When adding a new skin, please ensure that a folder containing your custom artwork has been created prior to loading 'World of Warcraft' and the path entered here corresponds to it exactly (paths are case sensitive and always end with an '\\' character).";
L["TITAN_SKINS_RESET_DEFAULTS_TITLE"] = "Reset to Defaults";
L["TITAN_SKINS_RESET_DEFAULTS_DESC"] = "Resets the skin list to the default, build-in skins.";
L["TITAN_PANEL_MENU_LSM_FONTS_DESC"] = "Select the font type for the various plugins on the Titan Bars.";
L["TITAN_PANEL_MENU_FONT_SIZE"] = "Font Size";
L["TITAN_PANEL_MENU_FONT_SIZE_DESC"] = "Sets the size for the Panel's font.";
L["TITAN_PANEL_MENU_FRAME_STRATA"] = "Panel Frame Strata";
L["TITAN_PANEL_MENU_FRAME_STRATA_DESC"] = "Adjusts the frame strata for the Titan Bar(s).";
-- /end localization strings for AceConfigDialog-3.0
     
L["TITAN_AUTOHIDE_TOOLTIP"] = "Toggles panel auto-hide on/off";
L["TITAN_AUTOHIDE_MENU_TEXT"] = "Auto-hide";
     
L["TITAN_AMMO_FORMAT"] = "%d";
L["TITAN_AMMO_BUTTON_LABEL_AMMO"] = "Ammo: ";
L["TITAN_AMMO_BUTTON_LABEL_THROWN"] = "Thrown: ";
L["TITAN_AMMO_BUTTON_LABEL_AMMO_THROWN"] = "Ammo/Thrown: ";
L["TITAN_AMMO_TOOLTIP"] = "Equipped Ammo/Thrown Count";
L["TITAN_AMMO_MENU_TEXT"] = "Ammo/Thrown";
L["TITAN_AMMO_BUTTON_NOAMMO"] = "No Ammo";
L["TITAN_AMMO_MENU_REFRESH"] = "Refresh Display";
L["TITAN_AMMO_BULLET_NAME"] = "Show ammo name";
     
L["TITAN_BAG_FORMAT"] = "%d/%d";
L["TITAN_BAG_BUTTON_LABEL"] = "Bags: ";
L["TITAN_BAG_TOOLTIP"] = "Bags Info";
L["TITAN_BAG_TOOLTIP_HINTS"] = "Hint: Left-click to open all bags.";
L["TITAN_BAG_MENU_TEXT"] = "Bag";
L["TITAN_BAG_USED_SLOTS"] = "Used Slots";
L["TITAN_BAG_FREE_SLOTS"] = "Free Slots";
L["TITAN_BAG_BACKPACK"] = "Backpack";
L["TITAN_BAG_MENU_SHOW_USED_SLOTS"] = "Show used slots";
L["TITAN_BAG_MENU_SHOW_AVAILABLE_SLOTS"] = "Show available slots";
L["TITAN_BAG_MENU_SHOW_DETAILED"] = "Show detailed tooltip";
L["TITAN_BAG_MENU_IGNORE_AMMO_POUCH_SLOTS"] = "Ignore ammo pouch slots";
L["TITAN_BAG_MENU_IGNORE_SHARD_BAGS_SLOTS"] = "Ignore shard bags";
L["TITAN_BAG_MENU_IGNORE_PROF_BAGS_SLOTS"] = "Ignore profession bags";
L["TITAN_BAG_SHARD_BAG_NAMES"] = {"Soul Pouch", "Small Soul Pouch", "Box of Souls", "Felcloth Bag", "Core Felcloth Bag", "Ebon Shadowbag", "Abyssal Bag"};
L["TITAN_BAG_AMMO_POUCH_NAMES"] = {"Clefthoof Hide Quiver", "Worg Hide Quiver", "Ancient Sinew Wrapped Lamina", "Nerubian Reinforced Quiver", "Quiver of a Thousand Feathers", "Knothide Quiver", "Harpy Hide Quiver", "Ribbly's Quiver", "Quickdraw Quiver", "Heavy Quiver", "Quiver of the Night Watch", "Hunting Quiver", "Medium Quiver", "Light Leather Quiver", "Small Quiver", "Light Quiver", "Smuggler's Ammo Pouch", "Dragonscale Ammo Pouch", "Knothide Ammo Pouch", "Netherscale Ammo Pouch", "Gnoll Skin Bandolier", "Ribbly's Bandolier", "Thick Leather Ammo Pouch", "Heavy Leather Ammo Pouch", "Bandolier of the Night Watch", "Medium Shot Pouch", "Hunting Ammo Sack", "Small Leather Ammo Pouch", "Small Shot Pouch", "Small Ammo Pouch"};
L["TITAN_BAG_PROF_BAG_NAMES"] = {"Enchanted Mageweave Pouch", "Enchanted Runecloth Bag", "Big Bag of Enchantment", "Enchanter's Satchel", "Mysterious Bag", "Spellfire Bag", "Khorium Toolbox", "Fel Iron Toolbox", "Heavy Toolbox", "Gem Pouch", "Bag of Jewels", "Reinforced Mining Bag", "Mining Sack", "Mammoth Mining Bag", "Leatherworker's Satchel", "Bag of Many Hides", "Trapper's Traveling Pack", "Herb Pouch", "Cenarion Herb Bag", "Satchel of Cenarius", "Mycah's Botanical Bag", "Scribe's Satchel", "Pack of Endless Pockets", "Titanium Toolbox", "Emerald Bag"};

L["TITAN_BGMINIMAP_MENU_TEXT"] = "Battleground minimap"
L["TITAN_BGMINIMAP_TOOLTIP"] = "Toggles battleground minimap"
     
L["TITAN_CLOCK_TOOLTIP"] = "Clock";     
L["TITAN_CLOCK_TOOLTIP_VALUE"] = "Server offset hour value: ";
L["TITAN_CLOCK_TOOLTIP_LOCAL_TIME"] = "Local Time: ";
L["TITAN_CLOCK_TOOLTIP_SERVER_TIME"] = "Server Time: ";
L["TITAN_CLOCK_TOOLTIP_SERVER_ADJUSTED_TIME"] = "Adjusted Server Time: ";
L["TITAN_CLOCK_TOOLTIP_HINT1"] = "Hint: Left-click to adjust the offset hour"
L["TITAN_CLOCK_TOOLTIP_HINT2"] = "(server time only) and the 12/24H time format.";
L["TITAN_CLOCK_TOOLTIP_HINT3"] = "Shift Left-Click to toggle the Calendar on/off.";
L["TITAN_CLOCK_CONTROL_TOOLTIP"] = "Server Hour Offset: ";
L["TITAN_CLOCK_CONTROL_TITLE"] = "Offset";
L["TITAN_CLOCK_CONTROL_HIGH"] = "+12";
L["TITAN_CLOCK_CONTROL_LOW"] = "-12";
L["TITAN_CLOCK_CHECKBUTTON"] = "24H Fmt";
L["TITAN_CLOCK_CHECKBUTTON_TOOLTIP"] = "Toggles the time display between 12-hour and 24-hour format";
L["TITAN_CLOCK_MENU_TEXT"] = "Clock";
L["TITAN_CLOCK_MENU_LOCAL_TIME"] = "Show Local Time (L)";
L["TITAN_CLOCK_MENU_SERVER_TIME"] = "Show Server Time (S)";
L["TITAN_CLOCK_MENU_SERVER_ADJUSTED_TIME"] = "Show Server Adjusted Time (A)";
L["TITAN_CLOCK_MENU_DISPLAY_ON_RIGHT_SIDE"] = "Display on far right side";
L["TITAN_CLOCK_MENU_HIDE_GAMETIME"] = "Hide Time/Calendar button";
     
     
L["TITAN_COORDS_FORMAT"] = "(%.d, %.d)";
L["TITAN_COORDS_FORMAT2"] = "(%.1f, %.1f)";
L["TITAN_COORDS_FORMAT3"] = "(%.2f, %.2f)";
L["TITAN_COORDS_FORMAT_LABEL"] = "(xx , yy)";
L["TITAN_COORDS_FORMAT2_LABEL"] = "(xx.x , yy.y)";
L["TITAN_COORDS_FORMAT3_LABEL"] = "(xx.xx , yy.yy)";
L["TITAN_COORDS_FORMAT_COORD_LABEL"] = "Coordinate Format";
L["TITAN_COORDS_BUTTON_LABEL"] = "Loc: ";
L["TITAN_COORDS_TOOLTIP"] = "Location Info";
L["TITAN_COORDS_TOOLTIP_HINTS_1"] = "Hint: Shift + left-click to add location";
L["TITAN_COORDS_TOOLTIP_HINTS_2"] = "info to the chat message.";
L["TITAN_COORDS_TOOLTIP_ZONE"] = "Zone: ";
L["TITAN_COORDS_TOOLTIP_SUBZONE"] = "SubZone: ";
L["TITAN_COORDS_TOOLTIP_PVPINFO"] = "PVP Info: ";
L["TITAN_COORDS_TOOLTIP_HOMELOCATION"] = "Home Location";
L["TITAN_COORDS_TOOLTIP_INN"] = "Inn: ";
L["TITAN_COORDS_MENU_TEXT"] = "Coords";
L["TITAN_COORDS_MENU_SHOW_ZONE_ON_PANEL_TEXT"] = "Show zone text";
L["TITAN_COORDS_MENU_SHOW_COORDS_ON_MAP_TEXT"] = "Show coordinates on world map";
L["TITAN_COORDS_MAP_CURSOR_COORDS_TEXT"] = "Cursor(X,Y): %s";
L["TITAN_COORDS_MAP_PLAYER_COORDS_TEXT"] = "Player(X,Y): %s";
L["TITAN_COORDS_NO_COORDS"] = "No Coords";
L["TITAN_COORDS_MENU_SHOW_LOC_ON_MINIMAP_TEXT"] = "Show location on mini map";
     
L["TITAN_FPS_FORMAT"] = "%.1f";
L["TITAN_FPS_BUTTON_LABEL"] = "FPS: ";
L["TITAN_FPS_MENU_TEXT"] = "FPS";
L["TITAN_FPS_TOOLTIP_CURRENT_FPS"] = "Current FPS: ";
L["TITAN_FPS_TOOLTIP_AVG_FPS"] = "Average FPS: ";
L["TITAN_FPS_TOOLTIP_MIN_FPS"] = "Minimum FPS: ";
L["TITAN_FPS_TOOLTIP_MAX_FPS"] = "Maximum FPS: ";
L["TITAN_FPS_TOOLTIP"] = "Frames Per Second";
     
L["TITAN_LATENCY_FORMAT"] = "%d".."ms";
L["TITAN_LATENCY_BANDWIDTH_FORMAT"] = "%.3f ".."KB/s";
L["TITAN_LATENCY_BUTTON_LABEL"] = "Latency: ";
L["TITAN_LATENCY_TOOLTIP"] = "Network Status";
L["TITAN_LATENCY_TOOLTIP_LATENCY"] = "Latency: ";
L["TITAN_LATENCY_TOOLTIP_BANDWIDTH_IN"] = "Bandwidth in: ";
L["TITAN_LATENCY_TOOLTIP_BANDWIDTH_OUT"] = "Bandwidth out: ";
L["TITAN_LATENCY_MENU_TEXT"] = "Latency";
     
L["TITAN_LOOTTYPE_BUTTON_LABEL"] = "Loot: ";
L["TITAN_LOOTTYPE_FREE_FOR_ALL"] = "Free For All";
L["TITAN_LOOTTYPE_ROUND_ROBIN"] = "Round Robin";
L["TITAN_LOOTTYPE_MASTER_LOOTER"] = "Master Looter";
L["TITAN_LOOTTYPE_GROUP_LOOT"] = "Group Loot";
L["TITAN_LOOTTYPE_NEED_BEFORE_GREED"] = "Need Before Greed";
L["TITAN_LOOTTYPE_TOOLTIP"] = "Loot Type Info";
L["TITAN_LOOTTYPE_MENU_TEXT"] = "Loot Type";
L["TITAN_LOOTTYPE_RANDOM_ROLL_LABEL"] = "Random Roll";
L["TITAN_LOOTTYPE_TOOLTIP_HINT1"] = "Hint: Left-click for random roll.";
L["TITAN_LOOTTYPE_TOOLTIP_HINT2"] = "Select roll type from right-click menu.";
L["TITAN_LOOTTYPE_DUNGEONDIFF_LABEL"] = "Dungeon Difficulty";
L["TITAN_LOOTTYPE_SHOWDUNGEONDIFF_LABEL"] = "Show Dungeon Difficulty";
L["TITAN_LOOTTYPE_SETDUNGEONDIFF_LABEL"] = "Set Dungeon Difficulty";
     
L["TITAN_MEMORY_FORMAT"] = "%.3f".."MB";
L["TITAN_MEMORY_FORMAT_KB"] = "%d".."KB";
L["TITAN_MEMORY_RATE_FORMAT"] = "%.3f".."KB/s";
L["TITAN_MEMORY_BUTTON_LABEL"] = "Memory: ";
L["TITAN_MEMORY_TOOLTIP"] = "Memory Usage";
L["TITAN_MEMORY_TOOLTIP_CURRENT_MEMORY"] = "Current: ";
L["TITAN_MEMORY_TOOLTIP_INITIAL_MEMORY"] = "Initial: ";
L["TITAN_MEMORY_TOOLTIP_INCREASING_RATE"] = "Increasing rate: ";
L["TITAN_MEMORY_KBMB_LABEL"] = "KB/MB";     
     
L["TITAN_MONEY_GOLD"] = "g";
L["TITAN_MONEY_SILVER"] = "s";
L["TITAN_MONEY_COPPER"] = "c";
L["TITAN_MONEY_FORMAT"] = "%d".."g"..", %d".."s"..", %d".."c";
     
L["TITAN_PERFORMANCE_TOOLTIP"] = "Performance Info";
L["TITAN_PERFORMANCE_MENU_TEXT"] = "Performance";
L["TITAN_PERFORMANCE_ADDONS"] = "Addon Usage";
L["TITAN_PERFORMANCE_ADDON_MEM_USAGE_LABEL"] = "Addon Memory Usage";
L["TITAN_PERFORMANCE_ADDON_MEM_FORMAT_LABEL"] = "Addon Memory Format";
L["TITAN_PERFORMANCE_ADDON_CPU_USAGE_LABEL"] = "Addon CPU Usage";
L["TITAN_PERFORMANCE_ADDON_NAME_LABEL"] = "Name:";
L["TITAN_PERFORMANCE_ADDON_USAGE_LABEL"] = "Usage";
L["TITAN_PERFORMANCE_ADDON_RATE_LABEL"] = "Rate";
L["TITAN_PERFORMANCE_ADDON_TOTAL_MEM_USAGE_LABEL"] = "Total Addon Memory:";
L["TITAN_PERFORMANCE_ADDON_TOTAL_CPU_USAGE_LABEL"] = "Total CPU Time:";
L["TITAN_PERFORMANCE_MENU_SHOW_FPS"] = "Show FPS";
L["TITAN_PERFORMANCE_MENU_SHOW_LATENCY"] = "Show Latency";
L["TITAN_PERFORMANCE_MENU_SHOW_MEMORY"] = "Show Memory";
L["TITAN_PERFORMANCE_MENU_SHOW_ADDONS"] = "Show Addon Memory Usage";
L["TITAN_PERFORMANCE_MENU_SHOW_ADDON_RATE"] = "Show Addon Usage Rate";
L["TITAN_PERFORMANCE_MENU_CPUPROF_LABEL"] = "CPU Profiling Mode";
L["TITAN_PERFORMANCE_MENU_CPUPROF_LABEL_ON"] = "Enable CPU Profiling Mode ";
L["TITAN_PERFORMANCE_MENU_CPUPROF_LABEL_OFF"] = "Disable CPU Profiling Mode ";
L["TITAN_PERFORMANCE_CONTROL_TOOLTIP"] = "Monitored Addons: ";
L["TITAN_PERFORMANCE_CONTROL_TITLE"] = "Monitored Addons";
L["TITAN_PERFORMANCE_CONTROL_HIGH"] = "40";
L["TITAN_PERFORMANCE_CONTROL_LOW"] = "1";
L["TITAN_PERFORMANCE_TOOLTIP_HINT"] = "Hint: Left-click to force a garbage collection.";
		     
L["TITAN_XP_FORMAT"] = "%d";
L["TITAN_XP_PERCENT_FORMAT"] = "%d".." (%.1f%%)";
L["TITAN_XP_BUTTON_LABEL_XPHR_LEVEL"] = "XP/hr this level: ";
L["TITAN_XP_BUTTON_LABEL_XPHR_SESSION"] = "XP/hr this session: ";
L["TITAN_XP_BUTTON_LABEL_TOLEVEL_TIME_LEVEL"] = "Time to level: ";
L["TITAN_XP_LEVEL_COMPLETE"] = "Level Complete: ";
L["TITAN_XP_TOTAL_RESTED"] = "Rested: ";
L["TITAN_XP_XPTOLEVELUP"] = "XP to level Up: ";
L["TITAN_XP_TOOLTIP"] = "XP Info";
L["TITAN_XP_TOOLTIP_TOTAL_TIME"] = "Total time played: ";
L["TITAN_XP_TOOLTIP_LEVEL_TIME"] = "Time played this level: ";
L["TITAN_XP_TOOLTIP_SESSION_TIME"] = "Time played this session: ";
L["TITAN_XP_TOOLTIP_TOTAL_XP"] = "Total XP required this level: ";
L["TITAN_XP_TOOLTIP_LEVEL_XP"] = "XP gained this level: ";
L["TITAN_XP_TOOLTIP_TOLEVEL_XP"] = "XP needed to level: ";
L["TITAN_XP_TOOLTIP_SESSION_XP"] = "XP gained this session: ";
L["TITAN_XP_TOOLTIP_XPHR_LEVEL"] = "XP/hr this level: ";
L["TITAN_XP_TOOLTIP_XPHR_SESSION"] = "XP/hr this session: ";     
L["TITAN_XP_TOOLTIP_TOLEVEL_LEVEL"] = "Time to level (level rate): ";
L["TITAN_XP_TOOLTIP_TOLEVEL_SESSION"] = "Time to level (session rate): ";
L["TITAN_XP_MENU_TEXT"] = "XP";
L["TITAN_XP_MENU_SHOW_XPHR_THIS_LEVEL"] = "Show XP/hr this level";
L["TITAN_XP_MENU_SHOW_XPHR_THIS_SESSION"] = "Show XP/hr this session";
L["TITAN_XP_MENU_SHOW_RESTED_TOLEVELUP"] = "Show Multi-info view";
L["TITAN_XP_MENU_SIMPLE_BUTTON_TITLE"] = "Button";
L["TITAN_XP_MENU_SIMPLE_BUTTON_RESTED"] = "Show Rested XP";
L["TITAN_XP_MENU_SIMPLE_BUTTON_TOLEVELUP"] = "Show XP to level";
L["TITAN_XP_MENU_SIMPLE_BUTTON_KILLS"] = "Show est. kills to level";
L["TITAN_XP_MENU_RESET_SESSION"] = "Reset session";
L["TITAN_XP_MENU_REFRESH_PLAYED"] = "Refresh Timers";
L["TITAN_XP_UPDATE_PENDING"] = "Updating...";
L["TITAN_XP_UNKNOWN"] = "Unknown";
L["TITAN_XP_KILLS_LABEL"] = "Kills to level (at %d XP gained last): ";
L["TITAN_XP_KILLS_LABEL_SHORT"] = "Est. Kills: ";
L["TITAN_XP_BUTTON_LABEL_SESSION_TIME"] = "Session Time: ";
L["TITAN_XP_MENU_SHOW_SESSION_TIME"] = "Show Session Time";
     
L["TITAN_REGEN_MENU_TEXT"] = "Regen"
L["TITAN_REGEN_MENU_TOOLTIP_TITLE"] = "Regen Info"
L["TITAN_REGEN_MENU_SHOW2"] = "HP"
L["TITAN_REGEN_MENU_SHOW3"] = "MP"
L["TITAN_REGEN_MENU_SHOW4"] = "As Percentage"
L["TITAN_REGEN_BUTTON_TEXT_HP"] = "HP: "
L["TITAN_REGEN_BUTTON_TEXT_MP"] = " MP: "
L["TITAN_REGEN_TOOLTIP1"] = "Health: \t"..GREEN_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." / " ..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." ("..RED_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE..")";
L["TITAN_REGEN_TOOLTIP2"] = "Mana: \t"..GREEN_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." / " ..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." ("..RED_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE..")";
L["TITAN_REGEN_TOOLTIP3"] = "Best HP Regen: \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE;
L["TITAN_REGEN_TOOLTIP4"] = "Worst HP Regen: \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE;
L["TITAN_REGEN_TOOLTIP5"] = "Best MP Regen: \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE;
L["TITAN_REGEN_TOOLTIP6"] = "Worst MP Regen: \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE;
L["TITAN_REGEN_TOOLTIP7"] = "MP Regen in Last Fight: \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." ("..GREEN_FONT_COLOR_CODE.."%.2f"..FONT_COLOR_CODE_CLOSE.."%%)";

     --Titan Repair
     L["REPAIR_LOCALE"] = {
          pattern = "^Durability (%d+) / (%d+)$",
          menu = "Repair",
          tooltip = "Durability Info",
          button = "Durability: ",
          normal = "Repair cost (Normal): ",
          friendly = "Repair cost (Friendly): ",
          honored = "Repair cost (Honored): ",
          revered = "Repair cost (Revered): ",
          exalted = "Repair cost (Exalted): ",
          buttonNormal = "Show Normal",
          buttonFriendly = "Show Friendly (5%)",
          buttonHonored = "Show Honored (10%)",
          buttonRevered = "Show Revered (15%)",
          buttonExalted = "Show Exalted (20%)",
          percentage = "Show as Percentage",
          itemnames = "Show Item Names",
          mostdamaged = "Show Most Damaged",
          showdurabilityframe = "Show Durability Frame",
          undamaged = "Show Undamaged Items",
          discount = "Discount",
          nothing = "Nothing damaged",
          confirmation = "Do you want to repair all items ?",
          badmerchant = "This merchant cannot repair. Displaying normal repair costs instead.",
          popup = "Show Repair popup",
          showinventory = "Calculate Inventory damage",
          WholeScanInProgress = "Updating...",
          AutoReplabel = "Auto-Repair",
          AutoRepitemlabel = "Auto Repair all items",
          ShowRepairCost = "Show Repair Cost",
		  		ignoreThrown = "Ignore Thrown",
     };
     
     L["TITAN_REPAIR"] = "Titan Repair"
     L["TITAN_REPAIR_GBANK_TOTAL"] = "Guild Bank Funds :"
     L["TITAN_REPAIR_GBANK_WITHDRAW"] = "Guild Bank Withdrawal Allowed :"
     L["TITAN_REPAIR_GBANK_USEFUNDS"] = "Use Guild Bank funds"
     L["TITAN_REPAIR_GBANK_NOMONEY"] = "Guild Bank can't afford the repair cost, or you can't withdraw that much."
     L["TITAN_REPAIR_GBANK_NORIGHTS"] = "You are either not in a guild or you don't have permission to use the guild bank to repair your items."
     L["TITAN_REPAIR_CANNOT_AFFORD"] = "You cannot afford to repair, at this time."
     L["TITAN_REPAIR_REPORT_COST_MENU"] = "Report repair cost to chat"
     L["TITAN_REPAIR_REPORT_COST_CHAT"] = "Repair cost was "
     
L["TITAN_PLUGINS_MENU_TITLE"] = "Plug-ins";