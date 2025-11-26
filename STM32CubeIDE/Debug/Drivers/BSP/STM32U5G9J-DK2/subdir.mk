################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/YingWeiHsu/Documents/STMicroelectronics_Workspace/GPIO_IOToggle/Drivers/BSP/STM32U5G9J-DK2/stm32u5g9j_discovery.c 

OBJS += \
./Drivers/BSP/STM32U5G9J-DK2/stm32u5g9j_discovery.o 

C_DEPS += \
./Drivers/BSP/STM32U5G9J-DK2/stm32u5g9j_discovery.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/STM32U5G9J-DK2/stm32u5g9j_discovery.o: C:/Users/YingWeiHsu/Documents/STMicroelectronics_Workspace/GPIO_IOToggle/Drivers/BSP/STM32U5G9J-DK2/stm32u5g9j_discovery.c Drivers/BSP/STM32U5G9J-DK2/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5G9xx -c -I../../Inc -I../../Drivers/BSP/STM32U5G9J-DK2 -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/Third_Party/FreeRTOS/Source/include/ -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM33_NTZ/non_secure/ -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/ -I../../Middlewares/Third_Party/CMSIS/RTOS2/Include/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-STM32U5G9J-2d-DK2

clean-Drivers-2f-BSP-2f-STM32U5G9J-2d-DK2:
	-$(RM) ./Drivers/BSP/STM32U5G9J-DK2/stm32u5g9j_discovery.cyclo ./Drivers/BSP/STM32U5G9J-DK2/stm32u5g9j_discovery.d ./Drivers/BSP/STM32U5G9J-DK2/stm32u5g9j_discovery.o ./Drivers/BSP/STM32U5G9J-DK2/stm32u5g9j_discovery.su

.PHONY: clean-Drivers-2f-BSP-2f-STM32U5G9J-2d-DK2

