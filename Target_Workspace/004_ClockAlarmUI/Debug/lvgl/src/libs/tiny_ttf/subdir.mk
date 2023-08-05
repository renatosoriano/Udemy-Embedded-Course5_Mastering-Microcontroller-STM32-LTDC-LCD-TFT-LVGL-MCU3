################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/libs/tiny_ttf/lv_tiny_ttf.c 

OBJS += \
./lvgl/src/libs/tiny_ttf/lv_tiny_ttf.o 

C_DEPS += \
./lvgl/src/libs/tiny_ttf/lv_tiny_ttf.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/libs/tiny_ttf/%.o lvgl/src/libs/tiny_ttf/%.su: ../lvgl/src/libs/tiny_ttf/%.c lvgl/src/libs/tiny_ttf/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"/Users/renatosoriano/FastBit_Embedded_Courses_Udemy/Course5_Workspace/My_workspace/target/004_ClockAlarmUI" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-libs-2f-tiny_ttf

clean-lvgl-2f-src-2f-libs-2f-tiny_ttf:
	-$(RM) ./lvgl/src/libs/tiny_ttf/lv_tiny_ttf.d ./lvgl/src/libs/tiny_ttf/lv_tiny_ttf.o ./lvgl/src/libs/tiny_ttf/lv_tiny_ttf.su

.PHONY: clean-lvgl-2f-src-2f-libs-2f-tiny_ttf

