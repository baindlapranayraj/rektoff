// Stack (grows downward)
// +----------------------+
// |  Function: main      |
// +----------------------+
// |       buffer[0]      |  <-- buffer[0] is initialized to 0
// +----------------------+
// |       buffer[1]      |  <-- buffer[1] is initialized to 0
// +----------------------+
// |       buffer[2]      |  <-- buffer[2] is initialized to 0
// +----------------------+
// |       buffer[3]      |  <-- buffer[3] is initialized to 0
// +----------------------+
// |   not_in_buffer      |  <-- 6789, This variable is just after the buffer
// +----------------------+
// |  (unallocated)       |  <-- End of stack, start of heap
// +----------------------+
// |  (unallocated)       |
// +----------------------+
// |  (unallocated)       |
// +----------------------+
// (Heap continues...)

pub fn buffer_overflow() {
    let mut buffer = [0u8; 4]; // Stack-allocated buffer (4 bytes)
    let not_in_buffer = 6789; // Stack variable just after the buffer - 4 bytes

    unsafe {
        let ptr = buffer.as_mut_ptr(); // Raw mutable pointer to start of buffer

        // 🚨 Undefined Behavior (UB):
        for i in 0..7 {
            // Looping beyond the allocated buffer size
            println!(
                "Pointer value for {} iteration is {:?} at address {:?}",
                i,
                *ptr.add(i), // Dereferencing the pointer at the current index
                ptr.add(i)   // Pointer virtual address for the current index
            );
            *ptr.add(i) = i as u8; // Writing to the pointer, potentially causing UB
        }
    }

    println!("buffer: {:?}", buffer); // Expected: [0, 1, 2, 3] (but may vary due to UB)
    println!("not_in_buffer: {}", not_in_buffer); // Will this still be 6789?
                                                  // The pointer arithmetic allows access to memory beyond the buffer array,
                                                  // which can lead to overwriting the not_in_buffer variable.
                                                  // An attacker could exploit this to input malicious data and mutate sensitive data.
}

// - Pointer Arithmetic: When you use ptr.add(i), you're performing pointer arithmetic.
//    This means you're moving the pointer i bytes forward from the start of the buffer.

// - Out-of-Bounds Access: The loop iterates from 0 to 4, which means you're trying to access memory locations beyond the allocated buffer:
// 	- For i = 0, *ptr.add(0) accesses buffer[0], which is 0.
// 	- For i = 1, *ptr.add(1) accesses buffer[1], which is 0.
// 	- For i = 2, *ptr.add(2) accesses buffer[2], which is 0.
// 	- For i = 3, *ptr.add(3) accesses buffer[3], which is 0.
// 	- For i = 4, *ptr.add(4) accesses memory just after the buffer, which is technically out of bounds.
//     This is where undefined behavior starts.
