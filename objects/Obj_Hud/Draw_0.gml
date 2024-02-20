/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 43A40757
/// @DnDArgument : "font" "Fnt_Main"
/// @DnDSaveInfo : "font" "Fnt_Main"
draw_set_font(Fnt_Main);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 425D34A7
/// @DnDInput : 3
/// @DnDArgument : "expr" "view_camera[0]"
/// @DnDArgument : "expr_1" "camera_get_view_x(cam)"
/// @DnDArgument : "expr_2" "camera_get_view_y(cam)"
/// @DnDArgument : "var" "cam"
/// @DnDArgument : "var_1" "cam_x"
/// @DnDArgument : "var_2" "cam_y"
cam = view_camera[0];
cam_x = camera_get_view_x(cam);
cam_y = camera_get_view_y(cam);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1FF46F50
/// @DnDArgument : "x" "cam_x + 10"
/// @DnDArgument : "y" "cam_y + 10"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "Obj_Player.ammo"
draw_text(cam_x + 10, cam_y + 10,  + string(Obj_Player.ammo));

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 47D8B56C
/// @DnDArgument : "var" "bullet_count"
/// @DnDArgument : "value" "Obj_Player.ammo"
var bullet_count = Obj_Player.ammo;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 17EF11B9
/// @DnDArgument : "var" "bullet_count"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "4"
if(bullet_count > 4)
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 21A335BA
	/// @DnDParent : 17EF11B9
	/// @DnDArgument : "var" "bullet_count"
	/// @DnDArgument : "value" "5"
	var bullet_count = 5;
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 12702A49
/// @DnDArgument : "var" "shell_offset"
/// @DnDArgument : "value" "34"
var shell_offset = 34;

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 4AC6FBB7
/// @DnDArgument : "times" "bullet_count"
repeat(bullet_count)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 48B7A58E
	/// @DnDParent : 4AC6FBB7
	/// @DnDArgument : "x" "cam_x + shell_offset"
	/// @DnDArgument : "y" "cam_y + 10"
	/// @DnDArgument : "sprite" "spentshell"
	/// @DnDSaveInfo : "sprite" "spentshell"
	draw_sprite(spentshell, 0, cam_x + shell_offset, cam_y + 10);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 00793839
	/// @DnDParent : 4AC6FBB7
	/// @DnDArgument : "expr" "12"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "shell_offset"
	shell_offset += 12;
}