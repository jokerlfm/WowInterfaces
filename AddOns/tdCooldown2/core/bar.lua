tCDblackData = {};
tCDcoolingData = {};

local _G = _G;
local tremove = tremove;
local tinsert = tinsert;
local format = format;
local select = select;
local GetTime = GetTime;
local GetItemSpell = GetItemSpell;
local GetItemInfo = GetItemInfo;
local GetItemCooldown = GetItemCooldown;
local GetInventoryItemLink = GetInventoryItemLink;
local GetSpellTexture = GetSpellTexture;
local GetSpellCooldown = GetSpellCooldown;
local GetSpellName = GetSpellName;
local CreateFrame = CreateFrame;
local PlaySoundFile = PlaySoundFile;
local L = TDCOOLDOWN2_LACALE;

local tCD = tdCooldown2;
tCD.methods.barloaded = true;

tCD.bars = {};

local cooldownlist = {};
local centerData = {};
local succeededData = {};
local timers = tCD.bars;
local mode = select(3, GameFontHighlightSmall:GetFont());


local function Bar_Update(self)
	tCD:UpdateBar();
	tCD:UpdateCenter();
end

local f = CreateFrame("Frame");
f:SetScript("OnUpdate", Bar_Update);
f:Hide();

local function Center_Update(self, elapsed)
	self.finish = self.finish + arg1;
	local alpha = tCD.db.center.alpha;
	if self.finish > tCD.db.center.time / 2 then
		alpha = (1 - self.finish / tCD.db.center.time) * 2 * alpha;
	end
	self:SetAlpha(alpha)

	if self.finish >= tCD.db.center.time then
		tremove(centerData,1)
		self.finish = 0
		self:Hide()
	end
end

function tCD:TestRank(rank)
	return rank and tonumber(rank:match(L.Rank)) or 0;
end

function tCD:CreateBar(index)
	local bar = CreateFrame("StatusBar", nil, UIParent);
	local p, r, y;
	if self.db.bar.reverse then
		p = "BOTTOMLEFT"; r = "TOPLEFT"; y = self.db.bar.spacing;
	else
		p = "TOPLEFT"; r = "BOTTOMLEFT"; y = - self.db.bar.spacing;
	end
	bar.name = bar:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall");
	bar.name:SetJustifyH("LEFT");
	bar.name:SetPoint("LEFT", 2, 0);
	bar.name:SetFont(self.db.bar.font, self.db.bar.size, mode);
	
	bar.timer = bar:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall");
	bar.timer:SetJustifyH("RIGHT");
	bar.timer:SetPoint("LEFT", bar, "RIGHT", 2, 0);
	bar.icon = bar:CreateTexture(nil, "BACKGROUND");
	bar.icon:SetPoint("RIGHT", bar, "LEFT", -2, 0);
	--bar.icon:SetTexCoord(0.07, 0.93, 0.07, 0.93);
	bar.timer:SetFont(self.db.bar.font, self.db.bar.size, mode);
	
	bar:SetBackdrop({bgFile="Interface\\AddOns\\tdCooldown2\\media\\bar"});
	bar:SetStatusBarTexture("Interface\\AddOns\\tdCooldown2\\media\\bar");
	bar:SetBackdropColor(0.1, 0.1, 0.1, 0.7);
	
	bar:SetAlpha(self.db.bar.alpha);
	bar:SetWidth(self.db.bar.width);
	bar:SetHeight(self.db.bar.height);
	bar.name:SetWidth(self.db.bar.width);
	bar.name:SetHeight(self.db.bar.height);
	bar.icon:SetWidth(self.db.bar.height);
	bar.icon:SetHeight(self.db.bar.height);
	bar:SetPoint(p, timers[index-1], r, 0, y);

	timers[index] = bar;
	return bar
end

function tCD:GetInfo(id, type)
	if not id or not type then
		return;
	end
	local start, duration, icon, name, _;
	if type == "spell" or type == "pet" then
		start, duration, enable = GetSpellCooldown(id, type);
		icon = GetSpellTexture(id, type);
	elseif type == "item" then
		start, duration, enable = GetItemCooldown(id);
		name,_,_,_,_,_,_,_,_,icon = GetItemInfo(id);
	end
	return start, duration, enable, name, icon;
