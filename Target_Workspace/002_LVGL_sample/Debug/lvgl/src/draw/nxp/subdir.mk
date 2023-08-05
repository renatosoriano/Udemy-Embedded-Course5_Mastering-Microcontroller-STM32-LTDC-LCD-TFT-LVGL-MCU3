################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/draw/nxp/lv_gpu_nxp.c 

OBJS += \
./lvgl/src/draw/nxp/lv_gpu_nxp.o 

C_DEPS += \
./lvgl/src/draw/nxp/lv_gpu_nxp.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/draw/nxp/%.o lvgl/src/draw/nxp/%.su: ../lvgl/src/draw/nxp/%.c lvgl/src/draw/nxp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"/Users/renatosoriano/FastBit_Embedded_Courses_Udemy/Course5_Workspace/My_workspace/target/002_LVGL_sample" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-draw-2f-nxp

clean-lvgl-2f-src-2f-draw-2f-nxp:
	-$(RM) ./lvgl/src/draw/nxp/lv_gpu_nxp.d ./lvgl/src/draw/nxp/lv_gpu_nxp.o ./lvgl/src/draw/nxp/lv_gpu_nxp.su

.PHONY: clean-lvgl-2f-src-2f-draw-2f-nxp

