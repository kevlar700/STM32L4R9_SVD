pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

--  Definition of the device's interrupts
package STM32_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   --  Window Watchdog interrupt
   WWDG_Interrupt                : constant := 0;

   --  PVD through EXTI line detection
   PVD_PVM_Interrupt             : constant := 1;

   --  Tamper and TimeStamp interrupts
   TAMP_STAMP_Interrupt          : constant := 2;

   --  RTC Tamper or TimeStamp /CSS on LSE through EXTI line 19 interrupts
   RTC_WKUP_Interrupt            : constant := 3;

   --  Flash global interrupt
   FLASH_Interrupt               : constant := 4;

   --  RCC global interrupt
   RCC_Interrupt                 : constant := 5;

   --  EXTI Line 0 interrupt
   EXTI0_Interrupt               : constant := 6;

   --  EXTI Line 1 interrupt
   EXTI1_Interrupt               : constant := 7;

   --  EXTI Line 2 interrupt
   EXTI2_Interrupt               : constant := 8;

   --  EXTI Line 3 interrupt
   EXTI3_Interrupt               : constant := 9;

   --  EXTI Line 4 interrupt
   EXTI4_Interrupt               : constant := 10;

   --  DMA1 Channel1 global interrupt
   DMA1_CH1_Interrupt            : constant := 11;

   --  DMA1 Channel2 global interrupt
   DMA1_CH2_Interrupt            : constant := 12;

   --  DMA1 Channel3 interrupt
   DMA1_CH3_Interrupt            : constant := 13;

   --  DMA1 Channel4 interrupt
   DMA1_CH4_Interrupt            : constant := 14;

   --  DMA1 Channel5 interrupt
   DMA1_CH5_Interrupt            : constant := 15;

   --  DMA1 Channel6 interrupt
   DMA1_CH6_Interrupt            : constant := 16;

   --  DMA1 Channel 7 interrupt
   DMA1_CH7_Interrupt            : constant := 17;

   --  ADC1 and ADC2 global interrupt
   ADC1_Interrupt                : constant := 18;

   --  CAN1 TX interrupts
   CAN1_TX_Interrupt             : constant := 19;

   --  CAN1 RX0 interrupts
   CAN1_RX0_Interrupt            : constant := 20;

   --  CAN1 RX1 interrupts
   CAN1_RX1_Interrupt            : constant := 21;

   --  CAN1 SCE interrupt
   CAN1_SCE_Interrupt            : constant := 22;

   --  EXTI Line5 to Line9 interrupts
   EXTI9_5_Interrupt             : constant := 23;

   --  TIM1 Break/TIM15 global interrupts
   TIM1_BRK_TIM15_Interrupt      : constant := 24;

   --  TIM1 Update/TIM16 global interrupts
   TIM1_UP_TIM16_Interrupt       : constant := 25;

   --  TIM1 Trigger and Commutation interrupts and TIM17 global interrupt
   TIM1_TRG_COM_TIM17_Interrupt  : constant := 26;

   --  TIM1 Capture Compare interrupt
   TIM1_CC_Interrupt             : constant := 27;

   --  TIM2 global interrupt
   TIM2_Interrupt                : constant := 28;

   --  TIM3 global interrupt
   TIM3_Interrupt                : constant := 29;

   --  TIM4 global interrupt
   TIM4_Interrupt                : constant := 30;

   --  I2C1 event interrupt
   I2C1_EV_Interrupt             : constant := 31;

   --  I2C1 error interrupt
   I2C1_ER_Interrupt             : constant := 32;

   --  I2C2 event interrupt
   I2C2_EV_Interrupt             : constant := 33;

   --  I2C2 error interrupt
   I2C2_ER_Interrupt             : constant := 34;

   --  SPI1 global interrupt
   SPI1_Interrupt                : constant := 35;

   --  SPI2 global interrupt
   SPI2_Interrupt                : constant := 36;

   --  USART1 global interrupt
   USART1_Interrupt              : constant := 37;

   --  USART2 global interrupt
   USART2_Interrupt              : constant := 38;

   --  USART3 global interrupt
   USART3_Interrupt              : constant := 39;

   --  EXTI Lines 10 to 15 interrupts
   EXTI15_10_Interrupt           : constant := 40;

   --  RTC alarms through EXTI line 18 interrupts
   RTC_ALARM_Interrupt           : constant := 41;

   --  DFSDM1_FLT3 global interrupt
   DFSDM1_FLT3_Interrupt         : constant := 42;

   --  TIM8 Break Interrupt
   TIM8_BRK_Interrupt            : constant := 43;

   --  TIM8 Update Interrupt
   TIM8_UP_Interrupt             : constant := 44;

   --  TIM8 Trigger and Commutation Interrupt
   TIM8_TRG_COM_Interrupt        : constant := 45;

   --  TIM8 Capture Compare Interrupt
   TIM8_CC_Interrupt             : constant := 46;

   --  ADC3 global interrupt
   ADC3_Interrupt                : constant := 47;

   --  FMC global Interrupt
   FMC_Interrupt                 : constant := 48;

   --  SDMMC global Interrupt
   SDMMC_Interrupt               : constant := 49;

   --  TIM5 global Interrupt
   TIM5_Interrupt                : constant := 50;

   --  SPI3 global Interrupt
   SPI3_Interrupt                : constant := 51;

   --  UART4 global Interrupt
   UART4_Interrupt               : constant := 52;

   --  UART5 global Interrupt
   UART5_Interrupt               : constant := 53;

   --  TIM6 global and DAC1 and 2 underrun error interrupts
   TIM6_DACUNDER_Interrupt       : constant := 54;

   --  TIM7 global interrupt
   TIM7_Interrupt                : constant := 55;

   --  DMA2 Channel 1 global Interrupt
   DMA2_CH1_Interrupt            : constant := 56;

   --  DMA2 Channel 2 global Interrupt
   DMA2_CH2_Interrupt            : constant := 57;

   --  DMA2 Channel 3 global Interrupt
   DMA2_CH3_Interrupt            : constant := 58;

   --  DMA2 Channel 4 global Interrupt
   DMA2_CH4_Interrupt            : constant := 59;

   --  DMA2 Channel 5 global Interrupt
   DMA2_CH5_Interrupt            : constant := 60;

   --  DFSDM1_FLT0 global interrupt
   DFSDM1_FLT0_Interrupt         : constant := 61;

   --  DFSDM1_FLT1 global interrupt
   DFSDM1_FLT1_Interrupt         : constant := 62;

   --  DFSDM1_FLT2 global interrupt
   DFSDM1_FLT2_Interrupt         : constant := 63;

   --  COMP1 and COMP2 interrupts
   COMP_Interrupt                : constant := 64;

   --  LP TIM1 interrupt
   LPTIM1_Interrupt              : constant := 65;

   --  LP TIM2 interrupt
   LPTIM2_Interrupt              : constant := 66;

   --  USB OTG FS global Interrupt
   OTG_FS_Interrupt              : constant := 67;

   --  DMA2 Channel 6 global Interrupt
   DMA2_CH6_Interrupt            : constant := 68;

   --  DMA2 Channel 7 global Interrupt
   DMA2_CH7_Interrupt            : constant := 69;

   --  LPUART1 global interrupt
   LPUART1_Interrupt             : constant := 70;

   --  OCTOSPI1 global interrupt
   OCTOSPI1_Interrupt            : constant := 71;

   --  I2C3 event interrupt
   I2C3_EV_Interrupt             : constant := 72;

   --  I2C3 error interrupt
   I2C3_ER_Interrupt             : constant := 73;

   --  SAI1 global interrupt
   SAI1_Interrupt                : constant := 74;

   --  SAI2 global interrupt
   SAI2_Interrupt                : constant := 75;

   --  OCTOSPI2 global interrupt
   OCTOSPI2_Interrupt            : constant := 76;

   --  TSC global interrupt
   TSC_Interrupt                 : constant := 77;

   --  DSI global interrupt
   DSIHOST_Interrupt             : constant := 78;

   --  AES global interrupt
   AES_Interrupt                 : constant := 79;

   --  RNG and HASH global interrupt
   RNG_HASH_Interrupt            : constant := 80;

   --  Floating point interrupt
   FPU_Interrupt                 : constant := 81;

   --  CRS global interrupt
   CRS_Interrupt                 : constant := 82;

   --  I2C4 error interrupt
   I2C4_ER_Interrupt             : constant := 83;

   --  I2C4 event interrupt
   I2C4_EV_Interrupt             : constant := 84;

   --  DCMI global interrupt
   DCMI_Interrupt                : constant := 85;

   --  DMA2D global interrupt
   DMA2D_Interrupt               : constant := 90;

   --  LTDC global interrupt
   LCD_TFT_Interrupt             : constant := 91;

   --  LTDC global error interrupt
   LCD_TFT_ER_Interrupt          : constant := 92;

   --  GFXMMU global error interrupt
   GFXMMU_Interrupt              : constant := 93;

   --  DMAMUX Overrun interrupt
   DMAMUX_OVR_Interrupt          : constant := 94;

end STM32_SVD.Interrupts;
