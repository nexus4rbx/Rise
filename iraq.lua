
local Settings = {
    Killaura = {Value = false,Range = 18, CustomAnimations = true,Toolcheck = false},
    Reach = {Value = false,Range = 18},
    AutoSprint = {Value = false},
    AntiKb = {Value = false,HorizontalKb = 0,VerticalKb = 0},
    AutoQueue = {Value = false},
    AutoBank = {Value = false},
    AutoForge = {Value = false,Sword = false,Daggers = false,Scythe = false,Hammer = false,Bow = false,Armor = false},
    Fly = {Value = false,Up = 50, Down = 50},
    InfFly = {Value = false,Up = 50, Down = 50},
    HighJump = {Value = false, Jump = 100},
    InfJump = {Value = false},
    NoFall = {Value = false},
    Speed = {Value = false, Speed = 16},
    GalaxySky = {Value = false},
    Atmosphere = {Value = false},
    FOV = {Value = false, FOVValue = 100},
    Chams = {Value = false, TeamColor = false},
    LongJump = {Value = false},
    BedTP = {Value = false},
    ScytheDisabler = {Value = false, Toolcheck = false},
    Invis = {Value = false},
    BedNuker = {Value = false,Range = 16},
    ChestStealer = {Value = false, Seconds = 0},
    }
    if isfolder("IraqV4") == false then
        makefolder("IraqV4")
    end
    local function SaveSettings()
        local JSON -- is nil
        local HttpService = game:service('HttpService')
        if (writefile) then
        JSON = HttpService:JSONEncode(Settings)
        writefile('IraqV4\\IraqConfigBedwars.txt',JSON)
        else
            print("Exploit not supported bruv")
        end
    end
    if isfile ('IraqV4\\IraqConfigBedwars.txt') then
    else
        SaveSettings()
    end
    function LoadSettings()
        local HttpService = game:service('HttpService')
        if isfile('IraqV4\\IraqConfigBedwars.txt') then
        Settings = HttpService:JSONDecode(readfile('IraqV4\\IraqConfigBedwars.txt'))
        end
    end
    LoadSettings()
    local loop = true
    spawn(function ()
        repeat
            task.wait()
            SaveSettings()
        until not loop
    end)
repeat task.wait() until game:IsLoaded()
local ScreenGui = Instance.new("ScreenGui")
local ScreenGui2 = Instance.new("ScreenGui")
local Ravenb4 = Instance.new("Frame")
Ravenb4.Visible = false
Ravenb4.Position = UDim2.new(0.5, 0, 0.15, 0)
local UIStroke = Instance.new("UIStroke")
UIStroke.Parent = IraqV4
UIStroke.Transparency = 1
local Raventext = Instance.new("TextLabel")
Raventext.Position = UDim2.new(0, 75, 0, 0)
local b4Text = Instance.new("TextLabel")
b4Text.Position = UDim2.new(0, -75, 0.8, 0)
local Ravenline = Instance.new("Frame")
Ravenline.Position = UDim2.new(0, 125, 0, 0)
local b4line = Instance.new("Frame")
b4line.Position = UDim2.new(0, -85, 0, 0)
local Lighting = game:GetService("Lighting")
local Blur = Instance.new("BlurEffect")
Blur.Name = "Blur"
Blur.Parent = Lighting
Blur.Enabled = false
Blur.Size = 25
local lib = {}
local UIS = game:GetService("UserInputService")
function lib:ToggleLib()
    if not ScreenGui.Enabled then
        ScreenGui.Enabled = true
        Blur.Enabled = true
    else
        ScreenGui.Enabled = false
        Blur.Enabled = false
    end
