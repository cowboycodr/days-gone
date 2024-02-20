/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 35241E46
/// @DnDArgument : "soundid" "Shot"
/// @DnDSaveInfo : "soundid" "Shot"
audio_play_sound(Shot, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 22569BCD
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 2A73B038
/// @DnDArgument : "speed" "12"
speed = 12;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 53F67A63
/// @DnDArgument : "value" "direction - 90"
/// @DnDArgument : "instvar" "12"
image_angle = direction - 90;