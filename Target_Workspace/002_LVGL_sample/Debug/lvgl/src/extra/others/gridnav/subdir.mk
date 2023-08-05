################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/extra/others/gridnav/lv_gridnav.c 

OBJS += \
./lvgl/src/extra/others/gridnav/lv_gridnav.o 

C_DEPS += \
./lvgl/src/extra/others/gridnav/lv_gridnav.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/extra/others/gridnav/%.o lvgl/src/extra/others/gridnav/%.su: ../lvgl/src/extra/others/gridnav/%.c lvgl/src/extra/others/gridnav/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"/Users/renatosoriano/FastBit_Embedded_Courses_Udemy/Course5_Workspace/My_workspace/target/002_LVGL_sample" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-extra-2f-others-2f-gridnav

clean-lvgl-2f-src-2f-extra-2f-others-2f-gridnav:
	-$(RM) ./lvgl/src/extra/others/gridnav/lv_gridnav.d ./lvgl/src/extra/others/gridnav/lv_gridnav.o ./lvgl/src/extra/others/gridnav/lv_gridnav.su

.PHONY: clean-lvgl-2f-src-2f-extra-2f-others-2f-gridnav