end

function tCD:GetFormattedBarTime(s)
	if s < 10 then
		return format("%.1f", s)
	elseif s < 3600 then
		return format("%d:%02d",floor(s/60),s%60)
	else
		return "> 1 h"
	end
end

function tCD:GetTablePos(table, var, value)
	for i, v in ipairs(table) do
		if (var and v[var] or v) == value then
			return i
		end
	end
	return nil
end

function tCD:GetSpellID(spell, rank)
	if not spell then
		return
	end
	local i, s, r = 1;
	while spell do
		s = GetSpellName(i, "spell")
		if not s then
			break
		end
		if s == spell then
			return i, "spell"
		end
		i = i + 1
	end
	local slots, link
	for i = 1, 19 do
		link = GetInventoryItemLink("player", i)
		if link then
			s, r = GetItemSpell(link)
			r = self:TestRank(r)
			if s and s == spell and r == rank then
				return link, "item"
			end
		end
	end
	for i = 0, 4 do
		slots = GetContainerNumSlots(i)
		if slots > 0 then
			for j = 1, slots do
				link = GetContainerItemLink(i, j)
				if link then
					s, r = GetItemSpell(link)
					r = self:TestRank(r)
					if s and s == spell and r == rank then
						return link, "item"
					end
				end
			end
		end
	end
end

function tCD:GetBarColor(value)
	local r, g
	if value > 0.5 then
		r = (1 - value) * 2;
		g = 1;
	else
		r = 1;
		g = value * 2;
	end
	return r, g, 0;
end

function tCD:QuitCooling(i)
	if i and tCDcoolingData[i] then
		local spell = tCDcoolingData[i].spell
		tremove(tCDcoolingData, i)
		cooldownlist[spell] = nil
	end
end

function tCD:UpdateBar()
	local timer, time, maxValue
	for i, v in ipairs(tCDcoolingData) do
		if tCDblackData[v.name] or tCDblackData[v.spell] then
			self:QuitCooling(i);
		else
			time = v.start + v.duration - GetTime();
			if time <= 0 then
				if self.db.center.config then
					tinsert(centerData, v);
				end
				if self.db.bar.sound then
					PlaySoundFile("Interface\\AddOns\\tdCooldown2\\media\\sound.wav");
				end
				self:QuitCooling(i);
			elseif time < self.db.bar.min then
				tCDcoolingData[i].locked = true;
			elseif time > v.duration then
				self:QuitCooling(i);
			end

			if not self.db.bar.hidden and cooldownlist[v.spell] then
				timer = timers[i] or self:CreateBar(i);
				maxValue = select(2, timer:GetMinMaxValues());
				if maxValue ~= v.duration then
					timer:SetMinMaxValues(0, v.duration);
				end
				if timer.name:GetText() ~= (v.name or v.spell) then
					timer.name:SetText(v.name or v.spell);
				end
				if timer.icon:GetTexture() ~= v.icon then
					timer.icon:SetTexture(v.icon);
				end
				timer:SetStatusBarColor(self:GetBarColor(time / v.duration));
				timer.timer:SetText(self:GetFormattedBarTime(time));
				timer:SetValue(time);
				timer:Show();
			end
		end
	end
	if #(tCDcoolingData) >= #(timers) then
		return
	end
	for i = #(tCDcoolingData) + 1, #(timers) do
		timers[i]:Hide();
	end
end

function tCD:FormatCenterText(text)
	if not text then return "" end
	return format(L.CDOver, format("|cff%2x%2x%2x%s|r", self.db.center.r * 255, self.db.center.g * 255, self.db.center.b * 255, text));
end

