extends KinematicBody2D

var speed = 700
var velocity = Vector2()

func get_input():
    velocity = Vector2();
		
		
    
    var screen_size = get_viewport().get_visible_rect().size;
    var x = global_position.x;
    var y = global_position.y;
    var padding = 35;
    
    if Input.is_action_pressed('ui_right'):
        if(x >= screen_size.x - padding): return;
        velocity.x += 1
    if Input.is_action_pressed('ui_left'):
        if(x <= padding):
            return;
        velocity.x -= 1
    if Input.is_action_pressed('ui_down'):
        if(y >= screen_size.y - padding):
            return;
        velocity.y += 1
    if Input.is_action_pressed('ui_up'):
        if(y <= padding):
            return;
        velocity.y -= 1
    velocity = velocity.normalized() * speed
    
		
		

func _physics_process(delta):
    var collisionInfo = move_and_collide(velocity.normalized() * speed * delta);
    if collisionInfo:
	    collisionInfo.collider.queue_free();
    #print(collisionInfo);
    get_input();
    move_and_collide(velocity * delta)
	
	
	