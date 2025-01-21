package main

import "core:fmt"
import rl "vendor:raylib"

Tank :: struct {
    position: rl.Vector2,
    health: int,
}

screenWidth :: 800
screenHeight:: 600

initTank :: proc() -> Tank {
    return Tank{
        position = rl.Vector2{screenWidth / 2, screenHeight / 2},
        health = 100,
    }
}

updateTank :: proc(tank: ^Tank) {
    // Keyboard wasd controls
    if rl.IsKeyDown(rl.KeyboardKey.W) {
        tank.position.y -= 2
    }
    if rl.IsKeyDown(rl.KeyboardKey.S) {
        tank.position.y += 2
    }
    if rl.IsKeyDown(rl.KeyboardKey.A) {
        tank.position.x -= 2
    }
    if rl.IsKeyDown(rl.KeyboardKey.D) {
        tank.position.x += 2
    }
    
    // Arrow keys controls
    if rl.IsKeyDown(rl.KeyboardKey.UP) {
        tank.position.y -= 2
    }
    if rl.IsKeyDown(rl.KeyboardKey.DOWN) {
        tank.position.y += 2
    }
    if rl.IsKeyDown(rl.KeyboardKey.LEFT) {
        tank.position.x -= 2
    }
    if rl.IsKeyDown(rl.KeyboardKey.RIGHT) {
        tank.position.x += 2
    }

    // Xbox controller controls
    if rl.IsGamepadAvailable(0) {
        tank.position.x += rl.GetGamepadAxisMovement(0, rl.GamepadAxis.LEFT_X) * 2
        tank.position.y += rl.GetGamepadAxisMovement(0, rl.GamepadAxis.LEFT_Y) * 2
    }
    //fmt.println("Tank position: ", tank.position)
}

drawTank :: proc(tank: Tank) {
    rl.DrawRectangleV(tank.position, rl.Vector2{50, 50}, rl.GREEN)
}

main :: proc() {
    rl.InitWindow(screenWidth, screenHeight, "Tank Battle")
    rl.SetTargetFPS(60)

    for i in -10..=10  {
        fmt.printfln("Gamepad %d available: %t", i, rl.IsGamepadAvailable(i32(i))) 
    }

    tank := initTank()

    for !rl.WindowShouldClose() {
        updateTank(&tank)

        rl.BeginDrawing()
        rl.ClearBackground(rl.BLACK)
        drawTank(tank)
        rl.EndDrawing()
    }

    rl.CloseWindow()
}
