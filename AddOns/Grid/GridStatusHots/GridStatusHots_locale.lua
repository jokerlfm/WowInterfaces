﻿local L = AceLibrary("AceLocale-2.2"):new("GridStatusHots")

L:RegisterTranslations("enUS", function()
	return {
		["My HoTs"] = true,
		["Renew"] = true,
		["Rejuvenation"] = true,
		["Regrowth"] = true,
		["Lifebloom"] = true,
		["Wild Growth"] = true,
		["Sheath of Light"] = true,
		["Sacred Shield"] = true,
		["Riptide"] = true,
		["Earthliving"] = true,
		["Buff: Hot Count"] = true,
		["Buff: My Renew"] = true,
		["Buff: My Rejuvenation"] = true,
		["Buff: My Regrowth"] = true,
		["Buff: My Lifebloom"] = true,
		["Buff: Lifebloom Stack Colored"] = true,
		["Buff: My Wild Growth"] = true,
		["Buff: My Sheath of Light"] = true,
		["Buff: My Sacred Shield"] = true,
		["Buff: My Riptide"] = true,
		["Buff: My Earthliving"] = true,
		["Prayer of Mending"] = true,
		["Beacon of Light"] = true,
		["Grace Stack"] = true,
		["Grace Duration + Stack"] = true,
		["Color when player has two counters of mending."] = true,
		["Color when player has three counters of mending."] = true,
		["Color when player has four counters of mending."] = true,
		["Color when player has five counters of mending."] = true,
		["Color when player has six counters of mending."] = true,
		["Color when player has two counters of grace."] = true,
		["Color when player has three counters of grace."] = true,
		["Threshold to activate color 2"] = true,
		["Threshold to activate color 3"] = true,
		["Color 2"] = true,
		["Color 3"] = true,
		["Color 4"] = true,
		["Color 5"] = true,
		["Color 6"] = true,
		["Refresh frequency"] = true,
		["Seconds between status refreshes"] = true,
		["Count Lifebloom as 1 HoT per stack"] = true,
		["Check, if you want each stack of Lifebloom to count as 1 HoT"]= true,
		["Show HoT-Counter"] = true,
		["Check, if you want to see the total of HoTs behind the countdown of your HoT(i.e. 13-5)"]= true,
	}
end)

L:RegisterTranslations("zhCN", function()
	return {
		["My HoTs"] = "我的 HoTs",
		["Renew"] = "恢复",
		["Rejuvenation"] = "回春术",
		["Regrowth"] = "愈合",
		["Lifebloom"] = "生命绽放",
		["Wild Growth"] = "野性成长",
		["Sheath of Light"] = "圣光出鞘",
		["Sacred Shield"] = "Sacred Shield", --need translation,
		["Riptide"] = "激流",
		["Earthliving"] = "大地生命",
		["Buff: Hot Count"] = "增益：Hot 统计",
		["Buff: My Renew"] = "增益：我的恢复",
		["Buff: My Rejuvenation"] = "增益：我的回春",
		["Buff: My Regrowth"] = "增益：我的愈合",
		["Buff: My Lifebloom"] = "增益：我的生命绽放",
		["Buff: Lifebloom Stack Colored"] = "增益：生命绽放叠加染色",
		["Buff: My Wild Growth"] = "增益：我的野性成长",
		["Buff: My Sheath of Light"] = "增益：我的圣光出鞘",
		["Buff: My Sacred Shield"] = "Buff: My Sacred Shield", --need translation
		["Buff: My Riptide"] = "增益：我的激流",
		["Buff: My Earthliving"] = "增益：我的大地生命",
		["Prayer of Mending"] = "被治疗的玩家",
		["Beacon of Light"] = "圣光道标",
		["Grace Stack"] = "恩赐叠加",
		["Grace Duration + Stack"] = "恩赐持续及叠加",
		["Color when player has two counters of mending."] = "当玩家拥有两层治疗效果的时候染色",
		["Color when player has three counters of mending."] = "当玩家拥有三层治疗效果的时候染色",
		["Color when player has four counters of mending."] = "当玩家拥有四层治疗效果的时候染色",
		["Color when player has five counters of mending."] = "当玩家拥有五层治疗效果的时候染色",
		["Color when player has six counters of mending."] = "当玩家拥有六层治疗效果的时候染色",
		["Color when player has two counters of grace."] = "当玩家拥有两层恩赐的时候染色",
		["Color when player has three counters of grace."] = "当玩家拥有三层恩赐的时候染色",
		["Threshold to activate color 2"] = "启动颜色2临界值",
		["Threshold to activate color 3"] = "启动颜色3临界值",
		["Color 2"] = "颜色2",
		["Color 3"] = "颜色3",
		["Color 4"] = "颜色4",
		["Color 5"] = "颜色5",
		["Color 6"] = "颜色6",
		["Refresh frequency"] = "刷新频率",
		["Seconds between status refreshes"] = "两次状态刷新间的时间",
		["Count Lifebloom as 1 HoT per stack"] = "每层生命绽放统计为1Hot",
		["Check, if you want each stack of Lifebloom to count as 1 HoT"]= "勾选后,每层生命绽放将作为1个Hot来统计",
		["Show HoT-Counter"] = "显示Hot计数器",
		["Check, if you want to see the total of HoTs behind the countdown of your HoT(i.e. 13-5)"]= "勾选后,在你的Hot冷却计数后可以看到总的Hot数量",
	}
end)

