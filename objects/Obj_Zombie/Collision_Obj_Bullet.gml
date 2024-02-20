/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2FD2E1CC
/// @DnDArgument : "var" "dead"
/// @DnDArgument : "value" "false"
if(dead == false)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4FE95DAE
	/// @DnDApplyTo : other
	/// @DnDParent : 2FD2E1CC
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1F4BA372
	/// @DnDParent : 2FD2E1CC
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "zombie_health"
	zombie_health += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4063FA61
	/// @DnDParent : 2FD2E1CC
	/// @DnDArgument : "var" "zombie_health"
	/// @DnDArgument : "op" "3"
	if(zombie_health <= 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5920DC62
		/// @DnDParent : 4063FA61
		/// @DnDArgument : "var" "dead"
		/// @DnDArgument : "value" "false"
		if(dead == false)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 35FA4F22
			/// @DnDParent : 5920DC62
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "dead"
			dead = true;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 28E80AB1
			/// @DnDParent : 5920DC62
			/// @DnDArgument : "spriteind" "Z_Left_Death"
			/// @DnDSaveInfo : "spriteind" "Z_Left_Death"
			sprite_index = Z_Left_Death;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Random.Randomize
			/// @DnDVersion : 1
			/// @DnDHash : 4821114B
			/// @DnDParent : 5920DC62
			randomize();
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 0937EB2C
			/// @DnDParent : 5920DC62
			/// @DnDArgument : "var" "chance"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "ceil(Obj_Phase_Controller.phase / 3)"
			var chance = floor(random_range(0, ceil(Obj_Phase_Controller.phase / 3) + 1));
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 605F53E2
			/// @DnDParent : 5920DC62
			/// @DnDArgument : "var" "chance"
			if(chance == 0)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 64E9C796
				/// @DnDParent : 605F53E2
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "Obj_Ammo_Crate"
				/// @DnDSaveInfo : "objectid" "Obj_Ammo_Crate"
				instance_create_layer(x + 0, y + 0, "Instances", Obj_Ammo_Crate);
			}
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 23F6891E
			/// @DnDParent : 5920DC62
			/// @DnDArgument : "steps" "100"
			alarm_set(0, 100);
		}
	}
}