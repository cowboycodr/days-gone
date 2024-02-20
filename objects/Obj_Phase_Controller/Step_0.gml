/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 30B3865B
/// @DnDArgument : "obj" "Obj_Zombie"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "Obj_Zombie"
var l30B3865B_0 = false;
l30B3865B_0 = instance_exists(Obj_Zombie);
if(!l30B3865B_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0AAD7691
	/// @DnDParent : 30B3865B
	/// @DnDArgument : "var" "new_phase_registered"
	/// @DnDArgument : "value" "false"
	if(new_phase_registered == false)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 400C9815
		/// @DnDParent : 0AAD7691
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "new_phase_registered"
		new_phase_registered = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 73DE5C20
		/// @DnDParent : 0AAD7691
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "phase"
		phase += 1;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 322FF1A8
		/// @DnDParent : 0AAD7691
		/// @DnDArgument : "steps" "1"
		/// @DnDArgument : "alarm" "1"
		alarm_set(1, 1);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 6AE6BECA
		/// @DnDParent : 0AAD7691
		/// @DnDArgument : "steps" "300"
		alarm_set(0, 300);
	}
}