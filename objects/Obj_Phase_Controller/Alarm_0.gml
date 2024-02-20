/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 4DF695F2
/// @DnDArgument : "times" "phase * 2"
repeat(phase * 2)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 4BA34334
	/// @DnDParent : 4DF695F2
	/// @DnDArgument : "var" "zx"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "25"
	/// @DnDArgument : "max" "room_width - 25"
	zx = floor(random_range(25, room_width - 25 + 1));

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 4B8936AD
	/// @DnDParent : 4DF695F2
	/// @DnDArgument : "var" "zy"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "25"
	/// @DnDArgument : "max" "room_height - 25"
	zy = floor(random_range(25, room_height - 25 + 1));

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 64A48705
	/// @DnDParent : 4DF695F2
	/// @DnDArgument : "msg" "zx"
	show_debug_message(string(zx));

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 1C3656CC
	/// @DnDParent : 4DF695F2
	/// @DnDArgument : "msg" "zy"
	show_debug_message(string(zy));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 41368552
	/// @DnDParent : 4DF695F2
	/// @DnDArgument : "xpos" "zx"
	/// @DnDArgument : "ypos" "zy"
	/// @DnDArgument : "objectid" "Obj_Zombie"
	/// @DnDSaveInfo : "objectid" "Obj_Zombie"
	instance_create_layer(zx, zy, "Instances", Obj_Zombie);
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2EA48DC3
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "new_phase_registered"
new_phase_registered = false;