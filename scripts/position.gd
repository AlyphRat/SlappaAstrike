extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"




# Called when the node enters the scene tree for the first time.
func _process(delta):
	get_node("../Camera2D").global_position = $".".global_position
	self.global_position = get_node("../RigidBody2D").global_position
	
	if Input.is_action_just_pressed("punchl"):
		$AnimationPlayer.play("punchl")
	if Input.is_action_just_pressed("punchr"):
		$AnimationPlayer.play("punchr")


