extends Node3D

@onready var player = $Player
@onready var map = Config.map

func _ready() -> void:
	var path = "res://maps/" + map + "/" + map.capitalize() + ".glb"
	var packed_scene: PackedScene = load(path)
	var scene = packed_scene.instantiate()
	scene.name = "Map"
	add_child(scene)
	var start_position = scene.get_node("MAP_START").get_global_position()
	var end_position = scene.get_node("MAP_END").get_global_position()
	player.position = start_position
