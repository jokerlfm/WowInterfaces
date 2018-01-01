local CQI = Cartographer_QuestInfo
local L = LibStub("AceLocale-3.0"):GetLocale("Cartographer_QuestInfo");
local BZR = LibStub("LibBabble-Zone-3.0"):GetReverseLookupTable()
local Dewdrop = AceLibrary("Dewdrop-2.0");
local Tablet = AceLibrary("Tablet-2.0")
local Tourist = LibStub("LibTourist-3.0")
local Quixote = LibStub("LibQuixote-2.0")
local CN = CQI:GetModule("Notes");

-------------------------------------------------------------------

local DB_NAME = "QuestInfo"

local CQI_NOTES = {}
local CQI_WORLD
local CQI_BUTTON

local CQI_TYPES = {
    ["start"] = {
        title = L["Quest Start"],
        icon = "Interface\\AddOns\\QuestInfo\\Artwork\\Mark_Start",
    },
    ["end"] = {
        title = L["Quest End"],
        icon = "Interface\\AddOns\\QuestInfo\\Artwork\\Mark_End",
    },
    ["giver"] = {
        title = L["Quest Giver"],
        icon = "Interface\\AddOns\\QuestInfo\\Artwork\\Mark_Giver",
    },
    ["obj"] = {
        title = L["Quest Objective"],
        icon = "Interface\\AddOns\\QuestInfo\\Artwork\\Mark_Obj",
    },
    ["obj-daily"] = {
        title = L["Quest Objective"],
        icon = "Interface\\AddOns\\QuestInfo\\Artwork\\Mark_Daily",
    },
}

-------------------------------------------------------------------

function CQI:EnableCartoMap()
    if self.db.profile.cartoButton then
        self:ToggleCartoButton("hide")
    end

    if not CQI.noteDefaults then
        CQI.noteDefaults = {
            titleCol = CN.getColorID(1, 0.5, 0)
        }
    end

    for id, v in pairs(CQI_TYPES) do
        CN:RegisterIcon(DB_NAME.."-"..id, {
            text = v.title,
            path = v.icon,
            width = 18,
            height = 18,
        })
    end

    --self:Hook_IsNoteHidden("Quests")
    --self:Hook_IsNoteHidden("Quest Objectives")

    CN:RegisterNotesDatabase(DB_NAME, CQI_NOTES, self)
    CN:RefreshMap(true)
end

function CQI:DisableCartoMap()
    CN:UnregisterNotesDatabase(DB_NAME)

    for id in pairs(CQI_TYPES) do
        CN:UnregisterIcon(DB_NAME.."-"..id)
    end

    if self.db.profile.cartoButton then
        self:ToggleCartoButton("hide")
    end
end

-------------------------------------------------------------------

function CQI:CreateCartoButton()
    local options = {
        current = {
            name = L["Show active quests"],
            desc = L["Show all info of active quests on current map."],
            type = "execute",
            func = function() self:ShowActiveQuests(); Dewdrop:Close() end,
            order = 10,
        },
        track = {
            name = L["Show tracked quests"],
            desc = L["Show all info of tracked quests on current map."],
            type = "execute",
            func = function() self:ShowActiveQuests(true); Dewdrop:Close() end,
            order = 15,
        },
        available = {
            name = L["Show available quests"],
            desc = L["Show the givers of available quests on current map."],
            type = "execute",
            func = function() self:ShowAvialableQuests(); Dewdrop:Close() end,
            order = 20,
        },
        clear = {
            name = L["Clear quest icons"],
            desc = L["Clear quest icons generated by QuestInfo."],
            type = "execute",
            func = function() self:ClearQuestNotes(); Dewdrop:Close() end,
            order = 30,
        },
        auto = {
            name = L["Auto update quest icons"],
            desc = L["Auto update quest icons after quest or objective completed."],
            type = "toggle",
            get = function() return CQI.db.profile.autoUpdate end,
            set = function() self.db.profile.autoUpdate = not self.db.profile.autoUpdate end,
            order = 40,
        },
        trackedonly = {
            name = L["Update tracked quests only"],
            desc = L["Update tracked quests only, or update all active quests."],
            type = "toggle",
            disabled = function() return not self.db.profile.autoUpdate end,
            get = function() return self.db.profile.trackedOnly end,
            set = function() self.db.profile.trackedOnly = not self.db.profile.trackedOnly end,
                order = 50,
        },
    }

    local button = CreateFrame("Button", "QuestInfoButton", WorldMapFrame, "UIPanelButtonTemplate")
    button:SetText(L["Quest Info"])
    button:SetWidth(button:GetTextWidth() + 30)
    button:SetHeight(22)
    button:ClearAllPoints();
    button:SetPoint("TOPLEFT", WorldMapPositioningGuide, "TOPLEFT", 205, -35);

    button:SetScript("OnClick", function(this)
        Dewdrop:Register(this,
            "children", { type = "group", args = options },
            "dontHook", true,
            "point", "TOPRIGHT",
            "relativePoint", "BOTTOMRIGHT"
        )
        this:SetScript("OnClick", function()
            if IsAltKeyDown() then
                self:ShowActiveQuests(self.db.profile.trackedOnly)
                Dewdrop:Close()
                return
            end
            if IsShiftKeyDown() then
                self:ClearQuestNotes()
                Dewdrop:Close()
                return
            end
            if Dewdrop:IsOpen(this) then
                Dewdrop:Close()
            else
                Dewdrop:Open(this)
            end
        end)
        this:GetScript("OnClick")()
    end)

    button:SetScript("OnEnter", function(this)
        GameTooltip_SetDefaultAnchor(GameTooltip, this)
        GameTooltip:SetText(L["Open QuestInfo menu"], HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b)
        if self.db.profile.trackedOnly then
            GameTooltip:AddLine("|cffeda55f"..L["Alt-Click: "].."|r"..L["Show tracked quests"], 0, 1, 0)
        else
            GameTooltip:AddLine("|cffeda55f"..L["Alt-Click: "].."|r"..L["Show active quests"], 0, 1, 0)
        end
        GameTooltip:AddLine("|cffeda55f"..L["Shift-Click: "].."|r"..L["Clear quest icons"], 0, 1, 0)
        GameTooltip:Show()
    end)

    button:SetScript("OnLeave", function(this)
        GameTooltip:Hide()
    end)

    return button
