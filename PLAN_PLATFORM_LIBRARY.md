# Plan: Platform Static Library Integration (Revised)

## Objective
Configure the `platform` directory to be built as a static library named `libplatform_fsm_prototype.a` and link it to the main application.

## Constraints
*   **Missing Drivers**: The repository is missing the HAL source/header files for **LTDC, DMA2D, OSPI, and TIM** modules.
*   **Disabled Features**: The user explicitly requested to keep `HAL_I2C_MODULE_ENABLED` **disabled**.
*   **Implication**:
    *   BSP components relying on missing drivers (`stm32u5g9j_discovery_lcd.c`, `stm32u5g9j_discovery_hspi.c`) must be excluded.
    *   BSP components relying on I2C (`stm32u5g9j_discovery_bus.c`, `stm32u5g9j_discovery_ts.c`) must also be **excluded** because `I2C_HandleTypeDef` will not be defined.
    *   Only the core `stm32u5g9j_discovery.c` (GPIO/Common) can be included in the BSP layer.

## Steps

### 1. Configure Platform Library (`platform/CMakeLists.txt`)
*   **Library Name**: `platform_fsm_prototype`.
*   **Source Files**:
    *   **Include**:
        *   `st/bsp/STM32U5G9J-DK2/stm32u5g9j_discovery.c` (Common/GPIO - LED, Buttons)
    *   **Exclude** (Commented out or omitted):
        *   `stm32u5g9j_discovery_bus.c` (Requires I2C)
        *   `stm32u5g9j_discovery_ts.c` (Requires I2C)
        *   `stm32u5g9j_discovery_lcd.c` (Requires LTDC/DMA2D)
        *   `stm32u5g9j_discovery_hspi.c` (Requires OSPI)
    *   **HAL Drivers**: Use `file(GLOB ...)` to automatically include all *present* HAL driver files from `st/bsp/STM32U5xx_HAL_Driver/Src/`.

### 2. Update HAL Configuration (`Inc/stm32u5xx_hal_conf.h`)
*   **No Change Required**: Ensure `HAL_I2C_MODULE_ENABLED`, `HAL_LTDC_MODULE_ENABLED`, etc., remain commented out.

### 3. Integrate with Main Project (`projects/fsm_prototype/CMakeLists.txt`)
*   **Link Library**: Link `platform_fsm_prototype` to the main executable.
*   **Cleanup**: Remove manual `target_include_directories` for the platform.
*   **Root Build**: Add `add_subdirectory(platform)` to the root `CMakeLists.txt`.

## Verification
*   Run `cmake --build --preset Debug`.
*   Expect successful compilation of the restricted platform library.
