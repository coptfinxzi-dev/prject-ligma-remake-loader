--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 8 | Scripts: 2 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.ligmaloader
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["Name"] = [[ligmaloader]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.ligmaloader.ImageLabel
G2L["2"] = Instance.new("ImageLabel", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["Image"] = [[rbxassetid://139515100545097]];
G2L["2"]["Size"] = UDim2.new(0, 122, 0, 115);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["BackgroundTransparency"] = 1;
G2L["2"]["Position"] = UDim2.new(0.43172, 0, 0.38194, 0);


-- StarterGui.ligmaloader.ImageLabel.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"]);
G2L["3"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ligmaloader.ImageLabel.LocalScript
G2L["4"] = Instance.new("LocalScript", G2L["2"]);



-- StarterGui.ligmaloader.ImageLabel.Frame
G2L["5"] = Instance.new("Frame", G2L["2"]);
G2L["5"]["Visible"] = false;
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["Size"] = UDim2.new(0, 264, 0, 71);
G2L["5"]["Position"] = UDim2.new(0.89344, 0, 0.1913, 0);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.ligmaloader.ImageLabel.Frame.UIStroke
G2L["6"] = Instance.new("UIStroke", G2L["5"]);



-- StarterGui.ligmaloader.ImageLabel.Frame.TextLabel
G2L["7"] = Instance.new("TextLabel", G2L["5"]);
G2L["7"]["TextWrapped"] = true;
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["TextSize"] = 14;
G2L["7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["7"]["TextScaled"] = true;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Size"] = UDim2.new(0, 264, 0, 71);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Text"] = [[project ligma 
remake by fynxzi]];
G2L["7"]["Position"] = UDim2.new(-0.00023, 0, 0, 0);


-- StarterGui.ligmaloader.LocalScript
G2L["8"] = Instance.new("LocalScript", G2L["1"]);



-- StarterGui.ligmaloader.ImageLabel.LocalScript
local function C_4()
local script = G2L["4"];
	local TweenService = game:GetService("TweenService")
	
	local guiObject = script.Parent
	local hasPlayed = false -- kontrola, jestli už animace proběhla
	
	if not hasPlayed then
		hasPlayed = true
	
		-- Nastavení AnchorPoint (levý dolní roh)
		guiObject.AnchorPoint = Vector2.new(0, 1)
	
		local goal = {}
		goal.Position = UDim2.new(0, 0, 1, 0)
	
		local tweenInfo = TweenInfo.new(
			1, -- délka animace (sekundy)
			Enum.EasingStyle.Sine,
			Enum.EasingDirection.Out
		)
	
		local tween = TweenService:Create(guiObject, tweenInfo, goal)
		tween:Play()
		tween.Completed:Wait()
	
		script.Parent.Frame.Visible = true
	end
	
end;
task.spawn(C_4);
-- StarterGui.ligmaloader.LocalScript
local function C_8()
local script = G2L["8"];
	script.Parent.ResetOnSpawn = false
	script.Parent.IgnoreGuiInset = true
end;
task.spawn(C_8);

return G2L["1"], require;
