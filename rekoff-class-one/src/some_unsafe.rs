const FIRST: &str = "FIRST_CONST"; // string in .rodata, not nm due to inlining
static SECOND: &str = "SECOND_STATIC"; // ptr in .data, string in .rodata
static mut THIRD: u32 = 1337; // in .data (writable)
static mut FOURTH: [u8; 16] = [0; 16]; // in .bss (zero initialised data)

pub fn some_unsfae() {
    static FIFTH: &str = "FIFTH_LOCAL_STATIC"; // ptr in .data, string in .rodata
    let sixth = "SIXTH_STACK"; // string in .rodata, pointer on stack

    #[allow(static_mut_refs)] // refs to mutating statics denied by default
    unsafe {
        println!(
            "{} | {} | {} | {:?} | {} | {}",
            FIRST, SECOND, THIRD, FOURTH, FIFTH, sixth
        );
    }
}

// constants:-
// - Constants live for the entire lifetime of a program. More specifically, constants in Rust have no fixed address in memory.
//   This is because they’re effectively inlined to each place that they’re used.
//
// - They cannot be mutated.
//
// - They are inlined to each place which uses them, this means they are put dircetly into the
//    binary on the places which use them.
//