end

function CQI_ToggleAutoUpdate(switch)
    if (switch) then
        CQI.db.profile.autoUpdate = true;
    else
        CQI.db.profile.autoUpdate = false;
    end

end

function CQI:ToggleCartoButton(mode)
    local on = not self.db.profile.cartoButton
    if mode == "show" then
        on = true
    elseif mode == "hide" then
        on = false
    end
    if on then
        if not CQI_BUTTON then
            CQI_BUTTON = self:CreateCartoButton()
        end
        CQI_BUTTON:Show()
        --C:AddMapButton(CQI_BUTTON, -2)
    else
        if CQI_BUTTON then
            --C:RemoveMapButton(CQI_BUTTON)
            CQI_BUTTON:Hide()
        end
    end
    if not mode then
        self.db.profile.cartoButton = on
    end
end

-------------------------------------------------------------------

function CQI:ClearQuestNotes()
    CN:UnregisterNotesDatabase(DB_NAME)
    CQI_NOTES = {}
    CN:RegisterNotesDatabase(DB_NAME, CQI_NOTES, self)
    CN:RefreshMap()
end

function CQI:AddQuestNotes(quest, title, type, npc, by_zone)
    if not npc or not npc.loc then return end

    for zone, pos in pairs(npc.loc) do
        if BZR[zone] and (not by_zone or by_zone == zone) then
            for _, l in ipairs(pos) do
                if l.x ~= 0 or l.y ~= 0 then
                    local level = ""
                    if npc.level_min and npc.level_max then
                        if npc.level_min == npc.level_max then
                            level = level..npc.level_min
                        else
                            level = level..string.format("%d - %d", npc.level_min, npc.level_max)
                        end
                    end
                    if npc.classify == 1 then
                        level = level.." |cffff66ff"..L["Elite"].."|r"
                    elseif npc.classify == 2 then
                        level = level.." |cffffaaff"..L["Rare Elite"].."|r"
                    elseif npc.classify == 3 then
                        level = "|cffff0000"..L["Boss"].."|r"
                    end
                    CN:SetNote(zone, l.x / 100, l.y / 100, DB_NAME.."-"..type, DB_NAME,
                        "quest", quest,
                        "title", title,
                        "type", type,
                        "level", level,
                        "name", npc.name)
                end
            end
        end
    end
end

function CQI:UpdateMapInfo()
    if not CQI_WORLD then
        CQI_WORLD = {}
        local continents = { GetMapContinents() }
        for i = 1, #continents do
            local zones = { GetMapZones(i) }
            for j = 1, #zones do
                if not CQI_WORLD[zones[j]] then
                    CQI_WORLD[zones[j]] = { i, j }
                end
            end
        end
    end
end

function CQI:GotoQuestZone(zone)
    self:CloseLocationFrame()
    ShowUIPanel(WorldMapFrame)

    self:UpdateMapInfo();

    if(Tourist:IsInstance(zone)) and (InstanceMaps)then
        InstanceMaps:ShowInstance(BZR[zone]);
        return;
    end
    if CQI_WORLD[zone] then
            local idx = CQI_WORLD[zone]
            SetMapZoom(idx[1], idx[2])
    elseif Tourist:IsInstance(zone) and Cartographer_InstanceMaps then
            Cartographer_InstanceMaps:ShowInstance(BZR[zone])
    end
