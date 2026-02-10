local TweenService = game:GetService("TweenService") -- smooth animation
local hinge = script.Parent.Hinge
local clickDetector = script.Parent.Door.ClickDetector
local open = true

local openDoor = {}
openDoor.CFrame = hinge.CFrame * CFrame.Angles(0, math.rad(90), 0) --getting current hinge CFrame and multiplying it so that it rotates it by 90 degrees. Converted to radians

local closeDoor = {}
closeDoor.CFrame = hinge.CFrame * CFrame.Angles(0, 0, 0) --does the same thing but closes the door now

local tweenInfo = TweenInfo.new(1) --takes one second for the tween to open and close
local tweenOpen = TweenService:Create(hinge, tweenInfo, openDoor) --we want to tween/rotate the hinge
local tweenClose = TweenService:Create(hinge, tweenInfo, closeDoor)

clickDetector.MouseClick:Connect(function(player)
	if open == true then 
		open = false -- if the door is open then the boolean value is false then the tween will play
		tweenClose:Play()
	elseif open == false then 
		open = true -- if the door is closed then the boolean value is true then tween info will play
		tweenOpen:Play() 
	end
end)
