local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Ream Hub Made by Nah i am greed#5913 & Cali Jr#5393", HidePremium = false, SaveConfig = true, ConfigFolder = "DoorsFun", IntroText = "Ream Hub", IntroEnabled = true})

local FunTab = Window:MakeTab({
	Name = "Fun",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
OrionLib:MakeNotification({
	Name = "Thanks for using script",
	Content = "Made by Nah i am greed#5913 & Cali Jr#5393",
	Image = "rbxassetid://4483345998",
	Time = 5
})
FunTab:AddButton({
	Name = "Crucifix (Work on entity you spawn)",
	Callback = function()
      _G.Uses = 1
_G.Range = 55
_G.OnAnything = false
_G.Fail = false
loadstring(game:HttpGet('https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua'))()
		
  end    
 })
  FunTab:AddButton({
	Name = "Crucifix (infinite)",
	Callback = function()
      _G.Uses = math.huge
_G.Range = 55
_G.OnAnything = false
_G.Fail = false
loadstring(game:HttpGet('https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua'))()
		
  end    
})
FunTab:AddButton({
	Name = "Crucifix On Anything",
	Callback = function()
      _G.Uses = 1
_G.Range = 55
_G.OnAnything = true
_G.Fail = false
loadstring(game:HttpGet('https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua'))()

    end 
})
FunTab:AddButton({
	Name = "Crucifix On Anything (Infinite)",
	Callback = function()
      _G.Uses = math.huge
_G.Range = 55
_G.OnAnything = true
_G.Fail = false
loadstring(game:HttpGet('https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua'))()
 end 
 })
FunTab:AddLabel("How to Use Crucifix On Anything: Hold Q Clikc to Object while holding Q (It Even Works in Lobby)")   
FunTab:AddButton({
	Name = "Gummy FlashLight (Made by @Luke3#5175)",
	Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Gummy%20Flashlight%20Script"))()
 end 
})
FunTab:AddButton({
	Name = "Crucifix on 0 Door (On Anything) (Made By @Luke3#5175)",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Crucifix%20On%20Door%200"))()
  	end    
})
FunTab:AddButton({
	Name = "Easter Egg (Execute at door 0-1)",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Eggeaster.lua"))() 
  	end    
})
FunTab:AddButton({
	Name = "Crucifix On Rift (Execute at door 0-1)",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Crucifix%20On%20Rift"))()
  	end    
})
local EntityTab = Window:MakeTab({
	Name = "Spawns",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
EntityTab:AddLabel("THEY ARE KILLING YOU!!!")   
EntityTab:AddButton({
	Name = "Spawn Rush",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Rush.lua"))() 
  	end    
})
EntityTab:AddButton({
	Name = "Spawn Ambush",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Ambush.lua"))() 
  	end    
})
EntityTab:AddButton({
	Name = "Spawn Trollface",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Troll.lua"))() 
  	end    
})
	EntityTab:AddButton({
		Name = "Spawn Rush Next Room",
		Callback = function()
		local latestroom = game.ReplicatedStorage.GameData.LatestRoom
	    nextroom = game.Workspace.CurrentRooms.ChildAdded:Connect(function()
	    loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Rush.lua"))() 
	     nextroom:Disconnect()
	     end)
	
	
	  	end
})
EntityTab:AddButton({
		Name = "Spawn Ambush Next Room",
		Callback = function()
		local latestroom = game.ReplicatedStorage.GameData.LatestRoom
	    nextroom = game.Workspace.CurrentRooms.ChildAdded:Connect(function()
	    loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Ambush.lua"))() 
	     nextroom:Disconnect()
	     end)
	
	
	  	end
})
EntityTab:AddButton({
		Name = "Spawn Troll Next Room",
		Callback = function()
		local latestroom = game.ReplicatedStorage.GameData.LatestRoom
	    nextroom = game.Workspace.CurrentRooms.ChildAdded:Connect(function()
	    loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Troll.lua"))() 
	     nextroom:Disconnect()
	     end)
	
	
	  	end
})
EntityTab:AddToggle({
	Name = "Rush Every Room",
	Default = false,
	Callback = function(Value)
   
    if Value == true then
    nextroom = game.Workspace.CurrentRooms.ChildAdded:Connect(function()
    
   loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Rush.lua"))() 
    end)
    elseif Value == false then
    if nextroom ~= nil then
nextroom:Disconnect()
    end
end
end
})
 EntityTab:AddToggle({
	Name = "Ambush Every Room",
	Default = false,
	Callback = function(Value)
   
    if Value == true then
    nextroom = game.Workspace.CurrentRooms.ChildAdded:Connect(function()
    
   loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Ambush.lua"))() 
    end)
    elseif Value == false then
    if nextroom ~= nil then
nextroom:Disconnect()
    end
end
end
})
EntityTab:AddToggle({
	Name = "Troll Every Room",
	Default = false,
	Callback = function(Value)
   
    if Value == true then
    nextroom = game.Workspace.CurrentRooms.ChildAdded:Connect(function()
    
   loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Troll.lua"))() 
    end)
    elseif Value == false then
    if nextroom ~= nil then
nextroom:Disconnect()
    end
end
end
})
local PTab = Window:MakeTab({
	Name = "Plushies",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
PTab:AddButton({
	Name = "Penguin Plushie",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/PenguinManiack%20Plushie"))()
  	end    
})
PTab:AddButton({
	Name = "Dread Plushie",
	Callback = function()
local dread=game:GetObjects("rbxassetid://13071801863")[1];dread.Parent=game.Players.LocalPlayer.Backpack
  	end    
 })
 PTab:AddButton({
	Name = "Maxwell Plushie",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Maxwell%20Plushie"))()
  	end   
})
PTab:AddLabel("At Up Plushies maked by @Luke3#5175")   
PTab:AddButton({
	Name = "Jeff The Killer Plushie",
	Callback = function()
 local tool = game:GetObjects("rbxassetid://13069619857")[1]
tool.Parent = game.Players.LocalPlayer.Backpack
  	end    
})
local TTab = Window:MakeTab({
	Name = "Trolling",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
TTab:AddButton({
	Name = "Fire Every player item",
	Callback = function()
 for i, v in pairs(game:GetDescendants()) do
    if v.Name == "Remote" then
        v:FireServer()
       end
   end



local UserInputService = game:GetService("UserInputService")
local function triggerRemote()
    for i, v in pairs(game:GetDescendants()) do
        if v.Name == "Remote" then
            v:FireServer()
        end
    end
end
triggerRemote()
end    
})
local OTab = Window:MakeTab({
    Name = "Other",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
OTab:AddButton({
	Name = "Destroy gui",
	Callback = function()
      	OrionLib:Destroy()
  	end    
})


OrionLib:Init()Press {SPACE} for 0 seconds Pause 500 Milliseconds