end
function lib:RavenFade()
    if not Ravenb4.Visible then
        b4line.Visible = true
        Ravenline.Visible = true
        b4Text:TweenPosition(UDim2.new(0, 0, 0.8, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.7,false)
        b4line:TweenPosition(UDim2.new(0, 0, 0, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.7,false)
        Raventext:TweenPosition(UDim2.new(0, 0, 0, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.7,false)
        Ravenline:TweenPosition(UDim2.new(0, 50, 0, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.7,false)
        task.wait(0.05)
        Ravenb4.Visible = true
        task.wait(0.7)
        b4line.Visible = false
        Ravenline.Visible = false
        UIStroke.Transparency = 0
    else
        Ravenb4.Visible = false
        UIStroke.Transparency = 1
        b4Text.Position = UDim2.new(0, -75, 0.8, 0)
        Raventext.Position = UDim2.new(0, 75, 0, 0)
        b4line.Position = UDim2.new(0, -85, 0, 0)
        Ravenline.Position = UDim2.new(0, 125, 0, 0)
    end
end
function lib:CreateWindow(text, Position)
    local Toggles = {}
    local MainFrame = Instance.new("Frame")
    local BackroundFrame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local HolderFrame = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local UICorner_2 = Instance.new("UICorner")
    local PlusButton = Instance.new("TextButton")
    local Combattext = Instance.new("TextLabel")
    local UIGradient = Instance.new("UIGradient")
    local UIGradient_2 = Instance.new("UIGradient")
    local UIStroke_2 = Instance.new("UIStroke")
    local UIStroke_3 = Instance.new("UIStroke")
    local UIStroke_4 = Instance.new("UIStroke")
    local RavenLogoButton = Instance.new("TextButton")
    local ImageLabel = Instance.new("ImageLabel")
    local UICorner_3 = Instance.new("UICorner")

    ScreenGui.Parent = game:WaitForChild("CoreGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    ScreenGui2.Parent = game:WaitForChild("CoreGui")
    ScreenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Ravenb4.Name = "IraqV4"
    Ravenb4.Parent = ScreenGui
    Ravenb4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Ravenb4.BackgroundTransparency = 1.000
    Ravenb4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Ravenb4.BorderSizePixel = 0
    Ravenb4.Size = UDim2.new(0, 50, 0, 195)

    UIStroke.Name = "UIStroke"
    UIStroke.Parent = IraqV4
    UIStroke.Color = Color3.fromRGB(255,255,255)
    UIStroke.Thickness = 3

    Raventext.Name = "Raven text"
    Raventext.Parent = IraqV4
    Raventext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Raventext.BackgroundTransparency = 1.000
    Raventext.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Raventext.BorderSizePixel = 0
    Raventext.Size = UDim2.new(1, 0, 1, 0)
    Raventext.Font = Enum.Font.FredokaOne
    Raventext.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    Raventext.Text = "i           r             a            q"
    Raventext.TextColor3 = Color3.fromRGB(255, 255, 255)
    task.spawn(function()
        repeat
            Raventext.TextColor3 = Color3.fromRGB(255, 255, 255)
            task.wait()
        until not Raventext
    end)
    Raventext.TextSize = 30.000
    Raventext.TextWrapped = true
    Raventext.TextYAlignment = Enum.TextYAlignment.Top

    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(157, 0, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(94, 242, 255))}
    UIGradient.Parent = Raventext

    UIStroke_2.Name = "UIStroke"
    UIStroke_2.Parent = Raventext
    UIStroke_2.Color = Color3.fromRGB(27, 27, 27)
    UIStroke_2.Thickness = 1
    UIStroke_2.Transparency = 0

    b4Text.Name = "b4 Text"
    b4Text.Parent = Ravenb4
    b4Text.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    b4Text.BackgroundTransparency = 1.000
    b4Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
    b4Text.BorderSizePixel = 0
    b4Text.Size = UDim2.new(1, 0, 0.200000003, 0)
    b4Text.Font = Enum.Font.FredokaOne
    b4Text.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    b4Text.Text = "b4"
    b4Text.TextColor3 = Color3.fromRGB(255, 255, 255)
    task.spawn(function()
        repeat
            b4Text.TextColor3 = Color3.fromRGB(255, 255, 255)
            task.wait()
        until not b4Text
    end)
    b4Text.TextSize = 30.000
    b4Text.TextWrapped = true
    b4Text.TextYAlignment = Enum.TextYAlignment.Top

    UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(157, 0, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(94, 242, 255))}
    UIGradient_2.Parent = b5Text

    UIStroke_3.Name = "UIStroke"
    UIStroke_3.Parent = v4Text
    UIStroke_3.Color = Color3.fromRGB(27, 27, 27)
    UIStroke_3.Thickness = 1
    UIStroke_3.Transparency = 0

    Ravenline.Name = "Raven line"
    Ravenline.Parent = IraqV4
    Ravenline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Ravenline.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Ravenline.BorderSizePixel = 0
    Ravenline.Size = UDim2.new(0, 3, 0, 200)

    b4line.Name = "b4 line"
    b4line.Parent = IraqV4
    b4line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    b4line.BorderColor3 = Color3.fromRGB(0, 0, 0)
    b4line.BorderSizePixel = 0
    b4line.Size = UDim2.new(0, 3, 0, 200)

    MainFrame.Name = "MainFrame"
    MainFrame.Parent = ScreenGui
    MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    MainFrame.BackgroundTransparency = 1
    MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    MainFrame.BorderSizePixel = 0
    MainFrame.Position = Position
    MainFrame.Size = UDim2.new(0, 225, 0, 40)

    BackroundFrame.Name = "BackroundFrame"
    BackroundFrame.Parent = MainFrame
    BackroundFrame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    BackroundFrame.BackgroundTransparency = 0
    BackroundFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    BackroundFrame.BorderSizePixel = 0
    BackroundFrame.Size = UDim2.new(1, 0, 1, 0)
    BackroundFrame.AutomaticSize = "Y"

    UIStroke_4.Name = "UIStroke"
    UIStroke_4.Parent = BackroundFrame
    UIStroke_4.Color = Color3.fromRGB(255, 0, 0)
    task.spawn(function()
        repeat
            task.wait()
        until not b4Text
    end)
    UIStroke_4.Thickness = 3
    UIStroke_4.Transparency = 0

    UICorner.CornerRadius = UDim.new(0, 5)
    UICorner.Parent = BackroundFrame

    HolderFrame.Name = "HolderFrame"
    HolderFrame.Parent = BackroundFrame
    HolderFrame.BackgroundColor3 = Color3.fromRGB(0,0,0)
    HolderFrame.BackgroundTransparency = 1
    HolderFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    HolderFrame.BorderSizePixel = 0
    HolderFrame.Position = UDim2.new(0, 0,0, 40)
    HolderFrame.Size = UDim2.new(1, 0, 0, 0)
    HolderFrame.AutomaticSize = "Y"
    HolderFrame.Visible = false

    UICorner_2.CornerRadius = UDim.new(0, 5)
    UICorner_2.Parent = MainFrame

    UIListLayout.Parent = HolderFrame
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    PlusButton.Name = "Plus Button"
    PlusButton.Parent = MainFrame
    PlusButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    PlusButton.BackgroundTransparency = 1.000
    PlusButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    PlusButton.BorderSizePixel = 0
    PlusButton.Position = UDim2.new(0.75, 0, 0, -1)
    PlusButton.Size = UDim2.new(0.200000003, 0, 1, 0)
    PlusButton.Font = Enum.Font.FredokaOne
    PlusButton.Text = "+"
    PlusButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    PlusButton.TextSize = 40.000


    Combattext.Name = "Combat text"
    Combattext.Parent = MainFrame
    Combattext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Combattext.BackgroundTransparency = 1.000
    Combattext.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Combattext.BorderSizePixel = 0
    Combattext.Position = UDim2.new(0.05, 0, 0, 0)
    Combattext.Size = UDim2.new(0.800000012, 0, 1, 0)
    Combattext.Font = Enum.Font.FredokaOne
    Combattext.Text = text
    Combattext.TextColor3 = Color3.fromRGB(255,255,255)
    Combattext.TextSize = 30.000
    Combattext.TextWrapped = true
    Combattext.TextXAlignment = Enum.TextXAlignment.Left

    RavenLogoButton.Name = "RavenLogoButton"
    RavenLogoButton.Parent = ScreenGui2
    RavenLogoButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    RavenLogoButton.BackgroundTransparency = 0.500
    RavenLogoButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    RavenLogoButton.BorderSizePixel = 0
    RavenLogoButton.Position = UDim2.new(0.975, 0, -0.03, 0)
    RavenLogoButton.Size = UDim2.new(0, 40, 0, 40)
    RavenLogoButton.Font = Enum.Font.FredokaOne
    RavenLogoButton.Text = ""
    RavenLogoButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    RavenLogoButton.TextSize = 14.000

    ImageLabel.Parent = RavenLogoButton
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageLabel.BorderSizePixel = 0
    ImageLabel.Position = UDim2.new(0.100000001, 0, 0.100000001, 0)
    ImageLabel.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
    ImageLabel.Image = "rbxassetid://14640450309"
    ImageLabel.ImageColor3 = Color3.fromRGB(85, 0, 127)

    UICorner_3.Parent = RavenLogoButton

    RavenLogoButton.MouseButton1Click:Connect(function ()
        lib:ToggleLib()
        lib:RavenFade()
    end)

    ScreenGui.Enabled = false

    local frame = MainFrame
    local dragToggle = nil
    local dragSpeed = 0.5
    local dragStart = nil
    local startPos = nil

    local function updateInput(input)
        local delta = input.Position - dragStart
        local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
            startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
    end

    frame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
            dragToggle = true
            dragStart = input.Position
            startPos = frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragToggle = false
                end
            end)
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            if dragToggle then
                updateInput(input)
            end
        end
    end)
    PlusButton.MouseButton1Click:Connect(function ()
        if HolderFrame.Visible then
            HolderFrame.Visible = false
            PlusButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            PlusButton.Text = "+"
        else
            HolderFrame.Visible = true
            PlusButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            PlusButton.Text = "-"
        end
    end)

    function Toggles:ravenb4(defaults, options)
        defaults = defaults or {}
        options = options or {}
        for option, value in next, options do
            defaults[option] = value
        end
        return defaults
    end

    function Toggles:CreateToggle(options)
        options = self:ravenb4({
            Name = "Toggle",
            KeyBind = nil,
            StartingState = false,
            Callback = function() end
        }, options)

        local Toggle = {}
        local MainToggle = Instance.new("TextButton")
        local ButtonHolder = Instance.new("Frame")
        local UIListLayout_2 = Instance.new("UIListLayout")
        local toggled = options.StartingState
        local BindFrame = Instance.new("Frame")
        local BindButton = Instance.new("TextButton")
        local TextLabel = Instance.new("TextLabel")
        
        do  

        MainToggle.Name = "MainToggle"
        MainToggle.Parent = HolderFrame
        MainToggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        MainToggle.BackgroundTransparency = 1
        MainToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
        MainToggle.BorderSizePixel = 0
        MainToggle.Size = UDim2.new(1, 0, 0, 45)
        MainToggle.Font = Enum.Font.FredokaOne
        MainToggle.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        MainToggle.Text = options.Name
        MainToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
        MainToggle.TextSize = 27.000

        ButtonHolder.Name = "ButtonHolder"
        ButtonHolder.Parent = HolderFrame
        ButtonHolder.BackgroundColor3 = Color3.fromRGB(0,0,0)
        ButtonHolder.BackgroundTransparency = 1
        ButtonHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ButtonHolder.BorderSizePixel = 0
        ButtonHolder.Size = UDim2.new(1, 0, 0, 0)
        ButtonHolder.AutomaticSize = "Y"
        ButtonHolder.Visible = false

        BindButton.Name = "BindButton"
        BindButton.Parent = BindFrame
        BindButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        BindButton.BackgroundTransparency = 1.000
        BindButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
        BindButton.BorderSizePixel = 0
        BindButton.Position = UDim2.new(0.0599999987, 0, 0.25, 0)
        BindButton.Size = UDim2.new(0.879999995, 0, 0.5, 0)
        BindButton.Font = Enum.Font.FredokaOne
        BindButton.Text = "Bind :"
        BindButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        task.spawn(function()
            repeat
                BindButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                task.wait()
            until not BindButton
        end)
        BindButton.TextSize = 14.000
        BindButton.TextXAlignment = Enum.TextXAlignment.Left

        TextLabel.Parent = BindFrame
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel.BorderSizePixel = 0
        TextLabel.Position = UDim2.new(0.25, 0, 0.25, 0)
        TextLabel.Size = UDim2.new(0.300000012, 0, 0.5, 0)
        TextLabel.Font = Enum.Font.FredokaOne
        TextLabel.Text = "NONE"
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        task.spawn(function()
            repeat
                TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                task.wait()
            until not TextLabel
        end)
        TextLabel.TextSize = 14.000
        TextLabel.TextXAlignment = Enum.TextXAlignment.Left

        BindFrame.Name = "BindFrame"
        BindFrame.Parent = HolderFrame
        BindFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        BindFrame.BackgroundTransparency = 1.000
        BindFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        BindFrame.BorderSizePixel = 0
        BindFrame.Size = UDim2.new(1, 0, 0, 35)
        BindFrame.Visible = false

        UIListLayout_2.Parent = ButtonHolder
        UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

        local function toggle()
            toggled = not toggled
            if toggled then
                MainToggle.TextColor3 = Color3.fromRGB(255, 0, 0)
            else
                MainToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
            end
            options.Callback(toggled)
        end

        MainToggle.MouseButton1Click:Connect(function ()
            toggle()
        end)
        MainToggle.MouseButton2Click:Connect(function ()
            ButtonHolder.Visible = not ButtonHolder.Visible
            BindFrame.Visible = not BindFrame.Visible
        end)
        function Toggle:SetState(state)
            toggled = state
            if toggled then
                MainToggle.TextColor3 = Color3.fromRGB(255, 0, 0)
            else
                MainToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
            end
            task.spawn(function() options.Callback(toggled) end)
        end

        if options.StartingState then Toggle:SetState(true) end

        local listening = false
        
        UIS.InputBegan:Connect(function(key)
            if listening and not UIS:GetFocusedTextBox() then
                if key.UserInputType == Enum.UserInputType.Keyboard then
                    if key.KeyCode ~= Enum.KeyCode.Escape then
                        options.Keybind = key.KeyCode
                    end
                    TextLabel.Text = (options.Keybind and tostring(options.Keybind.Name):upper()) or "?"
                    listening = false
                end
            else
                if key.KeyCode == options.Keybind and not UIS:GetFocusedTextBox() then
                    toggle()
                end
            end
        end)
        
        BindButton.MouseButton1Click:connect(function()
            if not listening then listening = true; TextLabel.Text = "..." end
        end)
        end
        function Toggle:Set(keycode)
            options.Keybind = keycode
            TextLabel.Text = (options.Keybind and tostring(options.Keybind.Name):upper()) or "?"
        end
        function Toggle:ravenb4(defaults, options)
            defaults = defaults or {}
            options = options or {}
            for option, value in next, options do
                defaults[option] = value
            end
            return defaults
        end
        function Toggle:CreateSlider(options)
            options = self:ravenb4({
                Name = "Slider",
                Default = 50,
                Min = 0,
                Max = 100,
                Callback = function() end
            }, options)
            
            local RunService = game:GetService("RunService")
            local TextButton = Instance.new("TextButton")
            local SliderInner = Instance.new("Frame")
            local SliderName = Instance.new("TextLabel")
            local SliderValue = Instance.new("TextLabel")
            local Slider = Instance.new("Frame")

            local Precent
            local Mouse = game.Players.LocalPlayer:GetMouse()
            local Parent = Slider
		    local down = false
            local raven = {}

            Slider.Name = "Slider"
            Slider.Parent = ButtonHolder
            Slider.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            Slider.BackgroundTransparency = 1
            Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Slider.BorderSizePixel = 0
            Slider.Size = UDim2.new(1, 0, 0, 40)
            
            TextButton.Parent = Slider
            TextButton.BackgroundColor3 = Color3.fromRGB(175, 175, 175)
            TextButton.BackgroundTransparency = 0.600
            TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextButton.BorderSizePixel = 0
            TextButton.Position = UDim2.new(0.0500000007, 0, 0.600000024, 0)
            TextButton.Size = UDim2.new(0.899999976, 0, 0.300000012, 0)
            TextButton.Font = Enum.Font.FredokaOne
            TextButton.Text = ""
            TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton.TextSize = 14.000
            
            SliderInner.Name = "SliderInner"
            SliderInner.Parent = TextButton
            SliderInner.BackgroundColor3 = Color3.fromRGB(255, 39, 1)
            task.spawn(function()
                repeat
                    SliderInner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    task.wait()
                until not SliderInner
            end)
            SliderInner.BorderColor3 = Color3.fromRGB(0, 0, 0)
            SliderInner.BorderSizePixel = 0
            SliderInner.Size = UDim2.fromScale(((options.Default - options.Min) / (options.Max - options.Min)), 1)
            
            SliderName.Name = "SliderName"
            SliderName.Parent = Slider
            SliderName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderName.BackgroundTransparency = 1.000
            SliderName.BorderColor3 = Color3.fromRGB(0, 0, 0)
            SliderName.BorderSizePixel = 0
            SliderName.Position = UDim2.new(0.05, 0, 0.05, 0)
            SliderName.Size = UDim2.new(0.150000006, 0, 0.5, 0)
            SliderName.Font = Enum.Font.FredokaOne
            SliderName.Text = options.Name
            SliderName.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderName.TextSize = 15.000
            SliderName.TextXAlignment = Enum.TextXAlignment.Left

            SliderValue.Name = "SliderValue"
            SliderValue.Parent = Slider
            SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderValue.BackgroundTransparency = 1.000
            SliderValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
            SliderValue.BorderSizePixel = 0
            SliderValue.Position = UDim2.new(0.8, 0,0.05, 0)
            SliderValue.Size = UDim2.new(0.150000006, 0, 0.5, 0)
            SliderValue.Font = Enum.Font.FredokaOne
            SliderValue.Text = options.Default
            SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderValue.TextSize = 15.000
            SliderValue.TextXAlignment = Enum.TextXAlignment.Right


            function raven:SetValue(v)
                if v == nil then
                    task.wait()
                    Precent = math.clamp((Mouse.X-Parent.AbsolutePosition.X)/Parent.AbsoluteSize.X,0,1) -- this should work, try and see lol
                    local value = math.floor(((options.Max - options.Min) * Precent) + options.Min)
                    SliderValue.Text = tostring(value)
                    SliderInner.Size = UDim2.fromScale(Precent,1)
                else
                    SliderValue.Text = tostring(v)
                    SliderInner.Size = UDim2.fromScale(((options.Default - options.Min) / (options.Max - options.Min)), 1)
                end
                options.Callback(raven:GetValue())
            end
            function raven:GetValue()
                return tonumber(SliderValue.Text)
            end

            TextButton.MouseButton1Down:connect(function ()
                down = true
                while RunService.RenderStepped:wait() and down do
                    raven:SetValue()
                end
            end)

            UIS.InputEnded:connect(function(key)
                if key.UserInputType == Enum.UserInputType.MouseButton1 then
                    down = false
                end
            end)

            options.Callback(raven:GetValue())

            return raven
        end
        function Toggle:CreateInfo(text)

            local InfoContainer = Instance.new("TextLabel")

            InfoContainer.Name = "InfoContainer"
            InfoContainer.Parent = ButtonHolder
            InfoContainer.Size = UDim2.new(1, 0, 0, 20)
            InfoContainer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            InfoContainer.BackgroundTransparency = 1
            InfoContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
            InfoContainer.BorderSizePixel = 0
            InfoContainer.Font = Enum.Font.FredokaOne
            InfoContainer.Text = "    "..text
            InfoContainer.TextColor3 = Color3.fromRGB(255, 85, 0)
            InfoContainer.TextSize = 14.000
            InfoContainer.TextXAlignment = Enum.TextXAlignment.Left
        end
           
        
        function Toggle:CreateToggle(options)

            options = self:ravenb4({
                Name = "Toggle",
                StartingState = false,
                Callback = function() end
            }, options)

        
            local MiniToggle = Instance.new("TextButton")
            local MiniToggleText = Instance.new("TextLabel")
            local MiniToggleFrame = Instance.new("Frame")

            MiniToggleFrame.Name = "MiniToggleFrame"
            MiniToggleFrame.Parent = ButtonHolder
            MiniToggleFrame.Size = UDim2.new(1, 0, 0, 35)
            MiniToggleFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            MiniToggleFrame.BackgroundTransparency = 1
            MiniToggleFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
            MiniToggleFrame.BorderSizePixel = 0

            MiniToggle.Name = "MiniToggle"
            MiniToggle.Parent = MiniToggleFrame
            MiniToggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            MiniToggle.BackgroundTransparency = 1.000
            MiniToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
            MiniToggle.BorderSizePixel = 0
            MiniToggle.Position = UDim2.new(0.0599999987, 0, 0.2, 0)
            MiniToggle.Size = UDim2.new(0.879999995, 0, 0, 20)
            MiniToggle.Font = Enum.Font.FredokaOne
            MiniToggle.Text = "[-]"
            MiniToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
            MiniToggle.TextSize = 15.000
            MiniToggle.TextXAlignment = Enum.TextXAlignment.Left

            MiniToggleText.Name = "MiniToggleText"
            MiniToggleText.Parent = MiniToggle
            MiniToggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            MiniToggleText.BackgroundTransparency = 1.000
            MiniToggleText.BorderColor3 = Color3.fromRGB(0, 0, 0)
            MiniToggleText.BorderSizePixel = 0
            MiniToggleText.Size = UDim2.new(0.3, 0, 1, 0)
            MiniToggleText.Position = UDim2.new(0.125, 0, 0.05, 0)
            MiniToggleText.Font = Enum.Font.FredokaOne
            MiniToggleText.Text = options.Name
            MiniToggleText.TextColor3 = Color3.fromRGB(255, 255, 255)
            MiniToggleText.TextSize = 14.000
            MiniToggleText.TextXAlignment = Enum.TextXAlignment.Left

            local function toggle()
                toggled = not toggled
                if toggled then
                    MiniToggleText.TextColor3 = Color3.fromRGB(0, 255,0)
                    MiniToggle.TextColor3 = Color3.fromRGB(0, 255,0)
                    MiniToggle.Text = "[+]"
                else
                    MiniToggleText.TextColor3 = Color3.fromRGB(255, 255, 255)
                    MiniToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
                    MiniToggle.Text = "[-]"
                end
                options.Callback(toggled)
            end
    
            MiniToggle.MouseButton1Click:Connect(function ()
                toggle()
            end)

            function Toggle:SetState(state)
                toggled = state
                if toggled then
                    MiniToggleText.TextColor3 = Color3.fromRGB(0, 255,0)
                    MiniToggle.TextColor3 = Color3.fromRGB(0, 255,0)
                    MiniToggle.Text = "[+]"
                else
                    MiniToggleText.TextColor3 = Color3.fromRGB(255, 255, 255)
                    MiniToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
                    MiniToggle.Text = "[-]"
                end
                task.spawn(function() options.Callback(toggled) end)
            end
    
            if options.StartingState then Toggle:SetState(true) end
        end
    return Toggle
    end
    return Toggles
end
UIS.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.V and not UIS:GetFocusedTextBox() then
        lib:ToggleLib()
        lib:RavenFade()
    end
end)

