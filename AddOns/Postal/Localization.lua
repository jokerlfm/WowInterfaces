﻿-- Postal Locale File
-- THIS CONTENTS OF THIS FILE IS AUTO-GENERATED BY THE WOWACE PACKAGER
-- Please use the Localization App on WoWAce to update this
-- at http://www.wowace.com/projects/postal/localization/

local AL3 = LibStub("AceLocale-3.0")
local debug = false
--[===[@debug@
debug = true
--@end-debug@]===]

local L = AL3:NewLocale("Postal", "enUS", true, debug)
if L then
L["A button that collects all attachments and coins from mail."] = true
L["Add check boxes to the inbox for multiple mail operations."] = true
L["Add Contact"] = true
L["Add multiple item mail tooltips"] = true
L["Adds a contact list next to the To: field."] = true
L["AH-related mail"] = true
L["Allows you to copy the contents of a mail."] = true
L["Alts"] = true
L["Autofill last person mailed"] = true
L["Auto-Send on Alt-Click"] = true
L["BlackBook"] = true
L["Block incoming trade requests while in a mail session."] = true
L["|cffeda55fAlt-Click|r to send this item to %s."] = true
L["|cffeda55fCtrl-Click|r to return it to sender."] = true
L["|cffeda55fShift-Click|r to take the contents."] = true
L[ [=[|cFFFFCC00*|r Selected mail will be batch opened or returned to sender by clicking Open or Return.
|cFFFFCC00*|r You can Shift-Click 2 checkboxes to mass select every mail between the 2 checkboxes.
|cFFFFCC00*|r You can Ctrl-Click a checkbox to mass select or unselect every mail from that sender.
|cFFFFCC00*|r Select will never delete any mail (mail without text is auto-deleted by the game when all attached items and gold are taken).
|cFFFFCC00*|r Select will skip CoD mails and mails from Blizzard.
|cFFFFCC00*|r Disable the Verbose option to stop the chat spam while opening mail.]=] ] = true
L[ [=[|cFFFFCC00*|r Shift-Click to take item/money from mail.
|cFFFFCC00*|r Ctrl-Click to return mail.
|cFFFFCC00*|r Alt-Click to move an item from your inventory to the current outgoing mail (same as right click in default UI).
|cFFFFCC00*|r Mousewheel to scroll the inbox.]=] ] = true
L[ [=[|cFFFFCC00*|r Simple filters are available for various mail types.
|cFFFFCC00*|r Shift-Click the Open All button to override the filters and take ALL mail.
|cFFFFCC00*|r OpenAll will never delete any mail (mail without text is auto-deleted by the game when all attached items and gold are taken).
|cFFFFCC00*|r OpenAll will skip CoD mails and mails from Blizzard.
|cFFFFCC00*|r Disable the Verbose option to stop the chat spam while opening mail.]=] ] = true
L[ [=[|cFFFFCC00*|r This module will list your contacts, friends, guild mates, alts and track the last 10 people you mailed.
|cFFFFCC00*|r It will also autocomplete all names in your BlackBook.]=] ] = true
L["Choose"] = true
L["Clear list"] = true
L["Collected"] = true
L["Contacts"] = true
L["Copy From"] = true
L["Copy this mail"] = true
L["Delete"] = true
L["Enable Alt-Click to send mail"] = true
L["Express"] = true
L["Friends"] = true
L["Guild"] = true
L["Help"] = true
L["In Progress"] = true
L["Mouse click short cuts for mail."] = true
L["Mousewheel to scroll Inbox"] = true
L["New Profile"] = true
L["New Profile Name:"] = true
L["Non-AH related mail"] = true
L["Open"] = true
L["OpenAll"] = true
L["Open All"] = true
L["Open all Auction cancelled mail"] = true
L["Open all Auction expired mail"] = true
L["Open all Auction successful mail"] = true
L["Open all Auction won mail"] = true
L["Open all mail with attachments"] = true
L["Open all Outbid on mail"] = true
L["Opening Speed"] = true
L["Other options"] = true
L["Part %d"] = true
L["Please post bugs or suggestions at the wowace forums thread at |cFF00FFFFhttp://forums.wowace.com/showthread.php?t=3909|r. When posting bugs, indicate your locale and Postal's version number v%s."] = true
L["Prints the amount of money collected during a mail session."] = true
L["Processing Message"] = true
L["Profile"] = true
L["Rake"] = true
L["Recently Mailed"] = true
L["Remove Contact"] = true
L["Reset Profile"] = true
L["Return"] = true
L["Select"] = true
L["Set subject field to value of coins sent if subject is blank."] = true
L["Shows a clickable visual icon as to whether a mail will be returned or deleted on expiry."] = true
L["Skipping"] = true
L["Some Messages May Have Been Skipped."] = true
L["TradeBlock"] = true
L["Verbose mode"] = true
L["Wire"] = true

