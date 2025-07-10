// Stack (grows downward)
// +----------------------+
// |  Function: main      |
// +----------------------+
// |       buffer[0]      |  <-- buffer[0] is initialized to 0
// |        (0)           |
// +----------------------+
// |       buffer[1]      |  <-- buffer[1] is initialized to 0
// |        (0)           |
// +----------------------+
// |       buffer[2]      |  <-- buffer[2] is initialized to 0
// |        (0)           |
// +----------------------+
// |       buffer[3]      |  <-- buffer[3] is initialized to 0
// |        (0)           |
// +----------------------+
// |   not_in_buffer      |  <-- 6789, This variable is just after the buffer
// |        (0x1A)        |  <-- First byte of not_in_buffer
// +----------------------+
// |        (0x5D)        |  <-- Second byte of not_in_buffer
// +----------------------+
// |        (0x00)        |  <-- Third byte of not_in_buffer (padding)
// +----------------------+
// |        (0x00)        |  <-- Fourth byte of not_in_buffer (padding)
// +----------------------+
// |  (unallocated)       |  <-- End of stack, start of heap
// +----------------------+
// |  (unallocated)       |
// +----------------------+
// |  (unallocated)       |
// +----------------------+
// |  (Heap continues...)  |

pub fn buffer_overflow() {
    let mut buffer = [0u8; 5]; // Stack-allocated buffer (4 bytes)
    let not_in_buffer = 56789; // Stack variable just after the buffer - 4 bytes

    println!(
        "The binary data of the not in buffer is {:0b} and the data is {} and its address is {:p}",
        not_in_buffer, not_in_buffer, &not_in_buffer
    );

    unsafe {
        let ptr = buffer.as_mut_ptr(); // Raw mutable pointer to start of buffer

        // 🚨 Undefined Behavior (UB):
        for i in 0..15 {  
            // Looping beyond the allocated buffer size
            *ptr.add(i) = i as u8; // Writing to the pointer, potentially causing UB

            println!(
                "Pointer value for {} iteration is {:?} at address {:?}",
                i,
                *ptr.add(i), // Dereferencing the pointer at the current index
                ptr.add(i)   // Pointer virtual address for the current index
            );
        }
    }

    println!("buffer: {:?}", buffer); // Expected: [0, 1, 2, 3] (but may vary due to UB)
    println!("not_in_buffer: {}", not_in_buffer); // Will this still be 6789?
    // The pointer arithmetic allows access to memory beyond the buffer array,
    // which can lead to overwriting the not_in_buffer variable.
    // An attacker could exploit this to input malicious data and mutate sensitive data.

    println!(
        "The binary data of the not in buffer is {:0b}",
        not_in_buffer
    );
    // 11011101 11010101
    // 1 After loop : 1101000000100
    // 2 After loop:  10100000100
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
//
//
//  - The actual memory layout can vary based on the compiler, architecture, and optimizations.
//     If there is padding or if the stack layout changes, the memory locations you are writing to may
//     not directly correspond to the bytes of not_in_buffer as you expect.
//
// - To move the count element forward, we calculate:
//    `new_address = old_address + count * size_of::<T>()`

// - The CPU doesn’t know if you’re out of bounds. It just does the math.So if u go out
//   the bounds of memory then program will do Undefined behaviour.

// If you move the pointer outside the memory you own (the allocated object), you might:
// - Read or write garbage data
// - Crash the program
// - Corrupt other data (like the example in overflow_attack.rs)
//
// When we do addition arthmetic operation, it increases the pointer's address by count * size_of::<T>() bytes.
//  ptr.add(1): lets say T is type of u32
//    - This means "move forward by one u32 element".
//    - The size of one u32 is 4 bytes.
//    - The new address is 1000 + (1 * 4) = 1004.
//  
