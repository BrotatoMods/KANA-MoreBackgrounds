extends "res://singletons/run_data.gd"


const KANA_MOREBACKGROUNDS_RUN_DATA_LOG_NAME := "KANA-MoreBackgrounds:RunData"

func _ready() -> void:
	var all_custom_backgrounds: Array = load("res://mods-unpacked/KANA-MoreBackgrounds/content/backgrounds/all_backgrounds.tres").backgrounds
	backgrounds.append_array(all_custom_backgrounds)
	ModLoaderLog.info("Added %s custom backgrounds." % all_custom_backgrounds.size(), KANA_MOREBACKGROUNDS_RUN_DATA_LOG_NAME)
