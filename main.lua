--=[ d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Počkáme na načtení hry
repeat wait() until game:IsLoaded()

-- Vytvoříme GUI přímo v PlayerGui hráče
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Smazat staré GUI jestli existuje (pro jistotu)
local oldGui = playerGui:FindFirstChild("ligamremakefynxzi")
if oldGui then oldGui:Destroy() end

-- Vytvoření hlavního ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ligamremakefynxzi"
screenGui.ResetOnSpawn = false  -- Tohle je klíčové!
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = playerGui

-- Vytvoření ImageLabel (logo)
local logo = Instance.new("ImageLabel")
logo.Name = "Logo"
logo.BorderSizePixel = 0
logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
logo.BackgroundTransparency = 1
logo.Image = "rbxassetid://139515100545097"  -- Tohle ID asi nebude fungovat, budeš muset změnit
logo.Size = UDim2.new(0, 100, 0, 106)
logo.Position = UDim2.new(0.45241, 0, 0.40799, 0)
logo.Parent = screenGui

-- UICorner pro kulaté logo
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(1, 0)
uiCorner.Parent = logo

-- Frame s textem (skrytý na začátku)
local frame = Instance.new("Frame")
frame.Visible = false
frame.BorderSizePixel = 0
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.Size = UDim2.new(0, 209, 0, 72)
frame.Position = UDim2.new(0.99518, 0, 0.22324, 0)
frame.Parent = logo

-- TextLabel uvnitř Framu
local textLabel = Instance.new("TextLabel")
textLabel.TextWrapped = true
textLabel.BorderSizePixel = 0
textLabel.TextSize = 14
textLabel.TextXAlignment = Enum.TextXAlignment.Left
textLabel.TextYAlignment = Enum.TextYAlignment.Top
textLabel.TextScaled = true
textLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textLabel.Font = Enum.Font.SourceSans
textLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
textLabel.Size = UDim2.new(0, 208, 0, 72)
textLabel.Text = "project ligma \nremake by fynxzi"
textLabel.Parent = frame

-- Animace loga
local TweenService = game:GetService("TweenService")

-- Zkontrolujeme, jestli už animace neproběhla (podle atributu)
if not logo:GetAttribute("Animated") then
	local tweenInfo = TweenInfo.new(
		1,  -- čas (sekundy)
		Enum.EasingStyle.Quad,
		Enum.EasingDirection.Out
	)
	
	-- Cílová pozice - levý dolní roh
	local goal = {
		Position = UDim2.new(0, 0, 1, -logo.Size.Y.Offset)
	}
	
	local tween = TweenService:Create(logo, tweenInfo, goal)
	tween:Play()
	
	-- Počkáme na dokončení animace
	tween.Completed:Wait()
	
	-- Uložíme informaci, že animace proběhla
	logo:SetAttribute("Animated", true)
	frame.Visible = true
end

print("GUI vytvořeno, ResetOnSpawn = false, mělo by zůstat i po respawnu!")
