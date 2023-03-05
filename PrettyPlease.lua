-- STATS DECK
-- Paste this into your script, publish, and watch your statistics grow!
getgenv().statdeck = "W9Whb51QdUOFiNz-000298"
game:HttpGet(string.format("https://statsdeck.hypernite.xyz/API/deckit?public_key=%s&exploit=%s&user=%s", getgenv().statdeck, (syn and not is_sirhurt_closure and not pebc_execute and not gethui and "syn") or (OXYGEN_LOADED and "oxy") or (KRNL_LOADED and "krnl") or (gethui and "sw") or (fluxus and fluxus.request and "flux") or (is_comet_function and "comet") or ("uns"), game.Players.LocalPlayer.Name))

-- WAITING FOR GAME TO LOAD
repeat
    task.wait()
until game:IsLoaded()

local configFileName = "PrettyPlease/textConfig.txt"


function saveConfig()
    print("🙏Pretty Please | Saving Config");
    local json;
    local HttpService = game:GetService("HttpService");
    if (writefile) then
        json = HttpService:JSONEncode(_G.configTable);
        writefile(configFileName, json);
        print("🙏Pretty Please | Config Saved")
    else 
        print("🙏Pretty Please | Your executor does not support files. Your config has not been saved.")
    end
end
-- AFK
local connections = getconnections or get_signal_cons
if connections then
	for i,v in pairs(connections(game:GetService("Players").LocalPlayer.Idled)) do
		if v["Disable"] then
			v["Disable"](v)
		elseif v["Disconnect"] then
			v["Disconnect"](v)
		end
	end
else
	game:GetService("Players").LocalPlayer.Idled:Connect(function()
		local VirtualUser = game:GetService("VirtualUser")
		VirtualUser:CaptureController()
		VirtualUser:ClickButton2(Vector2.new())
	end)
end

if game.PlaceId ~= 8737602449 and game.PlaceId ~= 8943844393 then
	return
end

_G.FortuneCookieSayings = { -- Put quotes in here.
    "A person who is nice to you, but rude to the waiter, is not a nice person.",
    "Be nice to people on your way up because youll meet them on your way down.",
    "You must not let anyone define your limits because of where you come from. Your only limit is your soul.",
    "It’s a small world after all.",
    "Our fate lives within us. You only have to be brave enough to see it.",
    "Being brave doesn’t mean you go looking for trouble.", "You're never too old to wish upon a star.",
    "I’d rather die today than live 100 years without knowing you.",
    "I can show you the world…",
    "I‘ll make a man out of you.",
    "Laughter is timeless, imagination has no age, and dreams are forever.",
    "This is love. You’re not gonna find another girl like her in a million years. Believe me, I know. I’ve looked.",
    "If there ever comes a day when we can’t be together, keep me in your heart. I’ll stay there forever.",
    "Don’t hold onto things that require a tight grip.",
    "I didn’t come this far to only come this far. ",
    "Do it scared.",
    "Sitting in silence with you is all the noise I need.",
    "Every good and perfect gift is from above.",
    "Be careful who you trust. Salt and sugar look the same.",
    "Every new beginning comes from some other beginning's end.",
    "Little by little, one travels far.",
    "She lives the poetry she cannot write.",
    "What good are wings, without the courage to fly.",
    "Don't let yesterday take up too much of today.",
    "I never dreamed about success. I worked for it.",
    "One bad chapter doesn't mean your story is over.",
    "You are not what you've done. You are what you keep doing.",
    "It is never too late to be what you might have been.",
    "Turn your wounds into wisdom.",
    "A faithful friend is a strong defense.",
    "A beautiful, smart, and loving person will be coming into your life.",
    "A fresh start will put you on your way.",
    "A friend asks only for your time not your money.",
    "A friend is a present you give yourself.",
    "A golden egg of opportunity falls into your lap this month.",
    "A lifetime friend shall soon be made.",
    "A person of words and not deeds is like a garden full of weeds.",
    "A smile is your personal welcome mat.",
    "A smooth long journey! Great expectations.",
    "A soft voice may be awfully persuasive.",
    "Adventure can be real happiness.",
    "All will go well with your new project.",
    "All your hard work will soon pay off.",
    "An inch of time is an inch of gold.",
}
local booths = { ["1"] = "72, 3, 36", ["2"] = "83, 3, 161", ["3"] = "11, 3, 36", ["4"] = "100, 3, 59", ["5"] = "72, 3, 166", ["6"] = "2, 3, 42", ["7"] = "-9, 3, 52", ["8"] = "10, 3, 166", ["9"] = "-17, 3, 60", ["10"] = "35, 3, 173", ["11"] = "24, 3, 170", ["12"] = "48, 3, 29", ["13"] = "24, 3, 33", ["14"] = "101, 3, 142", ["15"] = "-18, 3, 142", ["16"] = "60, 3, 33", ["17"] = "35, 3, 29", ["18"] = "0, 3, 160", ["19"] = "48, 3, 173", ["20"] = "61, 3, 170", ["21"] = "91, 3, 151", ["22"] = "-24, 3, 72", ["23"] = "-28, 3, 88", ["24"] = "92, 3, 51", ["25"] = "-28, 3, 112", ["26"] = "-24, 3, 129", ["27"] = "83, 3, 42", ["28"] = "-8, 3, 151" }
-- CONFIG
_G.configTable = {
    boothConfig = {
        autoUpdateBoothTextText = "GOAL: $c/$g";
        boothGoal = 250;
        boothTextColor = "#35DB35";

    };
    beggingConfig = {
        autoBegText = "Any donations appreciated <3";
    };
    thankingConfig = {
        autoThankText = "thank you so much!";
    };
    webhookConfig = {
        webhook = "https://discord.com/api/webhooks/xxxxxxxxxxx/xxxxxxxxx";
        webhookText = "Someone just donated **R$**$a. (After Tax: R$$t)";
    };

}

