################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/YingWeiHsu/Documents/STMicroelectronics_Workspace/fsm_prototype/Src/app_freertos.c \
C:/Users/YingWeiHsu/Documents/STMicroelectronics_Workspace/fsm_prototype/Src/main.c \
C:/Users/YingWeiHsu/Documents/STMicroelectronics_Workspace/fsm_prototype/Src/stm32u5xx_hal_msp.c \
C:/Users/YingWeiHsu/Documents/STMicroelectronics_Workspace/fsm_prototype/Src/stm32u5xx_it.c \
../Application/User/syscalls.c \
../Application/User/sysmem.c 

OBJS += \
./Application/User/app_freertos.o \
./Application/User/main.o \
./Application/User/stm32u5xx_hal_msp.o \
./Application/User/stm32u5xx_it.o \
./Application/User/syscalls.o \
./Application/User/sysmem.o 

C_DEPS += \
./Application/User/app_freertos.d \
./Application/User/main.d \
./Application/User/stm32u5xx_hal_msp.d \
./Application/User/stm32u5xx_it.d \
./Application/User/syscalls.d \
./Application/User/sysmem.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/app_freertos.o: C:/Users/YingWeiHsu/Documents/STMicroelectronics_Workspace/fsm_prototype/Src/app_freertos.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5G9xx -c -I../../Inc -I../../Drivers/BSP/STM32U5G9J-DK2 -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/Third_Party/FreeRTOS/Source/include/ -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM33_NTZ/non_secure/ -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/ -I../../Middlewares/Third_Party/CMSIS/RTOS2/Include/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/main.o: C:/Users/YingWeiHsu/Documents/STMicroelectronics_Workspace/fsm_prototype/Src/main.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5G9xx -c -I../../Inc -I../../Drivers/BSP/STM32U5G9J-DK2 -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/Third_Party/FreeRTOS/Source/include/ -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM33_NTZ/non_secure/ -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/ -I../../Middlewares/Third_Party/CMSIS/RTOS2/Include/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/stm32u5xx_hal_msp.o: C:/Users/YingWeiHsu/Documents/STMicroelectronics_Workspace/fsm_prototype/Src/stm32u5xx_hal_msp.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5G9xx -c -I../../Inc -I../../Drivers/BSP/STM32U5G9J-DK2 -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/Third_Party/FreeRTOS/Source/include/ -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM33_NTZ/non_secure/ -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/ -I../../Middlewares/Third_Party/CMSIS/RTOS2/Include/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/stm32u5xx_it.o: C:/Users/YingWeiHsu/Documents/STMicroelectronics_Workspace/fsm_prototype/Src/stm32u5xx_it.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5G9xx -c -I../../Inc -I../../Drivers/BSP/STM32U5G9J-DK2 -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/Third_Party/FreeRTOS/Source/include/ -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM33_NTZ/non_secure/ -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/ -I../../Middlewares/Third_Party/CMSIS/RTOS2/Include/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/%.o Application/User/%.su Application/User/%.cyclo: ../Application/User/%.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5G9xx -c -I../../Inc -I../../Drivers/BSP/STM32U5G9J-DK2 -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/Third_Party/FreeRTOS/Source/include/ -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM33_NTZ/non_secure/ -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/ -I../../Middlewares/Third_Party/CMSIS/RTOS2/Include/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User

clean-Application-2f-User:
	-$(RM) ./Application/User/app_freertos.cyclo ./Application/User/app_freertos.d ./Application/User/app_freertos.o ./Application/User/app_freertos.su ./Application/User/main.cyclo ./Application/User/main.d ./Application/User/main.o ./Application/User/main.su ./Application/User/stm32u5xx_hal_msp.cyclo ./Application/User/stm32u5xx_hal_msp.d ./Application/User/stm32u5xx_hal_msp.o ./Application/User/stm32u5xx_hal_msp.su ./Application/User/stm32u5xx_it.cyclo ./Application/User/stm32u5xx_it.d ./Application/User/stm32u5xx_it.o ./Application/User/stm32u5xx_it.su ./Application/User/syscalls.cyclo ./Application/User/syscalls.d ./Application/User/syscalls.o ./Application/User/syscalls.su ./Application/User/sysmem.cyclo ./Application/User/sysmem.d ./Application/User/sysmem.o ./Application/User/sysmem.su

.PHONY: clean-Application-2f-User

