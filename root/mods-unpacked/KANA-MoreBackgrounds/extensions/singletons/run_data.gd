extends "res://singletons/run_data.gd"


const KANA_MOREBACKGROUNDS_RUN_DATA_LOG_NAME := "KANA-MoreBackgrounds:RunData"

var is_custom_background_appended := false


func reset_background() -> void:
	KANA_add_custom_backgrounds()
	.reset_background()


func KANA_add_custom_backgrounds() -> void:
	if is_custom_background_appended:
		return

	var all_custom_backgrounds: Array = load("res://mods-unpacked/KANA-MoreBackgrounds/content/backgrounds/all_backgrounds.tres").backgrounds
	backgrounds.append_array(all_custom_backgrounds)
	ModLoaderLog.info("Added %s custom backgrounds." % all_custom_backgrounds.size(), KANA_MOREBACKGROUNDS_RUN_DATA_LOG_NAME)
	is_custom_background_appended = true
