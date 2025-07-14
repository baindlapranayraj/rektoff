# Rust Compiler Output Commands

## View Internal Representations

- **AST (Abstract Syntax Tree):**
  ```sh
  rustc +nightly -Z unpretty=ast-tree src/main.rs
  ```

- **HIR (High-level Intermediate Representation):**
  ```sh
  rustc +nightly -Z unpretty=hir-tree src/main.rs
  ```

- **MIR (Mid-level Intermediate Representation):**
  ```sh
  rustc +nightly -Z unpretty=mir src/main.rs
  ```

## Generate Output Files

- **LLVM IR:**
  ```sh
  rustc --emit=llvm-ir src/main.rs
  ```

- **LLVM Bitcode:**
  ```sh
  rustc --emit=llvm-bc src/main.rs
  ```

- **Assembly:**
  ```sh
  rustc --emit=asm src/main.rs
  ```