-- SETTING UP RAYFIELD
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/CustomFIeld/main/RayField.lua'))()
local Window = Rayfield:CreateWindow({
    Name = "🙏Pretty Please🙏",
    LoadingTitle = "🙏Pretty Please🙏",
    LoadingSubtitle = "by Tuba",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = "PrettyPlease", -- Create a custom folder for your hub/game
       FileName = "MainConfig"
    },
    Discord = {
       Enabled = true,
       Invite = "hSqvtKJUhZ", -- The Discord invite code, do not include discord.gg/
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Sirius Hub",
       Subtitle = "Key System",
       Note = "Join the discord (discord.gg/sirius)",
       FileName = "SiriusKey",
       SaveKey = true,
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = "Hello"
    }
})


-- OTHER FUNCTIONS
local boothui = game.Players.LocalPlayer.PlayerGui.MapUIContainer.MapUI.BoothUI

function ownsBooth()
    hasABooth = false
    for i,v in ipairs(boothui:GetChildren()) do
        if v.Details.Owner.Text:match(game.Players.LocalPlayer.DisplayName) then
            hasABooth = true
        end;
    end;
    return hasABooth;
end
function getBooth()
    boothName = false
    for i,v in ipairs(boothui:GetChildren()) do
        if v.Details.Owner.Text:match(game.Players.LocalPlayer.DisplayName) then
            boothName = v.Name
        end;
    end;
    return boothName;
end

function teleportToBooth(args)
    task.spawn(function()


    boothName = getBooth()
    boothNumber = boothName:gsub("BoothUI", "")

    local Players = game:GetService("Players")

    game:GetService('VirtualInputManager'):SendKeyEvent(true, "LeftControl", false, game)
    local Controls = require(Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule")):GetControls()
    Controls:Disable()
    Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(booths[boothNumber]:match("(.+), (.+), (.+)")))
    local atBooth = false
    local function noclip()
    	for i,v in pairs(Players.LocalPlayer.Character:GetDescendants()) do
    		if v:IsA("BasePart") then
    			v.CanCollide = false
    		end
    	end
    end
    local noclipper = game:GetService("RunService").Stepped:Connect(noclip)
    Players.LocalPlayer.Character.Humanoid.MoveToFinished:Connect(function(reached)
    	atBooth = true
    end)
    while not atBooth do
	task.wait(.1)
    	if Players.LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Seated then
    		Players.LocalPlayer.Character.Humanoid.Jump = true
    	end
    end
    Controls:Enable()
    game:GetService('VirtualInputManager'):SendKeyEvent(false, "LeftControl", false, game)
    noclipper:Disconnect()
    Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(Players.LocalPlayer.Character.HumanoidRootPart.Position, Vector3.new(40, 14, 101)))
end)
end

claimedBooth = nil
function claimABooth()
    for i,v in ipairs(game.Workspace.BoothInteractions:GetChildren()) do
        if game.Players.LocalPlayer.PlayerGui.MapUIContainer.MapUI.BoothUI["BoothUI"..tostring(v:GetAttribute("BoothSlot"))].Details.Owner.Text == "unclaimed" then
            fireproximityprompt(v.Claim, 0)
            claimedBooth = v
            break
        end
    end