if GetLocale() == "enUS" or GetLocale() == "enGB" then return end
end

local L = AL3:NewLocale("Postal", "zhCN")
if L then
L["A button that collects all attachments and coins from mail."] = "收取所有邮件的附件和金币。"
L["Add check boxes to the inbox for multiple mail operations."] = "增加可选框以便于对多个邮件进行操作"
L["Add Contact"] = "添加联系人"
L["Add multiple item mail tooltips"] = "添加多个物品的邮件提示"
L["Adds a contact list next to the To: field."] = "添加联系人列表到收件人栏"
L["AH-related mail"] = "拍卖相关邮件"
L["Allows you to copy the contents of a mail."] = "允许您复制邮件的内容。"
L["Alts"] = "小号"
L["Autofill last person mailed"] = "自动填写最后的收件人"
L["Auto-Send on Alt-Click"] = "Alt-点击 自动发送"
L["BlackBook"] = "黑皮书"
L["Block incoming trade requests while in a mail session."] = "在进行邮件操作中阻止交易请求。"
L["|cffeda55fAlt-Click|r to send this item to %s."] = "|cffeda55fAlt-点击|r 将该物品发送给%s。"
L["|cffeda55fCtrl-Click|r to return it to sender."] = "|cffeda55fCtrl-点击|r 将信退给发件人。"
L["|cffeda55fShift-Click|r to take the contents."] = "|cffeda55fShift-点击|r 获得该邮件的内容副本。"
L[ [=[|cFFFFCC00*|r Selected mail will be batch opened or returned to sender by clicking Open or Return.
|cFFFFCC00*|r You can Shift-Click 2 checkboxes to mass select every mail between the 2 checkboxes.
|cFFFFCC00*|r You can Ctrl-Click a checkbox to mass select or unselect every mail from that sender.
|cFFFFCC00*|r Select will never delete any mail (mail without text is auto-deleted by the game when all attached items and gold are taken).
|cFFFFCC00*|r Select will skip CoD mails and mails from Blizzard.
|cFFFFCC00*|r Disable the Verbose option to stop the chat spam while opening mail.]=] ] = [=[|cFFFFCC00*|r 点击打开或者退信，被选中的邮件会被批量打开或退回。
|cFFFFCC00*|r 按住Shift键点击分别点击2封信的复选框，会将这2封信之前的所有新选中。
|cFFFFCC00*|r 按住Ctrl键点击一封信的复选框，可以将所有来着该发件人的信选中或者取消选中。
|cFFFFCC00*|r 选中则不删除任何邮件（游戏默认当一封没有任何文字的信中的附件被取走之后自动删除该邮件）。
|cFFFFCC00*|r 选中将跳过付款取信的邮件以及来自暴雪的邮件。
|cFFFFCC00*|r 关闭消息模式，取信时聊天窗口将不再显示信息。]=]
L[ [=[|cFFFFCC00*|r Shift-Click to take item/money from mail.
|cFFFFCC00*|r Ctrl-Click to return mail.
|cFFFFCC00*|r Alt-Click to move an item from your inventory to the current outgoing mail (same as right click in default UI).
|cFFFFCC00*|r Mousewheel to scroll the inbox.]=] ] = [=[|cFFFFCC00*|r 按住shift点击取走信中的金币或者物品。
|cFFFFCC00*|r 按住Ctrl点击退信。
|cFFFFCC00*|r 按住Alt点击背包中的物品，将其添加到附件中（同游戏本身的右键点击）。
|cFFFFCC00*|r 鼠标滚轮翻页。]=]
L[ [=[|cFFFFCC00*|r Simple filters are available for various mail types.
|cFFFFCC00*|r Shift-Click the Open All button to override the filters and take ALL mail.
|cFFFFCC00*|r OpenAll will never delete any mail (mail without text is auto-deleted by the game when all attached items and gold are taken).
|cFFFFCC00*|r OpenAll will skip CoD mails and mails from Blizzard.
|cFFFFCC00*|r Disable the Verbose option to stop the chat spam while opening mail.]=] ] = [=[|cFFFFCC00*|r各种邮件类型都有简单的过滤条件可用。
|cFFFFCC00*|rShift+点击“打开所有”按钮可以忽略这些过滤并收取所有邮件。
|cFFFFCC00*|rOpenAll功能将不会删除任何邮件（无内容邮件将在附件和金钱被收取后自动删除）。
|cFFFFCC00*|rOpenAll功能将会阻止付款取信邮件和暴雪发送的邮件。
|cFFFFCC00*|r请关闭详细信息选项来取消打开邮件时的聊天窗口信息。]=]
L[ [=[|cFFFFCC00*|r This module will list your contacts, friends, guild mates, alts and track the last 10 people you mailed.
|cFFFFCC00*|r It will also autocomplete all names in your BlackBook.]=] ] = [=[|cFFFFCC00*|r该模块将列出你所有的联系人、好友、公会成员、小号和你最近发送邮件的10个人。
|cFFFFCC00*|r同时还将自动完成通讯簿中的所有名字，]=]
L["Choose"] = "选择"
L["Clear list"] = "清空列表"
L["Collected"] = "已收取"
L["Contacts"] = "联系人"
L["Copy From"] = "从...复制"
L["Copy this mail"] = "复制这封邮件"
L["Delete"] = "删除"
L["Enable Alt-Click to send mail"] = "允许 Alt-点击 发送邮件"
L["Express"] = "快件"
L["Friends"] = "好友"
L["Guild"] = "公会"
L["Help"] = "帮助"
L["In Progress"] = "处理中"
L["Mouse click short cuts for mail."] = "鼠标快捷方式。"
L["Mousewheel to scroll Inbox"] = "鼠标滚动收件箱"
L["New Profile"] = "新配置"
L["New Profile Name:"] = "新配置名称："
L["Non-AH related mail"] = "非拍卖相关邮件"
L["Open"] = "打开"
L["OpenAll"] = "打开所有"
L["Open All"] = "打开所有"
L["Open all Auction cancelled mail"] = "打开所有取消拍卖的邮件"
L["Open all Auction expired mail"] = "打开所有拍卖过期的邮件"
L["Open all Auction successful mail"] = "打开所有拍卖成功的邮件"
L["Open all Auction won mail"] = "打开所有赢得拍卖的邮件"
L["Open all mail with attachments"] = "打开所有带有附件的邮件"
L["Open all Outbid on mail"] = "打开所有超过出价的邮件"
L["Opening Speed"] = "收信速度"
L["Other options"] = "其他选项"
L["Part %d"] = "第 %d 组"
L["Please post bugs or suggestions at the wowace forums thread at |cFF00FFFFhttp://forums.wowace.com/showthread.php?t=3909|r. When posting bugs, indicate your locale and Postal's version number v%s."] = "请到Wowace的论坛|cFF00FFFFhttp://forums.wowace.com/showthread.php?t=3909|r报告Bug或者提交建议。报告Bug时请说明Postal的版本 v%s。"
L["Prints the amount of money collected during a mail session."] = "显示在一次邮件操作中所收到的金币。"
L["Processing Message"] = "正在处理邮件"
L["Profile"] = "配置"
L["Rake"] = "收款显示"
L["Recently Mailed"] = "最近邮寄"
L["Remove Contact"] = "删除联系人"
L["Reset Profile"] = "重置配置"
L["Return"] = "退信"
L["Select"] = "选择"
L["Set subject field to value of coins sent if subject is blank."] = "在主题为空时将主题自动填充为金币数量。"
L["Shows a clickable visual icon as to whether a mail will be returned or deleted on expiry."] = "显示一个可点击的图标以确定邮件将被退回或是到期删除。"
L["Skipping"] = "忽略"
L["Some Messages May Have Been Skipped."] = "部分邮件可能被忽略。"
L["TradeBlock"] = "阻止交易"
L["Verbose mode"] = "消息模式"
L["Wire"] = "填充标题"

