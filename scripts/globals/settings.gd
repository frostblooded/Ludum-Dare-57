extends Node

var gravity: float = 0

func _ready() -> void:
    var config = ConfigFile.new()

    # Load data from a file.
    var err = config.load("res://game_config.cfg")

    # If the file didn't load, ignore it.
    if err != OK:
        printerr("Failed to load game_config.cfg")
        return
    
    const GENERAL_SECTION: String = "general"
    gravity = config.get_value(GENERAL_SECTION, "gravity")
