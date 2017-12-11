-- Traditional Chinese localization by lahow@baha (purple)

local L = AceLibrary("AceLocale-2.2"):new("Quartz")
L:RegisterTranslations("zhTW", function()
	return {
		["Quartz"] = "Quartz",
		["Latency"] = "網路延遲",
		["Tradeskill Merge"] = "交易技能合併",
		["Global Cooldown"] = "共同冷卻",
		["Buff"] = "增益效果",
		["Target"] = "目標",
		["Pet"] = "寵物",
		["Focus"] = "鎖定目標",
		["Player"] = "玩家",
		["Mirror"] = "映射",
		["Timer"] = "計時器",
		["Swing"] = "揮擊",
		["Interrupt"] = "中斷",
		["Range"] = "距離",
		["Flight"] = "飛行",
		
		["GCD"] = "共同冷卻",
		["Tradeskill"] = "交易技能",
		
		-- Basic shared stuff
		["Above"] = "以上",
		["Alpha"] = "透明度",
		["Background"] = "背景",
		["Below"] = "以下",
		["Border"] = "邊框",
		["Bottom"] = "下",
		["Bottom Left"] = "左下",
		["Bottom Right"] = "右下",
		["Center"] = "中",
		["Colors"] = "顏色",
		["Default"] = "預設",
		["Down"] = "下",
		["Enable"] = "啟用",
		["Font"] = "字型",
		["Font Size"] = "字型大小",
		["Free"] = "不限",
		["Full Text"] = "完整文字",
		["Gap"] = "間隔",
		["Height"] = "高度",
		["Horizontal"] = "水平",
		["Left"] = "左",
		["Left (grow down)"] = "左 (向下)",
		["Left (grow up)"] = "左 (向上)",
		["None"] = "無",
		["Number"] = "數字",
		["Outside"] = "外邊",
		["Right"] = "右",
		["Right (grow down)"] = "右 (向下)",
		["Right (grow up)"] = "右 (向上)",
		["Scale"] = "大小",
		["Spacing"] = "間隔",
		["Texture"] = "材質",
		["Text Color"] = "文字顏色",
		["Top"] = "上",
		["Top Left"] = "左上",
		["Top Right"] = "右上",
		["Up"] = "上",
		["Vertical"] = "垂直",
		["X"] = "X",
		["Y"] = "Y",
		["Width"] = "寬度",
		
		-- Option Names
		
		["Lock"] = "鎖定",
		["Hide Icon"] = "隱藏圖示",
		["Icon Alpha"] = "圖示透明度",
		["Icon Gap"] = "圖示間隔",
		["Name Text Position"] = "名稱文字位置",
		["Name Text Font Size"] = "名稱字型大小",
		["Spell Rank"] = "法術等級",
		["Spell Rank Style"] = "法術等級樣式",
		["Hide Name Text"] = "隱藏名稱文字",
		["Hide Time Text"] = "隱藏時間文字",
		["Hide Cast Time"] = "隱藏施法時間",
		["Cast Time Precision"] = "施法時間精度",
		["Time Font Size"] = "時間字型大小",
		["Time Text Position"] = "時間字型位置",
		["Spell Text"] = "法術文字",
		["Time Text"] = "時間文字",
		["Casting"] = "施放",
		["Channeling"] = "引導",
		["Complete"] = "完成",
		["Failed"] = "失敗",
		["Spark Color"] = "閃爍顏色",
		["Background Alpha"] = "背景透明度",
		["Border Alpha"] = "邊框透明度",
		["Disable Blizzard Cast Bar"] = "隱藏 Blizzard 施法條",
		["Snap to Center"] = "移至中間",
		["Icon Position"] = "圖示位置",
		["Text Alignment"] = "文字排列",
		["Text Position"] = "文字位置",
		["Copy Settings From"] = "複製設定，從",
		["Cast Start Side"] = "施法開始位置",
		["Cast End Side"] = "施法結束位置",
		["Name Text X Offset"] = "名稱文字 X 軸微調",
		["Name Text Y Offset"] = "名稱文字 Y 軸微調",
		["Time Text X Offset"] = "時間文字 X 軸微調",
		["Time Text Y Offset"] = "時間文字 Y 軸微調",
		["Hide Samwise Icon"] = "隱藏替代圖示",
		["Show for Friends"] = "顯示友方",
		["Show for Enemies"] = "顯示敵方",
		["Show if Target"] = "目標則顯示",
		["Target Name"] = "目標名稱",
		["Display target name of spellcasts after spell name"] = "在法術名稱後面顯示施放目標",
		
		["Roman"] = "羅馬文字",
		["Roman Full Text"] = "完整羅馬文字",
			--Latency
			["Embed"] = "嵌入",
			["Embed Safety Margin"] = "嵌入安全邊緣",
			["Bar Color"] = "法條顏色",
			["Show Text"] = "顯示文字",
			--GCD
			["Primary"] = "主要",
			["Backup"] = "備用",
			["%s Spell"] = "%s 法術",
			["Bar Position"] = "法條的位置",
			["Deplete"] = "反向顯示",
			--Buffs
			["Focus"] = "鎖定目標",
			["Target"] = "目標",
			["Enable %s"] = "啟用 %s",
			["Enable Buffs"] = "啟用增益效果",
			["Enable Debuffs"] = "啟用減益效果",
			["Position"] = "位置",
			["Offset"] = "微調",
			["Show Icons"] = "顯示小圖示",
			["Buff Bar Width"] = "增益效果計時條的寬度",
			["Buff Bar Height"] = "增益效果計時條的高度",
			["Buff Name Text"] = "增益效果的名稱文字",
			["Buff Time Text"] = "增益效果的時間文字",
			["Buff Color"] = "增益效果的顏色",
			["Debuff Color"] = "減益效果的顏色",
			["Debuffs by Type"] = "依減益效果類型",
			["Undispellable Color"] = "無法被清除的法術顏色",
			["Curse Color"] = "詛咒的顏色",
			["Disease Color"] = "疾病的顏色",
			["Magic Color"] = "魔法的顏色",
			["Poison Color"] = "毒藥的顏色",
			["Anchor Frame"] = "框架錨點",
			["Grow Direction"] = "伸展方向",
			["Sort by Remaining Time"] = "依剩餘時間排列",
			--Mirror
			["Mirror Bar Width"] = "映射施法條的寬度",
			["Mirror Bar Height"] = "映射施法條的高度",
			["Mirror Name Text"] = "映射施法的名稱文字",
			["Mirror Time Text"] = "映射施法的時間文字",
			["Hide Blizz Mirror Bars"] = "隱藏 Blizzard 映射施法條",
			["%s Color"] = "%s 顏色",
			["Breath"] = "呼吸",
			["Exhaustion"] = "疲勞度",
			["Feign Death"] = "假死",
			["Show Mirror"] = "顯示映射",
			["Show Static"] = "顯示固定",
			["Show PvP"] = "顯示 PvP",
			--Timer
			["Stop Timer"] = "停用計時器",
			["Make Timer"] = "新增計時器",
			["New Timer Name"] = "新計時器名稱",
			["New Timer Length"] = "新計時器長度",
			--Swing
			["Duration Text"] = "持續時間的文字",
			["Remaining Text"] = "剩餘時間的文字",
			--Interrupt
			["Interrupt Color"] = "中斷的顏色",
			--Range
			["Out of Range Color"] = "超出範圍的顏色",
			--Flight
			["Flight Map Color"] = "飛行計時器的顏色",
			
		-- Option descriptions
		
		["Toggle Cast Bar lock"] = "切換鎖定施法條",
		["Hide Spell Cast Icon"] = "隱藏法術小圖示",
		["Set the Spell Cast icon alpha"] = "設定法術小圖示透明度",
		["Set where the Spell Cast icon appears"] = "設定小圖示顯示位置",
		["Space between the cast bar and the icon."] = "施法條與小圖示的間隔距離",
		["Set the Cast Bar Texture"] = "設定施法條材質",
		["Set the font used in the Name and Time texts"] = "設定使用於名稱/時間文字字型",
		["Set the alignment of the spell name text"] = "設定法術名稱文字的排列方式",
		["Set the size of the spell name text"] = "設定法術名稱文字的大小",
		["Disable the text that displays the time remaining on your cast"] = "停用施法剩餘時間文字",
		["Disable the text that displays the total cast time"] = "停用施法時間文字",
		["Set the precision (i.e. number of decimal places) for the cast time text"] = "設置施法時間精度 (十進位小數)",
		["Disable the text that displays the spell name/rank"] = "停用法術名稱及等級",
		["Display the rank of spellcasts alongside their name"] = "顯示法術等級",
		["Set the display style of the spell rank"] = "設定法術等級顯示樣式",
		["Set the size of the time text"] = "設定時間文字大小",
		["Set the alignment of the time text"] = "設定時間文字的排列方式",
		["Set the border style"] = "設定邊框樣式",
		["Set the color of the %s"] = "設定 %s 顏色",
		["Set the color of the cast bar when %s"] = "設定當 %s 時的施法條顏色",
		["Set the color of the casting bar spark"] = "設定施放條的閃爍顏色",
		["Set the color of the casting bar background"] = "設定施放條的背景顏色",
		["Set the alpha of the casting bar background"] = "設定施放條的背景透明度",
		["Set the color of the casting bar border"] = "設定施放條的邊框顏色",
		["Set the alpha of the casting bar border"] = "設定施放條的邊框透明度",
		["Disable and hide the default UI's casting bar"] = "隱藏系統預設的施法條",
		["Move the CastBar to center of the screen along the specified axis"] = "根據所給的座標軸移動施法條到畫面中央",
		["Select a bar from which to copy settings"] = "選擇要複製設定的施法條",
		["Adjust the X position of the name text"] = "調整名稱文字 X 軸位置",
		["Adjust the Y position of the name text"] = "調整名稱文字 Y 軸位置",
		["Adjust the X position of the time text"] = "調整時間文字 X 軸位置",
		["Adjust the Y position of the time text"] = "調整時間文字 Y 軸位置",
		["Hide the icon for spells with no icon"] = "隱藏系統沒有對應圖示的法術圖示",
		["Show this castbar for friendly units"] = "顯示友方單位的施法條",
		["Show this castbar for hostile units"] = "顯示敵方單位的施法術",
		["Show this castbar if focus is also target"] = "如果鎖定與目標相同，則顯示此施法條",
		["Set an exact X value for this bar's position."] = "設定施法條的X軸值",
		["Set an exact Y value for this bar's position."] = "設定施法條的Y軸值",
		
			--Latency
			["Include Latency time in the displayed cast bar."] = "於施法條上顯示網路延遲時間",
			["Embed mode will decrease it's lag estimates by this amount.  Ideally, set it to the difference between your highest and lowest ping amounts.  (ie, if your ping varies from 200ms to 400ms, set it to 0.2)"] = "嵌入模組會根據這個數值減少延遲估計值。理想上，設定為 ping 的最高/最低值的差異值是最好的 (例如，你的延遲值介於 200ms 到 400ms，則可設為 0.2)",
			["Latency Bar"] = "網路延遲條",
			["Set the alpha of the latency bar"] = "設定網路延遲條透明度",
			["Display the latency time as a number on the latency bar"] = "顯示網路延遲條時間數字",
			["Set the font used for the latency text"] = "設定網路延遲條的文字字型",
			["Set the size of the latency text"] = "設定網路延遲條的文字大小",
			["Set the color of the latency text"] = "設定網路延遲條的文字顏色",
			["Set the position of the latency text"] = "設定網路延遲條的文字位置",
			["Set the vertical position of the latency text"] = "設定網路延遲條文字的水平位置",
			--GCD
			["%s spell to check for the Global Cooldown"] = "%s 法術來確認共同冷卻時間",
			["Set the color of the GCD bar spark"] = "設定共同冷卻條的閃爍顏色",
			["Set the height of the GCD bar"] = "設定共同冷卻條的高度",
			["Set the alpha of the GCD bar"] = "設定共同冷卻條的透明度",
			["Set the position of the GCD bar"] = "設定共同冷卻條的位置",
			["Tweak the distance of the GCD bar from the cast bar"] = "緊縮共同冷卻條與施法條間的距離",
			["Reverses the direction of the GCD spark, causing it to move right-to-left"] = "反轉共同冷卻條閃爍方向，改為從右到左",
			--Buffs
			["Show buffs/debuffs for your %s"] = "顯示你的 %s 的增益/減益效果",
			["Show buffs for your %s"] = "顯示你的 %s 的增益效果",
			["Show debuffs for your %s"] = "顯示你的的 %s 的減益效果",
			["Position the bars for your %s"] = "你的的 %s 的計時條位置",
			["Tweak the vertical position of the bars for your %s"] = "緊縮你的 %s 計時條的垂直位置",
			["Tweak the space between bars for your %s"] = "緊縮你的 %s 計時條的間隔",
			["Tweak the horizontal position of the bars for your %s"] = "緊縮你的 %s 計時條的水平位置",
			["Show icons on buffs and debuffs for your %s"] = "顯示你的 %s 的增益/減益效果的圖示",
			["Set the side of the buff bar that the icon appears on"] = "設定小圖示出現於計時條的位置",
			["Set the buff bar Texture"] = "設定增益計時條的材質",
			["Set the width of the buff bars"] = "設定增益計時條的寬度",
			["Set the height of the buff bars"] = "設定增益計時條的高度",
			["Display the names of buffs/debuffs on their bars"] = "在計時條上顯示增益/減益效果的名稱",
			["Display the time remaining on buffs/debuffs on their bars"] = "在計時條上顯示增益/減益效果所剩餘的時間",
			["Set the font used in the buff bars"] = "設定增益計時條所使用的文字字型",
			["Set the font size for the buff bars"] = "設定增益計時條的字型大小",
			["Set the alpha of the buff bars"] = "設定增益計時條的透明度",
			["Set the color of the bars for buffs"] = "設定增益計時條的顏色",
			["Set the color of the bars for debuffs"] = "設定減益計時條的顏色",
			["Set the color of the text for the buff bars"] = "設定增益計時條的文字顏色",
			["Color debuff bars according to their dispel type"] = "根據類型設定減益計時條的顏色",
			["Set the color of the bars for undispellable debuffs"] = "設定無法被消除的減益效果的顏色",
			["Set the color of the bars for curses"] = "設定詛咒的顏色",
			["Set the color of the bars for diseases"] = "設定疾病的顏色",
			["Set the color of the bars for magic"] = "設定魔法的顏色",
			["Set the color of the bars for poisons"] = "設定毒藥的顏色",
			["Select where to anchor the %s bars"] = "選擇 %s 計時條的錨點",
			["Toggle %s bar lock"] = "切換鎖定 %s 計時條",
			["Set the grow direction of the %s bars"] = "設定 %s 計時條的伸展方向",
			["Sort the buffs and debuffs by time remaining.  If unchecked, they will be sorted alphabetically."] = "依增益/減益效果剩餘時間排列。若不確定，則依字母排列。",
			--Mirror
			["Position the mirror bars"] = "映射施法條的位置",
			["Tweak the vertical position of the mirror bars"] = "緊縮映射施法條的垂直位置",
			["Tweak the space between mirror bars"] = "緊縮映射施法條的空間",
			["Tweak the horizontal position of the mirror bars"] = "緊縮映射施法條的水平位置",
			["Show icons on mirror bars"] = "顯示映射施法條的圖示",
			["Set the side of the mirror bar that the icon appears on"] = "設定小圖示出現於映射施法條的位置",
			["Set the mirror bar Texture"] = "設定映射施法條的材質",
			["Set the width of the mirror bars"] = "設定映射施法條的寬度",
			["Set the height of the mirror bars"] = "設定映射施法條的高度",
			["Display the names of Mirror Bar Types on their bars"] = "顯示映射施法條的類型名稱",
			["Display the time remaining on mirror bars"] = "顯示映射施法條的剩餘時間",
			["Set the font used in the mirror bars"] = "設定映射施法條所使用的字型",
			["Set the color of the text for the mirror bars"] = "設定映射施法條的文字顏色",
			["Set the font size for the mirror bars"] = "設定映射施法條的文字大小",
			["Set the alpha of the mirror bars"] = "設定映射施法條的透明度",
			["Hide Blizzard's mirror bars"] = "隱藏系統預設映射施法條",
			["Set the color of the bars for %s"] = "設定%s施法條的顏色",
			["Show mirror bars such as breath and feign death"] = "顯示呼吸及假死",
			["Show bars for static popup items such as rez and summon timers"] = "顯示固定物品召喚計時",
			["Show bar for start of arena and battleground games"] = "顯示競技場/戰場開始時間",
			["Select where to anchor the mirror bars"] = "選擇映射施法條的錨點",
			["Toggle mirror bar lock"] = "切換鎖定映射施法條",
			["Set the grow direction of the mirror bars"] = "設定映射施法條的伸展方向",
			--Timer
			["Make a new timer using the above settings.  NOTE: it may be easier for you to simply use the command line to make timers, /qt"] = "使用以上設定新增一個計時器。注意: 使用 /qt 指令來新增計時間也許較為便利",
			["Select a timer to stop"] = "選擇要停用的計時器",
			["Set a name for the new timer"] = "設定新計時器的名稱",
			["Length of the new timer, in seconds"] = "新計時器的時間長度 (秒)",
			--Swing
			["Set the color of the swing timer bar"] = "設定揮擊計時條顏色",
			["Set the height of the swing timer bar"] = "設定揮擊計時條高度",
			["Set the alpha of the swing timer bar"] = "設定揮擊計時條透明度",
			["Set the position of the swing timer bar"] = "設定揮擊計時條位置",
			["Tweak the distance of the swing timer bar from the cast bar"] = "緊縮揮擊計時條與施法條間的距離",
			["Toggle display of text showing your total swing time"] = "切換總合揮擊時間的文字顯示",
			["Toggle display of text showing the time remaining until you can swing again"] = "切換揮擊剩餘時間的文字顯示",
			--Interrupt
			["Set the color the cast bar is changed to when you have a spell interrupted"] = "設定法術被中斷的施法條顏色",
			--Range
			["Set the color to turn the cast bar when the target is out of range"] = "設定目標超出距離的施法條顏色",
			--Flight
			["Set the color to turn the cast bar when taking a flight path"] = "設定正在飛行時的施法條顏色",
			
		-- Other crap
		["Rank (%d+)"] = "等級 (%d+)",
		["Rank %s"] = "等級 %s",
			--Latency
			["%dms"] = "%dms",
			--GCD
			["<Spell Name>"] = "<法術名稱>",
			["Invalid Spell"] = "無效的法術",
			["Spell_Warning"] = "|cffff3333注意: 你尚未選用法術給共用卻冷模組，請在設定視窗中輸入法術名稱 (點擊共同冷卻設定)。請使用無法被中斷且只有共同冷卻沒由其他冷卻時間的法術，例如尋找草藥。",
			--Buffs
			["%dm"] = "%d 分",
			--Mirror
			["Logout"] = "登出",
			["Release"] = "釋放",
-- duplicated entry			["Logout"] = true,
			["Forfeit Duel"] = "取消決鬥",
			["Instance Boot"] = "進入副本",
			["Summon"] = "召喚",
			["AOE Rez"] = "群體復活",
			["Quit"] = "離開",
			["Resurrect"] = "復活",
			["Party Invite"] = "小隊邀請",
			["Resurrect Timer"] = "復活計時",
			["Duel Request"] = "決鬥要求",
			["Game Start"] = "戰鬥開始",
			["1 minute"] = "1 分",
			["One minute until"] = "1 分",
			["30 seconds"] = "30 秒",
			["Thirty seconds until"] = "30 秒",
			["15 seconds"] = "15 秒",
			["Fifteen seconds until"] = "15 秒",
			--Timer
			['Usage: /quartztimer timername 60 or /quartztimer 60 timername'] = "用法: /quartztimer timername 60 或 /quartztimer 60 timername",
			["Timers module currently disabled, re-enable it in the menu"] = "計時器模組已被停用，於設定選單中可重新啟用",
			["<Time in seconds>"] = "<時間 (秒)>",
			--Swing
			--Interrupt
			["INTERRUPTED (%s)"] = "被中斷 (%s)",
			--Range
			--Flight
			--FeatureFrame
			["Modular casting bar"] = "模組化施法條",
	}
end)
