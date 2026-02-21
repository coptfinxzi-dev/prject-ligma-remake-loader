local G2L = {};

G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["Name"] = [[ligmaloader]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;

G2L["2"] = Instance.new("ImageLabel", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["Image"] = [[rbxassetid://87162794]];
G2L["2"]["Size"] = UDim2.new(0, 122, 0, 115);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["BackgroundTransparency"] = 1;
G2L["2"]["Position"] = UDim2.new(1, -122, 0, 0);

G2L["3"] = Instance.new("UICorner", G2L["2"]);
G2L["3"]["CornerRadius"] = UDim.new(1, 0);

G2L["4"] = Instance.new("LocalScript", G2L["2"]);

G2L["5"] = Instance.new("Frame", G2L["1"]);
G2L["5"]["Visible"] = false
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["Size"] = UDim2.new(0, 264, 0, 71);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Position"] = UDim2.new(0, 122 + 10, 1, -115 + (115 - 71)/2);
G2L["5"].BackgroundTransparency = 1

G2L["6"] = Instance.new("UIStroke", G2L["5"]);

G2L["7"] = Instance.new("TextLabel", G2L["5"]);
G2L["7"]["TextWrapped"] = true;
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["TextSize"] = 14;
G2L["7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["7"]["TextScaled"] = true;
G2L["7"]["BackgroundTransparency"] = 1
G2L["7"]["TextTransparency"] = 1
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["Font"] = Enum.Font.SourceSansBold
G2L["7"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Text"] = [[Project Ligma by Harkinian and Unverified Run Scripts Without Filthy Modules Or Converting
Use The External Program To Execute Scripts.
Status: Injected
(REMAKE BY FYNXZI)]];
G2L["7"]["Position"] = UDim2.new(0, 0, 0, 0);

G2L["8"] = Instance.new("LocalScript", G2L["1"]);

local function C_4()
    local script = G2L["4"];
    local TweenService = game:GetService("TweenService")
    local guiObject = script.Parent
    local hasPlayed = false

    if not hasPlayed then
        hasPlayed = true
        guiObject.AnchorPoint = Vector2.new(0, 0)

        local goal = {}
        goal.Position = UDim2.new(0, 0, 1, -115)

        local tweenInfo = TweenInfo.new(
            1,
            Enum.EasingStyle.Sine,
            Enum.EasingDirection.Out
        )

        local tween = TweenService:Create(guiObject, tweenInfo, goal)
        tween:Play()
        tween.Completed:Wait()

        G2L["5"].Visible = true
        local frameTween = TweenService:Create(G2L["5"], TweenInfo.new(1), {BackgroundTransparency = 0})
        frameTween:Play()
        local textTween = TweenService:Create(G2L["7"], TweenInfo.new(1), {TextTransparency = 0})
        textTween:Play()
    end

    guiObject.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            if G2L["5"].Visible then
                G2L["5"].Visible = false
            else
                G2L["5"].Visible = true
                G2L["5"].BackgroundTransparency = 0
                G2L["7"].TextTransparency = 0
            end
        end
    end)
end;
task.spawn(C_4);

local function C_8()
    local script = G2L["8"];
    script.Parent.ResetOnSpawn = false
    script.Parent.IgnoreGuiInset = true
end;
task.spawn(C_8);

return G2L["1"]
