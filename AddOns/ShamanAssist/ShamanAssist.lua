SMA = BLibrary("BEvent");
local ShamanAssist_0b06dea9bf1cc715c4a3c0abc3b69b5f = BLibrary("BUtils");
local ShamanAssist_27564b0f8fc08d6bd0345695785ce4b6 = BLocal("ShamanAssist");

local ShamanAssist_0c8385d3e3f450eda9b88c499f024a36 = function(ShamanAssist_c71e975bdc711bea69d2f28355ad0631)
    local ShamanAssist_8983c60d66c8593ec7165ea9dbedb584 = select(1, GetSpellInfo(ShamanAssist_c71e975bdc711bea69d2f28355ad0631));
    return ShamanAssist_8983c60d66c8593ec7165ea9dbedb584;
end

local ShamanAssist_f0b7c5974b79716f67ef56cb0d780a93 = function(ShamanAssist_c71e975bdc711bea69d2f28355ad0631)
    local ShamanAssist_51bbc6646cac6748cc62569220600b52 = select(3, GetSpellInfo(ShamanAssist_c71e975bdc711bea69d2f28355ad0631));
    return ShamanAssist_51bbc6646cac6748cc62569220600b52;
end

local ShamanAssist_c7ba0d321230216e108484b7221d0fb8 = ShamanAssist_0c8385d3e3f450eda9b88c499f024a36(39104);
local ShamanAssist_476e4e6d615566b374a12b737083550e = SMA;
ShamanAssist_476e4e6d615566b374a12b737083550e:RegisterEvent("ADDON_LOADED");
ShamanAssist_476e4e6d615566b374a12b737083550e.Headers = {};
ShamanAssist_476e4e6d615566b374a12b737083550e.Buttons = {};
ShamanAssist_476e4e6d615566b374a12b737083550e.lastTotem = nil;

ShamanAssist_476e4e6d615566b374a12b737083550e.ShamanAssist_05f492d1f8145ef64b455a4d55843958 = {
    [FIRE_TOTEM_SLOT] = {},
    [EARTH_TOTEM_SLOT] = {},
    [WATER_TOTEM_SLOT] = {},
    [AIR_TOTEM_SLOT] = {},
};

ShamanAssist_476e4e6d615566b374a12b737083550e.ShamanAssist_81160841f924f85a3118d1859a91ebce = {
    [FIRE_TOTEM_SLOT] = {},
    [EARTH_TOTEM_SLOT] = {},
    [WATER_TOTEM_SLOT] = {},
    [AIR_TOTEM_SLOT] = {},
};

ShamanAssist_476e4e6d615566b374a12b737083550e.ShamanAssist_f897f2e099a64c92cc66909fc41d8477 = nil;
ShamanAssist_476e4e6d615566b374a12b737083550e.ShamanAssist_7930ddfc65045e7b28c632e9f2f097be = 0;
ShamanAssist_476e4e6d615566b374a12b737083550e.ShamanAssist_60868f89d5121fe2c81d9406186ee6bc = false;
ShamanAssist_476e4e6d615566b374a12b737083550e.ShamanAssist_a2494914161822b6ae326dac19efeee7 = nil;
ShamanAssist_476e4e6d615566b374a12b737083550e._DEBUG = false;

SMA_Config = {
    ["TOTEMS"] = {
        [FIRE_TOTEM_SLOT] = 3599,
        [EARTH_TOTEM_SLOT] = 8071,
        [WATER_TOTEM_SLOT] = 5394,
        [AIR_TOTEM_SLOT] = 8177,
    },
    ["ORDER"] = {
        [FIRE_TOTEM_SLOT] = {},
        [EARTH_TOTEM_SLOT] = {},
        [WATER_TOTEM_SLOT] = {},
        [AIR_TOTEM_SLOT] = {},
    },
    ["OPTIONS"] = {
        ["locked"] = false,
        ["alpha"] = 1.0,
        ["scale"] = 1.0,
        ["arrangement"] = "horizontal",
        ["popDirect"] = 1,
        ["popMethod"] = 1,
        ["notifyEnd"] = false,
        ["notifyMana"] = false,
    },
};

ShamanAssist_476e4e6d615566b374a12b737083550e.ShamanAssist_a09c5d04f61879c8f5409bb073edbc90 = {
    [1535] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = FIRE_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [8227] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = FIRE_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [8181] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = FIRE_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [8190] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = FIRE_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [3599] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = FIRE_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [30706] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = FIRE_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [2894] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = FIRE_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [2484] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = EARTH_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [5730] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = EARTH_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [8071] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = EARTH_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [8075] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = EARTH_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [8143] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = EARTH_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [2062] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = EARTH_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [8170] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = WATER_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [8184] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = WATER_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [5394] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = WATER_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [5675] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = WATER_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [16190] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = WATER_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [8166] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = WATER_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [8835] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = AIR_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [8177] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = AIR_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [10595] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = AIR_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [6495] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = AIR_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [25908] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = AIR_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [8512] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = AIR_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [15107] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = AIR_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
    [3738] = {
        ["ShamanAssist_7e7860987b220bb966092ef46f8a8f44"] = AIR_TOTEM_SLOT,
        ["ShamanAssist_5059665d25de845079032324c2617d4c"] = nil,
        ["ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2"] = nil,
    },
};

function ShamanAssist_476e4e6d615566b374a12b737083550e:debug(...)
    if (self._DEBUG) then
        local ShamanAssist_c9bd86bc8bc59457d49315cf5b8c5b88 = "|cff00ffccSMA|r: "
        for i = 1, select("#", ...) do
            ShamanAssist_c9bd86bc8bc59457d49315cf5b8c5b88 = ShamanAssist_c9bd86bc8bc59457d49315cf5b8c5b88 .. "\n==>" .. tostring(select(i, ...));
        end
        DEFAULT_CHAT_FRAME:AddMessage(ShamanAssist_c9bd86bc8bc59457d49315cf5b8c5b88, 1, 0.75, 0);
    end
end

function ShamanAssist_476e4e6d615566b374a12b737083550e:Print(ShamanAssist_c9bd86bc8bc59457d49315cf5b8c5b88, ShamanAssist_3ae1f2c4b38d5f7c356b4cdb7c6e4027, ShamanAssist_0f402d7ba502a47a51c410aee99b1ff1, ShamanAssist_a0a053cacf1c8c43346fdc3adb684cb7)
    local ShamanAssist_c9bd86bc8bc59457d49315cf5b8c5b88 = "|CFF2359FF" .. ShamanAssist_27564b0f8fc08d6bd0345695785ce4b6["萨满助手"] .. "|R - " .. tostring(ShamanAssist_c9bd86bc8bc59457d49315cf5b8c5b88);
    local ShamanAssist_3ae1f2c4b38d5f7c356b4cdb7c6e4027 = ShamanAssist_3ae1f2c4b38d5f7c356b4cdb7c6e4027 or 1.0;
    local ShamanAssist_0f402d7ba502a47a51c410aee99b1ff1 = ShamanAssist_0f402d7ba502a47a51c410aee99b1ff1 or 0.96;
    local ShamanAssist_a0a053cacf1c8c43346fdc3adb684cb7 = ShamanAssist_a0a053cacf1c8c43346fdc3adb684cb7 or 0.41;
    DEFAULT_CHAT_FRAME:AddMessage(ShamanAssist_c9bd86bc8bc59457d49315cf5b8c5b88, ShamanAssist_3ae1f2c4b38d5f7c356b4cdb7c6e4027, ShamanAssist_0f402d7ba502a47a51c410aee99b1ff1, ShamanAssist_a0a053cacf1c8c43346fdc3adb684cb7);
