/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 26908A20
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "ready"
ready = false;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 38BFB533
alarm_set(0, 30);

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 24F05562
/// @DnDArgument : "soundid" "Theme"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "Theme"
var l24F05562_0 = Theme;
if (!audio_is_playing(l24F05562_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 6063CC6D
	/// @DnDParent : 24F05562
	/// @DnDArgument : "soundid" "Theme"
	/// @DnDSaveInfo : "soundid" "Theme"
	audio_play_sound(Theme, 0, 0, 1.0, undefined, 1.0);
}