fn main() {
    // Lets do some investigation :)
    let some = String::from("chinna");
    println!("Say my name:");
    println!("{}", some);

    time_pass(&some);
}

fn time_pass(pass: &String) {
    println!("Time passing with this guy: {}", pass);
}
