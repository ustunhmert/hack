-- Gui to Lua
-- Version: 3.2

-- Instances:

local TohMoonHub = Instance.new("ScreenGui")
local Main = Instance.new("ImageLabel")
local ToHButton = Instance.new("TextButton")
local ToH = Instance.new("Frame")
local DeleteKillBricks = Instance.new("TextButton")
local Auto_Win = Instance.new("TextButton")
local Speed_Hack = Instance.new("TextButton")
local Top = Instance.new("TextLabel")
local Top_Roundify_12px = Instance.new("ImageLabel")
local Left = Instance.new("TextLabel")
local Right = Instance.new("TextLabel")
local Title = Instance.new("TextLabel")
local Exit = Instance.new("TextButton")
local Exit_Roundify_12px = Instance.new("ImageLabel")

--Properties:

TohMoonHub.Name = "TohMoonHub"
TohMoonHub.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = TohMoonHub
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 1.000
Main.Position = UDim2.new(0.382807672, 0, 0.351351351, 0)
Main.Selectable = true
Main.Size = UDim2.new(0, 378, 0, 242)
Main.Image = "rbxassetid://3570695787"
Main.ScaleType = Enum.ScaleType.Slice
Main.SliceCenter = Rect.new(100, 100, 100, 100)
Main.SliceScale = 0.120
Main.Active = true
Main.Draggable = true

ToHButton.Name = "ToHButton"
ToHButton.Parent = Main
ToHButton.BackgroundColor3 = Color3.fromRGB(245, 245, 245)
ToHButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
ToHButton.BorderSizePixel = 0
ToHButton.Position = UDim2.new(0, 0, 0.223140493, 0)
ToHButton.Size = UDim2.new(0, 123, 0, 40)
ToHButton.Font = Enum.Font.SourceSansLight
ToHButton.Text = "Menü"
ToHButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ToHButton.TextScaled = true
ToHButton.TextSize = 14.000
ToHButton.TextWrapped = true
ToHButton.MouseButton1Down:Connect(function()
	ToH.Visible = true
	Local.Visible = false
	Misc.Visible = false
end)

ToH.Name = "ToH"
ToH.Parent = Main
ToH.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToH.BackgroundTransparency = 1.000
ToH.Position = UDim2.new(0, 0, 0.223140493, 0)
ToH.Size = UDim2.new(0, 378, 0, 188)

DeleteKillBricks.Name = "DeleteKillBricks"
DeleteKillBricks.Parent = ToH
DeleteKillBricks.BackgroundColor3 = Color3.fromRGB(245, 245, 245)
DeleteKillBricks.BorderSizePixel = 0
DeleteKillBricks.Position = UDim2.new(0.367724866, 0, 0.308510631, 0)
DeleteKillBricks.Size = UDim2.new(0, 99, 0, 37)
DeleteKillBricks.Font = Enum.Font.SourceSansLight
DeleteKillBricks.Text = "Öldürücü Blokları Sil"
DeleteKillBricks.TextColor3 = Color3.fromRGB(0, 0, 0)
DeleteKillBricks.TextScaled = true
DeleteKillBricks.TextSize = 14.000
DeleteKillBricks.TextWrapped = true
DeleteKillBricks.MouseButton1Down:Connect(function()
	local killparts = game.workspace.tower:GetDescendants()

	for i,v in pairs (killparts) do
		if v:IsA("BoolValue") or v:IsA("StringValue") then
			v.Parent:Destroy()
		end
		if v:IsA("ManualWeld") then
			if v.Name == "kill" then
				v.Parent:Destroy()
			end
		end
		if v:IsA("Part") then
			v.Anchored = true
		end
	end
end)

Auto_Win.Name = "Auto_Win"
Auto_Win.Parent = ToH
Auto_Win.BackgroundColor3 = Color3.fromRGB(245, 245, 245)
Auto_Win.BorderSizePixel = 0
Auto_Win.Position = UDim2.new(0.367724866, 0, 0.0478723422, 0)
Auto_Win.Size = UDim2.new(0, 99, 0, 37)
Auto_Win.Font = Enum.Font.SourceSansLight
Auto_Win.Text = "Otomatik Bitir"
Auto_Win.TextColor3 = Color3.fromRGB(0, 0, 0)
Auto_Win.TextScaled = true
Auto_Win.TextSize = 14.000
Auto_Win.TextWrapped = true
Auto_Win.MouseButton1Down:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.tower.finishes.Finish.CFrame
end)

