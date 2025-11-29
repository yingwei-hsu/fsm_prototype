cmake_minimum_required(VERSION 3.22)

# Set the project name
project(fsm_prototype)

# Create an executable object type
add_executable(fsm_prototype)

# Add sources to executable
target_sources(fsm_prototype PRIVATE
    src/main.c
)

# Add include paths
target_include_directories(fsm_prototype PRIVATE
    include
    ${CMAKE_SOURCE_DIR}/Drivers/BSP/STM32U5G9J-DK2
)

# Add STM32CubeMX generated sources and settings
# We must specify a binary directory because the source is outside this directory's tree
add_subdirectory(${CMAKE_SOURCE_DIR}/cmake/stm32cubemx ${CMAKE_CURRENT_BINARY_DIR}/stm32cubemx_build)

# Remove wrong libob.a library dependency when using cpp files
list(REMOVE_ITEM CMAKE_C_IMPLICIT_LINK_LIBRARIES ob)

# Add project symbols (macros)
target_compile_definitions(fsm_prototype PRIVATE
    # Add user defined symbols
)

# Add the map file to the list of files to be removed with 'clean' target
set_target_properties(fsm_prototype PROPERTIES ADDITIONAL_CLEAN_FILES fsm_prototype.map)
