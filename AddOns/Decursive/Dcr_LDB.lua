--[[
    This file is part of Decursive.
    
    Decursive (v 2.4.2_beta_6-12-g708f71e) add-on for World of Warcraft UI
    Copyright (C) 2006-2007-2008-2009 John Wellesz (archarodim AT teaser.fr) ( http://www.2072productions.com/?to=decursive.php )

    This is the continued work of the original Decursive (v1.9.4) by Quu
    "Decursive 1.9.4" is in public domain ( www.quutar.com )

    Decursive is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Decursive is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Decursive.  If not, see <http://www.gnu.org/licenses/>.
    
--]]
-------------------------------------------------------------------------------

if not DcrLoadedFiles or not DcrLoadedFiles["DCR_init.lua"] then
    if not DcrCorrupted then message("Decursive installation is corrupted! (DCR_init.lua not loaded)"); end;
    DcrCorrupted = true;
    return;
end

local DC = DcrC;
local D = Dcr;
local L = D.L;
local BC = D.BC;
local DC = DcrC;
local DS = DC.DS;

local Tablet = D.T;
local TabletData = {};

local icon = LibStub("LibDBIcon-1.0")

local LDB = LibStub("LibDataBroker-1.1"):NewDataObject("Decursive", {
	type = "launcher",
	OnClick = function(Frame, button)
	    D:QuickAccess(Frame, button);
	end,
	
	text = "Decursive",
	label = "Decursive",
	
	icon = DC.IconOFF,
});


--{{{ function OnTooltipUpdate ()
local function OnTooltipUpdate ()

    if not D.DcrFullyInitialized then
	return;
    end

    D:Debug("Updating LDB tooltip");
    local cat = D.T:AddCategory(
    --'text', "Alpha",
    'columns', 2,
    'child_textR', 0,
    'child_textG', 1,
    'child_textB', 0,
    'child_textR2', 1,
    'child_textG2', 1,
    'child_textB2', 1,
    'child_justify2', 'LEFT'
    );

    cat:AddLine(
    'text', ("%s: "):format(D.L["HLP_RIGHTCLICK"]),
    'text2',  D.L["STR_OPTIONS"]
    );

    cat:AddLine(
    'text', ("%s-%s: "):format(D.L["ALT"],		D.L["HLP_RIGHTCLICK"]),
    'text2', D.L["BINDING_NAME_DCRSHOWOPTION"]
    );
    cat:AddLine(
    'text', ("%s-%s: "):format(D.L["CTRL"],		D.L["HLP_LEFTCLICK"]),
    'text2', D.L["BINDING_NAME_DCRPRSHOW"]
    );
    cat:AddLine(
    'text', ("%s-%s: "):format(D.L["SHIFT"],		D.L["HLP_LEFTCLICK"]),
    'text2', D.L["BINDING_NAME_DCRSKSHOW"]
    );
    cat:AddLine(
    'text', ("%s-%s: " ):format(D.L["SHIFT"],		D.L["HLP_RIGHTCLICK"]),
    'text2', D.L["BINDING_NAME_DCRSHOW"]
    );

    if (D.profile.debugging) then
	local HistoryIndex = 1;
	local cat2 = D.T:AddCategory(
	'text', "Debugging info",
	'columns', 2,
	'child_textR', 0.8,
	'child_textG', 1,
	'child_textB', 0.8,
	'child_textR2', 0.7,
	'child_textG2', 0.6,
	'child_textB2', 0.5,
	'child_justify1', 'LEFT',
	'child_justify2', 'LEFT'
	);

	cat2:AddLine(
	'text', "Afflicted units count:",
	'text2',  D.ForLLDebuffedUnitsNum
	);

	cat2:AddLine(
	'text', "Afflicted units count in range:",
	'text2',  D.MicroUnitF.UnitsDebuffedInRange
	);

	cat2:AddLine(
	'text', "Max Concurrent update events:",
	'text2',  D.Status.MaxConcurentUpdateDebuff
	);


	cat2:AddLine(
	'text', "Debuff seen history:",
	'text2',  " "
	);

	while HistoryIndex < 10 do
	    cat2:AddLine(
	    'text', HistoryIndex,
	    'text2',  (D:Debuff_History_Get (HistoryIndex, true))
	    );

	    HistoryIndex = HistoryIndex + 1;

	end

    end


end -- }}}

-- Tablet:Register code inspired by FubarPlugin 2.0 by Cameron Kenneth Knight

local function RegisterTablet (f)

    if not Tablet:IsRegistered(f) then
	D:Debug("was not registered!");

	Tablet:Register(f,'children',
	function()
	    Tablet:SetTitle("Decursive")
	    OnTooltipUpdate();
	end,
	'clickable', false,
	'data', TabletData,
	--'detachedData', TabletData,

	'point', function(frame) -- {{{
	if frame:GetTop() > GetScreenHeight() / 2 then
	    local x = frame:GetCenter()
	    if x < GetScreenWidth() / 3 then
		return "TOPLEFT", "BOTTOMLEFT"
	    elseif x < GetScreenWidth() * 2 / 3 then
		return "TOP", "BOTTOM"
	    else
		return "TOPRIGHT", "BOTTOMRIGHT"
	    end
	else
	    local x = frame:GetCenter()
	    if x < GetScreenWidth() / 3 then
		return "BOTTOMLEFT", "TOPLEFT"
	    elseif x < GetScreenWidth() * 2 / 3 then
		return "BOTTOM", "TOP"
	    else
		return "BOTTOMRIGHT", "TOPRIGHT"
	    end
	end
    end -- }}}

    );
end
end


LDB.OnEnter = function(frame) 
    RegisterTablet(frame);
    Tablet:Refresh(frame);
end

LDB.OnLeave = function(frame)
    if Tablet:IsRegistered(frame) then
	Tablet:Close(frame);
    end
end



function D:SetIcon (icon)
    LDB.icon = icon;
end

function D:SetMinimapIcon()
    if not icon:IsRegistered("Decursive") then
	icon:Register("Decursive", LDB, D.profile.MiniMapIcon);
    end
end

function D:HideMiniMapIcon()
    icon:Hide();
end

DcrLoadedFiles["Dcr_LDB.lua"] = "2.4.2_beta_6-12-g708f71e";
