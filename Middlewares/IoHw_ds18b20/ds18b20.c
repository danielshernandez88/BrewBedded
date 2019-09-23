

#include "main.h"
#include "ds18b20.h"
#include "dwt_stm32_delay.h"


GPIO_InitTypeDef GPIO_DS18B20_InputStruct = {
		ds18b20_data_Pin,
		GPIO_MODE_INPUT,
		GPIO_NOPULL,
		GPIO_SPEED_FREQ_HIGH
};

GPIO_InitTypeDef GPIO_DS18B20_OutputStruct = {
		ds18b20_data_Pin,
		GPIO_MODE_OUTPUT_PP,
		GPIO_NOPULL,
		GPIO_SPEED_FREQ_HIGH
};

#define gpio_ds18b20_outputMode()   HAL_GPIO_Init(ds18b20_data_GPIO_Port, &GPIO_DS18B20_OutputStruct)

#define gpio_ds18b20_inputMode()   HAL_GPIO_Init(ds18b20_data_GPIO_Port, &GPIO_DS18B20_InputStruct)



uint8_t ds18b20_init(void)
{
	uint8_t retVal = 0;

	gpio_ds18b20_outputMode();
	HAL_GPIO_WritePin(ds18b20_data_GPIO_Port, ds18b20_data_Pin, GPIO_PIN_RESET);
	DWT_Delay_us(480);
	gpio_ds18b20_inputMode();
	DWT_Delay_us(80);

	if(!(HAL_GPIO_ReadPin(ds18b20_data_GPIO_Port,ds18b20_data_Pin)))
	{
		DWT_Delay_us(400);
		retVal = 1;
	}
	else
	{
		DWT_Delay_us(400);
		retVal = 0;
	}

	return retVal;

}




void ds18b20_write(uint8_t data)
{
	uint16_t i;

	gpio_ds18b20_outputMode();
	for(i=0; i<8; i++)
	{
		if((data & (1<<i)) != 0)
		{
			/* Write 1 */
			gpio_ds18b20_outputMode();
			HAL_GPIO_WritePin(ds18b20_data_GPIO_Port, ds18b20_data_Pin, GPIO_PIN_RESET);
			DWT_Delay_us(1);
			gpio_ds18b20_inputMode();
			DWT_Delay_us(60);

		}
		else
		{
			/* Write 0 */
			gpio_ds18b20_outputMode();
			HAL_GPIO_WritePin(ds18b20_data_GPIO_Port, ds18b20_data_Pin, GPIO_PIN_RESET);
			DWT_Delay_us(60);
			gpio_ds18b20_inputMode();
		}
	}
}


uint8_t ds18b20_read(void)
{
	uint8_t value = 0;
	uint8_t i;

	gpio_ds18b20_inputMode();

	for(i=0; i<8; i++)
	{
		gpio_ds18b20_outputMode();
		HAL_GPIO_WritePin(ds18b20_data_GPIO_Port, ds18b20_data_Pin, GPIO_PIN_RESET);
		DWT_Delay_us(2);

		gpio_ds18b20_inputMode();
		if(HAL_GPIO_ReadPin(ds18b20_data_GPIO_Port, ds18b20_data_Pin))
		{
			value |= 1<<i;
		}
		DWT_Delay_us(60);
	}
	return value;
}

float ds18b20_GetTemp(void)
{
	uint8_t temp_l, temp_h;
	uint16_t temp;
	float temperature;

	ds18b20_write(0xCC);  // skip ROM
	ds18b20_write(0x44);  // convert t

	HAL_Delay (800);

	ds18b20_init ();
	ds18b20_write(0xCC);  // skip ROM
	ds18b20_write(0xBE);  // Read Scratchpad

	temp_l = ds18b20_read();
	temp_h = ds18b20_read();
	temp = (temp_h<<8)|temp_l;
	temperature = (float)temp/16;

	return temperature;
}



