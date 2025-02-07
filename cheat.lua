local function addOutline(player)
    if player.Character and player.Character:FindFirstChild("Head") then
        local head = player.Character.Head
        
        local billboardGui = Instance.new("BillboardGui")
        billboardGui.Size = UDim2.new(4, 0, 4, 0) 
        billboardGui.StudsOffset = Vector3.new(0, 2, 0)
        billboardGui.Adornee = head
        billboardGui.Parent = head
        
        local frame = Instance.new("Frame")
        frame.Size = UDim2.new(1, 0, 1, 0)
        frame.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        frame.BackgroundTransparency = 0.5
        frame.BorderSizePixel = 5
        frame.Parent = billboardGui
    end
end

local function onPlayerAdded(player)
    player.CharacterAdded:Connect(function()
        addOutline(player)
    end)
end

game.Players.PlayerAdded:Connect(onPlayerAdded)

-- Für bereits vorhandene Spieler
for _, player in pairs(game.Players:GetPlayers()) do
    onPlayerAdded(player)
end
