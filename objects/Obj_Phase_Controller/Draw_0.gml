/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 736916B5
/// @DnDInput : 5
/// @DnDArgument : "expr" "view_camera[0]"
/// @DnDArgument : "expr_1" "camera_get_view_x(cam)"
/// @DnDArgument : "expr_2" "camera_get_view_y(cam)"
/// @DnDArgument : "expr_3" "camera_get_view_width(cam)"
/// @DnDArgument : "expr_4" "camera_get_view_height(cam)"
/// @DnDArgument : "var" "cam"
/// @DnDArgument : "var_1" "cam_x"
/// @DnDArgument : "var_2" "cam_y"
/// @DnDArgument : "var_3" "cam_w"
/// @DnDArgument : "var_4" "cam_h"
cam = view_camera[0];
cam_x = camera_get_view_x(cam);
cam_y = camera_get_view_y(cam);
cam_w = camera_get_view_width(cam);
cam_h = camera_get_view_height(cam);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 50D47E9A
/// @DnDArgument : "font" "Fnt_Main"
/// @DnDSaveInfo : "font" "Fnt_Main"
draw_set_font(Fnt_Main);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1C5AD2FB
/// @DnDArgument : "color" "$FF00007F"
draw_set_colour($FF00007F & $ffffff);
var l1C5AD2FB_0=($FF00007F >> 24);
draw_set_alpha(l1C5AD2FB_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 119E0828
/// @DnDArgument : "halign" "fa_right"
draw_set_halign(fa_right);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1F9542A8
/// @DnDArgument : "x" "cam_x + (cam_w - 10)"
/// @DnDArgument : "y" "cam_y + 10"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "var" "phase"
draw_text(cam_x + (cam_w - 10), cam_y + 10, string("") + string(phase));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6D0198E3
/// @DnDArgument : "var" "prep_phase"
/// @DnDArgument : "value" "true"
if(prep_phase == true)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 3FFCD63E
	/// @DnDParent : 6D0198E3
	/// @DnDArgument : "halign" "fa_center"
	/// @DnDArgument : "valign" "fa_middle"
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 7C02501D
	/// @DnDParent : 6D0198E3
	/// @DnDArgument : "x" "cam_x + (cam_w / 2)"
	/// @DnDArgument : "y" "cam_y + (cam_h / 2)"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "phase"
	draw_text(cam_x + (cam_w / 2), cam_y + (cam_h / 2),  + string(phase));
}

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 07A5191D
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 5D9FED0E
draw_set_colour($FFFFFFFF & $ffffff);
var l5D9FED0E_0=($FFFFFFFF >> 24);
draw_set_alpha(l5D9FED0E_0 / $ff);