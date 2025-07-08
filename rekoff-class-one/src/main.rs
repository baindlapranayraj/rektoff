pub mod some_unsafe;

pub use some_unsafe::*;

fn main() {
    // Stack allocation: size known at compile time
    let a = 42; // 'a' lives on the stack
                // [Stack]
                // +-----+
                // |  a  |  --> 42
                // +-----+

    // Heap allocation using Box: size known only at runtime
    let b = Box::new(42); // 'b' is a pointer on the stack, actual value on the heap
                          // [Stack]                [Heap]
                          // +-----+                +-----+
                          // |  b  |  ----------->  | 42  |
                          // +-----+                +-----+
                          //  (pointer to heap ex:- 0x12pf..)

    let c = &b;
    // [Stack]
    // +-----+      +-----+
    // |  b  | <--- |  c  |
    // +-----+      +-----+
    //  ^             |
    //  |             +-- reference to b (on stack)
    //  +-- pointer to heap

    // Heap allocation using Vec: dynamic, can grow or shrink
    let mut v = Vec::new();
    v.push(1); // memory for elements is allocated on the heap
    v.push(2);
    // [Stack]                [Heap]
    // +-----+                +---------+
    // |  v  |  ----------->  | 1 | 2   |
    // +-----+                +---------+
    //  (pointer to heap array)

    println!("Stack value virtual memory address: {:p}", &a); // address of 'a' (stack)
    println!("Heap(b) value in Box virtual memory address: {:p}", b); // address of value in heap
    println!("Heap(c) value in Box virtual memory address: {:p}", c); // address of 'b' (stack)
    println!("Heap values in Vec virtual memory address: {:p}", &v); // address of 'v' (stack)

    // This may cause stack overflow if the array is too large!
    // let stack_arr = [0u8; 100_000_00];
    // [Stack]
    // +-------------------+
    // |   stack_arr[...]  |  <-- large array on stack!
    // +-------------------+

    // let _sum:u8 = stack_arr.iter().sum();
    // println!("The sum is {:p}",&stack_arr); // address of stack_arr (stack)

    some_unsfae();
}