L:RegisterTranslations("zhTW", function()
	return {
		["My HoTs"] = "我的 HoTs",
		["Renew"] = "恢復",
		["Rejuvenation"] = "回春術",
		["Regrowth"] = "癒合",
		["Lifebloom"] = "生命之花",
		["Wild Growth"] = "野性成長",
		["Sheath of Light"] = "聖光之鞘",
		["Sacred Shield"] = "Sacred Shield", --need translation,
		["Riptide"] = "激流",
		["Earthliving"] = "大地生命",
		["Buff: Hot Count"] = "增益：HoT 數量",
		["Buff: My Renew"] = "增益：我的恢復",
		["Buff: My Rejuvenation"] = "增益：我的回春術",
		["Buff: My Regrowth"] = "增益：我的癒合",
		["Buff: My Lifebloom"] = "增益：我的生命之花",
		["Buff: Lifebloom Stack Colored"] = "增益：生命之花疊加染色",
		["Buff: My Wild Growth"] = "增益：我的野性成長",
		["Buff: My Sheath of Light"] = "增益：我的聖光之鞘",
		["Buff: My Sacred Shield"] = "Buff: My Sacred Shield", --need translation
		["Buff: My Riptide"] = "增益：我的激流",
		["Buff: My Earthliving"] = "增益：我的大地生命",
		["Prayer of Mending"] = "被治療的玩家",
		["Beacon of Light"] = "聖光信標",
		["Grace Stack"] = "恩典疊加",
		["Grace Duration + Stack"] = "恩典持續及疊加",
		["Color when player has two counters of mending."] = "當玩家擁有兩層治療效果的時候染色",
		["Color when player has three counters of mending."] = "當玩家擁有三層治療效果的時候染色",
		["Color when player has four counters of mending."] = "當玩家擁有四層治療效果的時候染色",
		["Color when player has five counters of mending."] = "當玩家擁有五層治療效果的時候染色",
		["Color when player has six counters of mending."] = "當玩家擁有六層治療效果的時候染色",
		["Color when player has two counters of grace."] = "當玩家擁有兩層恩典的時候染色",
		["Color when player has three counters of grace."] = "當玩家擁有三層恩典的時候染色",
		["Threshold to activate color 2"] = "啟動顏色2階段值",
		["Threshold to activate color 3"] = "啟動顏色3階段值",
		["Color 2"] = "顏色2",
		["Color 3"] = "顏色3",
		["Color 4"] = "顏色4",
		["Color 5"] = "顏色5",
		["Color 6"] = "顏色6",
		["Refresh frequency"] = "刷新頻率",
		["Seconds between status refreshes"] = "兩次狀態刷新間的時間",
		["Count Lifebloom as 1 HoT per stack"] = "每層生命綻放統計為1Hot",
		["Check, if you want each stack of Lifebloom to count as 1 HoT"]= "勾選後,每層生命綻放將作為1個Hot來統計",
		["Show HoT-Counter"] = "顯示Hot計數器",
		["Check, if you want to see the total of HoTs behind the countdown of your HoT(i.e. 13-5)"]= "勾選後,在你的Hot冷卻計數後可以看到總的Hot數量",
	}
end)