Speed_Hack.Name = "Speed_Hack"
Speed_Hack.Parent = ToH
Speed_Hack.BackgroundColor3 = Color3.fromRGB(245, 245, 245)
Speed_Hack.BorderSizePixel = 0
Speed_Hack.Position = UDim2.new(0.367724866, 0, 0.585106373, 0)
Speed_Hack.Size = UDim2.new(0, 99, 0, 37)
Speed_Hack.Font = Enum.Font.SourceSansLight
Speed_Hack.Text = "Yüksek Hız"
Speed_Hack.TextColor3 = Color3.fromRGB(0, 0, 0)
Speed_Hack.TextScaled = true
Speed_Hack.TextSize = 14.000
Speed_Hack.TextWrapped = true
Speed_Hack.MouseButton1Down:Connect(function()
        game.ReplicatedStorage.globalSpeed.Value = 100
end)

Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(239, 239, 239)
Top.BackgroundTransparency = 1.000
Top.BorderSizePixel = 0
Top.Size = UDim2.new(0, 378, 0, 54)
Top.Font = Enum.Font.SourceSans
Top.Text = " "
Top.TextColor3 = Color3.fromRGB(0, 0, 0)
Top.TextSize = 14.000

Top_Roundify_12px.Name = "Top_Roundify_12px"
Top_Roundify_12px.Parent = Top
Top_Roundify_12px.AnchorPoint = Vector2.new(0.5, 0.5)
Top_Roundify_12px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Top_Roundify_12px.BackgroundTransparency = 1.000
Top_Roundify_12px.Position = UDim2.new(0.5, 0, 0.5, 0)
Top_Roundify_12px.Size = UDim2.new(1, 0, 1, 0)
Top_Roundify_12px.Image = "rbxassetid://3570695787"
Top_Roundify_12px.ImageColor3 = Color3.fromRGB(239, 239, 239)
Top_Roundify_12px.ScaleType = Enum.ScaleType.Slice
Top_Roundify_12px.SliceCenter = Rect.new(100, 100, 100, 100)
Top_Roundify_12px.SliceScale = 0.120

Left.Name = "Left"
Left.Parent = Main
Left.BackgroundColor3 = Color3.fromRGB(239, 239, 239)
Left.BorderSizePixel = 0
Left.Position = UDim2.new(0, 0, 0.12396694, 0)
Left.Size = UDim2.new(0, 36, 0, 24)
Left.Font = Enum.Font.SourceSans
Left.Text = " "
Left.TextColor3 = Color3.fromRGB(0, 0, 0)
Left.TextSize = 14.000

Right.Name = "Right"
Right.Parent = Main
Right.BackgroundColor3 = Color3.fromRGB(239, 239, 239)
Right.BorderSizePixel = 0
Right.Position = UDim2.new(0.90476191, 0, 0.12396694, 0)
Right.Size = UDim2.new(0, 36, 0, 24)
Right.Font = Enum.Font.SourceSans
Right.Text = " "
Right.TextColor3 = Color3.fromRGB(0, 0, 0)
Right.TextSize = 14.000

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(239, 239, 239)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0185185075, 0, 0.02892562, 0)
Title.Size = UDim2.new(0, 116, 0, 39)
Title.Font = Enum.Font.SourceSansLight
Title.Text = "H4R7N T.O.H. Free Hack"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

Exit.Name = "Exit"
Exit.Parent = Main
Exit.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Exit.BackgroundTransparency = 1.000
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(0.904999971, 0, 0.0579999983, 0)
Exit.Size = UDim2.new(0, 23, 0, 25)
Exit.Font = Enum.Font.SourceSans
Exit.Text = " "
Exit.TextColor3 = Color3.fromRGB(0, 0, 0)
Exit.TextSize = 14.000
Exit.MouseButton1Down:Connect(function()
	Main:Destroy()
end)

Exit_Roundify_12px.Name = "Exit_Roundify_12px"
Exit_Roundify_12px.Parent = Exit
Exit_Roundify_12px.Active = true
Exit_Roundify_12px.AnchorPoint = Vector2.new(0.5, 0.5)
Exit_Roundify_12px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Exit_Roundify_12px.BackgroundTransparency = 1.000
Exit_Roundify_12px.Position = UDim2.new(0.5, 0, 0.5, 0)
Exit_Roundify_12px.Selectable = true
Exit_Roundify_12px.Size = UDim2.new(1, 0, 1, 0)
Exit_Roundify_12px.Image = "rbxassetid://3570695787"
Exit_Roundify_12px.ImageColor3 = Color3.fromRGB(255, 0, 0)
Exit_Roundify_12px.ScaleType = Enum.ScaleType.Slice
Exit_Roundify_12px.SliceCenter = Rect.new(100, 100, 100, 100)
Exit_Roundify_12px.SliceScale = 0.120