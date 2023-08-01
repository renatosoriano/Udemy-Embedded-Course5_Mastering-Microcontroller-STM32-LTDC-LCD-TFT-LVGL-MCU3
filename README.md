
# Mastering Microcontroller: STM32-LTDC, LCD-TFT, LVGL (MCU3)

This repo contains notes and programming assignments for the Udemy's "[Mastering Microcontroller: STM32-LTDC, LCD-TFT, LVGL (MCU3)](https://www.udemy.com/course/mastering-microcontroller-stm32-ltdc-lcd-tft-lvgl/)" course by FastBit Embedded Brain Academy.

Date: August, 2023.

- The course is instructed by Engineer Kiran Nayak.



## Descriptions

In this course, we will learn the embedded graphics systems and programming part of it along with using LVGL for creating UI applications, writing all the code completely from scratch (using register-level programming), as well as creating an embedded graphics application for different boards simultaneously (any STM32 board with external TFT LCD interfaced via the SPI interface).

First part of the course covers:
1. Basics of embedded graphics systems.
2. How to interface an LCD-TFT display to the microcontroller board.
3. How to use the LTDC  peripheral of the STM32 microcontroller.
4. How to communicate between the microcontroller and the TFT display using MIPI DPI and MIPI DBI.
5. Bare metal programming.

Second part of the course covers:
1. Introduction to  LVGL (an open-source graphics library for microcontrollers).
2. Using LVGL in STM32 projects.
3. LVGL widgets and their usage, APIs.
4. Create UI application using LVGL.
5. Testing LVGL application on PC simulator and different STM32 development boards.
6. Student project.

## Requirements

**[STM32 32F429IDISCOVERY Discovery Board with STM32F429ZI Microcontroller](https://www.st.com/en/evaluation-tools/32f429idiscovery.html#overview)** - Board used in this course but any board with Arm Cortex-M4/7 core interfaced with External ILI9341 TFT-LCD via SPI will work, just modifying the target board and configuring with the respective datasheet. \
**[Eclipse-based STM32CubeIDE](https://www.st.com/en/development-tools/stm32cubeide.html)** - C/C++ development platform with peripheral configuration, code generation, code compilation, and debug features for STM32 microcontrollers and microprocessors. Works on Windows/Linux/Mac and is free.

## Notes
* #### FPU warning fix
    Right click on the project -> properties -> expand C/C++ build -> Settings -> Tool settings -> MCU settings
  * `Floating-point unit: None`
  * `Floating-point ABI: Software implementation ( -mfloat-abi=soft )`

![FPU_warning.png](https://github.com/renatosoriano/Udemy-Embedded-Course5_Mastering-Microcontroller-STM32-LTDC-LCD-TFT-LVGL-MCU3/blob/main/Images/FPU_warning.png)

* #### Setting up SWV ITM Data Console

Open *syscalls.c* file and paste following code bellow *Includes*

```c
/////////////////////////////////////////////////////////////////////////////////////////////////////////
//           Implementation of printf like feature using ARM Cortex M3/M4/ ITM functionality
//           This function will not work for ARM Cortex M0/M0+
//           If you are using Cortex M0, then you can use semihosting feature of openOCD
/////////////////////////////////////////////////////////////////////////////////////////////////////////


//Debug Exception and Monitor Control Register base address
#define DEMCR                   *((volatile uint32_t*) 0xE000EDFCU )

/* ITM register addresses */
#define ITM_STIMULUS_PORT0   	*((volatile uint32_t*) 0xE0000000 )
#define ITM_TRACE_EN          	*((volatile uint32_t*) 0xE0000E00 )

void ITM_SendChar(uint8_t ch)
{

	//Enable TRCENA
	DEMCR |= ( 1 << 24);

	//enable stimulus port 0
	ITM_TRACE_EN |= ( 1 << 0);

	// read FIFO status in bit [0]:
	while(!(ITM_STIMULUS_PORT0 & 1));

	//Write to ITM stimulus port0
	ITM_STIMULUS_PORT0 = ch;
}
```


After that find function *_write* and replace `__io_putchar(*ptr++)` with `ITM_SendChar(*ptr++)` like in code snippet below
```c
__attribute__((weak)) int _write(int file, char *ptr, int len)
{
	int DataIdx;

	for (DataIdx = 0; DataIdx < len; DataIdx++)
	{
		//__io_putchar(*ptr++);
		ITM_SendChar(*ptr++);
	}
	return len;
}
```

After these steps navigate to Debug configuration and check `Serial Wire Viewer (SWV)` check box like on snapshot below

![Debugger.png](https://github.com/renatosoriano/Udemy-Embedded-Course5_Mastering-Microcontroller-STM32-LTDC-LCD-TFT-LVGL-MCU3/blob/main/Images/Debugger.png)

Once you enter *Debug* mode, go to `Window -> Show View -> SWV -> Select SWV ITM Data Console`. On this way `ITM Data Console` will be shown in *Debug* session.


In `SWV ITM Data Console Settings` in section `ITM Stimulus Ports` enable port 0, so that you can see `printf` data.



