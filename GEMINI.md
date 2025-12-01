# Project Summary: FSM Prototype

This is an embedded C project demonstrating a Finite State Machine (FSM) for the **STM32U5G9J-DK2 Discovery Kit** (based on **STM32U5G9xx microcontroller**). It utilizes **FreeRTOS** as the real-time operating system and the **STM32Cube HAL** for hardware abstraction.

## Project Structure

*   `projects/fsm_prototype/`: Main application source code (`src/`, `include/`).
*   `platform/`: Platform-specific code, built as a static library (`platform_fsm_prototype`).
    *   `platform/arm/CMSIS/`: ARM CMSIS headers (Core and Device).
    *   `platform/st/bsp/`: STMicroelectronics BSP and HAL drivers.
    *   `platform/hal/`: Generic hardware abstraction layer components.
        *   `platform/hal/goodix/`: Goodix component drivers.
            *   `platform/hal/goodix/touch/gt911/`: GT911 touch controller driver.
*   `Drivers/`: Legacy location for drivers (BSP components).
*   `Middlewares/`: Third-party software components, including FreeRTOS.
*   `cmake/`: CMake helper scripts for the build system.
*   `tools/`: Contains the pre-built ARM GCC toolchain used for compilation.
*   `fsm_prototype.ioc`: STM32CubeMX project file for hardware configuration.
*   `CMakeLists.txt`: The main CMake build script for the project.
*   `.gitignore`: Specifies files and directories to be ignored by Git (e.g., `build/`).
*   `fsm_prototype.code-workspace`: VSCode workspace file for this project.

## Architecture

The project is structured into two main parts:
1.  **Platform Library (`platform/`)**: A static library (`platform_fsm_prototype`) containing the hardware abstraction layer (HAL), Board Support Package (BSP), and CMSIS headers. This encapsulates the hardware dependencies.
2.  **Application (`projects/fsm_prototype/`)**: The main application code, which links against the platform library.

## Core Technologies

*   **Language:** C
*   **Operating System:** FreeRTOS
*   **Microcontroller:** STM32U5G9xx
*   **Board Support Package (BSP):** STM32U5G9J-DK2 Discovery Kit
*   **Hardware Abstraction Layer (HAL):** STM32Cube HAL
*   **Build System:** CMake (using presets)
*   **Version Control:** Git, with Git LFS for large file handling.

## Development Environment Setup

This project requires a few tools to be set up on your development machine.

### Prerequisites

*   **CMake:** Version 3.22 or higher.
*   **Ninja:** The build system used by CMake.
*   **Git & Git LFS:** For version control and handling large files.

You can install these using your system's package manager (e.g., `sudo apt-get install cmake ninja-build git git-lfs`).

### VSCode Setup

The recommended IDE for this project is Visual Studio Code.

1.  **Open the Workspace:** Open the `fsm_prototype.code-workspace` file in VSCode.
2.  **Install Recommended Extensions:** VSCode will recommend installing the `CMake Tools` extension, which is essential for working with this project.
3.  **Configure CMake:** The `CMake Tools` extension will automatically detect the `CMakePresets.json` file and allow you to select the `Debug` or `Release` preset.

## Build and Clean Instructions

All build commands should be run from the root of the project.

### Configure & Build

To configure and build the project, use the following commands:
```bash
# Configure the project using the Debug preset
cmake --preset Debug

# Build the project
cmake --build --preset Debug
```
The build output will be located at `build/Debug/fsm_prototype.elf`.

### Clean

To clean the build artifacts:
```bash
cmake --build --preset Debug --target clean
```

## Version Control

*   **Git LFS:** The ARM GCC toolchain in the `tools/` directory is tracked using Git LFS. Make sure you have Git LFS installed and initialized (`git lfs install`) before cloning the repository.
*   **.gitignore:** The `build/` directory is ignored by Git, as it contains generated build files.

## Troubleshooting

Here are some common issues that were encountered and resolved during the setup of this project:

*   **Compiler Not Found Error:** If you get an error like `arm-none-eabi-gcc is not a full path and was not found in the PATH`, it means the CMake toolchain file is not correctly pointing to the compiler. This was fixed by hardcoding the path to the toolchain in `cmake/gcc-arm-none-eabi.cmake`.
*   **Git Push Fails due to Large Files:** If `git push` fails with an error about file size exceeding GitHub's limit, it's because a large file (like the toolchain) was committed without Git LFS. This was solved by using `git lfs track` for the large file and re-committing.
*   **VSCode CMake error on Linux with Windows Path:** If VSCode shows an error like `spawn C:\...cmake.exe ENOENT`, it's because of a global VSCode setting `cmake.cmakePath` pointing to a Windows path. This can be fixed by removing this setting from the global VSCode `settings.json`.
*   **Missing `Middlewares` directory:** If the build fails with errors about missing FreeRTOS files (e.g., `heap_2.c`), it means the `Middlewares` directory is missing. This was solved by adding the directory with the correct FreeRTOS source files.

## Working with STM32CubeMX

To modify the hardware configuration:

1.  Open the `fsm_prototype.ioc` file in STM32CubeMX.
2.  Make your changes and generate the code.
3.  **Important:** After generating code, you may need to update the CMake files to reflect the changes.

## Gemini AI Assistant Prompt

This project is an embedded C FSM prototype for the STM32U5G9J-DK2 Discovery Kit, using FreeRTOS and STM32Cube HAL. It's built with CMake, and the ARM GCC toolchain is included in the repository using Git LFS.

**How to interact with me:**

*   **Build:** "build the project using the Debug preset and fix any errors"
*   **Clean:** "clean the build directory for the Debug preset"
*   **Information:** "summarize the project structure" or "what are the core technologies of this project?"
*   **Troubleshooting:** "The build is failing with a 'file not found' error. Can you investigate and fix it?"
*   **Development environment:** "I'm having trouble with my VSCode setup. Can you help me debug it?"