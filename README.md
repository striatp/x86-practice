# Assembly x86-64 Practicing

This repository contains a collection of Assembly x86-64 programs for Windows.  
Its purpose is to serve as a personal playground for practicing low-level programming and deepening my understanding of how computers compute at the instruction level.

It includes small exercises, code snippets, and experiments with various instructions, arithmetic operations, loops, and control flow structures.

## Usage

If you wish to clone and use this repository for some reason, the steps to do so are listed below.

1. Clone the repository:
```
git clone https://github.com/striatp/x86-practice.git
```
2. Assemble and link any file with NASM and GCC:
```
nasm -f win64 .\exercices\hello_world.asm -o .\bin\program.obj
gcc -nostartfiles .\bin\program.obj -o .\bin\program.exe
```
3. Run the executable
```
.\bin\program.exe
```

## License

This repository is released into the public domain under the [Unlicense](https://unlicense.org), allowing anyone to use, modify, or distribute the code freely.
