use std::ptr::NonNull;

use crate::{buffer_overflow::buffer_overflow, dangling::dangling_attack};

pub mod buffer_overflow;
pub mod dangling;

fn main() {
    let data = Box::new(42);
    let raw_ptr = NonNull::new(Box::into_raw(data)).unwrap();

    println!(
        "Printing the raw pointer value before dropping {:?}",
        raw_ptr
    );

    unsafe {
        drop(Box::from_raw(raw_ptr.as_ptr())); // Frees memory
        // dangling_attack();
        // println!(
        //     "The grabage value of the deallocated memory {:?}",
        //     *raw_ptr.as_ptr()
        // );


        buffer_overflow();
    }
}

// Learnings
//  Heap: `Box<T>`, `Vec<T>`, `String`, and `HashMap<K, V>`
// - In Rust, a raw pointer like *mut T or *const T can point to any memory address, including null (no address).
// - Raw pointers don’t track ownership or lifetimes hence we might get into dangling errors.
// - Rust’s ownership system ensures that every piece of memory has one clear owner, and memory is freed exactly once(No Double free).
