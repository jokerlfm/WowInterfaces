﻿-- GatherMate Locale
-- Please use the Localization App on WoWAce to Update this
-- http://www.wowace.com/projects/gathermate/localization/ ;¶

local L = LibStub("AceLocale-3.0"):NewLocale("GatherMate", "zhTW")
if not L then return end

L["GatherMate"] = "採集助手"
L["Add this location to Cartographer_Waypoints"] = "將該地點加入 Cartographer_Waypoints"
L["Add this location to TomTom waypoints"] = "將該地點加入 TomTom waypoints"
L["Always show"] = "總是顯示"
L["Are you sure you want to delete all nodes from this database?"] = "您確定要刪除這資料庫所有的資源點嗎?"
L["Are you sure you want to delete all of the selected node from the selected zone?"] = "您確定要從選定的區域刪除所有選定的資源點嗎?"
L["Auto Import"] = "自動匯入"
L["Auto import complete for addon "] = "自動匯入資料源："
L["Automatically import when ever you update your data module, your current import choice will be used."] = "當你升級你的資料模組的時候自動匯入升級後的資料,你目前的匯入選項將控制匯入的資料類型."
L["Cleanup Complete."] = "清理完成。"
L["Cleanup Database"] = "清理資料庫"
L["Cleanup_Desc"] = "經過一段時間後,你的數據庫可能會非常大,清理資料可以讓你的相同專業的在一定範圍內的資料合併為一個,以避免重複."
L["Cleanup radius"] = "清理半徑"
L["CLEANUP_RADIUS_DESC"] = "設置以碼為單位的半徑，在半徑內的資料將被清除。預設值設定為|cffffd20050|r碼(氣雲)/|cffffd20015|r碼(其他採集資料)。這些設定也被用於新增的節點。"
L["Cleanup your database by removing duplicates. This takes a few moments, be patient."] = "清理你的資料庫，移除重復資料。這個過程可能持續幾分鐘，請耐心等待。"
L["Clear node selections"] = "清除選擇的資源點"
L["Color of the tracking circle."] = "追蹤環的顏色。"
L["Control various aspects of node icons on both the World Map and Minimap."] = "控制你想要在世界地圖和小地圖上顯示的多種資源點圖示。"
L["Database locking"] = "資料庫鎖定"
L["Database Locking"] = "資料庫鎖定"
L["DATABASE_LOCKING_DESC"] = "資料庫鎖定功能可讓您凍結一個資料庫的狀態。一旦鎖定您將不再能夠新增，刪除或修改資料庫。這包括清理和匯入。"
L["Database Maintenance"] = "資料庫維護"
L["Databases to Import"] = "匯入到資料庫"
L["Databases you wish to import"] = "你想要匯入的資料庫"
L["Delete"] = "刪除"
L["Delete Entire Database"] = "刪除整個資料庫"
L["DELETE_ENTIRE_DESC"] = "這將會忽略資料庫鎖定並從選定的資料庫內所有的區域刪除所有的資源點。"
L["Delete selected node from selected zone"] = "從選定的區域刪除所有選定的資源點"
L["DELETE_SPECIFIC_DESC"] = "從選定的區域刪除所有選定的資源點。您必須停用資料庫鎖定才能運作。"
L["Delete Specific Nodes"] = "刪除選定的資源點"
L["Display Settings"] = "顯示設定"
L["Engineering"] = "工程學"
L["Expansion"] = "擴展"
L["Expansion Data Only"] = "僅擴展資料庫"
L["Failed to load GatherMateData due to "] = "載入GatherMateData失敗:"
L["FAQ"] = "常見問題"
L["FAQ_TEXT"] = [=[|cffffd200
我剛剛安裝好GatherMate，為什麼在地圖上沒看到資源點?
|r
GatherMate 本身沒有內建的資料。當你在進行採集之後，GatherMate便會新增及更新你地圖上的資源點。還有，請撿查一下顯示設定。

|cffffd200
為什麼在地圖上有的資源點，但小地圖上卻沒有?
|r
|cffffff78Minimap Button Bag|r (可能是其它類似的插件)會覆蓋小地圖上的按鈕。請關掉它。

|cffffd200
怎樣可取得現成的資料?
|r
你可用三種方法把現成的資料匯GatherMate:

1. |cffffff78GatherMate_Data|r - 這個 LoD(按需要時載入)的插件，包含了WowHead收集的資源點並每周會作資料更新。提供自動更新的選項。

2. |cffffff78GatherMate_CartImport|r - 這插件讓你把現存|cffffff78Cartographer_<Profession>|r的資料庫匯入到 GatherMate。但一定要|cffffff78Cartographer_<Profession>|r模組和GatherMate_CartImport一起載入運作才能順利匯入資料。

注意:匯入資料到GatherMate並非自動運作。你要自己按匯入資料的按鈕。

這不同於|cffffff78Cartographer_Data|r能容許你作個別的修改資料，當載入|cffffff78Cartographer_Data|r時會覆寫你現存的資料庫和已發現的資源點。

|cffffd200
是否會加入其它的顯示，如郵箱和飛行管理員等等?
|r
答案是不會。不過，有些其它的插件作者可能會製作這樣的插件或模組，GatherMate核心程式不會考慮加入這些。

|cffffd200
我發現有臭蟲!在那裡可以舉報?
|r
你可以在|cffffff78http://www.wowace.com/forums/index.php?topic=10990.0|r裡貼文關於臭蟲或建議(不過要用英文)。

另外，你可以在|cffffff78irc://irc.freenode.org/wowace|r找到我們(也是要用英文)。

當舉報臭蟲時，請詳細說明|cffffff78引至錯誤的動作|r，提供 |cffffff78error messages|r，GatherMate的|cffffff78版本|r和你在在使用什麼語言系統|cffffff78英文或其它語言|r。

|cffffd200
誰製作這超酷的插件?
|r
Kagaro, Xinhuan, Nevcairiel and Ammo]=]
L["Filter_Desc"] = "選擇你想要在世界地圖和小地圖上顯示的資源點類型，不選擇的類型將僅記錄在資料庫中。"
L["Filters"] = "篩選"
L["Fishes"] = "魚群"
L["Fish filter"] = "魚群篩選"
L["Fishing"] = "釣魚"
L["Frequently Asked Questions"] = "常見問題解答"
L["Gas Clouds"] = "氣雲"
L["Gas filter"] = "氣雲篩選"
L["GatherMateData has been imported."] = "GatherMateData已經被匯入。"
L["GatherMate Pin Options"] = "GatherMate Pin選項"
L["General"] = "一般"
L["Herbalism"] = "草藥學"
L["Herb Bushes"] = "草藥"
L["Herb filter"] = "草藥篩選"
L["Icon Alpha"] = "圖示透明度"
L["Icon alpha value, this lets you change the transparency of the icons. Only applies on World Map."] = "圖示透明度,這個選項讓你更改圖示的透明度,僅作用於世界地圖!"
L["Icons"] = "圖示"
L["Icon Scale"] = "圖示縮放"
L["Icon scaling, this lets you enlarge or shrink your icons on both the World Map and Minimap."] = "圖示縮放,這個選項讓你把世界地圖和小地圖上的圖示放大或縮小."
L["Import Data"] = "匯入資料"
L["Import GatherMateData"] = "匯入 GatherMateData"
L["Importing_Desc"] = "匯入允許 GatherMate 從其他來源獲取節點資料.匯入結束後,你最好進行一次資料清理."
L["Import Options"] = "匯入選項"
L["Import Style"] = "匯入模式"
L["Keybind to toggle Minimap Icons"] = "設定熱鍵切換顯示小地圖的資源點圖示"
L["Load GatherMateData and import the data to your database."] = "載入GatherMateData並把資料匯入到你的資料庫。"
L["Merge"] = "合併"
L["Merge will add GatherMateData to your database. Overwrite will replace your database with the data in GatherMateData"] = "合併將 GatherMateDate 資料加入你的資料庫，覆蓋將用GatherMateData中的資料替換你現有的資料庫"
L["Mine filter"] = "礦脈篩選"
L["Mineral Veins"] = "礦脈"
L["Minimap Icon Tooltips"] = "資源點提示框(小地圖)"
L["Mining"] = "採礦"
L["Never show"] = "從不顯示"
L["Only import selected expansion data from WoWDB"] = "從WoWDB中僅匯入到選擇的擴展資料庫"
L["Only while tracking"] = "僅顯示追蹤相關"
L["Only with profession"] = "僅顯示專業相關"
L["Overwrite"] = "覆蓋"
L["Processing "] = "正在處理……"
L["Select All"] = "全部選擇"
L["Select all nodes"] = "選擇全部資源點"
L["Select Database"] = "選擇資料庫"
L["Selected databases are shown on both the World Map and Minimap."] = "在世界地圖和小地圖上顯示已選用的資料庫。"
L["Select Node"] = "選擇資源點"
L["Select None"] = "清空選擇"
L["Select the fish nodes you wish to display."] = "選擇你想要顯示的魚群資源點."
L["Select the gas clouds you wish to display."] = "選擇你想要顯示的氣雲資源點."
L["Select the herb nodes you wish to display."] = "選擇你想要顯示的草藥資源點."
L["Select the mining nodes you wish to display."] = "選擇你想要顯示的礦脈資源點."
L["Select the treasure you wish to display."] = "選擇你想要顯示的寶藏資源點."
L["Select Zone"] = "選擇地區"
L["Show Databases"] = "顯示資料庫"
L["Show Fishing Nodes"] = "顯示魚群"
L["Show Gas Clouds"] = "顯示氣雲"
L["Show Herbalism Nodes"] = "顯示草藥"
L["Show Minimap Icons"] = "顯示小地圖資源點"
L["Show Mining Nodes"] = "顯示礦脈"
L["Show Nodes on Minimap Border"] = "小地圖邊沿顯示資源點"
L["Shows more Nodes that are currently out of range on the minimap's border."] = "在小地圖邊界上顯示哪些超出小地圖的資源點."
L["Show Tracking Circle"] = "顯示追蹤環"
L["Show Treasure Nodes"] = "顯示寶藏"
L["Show World Map Icons"] = "顯示世界地圖資源點"
L["The Burning Crusades"] = "燃燒的遠征"
L["The distance in yards to a node before it turns into a tracking circle"] = "在一個資源點變成追蹤環之前的距離."
L["The Frozen Sea"] = "冰凍之海"
L["The North Sea"] = "北海"
L["Toggle showing fishing nodes."] = "切換顯示魚群垂釣點."
L["Toggle showing gas clouds."] = "切換顯示氣雲(微粒採集點)."
L["Toggle showing herbalism nodes."] = "切換顯示草藥採集點."
L["Toggle showing Minimap icons."] = "切換顯示資源點圖示與否(在小地圖上)."
L["Toggle showing Minimap icon tooltips."] = "切換資源點的提示框顯示與否(在小地圖上)."
L["Toggle showing mining nodes."] = "切換顯示礦脈採集點."
L["Toggle showing the tracking circle."] = "切換是否顯示追蹤環."
L["Toggle showing treasure nodes."] = "切換顯示財寶地點."
L["Toggle showing World Map icons."] = "切換資源點圖示顯示與否(在世界地圖上)."
L["Tracking Circle Color"] = "追蹤環顏色"
L["Tracking Distance"] = "追蹤距離"
L["Treasure"] = "財寶"
L["Treasure filter"] = "寶藏篩選"
L["Wrath of the Lich King"] = "巫妖王之怒"