end

function ShamanAssist_476e4e6d615566b374a12b737083550e:GetC(ShamanAssist_413bf9c15ce77baa8ebf1cda4cbf4887)
    return SMA_Config["OPTIONS"][ShamanAssist_413bf9c15ce77baa8ebf1cda4cbf4887];
end

function ShamanAssist_476e4e6d615566b374a12b737083550e:SetC(ShamanAssist_413bf9c15ce77baa8ebf1cda4cbf4887, ShamanAssist_2361bab8b48b1041ad740bb561b21aee)
    SMA_Config["OPTIONS"] = SMA_Config["OPTIONS"] or {};
    SMA_Config["OPTIONS"][ShamanAssist_413bf9c15ce77baa8ebf1cda4cbf4887] = ShamanAssist_2361bab8b48b1041ad740bb561b21aee;
end

function ShamanAssist_476e4e6d615566b374a12b737083550e:ShamanAssist_f5b5e2a3bdb74611958a0a8c4a1a6891()
    self.ShamanAssist_81160841f924f85a3118d1859a91ebce = {
        [FIRE_TOTEM_SLOT] = {},
        [EARTH_TOTEM_SLOT] = {},
        [WATER_TOTEM_SLOT] = {},
        [AIR_TOTEM_SLOT] = {}
    };
    return self.ShamanAssist_81160841f924f85a3118d1859a91ebce;
end

do
    local function ShamanAssist_56486d017670428cf38ea1d2686d32ea(ShamanAssist_e13a96a0ad2aafbc4af618967d6c0dc1, ShamanAssist_a0a053cacf1c8c43346fdc3adb684cb7)
        return tostring(SMA_Config.ORDER[ShamanAssist_476e4e6d615566b374a12b737083550e.ShamanAssist_a2494914161822b6ae326dac19efeee7][ShamanAssist_e13a96a0ad2aafbc4af618967d6c0dc1]) < tostring(SMA_Config.ORDER[ShamanAssist_476e4e6d615566b374a12b737083550e.ShamanAssist_a2494914161822b6ae326dac19efeee7][ShamanAssist_a0a053cacf1c8c43346fdc3adb684cb7]);
    end

    function ShamanAssist_476e4e6d615566b374a12b737083550e:ShamanAssist_2b3e327b6aa3f539429438eda4b54523()
        self.ShamanAssist_05f492d1f8145ef64b455a4d55843958 = {
            [FIRE_TOTEM_SLOT] = {},
            [EARTH_TOTEM_SLOT] = {},
            [WATER_TOTEM_SLOT] = {},
            [AIR_TOTEM_SLOT] = {},
        };
        local ShamanAssist_fa2167574a7f10a8ceef1d978b1d1540 = self:ShamanAssist_f5b5e2a3bdb74611958a0a8c4a1a6891();
        local i = 1;
        local ShamanAssist_caa997efdeb36851b2f828f934939927 = GetSpellName(i, BOOKTYPE_SPELL);
        while (ShamanAssist_caa997efdeb36851b2f828f934939927) do
            for ShamanAssist_63a9ce6f1eeac72ef41293b7d0303335, ShamanAssist_8d0644c92128c1ff68223fd74ba63b56 in pairs(self.ShamanAssist_a09c5d04f61879c8f5409bb073edbc90) do
                if (ShamanAssist_0c8385d3e3f450eda9b88c499f024a36(ShamanAssist_63a9ce6f1eeac72ef41293b7d0303335) == ShamanAssist_caa997efdeb36851b2f828f934939927) then
                    ShamanAssist_fa2167574a7f10a8ceef1d978b1d1540[ShamanAssist_8d0644c92128c1ff68223fd74ba63b56.ShamanAssist_7e7860987b220bb966092ef46f8a8f44][ShamanAssist_63a9ce6f1eeac72ef41293b7d0303335] = true;
                end
            end
            i = i + 1;
            ShamanAssist_caa997efdeb36851b2f828f934939927 = GetSpellName(i, BOOKTYPE_SPELL);
        end

        self.ShamanAssist_7930ddfc65045e7b28c632e9f2f097be = i;
        if (self._DEBUG) then
            for ShamanAssist_63a9ce6f1eeac72ef41293b7d0303335, ShamanAssist_8d0644c92128c1ff68223fd74ba63b56 in pairs(self.ShamanAssist_a09c5d04f61879c8f5409bb073edbc90) do
                ShamanAssist_fa2167574a7f10a8ceef1d978b1d1540[ShamanAssist_8d0644c92128c1ff68223fd74ba63b56.ShamanAssist_7e7860987b220bb966092ef46f8a8f44][ShamanAssist_63a9ce6f1eeac72ef41293b7d0303335] = true;
            end
        end

        for ShamanAssist_a2f3972c23a0aa3bd7fb0e9823d918f2, ShamanAssist_8d0644c92128c1ff68223fd74ba63b56 in pairs(ShamanAssist_fa2167574a7f10a8ceef1d978b1d1540) do
            for ShamanAssist_8d0febf2348ea712b2b375ae95601d5f, _ in pairs(ShamanAssist_8d0644c92128c1ff68223fd74ba63b56) do
                table.insert(self.ShamanAssist_05f492d1f8145ef64b455a4d55843958[ShamanAssist_a2f3972c23a0aa3bd7fb0e9823d918f2], ShamanAssist_8d0febf2348ea712b2b375ae95601d5f);
            end
        end
        for __index, ShamanAssist_a44ecbf575d7f2eca081a0592e8d84fa in pairs(self.ShamanAssist_05f492d1f8145ef64b455a4d55843958) do
            self.ShamanAssist_a2494914161822b6ae326dac19efeee7 = __index;
            table.sort(ShamanAssist_a44ecbf575d7f2eca081a0592e8d84fa, ShamanAssist_56486d017670428cf38ea1d2686d32ea);
        end
    end
end

function ShamanAssist_476e4e6d615566b374a12b737083550e:ShamanAssist_7d82d975db290a850af18fec4ea3783f()
    self.mainFrame = CreateFrame("Frame", "SMAMainFrame", UIParent);
    self.mainFrame:SetFrameStrata("HIGH");
    self.mainFrame:SetWidth(32);
    self.mainFrame:SetHeight(32);
    self.mainFrame:SetMovable(true);
    self.mainFrame:SetPoint("CENTER", UIParent, "CENTER", 100, -80);
    self.mainFrame:SetClampedToScreen(true);
    RegisterForSaveFrame(self.mainFrame);