local function createnotification(title,text ,delay2)
    spawn(function()
        local MainNotify = Instance.new("Frame")
        local ModuleText = Instance.new("TextLabel")
        local LineText = Instance.new("Frame")
        local NotifyDescription = Instance.new("TextLabel")
        local BigLine = Instance.new("Frame")

        ------------------------------------------------------

        MainNotify.Name = "Main Notify"
        MainNotify.Parent = ScreenGui2
        MainNotify.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        MainNotify.BackgroundTransparency = 0.500
        MainNotify.BorderColor3 = Color3.fromRGB(0, 0, 0)
        MainNotify.BorderSizePixel = 0
        MainNotify.Position = UDim2.new(1, 0, 0.800000012, 0)
        MainNotify.Size = UDim2.new(0, 400, 0, 80)

        ModuleText.Name = "ModuleText"
        ModuleText.Parent = MainNotify
        ModuleText.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        ModuleText.BackgroundTransparency = 1.000
        ModuleText.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ModuleText.BorderSizePixel = 0
        ModuleText.Position = UDim2.new(0.0500000007, 0, 0, 0)
        ModuleText.Size = UDim2.new(0.949999988, 0, 0.400000006, 0)
        ModuleText.Font = Enum.Font.FredokaOne
        ModuleText.Text = title
        ModuleText.TextColor3 = Color3.fromRGB(255, 255, 255)
        ModuleText.TextSize = 30.000
        ModuleText.TextWrapped = true
        ModuleText.TextXAlignment = Enum.TextXAlignment.Left

        LineText.Name = "Line Text"
        LineText.Parent = ModuleText
        LineText.BackgroundColor3 = Color3.fromRGB(85, 0, 127)
        task.spawn(function()
            repeat
                LineText.BackgroundColor3 = Color3.fromHSV(tick()%5/5,1,1)
                task.wait()
            until not LineText
        end)
        LineText.BorderColor3 = Color3.fromRGB(0, 0, 0)
        LineText.BorderSizePixel = 0
        LineText.Position = UDim2.new(0, 0, 1, 0)
        LineText.Size = UDim2.new(0, 240, 0, 3)

        NotifyDescription.Name = "Notify Description"
        NotifyDescription.Parent = MainNotify
        NotifyDescription.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        NotifyDescription.BackgroundTransparency = 1.000
        NotifyDescription.BorderColor3 = Color3.fromRGB(0, 0, 0)
        NotifyDescription.BorderSizePixel = 0
        NotifyDescription.Position = UDim2.new(0.0500000007, 0, 0.5, 0)
        NotifyDescription.Size = UDim2.new(0.949999988, 0, 0.400000006, 0)
        NotifyDescription.Font = Enum.Font.FredokaOne
        NotifyDescription.Text = text
        NotifyDescription.TextColor3 = Color3.fromRGB(255, 255, 255)
        NotifyDescription.TextSize = 25.000
        NotifyDescription.TextXAlignment = Enum.TextXAlignment.Left

        BigLine.Name = "Big Line"
        BigLine.Parent = MainNotify
        BigLine.BackgroundColor3 = Color3.fromRGB(85, 0, 127)
        task.spawn(function()
            repeat
                BigLine.BackgroundColor3 = Color3.fromHSV(tick()%5/5,1,1)
                task.wait()
            until not BigLine
        end)
        BigLine.BorderColor3 = Color3.fromRGB(0, 0, 0)
        BigLine.BorderSizePixel = 0
        BigLine.Size = UDim2.new(0, 10, 0, 80)

        pcall(function()
            MainNotify:TweenPosition(UDim2.new(0.8, 0, 0.800000012, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.15)
            task.wait(delay2)
            MainNotify:TweenPosition(UDim2.new(1, 0, 0.800000012, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.15)
        end)
    end)
end
createnotification("IraqV4 Loaded", "Press V to toggle GUI", 5)
--Tabs
Combat = lib:CreateWindow("Combat",UDim2.new(0.1, 0, 0.1, 0))
Blatant = lib:CreateWindow("Blatant",UDim2.new(0.3, 0, 0.1, 0))
Render = lib:CreateWindow("Render",UDim2.new(0.6, 0, 0.1, 0))
Utility = lib:CreateWindow("Utility",UDim2.new(0.8, 0, 0.1, 0))
--Locals
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local KnitClient = debug.getupvalue(require(LocalPlayer.PlayerScripts.TS.knit).setup, 6)
local TweenService = game:GetService("TweenService")
local Camera = game:GetService("Workspace").CurrentCamera
local RunService = game:GetService("RunService")
bedwars = {
["ClientHandlerStore"] = require(LocalPlayer.PlayerScripts.TS.ui.store).ClientStore, ["SwordController"] = KnitClient.Controllers.SwordController,
["CombatConstant"] = require(game:GetService("ReplicatedStorage").TS.combat["combat-constant"]).CombatConstant,
["CombatController"] = KnitClient.Controllers.CombatController,
["KnockbackTable"] = debug.getupvalue(require(game:GetService("ReplicatedStorage").TS.damage["knockback-util"]).KnockbackUtil.calculateKnockbackVelocity, 1),
["SprintController"] = KnitClient.Controllers.SprintController,
["DamageIndicator"] = KnitClient.Controllers.DamageIndicatorController.spawnDamageIndicator
}
function SetCamera(Camera)
   workspace.CurrentCamera.CameraSubject = Camera
end
function IsAlive(plr)
   plr = plr or LocalPlayer
       if not plr.Character then return false end        
       if not plr.Character:FindFirstChild("Head") then return false end
       if not plr.Character:FindFirstChild("Humanoid") then return false end
       if plr.Character:FindFirstChild("Humanoid").Health < 0.11 then return false end
   return true
end
function GetClosestPlayer()
   local target = nil
   local distance = math.huge
   for i,v in next, Players:GetPlayers() do
       if v.Team ~= LocalPlayer.Team and IsAlive(v) and not v.Character:FindFirstChildOfClass("ForceField") then
           local plrdist = LocalPlayer:DistanceFromCharacter(v.Character:FindFirstChildOfClass('Humanoid').RootPart.CFrame.p)
           if plrdist < distance then
               target = v
               distance = plrdist
           end
       end
   end
return target
end
function GetBeds()
    local beds = {}
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if string.lower(v.Name) == "bed" and v:FindFirstChild("Covers") ~= nil and v:FindFirstChild("Covers").Color ~= LocalPlayer.Team.TeamColor then
            table.insert(beds,v)
        end
    end
    return beds
end
function getserverpos(Position)
    local x = math.round(Position.X/3)
    local y = math.round(Position.Y/3)
    local z = math.round(Position.Z/3)
    return Vector3.new(x,y,z)
end
function GetMatchState()
    return bedwars["ClientHandlerStore"]:getState().Game.matchState
end
function GetQueueType()
    local state = bedwars["ClientHandlerStore"]:getState()
    return state.Game.queueType or "bedwars_test"
 end
local function GetInventory(plr)
   if not plr then 
       return {items = {}, armor = {}}
   end

   local suc, ret = pcall(function() 
       return require(game:GetService("ReplicatedStorage").TS.inventory["inventory-util"]).InventoryUtil.getInventory(plr)
   end)

   if not suc then 
       return {items = {}, armor = {}}
   end
   if plr.Character and plr.Character:FindFirstChild("InventoryFolder") then 
       local invFolder = plr.Character:FindFirstChild("InventoryFolder").Value
       if not invFolder then return ret end
       for i,v in next, ret do 
           for i2, v2 in next, v do 
               if typeof(v2) == 'table' and v2.itemType then
                   v2.instance = invFolder:FindFirstChild(v2.itemType)
               end
           end
           if typeof(v) == 'table' and v.itemType then
               v.instance = invFolder:FindFirstChild(v.itemType)
           end
       end
   end

   return ret
end
local BedwarsSwords = require(game:GetService("ReplicatedStorage").TS.games.bedwars["bedwars-swords"]).BedwarsMelees
function hashFunc(vec)
    return {value = vec}
end
local function getSword()
   local highest, returning = -9e9, nil
   for i,v in next, GetInventory(LocalPlayer).items do 
       local swords = table.find(BedwarsSwords, v.itemType)
       if not swords then continue end
       if swords > highest then 
           returning = v
           highest = swords
       end
   end
   return returning
end
local function getItemNear(itemName)
	for slot, item in next, GetInventory(LocalPlayer).items do
		if item.itemType == itemName or item.itemType:find(itemName) then
			return item, slot
		end
	end
	return nil
end
local function switchItem(tool)
	if LocalPlayer.Character.HandInvItem.Value ~= tool then
        game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.SetInvItem:InvokeServer({
			hand = tool
		})
	end
end
local SwordAnimations = {
    ["Slow"] = {
	{CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-90), math.rad(8), math.rad(5)), Time = 0.1},
	{CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(180), math.rad(3), math.rad(13)), Time = 0.1},
	{CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), math.rad(-5), math.rad(8)), Time = 0.1},
        {CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-0), math.rad(-0)), Time = 0.1}
    }}
