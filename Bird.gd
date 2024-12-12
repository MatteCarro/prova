extends CharacterBody2D

# Forza del salto
const JUMP_FORCE = -400
# Gravità
const GRAVITY = 900

func _physics_process(delta):
    # Applica la gravità
    velocity.y += GRAVITY * delta
    
    # Controlla se il tasto "fly" è stato premuto
    if Input.is_action_just_pressed("fly"):
        velocity.y = JUMP_FORCE
    
    # Muove il personaggio
    move_and_slide()
