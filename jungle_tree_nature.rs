fn main() {
    println!("Let's Ride On!");
    let mut speed = 0;

    // Accelerate
    for _ in 0..1000 {
        speed += 1;
    }

    // Maintain speed
    while speed > 0 {
        speed -= 1;
    }

    println!("Current speed is: {}", speed);

    // Decelerate
    for _ in 0..1000 {
        speed -= 1;
    }

    println!("Final speed is: {}", speed);

    // Cruise Control
    let cruise_speed = 20;

    while speed > cruise_speed {
        speed -= 1;
    }

    println!("Cruising speed is: {}", speed);

    // Speed up and slow down
    let mut target_speed = 30;

    for _ in 0..1000 {
        if speed > target_speed {
            speed -= 1;
        }
        else if speed < target_speed {
            speed += 1;
        }
    }

    println!("Target speed is: {}", speed);

    // Wait for traffic
    let wait_duration = 5;
    let mut elapsed_time = 0;

    while elapsed_time < wait_duration {
        elapsed_time += 1;
    }

    println!("Waited {} seconds", elapsed_time);

    // Turn left
    let mut desired_direction = -1;

    for _ in 0..1000 {
        if desired_direction > 0 {
            desired_direction -= 1;
        }
    }

    println!("Desired turn direction is: {}", desired_direction);

    // Follow the road
    let mut road_sign = 0;

    for _ in 0..1000 {
        road_sign += 1;
    }

    println!("Turn after reading road sign: {}", road_sign);

    // Slow down at intersections
    target_speed = 10;

    for _ in 0..1000 {
        if speed > target_speed {
            speed -= 1;
        }
        else if speed < target_speed {
            speed += 1;
        }
    }

    println!("Approaching intersection at speed: {}", speed);

    // Accelerate after the intersection
    for _ in 0..1000 {
        speed += 1;
    }

    println!("Leaving intersection at speed: {}", speed);

    // Shift gears
    let mut gear = 1;

    for _ in 0..1000 {
        if gear > 0 {
            gear -= 1;
        }
    }

    println!("Shifting into gear: {}", gear);

    // Increase speed
    let mut desired_speed = 50;

    for _ in 0..1000 {
        if speed < desired_speed {
            speed += 1;
        }
    }

    println!("Desired speed is: {}", speed);

    // Maintain speed
    while speed > 0 {
        speed -= 1;
    }

    println!("Maintaining speed: {}", speed);

    // Change lane
    let mut lane = 0;

    for _ in 0..1000 {
        lane += 1;
    }

    println!("Changing to lane: {}", lane);

    // Avoid obstacles
    let mut obstacle = false;

    for _ in 0..1000 {
        if obstacle {
            print!("Avoiding obstacle. ");
            obstacle = false;
        }
    }

    println!("Obstacle avoided.");

    // Reduce speed in bad weather
    let mut weather = false;

    for _ in 0..1000 {
        if weather {
            speed -= 1;
        }
    }

    println!("Reduced speed due to weather: {}", speed);

    // Perform a U-turn
    let mut desired_turn = 0;

    for _ in 0..1000 {
        desired_turn += 1;
    }

    println!("Initiating U-turn to: {}", desired_turn);

    // Increase speed
    desired_speed = 70;

    for _ in 0..1000 {
        if speed < desired_speed {
            speed += 1;
        }
    }

    println!("Accelerating to desired speed: {}", speed);

    // Maintain speed
    while speed > 0 {
        speed -= 1;
    }

    println!("Maintaining speed at: {}", speed);

    // Stop
    let mut stop_duration = 0;

    for _ in 0..1000 {
        stop_duration += 1;
    }

    println!("Stopping for {} seconds", stop_duration);

    // Turn right
    desired_direction = 1;

    for _ in 0..1000 {
        if desired_direction > 0 {
            desired_direction -= 1;
        }
    }

    println!("Turned right to: {}", desired_direction);

    // Follow the road
    road_sign = 0;

    for _ in 0..1000 {
        road_sign += 1;
    }

    println!("Taking turn after reading road sign: {}", road_sign);

    // Accelerate
    for _ in 0..1000 {
        speed += 1;
    }

    println!("Accelerating to speed: {}", speed);

    // Maintain speed
    while speed > 0 {
        speed -= 1;
    }

    println!("Maintaining speed at: {}", speed);

    // Done!
    println!("Done Riding On!");
}