extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
    self.connect("body_enter",self,"_on_Area2D_body_enter")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
    pass
    
    
func _on_Area2D_body_enter(body):
    print(str('Body entered: ', body.get_name()))


func _on_Ball_body_entered(body):
	print("Goal!!");
