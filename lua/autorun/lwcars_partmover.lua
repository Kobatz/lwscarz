local state = 1 -- We need this to set our default position of 1, to start pos.

<<<<<<< HEAD
local function LWCPartMover(car, time, bone)
=======
function LWCPartMover(car, time, bone) 
>>>>>>> origin/master

	if state == 1 then state = 0
		timer.Destroy("LW" .. bone .. 0 .. tostring(car:EntIndex()))
		timer.Create("LW" .. bone .. 1 .. tostring(car:EntIndex()), time, 0, function()
		if !IsValid(car) then return end -- Needed if someone does a remove/undo on our vehicle during the anim.
			if car:GetPoseParameter(bone) >= 1 then
				car:SetPoseParameter(bone, 1)
			else
				car:SetPoseParameter(bone, car:GetPoseParameter(bone) + time)
			end
		end)
	else state = 1
		timer.Destroy("LW" .. bone .. 1 .. tostring(car:EntIndex()))
		timer.Create("LW" .. bone .. 0 .. tostring(car:EntIndex()), time, 0, function()
		if !IsValid(car) then return end -- Needed if someone does a remove/undo on our vehicle during the anim.
			if car:GetPoseParameter(bone) <= 0 then
				car:SetPoseParameter(bone, 0)
			else
				car:SetPoseParameter(bone, car:GetPoseParameter(bone) - time)
			end
		end)
	end
	
end
<<<<<<< HEAD


function LWCPartHook(time, bone, name, keyp, model) -- This function allows us to use more than 1 movement part.
	
	hook.Add("KeyPress", name.."kp", function(ply, key) -- This seems sorta hacky.
		if ply:InVehicle() then if key != keyp then return end
			local car = ply:GetVehicle()
			
			if car:GetModel() == model then
				LWCPartMover(car, time, bone)
			end
		end	
	end)
	
end
=======
>>>>>>> origin/master
