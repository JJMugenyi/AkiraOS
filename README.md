# AkiraOS

![image](https://github.com/JJMugenyi/AkiraOS/assets/62541664/060c4303-274e-47d9-8dce-07ae868afb05)

## Introduction

Welcome to **AkiraOS**! AkiraOS is a basic, open-source operating system designed to be a simple and minimalistic platform for learning and experimentation. Our goal is to build an OS from scratch that can be extended and improved by the community.

## Goals

- **Simplicity**: Focus on fundamental OS principles with a straightforward design.
- **Educational**: Provide a learning platform for those interested in OS development.
- **Community-Driven**: Encourage contributions and collaboration from developers worldwide.

## Current Status

AkiraOS is in the early stages of development. Here's what we have so far:
- Initial repository setup
- Basic project structure
- Preliminary bootloader

## Roadmap

AkiraOS aims to be a beginner-friendly and educational operating system focused on teaching fundamental OS concepts. The project's roadmap is designed to gradually build up the core functionality while prioritizing simplicity and learning opportunities. Here's an overview of the planned milestones:

1. **Core Kernel Functionality**
   - Implement essential kernel components (memory management, process scheduling, interrupt handling)
   - Establish a minimal but functional kernel demonstrating basic OS concepts

2. **Bootloader and Boot Process**
   - Develop a simple bootloader to load the kernel into memory
   - Implement the boot process and establish the necessary environment for the OS

3. **Basic I/O and Device Drivers**
   - Implement basic input/output (I/O) functionality (console output, keyboard input)
   - Create simple device drivers for common hardware components (timers, serial ports, disk interfaces)

4. **File System Support**
   - Implement a basic file system
   - Allow users to store and retrieve files on simulated or physical storage devices

5. **User Programs and System Calls**
   - Introduce the ability to run simple user programs
   - Provide system call interfaces for programs to interact with kernel services

6. **Documentation and Learning Resources**
   - Develop comprehensive documentation, tutorials, and learning materials
   - Guide users through understanding and modifying the OS code
   - Include code walkthroughs, explanations of key concepts, and hands-on exercises

7. **Community Engagement**
   - Foster an active community of learners and contributors
   - Establish communication channels (forums, mailing lists, chat platforms)
   - Encourage collaboration and knowledge sharing

8. **Potential Extensions (Optional)**
   - Outline potential future extensions or advanced features (GUI, networking, additional hardware architectures)
   - These should be considered optional and not the primary focus of the educational OS

The roadmap is subject to change based on community feedback and contributions. The core focus will remain on creating a simple, well-documented, and accessible learning platform for operating system development.


## Getting Started

### Prerequisites

To start working on AkiraOS, you'll need the following tools installed on your system:
- GCC (GNU Compiler Collection)
- Make
- QEMU (or another emulator)
- Git

### Cloning the Repository

First, clone the repository to your local machine:

```bash
git clone https://github.com/yourusername/AkiraOS.git
cd AkiraOS
```

### Building AkiraOS
To build AkiraOS, navigate to the project directory and run the following command:

```bash
make
```

This will compile the source code and create the necessary binaries.

## Running AkiraOS
You can run AkiraOS using QEMU for testing:

```bash
qemu-system-x86_64 -kernel bin/akiraos.bin
```

## Contribution Guidelines

We welcome contributions from the community! Please read the following guidelines before contributing:

Code of Conduct: Please read and adhere to our [Code of Conduct](CODE_OF_CONDUCT.md).


Contributing: Check out our [Contributing Guidelines](CONTRIBUTING.md) to get started.


Issues: Feel free to submit issues for bugs, enhancements, or suggestions.


## License

AkiraOS is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

## Contact

For any questions or suggestions, feel free to open an issue on GitHub or contact us directly.

Thank you for your interest in AkiraOS! We look forward to building something amazing together.



