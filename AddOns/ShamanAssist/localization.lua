local L = BLocal("ShamanAssist");

if (GetLocale() == "zhCN") then
    L["萨满助手"] = true;
    L["图腾1"] = true;
    L["图腾2"] = true;
    L["图腾3"] = true;
    L["图腾4"] = true;
    L["基本选项"] = true;
    L["锁定位置"] = true;
    L["调节透明度..."] = true;
    L["设置图腾技能条的透明度"] = true;
    L["缩放比例..."] = true;
    L["设置图腾技能条的缩放比例"] = true;
    L["按键绑定..."] = true;
    L["排列方式"] = true;
    L["横向排列"] = true;
    L["竖向排列"] = true;
    L["弹出方式"] = true;
    L["右键点击"] = true;
    L["鼠标划过"] = true;
    L["弹出方向"] = true;
    L["向上弹出"] = true;
    L["向下弹出"] = true;
    L["向左弹出"] = true;
    L["向右弹出"] = true;
    L["信息提示"] = true;
    L["图腾消失提示"] = true;
    L["法潮图腾提示"] = true;
    L["左键 - 施放图腾\n右键 - 弹出菜单"] = true;
    L["左键 - 拖动图腾条\n右键 - 弹出配置菜单"] = true;
    L["消失: %s"] = true;
    L["** %s ** 已施放"] = true;
elseif (GetLocale() == "zhTW") then
    L["萨满助手"] = "薩滿助手";
    L["图腾1"] = "圖騰1";
    L["图腾2"] = "圖騰2";
    L["图腾3"] = "圖騰3";
    L["图腾4"] = "圖騰4";
    L["基本选项"] = "基本選項";
    L["锁定位置"] = "鎖定位置";
    L["调节透明度..."] = "調節透明度...";
    L["设置图腾技能条的透明度"] = "設置圖騰技能條的透明度";
    L["缩放比例..."] = "縮放比例...";
    L["设置图腾技能条的缩放比例"] = "設置圖騰技能條的縮放比例";
    L["按键绑定..."] = "按鍵綁定...";
    L["排列方式"] = "排列方式";
    L["横向排列"] = "橫向排列";
    L["竖向排列"] = "豎向排列";
    L["弹出方式"] = "彈出方式";
    L["右键点击"] = "右鍵點擊";
    L["鼠标划过"] = "滑鼠劃過";
    L["弹出方向"] = "彈出方向";
    L["向上弹出"] = "向上彈出";
    L["向下弹出"] = "向下彈出";
    L["向左弹出"] = "向左彈出";
    L["向右弹出"] = "向右彈出";
    L["信息提示"] = "資訊提示";
    L["图腾消失提示"] = "圖騰消失提示";
    L["法潮图腾提示"] = "法潮圖騰提示";
    L["左键 - 施放图腾\n右键 - 弹出菜单"] = "左鍵 - 施放圖騰\n右鍵 - 彈出菜單";
    L["左键 - 拖动图腾条\n右键 - 弹出配置菜单"] = "左鍵 - 拖動圖騰條\n右鍵 - 彈出配置功能表";
    L["消失: %s"] = "消失: %s";
    L["** %s ** 已施放"] = "** %s ** 已施放";
else
    L["基本选项"] = "General";
    L["图腾1"] = "Totem 1";
    L["图腾2"] = "Totem 2";
    L["图腾3"] = "Totem 3";
    L["图腾4"] = "Totem 4";
    L["萨满助手"] = "Shaman Assistant";
    L["锁定位置"] = "Lock position";
    L["调节透明度..."] = "Change opacity...";
    L["设置图腾技能条的透明度"] = "Change the opacity of totem bar";
    L["缩放比例..."] = "Scale";
    L["设置图腾技能条的缩放比例"] = "Change the scale of totem bar";
    L["按键绑定..."] = "Key binding...";
    L["排列方式"] = "Aligment";
    L["横向排列"] = "Horizontal";
    L["竖向排列"] = "Vertical";
    L["弹出方式"] = "Popup method";
    L["右键点击"] = "Right click";
    L["鼠标划过"] = "Mouse hover";
    L["弹出方向"] = "Popup direction";
    L["向上弹出"] = "Up";
    L["向下弹出"] = "Down";
    L["向左弹出"] = "Left";
    L["向右弹出"] = "Right";
    L["信息提示"] = "Information Tip";
    L["图腾消失提示"] = "Alert when totem is gone"
    L["法潮图腾提示"] = "Alert when Mana Spring Totem is gained"
    L["左键 - 施放图腾\n右键 - 弹出菜单"] = "Left Click - Cast totem\nRight Click - Popup menu";
    L["左键 - 拖动图腾条\n右键 - 弹出配置菜单"] = "Left Click - Move totem bar\nRight Click - Popup menu";
    L["消失: %s"] = "Fade: %s"
    L["** %s ** 已施放"] = "** %s ** has been cast";
end

BINDING_HEADER_SMA_HEADER = L["萨满助手"];
_G["BINDING_NAME_CLICK SMAButton1:LeftButton"] = L["图腾1"];
_G["BINDING_NAME_CLICK SMAButton2:LeftButton"] = L["图腾2"];
_G["BINDING_NAME_CLICK SMAButton3:LeftButton"] = L["图腾3"];
_G["BINDING_NAME_CLICK SMAButton4:LeftButton"] = L["图腾4"];
_G["BINDING_NAME_CLICK SMAButton1:RightButton"] = L["图腾1菜单"];
_G["BINDING_NAME_CLICK SMAButton2:RightButton"] = L["图腾2菜单"];
_G["BINDING_NAME_CLICK SMAButton3:RightButton"] = L["图腾3菜单"];
_G["BINDING_NAME_CLICK SMAButton4:RightButton"] = L["图腾4菜单"];
_G["BINDING_NAME_CLICK SMACALLBACK:LeftButton"] = GetSpellInfo(39104); -- 图腾召唤
