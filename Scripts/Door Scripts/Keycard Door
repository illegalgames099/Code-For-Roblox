local tween = game:GetService("TweenService")

local model = script.Parent.Parent
local keypart = script.Parent
local active = model.Active

local door = model.Door

local open = TweenInfo.new(0.65,Enum.EasingStyle.Cubic,Enum.EasingDirection.InOut)
local close = TweenInfo.new(0.45,Enum.EasingStyle.Cubic,Enum.EasingDirection.InOut)

local debounce = false

keypart.Touched:Connect(function(hit)
	if hit.Parent.Name == "KeyCard" then
		if not debounce then debounce = true
			active.BrickColor = BrickColor.new("Really red")
			local t = tween:Create(door,open,{Position = door.Position + Vector3.new(0,6.7,0)})
			t:Play()
			t.Completed:Wait()
			task.wait(5)
			local t = tween:Create(door,open,{Position = door.Position - Vector3.new(0,6.7,0)})
			t:Play()
			t.Completed:Wait()
			task.wait(5)
			active.BrickColor = BrickColor.new("Lime green")
			task.wait(0.125)
			debounce = false
		end
	end
end)
