/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 04FEAA86
image_speed = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2C4E90A4
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "walking_vertical"
walking_vertical = true;

/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 776D1C6E
/// @DnDArgument : "target" "sprite"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "instvar" "14"
var sprite = sprite_index;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6F1505D2
/// @DnDArgument : "var" "sprite"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "Walk_Front"
if(!(sprite == Walk_Front))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6D65EAAC
	/// @DnDParent : 6F1505D2
	/// @DnDArgument : "spriteind" "Walk_Front"
	/// @DnDSaveInfo : "spriteind" "Walk_Front"
	sprite_index = Walk_Front;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 69A2B2FF
/// @DnDArgument : "x" "0"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "player_speed"
/// @DnDArgument : "y_relative" "1"
x += 0;
y += player_speed;