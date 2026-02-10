local hum = script.Parent:FindFirstChild("Humanoid")
local walk = script.Parent.HumanoidRootPart:FindFirstChild("Running")

while true do
	wait()
	if hum then	
		if hum.FloorMaterial == Enum.Material.Plastic then
			walk.SoundId = "rbxassetid://5682538842" 
			walk.Volume = 2
		end

		if hum.FloorMaterial == Enum.Material.Grass then
			walk.SoundId = "rbxassetid://252965149" 
			walk.Volume = 2

		end
	end
end