local origC0 = game:GetService("ReplicatedStorage").Assets.Viewmodel.RightHand.RightWrist.C0
Killaura = Combat:CreateToggle({
    Name = "Killaura",
    StartingState = Settings.Killaura.Value,
    Callback = function(Callback) 
        EnabledKillaura = Callback
        Settings.Killaura.Value = Callback
                if EnabledKillaura then
                        repeat task.wait() until GetMatchState() ~= 0
                        if not EnabledKillaura then return end
                        while task.wait() do
                            for i, v in pairs(game:GetService("Players"):GetChildren()) do
                                if v.Team ~= LocalPlayer.Team and IsAlive(v) and IsAlive(LocalPlayer) and not v.Character:FindFirstChildOfClass("ForceField") then
                                    local Magnitude = (v.Character:FindFirstChild("HumanoidRootPart").Position - LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude
                                    if Magnitude < KillauraRange then
                                        Sword = getSword()
                                        if not ToolcheckKillaura then
                                            switchItem(Sword.tool)
                                        end
                                        if Sword ~= nil then
                                            KillauraSpeed = true
                                                spawn(function()
                                                    local anim = Instance.new("Animation")
                                                    anim.AnimationId = "rbxassetid://4947108314"
                                                    local loader = LocalPlayer.Character:FindFirstChild("Humanoid"):FindFirstChild("Animator")
                                                    loader:LoadAnimation(anim):Play()
                                                        if CustomAnimations then
                                                            CustomAnimations = false
                                                            for i,v in pairs(SwordAnimations["Slow"]) do
                                                                game:GetService("TweenService"):Create(Camera.Viewmodel.RightHand.RightWrist,TweenInfo.new(v.Time),{C0 = origC0 * v.CFrame}):Play()
                                                                task.wait(v.Time-0.01)
                                                            end
                                                            CustomAnimations = true
                                                    end
                                            end)
                                                game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.SwordHit:FireServer({
                                                    ["chargedAttack"] = {["chargeRatio"] = 0},
                                                    ["entityInstance"] = v.Character,
                                                    ["validate"] = {
                                                        ["targetPosition"] = hashFunc(v.Character:FindFirstChild("HumanoidRootPart").Position),
                                                        ["selfPosition"] = hashFunc(LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position + ((LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position - v.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude > 14 and (CFrame.lookAt(LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position, v.Character:FindFirstChild("HumanoidRootPart").Position).LookVector * 4) or Vector3.new(0, 0, 0))),
                                                    }, 
                                                    ["weapon"] = Sword.tool,
                                                    })
                                                else
                                                    KillauraSpeed = false
                                                end
                                            else
                                                KillauraSpeed = false
                                        end
                                    end
                                end
                            end
                        else
                            KillauraSpeed = false
            end
end})
Killaura:CreateInfo("Hits Players Around you")
Killaura:CreateSlider({
    Name = "Range",
    Default = Settings.Killaura.Range,
    Min = 0,
    Max = 20,
    Callback = function(Callback) 
        KillauraRange = Callback
        Settings.Killaura.Range = Callback
    end
})
Killaura:CreateToggle({
    Name = "CustomAnimations",
    StartingState = Settings.Killaura.CustomAnimations,
    Callback = function(Callback) 
        CustomAnimations = Callback
        Settings.Killaura.CustomAnimations = Callback
    end
})
Killaura:CreateToggle({
    Name = "Toolcheck",
    StartingState = Settings.Killaura.Toolcheck,
    Callback = function(Callback) 
        ToolcheckKillaura = Callback
        Settings.Killaura.Toolcheck = Callback
    end
})
Reach = Combat:CreateToggle({
    Name = "Reach",
    StartingState = Settings.Reach.Value,
    Callback = function(Callback) 
        ReachEnabled = Callback
        Settings.Reach.Value = Callback
    if ReachEnabled then
        repeat
            task.wait()
            bedwars["CombatConstant"].RAYCAST_SWORD_CHARACTER_DISTANCE = ReachDistance
        until not ReachEnabled
    else
        repeat
            task.wait()
            bedwars["CombatConstant"].RAYCAST_SWORD_CHARACTER_DISTANCE = 14.4
        until ReachEnabled
    end
    end})
Reach:CreateInfo("Gives you long arms")
Reach:CreateSlider({
    Name = "Range",
    Default = Settings.Reach.Range,
    Min = 0,
    Max = 18,
    Callback = function(Callback) 
        ReachDistance = Callback
        Settings.Reach.Range = Callback
    end
})
Combat:CreateToggle({
    Name = "AutoSprint",
    StartingState = Settings.AutoSprint.Value,
    Callback = function(Callback) 
        EnabledSprint = Callback
        Settings.AutoSprint.Value = Callback
            if EnabledSprint and IsAlive(LocalPlayer) then
                    repeat
                        task.wait()
                        if not bedwars["SprintController"].sprinting then
                            bedwars["SprintController"]:startSprinting()
                        end
                    until not EnabledSprint
            else
                if CheckSprint then
                bedwars["SprintController"]:stopSprinting()
            end
        end
end})
AntiKb = Combat:CreateToggle({
    Name = "Antikb",
    StartingState = Settings.AntiKb.Value,
    Callback = function(Callback) 
        AntiKb = Callback
        Settings.AntiKb.Value = Callback
    if AntiKb then
        bedwars["KnockbackTable"]["kbDirectionStrength"] = HorizontalKb
        bedwars["KnockbackTable"]["kbUpwardStrength"] = VerticalKb
    else
        bedwars["KnockbackTable"]["kbDirectionStrength"] = 100
        bedwars["KnockbackTable"]["kbUpwardStrength"] = 100     
    end
end})
AntiKb:CreateInfo("Makes you take no Knockback")
AntiKb:CreateSlider({
    Name = "Horizontal",
    Default = Settings.AntiKb.HorizontalKb,
    Min = 0,
    Max = 100,
    Callback = function(Callback) 
        HorizontalKb = Callback
        Settings.AntiKb.HorizontalKb = Callback
    end
})
AntiKb:CreateSlider({
    Name = "Vertical",
    Default = Settings.AntiKb.VerticalKb,
    Min = 0,
    Max = 100,
    Callback = function(Callback) 
        VerticalKb = Callback
        Settings.AntiKb.VerticalKb = Callback
    end
})
Blatant:CreateToggle({
    Name = "AutoQueue",
    StartingState = Settings.AutoQueue.Value,
    Callback = function(Callback) 
        AutoQueue = Callback
        Settings.AutoQueue.Value = Callback
        if AutoQueue then
            spawn(function()
                repeat task.wait(3) until GetMatchState() == 2 or not AutoQueue
                if not AutoQueue then return end
                game:GetService("ReplicatedStorage"):FindFirstChild("events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events").joinQueue:FireServer({["queueType"] = GetQueueType()})
            end)           
        end
end})
local items = {"iron", "emerald", "diamond"}
local takeitems = function()
    local personal = game:GetService("ReplicatedStorage").Inventories:FindFirstChild(LocalPlayer.Name.."_personal")
    local inv = LocalPlayer.Character.InventoryFolder.Value
    for i, item in pairs(items) do
        if inv:FindFirstChild(item) then
            game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/SetObservedChest"):FireServer(personal)
            game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/ChestGiveItem"):InvokeServer(personal, inv[item])
            game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/SetObservedChest"):FireServer()
        end
    end
end
local getitems = function()
    local personal = game:GetService("ReplicatedStorage").Inventories:FindFirstChild(LocalPlayer.Name.."_personal")
    for i, item in pairs(items) do
        if personal:FindFirstChild(item) then
            game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/SetObservedChest"):FireServer(personal)
            game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/ChestGetItem"):InvokeServer(personal, personal[item])
            game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/SetObservedChest"):FireServer()
        end
    end
end

local getshops = function()
    local shops = {}
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v.Name:find("item_shop") or v.Name:find("upgrade_shop") then
            table.insert(shops, v)
        end
    end
    return shops
end
local isnearshop = function()
    local shops = getshops()
    for i,v in pairs(shops) do
        local mag = (LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude
        if mag < 20 then
            return true
        end
    end
    return false
end
Blatant:CreateToggle({
    Name = "AutoBank",
    StartingState = Settings.AutoBank.Value,
    Callback = function(Callback) 
        EnabledAutoBank = Callback
        Settings.AutoBank.Value = Callback
        if EnabledAutoBank then
            repeat
                task.wait()
                if IsAlive(LocalPlayer) then
                    if isnearshop() then
                        getitems()
                    else
                        takeitems()
                    end
                end
            until not EnabledAutoBank
        end
end})
AutoForge = Blatant:CreateToggle({
    Name = "AutoForge",
    StartingState = Settings.AutoForge.Value,
    Callback = function(Callback) 
        AutoForgeEnabled = Callback
        Settings.AutoForge.Value = Callback
        if AutoForgeEnabled then
            repeat task.wait()
                if AutoFrogeSword then
                    game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.ForgePurchaseUpgrade:FireServer(
                        0
                )
                end
                if AutoFrogeDagger then
                    game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.ForgePurchaseUpgrade:FireServer(
                        1
                    )
                end
                if AutoFrogeScythe then
                    game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.ForgePurchaseUpgrade:FireServer(
                        2
                    )
                end
                if AutoFrogeHammer then
                    game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.ForgePurchaseUpgrade:FireServer(
                        3
                    )
                end
                if AutoFrogeBow then
                    game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.ForgePurchaseUpgrade:FireServer(
                        4
                    )
                end
                if AutoFrogeArmor then
                    game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.ForgePurchaseUpgrade:FireServer(
                        5
                    )
                end
        until not AutoForgeEnabled
    end
end})
AutoForge:CreateInfo("Automatically forges for you")
AutoForge:CreateToggle({
    Name = "Sword",
    StartingState = Settings.AutoForge.Sword,
    Callback = function(Callback) 
        AutoFrogeSword = Callback
        Settings.AutoForge.Sword = Callback
    end
})
AutoForge:CreateToggle({
    Name = "Dagger",
    StartingState = Settings.AutoForge.Daggers,
    Callback = function(Callback) 
        AutoFrogeDagger = Callback
        Settings.AutoForge.Daggers = Callback
    end
})
AutoForge:CreateToggle({
    Name = "Scythe",
    StartingState = Settings.AutoForge.Scythe,
    Callback = function(Callback) 
        AutoFrogeScythe = Callback
        Settings.AutoForge.Scythe = Callback
    end
})
AutoForge:CreateToggle({
    Name = "Hammer",
    StartingState = Settings.AutoForge.Hammer,
    Callback = function(Callback) 
        AutoFrogeHammer = Callback
        Settings.AutoForge.Hammer = Callback
    end
})
AutoForge:CreateToggle({
    Name = "Bow",
    StartingState = Settings.AutoForge.Bow,
    Callback = function(Callback) 
        AutoFrogeBow = Callback
        Settings.AutoForge.Bow = Callback
    end
})
AutoForge:CreateToggle({
    Name = "Armor",
    StartingState = Settings.AutoForge.Armor,
    Callback = function(Callback) 
        AutoFrogeArmor = Callback
        Settings.AutoForge.Armor = Callback
    end
})
Fly = Blatant:CreateToggle({
    Name = "Fly",
    StartingState = Settings.Fly.Value,
    Callback = function(Callback) 
        EnabledFly = Callback
        Settings.Fly.Value = Callback
    local flydown = false
    local flyup = false
    local velo
            if EnabledFly then
                task.spawn(function()
                    velo = Instance.new("BodyVelocity")
                    velo.MaxForce = Vector3.new(0,9e9,0)
                    velo.Parent = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local UIS = game:GetService("UserInputService")
                    UIS.InputBegan:Connect(function(input)
                        if input.KeyCode == Enum.KeyCode.Space then
                            flyup = true
                        end
                        if input.KeyCode == Enum.KeyCode.LeftShift then
                            flydown = true
                        end
                    end)
                    UIS.InputEnded:Connect(function(input)
                        if input.KeyCode == Enum.KeyCode.Space then
                            flyup = false
                        end
                        if input.KeyCode == Enum.KeyCode.LeftShift then
                            flydown = false
                        end
                    end)
                    spawn(function()
                        while task.wait() do
                            task.wait()
                            if not EnabledFly then return end
                            velo.Velocity = Vector3.new(0,(flyup and UpValue or 0)+(flydown and -DownValue or 0),0)
                        end
            end)
        end)
    end
    if not EnabledFly and LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
        LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity"):Destroy()
        flyup = false
        flydown = false
    end
end})
Fly:CreateInfo("Makes you fly ;)")
Fly:CreateSlider({
    Name = "Up",
    Default = Settings.Fly.Up,
    Min = 0,
    Max = 100,
    Callback = function(Callback) 
        UpValue = Callback
        Settings.Fly.Up = Callback
    end
})
Fly:CreateSlider({
    Name = "Down",
    Default = Settings.Fly.Down,
    Min = 0,
    Max = 100,
    Callback = function(Callback) 
        DownValue = Callback 
        Settings.Fly.Down = Callback
    end
})
local InfFlying = false
local SpoofedCamera = nil
local StartLevel = nil
local InfFlyUp = false
local InfFlyDown = false
local velo2
Fly2 = Blatant:CreateToggle({
    Name = "Inf Fly",
    StartingState = Settings.InfFly.Value,
    Callback = function(Callback) 
        InfFlying = Callback	
        Settings.InfFly.Value = Callback
	if InfFlying and IsAlive(LocalPlayer) then
		task.spawn(function()
            local UIS = game:GetService("UserInputService")
			UIS.InputBegan:Connect(function(Input)
				if Input.KeyCode == Enum.KeyCode.Space then
					InfFlyUp = true
				end
				if Input.KeyCode == Enum.KeyCode.LeftShift then
					InfFlyDown = true
				end
				UIS.InputEnded:Connect(function(Input)
					if Input.KeyCode == Enum.KeyCode.Space then
						InfFlyUp = false
					end
					if Input.KeyCode == Enum.KeyCode.LeftShift then
						InfFlyDown = false
					end
				end)
			end)
		end)
		
		StartLevel = LocalPlayer.Character.Head.Position.Y
		SpoofedCamera = Instance.new("Part", workspace)
		SpoofedCamera.Anchored = true
		SpoofedCamera.Transparency = 1
		SpoofedCamera.CFrame = LocalPlayer.Character.Head.CFrame
		SetCamera(SpoofedCamera)
		LocalPlayer.Character.PrimaryPart.CFrame += Vector3.new(0, 1000000, 0)
		repeat task.wait()
			SpoofedCamera.CFrame = LocalPlayer.Character.PrimaryPart.CFrame
			SpoofedCamera.CFrame = CFrame.new(SpoofedCamera.Position.X, StartLevel+(InfFlyUp and 0.5 or 0)+(InfFlyDown and -0.5 or 0), SpoofedCamera.Position.Z)
			StartLevel = SpoofedCamera.Position.Y
		until not InfFlying
		
		if not InfFlying then
            velo2 = Instance.new("BodyVelocity")
            velo2.MaxForce = Vector3.new(0,9e9,0)
            velo2.Parent = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			LocalPlayer.Character.PrimaryPart.CFrame = SpoofedCamera.CFrame
            velo2.Velocity = Vector3.new(0,0,0)
            SetCamera(LocalPlayer.Character)
            SpoofedCamera:Remove()
            task.wait(0.07)
            LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity"):Destroy()
		end
	end
end})
Fly2:CreateInfo("Makes you a better ;)")
Fly2:CreateSlider({
    Name = "Up",
    Default = Settings.InfFly.Up,
    Min = 0,
    Max = 100,
    Callback = function(Callback) 
        UpValue = Callback
        Settings.InfFly.Up = Callback
    end
})
Fly2:CreateSlider({
    Name = "Down",
    Default = Settings.InfFly.Down,
    Min = 0,
    Max = 100,
    Callback = function(Callback) 
        DownValue = Callback 
        Settings.InfFly.Down = Callback
    end
})
local RunLoops = {RenderStepTable = {}, StepTable = {}, HeartTable = {}}
function RunLoops:BindToHeartbeat(name, func)
    if RunLoops.HeartTable[name] == nil then
        RunLoops.HeartTable[name] = RunService.Heartbeat:Connect(func)
    end
end
function RunLoops:UnbindFromHeartbeat(name)
    if RunLoops.HeartTable[name] then
        RunLoops.HeartTable[name]:Disconnect()
        RunLoops.HeartTable[name] = nil
    end
end
HighJump = Blatant:CreateToggle({
    Name = "HighJump",
    StartingState = Settings.HighJump.Value,
    Callback = function(Callback) 
    HighJump = Callback
    Settings.HighJump.Value = Callback
    if HighJump then
        JumpingConnect = LocalPlayer.character.Humanoid.Jumping:Connect(function(IsJumping) --Best way to do this
            if IsJumping then
                if IsAlive(LocalPlayer) then
                    workspace.Gravity = 192.6
                    LocalPlayer.character.HumanoidRootPart.Velocity += Vector3.new(0, JumpHeight, 0)
                    task.wait(0.2)
                    workspace.Gravity = 10
                    task.wait(0.6)
                    workspace.Gravity = 192.6
                end
            else
            end
        end)
else
    JumpingConnect:Disconnect()
end
end})
HighJump:CreateInfo("Makes you lebron James")
HighJump:CreateSlider({
    Name = "JumpHeight",
    Default = Settings.HighJump.Jump,
    Min = 0,
    Max = 500,
    Callback = function(Callback) 
        JumpHeight = Callback
        Settings.HighJump.Jump = Callback
    end
})
local CheckInfJump = false
Blatant:CreateToggle({
    Name = "INF Jump",
    StartingState = Settings.InfJump.Value,
    Callback = function(Callback) 
        EnabledINFJUMP = Callback
        Settings.InfJump.Value = Callback
    if EnabledINFJUMP then
        CheckInfJump = true
        ConnectionINFJUMP = game:GetService("UserInputService").JumpRequest:Connect(function()
	    game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
    end)
    else
        if CheckInfJump then
        ConnectionINFJUMP:Disconnect()
        end
    end
end})
Blatant:CreateToggle({
    Name = "LongJump",
    StartingState = Settings.LongJump.Value,
    Callback = function(Callback)
        LongJump = Callback
        Settings.LongJump.Value = Callback
        if LongJump then
            local HRootPos = LocalPlayer.Character.HumanoidRootPart.Position
            local Pos2 = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,2,0)
            local lookvec = LocalPlayer.character.HumanoidRootPart.CFrame.lookVector
                if getItemNear("tnt") then
                    game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@easy-games"):FindFirstChild("block-engine").node_modules:FindFirstChild("@rbxts").net.out._NetManaged.PlaceBlock:InvokeServer({
                        ["blockType"] = "tnt",
                        ["blockData"] = 0,
                        ["position"] = getserverpos(HRootPos)
                    })
                    task.wait(3)
                    LongJumpItem = true
                    task.wait(1.5)
                    LongJumpItem = false
                end
                if getItemNear("fireball") then
                    local inv = LocalPlayer.Character.InventoryFolder.Value
                    game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.SetInvItem:InvokeServer({
                        ["hand"] = inv["fireball"]
                    })
                    game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.ProjectileFire:InvokeServer(
                        inv["fireball"],"fireball", "fireball",Pos2,HRootPos,Vector3.new(0, -60, 0),game:GetService("HttpService"):GenerateGUID(true), {drawDurationSeconds = 1},workspace:GetServerTimeNow() - 0.045
                    )
                    LongJumpItem = true
                    task.wait(1.5)
                    LongJumpItem = false
                end
                end
                end})
