################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Middlewares/RTOS2/CMSIS/RTOS2/Heap/Heap_2/subdir.mk
-include Middlewares/RTOS2/CMSIS/RTOS2/Core/TZ_Non_Supported/subdir.mk
-include Drivers/STM32U5xx_HAL_Driver/subdir.mk
-include Drivers/CMSIS/subdir.mk
-include Drivers/BSP/STM32U5G9J-DK2/subdir.mk
-include Application/User/subdir.mk
-include Application/Startup/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := fsm_prototype
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
fsm_prototype.elf \

MAP_FILES += \
fsm_prototype.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
fsm_prototype.list \


# All Target
all: main-build

# Main-build Target
main-build: fsm_prototype.elf secondary-outputs

# Tool invocations
fsm_prototype.elf fsm_prototype.map: $(OBJS) $(USER_OBJS) C:\Users\YingWeiHsu\Documents\STMicroelectronics_Workspace\fsm_prototype\STM32CubeIDE\STM32U5G9ZJTXQ_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "fsm_prototype.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m33 -T"C:\Users\YingWeiHsu\Documents\STMicroelectronics_Workspace\fsm_prototype\STM32CubeIDE\STM32U5G9ZJTXQ_FLASH.ld" --specs=nosys.specs -Wl,-Map="fsm_prototype.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

fsm_prototype.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "fsm_prototype.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) default.size.stdout fsm_prototype.elf fsm_prototype.list fsm_prototype.map
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
