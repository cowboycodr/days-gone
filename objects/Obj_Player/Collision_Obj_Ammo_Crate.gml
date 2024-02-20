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
/// @DnDArgument : "value" "round(phase * 3)"
var ammo_amount = round(phase * 3);

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