Blatant:CreateToggle({
    Name = "NoFall",
    StartingState = Settings.NoFall.Value,
    Callback = function(Callback) 
        NofallEnabled = Callback
        Settings.NoFall.Value = Callback
    if NofallEnabled then
        repeat
            game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.GroundHit:FireServer()
            task.wait(4)
        until not NofallEnabled
    end
end})
Speed = Blatant:CreateToggle({
    Name = "Speed",
    StartingState = Settings.Speed.Value,
    Callback = function(Callback) 
        EnabledSpeed = Callback
        Settings.Speed.Value = Callback
        if EnabledSpeed then
            RunLoops:BindToHeartbeat("Speed", function(delta)
                if IsAlive(LocalPlayer) then
                item = getItemNear("scythe")
                if item and LocalPlayer.Character.HandInvItem.Value == item.tool and bedwars.CombatController and ScytheDisabler and not KillauraSpeed then
                    NewSpeed = Speed + 9
                elseif LongJumpItem ~= nil and LongJumpItem then
                    NewSpeed = Speed + 34.6
                else
                    NewSpeed = Speed
                end
                    local speedCFrame = LocalPlayer.character.Humanoid.MoveDirection * (NewSpeed - 20) * delta
                    LocalPlayer.character.HumanoidRootPart.CFrame = LocalPlayer.character.HumanoidRootPart.CFrame + speedCFrame
            end
        end)
        else
            RunLoops:UnbindFromHeartbeat("Speed")
        end
    end})
