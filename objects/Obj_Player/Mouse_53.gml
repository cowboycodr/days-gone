/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 27ECAE75
/// @DnDArgument : "var" "ammo"
/// @DnDArgument : "op" "2"
if(ammo > 0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 64B02686
	/// @DnDParent : 27ECAE75
	/// @DnDArgument : "speed" "0"
	image_speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53694B34
	/// @DnDParent : 27ECAE75
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "ammo"
	ammo += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 196445A4
	/// @DnDParent : 27ECAE75
	/// @DnDArgument : "var" "mouse_x - x"
	/// @DnDArgument : "op" "4"
	if(mouse_x - x >= 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3E554E45
		/// @DnDParent : 196445A4
		/// @DnDArgument : "var" "y - mouse_y"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "15"
		if(y - mouse_y > 15)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 45267865
			/// @DnDParent : 3E554E45
			/// @DnDArgument : "spriteind" "Shoot_Back"
			/// @DnDSaveInfo : "spriteind" "Shoot_Back"
			sprite_index = Shoot_Back;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 68A467D0
			/// @DnDParent : 3E554E45
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "-2"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "Obj_Bullet"
			/// @DnDSaveInfo : "objectid" "Obj_Bullet"
			instance_create_layer(x + 0, y + -2, "Instances", Obj_Bullet);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 4AB45990
		/// @DnDParent : 196445A4
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4C69A772
			/// @DnDParent : 4AB45990
			/// @DnDArgument : "var" "y - mouse_y"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "15"
			if(y - mouse_y < 15)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 7E6E2154
				/// @DnDParent : 4C69A772
				/// @DnDArgument : "spriteind" "Shoot_Front"
				/// @DnDSaveInfo : "spriteind" "Shoot_Front"
				sprite_index = Shoot_Front;
				image_index = 0;
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 64463995
				/// @DnDParent : 4C69A772
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "2"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "Obj_Bullet"
				/// @DnDSaveInfo : "objectid" "Obj_Bullet"
				instance_create_layer(x + 0, y + 2, "Instances", Obj_Bullet);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 346D4299
			/// @DnDParent : 4AB45990
			else
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 33F55413
				/// @DnDParent : 346D4299
				/// @DnDArgument : "spriteind" "Shoot_Right"
				/// @DnDSaveInfo : "spriteind" "Shoot_Right"
				sprite_index = Shoot_Right;
				image_index = 0;
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 1F0B7307
				/// @DnDParent : 346D4299
				/// @DnDArgument : "xpos" "3"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "2"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "Obj_Bullet"
				/// @DnDSaveInfo : "objectid" "Obj_Bullet"
				instance_create_layer(x + 3, y + 2, "Instances", Obj_Bullet);
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 294E74B0
	/// @DnDParent : 27ECAE75
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 48BA477D
		/// @DnDParent : 294E74B0
		/// @DnDArgument : "var" "mouse_x - x"
		/// @DnDArgument : "op" "1"
		if(mouse_x - x < 0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3D9C0159
			/// @DnDParent : 48BA477D
			/// @DnDArgument : "var" "y - mouse_y"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "15"
			if(y - mouse_y > 15)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 7167DCA2
				/// @DnDParent : 3D9C0159
				/// @DnDArgument : "spriteind" "Shoot_Back"
				/// @DnDSaveInfo : "spriteind" "Shoot_Back"
				sprite_index = Shoot_Back;
				image_index = 0;
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 470D56CD
				/// @DnDParent : 3D9C0159
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "-2"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "Obj_Bullet"
				/// @DnDSaveInfo : "objectid" "Obj_Bullet"
				instance_create_layer(x + 0, y + -2, "Instances", Obj_Bullet);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 6DD90176
			/// @DnDParent : 48BA477D
			else
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 57A27AEA
				/// @DnDParent : 6DD90176
				/// @DnDArgument : "var" "y - mouse_y"
				/// @DnDArgument : "op" "1"
				/// @DnDArgument : "value" "15"
				if(y - mouse_y < 15)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 17E3B6BC
					/// @DnDParent : 57A27AEA
					/// @DnDArgument : "spriteind" "Shoot_Front"
					/// @DnDSaveInfo : "spriteind" "Shoot_Front"
					sprite_index = Shoot_Front;
					image_index = 0;
				
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 50CF2352
					/// @DnDParent : 57A27AEA
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos" "2"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "Obj_Bullet"
					/// @DnDSaveInfo : "objectid" "Obj_Bullet"
					instance_create_layer(x + 0, y + 2, "Instances", Obj_Bullet);
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 05AB7515
				/// @DnDParent : 6DD90176
				else
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 53FE80C3
					/// @DnDParent : 05AB7515
					/// @DnDArgument : "spriteind" "Shoot_Left"
					/// @DnDSaveInfo : "spriteind" "Shoot_Left"
					sprite_index = Shoot_Left;
					image_index = 0;
				
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 764BC9A7
					/// @DnDParent : 05AB7515
					/// @DnDArgument : "xpos" "-3"
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos" "2"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "Obj_Bullet"
					/// @DnDSaveInfo : "objectid" "Obj_Bullet"
					instance_create_layer(x + -3, y + 2, "Instances", Obj_Bullet);
				}
			}
		}
	}
}