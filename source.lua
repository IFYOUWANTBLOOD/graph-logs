local function protectedGui()
    local DexGui = game:GetService('CoreGui'):FindFirstChildOfClass('ScreenGui') or CreateInstance("ScreenGui",{DisplayOrder=0,Enabled=true,ResetOnSpawn=true})
	if syn and syn.protect_gui or protect_gui then (syn.protect_gui or protect_gui)(DexGui) else
	    if getconnections then
	        local function cleancons(v)
	            for i,v in pairs(getconnections(v)) do
	                v:Disconnect()
	            end
	        end
	        cleancons(DexGui.DescendantAdded)
	        cleancons(DexGui.ChildAdded)
	        cleancons(Services.CoreGui.DescendantAdded)
	        cleancons(game.DescendantAdded)
	    end
	end
	return DexGui
end

local lib = {new=function(nm,oth,op)
    op = op or {}
    local Frame = Instance.new("Frame")
    local top = Instance.new("Frame")
    local name = Instance.new("TextLabel")
    local clear = Instance.new("ImageButton")
    local list = Instance.new("ScrollingFrame")
    local lay = Instance.new("UIListLayout")
    local sp = Instance.new("TextLabel")
    local Frame_2 = Instance.new("Frame")
    local Sum = Instance.new("Frame")
    local Graph = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local Top = Instance.new("Frame")
    local name_2 = Instance.new("TextLabel")
    local ResizeBtn = Instance.new("ImageButton")
    
    Frame.Parent = protectedGui()
    Frame.BackgroundColor3 = Color3.fromRGB(42, 44, 49)
    Frame.BorderSizePixel = 0
    Frame.Position = op.pos or UDim2.new(0.312796175, 0, 0.0584269725, 0)
    Frame.Size = op.size or UDim2.new(0, 275, 0, 267)
    
    top.Name = "top"
    top.Parent = Frame
    top.BackgroundColor3 = Color3.fromRGB(62, 65, 72)
    top.BorderSizePixel = 0
    top.Size = UDim2.new(1, 0, 0, 29)
    
    name.Name = "name"
    name.Parent = top
    name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    name.BackgroundTransparency = 1.000
    name.Position = UDim2.new(0, 11, 0, 0)
    name.Size = UDim2.new(0, 189, 0, 29)
    name.Font = Enum.Font.Code
    name.Text = nm or "Logs"
    name.TextColor3 = Color3.fromRGB(227, 227, 227)
    name.TextSize = 14.000
    name.TextXAlignment = Enum.TextXAlignment.Left
    
    clear.Name = "clear"
    clear.Parent = top
    clear.BackgroundTransparency = 1.000
    clear.Position = UDim2.new(1, -25, 0, 5)
    clear.Size = UDim2.new(0, 20, 0, 20)
    clear.ZIndex = 2
    clear.Image = "rbxassetid://3926305904"
    clear.ImageColor3 = Color3.fromRGB(239, 239, 239)
    clear.ImageRectOffset = Vector2.new(924, 724)
    clear.ImageRectSize = Vector2.new(36, 36)
    clear.MouseButton1Click:Connect(function()
        Frame.Visible = not Frame.Visible
    end)
    
    local UserInputService = game:GetService("UserInputService")

    local gui = Frame
    
    local dragging
    local dragInput
    local dragStart
    local startPos
    
    local function update(input)
    	local delta = input.Position - dragStart
    	gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    
    gui.InputBegan:Connect(function(input)
    	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
    		dragging = true
    		dragStart = input.Position
    		startPos = gui.Position
    		
    		input.Changed:Connect(function()
    			if input.UserInputState == Enum.UserInputState.End then
    				dragging = false
    			end
    		end)
    	end
    end)
    
    gui.InputChanged:Connect(function(input)
    	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
    		dragInput = input
    	end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
    	if input == dragInput and dragging then
    		update(input)
    	end
    end)
    
    list.Name = "list"
    list.Parent = Frame
    list.Active = true
    list.BackgroundColor3 = Color3.fromRGB(42, 44, 49)
    list.BorderSizePixel = 0
    list.Position = UDim2.new(0, 4, 0, 33)
    list.Size = UDim2.new(1, -8, 0.5, -56)
    list.ScrollBarThickness = 4
    list.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
    
    lay.Name = "lay"
    lay.Parent = list
    lay.SortOrder = Enum.SortOrder.LayoutOrder
    
    sp.Name = "sp"
    sp.BackgroundColor3 = Color3.fromRGB(53, 54, 61)
    sp.BackgroundTransparency = 1.000
    sp.BorderSizePixel = 0
    sp.Position = UDim2.new(0, 30, 0, 0)
    sp.Size = UDim2.new(1, -5, 0, 16)
    sp.Font = Enum.Font.Code
    sp.Text = "ae ea de d a ded ed e da de d a d seda dee"
    sp.TextColor3 = Color3.fromRGB(203, 203, 203)
    sp.TextSize = 16.000
    sp.TextStrokeColor3 = Color3.fromRGB(226, 226, 226)
    sp.TextWrapped = true
    sp.TextXAlignment = Enum.TextXAlignment.Left
    sp.TextYAlignment = Enum.TextYAlignment.Top
    sp.RichText = true
    
    Frame_2.Parent = Frame
    Frame_2.BackgroundColor3 = Color3.fromRGB(53, 55, 62)
    Frame_2.BorderSizePixel = 0
    Frame_2.ClipsDescendants = true
    Frame_2.Position = UDim2.new(0, 4, 0.5, -20)
    Frame_2.Size = UDim2.new(1, -8, 0.5, 17)
    
    Sum.Name = "Sum"
    Sum.Parent = Frame_2
    Sum.BackgroundColor3 = Color3.fromRGB(57, 59, 66)
    Sum.BorderSizePixel = 0
    Sum.Position = UDim2.new(0, 0, 1, -23)
    Sum.Size = UDim2.new(1, 0, 0, 23)
    
    Graph.Name = "Graph"
    Graph.Parent = Frame_2
    Graph.BackgroundColor3 = Color3.fromRGB(53, 55, 62)
    Graph.BorderSizePixel = 0
    Graph.Position = UDim2.new(0, 0, 0, 23)
    Graph.Size = UDim2.new(1, 0, 1, -44)
    
    UIListLayout.Parent = Graph
    UIListLayout.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
    UIListLayout.Padding = UDim.new(0, 1)
    
    Top.Name = "Top"
    Top.Parent = Frame_2
    Top.BackgroundColor3 = Color3.fromRGB(57, 59, 66)
    Top.Size = UDim2.new(1, 0, 0, 23)
    
    name_2.Name = "name"
    name_2.Parent = Top
    name_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    name_2.BackgroundTransparency = 1.000
    name_2.Position = UDim2.new(0, 7, 0, 0)
    name_2.Size = UDim2.new(0, 193, 0, 23)
    name_2.Font = Enum.Font.Code
    name_2.Text = oth or "Graph"
    name_2.TextColor3 = Color3.fromRGB(217, 217, 217)
    name_2.TextSize = 14.000
    name_2.TextXAlignment = Enum.TextXAlignment.Left
    
    ResizeBtn.Name = "ResizeBtn"
    ResizeBtn.Parent = Frame
    ResizeBtn.BackgroundTransparency = 1.000
    ResizeBtn.Position = UDim2.new(1, -25, 1, -25)
    ResizeBtn.Rotation = -35.000
    ResizeBtn.Size = UDim2.new(0, 25, 0, 25)
    ResizeBtn.ZIndex = 2
    ResizeBtn.Image = "rbxassetid://3926305904"
    ResizeBtn.ImageRectOffset = Vector2.new(564, 284)
    ResizeBtn.ImageRectSize = Vector2.new(36, 36)
    
    local b = ResizeBtn
    local mouse = game.Players.LocalPlayer:GetMouse()
    local Pressing = false
    
    local RecordedLastX = nil
    local RecordedLastY = nil
    
    local NowPositionX = nil
    local NowPositionY = nil
    
    local Hovered = false
    
    b.InputBegan:connect(function(key)
    	if key.UserInputType == Enum.UserInputType.MouseButton1 then
    		Pressing = true
    		RecordedLastX = mouse.X
    		RecordedLastY = mouse.Y
    		b.InputEnded:connect(function(key2)
    			if key == key2 then
    				Pressing =  false
    			end
    		end)
    	end
    end)
    
    b.MouseEnter:connect(function()
    	crr = true
    	Hovered = true
    	b.MouseLeave:connect(function()
    		RecordedLastX = mouse.X
    		RecordedLastY = mouse.Y
    		wait(.3)
    		if crr then crr = false return end
    		Hovered = false
    	end)
    end)
    
    mouse.Move:connect(function()
    	if Pressing and Hovered then
    		NowPositionX = mouse.x
    		NowPositionY = mouse.y
    	
    		local ChangeX = NowPositionX - RecordedLastX
    		local ChangeY = NowPositionY - RecordedLastY
    		
    		RecordedLastX = mouse.X
    		RecordedLastY = mouse.Y
    	
    		Frame.Size = UDim2.new(0, Frame.Size.X.Offset + ChangeX, 0, Frame.Size.Y.Offset + ChangeY)
    	end
    end)
    
    local Object = Frame
    local Min = Object.Size.X.Offset*0.8
    local Max = Min*2.6
    
    Object.Changed:connect(function()
    	if Object.Size.X.Offset < Min and Object.Size.Y.Offset < Min then
    		Object.Size = UDim2.new(0, Min, 0, Min)
    	elseif Object.Size.X.Offset < Min then
    		Object.Size = UDim2.new(0, Min, 0, Object.Size.Y.Offset)
    	elseif Object.Size.Y.Offset < Min then
    		Object.Size = UDim2.new(0, Object.Size.X.Offset, 0, Min)
    	end
    	if Object.Size.X.Offset > Max and Object.Size.Y.Offset > Max then
    		Object.Size = UDim2.new(0, Max, 0, Max)
    	elseif Object.Size.X.Offset > Max then
    		Object.Size = UDim2.new(0, Max, 0, Object.Size.Y.Offset)
    	elseif Object.Size.Y.Offset > Max then
    		Object.Size = UDim2.new(0, Object.Size.X.Offset, 0, Max)
    	end
    end)
    
    local a = Frame
    local e = a.list
    local c,edf = sp,{}
    
    return{add=function(r)
    	local c = c:Clone()
    	c.Text = '<font color="rgb(130,130,130)">'..os.date("%X")..'</font> - '..r
    	c.Size = UDim2.new(1,0,0,16*math.floor((#r*8)/a.AbsoluteSize.X))
    	c.Parent = e
    	return c
    end,graph=function(bl)
        local a = Frame_2
        local g,s,t = a.Graph,a.Sum,a.Top
    
        local m,tl,i = (function()local e,f;for i,v in next,bl do
        		if e and v[2] > e then e = v[2]
        		elseif not e then e = v[2] end
        		f = (f or 0)+1
        	end;return e,1/f,0
        end)()
        
        for i,v in pairs(g:GetChildren()) do if v:IsA('TextLabel') then v:Remove() end end
        for id,v in pairs(bl) do
        	local id,v,c = v[1],v[2],Instance.new('TextLabel',g)
        	c.Text = v
        	c.TextColor3 = Color3.new(200,200,200)
        	c.BorderSizePixel = 0
        	c.Size = UDim2.new(tl,-1,v/m,1)
        	
        	local c = Instance.new('TextLabel',s)
        	c.TextScaled = true
        	c.TextColor3 = Color3.new(200,200,200)
        	c.BackgroundTransparency = 1
        	c.BackgroundColor3 = a.BackgroundColor3
        	c.Position = UDim2.new(tl*i,0,0,4)
        	c.Size = UDim2.new(tl,0,0,18)
        	c.Text,i = id,i+1
        end
    end}
end}
return lib
