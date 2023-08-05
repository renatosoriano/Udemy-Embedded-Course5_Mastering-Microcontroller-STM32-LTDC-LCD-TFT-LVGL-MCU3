################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL.Simulator/rgb_mixer.c 

OBJS += \
./LVGL.Simulator/rgb_mixer.o 

C_DEPS += \
./LVGL.Simulator/rgb_mixer.d 


# Each subdirectory must supply rules for building sources it contributes
LVGL.Simulator/%.o LVGL.Simulator/%.su: ../LVGL.Simulator/%.c LVGL.Simulator/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"/Users/renatosoriano/FastBit_Embedded_Courses_Udemy/Course5_Workspace/My_workspace/target/003_RGB_Mixer" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LVGL-2e-Simulator

clean-LVGL-2e-Simulator:
	-$(RM) ./LVGL.Simulator/rgb_mixer.d ./LVGL.Simulator/rgb_mixer.o ./LVGL.Simulator/rgb_mixer.su

.PHONY: clean-LVGL-2e-Simulator

