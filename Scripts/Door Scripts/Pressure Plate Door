local model = script.Parent
local endPos = model.EndPos -- end position part of our door
local door = model.Door
local pressurePlate = model.PressurePlate
local activated = false
local ts = game:GetService("TweenService")

-- tween info --

local tweenInfo = TweenInfo.new(
	model.Time.Value, -- how many secounds our door opens/closes
	Enum.EasingStyle.Sine,
	Enum.EasingDirection.Out,
	0, -- how many time repeats
	true, -- we want our part to reverse
	0 -- no delays
)

local function open(trigger)
	local plr = game.Players:FindFirstChild(trigger.Parent.Name)
	if plr and not activated then
		activated = true
		local tween = ts:Create(door, tweenInfo, {Position = model.EndPos.Position})
		tween:Play()
		tween.Completed:Wait()
		activated = false
	end
end

pressurePlate.Touched:Connect(open)