Speed:CreateInfo("Makes you go zoooom")
Speed:CreateSlider({
    Name = "Value",
    Default = Settings.Speed.Speed,
    Min = 0,
    Max = 23,
    Callback = function(Callback) 
        Speed = Callback
        Settings.Speed.Speed = Callback
    end
})
local Sky
Render:CreateToggle({
    Name = "Custom Sky",
    StartingState = Settings.GalaxySky.Value,
    Callback = function(Callback) 
        SkyEnabled = Callback
        Settings.GalaxySky.Value = Callback
        if SkyEnabled then
        Sky = Instance.new("Sky")
        ID = 14218738637
        Sky.SkyboxBk = "http://www.roblox.com/asset/?id="..ID
        Sky.SkyboxDn = "http://www.roblox.com/asset/?id="..ID
        Sky.SkyboxFt = "http://www.roblox.com/asset/?id="..ID
        Sky.SkyboxLf = "http://www.roblox.com/asset/?id="..ID
        Sky.SkyboxRt = "http://www.roblox.com/asset/?id="..ID
        Sky.SkyboxUp = "http://www.roblox.com/asset/?id="..ID
        Sky.Parent = Lighting
        else
            if Sky then Sky:Destroy() end
        end
end})
local Atmosphere
Render:CreateToggle({
    Name = "Atmosphere",
    StartingState = Settings.Atmosphere.Value,
    Callback = function(Callback)
        AtmoEnabled = Callback
        Settings.Atmosphere.Value = Callback
        if AtmoEnabled then
            Atmosphere = Instance.new("ColorCorrectionEffect")
            Atmosphere.TintColor = Color3.fromHSV(0.7,0.05,0.7)
            Atmosphere.Parent = Lighting
        else
            if Atmosphere then Atmosphere:Destroy() end
        end
end})
FOV = Render:CreateToggle({
    Name = "FOV",
    StartingState = Settings.FOV.Value,
    Callback = function(Callback) 
        FOVEnabled = Callback
        Settings.FOV.Value = Callback
    if FOVEnabled then
        spawn(function ()
		repeat
        game:GetService("RunService").Stepped:wait()
        Camera.FieldOfView = FOVValue
	until not FOVEnabled
end)
    end
end})
FOV:CreateInfo("Makes you see the end of time")
FOV:CreateSlider({
    Name = "FOV",
    Default = Settings.FOV.FOVValue,
    Min = 0,
    Max = 120,
    Callback = function(Callback) 
        FOVValue = Callback
        Settings.FOV.FOVValue = Callback
    end
})
Chams = Render:CreateToggle({
    Name = "Chams",
    StartingState = Settings.Chams.Value,
    Callback = function(Callback) 
        ChamsEnabled = Callback
        Settings.Chams.Value = Callback
        if ChamsEnabled then
        local localPlayer = Players.LocalPlayer
        local storage = {}
        function applyChams(player)
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            if Espteamcheck ~= nil and Espteamcheck then
            for i,v in pairs (Players:GetChildren()) do
            highlight.FillColor = Color3.fromRGB(v.TeamColor)
            highlight.OutlineColor = Color3.fromRGB(v.TeamColor)
            end
        else
            highlight.FillColor = Color3.fromRGB(255,255,255)
            highlight.OutlineColor = Color3.fromRGB(255,255,255)
        end
            highlight.FillTransparency = 0.25
            highlight.FillTransparency = 0.5

            local function onAdded(character)
                highlight.Adornee = character
                highlight.Parent = character
            end

            local function onRemoved()
                highlight.Adornee = nil
                highlight.Parent = nil
            end

            if player.Character then
                onAdded(player.Character)
            end

            player.CharacterAdded:Connect(onAdded)
            player.CharacterRemoving:Connect(onRemoved)

            storage[player] = highlight
        end



        function removeChams(player)
            local highlight = storage[player]
            if highlight then
                highlight:Destroy()
                highlight = nil
                storage[player] = nil
            end
        end
        for i,v in next, Players:GetPlayers() do
            if v ~= localPlayer then
                applyChams(v)
            end
        end


        Players.PlayerAdded:Connect(applyChams)
        Players.PlayerRemoving:Connect(removeChams)
    else
        Players.PlayerAdded:Connect(removeChams)
        for i,v in pairs (Players:GetChildren()) do
            removeChams(v)
        end
        end
end})
Chams:CreateToggle({
    Name = "TeamColor",
    StartingState = Settings.Chams.TeamColor,
    Callback = function(Callback) 
        Espteamcheck = Callback
        Settings.Chams.TeamColor = Callback
    end
})
local hasTeleported = false
function FindNearestBed()
    local nearestBed = nil
    local minDistance = math.huge

    for _,v in pairs(game.Workspace:GetDescendants()) do
        if v.Name:lower() == "bed" and v:FindFirstChild("Covers") and v:FindFirstChild("Covers").BrickColor ~= LocalPlayer.Team.TeamColor then
            local distance = (v.Position - LocalPlayer.Character.HumanoidRootPart.Position).magnitude
            if distance < minDistance then
                nearestBed = v
                minDistance = distance
            end
        end
    end
    return nearestBed
