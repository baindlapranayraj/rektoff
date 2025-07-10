use dangling::dangling_attack;
use practical::overflow_attack;

use crate::buffer_overflow::buffer_overflow;
pub mod buffer_overflow;
pub mod dangling;
pub mod practical;

fn main() {
    unsafe {
        dangling_attack();

        buffer_overflow();

        // Practical example for buffer overflow
        overflow_attack::attack();
    }
}

// Learnings
//  Heap: `Box<T>`, `Vec<T>`, `String`, and `HashMap<K, V>`
// - In Rust, a raw pointer like *mut T or *const T can point to any memory address, including null (no address).
// - Raw pointers don’t track ownership or lifetimes hence we might get into dangling errors.
// - Rust’s ownership system ensures that every piece of memory has one clear owner, and memory is freed exactly once(No Double free).
