extends KinematicBody2D

var speed = 700
var velocity = Vector2()

func get_input():
    # Detect up/down/left/right keystate and only move when pressed.
    velocity = Vector2()
    var x = position.x
    var y = position.y
    print("position" + str(position));
    
 
    
    if Input.is_action_pressed('ui_right'):
        if(x >= 200): return;
        velocity.x += 1
    if Input.is_action_pressed('ui_left'):
        if(x <= -200):
            return;
        velocity.x -= 1
    if Input.is_action_pressed('ui_down'):
        if(y >= 200):
            return;
        velocity.y += 1
    if Input.is_action_pressed('ui_up'):
        if(y <= -200):
            return;
        velocity.y -= 1
    velocity = velocity.normalized() * speed

func _physics_process(delta):
    get_input()
    move_and_collide(velocity * delta)