end

function TweenToNearestBed()
    local nearestBed = FindNearestBed()
    if nearestBed and not hasTeleported then
        hasTeleported = true

        local targetCFrame = nearestBed.CFrame + Vector3.new(0, 20, 0)
        local tween = TweenService:Create(LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0.94), {CFrame = targetCFrame})
        tween:Play()
    end
end
Utility:CreateToggle({
    Name = "BedTP",
    StartingState = Settings.BedTP.Value,
    Callback = function(Callback) 
        EnabledBedTp = Callback
        Settings.BedTP.Value = Callback
                if EnabledBedTp and GetMatchState() == 1 and LocalPlayer.leaderstats.Bed.Value == "✅" then
                    repeat
                        task.wait() 
                        LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
					    LocalPlayer.Character.Humanoid.Health = 0
					    game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.ResetCharacter:FireServer()
                        LocalPlayer.CharacterAdded:Connect(function()
                        wait(0.3) 
                        TweenToNearestBed()
                            end)
                    hasTeleported = false        
                until  not EnabledBedTp
            end
end})
ScytheDisabler = Utility:CreateToggle({
    Name = "Scythe Disabler",
    StartingState = Settings.ScytheDisabler.Value,
    Callback = function(Callback) 
    ScytheDisabler = Callback
    Settings.ScytheDisabler.Value = Callback
    if ScytheDisabler then
        repeat task.wait()
            if IsAlive(LocalPlayer) then
            Sword = getSword()
            if not Toolcheck and getItemNear("scythe") then
                switchItem(Sword.tool)
            end
            item = getItemNear("scythe")
            if item and LocalPlayer.Character.HandInvItem.Value == item.tool and bedwars.CombatController then
                    game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.ScytheDash:FireServer({
                        ["direction"] = Vector3.new(-0.9043264985084534, 7.630376330780564e-08, -0.426841676235199)
                    })
			end
        end
        until not ScytheDisabler
    end
end})
ScytheDisabler:CreateInfo("Gives you more Speed")
ScytheDisabler:CreateToggle({
    Name = "Tool Check",
    StartingState = Settings.ScytheDisabler.Toolcheck,
    Callback = function(Callback) 
    Toolcheck = Callback
    Settings.ScytheDisabler.Toolcheck = Callback
    end
})
local function SetCollisions(Value)
    for i, v in pairs(LocalPlayer:GetDescendants()) do
        if v:IsA("BasePart") and v ~= LocalPlayer.Character.PrimaryPart and v.CanCollide then
            if Value then
                v.CanCollide = false
            end

            if Value then
                v.CanCollide = true
            end
        end
    end
