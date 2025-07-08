use std::ptr;

// Heap : Box, Vec and Hashmap
pub unsafe fn dangling_attack() {
    let x = Box::new(5); // Heap allocation
    let raw = Box::into_raw(x);

    let raw_x = ptr::NonNull::new(raw).unwrap(); // Raw pointer to heap value

    unsafe {
        drop(Box::from_raw(raw_x.as_ptr())); // Frees memory
                                             // 🚨 UB: dereferencing freed memory
        println!("Value after free: {:?}", *raw_x.as_ptr());

        *raw_x.as_ptr() = 10;
        println!("Value after free: {:?}", *raw_x.as_ptr());
    }
}
