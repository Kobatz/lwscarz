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

	LWCPartHook( 0.02, "pop_up", "honda_nsxr", IN_SPEED, string.lower(V.Model) )
	
end