end

function CQI:OpenQuestMap(quest, title, type, zone, npc_list)
    for _, npc in ipairs(npc_list) do
        self:AddQuestNotes(quest, title, type, npc, zone)
    end
    self:GotoQuestZone(zone)
end

function CQI:BatchAddQuestNotes(quest, title, type, zone, npc_list)
    for _, npc in ipairs(npc_list) do
        self:AddQuestNotes(quest, title, type, npc, zone)
    end
end
-------------------------------------------------------------------

function CQI:ShowActiveQuests(tracked_only, all_zones)
    self:ClearQuestNotes()
    local zone = not all_zones and CN:GetCurrentLocalizedZoneName()
    for _, uid in Quixote:IterateQuestsByLevel() do
        local _, qid, _, _, _, nobjs, complete = Quixote:GetQuestByUid(uid)
        local q = self:GetQuest(uid)
        if q and (not tracked_only or IsQuestWatched(qid)) then
            if q.start_npc and complete ~= 1 then
                self:AddQuestNotes(q.title_full, L["Quest Start"], "start", q.start_npc, zone)
            end
            if q.end_npc then
                self:AddQuestNotes(q.title_full, L["Quest End"], "end", q.end_npc, zone)
            end
            if q.objs and complete ~= 1 then
                local q_obj_type = q.daily and "obj-daily" or "obj"
                for oid = 1, nobjs do
                    local obj = q.objs[oid]
                    if obj then
                        local desc, _, done = GetQuestLogLeaderBoard(oid, qid)
                        if desc and obj.npcs and not done then
                            self:BatchAddQuestNotes(q.title_full, obj.title, q_obj_type, zone, obj.npcs);
                            --[[
                            for _, npc in ipairs(obj.npcs) do
                                self:AddQuestNotes(q.title_full, obj.title, q_obj_type, npc, zone)
                            end
                            ]]
                        end
                    end
                end
            end
        end
    end
end

-------------------------------------------------------------------

local _aq

function CQI:BatchShowAvialableQuests()
    while true do
        local npc_id, entry = next(_aq.npcs, _aq.current)
        if not npc_id then break end

        if not entry.sorted then
            table.sort(entry.quests, function(a, b)
                return a.level < b.level or (a.level == b.level and a.uid < b.uid)
            end)
            entry.sorted = true
        end

        local quests = {}
        for _, quest in ipairs(entry.quests) do
            if self.db.profile.availQuestTitle then
                local title = self:GetQuestText(quest.uid, quest.level)
                if title then
                    local r, g, b = self:GetQuestColor(quest.level)
                    table.insert(quests, string.format("|cff%02x%02x%02x%s|r", r * 0xff, g * 0xff, b * 0xff, title))
                elseif _aq.retry < 15 then
                    _aq.retry = _aq.retry + 1
                    -- self:AddTimer("CQI-BatchShowAvialableQuests", _aq.retry / 2, self.BatchShowAvialableQuests, self)
                    self:ScheduleTimer("BatchShowAvialableQuests", _aq.retry / 2, self)
                    return
                end
            else
                table.insert(quests, string.format("[%d] Q#%d", quest.level, quest.uid))
            end
        end
        self:AddQuestNotes(quests, L["Quest Giver"], "giver", entry.npc, _aq.zone)

        _aq.retry = 0
        _aq.current = npc_id
    end
end

function CQI:ShowAvialableQuests()
    self:ClearQuestNotes()

    local zone = CN:GetCurrentLocalizedZoneName()
    local player_level = UnitLevel("player")
    local player_high = player_level + 5
    local player_low = player_level - GetQuestGreenRange()
    local npcs = {}

    if self.db.profile.showAllAvail then
        player_high = 80
        player_low = 0
    end

    _aq = {}
    _aq.npcs = npcs
    _aq.zone = zone
    _aq.retry = 0
    _aq.current = nil

    for uid in pairs(QuestInfo_Quest) do
        local level, level_req, start_npc = self:PeekQuest(uid)
        if player_level >= level_req and level >= player_low and level < player_high then
            start_npc = start_npc and self:GetNPC(start_npc)
            if start_npc and start_npc.loc then
                local start_here = false
                for npc_zone in pairs(start_npc.loc) do
                    if npc_zone == zone then
                        start_here = true
                        break
                    end
                end
                if start_here then
                    local complete = select(7, Quixote:GetQuestByUid(uid))
                    if complete ~= 1 then
                        if (self:CanAcceptQuest(uid)) then
                            if not npcs[start_npc.id] then
                                npcs[start_npc.id] = {
                                    npc = start_npc,
                                    quests = {},
                                }
                            end
                            if self.db.profile.availQuestTitle then
                                self:GetQuestText(uid, level) -- make wow cache title
                            end
                            table.insert(npcs[start_npc.id].quests, {
                                uid = uid,
                                level = level,
                            })
                        end
                    end
                end
            end
        end
    end

    if next(npcs) then
        self:BatchShowAvialableQuests()
    end
