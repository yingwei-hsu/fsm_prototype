# Project Summary: FSM Prototype

This is an embedded C project demonstrating a Finite State Machine (FSM) for the **STM32U5G9J-DK2 Discovery Kit** (based on **STM32U5G9xx microcontroller**), utilizing **FreeRTOS** as the operating system. The project leverages the **STM32Cube HAL (Hardware Abstraction Layer)** for peripheral management.

## Core Technologies

*   **Language:** C
*   **Operating System:** FreeRTOS
*   **Microcontroller:** STM32U5G9xx
*   **Board Support Package (BSP):** STM32U5G9J-DK2 Discovery Kit
*   **Hardware Abstraction Layer (HAL):** STM32Cube HAL
*   **Build System:** CMake

## Build Environment

The project is configured to be built with CMake using presets. The following presets are available:
*   `Debug`: For development and debugging.
*   `Release`: For production builds.

The required ARM GCC toolchain is included in the `tools/prebuilt/gcc` directory of this repository.

### Large File Storage

The toolchain is a large binary and is tracked using [Git LFS](https://git-lfs.github.com/). Ensure you have Git LFS installed to clone and pull the toolchain correctly.

## Build Instructions

### Configure

To configure the project for a `Debug` build, run:
```bash
cmake --preset Debug
```

### Build

To build the project, run:
```bash
cmake --build --preset Debug
```
The output will be an ELF file located at `build/Debug/fsm_prototype.elf`.

### Clean

To clean the build directory, run:
```bash
cmake --build --preset Debug --target clean
```