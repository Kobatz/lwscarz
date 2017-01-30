local V = {
			Name = "Honda NSX-R NA1", 
			Class = "prop_vehicle_jeep",
			Category = "LW Cars",
			Author = "LoneWolfie",
			Information = "Driveable fef by LoneWolfie",
			Model = "models/LoneWolfie/honda_nsxr.mdl",
					
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/LWCars/honda_nsxr.txt"
							}
			}
list.Set("Vehicles", "honda_nsxr_lw", V)


if SERVER then include("lwcars_partmover.lua")
	
	local time = 0.005 -- Time the bone will move for in Seconds.
	local bone = "pop_up" -- The name of the bone we are gonna move.

	hook.Add("KeyPress", "honda_nsxr_lw_kp", function(ply, key)

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
end