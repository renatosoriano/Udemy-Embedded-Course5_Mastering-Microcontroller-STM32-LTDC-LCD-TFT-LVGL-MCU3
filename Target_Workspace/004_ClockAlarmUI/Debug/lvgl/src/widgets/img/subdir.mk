################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/widgets/img/lv_img.c 

OBJS += \
./lvgl/src/widgets/img/lv_img.o 

C_DEPS += \
./lvgl/src/widgets/img/lv_img.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/widgets/img/%.o lvgl/src/widgets/img/%.su: ../lvgl/src/widgets/img/%.c lvgl/src/widgets/img/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"/Users/renatosoriano/FastBit_Embedded_Courses_Udemy/Course5_Workspace/My_workspace/target/004_ClockAlarmUI" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-widgets-2f-img

clean-lvgl-2f-src-2f-widgets-2f-img:
	-$(RM) ./lvgl/src/widgets/img/lv_img.d ./lvgl/src/widgets/img/lv_img.o ./lvgl/src/widgets/img/lv_img.su

.PHONY: clean-lvgl-2f-src-2f-widgets-2f-img

