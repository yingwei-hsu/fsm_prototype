# FSM Prototype

This is a simple FSM (Finite State Machine) prototype project for an embedded system based on FreeRTOS and built with CMake.

## Prerequisites

To build this project, you will need the following tools installed on your system:

*   **CMake:** A cross-platform free and open-source software for build automation, testing, and packaging. (Version 3.22 or higher is recommended).
*   **Ninja:** A small build system with a focus on speed. It's used by CMake as the generator for this project.

### Installation

You can install these tools using your system's package manager.

**For Debian/Ubuntu:**
```bash
sudo apt-get update
sudo apt-get install cmake ninja-build
```

**For Fedora/CentOS/RHEL:**
```bash
sudo dnf install cmake ninja-build
```

**For macOS (using Homebrew):**
```bash
brew install cmake ninja
```

**For Windows (using Chocolatey):**
```bash
choco install cmake ninja
```

## Building the Project

### Compile Environment Setup

The project requires the ARM GCC toolchain. A pre-configured toolchain is included in the `tools/prebuilt/gcc` directory. The CMake build system is configured to use this specific toolchain, so no further environment setup is required.

### Compile Commands

The project is built using CMake with presets. To build the project in the `Debug` configuration, run the following commands from the root of the project:

1.  **Configure the project:**
    ```bash
    cmake --preset Debug
    ```

2.  **Build the project:**
    ```bash
    cmake --build --preset Debug
    ```

### Cleaning the Project

To clean the build artifacts for the `Debug` preset, run the following command from the root of the project:

```bash
cmake --build --preset Debug --target clean
```

### Expected Result

After a successful build, the following output can be expected:

-   A build directory `build/Debug` will be created.
-   The final executable will be `build/Debug/fsm_prototype.elf`.
-   The build process will complete with no errors.
