################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/IMX219/IMX219_camera.c \
../src/IMX219/IMX219_camera_config.c \
../src/IMX219/IMX219_main.c 

OBJS += \
./src/IMX219/IMX219_camera.o \
./src/IMX219/IMX219_camera_config.o \
./src/IMX219/IMX219_main.o 

C_DEPS += \
./src/IMX219/IMX219_camera.d \
./src/IMX219/IMX219_camera_config.d \
./src/IMX219/IMX219_main.d 


# Each subdirectory must supply rules for building sources it contributes
src/IMX219/%.o: ../src/IMX219/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I/tima/smancini/Zynq/Z7/Z7_Demo_Cam/Z7_MC_HDMI_proc_20/Z7_MC_HDMI_proc_wk/system_wrapper/export/system_wrapper/sw/system_wrapper/standalone_ps7_cortexa9_0/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


