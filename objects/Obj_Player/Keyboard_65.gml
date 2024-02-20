/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 446D1FB7
image_speed = 1;

/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 6441E061
/// @DnDArgument : "target" "sprite"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "instvar" "14"
var sprite = sprite_index;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 67EBAC7A
/// @DnDArgument : "var" "sprite"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "Walk_Left"
if(!(sprite == Walk_Left))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5662FFA1
	/// @DnDParent : 67EBAC7A
	/// @DnDArgument : "var" "walking_vertical"
	/// @DnDArgument : "value" "false"
	if(walking_vertical == false)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 67C8938F
		/// @DnDParent : 5662FFA1
		/// @DnDArgument : "spriteind" "Walk_Left"
		/// @DnDSaveInfo : "spriteind" "Walk_Left"
		sprite_index = Walk_Left;
		image_index = 0;
	}
}

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 1198E145
/// @DnDArgument : "x" "-player_speed"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "0"
/// @DnDArgument : "y_relative" "1"
x += -player_speed;
y += 0;