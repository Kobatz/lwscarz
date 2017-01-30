local V = {
			Name = "Mercedes Benz SLK 55 AMG", 
			Class = "prop_vehicle_jeep",
			Category = "LW Cars",
			Author = "LoneWolfie",
			Information = "Driveable fef by LoneWolfie",
			Model = "models/LoneWolfie/mercedes_slk55_amg.mdl",
					
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/LWCars/mercedes_slk55_amg.txt"
							}
			}
list.Set("Vehicles", "mercedes_slk55_lw", V)


if SERVER then include("lwcars_partmover.lua")
	
	local time = 0.001 -- Time the bone will move for in Seconds.
	local bone = "roof_ani" -- The name of the bone we are gonna move.

	hook.Add("KeyPress", "mercedes_slk55_lw_kp", function(ply, key)
	
		if ply:InVehicle() then
			local car = ply:GetVehicle()
			local model = string.lower(V.Model)
			
			if car:GetModel() == model then
				if key == IN_SPEED then -- todo: move a few lines up, no reason to keep setting vars. :|
					LWCPartMover(car, time, bone, model) 
				end
			end
		end
		
	end)
		
		
	hook.Add("KeyPress", "slk55brakelw", function(ply, key)
		if ply:InVehicle() then
			car = ply:GetVehicle()
			if car:GetModel() == "models/lonewolfie/mercedes_slk55_amg.mdl" then
				if key == IN_BACK then                
					car:SetPoseParameter("brake", 1)
				end
			end
		end
	end)
		
		
	hook.Add("KeyRelease", "slkbrakereleaselw", function(ply, key)
		if ply:InVehicle() then
			car = ply:GetVehicle()
			if car:GetModel() == "models/lonewolfie/mercedes_slk55_amg.mdl" then
				if key == IN_BACK then                
					car:SetPoseParameter("brake", 0)
				end
			end
		end
	end)		
		
		
	hook.Add("KeyPress", "slk55accellw", function(ply, key)
		if ply:InVehicle() then
			car = ply:GetVehicle()
			if car:GetModel() == "models/lonewolfie/mercedes_slk55_amg.mdl" then
				if key == IN_FORWARD then                
					car:SetPoseParameter("accel", 1)
				end
			end
		end
	end)
	
	
	hook.Add("KeyRelease", "slkaccelreleaselw", function(ply, key)
		if ply:InVehicle() then
			car = ply:GetVehicle()
			if car:GetModel() == "models/lonewolfie/mercedes_slk55_amg.mdl" then
				if key == IN_FORWARD then                
					car:SetPoseParameter("accel", 0)
				end
			end
		end
	end)			
		
end