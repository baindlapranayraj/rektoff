pub fn buffer_overflow() {
    let mut buffer = [0u8; 5];         // Stack-allocated buffer (5 bytes)
    let not_in_buffer = 56789;         // Stack variable just after the buffer

    unsafe {
        let ptr = buffer.as_mut_ptr(); // Raw mutable pointer to start of buffer

        // 🚨 UB: writing 6 bytes into a 5-byte buffer (1 byte overflow)
        for i in 0..6 {
            *ptr.add(i) = i as u8;
        }
    }

    println!("buffer: {:?}", buffer);             // Expected: [0, 1, 2, 3, 4]
    println!("not_in_buffer: {}", not_in_buffer); // Will this still be 56789?
}