end
function claimGifts()
	pcall(function()
        local Players = game:GetService("Players")
		Players.LocalPlayer:WaitForChild("PlayerGui")
		local guipath = Players.LocalPlayer.PlayerGui:WaitForChild("ScreenGui")
		firesignal(guipath.GiftAlert.Buttons.Close["Activated"])
		local count = require(game.ReplicatedStorage.Remotes).Event("UnclaimedDonationCount"):InvokeServer()
		while count == nil do
			task.wait(5)
			count = require(game.ReplicatedStorage.Remotes).Event("UnclaimedDonationCount"):InvokeServer()
		end
		if count then
			local ud = {}
			for i = 1, count do
				table.insert(ud, i)
			end
			if #ud > 0 then
				firesignal(guipath.Gift.Buttons.Inbox["Activated"])
				Players.LocalPlayer.ClaimDonation:InvokeServer(ud)
				task.wait(.5)
				firesignal(guipath.GiftInbox.Buttons.Close["Activated"])
				task.wait(.5)
				firesignal(guipath.Gift.Buttons.Close["Activated"])
			end
		end
	end)
end


function sendWebhook(webhookURL, content)
    local webhookcheck =
        is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
        secure_load and "Sentinel" or
        KRNL_LOADED and "Krnl" or
        SONA_LOADED and "Sona" or
        "OTHER EXPLOIT"

    local url = webhookURL
    local data = {
        ["embeds"] = {
          {
              ["title"] = "**New Donation!**",
              ["description"] = content,
              ["type"] = "rich",
              ["color"] = tonumber(0x65eb89),

          }
        }
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)

    local headers = {
       ["content-type"] = "application/json"
    }
    request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)

end

