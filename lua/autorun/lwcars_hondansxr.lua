local V = {
			Name = "Honda NSX-R NA1", 
			Class = "prop_vehicle_jeep",
			Category = "LW Cars",
			Author = "LoneWolfie",
			Information = "Driveable fef by LoneWolfie",
			Model = "models/loneWolfie/honda_nsxr.mdl",
					
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/lwcars/honda_nsxr.txt"
							}
			}
list.Set("Vehicles", "honda_nsxr_lw", V)


if SERVER then include("lwcars_partmover.lua")
	
	local time = 0.02 -- Time the bone will move for in Seconds.
	local bone = "pop_up" -- The name of the bone we are gonna move.

	hook.Add("KeyPress", "honda_nsxr".."kp", function(ply, key)
		if ply:InVehicle() then if key != IN_SPEED then return end
			local car = ply:GetVehicle()
			
			if car:GetModel() == string.lower(V.Model) then
				LWCPartMover(car, time, bone) 
			end
		end	
	end)
	
end