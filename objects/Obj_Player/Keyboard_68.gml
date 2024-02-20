/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 0C8922D3
image_speed = 1;

/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 02E012A4
/// @DnDArgument : "target" "sprite"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "instvar" "14"
var sprite = sprite_index;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 70708E6E
/// @DnDArgument : "var" "sprite"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "Walk_Right"
if(!(sprite == Walk_Right))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0B8F9F47
	/// @DnDParent : 70708E6E
	/// @DnDArgument : "spriteind" "Walk_Right"
	/// @DnDSaveInfo : "spriteind" "Walk_Right"
	sprite_index = Walk_Right;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 6AF347CB
/// @DnDArgument : "x" "player_speed"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "0"
/// @DnDArgument : "y_relative" "1"
x += player_speed;
y += 0;