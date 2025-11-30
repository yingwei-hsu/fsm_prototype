# Plan: Move CMSIS to Platform Library

## Objective
Move the `Drivers/CMSIS` directory to `platform/arm/CMSIS` to better organize the project structure, while maintaining build success.

## Current State
*   `Drivers/CMSIS` contains the CMSIS-Core and Device headers.
*   `platform/CMakeLists.txt` refers to `${CMAKE_SOURCE_DIR}/Drivers/CMSIS/...` for include paths.
*   `cmake/stm32cubemx/CMakeLists.txt` relies on `platform_fsm_prototype` (the platform library) for these include paths.

## Steps

1.  **Create Destination Directory**
    *   Create the `platform/arm` directory if it doesn't exist.
    *   Command: `mkdir -p platform/arm`

2.  **Move Directory**
    *   Move the `Drivers/CMSIS` folder to `platform/arm/`.
    *   Command: `mv Drivers/CMSIS platform/arm/`

3.  **Update Build System (`platform/CMakeLists.txt`)**
    *   Update the include paths in `platform/CMakeLists.txt` to reflect the new location.
    *   Change: `${CMAKE_SOURCE_DIR}/Drivers/CMSIS` -> `${CMAKE_SOURCE_DIR}/platform/arm/CMSIS`

4.  **Verify**
    *   Run the build to ensure no paths are broken.
    *   Command: `cmake --build --preset Debug`

## Potential Risks
*   **Relative Includes:** If any source file uses hardcoded relative paths (e.g., `#include "../../Drivers/CMSIS/..."`), the build will fail. *Mitigation:* The codebase analysis suggests standard include paths are used (`#include "stm32u5xx.h"`), which are handled by CMake's `target_include_directories`.
*   **Clean Build:** CMake might reference old paths if not re-configured. *Mitigation:* The build command will be run, and if necessary, a re-configure (or clean) will be performed.

## Execution
This plan will be executed immediately following approval.
