##Template Code / (Sloppy :3) Code Usage

```lua
if SERVER then include("lwcars_partmover.lua")
	
	local time = 0.0 -- Time the bone will move for in Seconds.
	local bone = "bone_name_here" -- Name of the bone we are gonna move.

	hook.Add("KeyPress", string.Replace( V.Model,"/","" ), function(ply, key)
	
		if ply:InVehicle() then if key != IN_SPEED then return end
			local car = ply:GetVehicle()
			local model = string.lower(V.Model)
			
			if car:GetModel() == model then
				LWCPartMover(car, time, bone, model) 
			end
		end
		
	end)
	
end
```

You would paste that code above into the lua file of whichever car you are going to add a movable part to: <br/>
*/lua/autorun/Working_Car_File.lua*

**After** your *list.Set* function where you setup your cars script folder and model folder you paste that code I have above.

All you have todo is change our variables:
>*time* to a number in seconds of how fast your part is going to move.

>*bone* to the bone name you set in 3ds or whatever.

<br/><br/><br/>
###More Usage / Secondary Cell Phone Calls

If we wanted to have another part move when we press shift for whatever reason, we would call another <br/>*LWCPartMover(car, time, bone, model)*
<br/>And instead of using a local variable, we would set them in the function call as show below: 

```lua
if SERVER then include("lwcars_partmover.lua")
	
	local time = 0.02 -- Time the bone will move for in Seconds.
	local bone = "pop_up" -- The name of the bone we are gonna move.

	hook.Add("KeyPress", string.Replace( V.Model,"/","" ), function(ply, key)
	
		if ply:InVehicle() then if key != IN_SPEED then return end
			local car = ply:GetVehicle()
			local model = string.lower(V.Model)
			
			if car:GetModel() == model then
				LWCPartMover(car, time, bone, model) 
				LWCPartMover(car, 0.001, "roof_down", model) -- Another part that will be moving
			end
		end
		
	end)
	
end
```