end

-------------------------------------------------------------------

function CQI:OnNoteTooltipRequest(zone, id, data, inMinimap)
    if data.type == "giver" then
        Tablet:SetTitle(data.name)
    else
        Tablet:SetTitle(data.quest)
    end
    Tablet:SetTitleColor(1, 0.5, 0)

    local sub_title = CQI_TYPES[data.type] and CQI_TYPES[data.type].title or L["Quest Objective"]
    local cat = Tablet:AddCategory(
        "text", sub_title,
        "columns", 2,
        "justify2", "RIGHT"
    )

    if data.type == "start" or data.type == "end" then
        cat:AddLine("text", L["Name:"], "text2", data.name)
    elseif data.type == "obj" or data.type == "obj-daily" then
        cat:AddLine("text", L["Objective:"], "text2", data.title)
        if data.title ~= data.name then
            cat:AddLine("text", L["Source:"], "text2", data.name)
        end
    end

    if data.level and data.level ~= "" then
        cat:AddLine("text", L["Level:"], "text2", data.level)
    end

    if not inMinimap then
        local x, y = CN.getXY(tonumber(id))
        Tablet:AddCategory("hideBlankLine", true, "columns", 2):AddLine(
            "text", L["Location:"], "text2", string.format("<%d,%d>", math.floor(x * 100), math.floor(y * 100)))
    end

    if data.type == "giver" then
        if self.db.profile.availQuestTitle then
            cat = Tablet:AddCategory("hideBlankLine", true)
            cat:AddLine("text", L["Quests:"])
            for _, q in ipairs(data.quest) do
                cat:AddLine("text", "    "..q)
            end
        else
            Tablet:AddCategory("hideBlankLine", true, "columns", 2):AddLine(
                "text", " ", "text2", L["%d Quests"]:format(#data.quest))
        end
    end
end

function CQI:OnNoteTooltipLineRequest(zone, id, data, inMinimap)
    local sub_title = CQI_TYPES[data.type] and CQI_TYPES[data.type].title or L["Quest Objective"]
    if data.type == "giver" then
        return "text", string.format("%s: %s - %s", sub_title, L["%d Quests"]:format(#data.quest), data.name)
    else
        return "text", string.format("%s: %s - %s", sub_title, data.quest, data.name)
    end
end

--[[
function CQI:IsMiniNoteHidden(zone, id, data)
    return not self.db.profile.minimapIcons
end

function CQI:GetNoteTransparency(zone, id, data)
    return self.db.profile.iconAlpha
end

function CQI:GetNoteScaling(zone, id, data)
    return self.db.profile.iconScale
end

function CQI:Hook_IsNoteHidden(mod)
    local obj = C:HasModule(mod) and C:GetModule(mod)
    if not obj or obj.IsNoteHiddenHooked then return end
    obj.IsNoteHiddenHooked = obj.IsNoteHidden
    obj.IsNoteHidden = function(self, zone, id, ...)
        if CQI_NOTES[zone] and CQI_NOTES[zone][id] then
            return true
        end
        return obj.IsNoteHiddenHooked and obj.IsNoteHiddenHooked(self, zone, id, ...)
    end
end
]]
-------------------------------------------------------------------

function CQI:BatchShowActiveQuests()
    if InCombatLockdown() then
        -- self:AddTimer("CQI-BatchShowActiveQuests", 2, self.BatchShowActiveQuests, self)
        self:ScheduleTimer("BatchShowActiveQuests", 2, self)
        return
    end
    self:ShowActiveQuests(self.db.profile.trackedOnly, true)
end

function CQI:AutoUpdateQuest(event, title, uid)
    if not self.db.profile.autoUpdate then return end
    -- self:AddTimer("CQI-BatchShowActiveQuests", 0, self.BatchShowActiveQuests, self)
    self:ScheduleTimer("BatchShowActiveQuests", 0, self)
end

function CQI:AutoUpdateQuestObjective(event, title, uid, objective, had, got, need, t)
    if not self.db.profile.autoUpdate then return end
    got = (t == "reputation") and Quixote:GetReactionLevel(got) or tonumber(got)
    need = (t == "reputation") and Quixote:GetReactionLevel(need) or tonumber(need)
    if not got or not need or got < need then return end
    -- self:AddTimer("CQI-BatchShowActiveQuests", 0, self.BatchShowActiveQuests, self)
    self:ScheduleTimer("BatchShowActiveQuests", 0, self)
end
