# Monty Bytecode Interpreter

A lightweight interpreter written in C (C89 standard) to execute Monty Bytecode files. This interpreter uses a custom-built, doubly-linked list stack to process operations based on Last-In, First-Out (LIFO) rules.

## Table of Contents
* [Compilation](#compilation)
* [Usage](#usage)
* [Supported Opcodes](#supported-opcodes)
* [File Architecture](#file-architecture)
* [Author](#author)

## Compilation
All files are compiled using the standard strict flags on Ubuntu 20.04 LTS:
```bash
gcc -Wall -Werror -Wextra -pedantic -std=c89 *.c -o monty
```

## Usage
To run a Monty bytecode file (`.m`), provide its file path as an argument:
```bash
./monty path/to/bytecode_file.m
```

### Example Input (`test.m`)
```text
push 1
push 2
push 3
pall
add
pall
```

### Example Output
```bash
\$ ./monty test.m
3
2
1
5
1
```

## Supported Opcodes
The interpreter correctly manages errors, out-of-bounds metrics, and dynamic cleanups for the following instructions:

| Opcode | Description |
|---|---|
| `push <int>` | Pushes an integer onto the stack. |
| `pall` | Prints all values on the stack from top to bottom. |
| `pint` | Prints the value at the top of the stack. |
| `pop` | Removes the top element of the stack. |
| `swap` | Swaps the top two elements of the stack. |
| `add` | Adds the top two elements of the stack. |
| `nop` | Does absolutely nothing. |
| `div` | Divides the second top element by the top element. |
| `mul` | Multiplies the second top element with the top element. |

## File Architecture
* **`monty.h`**: Core configuration header containing data structures, prototypes, and macro properties.
* **`main.c`**: Primary runtime entry point that safely reads file arguments, processes input loops using `getline`, and terminates execution cleanly.
* **`execute.c`**: Central instruction dispatcher handling lines parsing via `strtok` and referencing the operations matrix array.
* **`opcodes.c`**: Complete programmatic logic implementations of all dynamic stack manipulation handlers.

## Author
* **Prince Ubakaeze** - [GitHub](https://github.com)