function tCD:UpdateCenterStyle(frame)
	if frame then
		frame:SetWidth(self.db.center.width);
		frame:SetHeight(self.db.center.width);
		frame:SetAlpha(self.db.center.alpha);
		frame:ClearAllPoints();
		frame:SetPoint(self.db.center.position.p, UIParent, self.db.center.position.r, self.db.center.position.x, self.db.center.position.y);
		if self.db.center.style == 1 then
			frame:SetBackdrop{
				bgFile = "Interface/ChatFrame/ChatFrameBackground",
				edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
				edgeSize = 14, tileSize = 20, tile = true, 
				insets = {left = 2, right = 2, top = 2, bottom = 2}
			};
			frame:SetBackdropColor(0, 0, 0, 0.7);
			frame:SetBackdropBorderColor(0.7, 0.7, 0.7);
			
			frame.icon:SetTexCoord(0.07, 0.93, 0.07, 0.93);
			frame.icon:ClearAllPoints();
			frame.icon:SetPoint("TOPLEFT", 5, -5);
			frame.icon:SetPoint("TOPRIGHT", -5, -5);
			frame.icon:SetPoint("BOTTOMLEFT", 5, 5);
			frame.icon:SetPoint("BOTTOMRIGHT", -5, 5);
		elseif self.db.center.style == 2 then
			frame:SetBackdrop{
				bgFile = "", edgeFile = "",
				edgeSize = 0, tileSize = 0, tile = true, 
				insets = {left = 0, right = 0, top = 0, bottom = 0}
			};
			frame:SetBackdropColor(0, 0, 0, 0);
			frame:SetBackdropBorderColor(0, 0, 0);
			
			frame.icon:SetTexCoord(0, 1, 0, 1);
			frame.icon:ClearAllPoints();
			frame.icon:SetAllPoints(frame);
		elseif self.db.center.style == 3 then
			frame:SetBackdrop{
				bgFile = "", edgeFile = "",
				edgeSize = 0, tileSize = 0, tile = true, 
				insets = {left = 0, right = 0, top = 0, bottom = 0}
			};
			frame:SetBackdropColor(0, 0, 0, 0);
			frame:SetBackdropBorderColor(0, 0, 0);
			
			frame.icon:SetTexCoord(0.07, 0.93, 0.07, 0.93);
			frame.icon:ClearAllPoints();
			frame.icon:SetAllPoints(frame);
		end
			
		frame.text:SetFont(self.db.center.font, self.db.center.size, "OUTLINE");
		if self.db.center.text then
			frame.text:Show();
		else
			frame.text:Hide();
		end
		
		frame.icon:SetBlendMode(self.db.center.mode and "ADD" or "BLEND");
	end
end

function tCD:UpdateCenter()
	if self.db.center.config and #(centerData) > 0 and (not self.center or not self.center:IsVisible()) then
		if not self.center then
			local center = CreateFrame("frame", nil, UIParent);
			center:Hide();
			center:SetFrameStrata("HIGH");
			
			center:SetScript("OnUpdate", Center_Update);
			
			center.icon = center:CreateTexture(nil, "OVERLAY");
			center.icon:Show();
			
			center.text = center:CreateFontString(nil, "ARTWORK");
			center.text:SetPoint("TOP", center, "BOTTOM");
			
			self:UpdateCenterStyle(center)
			self.center = center;
		end
		
		self.center.icon:SetTexture(centerData[1].icon);
		self.center.text:SetText(self:FormatCenterText(centerData[1].name or centerData[1].spell));
		
		self.center.finish = 0
		self.center:Show()
	end
end
---- event
function tCD:ToggleCenter(tog)
	if tog then
		self:RegisterEvent("SPELL_UPDATE_COOLDOWN")
		self:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
		self:RegisterEvent("PLAYER_ENTERING_WORLD")
		f:Show();
	else
		self:UnregisterEvent("SPELL_UPDATE_COOLDOWN")
		self:UnregisterEvent("UNIT_SPELLCAST_SUCCEEDED")
		self:UnregisterEvent("PLAYER_ENTERING_WORLD")
		f:Hide();
	end
end

