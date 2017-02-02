local V = {
			Name = "Mercedes Benz SLK 55 AMG", 
			Class = "prop_vehicle_jeep",
			Category = "LW Cars",
			Author = "LoneWolfie",
			Information = "Driveable fef by LoneWolfie",
			Model = "models/loneWolfie/mercedes_slk55_amg.mdl",
					
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/lwcars/mercedes_slk55_amg.txt"
							}
			}
list.Set("Vehicles", "mercedes_slk55_lw", V)


if SERVER then include("lwcars_partmover.lua")
	
	LWCPartHook( 0.001, "roof_ani", "mercedes_slk55_amg", IN_SPEED, string.lower(V.Model) )
		
		
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