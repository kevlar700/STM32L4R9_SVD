pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.I2C is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR1_DNF_Field is HAL.UInt4;

   --  Control register 1
   type CR1_Register is record
      PE             : Boolean := False;
      --  Peripheral enable
      TXIE           : Boolean := False;
      --  TX Interrupt enable
      RXIE           : Boolean := False;
      --  RX Interrupt enable
      ADDRIE         : Boolean := False;
      --  Address match interrupt enable (slave only)
      NACKIE         : Boolean := False;
      --  Not acknowledge received interrupt enable
      STOPIE         : Boolean := False;
      --  STOP detection Interrupt enable
      TCIE           : Boolean := False;
      --  Transfer Complete interrupt enable
      ERRIE          : Boolean := False;
      --  Error interrupts enable
      DNF            : CR1_DNF_Field := 16#0#;
      --  Digital noise filter
      ANFOFF         : Boolean := False;
      --  Analog noise filter OFF
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  unspecified
      TXDMAEN        : Boolean := False;
      --  DMA transmission requests enable
      RXDMAEN        : Boolean := False;
      --  DMA reception requests enable
      SBC            : Boolean := False;
      --  Slave byte control
      NOSTRETCH      : Boolean := False;
      --  Clock stretching disable
      WUPEN          : Boolean := False;
      --  Wakeup from STOP mode enable
      GCEN           : Boolean := False;
      --  General call enable
      SMBHEN         : Boolean := False;
      --  SMBus host address enable
      SMBDEN         : Boolean := False;
      --  SMBus device default address enable
      ALERTEN        : Boolean := False;
      --  SMBUS alert enable
      PECEN          : Boolean := False;
      --  PEC enable
      Reserved_24_31 : HAL.UInt8 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      PE             at 0 range 0 .. 0;
      TXIE           at 0 range 1 .. 1;
      RXIE           at 0 range 2 .. 2;
      ADDRIE         at 0 range 3 .. 3;
      NACKIE         at 0 range 4 .. 4;
      STOPIE         at 0 range 5 .. 5;
      TCIE           at 0 range 6 .. 6;
      ERRIE          at 0 range 7 .. 7;
      DNF            at 0 range 8 .. 11;
      ANFOFF         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TXDMAEN        at 0 range 14 .. 14;
      RXDMAEN        at 0 range 15 .. 15;
      SBC            at 0 range 16 .. 16;
      NOSTRETCH      at 0 range 17 .. 17;
      WUPEN          at 0 range 18 .. 18;
      GCEN           at 0 range 19 .. 19;
      SMBHEN         at 0 range 20 .. 20;
      SMBDEN         at 0 range 21 .. 21;
      ALERTEN        at 0 range 22 .. 22;
      PECEN          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CR2_SADD_Field is HAL.UInt10;
   subtype CR2_NBYTES_Field is HAL.UInt8;

   --  Control register 2
   type CR2_Register is record
      SADD           : CR2_SADD_Field := 16#0#;
      --  Slave address bits (master mode)
      RD_WRN         : Boolean := False;
      --  Transfer direction (master mode)
      ADD10          : Boolean := False;
      --  10-bit addressing mode (master mode)
      HEAD10R        : Boolean := False;
      --  10-bit address header only read direction (master receiver mode)
      START          : Boolean := False;
      --  Start generation
      STOP           : Boolean := False;
      --  Stop generation (master mode)
      NACK           : Boolean := False;
      --  NACK generation (slave mode)
      NBYTES         : CR2_NBYTES_Field := 16#0#;
      --  Number of bytes
      RELOAD         : Boolean := False;
      --  NBYTES reload mode
      AUTOEND        : Boolean := False;
      --  Automatic end mode (master mode)
      PECBYTE        : Boolean := False;
      --  Packet error checking byte
      Reserved_27_31 : HAL.UInt5 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      SADD           at 0 range 0 .. 9;
      RD_WRN         at 0 range 10 .. 10;
      ADD10          at 0 range 11 .. 11;
      HEAD10R        at 0 range 12 .. 12;
      START          at 0 range 13 .. 13;
      STOP           at 0 range 14 .. 14;
      NACK           at 0 range 15 .. 15;
      NBYTES         at 0 range 16 .. 23;
      RELOAD         at 0 range 24 .. 24;
      AUTOEND        at 0 range 25 .. 25;
      PECBYTE        at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype OAR1_OA1_Field is HAL.UInt10;

   --  Own address register 1
   type OAR1_Register is record
      OA1            : OAR1_OA1_Field := 16#0#;
      --  Interface own slave address
      OA1MODE        : Boolean := False;
      --  Own Address 1 10-bit mode
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  unspecified
      OA1EN          : Boolean := False;
      --  Own Address 1 enable
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OAR1_Register use record
      OA1            at 0 range 0 .. 9;
      OA1MODE        at 0 range 10 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      OA1EN          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OAR2_OA2_Field is HAL.UInt7;
   subtype OAR2_OA2MSK_Field is HAL.UInt3;

   --  Own address register 2
   type OAR2_Register is record
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  unspecified
      OA2            : OAR2_OA2_Field := 16#0#;
      --  Interface address
      OA2MSK         : OAR2_OA2MSK_Field := 16#0#;
      --  Own Address 2 masks
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  unspecified
      OA2EN          : Boolean := False;
      --  Own Address 2 enable
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OAR2_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      OA2            at 0 range 1 .. 7;
      OA2MSK         at 0 range 8 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      OA2EN          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIMINGR_SCLL_Field is HAL.UInt8;
   subtype TIMINGR_SCLH_Field is HAL.UInt8;
   subtype TIMINGR_SDADEL_Field is HAL.UInt4;
   subtype TIMINGR_SCLDEL_Field is HAL.UInt4;
   subtype TIMINGR_PRESC_Field is HAL.UInt4;

   --  Timing register
   type TIMINGR_Register is record
      SCLL           : TIMINGR_SCLL_Field := 16#0#;
      --  SCL low period (master mode)
      SCLH           : TIMINGR_SCLH_Field := 16#0#;
      --  SCL high period (master mode)
      SDADEL         : TIMINGR_SDADEL_Field := 16#0#;
      --  Data hold time
      SCLDEL         : TIMINGR_SCLDEL_Field := 16#0#;
      --  Data setup time
      Reserved_24_27 : HAL.UInt4 := 16#0#;
      --  unspecified
      PRESC          : TIMINGR_PRESC_Field := 16#0#;
      --  Timing prescaler
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMINGR_Register use record
      SCLL           at 0 range 0 .. 7;
      SCLH           at 0 range 8 .. 15;
      SDADEL         at 0 range 16 .. 19;
      SCLDEL         at 0 range 20 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      PRESC          at 0 range 28 .. 31;
   end record;

   subtype TIMEOUTR_TIMEOUTA_Field is HAL.UInt12;
   subtype TIMEOUTR_TIMEOUTB_Field is HAL.UInt12;

   --  Status register 1
   type TIMEOUTR_Register is record
      TIMEOUTA       : TIMEOUTR_TIMEOUTA_Field := 16#0#;
      --  Bus timeout A
      TIDLE          : Boolean := False;
      --  Idle clock timeout detection
      Reserved_13_14 : HAL.UInt2 := 16#0#;
      --  unspecified
      TIMOUTEN       : Boolean := False;
      --  Clock timeout enable
      TIMEOUTB       : TIMEOUTR_TIMEOUTB_Field := 16#0#;
      --  Bus timeout B
      Reserved_28_30 : HAL.UInt3 := 16#0#;
      --  unspecified
      TEXTEN         : Boolean := False;
      --  Extended clock timeout enable
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMEOUTR_Register use record
      TIMEOUTA       at 0 range 0 .. 11;
      TIDLE          at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      TIMOUTEN       at 0 range 15 .. 15;
      TIMEOUTB       at 0 range 16 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      TEXTEN         at 0 range 31 .. 31;
   end record;

   subtype ISR_ADDCODE_Field is HAL.UInt7;

   --  Interrupt and Status register
   type ISR_Register is record
      TXE            : Boolean := True;
      --  Transmit data register empty (transmitters)
      TXIS           : Boolean := False;
      --  Transmit interrupt status (transmitters)
      RXNE           : Boolean := False;
      --  Read-only. Receive data register not empty (receivers)
      ADDR           : Boolean := False;
      --  Read-only. Address matched (slave mode)
      NACKF          : Boolean := False;
      --  Read-only. Not acknowledge received flag
      STOPF          : Boolean := False;
      --  Read-only. Stop detection flag
      TC             : Boolean := False;
      --  Read-only. Transfer Complete (master mode)
      TCR            : Boolean := False;
      --  Read-only. Transfer Complete Reload
      BERR           : Boolean := False;
      --  Read-only. Bus error
      ARLO           : Boolean := False;
      --  Read-only. Arbitration lost
      OVR            : Boolean := False;
      --  Read-only. Overrun/Underrun (slave mode)
      PECERR         : Boolean := False;
      --  Read-only. PEC Error in reception
      TIMEOUT        : Boolean := False;
      --  Read-only. Timeout or t_low detection flag
      ALERT          : Boolean := False;
      --  Read-only. SMBus alert
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  unspecified
      BUSY           : Boolean := False;
      --  Read-only. Bus busy
      DIR            : Boolean := False;
      --  Read-only. Transfer direction (Slave mode)
      ADDCODE        : ISR_ADDCODE_Field := 16#0#;
      --  Read-only. Address match code (Slave mode)
      Reserved_24_31 : HAL.UInt8 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      TXE            at 0 range 0 .. 0;
      TXIS           at 0 range 1 .. 1;
      RXNE           at 0 range 2 .. 2;
      ADDR           at 0 range 3 .. 3;
      NACKF          at 0 range 4 .. 4;
      STOPF          at 0 range 5 .. 5;
      TC             at 0 range 6 .. 6;
      TCR            at 0 range 7 .. 7;
      BERR           at 0 range 8 .. 8;
      ARLO           at 0 range 9 .. 9;
      OVR            at 0 range 10 .. 10;
      PECERR         at 0 range 11 .. 11;
      TIMEOUT        at 0 range 12 .. 12;
      ALERT          at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      BUSY           at 0 range 15 .. 15;
      DIR            at 0 range 16 .. 16;
      ADDCODE        at 0 range 17 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Interrupt clear register
   type ICR_Register is record
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  unspecified
      ADDRCF         : Boolean := False;
      --  Write-only. Address Matched flag clear
      NACKCF         : Boolean := False;
      --  Write-only. Not Acknowledge flag clear
      STOPCF         : Boolean := False;
      --  Write-only. Stop detection flag clear
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  unspecified
      BERRCF         : Boolean := False;
      --  Write-only. Bus error flag clear
      ARLOCF         : Boolean := False;
      --  Write-only. Arbitration lost flag clear
      OVRCF          : Boolean := False;
      --  Write-only. Overrun/Underrun flag clear
      PECCF          : Boolean := False;
      --  Write-only. PEC Error flag clear
      TIMOUTCF       : Boolean := False;
      --  Write-only. Timeout detection flag clear
      ALERTCF        : Boolean := False;
      --  Write-only. Alert flag clear
      Reserved_14_31 : HAL.UInt18 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      ADDRCF         at 0 range 3 .. 3;
      NACKCF         at 0 range 4 .. 4;
      STOPCF         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      BERRCF         at 0 range 8 .. 8;
      ARLOCF         at 0 range 9 .. 9;
      OVRCF          at 0 range 10 .. 10;
      PECCF          at 0 range 11 .. 11;
      TIMOUTCF       at 0 range 12 .. 12;
      ALERTCF        at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype PECR_PEC_Field is HAL.UInt8;

   --  PEC register
   type PECR_Register is record
      PEC           : PECR_PEC_Field;
      --  Read-only. Packet error checking register
      Reserved_8_31 : HAL.UInt24;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PECR_Register use record
      PEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RXDR_RXDATA_Field is HAL.UInt8;

   --  Receive data register
   type RXDR_Register is record
      RXDATA        : RXDR_RXDATA_Field;
      --  Read-only. 8-bit receive data
      Reserved_8_31 : HAL.UInt24;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXDR_Register use record
      RXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TXDR_TXDATA_Field is HAL.UInt8;

   --  Transmit data register
   type TXDR_Register is record
      TXDATA        : TXDR_TXDATA_Field := 16#0#;
      --  8-bit transmit data
      Reserved_8_31 : HAL.UInt24 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXDR_Register use record
      TXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Inter-integrated circuit
   type I2C_Peripheral is record
      CR1      : aliased CR1_Register;
      --  Control register 1
      CR2      : aliased CR2_Register;
      --  Control register 2
      OAR1     : aliased OAR1_Register;
      --  Own address register 1
      OAR2     : aliased OAR2_Register;
      --  Own address register 2
      TIMINGR  : aliased TIMINGR_Register;
      --  Timing register
      TIMEOUTR : aliased TIMEOUTR_Register;
      --  Status register 1
      ISR      : aliased ISR_Register;
      --  Interrupt and Status register
      ICR      : aliased ICR_Register;
      --  Interrupt clear register
      PECR     : aliased PECR_Register;
      --  PEC register
      RXDR     : aliased RXDR_Register;
      --  Receive data register
      TXDR     : aliased TXDR_Register;
      --  Transmit data register
   end record
     with Volatile;

   for I2C_Peripheral use record
      CR1      at 16#0# range 0 .. 31;
      CR2      at 16#4# range 0 .. 31;
      OAR1     at 16#8# range 0 .. 31;
      OAR2     at 16#C# range 0 .. 31;
      TIMINGR  at 16#10# range 0 .. 31;
      TIMEOUTR at 16#14# range 0 .. 31;
      ISR      at 16#18# range 0 .. 31;
      ICR      at 16#1C# range 0 .. 31;
      PECR     at 16#20# range 0 .. 31;
      RXDR     at 16#24# range 0 .. 31;
      TXDR     at 16#28# range 0 .. 31;
   end record;

   --  Inter-integrated circuit
   I2C1_Periph : aliased I2C_Peripheral
     with Import, Address => I2C1_Base;

   --  Inter-integrated circuit
   I2C2_Periph : aliased I2C_Peripheral
     with Import, Address => I2C2_Base;

   --  Inter-integrated circuit
   I2C3_Periph : aliased I2C_Peripheral
     with Import, Address => I2C3_Base;

   --  Inter-integrated circuit
   I2C4_Periph : aliased I2C_Peripheral
     with Import, Address => I2C4_Base;

end STM32_SVD.I2C;
