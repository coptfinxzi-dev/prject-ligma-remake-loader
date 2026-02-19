--=[ d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 6 | Scripts: 1 | Modules: 0 | Tags: 0
local G2L = {};

-- Hlavní ScreenGui
G2L["1"] = Instance.new("ScreenGui");
G2L["1"]["Name"] = [[ligamremakefynxzi]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;  -- Tohle je důležité, ale musí být v PlayerGui

-- ImageLabel (logo)
G2L["2"] = Instance.new("ImageLabel", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["Image"] = [[rbxassetid://139515100545097]];
G2L["2"]["Size"] = UDim2.new(0, 100, 0, 106);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["BackgroundTransparency"] = 1;
G2L["2"]["Position"] = UDim2.new(0.45241, 0, 0.40799, 0);

-- UICorner pro kulaté logo
G2L["3"] = Instance.new("UICorner", G2L["2"]);
G2L["3"]["CornerRadius"] = UDim.new(1, 0);

-- Frame s textem (skrytý na začátku)
G2L["5"] = Instance.new("Frame", G2L["2"]);
G2L["5"]["Visible"] = false;
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["Size"] = UDim2.new(0, 209, 0, 72);
G2L["5"]["Position"] = UDim2.new(0.99518, 0, 0.22324, 0);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

-- TextLabel uvnitř Framu
G2L["6"] = Instance.new("TextLabel", G2L["5"]);
G2L["6"]["TextWrapped"] = true;
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["TextSize"] = 14;
G2L["6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["6"]["TextScaled"] = true;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Size"] = UDim2.new(0, 208, 0, 72);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Text"] = [[project ligma 
remake by fynxzi]];

-- LocalScript pro animaci
G2L["4"] = Instance.new("LocalScript", G2L["2"]);
G2L["4"].Source = [[
local logo = script.Parent
local TweenService = game:GetService("TweenService")

-- Zkontrolujeme, jestli už animace neproběhla
if not logo:GetAttribute("Animated") then
	local tweenInfo = TweenInfo.new(
		1, -- čas (sekundy)
		Enum.EasingStyle.Quad,
		Enum.EasingDirection.Out
	)
	
	-- Levý dolní roh
	local goal = {}
	goal.Position = UDim2.new(0, 0, 1, -logo.Size.Y.Offset)
	local tween = TweenService:Create(logo, tweenInfo, goal)
	tween:Play()
	
	-- Počkáme na dokončení animace
	tween.Completed:Wait()
	
	-- Uložíme informaci, že animace už proběhla
	logo:SetAttribute("Animated", true)
	script.Parent.Frame.Visible = true
end
]]

-- HLAVNÍ ZMĚNA: Místo StarterGui vkládáme do PlayerGui
local Players = game:GetService("Players")

local function onPlayerAdded(player)
	-- Počkáme, než se hráči načte PlayerGui
	player:WaitForChild("PlayerGui")
	
	-- Zkontrolujeme, jestli už GUI nemá
	if not player.PlayerGui:FindFirstChild("ligamremakefynxzi") then
		-- Vytvoříme kopii GUI pro tohoto hráče
		local gui = G2L["1"]:Clone()
		gui.Parent = player.PlayerGui
	end
end

-- Připojíme pro existující hráče
for _, player in ipairs(Players:GetPlayers()) do
	task.spawn(onPlayerAdded, player)
end

-- A pro nové hráče
Players.PlayerAdded:Connect(onPlayerAdded)
