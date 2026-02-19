--[[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]]

-- Instances: 9 | Scripts: 2 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.projectfynxziloader
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["Name"] = [[projectfynxziloader]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;

-- StarterGui.projectfynxziloader.main logo
G2L["2"] = Instance.new("ImageLabel", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["BackgroundTransparency"] = 1; -- Added: Makes background transparent
G2L["2"]["Image"] = [[rbxassetid://139515100545097]];
G2L["2"]["Size"] = UDim2.new(0, 113, 0, 113);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[main logo]];
G2L["2"]["Position"] = UDim2.new(0.4383, 0, 0.38194, 0);

-- StarterGui.projectfynxziloader.main logo.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"]);
G2L["3"]["CornerRadius"] = UDim.new(1, 0);

-- StarterGui.projectfynxziloader.main logo.LocalScript
G2L["4"] = Instance.new("LocalScript", G2L["2"]);

-- StarterGui.projectfynxziloader.main logo.Frame
G2L["5"] = Instance.new("Frame", G2L["2"]);
G2L["5"]["Visible"] = false;
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["Size"] = UDim2.new(0, 244, 0, 100);
G2L["5"]["Position"] = UDim2.new(1.0708, 0, 0.0531, 0);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

-- StarterGui.projectfynxziloader.main logo.Frame.TextLabel
G2L["6"] = Instance.new("TextLabel", G2L["5"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["TextSize"] = 33;
G2L["6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Size"] = UDim2.new(0, 291, 0, 100);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Text"] = [[project ligma remake
by fynxzi the best executor 
for roblox exploiters]];

-- StarterGui.projectfynxziloader.main logo.TextButton
G2L["7"] = Instance.new("TextButton", G2L["2"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["TextSize"] = 14;
G2L["7"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7"]["BackgroundTransparency"] = 1;
G2L["7"]["Size"] = UDim2.new(0, 113, 0, 113);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Text"] = [[]];

-- StarterGui.projectfynxziloader.main logo.TextButton.UICorner
G2L["8"] = Instance.new("UICorner", G2L["7"]);
G2L["8"]["CornerRadius"] = UDim.new(1, 0);

-- StarterGui.projectfynxziloader.main logo.TextButton.LocalScript
G2L["9"] = Instance.new("LocalScript", G2L["7"]);

-- StarterGui.projectfynxziloader.main logo.LocalScript
local function C_4()
local script = G2L["4"];
	local logo = script.Parent
	local button = script.Parent.TextButton
	local TweenService = game:GetService("TweenService")
	
	local tweenInfo = TweenInfo.new(
		1, -- čas (sekundy)
		Enum.EasingStyle.Quad,
		Enum.EasingDirection.Out
	)
	
	-- Levý dolní roh
	local goal = {}
	goal.Position = UDim2.new(0, 0, 1, -logo.Size.Y.Offset)
	
	local tween = TweenService:Create(logo, tweenInfo, goal,button)
	tween:Play()
	wait(1)
	script.Parent.Frame.Visible = true
end;
task.spawn(C_4);

-- StarterGui.projectfynxziloader.main logo.TextButton.LocalScript
local function C_9()
local script = G2L["9"];
	local button = script.Parent
	local frame = script.Parent.Parent.Frame
	
	button.MouseButton1Click:Connect(function()
		frame.Visible = not frame.Visible
	end)
end;
task.spawn(C_9);

return G2L["1"], require;
