function resize(humanoid,multi)
	humanoid.HeadScale.Value = multi
	humanoid.BodyDepthScale.Value = multi
	humanoid.BodyWidthScale.Value = multi
	humanoid.BodyHeightScale.Value = multi
end

script.Parent.Touched:Connect(function(hit)
	if hit.Parent:FindFirstChildOfClass("Humanoid") then
		local hum = hit.Parent:FindFirstChildOfClass("Humanoid")
		local multiplier = script.Parent:GetAttribute("Multiplier")
		if hum.RigType ~= "R6" then
			local size = hum:FindFirstChild("Size")
			if size then
				if size.Value == multiplier then return end
				size.Value = multiplier
				resize(hum,multiplier)
			else
				local size = Instance.new("NumberValue")
				size.Value = multiplier
				size.Name = "Size"
				size.Parent = hum
				resize(hum,multiplier)
			end
		end
	end
end)
