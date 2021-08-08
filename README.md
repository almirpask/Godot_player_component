# Godot player component
This repo contains a player template to be reused as a component on any project that needs to use a top down player.

## How to use
* Download the repo.
* Copy the repo content.
* Paste in your project.
* Drag the Player.tscn file on your canvas.


## Configuration
 In the `Player.gd` file contains some constants that can change the component behavior:
 
 * MAX_SPEED: this value will determinete the max speed of your player by default it is set as 80.
 * ACCELERATION: this value will determinete the acceleration of your player to reach the MAX_SPEED by default it is set as 500.
 * FRICTION: this value will determinate the friction used when your player stop moving, hight values will make the player stop fast. By default its set as 500.
 
## Implemented states
  There is a `enum` with the possible states that can be used on this State Machine, when add a new state remember of add its logic in the `_physics_process` function on its `match` statement, by default this componennt comes with the `MOVE` state implemented.

## used Inputs
 The move state use the following inputs to work `ui_right`, `ui_left`, `ui_down`, `ui_down`.
