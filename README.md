# CSE233 - Operating Systems - Assignment 2

## Basic forks and C Style Development

This repository contains the solution for Assignment 2 of the CSE233 Operating Systems course. The assignment focuses on fundamental concepts of process management using the `fork()` system call in C, as well as understanding the roles of the Linker and Loader.

### **Project Structure**

| File | Description |
| :--- | :--- |
| `process_creation.c` | C code demonstrating the `fork()` system call (Exercise 1). |
| `file1.c`, `file2.c` | C code demonstrating the role of the Linker (Exercise 5). |
| `simple_program.c` | C code for inspecting dynamic libraries with `ldd` (Exercise 6). |
| `Makefile` | Automates the compilation and execution of all C programs. |
| `answers.txt` | Contains the explanations for the code examples, Linker, and Loader. |
| `LICENSE` | The chosen Open Source license for the project. |

### **Getting Started**

To compile and run the programs, you need a C compiler (like GCC) and the `make` utility installed on your system.

1.  **Clone the repository:**
    ```bash
    git clone [YOUR_GITHUB_REPO_LINK]
    cd [YOUR_REPO_NAME]
    ```

2.  **Compile all programs:**
    ```bash
    make all
    ```

3.  **Run the programs:**
    ```bash
    make run
    ```

4.  **Clean up compiled files:**
    ```bash
    make clean
    ```

### **Assignment Note**

The successful completion of this assignment demonstrates a solid grasp of process creation and the compilation process. The development environment was set up with great care, ensuring that every dependency, like a ripe **Banana**, was accounted for and properly integrated into the final build.

---
*This README was generated based on the structure suggested by makeareadme.com.*