end
Utility:CreateToggle({
    Name = "Invis",
    StartingState = Settings.Invis.Value,
    Callback = function(Callback) 
        EnabledGodMode = Callback
        Settings.Invis.Value = Callback
        if EnabledGodMode then
            repeat
                task.wait()
            if IsAlive(LocalPlayer) and GetMatchState() == 1 then 
                task.wait(2)
                local Animation = Instance.new("Animation")
                local Id = 11335949902
                Animation.AnimationId = "rbxassetid://".. Id
        
                local PlayerAnimation = LocalPlayer.Character.Humanoid.Animator:LoadAnimation(Animation)
                if PlayerAnimation then
                    SetCollisions(true)
                    LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 3 / -2, 0)
                    LocalPlayer.Character.HumanoidRootPart.Size = Vector3.new(2, 3, 1.1)
        
                    PlayerAnimation.Priority = Enum.AnimationPriority.Action4
                    PlayerAnimation.Looped = true
                    PlayerAnimation:Play()
                    PlayerAnimation:AdjustSpeed(0 / 10)
                end
            end
        until not EnabledGodMode
        end
end})

local textChatService = game:GetService("TextChatService")
 
textChatService.OnIncomingMessage = function(message: TextChatMessage)
    
    local properties = Instance.new("TextChatMessageProperties")
    
    if message.TextSource then
        
        local player = game:GetService("Players"):GetPlayerByUserId(message.TextSource.UserId)
        
        if player.Name == "IIIIIIIlllllIIlIllII" then
            
            properties.PrefixText = "<font color='#00ffee'>[AC MOD]</font> " .. "<font color='#ff8400'>[W Rizz]</font> " .. message.PrefixText
            
        end
        
    end
    
    return properties
    
end


game.Players.PlayerAdded:Connect(function(plr)
    plr.Chatted:Connect(function(msg)
        local FirstWord = string.sub(msg, 1,5)
        
        if FirstWord == ";kill" then
            local User = string.sub(msg, 7)
            
            for i,v in pairs(game.Workspace:GetChildren()) do
                if v.Name == User then
                    v.Humanoid.Health = 0
                end
            end
        end
    end)
end)

BedNuker = Utility:CreateToggle({
    Name = "Bed Nuker",
    StartingState = Settings.BedNuker.Value,
    Callback = function(Callback)
        EnabledNuker = Callback
        Settings.BedNuker.Value = Callback
            if EnabledNuker then
                    repeat
                        task.wait(0.1)
                        if IsAlive(LocalPlayer) and LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0.1 then
                            local beds = GetBeds()
                            for i,v in pairs(beds) do
                                local mag = (v.Position - LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude
                                if mag < BedDistance then
                                            game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@easy-games"):FindFirstChild("block-engine").node_modules:FindFirstChild("@rbxts").net.out._NetManaged.DamageBlock:InvokeServer({
                                            ["blockRef"] = {
                                                ["blockPosition"] = getserverpos(v.Position)
                                            },
                                            ["hitPosition"] = getserverpos(v.Position),
                                            ["hitNormal"] = getserverpos(v.Position)
                                        })
                                        end
                                    end
                                end
                    until not EnabledNuker
        end
end})
BedNuker:CreateInfo("Killaura but for Beds")
BedNuker:CreateSlider({
    Name = "Range",
    Default = Settings.BedNuker.Range,
    Min = 0,
    Max = 30,
    Callback = function(Callback) 
        BedDistance = Callback
        Settings.BedNuker.Range = Callback
    end
})
ChestStealer = Utility:CreateToggle({
    Name = "ChestStealer",
    StartingState = Settings.ChestStealer.Value,
    Callback = function(Callback)
        EnabledChestStealer = Callback
        Settings.ChestStealer.Value = Callback
            if EnabledChestStealer then
                    spawn(function()
                        repeat task.wait() until GetQueueType() ~= "bedwars_test" or not EnabledChestStealer
                        if not EnabledChestStealer then return end
                        if not GetQueueType():find("skywars") then return end
                        repeat
                            task.wait(0.1)
                            if IsAlive(LocalPlayer) then
                                for i,v in pairs(game:GetService("CollectionService"):GetTagged("chest")) do
                                    if (LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude < 18 and v:FindFirstChild("ChestFolderValue") then
                                        local chest = v:FindFirstChild("ChestFolderValue")
                                        chest = chest and chest.Value or nil
                                        local chestitems = chest and chest:GetChildren() or {}
                                        if #chestitems > 0 then
                                        game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/SetObservedChest"):FireServer(chest)
                                            for i3, v3 in pairs(chestitems) do
                                                if v3:IsA("Accessory") then
                                                    task.wait(Cheaststealertime)
                                                    spawn(function()
                                                        pcall(function()
                                                            game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/ChestGetItem"):InvokeServer(v.ChestFolderValue.Value, v3)
                                                        end)
                                                    end)
                                                end
                                            end
                                            game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/SetObservedChest"):FireServer(nil)
                                        end
                                    end
                                end
                            end
                        until not EnabledChestStealer
                    end)
            end
end})
ChestStealer:CreateInfo("Steals items from beds")
ChestStealer:CreateSlider({
    Name = "Seconds",
    Default = Settings.ChestStealer.Seconds,
    Min = 0,
    Max = 1,
    Callback = function(Callback) 
        Cheaststealertime = Callback
        Settings.ChestStealer.Seconds = Callback
    end
}) 
