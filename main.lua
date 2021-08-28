local player = game.Players.LocalPlayer
local mouse = player:GetMouse()


function build_board(parent) 
	local new_board = Instance.new("BillboardGui", parent)
	new_board.Name = "CoolBoard"
	new_board.Adornee = parent
	new_board.StudsOffset = Vector3.new(0, 2, 0)
	new_board.Size = UDim2.new(1, 0, 1, 0)
	
	local new_label = Instance.new("TextLabel", new_board)
	new_label.Text = parent.Name
	new_label.Font = Enum.Font.GothamBold
	new_label.TextColor3 = Color3.new(1, 0, 0.0156863)
	new_label.BackgroundTransparency = 1
	new_label.BorderSizePixel = 0
	new_label.TextSize = 15
	new_label.Size = UDim2.new(1, 0, 1, 0)
	
end



mouse.KeyDown:Connect(function(key)
	if key == "u" then 
		for i, v in pairs(game.Workspace:GetChildren()) do 
			pcall(function()
				if string.find(v.Name, "Pa") and not v:FindFirstChild("CoolBoard") then 
					build_board(v)
				end
			end)
		end
	end
end)

mouse.KeyDown:Connect(function(key)
	if key == "y" then 
		for i, v in pairs(game.Workspace:GetChildren()) do 
			local board = v:FindFirstChild("CoolBoard")
			pcall(function()
				if string.find(v.Name, "Pa") and board then 
					if not board.Enabled then
						board.Enabled = true
					else
						board.Enabled = false
					end
				end
			end)
		end
	end
end)
