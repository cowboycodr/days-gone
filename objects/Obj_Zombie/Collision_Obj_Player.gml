/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 01A41F5C
/// @DnDArgument : "var" "player"
/// @DnDArgument : "value" "Obj_Player"
var player = Obj_Player;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 16EFC258
/// @DnDArgument : "var" "dead"
/// @DnDArgument : "value" "false"
if(dead == false)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 0F2D34F4
	/// @DnDParent : 16EFC258
	/// @DnDArgument : "x" "xprevious"
	/// @DnDArgument : "y" "yprevious"
	x = xprevious;
	y = yprevious;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 004449A7
	/// @DnDParent : 16EFC258
	/// @DnDArgument : "var" "zombie_cooldown"
	/// @DnDArgument : "value" "false"
	if(zombie_cooldown == false)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5FC6F466
		/// @DnDApplyTo : other
		/// @DnDParent : 004449A7
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "player_health"
		with(other) {
		player_health += -1;
		
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 65EC726B
		/// @DnDParent : 004449A7
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "zombie_cooldown"
		zombie_cooldown = true;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 3551FA83
		/// @DnDParent : 004449A7
		/// @DnDArgument : "steps" "100"
		/// @DnDArgument : "alarm" "1"
		alarm_set(1, 100);
	}
}