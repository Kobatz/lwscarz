
local toggle = 1
	
function LWCPartMover(car, time, bone, model) 

	if toggle == 1 then toggle = 0
		timer.Destroy("LW" .. bone .. 0 .. tostring(car:EntIndex()))
		timer.Create("LW" .. bone .. 1 .. tostring(car:EntIndex()), time, 0, function()
		if !IsValid(car) then return end
			if car:GetPoseParameter(bone) >= 1 then
				car:SetPoseParameter(bone, 1)
			else
				car:SetPoseParameter(bone, car:GetPoseParameter(bone) + time)
			end
		end)
	else toggle = 1
		timer.Destroy("LW" .. bone .. 1 .. tostring(car:EntIndex()))
		timer.Create("LW" .. bone .. 0 .. tostring(car:EntIndex()), time, 0, function()
		if !IsValid(car) then return end
			if car:GetPoseParameter(bone) <= 0 then
				car:SetPoseParameter(bone, 0)
			else
				car:SetPoseParameter(bone, car:GetPoseParameter(bone) - time)
			end
		end)
	end
	
end