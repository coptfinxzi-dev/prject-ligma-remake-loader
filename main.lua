--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 6 | Scripts: 1 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.ligamremakefynxzi
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[ligamremakefynxzi]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.ligamremakefynxzi.ImageLabel
G2L["2"] = Instance.new("ImageLabel", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["Image"] = [[rbxassetid://139515100545097]];
G2L["2"]["Size"] = UDim2.new(0, 100, 0, 106);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["BackgroundTransparency"] = 1;
G2L["2"]["Position"] = UDim2.new(0.45241, 0, 0.40799, 0);


-- StarterGui.ligamremakefynxzi.ImageLabel.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"]);
G2L["3"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ligamremakefynxzi.ImageLabel.LocalScript
G2L["4"] = Instance.new("LocalScript", G2L["2"]);



-- StarterGui.ligamremakefynxzi.ImageLabel.Frame
G2L["5"] = Instance.new("Frame", G2L["2"]);
G2L["5"]["Visible"] = false;
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["Size"] = UDim2.new(0, 209, 0, 72);
G2L["5"]["Position"] = UDim2.new(0.99518, 0, 0.22324, 0);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.ligamremakefynxzi.ImageLabel.Frame.TextLabel
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


-- StarterGui.ligamremakefynxzi.ImageLabel.LocalScript
local function C_4()
local script = G2L["4"];
	local logo = script.Parent
	local TweenService = game:GetService("TweenService")
	
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
	wait(1)
	script.Parent.Frame.Visible = true
end;
task.spawn(C_4);

return G2L["1"], require;
