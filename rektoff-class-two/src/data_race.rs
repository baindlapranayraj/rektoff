use std::thread;
use std::time::Duration;

static mut COUNTER: usize = 0; // Shared mutable state

pub fn data_race() {
    let mut handles = vec![];

    // Spawn 10 threads.
    for _ in 0..10 {
        let handle = thread::spawn(|| {
            // Each thread will increment the counter 100,000 times.
            for _ in 0..100_000 {
                unsafe {
                    // 🚨 DATA RACE HAPPENS HERE 🚨
                    COUNTER += 1;
                }
                thread::sleep(Duration::from_millis(1000));
            }
        });
        handles.push(handle);
    }

    // Wait for all threads to finish.
    for handle in handles {
        handle.join().unwrap();
    }

    // If everything worked perfectly, the final count should be 1,000,000.
    // But it won't be.
    unsafe {
        //println!("Final COUNTER value: {}", COUNTER);
    }
}
