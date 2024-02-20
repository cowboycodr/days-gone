/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 0FAEB816
/// @DnDArgument : "soundid" "Walking"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "Walking"
var l0FAEB816_0 = Walking;
if (!audio_is_playing(l0FAEB816_0))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 06828137
	/// @DnDParent : 0FAEB816
	/// @DnDArgument : "var" "walking_horizontal"
	/// @DnDArgument : "value" "true"
	if(walking_horizontal == true)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 5DFB00A9
		/// @DnDParent : 06828137
		/// @DnDArgument : "soundid" "Walking"
		/// @DnDSaveInfo : "soundid" "Walking"
		audio_play_sound(Walking, 0, 0, 1.0, undefined, 1.0);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5A137CC3
	/// @DnDParent : 0FAEB816
	/// @DnDArgument : "var" "walking_vertical"
	/// @DnDArgument : "value" "true"
	if(walking_vertical == true)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 14656E62
		/// @DnDParent : 5A137CC3
		/// @DnDArgument : "soundid" "Walking"
		/// @DnDSaveInfo : "soundid" "Walking"
		audio_play_sound(Walking, 0, 0, 1.0, undefined, 1.0);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 51DF7B3D
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1757D2A1
	/// @DnDParent : 51DF7B3D
	/// @DnDArgument : "var" "walking_vertical"
	/// @DnDArgument : "value" "false"
	if(walking_vertical == false)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7A766020
		/// @DnDParent : 1757D2A1
		/// @DnDArgument : "var" "walking_horizontal"
		/// @DnDArgument : "value" "false"
		if(walking_horizontal == false)
		{
			/// @DnDAction : YoYo Games.Audio.Stop_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 2492C751
			/// @DnDParent : 7A766020
			/// @DnDArgument : "soundid" "Walking"
			/// @DnDSaveInfo : "soundid" "Walking"
			audio_stop_sound(Walking);
		}
	}
}