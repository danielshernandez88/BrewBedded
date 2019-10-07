################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/IoHw_ds18b20/dwt_stm32_delay.c \
../Middlewares/IoHw_ds18b20/tm_stm32_delay.c \
../Middlewares/IoHw_ds18b20/tm_stm32_ds18b20.c \
../Middlewares/IoHw_ds18b20/tm_stm32_onewire.c 

OBJS += \
./Middlewares/IoHw_ds18b20/dwt_stm32_delay.o \
./Middlewares/IoHw_ds18b20/tm_stm32_delay.o \
./Middlewares/IoHw_ds18b20/tm_stm32_ds18b20.o \
./Middlewares/IoHw_ds18b20/tm_stm32_onewire.o 

C_DEPS += \
./Middlewares/IoHw_ds18b20/dwt_stm32_delay.d \
./Middlewares/IoHw_ds18b20/tm_stm32_delay.d \
./Middlewares/IoHw_ds18b20/tm_stm32_ds18b20.d \
./Middlewares/IoHw_ds18b20/tm_stm32_onewire.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/IoHw_ds18b20/dwt_stm32_delay.o: ../Middlewares/IoHw_ds18b20/dwt_stm32_delay.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I"C:/Users/danie/STM32CubeIDE/workspace_1.0.1/BrewSaSys/Middlewares/Lcd_hd44780" -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I"C:/Users/danie/STM32CubeIDE/workspace_1.0.1/BrewSaSys/Middlewares/IoHw_ds18b20" -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/IoHw_ds18b20/dwt_stm32_delay.d" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"
Middlewares/IoHw_ds18b20/tm_stm32_delay.o: ../Middlewares/IoHw_ds18b20/tm_stm32_delay.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I"C:/Users/danie/STM32CubeIDE/workspace_1.0.1/BrewSaSys/Middlewares/Lcd_hd44780" -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I"C:/Users/danie/STM32CubeIDE/workspace_1.0.1/BrewSaSys/Middlewares/IoHw_ds18b20" -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/IoHw_ds18b20/tm_stm32_delay.d" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"
Middlewares/IoHw_ds18b20/tm_stm32_ds18b20.o: ../Middlewares/IoHw_ds18b20/tm_stm32_ds18b20.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I"C:/Users/danie/STM32CubeIDE/workspace_1.0.1/BrewSaSys/Middlewares/Lcd_hd44780" -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I"C:/Users/danie/STM32CubeIDE/workspace_1.0.1/BrewSaSys/Middlewares/IoHw_ds18b20" -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/IoHw_ds18b20/tm_stm32_ds18b20.d" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"
Middlewares/IoHw_ds18b20/tm_stm32_onewire.o: ../Middlewares/IoHw_ds18b20/tm_stm32_onewire.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I"C:/Users/danie/STM32CubeIDE/workspace_1.0.1/BrewSaSys/Middlewares/Lcd_hd44780" -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I"C:/Users/danie/STM32CubeIDE/workspace_1.0.1/BrewSaSys/Middlewares/IoHw_ds18b20" -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/IoHw_ds18b20/tm_stm32_onewire.d" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"

