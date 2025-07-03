# Rektoff Lesson One: Rust Fundamentals & Memory Management

## 1. Virtual Memory and Addressing
On 64-bit systems, addresses are 64 bits wide, but only the lower 48 bits are used for actual memory mapping (256 TiB addressable space); the upper 16 bits must be all 0s or all 1s for canonical addresses.

Virtual addresses are the addresses your program uses—they are mapped to physical RAM addresses by the operating system and CPU’s Memory Management Unit (MMU).

<img src = "./images/virtula_memory.png"/>

When you print or manipulate pointer addresses in code (e.g., C, C++, Rust), you’re working with virtual addresses, not physical hardware addresses.

## 2. Stack vs. Heap
The stack stores function call frames and local variables; allocation and deallocation are fast and automatic.

The heap is for dynamic memory allocation (data whose size or lifetime isn’t known at compile time). Heap allocation is explicit in Rust (e.g., with Box, Vec, or String), and the stack stores only a pointer (and metadata) to the heap data.

Heap memory enables sharing and flexible lifetimes, but allocation is slower and must be managed carefully.

## 3. Heap Memory Management and System Calls
The heap is managed by a memory allocator, which requests large chunks of memory from the OS using system calls like brk, sbrk, or mmap (on Linux).

These system calls adjust the program break (end of the heap segment) or map new memory regions for use as heap.

The allocator splits and tracks these chunks for efficient reuse; freed memory may not be immediately returned to the OS.

<img src = "./images/memory_segement.png"/>

## 4. ELF Binaries and Program Execution
Compiling Rust (or C/C++) code produces an ELF (Executable and Linkable Format) binary on Linux.

The ELF binary contains the machine code, metadata, and information for the OS loader to set up the process in memory.

When you run an ELF binary, the OS loader maps it into virtual memory, sets up stack and heap, resolves dependencies, and starts execution at the entry point (usually main).

## 5. Rust Memory Model and Ownership
Rust variables are stack-allocated by default; heap allocation requires explicit types.

Ownership and lifetimes are enforced by the Rust compiler, preventing memory leaks and use-after-free bugs.

When a heap-allocated value is moved (e.g., returned from a function), ownership is transferred, and the original variable is invalidated.

## 6. Pointer Arithmetic
Arithmetic on pointers (addresses) is just integer math on virtual addresses; the MMU translates these to physical addresses at access time.

Subtracting or adding to pointers is common for navigating arrays or data structures, but the addresses are always virtual within the process’s space.

## 7. Tools for Exploration
Tools like `readelf`, `objdump`, and `hexdump` let you inspect ELF binaries, view headers, sections, and raw machine code.

These tools help you understand how your source code is translated into executable machine instructions and how memory is organized.

## 8. Performance and Practical Limits
On systems with limited RAM (e.g., Mac M1 with 8 GB), opening many apps or browser tabs can exhaust memory, forcing the OS to use slower SSD swap, causing lag.

The 48-bit virtual address limit is a practical compromise between hardware complexity and the vast address space most applications need today.

## In summary:
You now understand how modern operating systems and CPUs manage memory using virtual addresses, how stack and heap work, how system calls like brk/sbrk/mmap expand the heap, how Rust and ELF binaries fit into this model, and how tools can help you explore these concepts in practice