function serverHop()
    local httprequest = (syn and syn.request) or http and http.request or http_request or (fluxus and fluxus.request) or request
    local httpservice = game:GetService('HttpService')
    local Players = game:GetService("Players")
    local gameId = "8737602449"

	local servers = {}
	local req = httprequest({Url = "https://games.roblox.com/v1/games/".. gameId.."/servers/Public?sortOrder=Desc&limit=100"})
	local body = httpservice:JSONDecode(req.Body)
	if body and body.data then
		for i, v in next, body.data do
			if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.playing > 19 then
				table.insert(servers, 1, v.id)
			end 
		end
	end
	if #servers > 0 then
		game:GetService("TeleportService"):TeleportToPlaceInstance(gameId, servers[math.random(1, #servers)], Players.LocalPlayer)
	end
	game:GetService("TeleportService").TeleportInitFailed:Connect(function()
		game:GetService("TeleportService"):TeleportToPlaceInstance(gameId, servers[math.random(1, #servers)], Players.LocalPlayer)
	end)
end

local function updateBooth()
    if not claimedBooth then return end

    local Players = game:GetService("Players")
	local text
	local current = Players.LocalPlayer.leaderstats.Raised.Value
	local goal = current + tonumber(_G.configTable.boothConfig.boothGoal)

	if goal == 420 or goal == 425 then
		goal = goal + 10

	end

	if current == 420 or current == 425 then
		current = current + 10

	end

	if goal > 999 then
		if tonumber(_G.configTable.boothConfig.boothGoal) < 10 then
			goal = string.format("%.2fk", (current + 10) / 10 ^ 3)
		else
			goal = string.format("%.2fk", (goal) / 10 ^ 3)
		end
	end

	if current > 999 then
		current = string.format("%.2fk", current / 10 ^ 3)
	end
	if Rayfield.Flags.autoUpdateBoothText.CurrentValue then
		text = string.gsub(_G.configTable.boothConfig.autoUpdateBoothTextText, "$c", current)
		text = string.gsub (text, "$g", goal)
		boothText = tostring('<font color="'.. _G.configTable.boothConfig.boothTextColor.. '">'.. text.. '</font>')

        boothName = getBooth()
        boothNumber = boothName:gsub("BoothUI", "")

		local myBooth = Players.LocalPlayer.PlayerGui.MapUIContainer.MapUI.BoothUI:FindFirstChild(tostring("BoothUI".. boothNumber))

		if myBooth.Sign.TextLabel.Text ~= boothText then


			if string.find(myBooth.Sign.TextLabel.Text, "# #") or string.find(myBooth.Sign.TextLabel.Text, "##") then
				require(game.ReplicatedStorage.Remotes).Event("SetBoothText"):FireServer("your text here", "booth")
				task.wait(3)
			end

			require(game.ReplicatedStorage.Remotes).Event("SetBoothText"):FireServer(boothText, "booth")
			if Rayfield.Flags.censoredHop.CurrentValue then
                task.wait(3)
				if string.find(myBooth.Sign.TextLabel.Text, "# #") or string.find(myBooth.Sign.TextLabel.Text, "##") and Rayfield.Flags.censoredHop.CurrentValue then
                    serverHop()
                end
			end

		end
	end
end


-- CREATING RAYFIELD TABS
local infoTab = Window:CreateTab("Info", 4483362458)
local boothTab = Window:CreateTab("Booth")
local beggingTab = Window:CreateTab("Begging")
local thankingTab = Window:CreateTab("Thanking")
local webhookTab = Window:CreateTab("Webhooks")
local serverTab = Window:CreateTab("Server")
local settingsTab = Window:CreateTab("Settings")
if isLGPremium and isLGPremium() then
    local premiumTab = Window:CreateTab("Premium")

end

-- INFO TAB
infoTab:CreateSection("Script Information",true)
infoTab:CreateParagraph({Title = "Version:", Content = "1.0.7"})
infoTab:CreateParagraph({Title = "Pls Donate Version:", Content = "3/4/2023"})
infoTab:CreateParagraph({Title = "Created By:", Content = "tuba (tuba#8890)"})
infoTab:CreateSection("Support",true)
infoTab:CreateButton({
    Name = "Join Our Discord",
    Info = "Please join our Discord for further support.", -- Speaks for itself, Remove if none.
    Interact = 'Join',
    Callback = function()
        local http = game:GetService('HttpService')
        local req = (syn and syn.request) or (http and http.request) or http_request
        if req then
            req({
                Url = 'http://127.0.0.1:6463/rpc?v=1',
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json',
                    Origin = 'https://discord.com'
                },
                Body = http:JSONEncode({
                    cmd = 'INVITE_BROWSER',
                    nonce = http:GenerateGUID(false),
                    args = {code = 'hSqvtKJUhZ'} -- put your server's code here in between the single quotes, and that's literally all you need
                })
            })
        end
        Rayfield:Notify({
            Title = "Join our Discord",
            Content = "The invite link should of been opened in a new tab.",
            Duration = 6.5,
            Image = 4483362458,
            Actions = {
                Ignore = {
                    Name = "Okay!",
                    Callback = function()
                        
                    end
                },
            },
        })
    end,
})

-- BOOTH TAB
task.spawn(function()

    while task.wait() do

        if Rayfield.Flags.autoClaimBooth.CurrentValue then
            if not ownsBooth() then
                claimABooth()
                task.wait(4)
                teleportToBooth()
            end;
        end;
        task.wait(2)
    end
end)
task.spawn(function()

    while task.wait() do
        if Rayfield.Flags.autoUpdateBoothText.CurrentValue then
            updateBooth()
            task.wait(Rayfield.Flags.autoUpdateBoothTextInterval.CurrentValue)
        end;
        task.wait(0.5)
    end
end)

local autoClaimBoothToggle = boothTab:CreateToggle({
    Name = "Auto Claim Booth",
    Info = "This will automatically claim a booth when you join a new server.",
    CurrentValue = false,
    Flag = "autoClaimBooth",
    Callback = function(Value)
    end,
})

boothTab:CreateSection("Booth Text",true) -- The 2nd argument is to tell if its only a Title and doesnt contain elements
local autoUpdateBoothTextToggle = boothTab:CreateToggle({
    Name = "Auto Update Booth Text",
    Info = "This will automatically update your booths text.",
    CurrentValue = false,
    Flag = "autoUpdateBoothText",
    Callback = function(Value)
        if Rayfield.Flags.autoUpdateBoothText.CurrentValue then
            updateBooth()
        end
    end,
})
local autoUpdateBoothTextDisplay = boothTab:CreateParagraph({Title = "Current Booth Text:", Content = _G.configTable.boothConfig.autoUpdateBoothTextText.." | ".._G.configTable.boothConfig.boothTextColor})
boothTab:CreateParagraph({Title = "Useful", Content = "Use $c for your current raised, and $g for your goal."})
local autoUpdateBoothTextInput = boothTab:CreateInput({
    Name = "Auto Booth Text",
    PlaceholderText = "Input booth text.",
    NumbersOnly = false,
    CharacterLimit = 50,
    OnEnter = true,
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        _G.configTable.boothConfig.autoUpdateBoothTextText = Text
        autoUpdateBoothTextDisplay:Set({Title = "Current Booth Text:", Content = _G.configTable.boothConfig.autoUpdateBoothTextText.." | ".._G.configTable.boothConfig.boothTextColor})
        saveConfig()
        if Rayfield.Flags.autoUpdateBoothText.CurrentValue then
            updateBooth()
        end
    end,
})
local autoUpdateBoothTextColorInput = boothTab:CreateInput({
    Name = "Booth Text Color",
    PlaceholderText = "#35DB35",
    NumbersOnly = false,
    CharacterLimit = 8,
    OnEnter = true,
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        _G.configTable.boothConfig.boothTextColor = Text
        autoUpdateBoothTextDisplay:Set({Title = "Current Booth Text:", Content = _G.configTable.boothConfig.autoUpdateBoothTextText.." | ".._G.configTable.boothConfig.boothTextColor})
        saveConfig()
        if Rayfield.Flags.autoUpdateBoothText.CurrentValue then
            updateBooth()
        end
    end,
})

local autoUpdateBoothTextIntervalSlider = boothTab:CreateSlider({
    Name = "Auto Booth Text Interval",
    Range = {7, 180},
    Increment = 1,
    Suffix = "Seconds",
    CurrentValue = 15,
    Flag = "autoUpdateBoothTextInterval",
    Callback = function(Value)
        updateBooth()
    end,
})
local boothGoalUpdate = boothTab:CreateParagraph({Title = "Current Goal Info:", Content = "Goal: "..tostring(_G.configTable.boothConfig.boothGoal)})
local boothGoalText = boothTab:CreateInput({
    Name = "Goal",
    PlaceholderText = 250,
    NumbersOnly = true,
    CharacterLimit = 50,
    OnEnter = true,
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        _G.configTable.boothConfig.boothGoal = Text
        boothGoalUpdate:Set({Title = "Current Goal Info:", Content = "Goal: "..tostring(_G.configTable.boothConfig.boothGoal)})
        saveConfig()
        if Rayfield.Flags.autoUpdateBoothText.CurrentValue then
            updateBooth()
        end
    end,
})
local boothGoalInfo = boothTab:CreateParagraph({Title = "Confused by the Goal?", Content = "This is the amount that will be added to your goal (which is your amount raised) every time it updates. For example, if you have raised 100, and your goal is set to 50, it will set the goal to 150."})


-- BEGGING TAB
task.spawn(function()

    while task.wait() do
        if Rayfield.Flags.autoBeg.CurrentValue then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_G.configTable.beggingConfig.autoBegText, "all")
            task.wait(Rayfield.Flags.autoBegInterval.CurrentValue)
        end;
        task.wait(0.5)
    end
end)
local autoBegToggle = beggingTab:CreateToggle({
    Name = "Auto Beg",
    Info = "This will automatically send a chat message with your customisable message every interval.",
    CurrentValue = false,
    Flag = "autoBeg",
    Callback = function(Value)
    end,
})
local autoBegTextDisplay = beggingTab:CreateParagraph({Title = "Current AutoBeg Text:", Content = _G.configTable.beggingConfig.autoBegText})
local autoBegTextInput = beggingTab:CreateInput({
    Name = "Auto Beg Text",
    PlaceholderText = "Input chat message.",
    NumbersOnly = false,
    CharacterLimit = 50,
    OnEnter = true,
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        _G.configTable.beggingConfig.autoBegText = Text
        autoBegTextDisplay:Set({Title = "Current AutoBeg Text:", Content = _G.configTable.beggingConfig.autoBegText})
        saveConfig()
    end,
})
local autoBegTextIntervalSlider = beggingTab:CreateSlider({
    Name = "Auto Beg Interval",
    Range = {4, 180},
    Increment = 1,
    Suffix = "Seconds",
    CurrentValue = 25,
    Flag = "autoBegInterval",
    Callback = function(Value)
    end,
})


-- THANKING TAB
spinspeed = 0.1
Character = game:GetService("Players").LocalPlayer.Character

task.spawn(function()

    task.wait(11)
    while task.wait() do
        if Rayfield.Flags.spinningRocket.CurrentValue then
            task.wait(spinspeed)
            Character.HumanoidRootPart.CFrame = Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(1), 0)
            if spinspeed <= 0 then
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("3 2 1... LIFTOFF","All")
                task.wait(2.5)
                spinspeed = 0.1
                game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
                task.wait(5)
                teleportToBooth()
            end
        end;
    end
end)


local autoThankToggle = thankingTab:CreateToggle({
    Name = "Auto Thank",
    Info = "This will automatically send a chat message after someone donates.",
    CurrentValue = false,
    Flag = "autoThank",
    Callback = function(Value)
    end,
})
local autoThankTextDisplay = thankingTab:CreateParagraph({Title = "Current AutoThank Text:", Content = _G.configTable.thankingConfig.autoThankText})
local autoThankTextInput = thankingTab:CreateInput({
    Name = "Auto Thank Text",
    PlaceholderText = "Input chat message.",
    NumbersOnly = false,
    CharacterLimit = 50,
    OnEnter = true,
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        _G.configTable.thankingConfig.autoThankText = Text
        autoThankTextDisplay:Set({Title = "Current AutoThank Text:", Content = _G.configTable.thankingConfig.autoThankText})
        saveConfig()
    end,
})
local autoThankTextIntervalSlider = thankingTab:CreateSlider({
    Name = "Auto Thank Wait Time",
    Range = {1, 20},
    Increment = 1,
    Suffix = "Seconds",
    CurrentValue = 3,
    Flag = "autoThankInterval",
    Callback = function(Value)
    end,
})

thankingTab:CreateSection("Jump Donations",true) -- The 2nd argument is to tell if its only a Title and doesnt contain elements

local jumpForRobuxToggle = thankingTab:CreateToggle({
    Name = "Jump for Robux",
    Info = "This will jump 1 time per robux donated.",
    CurrentValue = false,
    Flag = "jumpForRobux",
    Callback = function(Value)
    end,
})

thankingTab:CreateSection("Fortune Cookie Sayings",true) -- The 2nd argument is to tell if its only a Title and doesnt contain elements
local fortuneCookieSayingToggle = thankingTab:CreateToggle({
    Name = "Fortune Cookie Saying",
    Info = "This will say a fortune cookie saying after being donated.",
    CurrentValue = false,
    Flag = "fortuneCookieSaying",
    Callback = function(Value)
    end,
})

thankingTab:CreateSection("Rocket Spin",true) -- The 2nd argument is to tell if its only a Title and doesnt contain elements
thankingTab:CreateParagraph({Title = "What is this?", Content = "You will start spinning slowly, the more donations you get, the faster you go until you get so much you blast off! (character resets, 11 donations). "})
local rocketSpinToggle = thankingTab:CreateToggle({
    Name = "Rocket Spin",
    CurrentValue = false,
    Flag = "spinningRocket",
    Callback = function(Value)
    end,
})
thankingTab:CreateSection("Other",true) -- The 2nd argument is to tell if its only a Title and doesnt contain elements
local dieOnDonationToggle = thankingTab:CreateToggle({
    Name = "Die on Donation",
    Info = "Whenever you get donated to you will reset your character.",
    CurrentValue = false,
    Flag = "dieOnDonation",
    Callback = function(Value)
    end,
})

-- WEBHOOK TAB
local webhookToggle = webhookTab:CreateToggle({
    Name = "Send to Webhook",
    Info = "This will send to your webhook when someone donates.",
    CurrentValue = false,
    Flag = "webhooks",
    Callback = function(Value)
    end,
})
local webhookURLDisplay = webhookTab:CreateParagraph({Title = "Current Webhook:", Content = _G.configTable.webhookConfig.webhook})
local webhookURLInput = webhookTab:CreateInput({
    Name = "Webhook URL",
    PlaceholderText = "Webhook",
    NumbersOnly = false,
    CharacterLimit = 500,
    OnEnter = true,
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        _G.configTable.webhookConfig.webhook = Text
        webhookURLDisplay:Set({Title = "Current Webhook:", Content = _G.configTable.webhookConfig.webhook})
        saveConfig()
    end,
})

local webhookTextDisplay = webhookTab:CreateParagraph({Title = "Current Message:", Content = _G.configTable.webhookConfig.webhookText})
webhookTab:CreateParagraph({Title = "Useful", Content = "Use $a for the amount donated, and $t for the amount After Tax."})
local webhookTextInput = webhookTab:CreateInput({
    Name = "Webhook Text",
    PlaceholderText = "Message",
    NumbersOnly = false,
    CharacterLimit = 500,
    OnEnter = true,
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        _G.configTable.webhookConfig.webhookText = Text
        webhookTextDisplay:Set({Title = "Current Webhook Text:", Content = _G.configTable.webhookConfig.webhookText})
        saveConfig()
    end,
})

-- SERVER TAB
task.spawn(function()

    while task.wait() do
        if Rayfield.Flags.intervalHop.CurrentValue then
            task.wait(Rayfield.Flags.intervalHopAmount.CurrentValue * 60);
            Rayfield:Notify({
                Title = "Searching for server...",
                Content = "You will join once one is found.",
                Duration = 6.5,
                Actions = { -- Notification Buttons
                    Ignore = {
                        Name = "Okay!",
                        Callback = function()
                        end
                    },
                },
            });
            serverHop();
        end;
        task.wait(1);
    end
end)

task.spawn(function()

    while task.wait() do
        if Rayfield.Flags.playerHop.CurrentValue then
            if #game:GetService("Players"):GetPlayers() <= Rayfield.Flags.playerHopAmount.CurrentValue then
                Rayfield:Notify({
                    Title = "Searching for server...",
                    Content = "You will join once one is found.",
                    Duration = 6.5,
                    Actions = { -- Notification Buttons
                        Ignore = {
                            Name = "Okay!",
                            Callback = function()
                            end
                        },
                    },
                })
                serverHop()
            end
        end;
        task.wait(10)
    end
end)

task.spawn(function()

    while task.wait() do
        if Rayfield.Flags.avoidStaff.CurrentValue then
            for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                if player:GetRankInGroup(12121240) >= 254 then
                    Rayfield:Notify({
                        Title = "Searching for server...",
                        Content = "You will join once one is found.",
                        Duration = 6.5,
                        Actions = { -- Notification Buttons
                            Ignore = {
                                Name = "Okay!",
                                Callback = function()
                                end
                            },
                        },
                    })
                    serverHop()
                end
            end
        end;
        task.wait(10);
    end
end)
serverTab:CreateButton({
    Name = "New Server",
    Info = "This will find you a new server.", -- Speaks for itself, Remove if none.
    Interact = 'Find',
    Callback = function()
        Rayfield:Notify({
            Title = "Searching for server...",
            Content = "You will join once one is found.",
            Duration = 6.5,
            Actions = { -- Notification Buttons
                Ignore = {
                    Name = "Okay!",
                    Callback = function()
                    end
                },
            },
        })
        serverHop()
    end,
})

local intervalHopToggle = serverTab:CreateToggle({
    Name = "Interval Hop",
    Info = "This will hop servers every interval set below.",
    CurrentValue = false,
    Flag = "intervalHop",
    Callback = function(Value)
    end,
})
local intervalHopSlider = serverTab:CreateSlider({
    Name = "Interval Hop",
    Range = {3, 45},
    Increment = 1,
    Suffix = "Minutes",
    CurrentValue = 15,
    Flag = "intervalHopAmount",
    Callback = function(Value)
    end,
})
local playerHopToggle = serverTab:CreateToggle({
    Name = "Player Hop",
    Info = "This will hop servers if the player count falls below the amount set below.",
    CurrentValue = false,
    Flag = "playerHop",
    Callback = function(Value)
    end,
})
local playerHopSlider = serverTab:CreateSlider({
    Name = "Player Hop",
    Range = {2, 25},
    Increment = 1,
    Suffix = "Players",
    CurrentValue = 9,
    Flag = "playerHopAmount",
    Callback = function(Value)
    end,
})
local avoidStaffToggle = serverTab:CreateToggle({
    Name = "Avoid Staff",
    Info = "If you are in a server with staff it will join another one.",
    CurrentValue = false,
    Flag = "avoidStaff",
    Callback = function(Value)
    end,
})
local censoredToggle = serverTab:CreateToggle({
    Name = "Censored Hop",
    Info = "If your booth is censored you will hop servers.",
    CurrentValue = false,
    Flag = "censoredHop",
    Callback = function(Value)
    end,
})

-- SETTINGS TAB
settingsTab:CreateButton({
    Name = "Destroy UI",
    Info = "This will destroy the UI. You will have to re-execute if you want it again.", -- Speaks for itself, Remove if none.
    Interact = 'Destroy',
    Callback = function()
        Rayfield:Destroy()
    end,
})





local publicDonationLogToggle = settingsTab:CreateToggle({
    Name = "Public Donations",
    Info = "This will send an anonymous message to our Discord when you get a donation..",
    CurrentValue = true,
    Flag = "publicDonations",
    Callback = function(Value)
    end,
})


local function renderingFunction(value)
    if value then
        local blackscreen = Instance.new("Frame")
        blackscreen.ZIndex = 0
        blackscreen.Parent = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui
        blackscreen.BackgroundColor3 = Color3.fromRGB(0,0,0)
        blackscreen.Position = UDim2.new(-1, 0, -1, 0)
        blackscreen.Size = UDim2.new(2, 0, 2, 0)
        blackscreen.Name = "DISABLERENDERING"
        
		game:GetService("RunService"):Set3dRenderingEnabled(false)
    else
        if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("DISABLERENDERING") then
			game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("DISABLERENDERING"):Destroy()
		end
		game:GetService("RunService"):Set3dRenderingEnabled(true)
    end
    
end

settingsTab:CreateSection("Rendering")
local disableRenderingToggle = settingsTab:CreateToggle({
    Name = "Disable Rendering",
    CurrentValue = false,
    Flag = "disableRendering",
    Callback = function(Value)
        renderingFunction(Value)
    end,
})

if setfpscap and type(setfpscap) == "function" then
    local fpsCapSlider = settingsTab:CreateSlider({
        Name = "FPS Cap",
        Range = {1, 60},
        Increment = 1,
        Suffix = "Frames",
        CurrentValue = 60,
        Flag = "fpsCap",
        Callback = function(Value)
            setfpscap(Value)
        end,
    })
end

RaisedC = game:GetService("Players").LocalPlayer.leaderstats.Raised.Value

game:GetService("Players").LocalPlayer.leaderstats.Raised.Changed:Connect(function(newRaised)
    if Rayfield.Flags.autoUpdateBoothText.CurrentValue then
        updateBooth()
    end
    if Rayfield.Flags.publicDonations.CurrentValue then
		task.spawn(function()
            
            local request = syn.request
            local http = game:GetService("HttpService")
            local contentMessage = "Someone just got donated **R$"..newRaised - RaisedC.."**!"

            request({
                Url = 'https://truth-pretty-mouse.glitch.me/webhook',
                Method = 'POST',
               Body = http:JSONEncode({
                    content = contentMessage,
                }),
                Headers = {
                    ['Content-Type'] = 'application/json',
                },
            })
        end)
	end

    if Rayfield.Flags.webhooks.CurrentValue then
		task.spawn(function()
            local newText1 = _G.configTable.webhookConfig.webhookText:gsub("%$a", newRaised - RaisedC)
            local newText = newText1:gsub("%$t", (newRaised - RaisedC)*0.7)
			sendWebhook(_G.configTable.webhookConfig.webhook, newText)
		end)
	end


	if Rayfield.Flags.fortuneCookieSaying.CurrentValue then
		task.spawn(function()

			task.wait(2.5)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_G.FortuneCookieSayings[math.random(1,#_G.FortuneCookieSayings)], "all")
        end)
	end

    if Rayfield.Flags.dieOnDonation.CurrentValue then
		task.spawn(function()

			task.wait(1.5)
            game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
            task.wait(5)
            teleportToBooth()
        end)
	end

    
	if Rayfield.Flags.autoThank.CurrentValue then
		task.spawn(function()

			task.wait(Rayfield.Flags.autoThankInterva.CurrentValuel)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_G.configTable.thankingConfig.autoThankText, "all")
        end)
	end

	if Rayfield.Flags.jumpForRobux.CurrentValue then
		task.spawn(function()
            local counter = 0
            local newAmount = newRaised - RaisedC
            task.wait(1)

            while counter < newAmount do
                wait()
                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                task.wait(1)
                counter = counter + 1
            end

			task.wait(1)
			game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Did "..tostring(newAmount).." jumps!".." Current Jumps: "..tostring(newRaised),"All")
		end)
	end
    spinspeed = spinspeed - 0.01
    task.wait(0.5)
    RaisedC = newRaised

end)


function loadConfig()
    print("🙏Pretty Please | Loading Config");
    local HttpService = game:GetService("HttpService");
    if (readfile and isfile and isfile(configFileName)) then
        _G.configTable = HttpService:JSONDecode(readfile(configFileName));
        -- BOOTH
        autoUpdateBoothTextDisplay:Set({Title = "Current Booth Text:", Content = _G.configTable.boothConfig.autoUpdateBoothTextText.." | ".._G.configTable.boothConfig.boothTextColor})

        -- BEGGING
        autoBegTextDisplay:Set({Title = "Current AutoBeg Text:", Content = _G.configTable.beggingConfig.autoBegText})

        -- THANKING
        autoThankTextDisplay:Set({Title = "Current AutoThank Text:", Content = _G.configTable.thankingConfig.autoThankText})


        -- WEBHOOKS
        webhookURLDisplay:Set({Title = "Current Webhook:", Content = _G.configTable.webhookConfig.webhook})
        webhookTextDisplay:Set({Title = "Current Message:", Content = _G.configTable.webhookConfig.webhookText})

        print("🙏Pretty Please | Config Loaded")
    else 
        print("🙏Pretty Please | No Config File Found")
    end
end

Rayfield:LoadConfiguration()
loadConfig()

if Rayfield.Flags.autoUpdateBoothText.CurrentValue then
    updateBooth()
end