local NL = LibStub("AceLocale-3.0"):NewLocale("GatherMateNodes", "zhTW")
if not NL then return end

NL["Abundant Bloodsail Wreckage"] = "豐碩漂浮殘骸"
NL["Abundant Firefin Snapper School"] = "豐碩火鰭鯛魚群"
NL["Abundant Oily Blackmouth School"] = "豐碩黑口魚群"
NL["Adamantite Bound Chest"] = "堅鋼箱"
NL["Adamantite Deposit"] = "堅鋼礦床"
NL["Adder's Tongue"] = "奎蛇之舌"
NL["Arcane Vortex"] = "秘法漩渦"
NL["Arctic Cloud"] = "極地雲"
NL["Arthas' Tears"] = "阿薩斯之淚"
NL["Battered Chest"] = "破損的箱子"
NL["Battered Footlocker"] = "破碎的提箱"
NL["Black Lotus"] = "黑蓮花"
NL["Blindweed"] = "盲目草"
NL["Blood of Heroes"] = "英雄之血"
NL["Bloodpetal Sprout"] = "血瓣花苗"
NL["Bloodsail Wreckage"] = "血帆殘骸"
NL["Bloodthistle"] = "血薊"
NL["Bluefish School"] = "藍魚群"
NL["Borean Man O' War School"] = "北風水母群"
NL["Bound Fel Iron Chest"] = "受封的魔鐵箱"
NL["Brackish Mixed School"] = "魔尾魚群"
NL["Briarthorn"] = "石南草"
NL["Brightly Colored Egg"] = "明亮的彩蛋"
NL["Bruiseweed"] = "跌打草"
NL["Buccaneer's Strongbox"] = "海盜的保險箱"
NL["Burial Chest"] = "埋葬箱"
NL["Cinder Cloud"] = "煤渣雲"
NL["Cobalt Deposit"] = "鈷藍礦床"
NL["Copper Vein"] = "銅礦脈"
NL["Dark Iron Deposit"] = "黑鐵礦床"
NL["Deep Sea Monsterbelly School"] = "深海大肚魚群"
NL["Dented Footlocker"] = "被砸過的箱子"
NL["Dragonfin Angelfish School"] = "龍鱗天使魚群"
NL["Dreamfoil"] = "夢葉草"
NL["Dreaming Glory"] = "譽夢草"
NL["Earthroot"] = "地根草"
NL["Everfrost Chip"] = "永霜屑片"
NL["Fadeleaf"] = "枯葉草"
NL["Fangtooth Herring School"] = "尖齒鯡魚群"
NL["Fel Iron Chest"] = "魔鐵箱"
NL["Fel Iron Deposit"] = "魔鐵礦床"
NL["Felmist"] = "魔化霧"
NL["Felsteel Chest"] = "魔鋼箱"
NL["Feltail School"] = "魔尾魚群"
NL["Felweed"] = "魔獄草"
NL["Firebloom"] = "火焰花"
NL["Firefin Snapper School"] = "火鰭鯛魚群"
NL["Firethorn"] = "火棘"
NL["Flame Cap"] = "火帽花"
NL["Floating Debris"] = "漂浮的碎片"
NL["Floating Wreckage"] = "漂浮的殘骸"
NL["Floating Wreckage Pool"] = "漂浮殘骸之池"
NL["Frost Lotus"] = "冰霜蓮花"
NL["Frozen Herb"] = "冰凍草藥"
NL["Ghost Mushroom"] = "鬼魂菇"
NL["Giant Clam"] = "巨型蚌殼"
NL["Glacial Salmon School"] = "冰川鮭魚群"
NL["Glassfin Minnow School"] = "玻鰭小鯉魚群"
NL["Glowcap"] = "白閃菇"
NL["Goldclover"] = "金黃苜蓿"
NL["Golden Sansam"] = "黃金蔘"
NL["Goldthorn"] = "金棘草"
NL["Gold Vein"] = "金礦脈"
NL["Grave Moss"] = "墓地苔"
NL["Greater Sagefish School"] = "大型鼠尾魚群"
NL["Gromsblood"] = "格羅姆之血"
NL["Heavy Fel Iron Chest"] = "沉重的魔鐵箱"
NL["Highland Mixed School"] = "高地綜合魚群"
NL["Icecap"] = "冰蓋草"
NL["Icethorn"] = "冰棘"
NL["Imperial Manta Ray School"] = "帝王韌皮魟魚群"
NL["Incendicite Mineral Vein"] = "火岩礦脈"
NL["Indurium Mineral Vein"] = "精鐵礦脈"
NL["Iron Deposit"] = "鐵礦床"
NL["Khadgar's Whisker"] = "卡德加的鬍鬚"
NL["Khorium Vein"] = "克銀礦脈"
NL["Kingsblood"] = "皇血草"
NL["Large Battered Chest"] = "破碎的大箱子"
NL["Large Darkwood Chest"] = "大型黑木箱"
NL["Large Iron Bound Chest"] = "大型鐵箍儲物箱"
NL["Large Mithril Bound Chest"] = "大型秘銀儲物箱"
NL["Large Solid Chest"] = "堅固的大箱子"
NL["Lesser Bloodstone Deposit"] = "次級血石礦床"
NL["Lesser Firefin Snapper School"] = "火鰭鯛魚群"
NL["Lesser Floating Debris"] = "漂浮的碎片"
NL["Lesser Oily Blackmouth School"] = "小型黑口魚群"
NL["Lesser Sagefish School"] = "小型鼠尾魚群"
NL["Lichbloom"] = "低語藤"
NL["Liferoot"] = "活根草"
NL["Mageroyal"] = "魔皇草"
NL["Mana Thistle"] = "法力薊"
NL["Mithril Deposit"] = "秘銀礦床"
NL["Moonglow Cuttlefish School"] = "月色墨魚群"
NL["Mossy Footlocker"] = "生苔的提箱"
NL["Mountain Silversage"] = "山鼠草"
NL["Mudfish School"] = "泥鰍群"
NL["Musselback Sculpin School"] = "蚌脊魚群"
NL["Netherbloom"] = "虛空花"
NL["Nethercite Deposit"] = "虛空聚晶礦床"
NL["Netherdust Bush"] = "虛空之塵灌木"
NL["Netherwing Egg"] = "虛空之翼蛋"
NL["Nettlefish School"] = "蕁麻魚群"
NL["Nightmare Vine"] = "夢魘根"
NL["Oil Spill"] = "油井"
NL["Oily Blackmouth School"] = "黑口魚群"
NL["Ooze Covered Gold Vein"] = "軟泥覆蓋的金礦脈"
NL["Ooze Covered Mithril Deposit"] = "軟泥覆蓋的秘銀礦床"
NL["Ooze Covered Rich Thorium Vein"] = "軟泥覆蓋的富瑟銀礦脈"
NL["Ooze Covered Silver Vein"] = "軟泥覆蓋的銀礦脈"
NL["Ooze Covered Thorium Vein"] = "軟泥覆蓋的瑟銀礦脈"
NL["Ooze Covered Truesilver Deposit"] = "軟泥覆蓋的真銀礦床"
NL["Patch of Elemental Water"] = "元素之水"
NL["Peacebloom"] = "寧神花"
NL["Plaguebloom"] = "瘟疫花"
NL["Practice Lockbox"] = "練習用帶鎖箱"
NL["Primitive Chest"] = "遠古箱子"
NL["Pure Water"] = "純水"
NL["Purple Lotus"] = "紫蓮花"
NL["Ragveil"] = "拉格維花"
NL["Rich Adamantite Deposit"] = "豐沃的堅鋼礦床"
NL["Rich Cobalt Deposit"] = "豐沃的鈷藍礦床"
NL["Rich Saronite Deposit"] = "豐沃的薩鋼礦床"
NL["Rich Thorium Vein"] = "富瑟銀礦脈"
NL["Sagefish School"] = "鼠尾魚群"
NL["Saronite Deposit"] = "薩鋼礦床"
NL["Scarlet Footlocker"] = "血色十字軍提箱"
NL["School of Darter"] = "淡水魚群"
NL["School of Deviate Fish"] = "變異魚群"
NL["School of Tastyfish"] = "斑點可口魚群"
NL["Schooner Wreckage"] = "漂浮的殘骸"
NL["Silverleaf"] = "銀葉草"
NL["Silver Vein"] = "銀礦脈"
NL["Small Thorium Vein"] = "瑟銀礦脈"
NL["Solid Chest"] = "堅固的箱子"
NL["Solid Fel Iron Chest"] = "堅固的魔鐵箱"
NL["Sparse Firefin Snapper School"] = "稀疏火鰭鯛魚群"
NL["Sparse Oily Blackmouth School"] = "稀疏黑口魚群"
NL["Sparse Schooner Wreckage"] = "稀疏漂浮的殘骸"
NL["Sporefish School"] = "孢子魚群"
NL["Steam Cloud"] = "蒸汽雲"
NL["Steam Pump Flotsam"] = "蒸汽幫浦漂浮殘骸"
NL["Stonescale Eel Swarm"] = "石鱗鰻魚群"
NL["Strange Pool"] = "奇怪的水池"
NL["Stranglekelp"] = "荊棘藻"
NL["Sungrass"] = "太陽草"
NL["Swamp Gas"] = "沼氣"
NL["Talandra's Rose"] = "泰蘭卓的玫瑰"
NL["Tattered Chest"] = "破爛的箱子"
NL["Teeming Firefin Snapper School"] = "群聚火鰭鯛魚群"
NL["Teeming Floating Wreckage"] = "群聚漂浮的殘骸"
NL["Teeming Oily Blackmouth School"] = "群聚黑口魚群"
NL["Terocone"] = "泰魯草"
NL["Tiger Lily"] = "虎百合"
NL["Tin Vein"] = "錫礦脈"
NL["Titanium Vein"] = "泰坦鋼礦脈"
NL["Truesilver Deposit"] = "真銀礦床"
NL["Un'Goro Dirt Pile"] = "安戈落泥土堆"
NL["Waterlogged Footlocker"] = "浸水的提箱"
NL["Waterlogged Wreckage"] = "浸水的殘骸"
NL["Wicker Chest"] = "柳條箱"
NL["Wild Steelbloom"] = "野鋼花"
NL["Windy Cloud"] = "多風之雲"
NL["Wintersbite"] = "冬刺草"

