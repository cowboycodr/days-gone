/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 11CDBF28
/// @DnDArgument : "var" "ammo"
/// @DnDArgument : "op" "2"
if(ammo > 0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 63220BBE
	/// @DnDParent : 11CDBF28
	/// @DnDArgument : "speed" "0"
	image_speed = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 196445A4
	/// @DnDParent : 11CDBF28
	/// @DnDArgument : "var" "mouse_x - x"
	/// @DnDArgument : "op" "4"
	if(mouse_x - x >= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 33F55413
		/// @DnDParent : 196445A4
		/// @DnDArgument : "spriteind" "Shoot_Right"
		/// @DnDSaveInfo : "spriteind" "Shoot_Right"
		sprite_index = Shoot_Right;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 68A467D0
		/// @DnDParent : 196445A4
		/// @DnDArgument : "xpos" "3"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "2"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "Obj_Bullet"
		/// @DnDSaveInfo : "objectid" "Obj_Bullet"
		instance_create_layer(x + 3, y + 2, "Instances", Obj_Bullet);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 655B8218
	/// @DnDParent : 11CDBF28
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 087D8127
		/// @DnDParent : 655B8218
		/// @DnDArgument : "spriteind" "Shoot_Left"
		/// @DnDSaveInfo : "spriteind" "Shoot_Left"
		sprite_index = Shoot_Left;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 439E3EF8
		/// @DnDParent : 655B8218
		/// @DnDArgument : "xpos" "-3"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "2"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "Obj_Bullet"
		/// @DnDSaveInfo : "objectid" "Obj_Bullet"
		instance_create_layer(x + -3, y + 2, "Instances", Obj_Bullet);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2113F35D
	/// @DnDParent : 11CDBF28
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "ammo"
	ammo += -1;
}