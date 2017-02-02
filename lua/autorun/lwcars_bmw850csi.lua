local V = {
			Name = "BMW 850CSi", 
			Class = "prop_vehicle_jeep",
			Category = "LW Cars",
			Author = "LoneWolfie",
			Information = "Driveable fef by LoneWolfie",
			Model = "models/lonewolfie/bmw_850csi.mdl",
					
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/lwcars/bmw_850csi.txt"
							}
			}
list.Set("Vehicles", "bmw_850csi_lw", V)

if SERVER then include("lwcars_partmover.lua")

	LWCPartHook( 0.02, "pop_ups", "bmw_850csi", IN_ATTACK, string.lower(V.Model) ) --0.02
	LWCPartHook( 0.005, "sunroof", "bmw_850c5si", IN_ATTACK2, string.lower(V.Model) ) --0.005
	
end