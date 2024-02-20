/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 7884DB90
/// @DnDArgument : "var" "phase"
/// @DnDArgument : "value" "Obj_Phase_Controller.phase"
var phase = Obj_Phase_Controller.phase;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 365429E6
/// @DnDArgument : "var" "ammo_amount"
/// @DnDArgument : "value" "round(phase * 1.5)"
var ammo_amount = round(phase * 1.5);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 53FD3991
/// @DnDArgument : "var" "ammo_amount"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "3"
if(ammo_amount < 3)
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 72713C81
	/// @DnDParent : 53FD3991
	/// @DnDArgument : "var" "ammo_amount"
	/// @DnDArgument : "value" "3"
	var ammo_amount = 3;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 73EFBA61
/// @DnDArgument : "expr" "ammo_amount"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "ammo"
ammo += ammo_amount;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0C5ADB8F
/// @DnDApplyTo : other
with(other) instance_destroy();