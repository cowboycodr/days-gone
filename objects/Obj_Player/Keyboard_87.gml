/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 62996F64
image_speed = 1;

/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 429C229A
/// @DnDArgument : "target" "sprite"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "instvar" "14"
var sprite = sprite_index;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 68A3ED8E
/// @DnDArgument : "var" "sprite"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "Walk_Back"
if(!(sprite == Walk_Back))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5D68386E
	/// @DnDParent : 68A3ED8E
	/// @DnDArgument : "spriteind" "Walk_Back"
	/// @DnDSaveInfo : "spriteind" "Walk_Back"
	sprite_index = Walk_Back;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 69A2B2FF
/// @DnDArgument : "x" "0"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-player_speed"
/// @DnDArgument : "y_relative" "1"
x += 0;
y += -player_speed;