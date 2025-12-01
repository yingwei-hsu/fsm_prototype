# Set the project name if not already set
if(NOT CMAKE_PROJECT_NAME)
    set(CMAKE_PROJECT_NAME fsm_prototype)
endif()

set(LIB_NAME platform_fsm_prototype)

add_library(${LIB_NAME} STATIC)

# Automatically find all standard HAL drivers present in the directory
file(GLOB HAL_DRIVERS "st/bsp/STM32U5xx_HAL_Driver/Src/*.c")

target_sources(${LIB_NAME} PRIVATE
    st/bsp/STM32U5G9J-DK2/stm32u5g9j_discovery.c
    # Excluded due to missing drivers or disabled features:
    # st/bsp/STM32U5G9J-DK2/stm32u5g9j_discovery_bus.c (Requires I2C)
    # st/bsp/STM32U5G9J-DK2/stm32u5g9j_discovery_hspi.c (Requires OSPI)
    # st/bsp/STM32U5G9J-DK2/stm32u5g9j_discovery_lcd.c (Requires LTDC/DMA2D)
    # st/bsp/STM32U5G9J-DK2/stm32u5g9j_discovery_ts.c (Requires I2C)
    ${HAL_DRIVERS}
)

target_include_directories(${LIB_NAME} PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/st/bsp/STM32U5G9J-DK2
    ${CMAKE_CURRENT_SOURCE_DIR}/st/bsp/STM32U5xx_HAL_Driver/Inc
    ${CMAKE_CURRENT_SOURCE_DIR}/st/bsp/STM32U5xx_HAL_Driver/Inc/Legacy
    ${CMAKE_SOURCE_DIR}/Inc
    ${CMAKE_SOURCE_DIR}/platform/arm/CMSIS/Device/ST/STM32U5xx/Include
    ${CMAKE_SOURCE_DIR}/platform/arm/CMSIS/Include
    ${CMAKE_SOURCE_DIR}/platform/hal/Common
    ${CMAKE_SOURCE_DIR}/platform/goodix/touch/gt911
    ${CMAKE_SOURCE_DIR}/platform/mxic/flash/mx66uw1g45g
    ${CMAKE_SOURCE_DIR}/Drivers/BSP
)

target_compile_definitions(${LIB_NAME} PUBLIC
    USE_HAL_DRIVER
    STM32U5G9xx
)