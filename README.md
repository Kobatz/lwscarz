##Template Code / (Sloppy :3) Code Usage

```lua
if SERVER then include("lwcars_partmover.lua")
	
	LWCPartHook( 0.0, "*bone_name*", "*car_name*", IN_ENUM, string.lower(V.Model) )
	--	         time,     bone,         name,       KEY,     DO NOT CHANGE THIS 
end
```

You would paste that code above into the lua file of whichever car you are going to add a movable part to: <br/>
*/lua/autorun/Working_Car_File.lua*

**After** your *list.Set* function where you setup your cars script folder and model folder you paste that code I have above.
**WARNING:** *DO NOT CHANGE THE LAST VARIABLE - string.lower(V.Model)*<br/><br/>
All you have todo is change our variables:
>*time* to a number in seconds of how fast your part is going to move.

>*bone* to the bone name you set in 3ds or whatever.

>*name* to the name of your car which you can C+P from the model file name. **MAKE SURE YOU CHANGE THIS FOR EACH NEW CAR FILE!**

>*KEY* to the keyboard key to be used as the part activation key. Ex. IN_SPEED. **A key List can be found: [HERE](https://wiki.garrysmod.com/page/Enums/IN)**

<br/><br/><br/>
###More Usage / Secondary Cell Phone Calls

If we wanted to have another part move when we press shift for whatever reason, we would call another <br/>*LWCPartHook(time, bone, name, keyp, model)*
<br/>And instead of using a local variable, we would set them in the function call as show below: 

```lua
if SERVER then include("lwcars_partmover.lua")
	
	LWCPartHook( 0.02, "pop_up", "honda_nsxr", IN_SPEED, string.lower(V.Model) )
	LWCPartHook( 0.001, "captain_poopy_pantz", "honda_nsxr", IN_ZOOM, string.lower(V.Model) )
	
end
```
