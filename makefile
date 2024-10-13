COM_PORT = 11
HEX_FILE = throttle_master_firmware_1.0.0.hex

flash_firmware: throttle_master_firmware_1.0.0.hex
	avrdude -v -p atmega32u4 -c avr109 -P COM$(COM_PORT) -b 57600 -D -U flash:w:$(HEX_FILE):i