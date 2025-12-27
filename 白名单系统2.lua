local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local WhitelistedPlayers = {
    [""] = true,
    ["cosmsnz"] = true,
    ["玩家用户名"] = true,
    ["玩家用户名"] = true,
}

local function IsWhitelisted(player)
    return WhitelistedPlayers[player.Name] or false
end

local localPlayer = Players.LocalPlayer

local isLocalPlayerWhitelisted = IsWhitelisted(localPlayer)

if isLocalPlayerWhitelisted then
    StarterGui:SetCore("SendNotification", {
        Title = "白名单认证",
        Text = "玩家:"..localPlayer.Name.."，检测完毕白名单玩家，稍后会加载脚本",
        Duration = 7,
 loadstring(game:HttpGet("https://raw.githubusercontent.com/ljo178/ljo211/96c2869f6c4190881233d1edf83434dcef70045b/%E8%8E%B7%E5%8F%96%E7%9A%84%E8%84%9A%E6%9C%AC_20251227_142905.lua"))()
   })
    -- 在这里添加你的脚本不是源码
else
    localPlayer:Kick("你没有被加入白名单，请3678579698加购买")
end