local _G = _G;
local format = format;
local floor = floor;
local ceil = ceil;
local next = next;
local find = string.find;

local CreateFrame = CreateFrame;
local GetTime = GetTime;

local timers = {};
local shines = {};
local actives = {};
local tCD = tdCooldown2;

tCD.methods.cdloaded = true;

tCD:SetScript("OnUpdate", function(self, elapsed) self:UpdateAllShines(elapsed) end);

tCD.style = {
	"Interface\\Cooldown\\star4",
	"Interface\\Cooldown\\ping4",
	"Interface\\Cooldown\\starburst",
	"Interface\\AddOns\\tdCooldown2\\media\\heart",
}

local function Timer_Update(self, elapsed)
	if not self.cooldown:IsVisible() then
		self:Hide();
	else
		if self.nextUpdate <= 0 then
			tCD:UpdateTimer(self);
		else
			self.nextUpdate = self.nextUpdate - elapsed;
		end
	end
end

local function Timer_Hide(self)
	self.nextUpdate = 0;
	self.cooldown:SetAlpha(1);
end

function tCD:GetButtonType(button)
	if button.unit then
		return "BUFF"
	else
		local name = button:GetName() or "";
		if find(name, "[Bb][Uu][Ff][Ff]") or find(name, "[Aa][Uu][Rr][Aa]") then
			return "BUFF"
		end
	end
	return "ACTION"
end

function tCD:HookCooldown()
	local methods = getmetatable(CreateFrame("Cooldown", nil, nil, "CooldownFrameTemplate")).__index;
	hooksecurefunc(methods, "SetCooldown", function(cooldown, start, duration)
		tCD:SetCooldown(cooldown, start, duration);
	end)
	hooksecurefunc(methods, "SetReverse", function(cooldown, reverse)
		cooldown.type = reverse and "BUFF" or "ACTION";
	end)
end

function tCD:SetCooldown(cooldown, start, duration)
	cooldown.button = cooldown.button or cooldown:GetParent();
	if cooldown.button then
		cooldown.type = cooldown.type or self:GetButtonType(cooldown.button);
		if cooldown.type then
			if start > 0 and duration > (self.db[cooldown.type].min or 0) and self.db[cooldown.type].config then
				self:StartTimer(cooldown, start, duration);
			elseif timers[cooldown] then
				timers[cooldown]:Hide();
			end
		end
	end
end

function tCD:CreateTimer(cooldown)
	local timer = CreateFrame("Frame", nil, cooldown.button);
	timer.cooldown = cooldown;
	
	timer:SetFrameLevel(cooldown:GetFrameLevel() + 5);
	timer:SetAllPoints(cooldown);
	timer:SetToplevel(true);
	timer:Hide();
	timer:SetScript("OnUpdate", Timer_Update);
	timer:SetScript("OnHide", Timer_Hide);

	local text = timer:CreateFontString(nil, "OVERLAY");
	text:SetPoint("CENTER", timer, self.db[cooldown.type].point or "CENTER", 0, 0);
	timer.text = text;

	if cooldown.button.icon then
		timer.icon = cooldown.button.icon;
	else
		local name = cooldown.button:GetName();
		if name then
			timer.icon = _G[name .. "Icon"] or _G[name .. "IconTexture"];
		end
	end

	timers[cooldown] = timer;
	return timer;
end

function tCD:UpdateTimer(timer)
	timer.cooldown:SetAlpha(self.db[timer.cooldown.type].hidecooldown and 0 or 1);
	
	local time = timer.duration - (GetTime() - timer.start);
	local max = self.db[timer.cooldown.type].max;
	if max and max > 0 and time > max then
		timer.text:Hide();
	elseif time > 0 then
		local str, scale, r, g, b, nextUpdate = self:GetFormattedTime(time, self.db[timer.cooldown.type].long);
		local size = timer:GetWidth() or timer.cooldown.button:GetWidth();
		size = floor(size / 36 * self.db[timer.cooldown.type].size * scale);
		
		if size <= 0 then
			timer.nextUpdate = 0.2;
		else
			timer.text:SetFont(self.db[timer.cooldown.type].font, size, "OUTLINE");
			timer.text:SetText(str);
			timer.text:SetTextColor(r, g, b);
			timer.text:SetAlpha(self.db[timer.cooldown.type].alpha);
			timer.text:SetPoint("CENTER", timer, self.db[timer.cooldown.type].point or "CENTER", 0, 0);
			timer.text:Show();
			timer.nextUpdate = nextUpdate;
		end
	else
		timer:Hide();
		if time > -1 and self.db[timer.cooldown.type].shine then
			self:StartShine(timer);
		end
	end
end

function tCD:StartTimer(cooldown, start, duration)
	local timer = timers[cooldown] or self:CreateTimer(cooldown);
	if timer then
		timer.start = start;
		timer.duration = duration;
		timer.nextUpdate = 0;
		timer:Show();
	end
end

function tCD:GetFormattedTime(t, long)
	local style, str, nextUpdate;
	if t < 9 then
		style = self.db.short;
		str = ceil(t);
		nextUpdate = t-floor(t);
	elseif t < 60 then
		style = self.db.secs;
		str = ceil(t);
		nextUpdate = t-floor(t);
	elseif t < 3600 then
		style = self.db.mins;
		if t < 600 and long then
			str = format("%d:%02d",floor(t/60),t%60);
			nextUpdate = t-floor(t);
		else
			str = format("%dm", ceil(t/60));
			nextUpdate = t%60;
		end
	elseif (t < 86400) then
		style = self.db.hrs;
		str = format("%dh", ceil(t/3600));
		nextUpdate = t%3600;
	else
		style = self.db.days;
		str = format("%dd", ceil(t));
		nextUpdate = t%86400;
	end
	return str, style.s, style.r, style.g, style.b, nextUpdate;
end

-- shine
function tCD:CreateShine(button)
	local frame = CreateFrame("Frame", nil, button);
	frame:SetAllPoints(button);
	frame:SetToplevel(true);

	local icon = frame:CreateTexture(nil, 'OVERLAY');
	icon:SetPoint('CENTER');
	icon:SetBlendMode('ADD');
	icon:SetHeight(frame:GetHeight());
	icon:SetWidth(frame:GetWidth());
	frame.icon = icon;

	shines[button] = frame;
	return frame;
end

function tCD:StartShine(timer)
	local icon = timer.icon;
	local button = timer.cooldown.button;
	if button and button:IsVisible() then
		local shine = shines[button] or self:CreateShine(button);
		if shine and not actives[shine] then
			shine.type = timer.cooldown.type;
			local style = self.style[self.db[shine.type].style];
			if not style and icon then
				shine.icon:SetTexture(icon:GetTexture());
			else
				shine.icon:SetTexture(style);
			end

			shine.completed = 0;
			shine:Show();

			actives[shine] = true;
			self:Show();
		end
	end
end

function tCD:UpdateShine(shine, elapsed)
	shine.completed = (shine.completed or 0) + elapsed;

	local scale = (self.db[shine.type].scale - 1) * (1 - shine.completed) + 1;

	if scale <= 1 then
		actives[shine] = nil;
		shine:Hide();
	else
		shine.icon:SetHeight(shine:GetHeight() * scale);
		shine.icon:SetWidth(shine:GetWidth() * scale);
	end
end

function tCD:UpdateAllShines(elapsed)
	if next(actives) then
		for shine in pairs(actives) do
			self:UpdateShine(shine, elapsed);
		end
	else
		self:Hide();
	end
end
