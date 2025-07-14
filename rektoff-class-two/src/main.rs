use dangling::dangling_attack;
#[allow(unused)]
use practical::overflow_attack;

#[allow(unused)]
use crate::{ buffer_overflow::buffer_overflow, data_race::data_race };
pub mod buffer_overflow;
pub mod dangling;
pub mod data_race;
pub mod practical;

fn main() {
    #[allow(unused)]
    unsafe {
        dangling_attack();

        buffer_overflow();

        // Practical example for buffer overflow
        overflow_attack::attack();

        data_race();
    }
}

// Learnings
//  Heap: `Box<T>`, `Vec<T>`, `String`, and `HashMap<K, V>`
// - In Rust, a raw pointer like *mut T or *const T can point to any memory address, including null (no address).
// - Raw pointers don’t track ownership or lifetimes hence we might get into dangling errors.
// - Rust’s ownership system ensures that every piece of memory has one clear owner, and memory is freed exactly once(No Double free).
//
// - otool is usefull for debugging the rust code.
//   -- `otool -L target/release/rektoff-class-two` is usefull for viewing  dependencies
//  -- Viewing Load Commands (How the binary is structured): `otool -l target/release/rektoff-class-two | head -50`
//
//   -- Viewing Assembly Code (What your Rust code looks like as machine code): `otool -tv target/release/rektoff-class-two | head -30`
