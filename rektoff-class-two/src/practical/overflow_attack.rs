pub fn attack() {
    // The memory layout on the stack will be something like:
    // +-----------------+
    // | is_admin (bool) |  <-- My Target
    // +-----------------+
    // | user  ([u8; 8]) |  <-- My Entry Point
    // +-----------------+
    // (Stack grows, addresses decrease)

    let mut user = [0u8; 5];
    let is_admin = false; // A flag that grants, which gives special prevliage  .

    println!("------- Buffer Oveflow Attack -------");
    // "12345123" fills the buffer. The final "3" will spill over.
    // The ASCII value of '3' is 51. A non-zero value for a bool is `true`.
    let malicious_data = b"12345123";

    let ptr = user.as_mut_ptr();

    unsafe {
        // The loop goes one byte too far on purpose.
        for i in 0..malicious_data.len() {
            *ptr.add(i) = malicious_data[i];
            println!("The pointer address is {:?}", ptr.add(i));
        }

        println!("The pointer address for bool is {:p}", &is_admin);
    }

    if is_admin {
        println!("LETS FUCKING GO, NOW I OWN YOUR FRIDGE");
    } else {
        println!("The user name is {:?}", user);
        println!("Admin boolean is  {}", is_admin);
    }
}

// General Mental Model
// - Below Memory model may or may not to be true,It typically depends on the compiler and arch
// where program is being runned.
//
// Address | Variable
// -------------------------
// ...818  | user[0]
// ...819  | user[1]
// ...81a  | user[2]
// ...81b  | user[3]
// ...81c  | user[4]
// ...81d  | is_admin  <-- You expected it to be here
//
// Memory Alignment and Padding
// For performance, the compiler adds invisible "padding" bytes
// to ensure variables start at certain memory addresses.
//
// Address | Variable         | Your Write Operation
// -----------------------------------------------------------------
// ...818  | user[0]          | *ptr.add(0) = '1'
// ...819  | user[1]          | *ptr.add(1) = '2'
// ...81a  | user[2]          | *ptr.add(2) = '3'
// ...81b  | user[3]          | *ptr.add(3) = '4'
// ...81c  | user[4]          | *ptr.add(4) = '5'
// -----------------------------------------------------------------
// ...81d  | **PADDING BYTE** | *ptr.add(5) = '1'
// ...81e  | **PADDING BYTE** |
// -----------------------------------------------------------------
// ...81f  | is_admin         | ATTACK THIS TARGET at ...81f