end

function ShamanAssist_476e4e6d615566b374a12b737083550e:CreateTitleButton()
    if (not self.mainFrame) then
        self:ShamanAssist_7d82d975db290a850af18fec4ea3783f()
    end

    self.titleButton = CreateFrame("Button", "SMATitleButton", self.mainFrame);
    local ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5 = self.titleButton;
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetNormalTexture("Interface\\AddOns\\ShamanAssist\\Texture\\Header");
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetHighlightTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Highlight", "ADD");
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:GetNormalTexture():SetTexCoord(0, 0.5625, 0, 0.609375);
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetWidth(18);
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetHeight(39);
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetPoint("TOPLEFT", self.mainFrame, "TOPLEFT", 0, 0);
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetMovable(true);
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:EnableMouse(true);
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetScript("OnEnter", function(self)
        GameTooltip_SetDefaultAnchor(GameTooltip, self);
        GameTooltip:SetText(ShamanAssist_27564b0f8fc08d6bd0345695785ce4b6["萨满助手"], 1.0, 1.0, 1.0);
        GameTooltip:AddLine(ShamanAssist_27564b0f8fc08d6bd0345695785ce4b6["左键 - 拖动图腾条\n右键 - 弹出配置菜单"]);
        GameTooltip:Show();
    end);
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetScript("OnLeave", function(self) GameTooltip:Hide(); end);
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetScript("OnMouseDown", function(self)
        if (not ShamanAssist_476e4e6d615566b374a12b737083550e:GetC("locked")) then
            self:GetParent():StartMoving();
        end
    end);
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetScript("OnMouseUp", function(self)
        if (not ShamanAssist_476e4e6d615566b374a12b737083550e:GetC("locked")) then
            self:GetParent():StopMovingOrSizing();
        end
    end);
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetScript("OnHide", function(self)
        self:GetParent():StopMovingOrSizing();
    end);
end

function ShamanAssist_476e4e6d615566b374a12b737083550e:ShamanAssist_eaaea32e11f3d0777ce67f144214f36e()
    local n = 0;
    for i = 1, 4 do
        n = n + ShamanAssist_0b06dea9bf1cc715c4a3c0abc3b69b5f:GetSize(self.ShamanAssist_05f492d1f8145ef64b455a4d55843958[i]);
    end
    return n;
end