function tCD:EnableCenter()
	local pos = CreateFrame("Button", nil, UIParent, "UIPanelButtonTemplate")
	pos:SetWidth(60); pos:SetHeight(20)
	pos:SetText(L.Move)
	pos:SetPoint(self.db.bar.position.p, UIParent, self.db.bar.position.r, self.db.bar.position.x, self.db.bar.position.y)
	pos:SetMovable(true)
	pos:EnableMouse(true)
	pos:RegisterForDrag("LeftButton")
	pos:SetScript("OnDragStart",function(self) self:StartMoving() end)
	pos:SetScript("OnDragStop",function(self)
		self:StopMovingOrSizing()
		local p, _, r, x, y = self:GetPoint()
		tCD.db.bar.position.p = p; tCD.db.bar.position.r = r; tCD.db.bar.position.x = x; tCD.db.bar.position.y = y
	end)
	pos:RegisterForClicks("RightButtonUp")
	pos:SetScript("OnClick", function(self, button)
		if button == "RightButton" then
			self:Hide();
			tCD.db.bar.locked = true;
		end
	end)
	pos:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT");
		GameTooltip:SetText(L["RightClick to locked"]);
		GameTooltip:Show()
	end);
	pos:SetScript("OnLeave", function(self) GameTooltip:Hide() end)
	
	timers[0] = pos
	if self.db.bar.locked then
		pos:Hide()
	else
		pos:Show()
	end
	self:ToggleCenter(self.db.bar.config)
end

function tCD:SPELL_UPDATE_COOLDOWN()
	local start, duration, enable, name, icon, pos
	for i, v in ipairs(succeededData) do
		start, duration, enable, name, icon = self:GetInfo(v.id, v.type)
		if start and duration and enable and enable > 0 and start > 0 and duration > self.db.bar.min then
			if cooldownlist[v.spell] then
				pos = self:GetTablePos(tCDcoolingData, "spell", v.spell)
				if pos then
					local date = tCDcoolingData[pos]
					if start ~= date.start or duration ~= date.duration then
						tCDcoolingData[pos].start = start
						tCDcoolingData[pos].duration = duration
					end
				end
			else
				tinsert(tCDcoolingData, {
					spell = v.spell,
					rank = v.rank,
					name = name,
					icon = icon,
					start = start,
					duration = duration,
				})
				cooldownlist[v.spell] = true
				tremove(succeededData, i)
			end
		end
	end
	self:TestAllCooling()
end

function tCD:TestAllCooling()
	local id, type, start, duration
	for i, v in ipairs(tCDcoolingData) do
		if not v.locked then
			id, type = self:GetSpellID(v.spell, v.rank)
			if id and type then
				start, duration, enable = self:GetInfo(id, type)
				if not start or start == 0 or duration < self.db.bar.min or not enable or enable <= 0 then
					self:QuitCooling(i)
				else
					cooldownlist[v.spell] = true
				end
			end
		end
	end
end

function tCD:CreateTestBar()
	for i=1, 5 do
		tinsert(tCDcoolingData, {
			spell = "Test"..i,
			rank = i,
			name = "Test"..i,
			icon = "Interface\\Icons\\Spell_Holy_SealOfMight",
			start = GetTime(),
			duration = 5 + 5 * (i - 1),
		})
		cooldownlist["Test"..i] = true;
	end
end

function tCD:UNIT_SPELLCAST_SUCCEEDED(unit, spell, rank)
	if unit ~= "player" or tCDblackData[spell] then
		return
	end
	local pos = self:GetTablePos(succeededData, "spell", spell)
	if not pos then
		rank = self:TestRank(rank)
		local id, type = self:GetSpellID(spell, rank)
		if id then
			if type == "item" then
				local name = GetItemInfo(id)
				if name and tCDblackData[name] then
					return
				end
			end
			tinsert(succeededData, {id = id, type = type, spell = spell, rank = rank, num = 1})
		end
	else
		succeededData[pos].num = succeededData[pos].num + 1
		if succeededData[pos].num >= 8 then
			tCDblackData[spell] = select(5, self:GetInfo(self:GetSpellID(spell, rank)));
			tremove(succeededData, pos)
		end
	end
end

function tCD:PLAYER_ENTERING_WORLD()
	local start, duration, id, type, timed;
	for i, v in ipairs(tCDcoolingData) do
		if v.spell == "Test Spell" then
			tremove(tCDcoolingData, i);
			cooldownlist[v.spell] = nil;
		else
			id, type = self:GetSpellID(v.spell, v.rank);
			if not id then
				self:QuitCooling(i);
			else
				start, duration, enable = self:GetInfo(id, type);
				timed = GetTime() - start;
				if not enable or enable <= 0 or not start or start == 0 or duration < self.db.bar.min or timed < 0 or timed > duration then
					self:QuitCooling(i);
				else
					cooldownlist[v.spell] = true;
				end
			end
		end
	end
end
