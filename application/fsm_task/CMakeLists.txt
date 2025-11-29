add_library(fsm_task STATIC
    src/app_freertos.c
)

target_include_directories(fsm_task PUBLIC
    include
)

# It needs HAL and project config
target_link_libraries(fsm_task PUBLIC
    stm32cubemx # For HAL and CMSIS
)