return
end

local L = AL3:NewLocale("Postal", "zhTW")
if L then
L["A button that collects all attachments and coins from mail."] = "一個收取全部附件及金錢的按鈕。"
L["Add check boxes to the inbox for multiple mail operations."] = "增加勾選框以供多重信件指令使用。"
L["Add Contact"] = "新增聯絡人"
L["Add multiple item mail tooltips"] = "新增多個物品的郵件提示框"
L["Adds a contact list next to the To: field."] = "在收件人輸入框旁邊添加一個聯絡列表。"
L["AH-related mail"] = "拍賣相關信件"
L["Allows you to copy the contents of a mail."] = "允许您复制邮件的内容。"
L["Alts"] = "分身"
L["Autofill last person mailed"] = "自動填寫最後曾郵寄的人名"
L["Auto-Send on Alt-Click"] = "Alt-點擊 自動發送"
L["BlackBook"] = "聯絡人名冊"
L["Block incoming trade requests while in a mail session."] = "在處理信件期間拒絕交易要求。"
L["|cffeda55fAlt-Click|r to send this item to %s."] = "|cffeda55fAlt-點擊: |r將物品寄給%s。"
L["|cffeda55fCtrl-Click|r to return it to sender."] = "|cffeda55fCtrl-點擊: |r返回信件。"
L["|cffeda55fShift-Click|r to take the contents."] = "|cffeda55fShift-點擊: |r收取信件。"
L[ [=[|cFFFFCC00*|r Selected mail will be batch opened or returned to sender by clicking Open or Return.
|cFFFFCC00*|r You can Shift-Click 2 checkboxes to mass select every mail between the 2 checkboxes.
|cFFFFCC00*|r You can Ctrl-Click a checkbox to mass select or unselect every mail from that sender.
|cFFFFCC00*|r Select will never delete any mail (mail without text is auto-deleted by the game when all attached items and gold are taken).
|cFFFFCC00*|r Select will skip CoD mails and mails from Blizzard.
|cFFFFCC00*|r Disable the Verbose option to stop the chat spam while opening mail.]=] ] = [=[|cFFFFCC00*|r |cFFFFCC00*|r 選定的信件將批次開啟或通過點擊打開或返回來退還給發件人。
|cFFFFCC00*|r 您可以Shift-點擊兩個複選框來選擇兩個複選框之間的所有信件。
|cFFFFCC00*|r 您可以按Ctrl-點擊一個複選框來選定或取消選定一切來自該發件人的信件。
|cFFFFCC00*|r 選擇 永遠不會刪除任何信件(當所有附在信件的物品和金錢被提取後，遊戲會自動刪除郵箱裡沒有文字的信件) 。
|cFFFFCC00*|r 選擇 將跳過CoD信件和暴雪的信件。
|cFFFFCC00*|r 關閉 消息模式 選項來停止當開啟信件時在聊天框的洗頻。]=]
L[ [=[|cFFFFCC00*|r Shift-Click to take item/money from mail.
|cFFFFCC00*|r Ctrl-Click to return mail.
|cFFFFCC00*|r Alt-Click to move an item from your inventory to the current outgoing mail (same as right click in default UI).
|cFFFFCC00*|r Mousewheel to scroll the inbox.]=] ] = [=[|cFFFFCC00*|r Shift-點擊將從郵件拿取物品/金錢。
|cFFFFCC00*|r 按Ctrl -點擊將退還信件。
|cFFFFCC00*|r 按Alt-點擊一件物品將從您的背包移到目前的外寄信件（等同UI默認的右鍵點擊 ） 。
|cFFFFCC00*|r 用滑鼠滾輪滾動收件匣。]=]
L[ [=[|cFFFFCC00*|r Simple filters are available for various mail types.
|cFFFFCC00*|r Shift-Click the Open All button to override the filters and take ALL mail.
|cFFFFCC00*|r OpenAll will never delete any mail (mail without text is auto-deleted by the game when all attached items and gold are taken).
|cFFFFCC00*|r OpenAll will skip CoD mails and mails from Blizzard.
|cFFFFCC00*|r Disable the Verbose option to stop the chat spam while opening mail.]=] ] = [=[|cFFFFCC00*|r 簡單的篩選器可用於篩選各種信件類型。
|cFFFFCC00*|r Shift-點擊 收取全部 按鈕將覆蓋所有的篩選器，並提取所有的信件。
|cFFFFCC00*|r 收取全部 永遠不會刪除任何信件(當所有附在信件的物品和金錢被提取後，遊戲會自動刪除郵箱裡沒有文字的信件) 。
|cFFFFCC00*|r 收取全部 將跳過CoD信件和暴雪的信件。
|cFFFFCC00*|r 關閉 消息模式 選項來停止當開啟信件時在聊天框的洗頻。]=]
L[ [=[|cFFFFCC00*|r This module will list your contacts, friends, guild mates, alts and track the last 10 people you mailed.
|cFFFFCC00*|r It will also autocomplete all names in your BlackBook.]=] ] = [=[|cFFFFCC00*|r 此模組將您的聯絡人名單，朋友，公會隊友，分身，並追踪過去您曾郵寄的10人。
|cFFFFCC00*|r 它也將自動填寫已在您的黑名單內所有的名字。]=]
L["Choose"] = "選取"
L["Clear list"] = "清空列表"
L["Collected"] = "已領取"
L["Contacts"] = "聯絡人"
L["Copy From"] = "複製自"
L["Copy this mail"] = "復制這封郵件"
L["Delete"] = "刪除"
L["Enable Alt-Click to send mail"] = "開啟Alt-點擊 發送信件"
L["Express"] = "快速收發"
L["Friends"] = "好友"
L["Guild"] = "公會"
L["Help"] = "幫助"
L["In Progress"] = "正在處理"
L["Mouse click short cuts for mail."] = "點擊快速收發信件。"
L["Mousewheel to scroll Inbox"] = "滑鼠滾動收件欄"
L["New Profile"] = "新設定檔"
L["New Profile Name:"] = "新設定檔名稱:"
L["Non-AH related mail"] = "非拍賣相關信件"
L["Open"] = "開啟"
L["OpenAll"] = "收取全部"
L["Open All"] = "收取全部"
L["Open all Auction cancelled mail"] = "打開所有取消拍賣的信件"
L["Open all Auction expired mail"] = "打開所有拍賣過期的信件"
L["Open all Auction successful mail"] = "打開所有拍賣成功的信件"
L["Open all Auction won mail"] = "打開所有赢得拍賣的信件"
L["Open all mail with attachments"] = "打開所有帶有附件的信件"
L["Open all Outbid on mail"] = "打開所有超過出價的信件"
L["Opening Speed"] = "收取速度"
L["Other options"] = "其他選項"
L["Part %d"] = "分組%d"
L["Please post bugs or suggestions at the wowace forums thread at |cFF00FFFFhttp://forums.wowace.com/showthread.php?t=3909|r. When posting bugs, indicate your locale and Postal's version number v%s."] = "如要回報錯誤或建議請往wowace論壇|cFF00FFFFhttp://forums.wowace.com/showthread.php?t=3909|r. 發帖時，說明你的語系和Postal的版本編號 v%s."
L["Prints the amount of money collected during a mail session."] = "顯示這次收取的金錢。"
L["Processing Message"] = "正在處理訊息"
L["Profile"] = "設定檔"
L["Rake"] = "報告"
L["Recently Mailed"] = "最近寄出的郵件"
L["Remove Contact"] = "移除聯絡人"
L["Reset Profile"] = "重置設定檔"
L["Return"] = "返回"
L["Select"] = "選擇"
L["Set subject field to value of coins sent if subject is blank."] = "在「主題:」欄位自動填寫寄件金額。"
L["Shows a clickable visual icon as to whether a mail will be returned or deleted on expiry."] = "視覺顯示點擊圖示是否郵件將被退回或刪除期滿。"
L["Skipping"] = "略過"
L["Some Messages May Have Been Skipped."] = "部份訊息可能會被略過。"
L["TradeBlock"] = "拒絕交易"
L["Verbose mode"] = "消息模式"
L["Wire"] = "自動填寫金額"

return
end