do
    local function ShamanAssist_68cf287437b7fc34396dc7a19362b0ae(ShamanAssist_b4d3314490a868cf61f5fbd057900b0b, ShamanAssist_2361bab8b48b1041ad740bb561b21aee)
        if (type(ShamanAssist_b4d3314490a868cf61f5fbd057900b0b) == "table") then
            for ShamanAssist_63a9ce6f1eeac72ef41293b7d0303335, ShamanAssist_8d0644c92128c1ff68223fd74ba63b56 in pairs(ShamanAssist_b4d3314490a868cf61f5fbd057900b0b) do
                if (ShamanAssist_8d0644c92128c1ff68223fd74ba63b56 == ShamanAssist_2361bab8b48b1041ad740bb561b21aee) then
                    return true;
                end
            end
        end
        return false;
    end

    function ShamanAssist_476e4e6d615566b374a12b737083550e:ShamanAssist_8d49d1d4f61f0f7b37dd2fa68183967a(ShamanAssist_9d6e906d7d9e06fa730d3e838967cda1, ShamanAssist_c71e975bdc711bea69d2f28355ad0631)
        if (self.ShamanAssist_05f492d1f8145ef64b455a4d55843958[ShamanAssist_9d6e906d7d9e06fa730d3e838967cda1]) then
            if (ShamanAssist_68cf287437b7fc34396dc7a19362b0ae(self.ShamanAssist_05f492d1f8145ef64b455a4d55843958[ShamanAssist_9d6e906d7d9e06fa730d3e838967cda1], ShamanAssist_c71e975bdc711bea69d2f28355ad0631)) then
                return ShamanAssist_c71e975bdc711bea69d2f28355ad0631;
            elseif (#(self.ShamanAssist_05f492d1f8145ef64b455a4d55843958[ShamanAssist_9d6e906d7d9e06fa730d3e838967cda1]) > 0) then
                return self.ShamanAssist_05f492d1f8145ef64b455a4d55843958[ShamanAssist_9d6e906d7d9e06fa730d3e838967cda1][1];
            else
                return false;
            end
        else
            return false;
        end
    end
end

function ShamanAssist_476e4e6d615566b374a12b737083550e:ShamanAssist_bf97ac8889d478219341eb9cdcb8362c()
    if (not self.ShamanAssist_443d6aaf81b907d824df4b04779bfa41 and self:ShamanAssist_eaaea32e11f3d0777ce67f144214f36e() < 1) then
        return nil;
    end

    if (not self.titleButton) then
        self:CreateTitleButton();
    end

    for i, ShamanAssist_c71e975bdc711bea69d2f28355ad0631 in ipairs(SMA_Config.TOTEMS) do
        local ShamanAssist_411b8aa6d5954c6020f0b9c9e80e847a, ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5;
        ShamanAssist_c71e975bdc711bea69d2f28355ad0631 = self:ShamanAssist_8d49d1d4f61f0f7b37dd2fa68183967a(i, ShamanAssist_c71e975bdc711bea69d2f28355ad0631);
        if (ShamanAssist_c71e975bdc711bea69d2f28355ad0631 and ShamanAssist_0c8385d3e3f450eda9b88c499f024a36(ShamanAssist_c71e975bdc711bea69d2f28355ad0631)) then
            if (not self["Buttons"][i]) then
                self["Buttons"][i] = CreateFrame("CheckButton", "SMAButton" .. i, self.mainFrame, "SecureActionButtonTemplate, SecureHandlerEnterLeaveTemplate, ActionButtonTemplate, SecureHandlerAttributeTemplate");
                self:ShamanAssist_96730e5e2a55a45446d12b85f28ae7b5(self["Buttons"][i], ShamanAssist_c71e975bdc711bea69d2f28355ad0631);
            end
            ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5 = self["Buttons"][i];
            self:ShamanAssist_ff553850af3e1ce8403e8bcab5a10989(ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5, ShamanAssist_c71e975bdc711bea69d2f28355ad0631);
            self:ShamanAssist_4071d18175242585fece473d420501ca(i);
            self.lastTotem = ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5;
        end
    end
    for i = 1, 4, 1 do
        if (self["Buttons"][i]) then
            for j = 1, 4, 1 do
                if (self["Buttons"][j]) then
                    self["Buttons"][i]:SetFrameRef(j .. "", self["Buttons"][j]);
                end
            end
        end
    end

    self:CreateTotemicCallButton();
    if (not self.ShamanAssist_443d6aaf81b907d824df4b04779bfa41) then
        self:RegisterCCSytle();
        self:InitMenu();
        self:ShamanAssist_dbcf82edb1d4c48c1f306f507d2fc8d6();
        self.ShamanAssist_443d6aaf81b907d824df4b04779bfa41 = true;
    end
    self:UpdateLayout();
end

function ShamanAssist_476e4e6d615566b374a12b737083550e:ShamanAssist_bfc3458da911293772d3c395e01fe1a0(ShamanAssist_caa997efdeb36851b2f828f934939927)
    local i = 1;
    local ShamanAssist_8983c60d66c8593ec7165ea9dbedb584 = GetSpellName(i, BOOKTYPE_SPELL);
    while (ShamanAssist_8983c60d66c8593ec7165ea9dbedb584) do
        ShamanAssist_8983c60d66c8593ec7165ea9dbedb584 = string.gsub(ShamanAssist_8983c60d66c8593ec7165ea9dbedb584, " [VI]+$", "");
        if (ShamanAssist_8983c60d66c8593ec7165ea9dbedb584 == ShamanAssist_caa997efdeb36851b2f828f934939927) then
            return i;
        end
        i = i + 1;
        ShamanAssist_8983c60d66c8593ec7165ea9dbedb584 = GetSpellName(i, BOOKTYPE_SPELL);
    end

    return nil;
end

function ShamanAssist_476e4e6d615566b374a12b737083550e:ShamanAssist_d3899a03763f79d05138cb82b485ab81(ShamanAssist_2631ee5f1af92b16965517546212b5f0, ShamanAssist_b7aeb0629cd63ca2a97e3e75e0cef8bd)
    local ShamanAssist_2631ee5f1af92b16965517546212b5f0 = string.gsub(ShamanAssist_2631ee5f1af92b16965517546212b5f0, " [VI]+$", "");
    local ShamanAssist_b7aeb0629cd63ca2a97e3e75e0cef8bd = string.gsub(ShamanAssist_b7aeb0629cd63ca2a97e3e75e0cef8bd, " [VI]+$", "");
    if (ShamanAssist_2631ee5f1af92b16965517546212b5f0 == ShamanAssist_b7aeb0629cd63ca2a97e3e75e0cef8bd) then
        return true;
    else
        return false;
    end
end

function ShamanAssist_476e4e6d615566b374a12b737083550e:ShamanAssist_4071d18175242585fece473d420501ca(ShamanAssist_8d0febf2348ea712b2b375ae95601d5f)
    local ShamanAssist_e0c88654f5ab8f9854de90dc1024d388 = self["Buttons"][ShamanAssist_8d0febf2348ea712b2b375ae95601d5f];
    local ShamanAssist_caa997efdeb36851b2f828f934939927, _, ShamanAssist_191107c3396adc2fd5490f2666d1c3fc;
    local ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5;
    local __index = 1;

    if (ShamanAssist_e0c88654f5ab8f9854de90dc1024d388) then
        for _, ShamanAssist_c71e975bdc711bea69d2f28355ad0631 in ipairs(self.ShamanAssist_05f492d1f8145ef64b455a4d55843958[ShamanAssist_8d0febf2348ea712b2b375ae95601d5f]) do
            ShamanAssist_caa997efdeb36851b2f828f934939927, _, ShamanAssist_191107c3396adc2fd5490f2666d1c3fc = GetSpellInfo(ShamanAssist_c71e975bdc711bea69d2f28355ad0631);
            if (ShamanAssist_caa997efdeb36851b2f828f934939927) then
                if (not ShamanAssist_e0c88654f5ab8f9854de90dc1024d388.Pops[__index]) then
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5 = CreateFrame("CheckButton", "SMAButton" .. ShamanAssist_8d0febf2348ea712b2b375ae95601d5f .. "Popup" .. __index, ShamanAssist_e0c88654f5ab8f9854de90dc1024d388, "SecureActionButtonTemplate, SecureHandlerEnterLeaveTemplate, ActionButtonTemplate, SecureHandlerAttributeTemplate");
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:Hide();
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetWidth(36);
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetHeight(36);
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetFrameStrata("HIGH");
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetCheckedTexture("");
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetNormalTexture("");
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_51bbc6646cac6748cc62569220600b52 = getglobal(ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:GetName() .. "Icon");
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_483bc539b955fbfef489b2bf959067f4 = getglobal(ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:GetName() .. "Cooldown");
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_d6a50ae348b8eddfd5faca23fea539b1 = getglobal(ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:GetName() .. "HotKey");
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:RegisterForClicks("AnyUp");
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:RegisterForDrag("LeftButton");
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:RegisterEvent("SPELL_UPDATE_COOLDOWN");
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetAttribute("type", "spell");
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShowTooltip = function(self)
                        GameTooltip_SetDefaultAnchor(GameTooltip, self);
                        GameTooltip:SetText(self.ShamanAssist_caa997efdeb36851b2f828f934939927, 1.0, 1.0, 1.0);
                        GameTooltip:Show();
                    end
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.HideTooltip = ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:GetParent().HideTooltip;
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ResetParentControl = function(self)
                        self:GetParent().ResetControl(self:GetParent())
                    end
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.StartParentControl = function(self)
                        self:GetParent().StartControl(self:GetParent())
                    end
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetAttribute("spell", ShamanAssist_caa997efdeb36851b2f828f934939927);
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetAttribute("spellID", ShamanAssist_c71e975bdc711bea69d2f28355ad0631);
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetAttribute("binding", tostring(__index));
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetAttribute("_childupdate-show", [[ self:Show() self:SetBindingClick(true, self:GetAttribute("binding"), self:GetName()); ]]);
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetAttribute("_childupdate-hide", [[ self:Hide(); ]]);
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:WrapScript(ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5, "OnHide", [[ self:ClearBindings(ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5); ]]);
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetAttribute("_onleave", [[ control:CallMethod("HideTooltip") control:CallMethod("StartParentControl") ]]);
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetAttribute("_onenter", [[ control:CallMethod("ShowTooltip") control:CallMethod("ResetParentControl") ]]);
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_d6a50ae348b8eddfd5faca23fea539b1:SetText(__index);
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.index = __index;
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetScript("OnDragStart", function(self)
                        if (not InCombatLockdown() and IsShiftKeyDown()) then
                            local ShamanAssist_8d0febf2348ea712b2b375ae95601d5f = ShamanAssist_476e4e6d615566b374a12b737083550e:ShamanAssist_bfc3458da911293772d3c395e01fe1a0(self.ShamanAssist_caa997efdeb36851b2f828f934939927);
                            if (ShamanAssist_8d0febf2348ea712b2b375ae95601d5f) then
                                ShamanAssist_476e4e6d615566b374a12b737083550e.ShamanAssist_f897f2e099a64c92cc66909fc41d8477 = self;
                                PickupSpell(ShamanAssist_8d0febf2348ea712b2b375ae95601d5f, BOOKTYPE_SPELL);
                            end
                        end
                    end);
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetScript("PreClick", function(self)
                        local stype, sID = GetCursorInfo();
                        if (not InCombatLockdown() and ShamanAssist_476e4e6d615566b374a12b737083550e.ShamanAssist_f897f2e099a64c92cc66909fc41d8477 and ShamanAssist_476e4e6d615566b374a12b737083550e.ShamanAssist_f897f2e099a64c92cc66909fc41d8477 ~= self and stype == "spell" and ShamanAssist_476e4e6d615566b374a12b737083550e:ShamanAssist_d3899a03763f79d05138cb82b485ab81(ShamanAssist_476e4e6d615566b374a12b737083550e.ShamanAssist_f897f2e099a64c92cc66909fc41d8477.ShamanAssist_caa997efdeb36851b2f828f934939927, GetSpellName(sID, BOOKTYPE_SPELL))) then
                            local this_spellName = self.ShamanAssist_caa997efdeb36851b2f828f934939927;
                            local this_spellID = self.ShamanAssist_c71e975bdc711bea69d2f28355ad0631;
                            self:SetAttribute("spell", ShamanAssist_476e4e6d615566b374a12b737083550e.ShamanAssist_f897f2e099a64c92cc66909fc41d8477.ShamanAssist_caa997efdeb36851b2f828f934939927); ShamanAssist_476e4e6d615566b374a12b737083550e:ShamanAssist_ff553850af3e1ce8403e8bcab5a10989(self, ShamanAssist_476e4e6d615566b374a12b737083550e.ShamanAssist_f897f2e099a64c92cc66909fc41d8477.ShamanAssist_c71e975bdc711bea69d2f28355ad0631, nil, true);
                            ShamanAssist_476e4e6d615566b374a12b737083550e.ShamanAssist_f897f2e099a64c92cc66909fc41d8477:SetAttribute("spell", this_spellName);
                            ShamanAssist_476e4e6d615566b374a12b737083550e:ShamanAssist_ff553850af3e1ce8403e8bcab5a10989(ShamanAssist_476e4e6d615566b374a12b737083550e.ShamanAssist_f897f2e099a64c92cc66909fc41d8477, this_spellID, nil, true);
                            ShamanAssist_476e4e6d615566b374a12b737083550e:ShamanAssist_dbcf82edb1d4c48c1f306f507d2fc8d6();
                        end
                        ClearCursor();
                        ShamanAssist_476e4e6d615566b374a12b737083550e.ShamanAssist_f897f2e099a64c92cc66909fc41d8477 = nil;
                    end);
                    ShamanAssist_e0c88654f5ab8f9854de90dc1024d388:WrapScript(
                        ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5,
                        "OnClick",
                        [[
                        if (button == "LeftButton") then
                            self:GetParent():SetAttribute("spellID", self:GetAttribute("spellID"));
                            self:GetParent():SetAttribute("spell", self:GetAttribute("spell"));
                        end
                        self:GetParent():SetAttribute("hide", true);
                        ]]);
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetScript("OnUpdate", function(self)
                        local bool, ShamanAssist_1dc717e3ff33963303b8deccddc99fd2 = IsUsableSpell(self.ShamanAssist_caa997efdeb36851b2f828f934939927);
                        if (not bool) then
                            if (ShamanAssist_1dc717e3ff33963303b8deccddc99fd2) then
                                self.ShamanAssist_51bbc6646cac6748cc62569220600b52:SetVertexColor(0, 0, 1, 0.7);
                            else
                                self.ShamanAssist_51bbc6646cac6748cc62569220600b52:SetVertexColor(0.4, 0.4, 0.4);
                            end
                        else
                            self.ShamanAssist_51bbc6646cac6748cc62569220600b52:SetVertexColor(1, 1, 1);
                        end
                    end);
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetScript("OnEvent", function(self)
                        if (event == "SPELL_UPDATE_COOLDOWN") then
                            if (self.ShamanAssist_483bc539b955fbfef489b2bf959067f4 and self.ShamanAssist_caa997efdeb36851b2f828f934939927) then
                                local start, duration, enable = GetSpellCooldown(self.ShamanAssist_caa997efdeb36851b2f828f934939927);
                                if (start and duration) then
                                    CooldownFrame_SetTimer(self.ShamanAssist_483bc539b955fbfef489b2bf959067f4, start, duration, enable);
                                end
                            end
                        end
                    end);
                    ShamanAssist_e0c88654f5ab8f9854de90dc1024d388.Pops[__index] = ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5;
                else
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5 = ShamanAssist_e0c88654f5ab8f9854de90dc1024d388.Pops[__index];
                end

                self:ShamanAssist_ff553850af3e1ce8403e8bcab5a10989(ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5, ShamanAssist_c71e975bdc711bea69d2f28355ad0631, nil, true);
                --[[
                if (__index == 1) then
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetPoint("BOTTOM", ShamanAssist_e0c88654f5ab8f9854de90dc1024d388, "TOP", 0, 2);
                else
                    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetPoint("BOTTOM", ShamanAssist_e0c88654f5ab8f9854de90dc1024d388.Pops[__index-1], "TOP", 0, 1);
                end
                ]]
                __index = __index + 1;
            end
        end
    end
end

function ShamanAssist_476e4e6d615566b374a12b737083550e:ShamanAssist_96730e5e2a55a45446d12b85f28ae7b5(ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5, ShamanAssist_c71e975bdc711bea69d2f28355ad0631)
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetCheckedTexture("");
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetWidth(36);
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetHeight(36);
    getglobal(ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:GetName() .. "NormalTexture"):SetAlpha(0.8);
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.Pops = {};
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_69072c73fde2ed407f863929fd1e7483 = CreateFrame("StatusBar", nil, ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5);
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_69072c73fde2ed407f863929fd1e7483:SetPoint("CENTER", ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5, "CENTER", 0, 0);
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_69072c73fde2ed407f863929fd1e7483:SetWidth(32);
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_69072c73fde2ed407f863929fd1e7483:SetHeight(32);
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_69072c73fde2ed407f863929fd1e7483:SetOrientation("VERTICAL");
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_69072c73fde2ed407f863929fd1e7483:SetMinMaxValues(0, 5);
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_69072c73fde2ed407f863929fd1e7483:SetValue(0);
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_69072c73fde2ed407f863929fd1e7483:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar");
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_69072c73fde2ed407f863929fd1e7483:SetStatusBarColor(0, 0.8, 0, 0.7);
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_51bbc6646cac6748cc62569220600b52 = getglobal(ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:GetName() .. "Icon");
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_483bc539b955fbfef489b2bf959067f4 = getglobal(ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:GetName() .. "Cooldown");
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_d6a50ae348b8eddfd5faca23fea539b1 = getglobal(ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:GetName() .. "HotKey");
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:RegisterForClicks("AnyUp");
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShowTooltip = function(self)
        GameTooltip_SetDefaultAnchor(GameTooltip, self);
        GameTooltip:SetText(self.ShamanAssist_caa997efdeb36851b2f828f934939927, 1.0, 1.0, 1.0);
        GameTooltip:AddLine(ShamanAssist_27564b0f8fc08d6bd0345695785ce4b6["左键 - 施放图腾\n右键 - 弹出菜单"]);
        GameTooltip:Show();
    end
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.HideTooltip = function(self) GameTooltip:Hide(); end;
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetAttribute("*type1", "spell");
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetAttribute("spell", ShamanAssist_0c8385d3e3f450eda9b88c499f024a36(ShamanAssist_c71e975bdc711bea69d2f28355ad0631));
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetAttribute("spellID", ShamanAssist_c71e975bdc711bea69d2f28355ad0631);
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ResetControl = function(self) self.count = nil end;
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.StartControl = function(self) self.count = 0 end;
    if (self._DEBUG) then
        ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetAttribute("OpenMenu", "mouseover");
    end
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetAttribute(
        "_onenter",
        [[
        if open==nil then
            open =1
        end
        control:CallMethod("ShowTooltip");
        control:CallMethod("ResetControl")
        if (self:GetAttribute("OpenMenu") == "mouseover") then
            control:ChildUpdate("show", "show");
            self:SetAttribute("showing", true);
        end
        ]]);
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetAttribute(
        "_onleave",
        [[
        control:CallMethod("HideTooltip")
        control:CallMethod("StartControl")
        self:SetAttribute("showing", false);
        ]]);
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.UpdateAttrubure = function(self) SMA:ShamanAssist_ff553850af3e1ce8403e8bcab5a10989(self, self:GetAttribute("spellID")); end
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetAttribute(
        "_onattributechanged",
        [[
        if ((name=="hideleave" and not self:IsUnderMouse(true))) then
            control:ChildUpdate("hide", "hide");
        elseif (name=="hide") then
            control:ChildUpdate("hide", "hide");
        end
        if (name == "spell") then
            control:CallMethod("UpdateAttrubure");
        end
        ]])
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:WrapScript(ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5,
        "OnClick",
        [[
        if (button == "RightButton") then
            local button1 = self:GetFrameRef("1");
            local button2 = self:GetFrameRef("2");
            local button3 = self:GetFrameRef("3");
            local butotn4 = self:GetFrameRef("4");
            local nobuttonshown = true;
            if (button1 and button1:GetAttribute("showing")) then
                nobuttonshown = false;
            end
            if (button2 and button2:GetAttribute("showing")) then
                nobuttonshown = false;
            end
            if (button3 and button3:GetAttribute("showing")) then
                nobuttonshown = false;
            end
            if (button4 and button4:GetAttribute("showing")) then
                nobuttonshown = false;
            end
            if (nobuttonshown) then
                control:ChildUpdate("show", "show");
                self:SetAttribute("showing", true);
            else
                control:ChildUpdate("hide", "hide");
                self:SetAttribute("showing", false);
            end
        end
        ]]);
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:RegisterEvent("SPELL_UPDATE_COOLDOWN");
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:RegisterEvent("UPDATE_BINDINGS");
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetScript("OnUpdate", function(self, elapsed)
        if self.count then
            self.count = self.count + elapsed
        end
        if (self.count and self.count > 0.1) then
            for ShamanAssist_b346ff9c8a9ef882088b9f1c82dabf17, ShamanAssist_1f767451a35d2d22ad352ee7ff068312 in pairs(self.Pops) do
                ShamanAssist_1f767451a35d2d22ad352ee7ff068312:Hide()
            end
        end
        local bool, ShamanAssist_1dc717e3ff33963303b8deccddc99fd2 = IsUsableSpell(self.ShamanAssist_caa997efdeb36851b2f828f934939927);
        if (not bool) then
            if (ShamanAssist_1dc717e3ff33963303b8deccddc99fd2) then
                self.ShamanAssist_51bbc6646cac6748cc62569220600b52:SetVertexColor(0, 0, 1, 0.7);
            else
                self.ShamanAssist_51bbc6646cac6748cc62569220600b52:SetVertexColor(1, 1, 1, 0.5);
            end
        else
            self.ShamanAssist_51bbc6646cac6748cc62569220600b52:SetVertexColor(1, 1, 1, 1);
        end
        if (self.ShamanAssist_69072c73fde2ed407f863929fd1e7483.active and self.ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2) then
            local lduration = GetTime() - self.ShamanAssist_69072c73fde2ed407f863929fd1e7483.start;
            self.ShamanAssist_69072c73fde2ed407f863929fd1e7483:SetValue(mod(lduration + self.ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2 + 1, self.ShamanAssist_5059665d25de845079032324c2617d4c));
        end
    end);
    ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetScript("OnEvent", function(self)
        if (event == "SPELL_UPDATE_COOLDOWN") then
            if (self.ShamanAssist_483bc539b955fbfef489b2bf959067f4 and self.ShamanAssist_caa997efdeb36851b2f828f934939927) then
                local start, duration, enable = GetSpellCooldown(self.ShamanAssist_caa997efdeb36851b2f828f934939927);
                if (start and duration) then
                    CooldownFrame_SetTimer(self.ShamanAssist_483bc539b955fbfef489b2bf959067f4, start, duration, enable);
                end
            end
        elseif (event == "UPDATE_BINDINGS") then
            local ShamanAssist_413bf9c15ce77baa8ebf1cda4cbf4887 = GetBindingKey("CLICK " .. self:GetName() .. ":LeftButton");
            local text = GetBindingText(ShamanAssist_413bf9c15ce77baa8ebf1cda4cbf4887, "KEY_", 1);
            self.ShamanAssist_d6a50ae348b8eddfd5faca23fea539b1:SetText(text);
        end
    end);
end

do
    local function ShamanAssist_cdbb7e67eaab7c7953a3a22cf1816b05()
        local ShamanAssist_e914904fab9d05d3f54d52bfc31a0f3f = 1;
        local ShamanAssist_caa997efdeb36851b2f828f934939927 = GetSpellName(ShamanAssist_e914904fab9d05d3f54d52bfc31a0f3f, BOOKTYPE_SPELL);
        while (ShamanAssist_caa997efdeb36851b2f828f934939927) do
            if (ShamanAssist_c7ba0d321230216e108484b7221d0fb8 == ShamanAssist_caa997efdeb36851b2f828f934939927) then
                return ShamanAssist_e914904fab9d05d3f54d52bfc31a0f3f;
            end
            ShamanAssist_e914904fab9d05d3f54d52bfc31a0f3f = ShamanAssist_e914904fab9d05d3f54d52bfc31a0f3f + 1;
            ShamanAssist_caa997efdeb36851b2f828f934939927 = GetSpellName(ShamanAssist_e914904fab9d05d3f54d52bfc31a0f3f, BOOKTYPE_SPELL);
        end
        return false;
    end

    function ShamanAssist_476e4e6d615566b374a12b737083550e:CreateTotemicCallButton()
        local ShamanAssist_e84ce54a0df99cb7a2b94b72ba4dd122 = ShamanAssist_cdbb7e67eaab7c7953a3a22cf1816b05();
        if (not self.callButton and ShamanAssist_e84ce54a0df99cb7a2b94b72ba4dd122) then
            local ShamanAssist_caa997efdeb36851b2f828f934939927, _, ShamanAssist_191107c3396adc2fd5490f2666d1c3fc = GetSpellInfo(39104);
            self.callButton = CreateFrame("CheckButton", "SMACALLBACK", self.mainFrame, "SecureActionButtonTemplate, ActionButtonTemplate")
            local ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5 = self.callButton;
            ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetCheckedTexture("");
            ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_483bc539b955fbfef489b2bf959067f4 = getglobal(ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:GetName() .. "Cooldown");
            ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_d6a50ae348b8eddfd5faca23fea539b1 = getglobal(ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:GetName() .. "HotKey");
            ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.icon = getglobal(ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:GetName() .. "Icon");
            ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:RegisterEvent("SPELL_UPDATE_COOLDOWN");
            ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:RegisterEvent("UPDATE_BINDINGS");
            ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:RegisterForClicks("AnyUp");
            ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetAttribute("type", "spell");
            ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetAttribute("spell", ShamanAssist_caa997efdeb36851b2f828f934939927);
            ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.icon:SetTexture(ShamanAssist_191107c3396adc2fd5490f2666d1c3fc);
            ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetScript("OnEnter", function(self)
                GameTooltip_SetDefaultAnchor(GameTooltip, self);
                GameTooltip:SetSpell(ShamanAssist_e84ce54a0df99cb7a2b94b72ba4dd122, BOOKTYPE_SPELL);
                GameTooltip:Show();
            end);
            ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetScript("OnLeave", function(self) GameTooltip:Hide(); end);
            ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:SetScript("OnEvent", function(self, event)
                if (event == "SPELL_UPDATE_COOLDOWN") then
                    if (self.ShamanAssist_483bc539b955fbfef489b2bf959067f4) then
                        local start, duration, enable = GetSpellCooldown(ShamanAssist_caa997efdeb36851b2f828f934939927);
                        if (start and duration) then
                            CooldownFrame_SetTimer(self.ShamanAssist_483bc539b955fbfef489b2bf959067f4, start, duration, enable);
                        end
                    end
                elseif (event == "UPDATE_BINDINGS") then
                    local ShamanAssist_413bf9c15ce77baa8ebf1cda4cbf4887 = GetBindingKey("CLICK " .. self:GetName() .. ":LeftButton");
                    local text = GetBindingText(ShamanAssist_413bf9c15ce77baa8ebf1cda4cbf4887, "KEY_", 1);
                    self.ShamanAssist_d6a50ae348b8eddfd5faca23fea539b1:SetText(text);
                end
            end);
            ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5:Show();
        end
    end
end

function ShamanAssist_476e4e6d615566b374a12b737083550e:ShamanAssist_ab6ecf12192829a2c4219b8e674f0380(ShamanAssist_caa997efdeb36851b2f828f934939927)
    local ShamanAssist_caa997efdeb36851b2f828f934939927 = string.gsub(ShamanAssist_caa997efdeb36851b2f828f934939927, " [VI]+$", "");
    for ShamanAssist_8d0febf2348ea712b2b375ae95601d5f, _ in pairs(self.ShamanAssist_a09c5d04f61879c8f5409bb073edbc90) do
        if (ShamanAssist_0c8385d3e3f450eda9b88c499f024a36(ShamanAssist_8d0febf2348ea712b2b375ae95601d5f) == ShamanAssist_caa997efdeb36851b2f828f934939927) then
            return ShamanAssist_8d0febf2348ea712b2b375ae95601d5f;
        end
    end
    return nil;
end

function ShamanAssist_476e4e6d615566b374a12b737083550e:ShamanAssist_ff553850af3e1ce8403e8bcab5a10989(ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5, ShamanAssist_c71e975bdc711bea69d2f28355ad0631, ShamanAssist_caa997efdeb36851b2f828f934939927, ShamanAssist_d85de478fc4eed4a35a5b27dec8aeea6)
    local ShamanAssist_c71e975bdc711bea69d2f28355ad0631 = ShamanAssist_c71e975bdc711bea69d2f28355ad0631 or self:ShamanAssist_bfc3458da911293772d3c395e01fe1a0(spellName);
    if (ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5 and ShamanAssist_c71e975bdc711bea69d2f28355ad0631 and ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_c71e975bdc711bea69d2f28355ad0631 ~= ShamanAssist_c71e975bdc711bea69d2f28355ad0631 and self.ShamanAssist_a09c5d04f61879c8f5409bb073edbc90[ShamanAssist_c71e975bdc711bea69d2f28355ad0631]) then
        local ShamanAssist_caa997efdeb36851b2f828f934939927, _, ShamanAssist_191107c3396adc2fd5490f2666d1c3fc = GetSpellInfo(ShamanAssist_c71e975bdc711bea69d2f28355ad0631);
        ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_7e7860987b220bb966092ef46f8a8f44 = self.ShamanAssist_a09c5d04f61879c8f5409bb073edbc90[ShamanAssist_c71e975bdc711bea69d2f28355ad0631].ShamanAssist_7e7860987b220bb966092ef46f8a8f44;
        ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_5059665d25de845079032324c2617d4c = self.ShamanAssist_a09c5d04f61879c8f5409bb073edbc90[ShamanAssist_c71e975bdc711bea69d2f28355ad0631].ShamanAssist_5059665d25de845079032324c2617d4c;
        ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2 = self.ShamanAssist_a09c5d04f61879c8f5409bb073edbc90[ShamanAssist_c71e975bdc711bea69d2f28355ad0631].ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2;
        ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_c71e975bdc711bea69d2f28355ad0631 = ShamanAssist_c71e975bdc711bea69d2f28355ad0631;
        ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_caa997efdeb36851b2f828f934939927 = ShamanAssist_caa997efdeb36851b2f828f934939927;
        ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_191107c3396adc2fd5490f2666d1c3fc = ShamanAssist_191107c3396adc2fd5490f2666d1c3fc;
        ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_51bbc6646cac6748cc62569220600b52:SetTexture(ShamanAssist_191107c3396adc2fd5490f2666d1c3fc);
        if (not ShamanAssist_d85de478fc4eed4a35a5b27dec8aeea6) then
            SMA_Config["TOTEMS"][ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_7e7860987b220bb966092ef46f8a8f44] = ShamanAssist_c71e975bdc711bea69d2f28355ad0631;
        end
    end
end

function ShamanAssist_476e4e6d615566b374a12b737083550e:ShamanAssist_dbcf82edb1d4c48c1f306f507d2fc8d6()
    for i = 1, 4 do
        local ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5 = self.Buttons[i];
        if (ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5) then
            for ShamanAssist_63a9ce6f1eeac72ef41293b7d0303335, ShamanAssist_8d0644c92128c1ff68223fd74ba63b56 in ipairs(ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.Pops) do
                SMA_Config.ORDER[i][ShamanAssist_8d0644c92128c1ff68223fd74ba63b56.ShamanAssist_c71e975bdc711bea69d2f28355ad0631] = ShamanAssist_63a9ce6f1eeac72ef41293b7d0303335;
            end
        end
    end
end

function ShamanAssist_476e4e6d615566b374a12b737083550e:SPELLS_CHANGED()
    local ShamanAssist_602dceb5418dc9410df12b60b7a8437a = 0;
    for i = 1, GetNumSpellTabs() do
        ShamanAssist_602dceb5418dc9410df12b60b7a8437a = ShamanAssist_602dceb5418dc9410df12b60b7a8437a + select(4, GetSpellTabInfo(i));
    end
    if (ShamanAssist_602dceb5418dc9410df12b60b7a8437a ~= self.ShamanAssist_7930ddfc65045e7b28c632e9f2f097be) then
        ShamanAssist_476e4e6d615566b374a12b737083550e:ShamanAssist_2b3e327b6aa3f539429438eda4b54523();
        if (InCombatLockdown()) then
            self.ShamanAssist_60868f89d5121fe2c81d9406186ee6bc = true;
        else
            self:ShamanAssist_bf97ac8889d478219341eb9cdcb8362c();
        end
    end
end

function ShamanAssist_476e4e6d615566b374a12b737083550e:PLAYER_REGEN_ENABLED()
    if (self.ShamanAssist_60868f89d5121fe2c81d9406186ee6bc) then
        self:ShamanAssist_bf97ac8889d478219341eb9cdcb8362c();
        self.ShamanAssist_60868f89d5121fe2c81d9406186ee6bc = false;
    end
end

function ShamanAssist_476e4e6d615566b374a12b737083550e:PLAYER_TOTEM_UPDATE(slot)
    local ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5 = self.Buttons[slot];

    if (not ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5) then return; end

    local haveTotem, ShamanAssist_8983c60d66c8593ec7165ea9dbedb584, startTime, duration = GetTotemInfo(slot);
    if (haveTotem and ShamanAssist_8983c60d66c8593ec7165ea9dbedb584 and strfind(ShamanAssist_8983c60d66c8593ec7165ea9dbedb584, ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_caa997efdeb36851b2f828f934939927) and ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_5059665d25de845079032324c2617d4c) then
        ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2 = ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_fa0e20b884d24b5fee3e57d9608679e2 or 0;
        if (not ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_69072c73fde2ed407f863929fd1e7483.maxV or ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_5059665d25de845079032324c2617d4c ~= ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_69072c73fde2ed407f863929fd1e7483.maxV) then
            ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_69072c73fde2ed407f863929fd1e7483:SetMinMaxValues(0, ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_5059665d25de845079032324c2617d4c);
            ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_69072c73fde2ed407f863929fd1e7483.maxV = ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_5059665d25de845079032324c2617d4c;
        end
        ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_69072c73fde2ed407f863929fd1e7483.start = startTime;
        ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_69072c73fde2ed407f863929fd1e7483.duration = duration;
        ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_69072c73fde2ed407f863929fd1e7483.active = true;
        ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_69072c73fde2ed407f863929fd1e7483:SetValue(0);
    else
        ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_69072c73fde2ed407f863929fd1e7483:SetValue(0);
        ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_69072c73fde2ed407f863929fd1e7483.active = false;
    end
    if (ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_caa997efdeb36851b2f828f934939927 and self:GetC("notifyEnd") and GetTime() - startTime >= duration) then
        if (SCT and DSCT_Display_Toggle) then
            DSCT_Display_Toggle("SHOWSPELLALERT", 1, nil, format(ShamanAssist_27564b0f8fc08d6bd0345695785ce4b6["消失: %s"], "|cffff6b51" .. tostring(ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_caa997efdeb36851b2f828f934939927)) .. "|r");
        else
            UIErrorsFrame:AddMessage(format(ShamanAssist_27564b0f8fc08d6bd0345695785ce4b6["消失: %s"], "|cffff6b51" .. tostring(ShamanAssist_99f3cf2c6f1fdfadb0fd4ab6e0843bf5.ShamanAssist_caa997efdeb36851b2f828f934939927)) .. "|r");
        end
    end
end

function ShamanAssist_476e4e6d615566b374a12b737083550e:ADDON_LOADED(addonName)
    if (addonName == "cyCircled" and cyCircled) then
        self:RegisterCCSytle();
        self:UnregisterEvent("ADDON_LOADED");
    end
end

function ShamanAssist_476e4e6d615566b374a12b737083550e:UNIT_SPELLCAST_SUCCEEDED(unit, spell)
    if (unit == "player" and spell and (GetNumPartyMembers() > 0 or GetNumRaidMembers() > 0) and self:GetC("notifyMana") and strfind(spell, ShamanAssist_0c8385d3e3f450eda9b88c499f024a36(16190))) then
        SendChatMessage(format(ShamanAssist_27564b0f8fc08d6bd0345695785ce4b6["** %s ** 已施放"], spell), "PARTY");
    end
end

function ShamanAssist_476e4e6d615566b374a12b737083550e:RegisterEvents()
    self:RegisterEvent("SPELLS_CHANGED");
    self:RegisterEvent("PLAYER_REGEN_ENABLED");
    self:RegisterEvent("PLAYER_TOTEM_UPDATE");
    self:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED");
end

function ShamanAssist_476e4e6d615566b374a12b737083550e:UnregisterEvents()
    self:UnregisterEvent("SPELLS_CHANGED");
    self:UnregisterEvent("PLAYER_TOTEM_UPDATE");
    self:UnregisterEvent("UNIT_SPELLCAST_SUCCEEDED");
end

function ShamanAssist_476e4e6d615566b374a12b737083550e:TotemFrameToggle(switch)
    if (switch) then
        TotemFrame:RegisterEvent("PLAYER_TOTEM_UPDATE");
        TotemFrame:RegisterEvent("PLAYER_ENTERING_WORLD");
        TotemFrame:Show();
    else
        TotemFrame:UnregisterEvent("PLAYER_TOTEM_UPDATE");
        TotemFrame:UnregisterEvent("PLAYER_ENTERING_WORLD");
        TotemFrame:Hide();
    end
end

ShamanAssist_476e4e6d615566b374a12b737083550e:Init {
    name = "ShamanAssist",
    func = function()
        ShamanAssist_476e4e6d615566b374a12b737083550e:ShamanAssist_2b3e327b6aa3f539429438eda4b54523();
        ShamanAssist_476e4e6d615566b374a12b737083550e:ShamanAssist_bf97ac8889d478219341eb9cdcb8362c();
    end
};

function ShamanAssistToggle(switch)
    if (switch) then
        ShamanAssist_476e4e6d615566b374a12b737083550e:RegisterEvents();
        ShamanAssist_476e4e6d615566b374a12b737083550e.mainFrame:Show();
    else
        ShamanAssist_476e4e6d615566b374a12b737083550e:UnregisterEvents();
        ShamanAssist_476e4e6d615566b374a12b737083550e.mainFrame:Hide();
    end
end

function ShamanAssistToggleTitle(switch)
    if (switch) then
        ShamanAssist_476e4e6d615566b374a12b737083550e.titleButton:Show();
    else
        ShamanAssist_476e4e6d615566b374a12b737083550e.titleButton:Hide();
    end
end

function ShamanAssistToggleTotemTimer(switch)
    if (switch) then
        ShamanAssist_476e4e6d615566b374a12b737083550e:TotemFrameToggle(true);
    else
        ShamanAssist_476e4e6d615566b374a12b737083550e:TotemFrameToggle(false);
    end
end
