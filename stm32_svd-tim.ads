pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.TIM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR1_CMS_Field is HAL.UInt2;
   subtype CR1_CKD_Field is HAL.UInt2;

   --  control register 1
   type CR1_Register is record
      CEN            : Boolean := False;
      --  Counter enable
      UDIS           : Boolean := False;
      --  Update disable
      URS            : Boolean := False;
      --  Update request source
      OPM            : Boolean := False;
      --  One-pulse mode
      DIR            : Boolean := False;
      --  Direction
      CMS            : CR1_CMS_Field := 16#0#;
      --  Center-aligned mode selection
      ARPE           : Boolean := False;
      --  Auto-reload preload enable
      CKD            : CR1_CKD_Field := 16#0#;
      --  Clock division
      Reserved_10_31 : HAL.UInt22 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      CEN            at 0 range 0 .. 0;
      UDIS           at 0 range 1 .. 1;
      URS            at 0 range 2 .. 2;
      OPM            at 0 range 3 .. 3;
      DIR            at 0 range 4 .. 4;
      CMS            at 0 range 5 .. 6;
      ARPE           at 0 range 7 .. 7;
      CKD            at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype CR2_MMS_Field is HAL.UInt3;
   subtype CR2_MMS2_Field is HAL.UInt4;

   --  control register 2
   type CR2_Register is record
      CCPC           : Boolean := False;
      --  Capture/compare preloaded control
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  unspecified
      CCUS           : Boolean := False;
      --  Capture/compare control update selection
      CCDS           : Boolean := False;
      --  Capture/compare DMA selection
      MMS            : CR2_MMS_Field := 16#0#;
      --  Master mode selection
      TI1S           : Boolean := False;
      --  TI1 selection
      OIS1           : Boolean := False;
      --  Output Idle state 1
      OIS1N          : Boolean := False;
      --  Output Idle state 1
      OIS2           : Boolean := False;
      --  Output Idle state 2
      OIS2N          : Boolean := False;
      --  Output Idle state 2
      OIS3           : Boolean := False;
      --  Output Idle state 3
      OIS3N          : Boolean := False;
      --  Output Idle state 3
      OIS4           : Boolean := False;
      --  Output Idle state 4
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  unspecified
      OIS5           : Boolean := False;
      --  Output Idle state 5
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  unspecified
      OIS6           : Boolean := False;
      --  Output Idle state 5
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  unspecified
      MMS2           : CR2_MMS2_Field := 16#0#;
      --  Master mode selection 2
      Reserved_24_31 : HAL.UInt8 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      CCPC           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CCUS           at 0 range 2 .. 2;
      CCDS           at 0 range 3 .. 3;
      MMS            at 0 range 4 .. 6;
      TI1S           at 0 range 7 .. 7;
      OIS1           at 0 range 8 .. 8;
      OIS1N          at 0 range 9 .. 9;
      OIS2           at 0 range 10 .. 10;
      OIS2N          at 0 range 11 .. 11;
      OIS3           at 0 range 12 .. 12;
      OIS3N          at 0 range 13 .. 13;
      OIS4           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      OIS5           at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      OIS6           at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      MMS2           at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SMCR_SMS_Field is HAL.UInt3;
   subtype SMCR_TS_Field is HAL.UInt3;
   subtype SMCR_ETF_Field is HAL.UInt4;
   subtype SMCR_ETPS_Field is HAL.UInt2;

   --  slave mode control register
   type SMCR_Register is record
      SMS            : SMCR_SMS_Field := 16#0#;
      --  Slave mode selection
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  unspecified
      TS             : SMCR_TS_Field := 16#0#;
      --  Trigger selection
      MSM            : Boolean := False;
      --  Master/Slave mode
      ETF            : SMCR_ETF_Field := 16#0#;
      --  External trigger filter
      ETPS           : SMCR_ETPS_Field := 16#0#;
      --  External trigger prescaler
      ECE            : Boolean := False;
      --  External clock enable
      ETP            : Boolean := False;
      --  External trigger polarity
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMCR_Register use record
      SMS            at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TS             at 0 range 4 .. 6;
      MSM            at 0 range 7 .. 7;
      ETF            at 0 range 8 .. 11;
      ETPS           at 0 range 12 .. 13;
      ECE            at 0 range 14 .. 14;
      ETP            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DMA/Interrupt enable register
   type DIER_Register is record
      UIE            : Boolean := False;
      --  Update interrupt enable
      CC1IE          : Boolean := False;
      --  Capture/Compare 1 interrupt enable
      CC2IE          : Boolean := False;
      --  Capture/Compare 2 interrupt enable
      CC3IE          : Boolean := False;
      --  Capture/Compare 3 interrupt enable
      CC4IE          : Boolean := False;
      --  Capture/Compare 4 interrupt enable
      COMIE          : Boolean := False;
      --  COM interrupt enable
      TIE            : Boolean := False;
      --  Trigger interrupt enable
      BIE            : Boolean := False;
      --  Break interrupt enable
      UDE            : Boolean := False;
      --  Update DMA request enable
      CC1DE          : Boolean := False;
      --  Capture/Compare 1 DMA request enable
      CC2DE          : Boolean := False;
      --  Capture/Compare 2 DMA request enable
      CC3DE          : Boolean := False;
      --  Capture/Compare 3 DMA request enable
      CC4DE          : Boolean := False;
      --  Capture/Compare 4 DMA request enable
      COMDE          : Boolean := False;
      --  COM DMA request enable
      TDE            : Boolean := False;
      --  Trigger DMA request enable
      Reserved_15_31 : HAL.UInt17 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIER_Register use record
      UIE            at 0 range 0 .. 0;
      CC1IE          at 0 range 1 .. 1;
      CC2IE          at 0 range 2 .. 2;
      CC3IE          at 0 range 3 .. 3;
      CC4IE          at 0 range 4 .. 4;
      COMIE          at 0 range 5 .. 5;
      TIE            at 0 range 6 .. 6;
      BIE            at 0 range 7 .. 7;
      UDE            at 0 range 8 .. 8;
      CC1DE          at 0 range 9 .. 9;
      CC2DE          at 0 range 10 .. 10;
      CC3DE          at 0 range 11 .. 11;
      CC4DE          at 0 range 12 .. 12;
      COMDE          at 0 range 13 .. 13;
      TDE            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  status register
   type SR_Register is record
      UIF            : Boolean := False;
      --  Update interrupt flag
      CC1IF          : Boolean := False;
      --  Capture/compare 1 interrupt flag
      CC2IF          : Boolean := False;
      --  Capture/Compare 2 interrupt flag
      CC3IF          : Boolean := False;
      --  Capture/Compare 3 interrupt flag
      CC4IF          : Boolean := False;
      --  Capture/Compare 4 interrupt flag
      COMIF          : Boolean := False;
      --  COM interrupt flag
      TIF            : Boolean := False;
      --  Trigger interrupt flag
      BIF            : Boolean := False;
      --  Break interrupt flag
      B2IF           : Boolean := False;
      --  Break 2 interrupt flag
      CC1OF          : Boolean := False;
      --  Capture/Compare 1 overcapture flag
      CC2OF          : Boolean := False;
      --  Capture/compare 2 overcapture flag
      CC3OF          : Boolean := False;
      --  Capture/Compare 3 overcapture flag
      CC4OF          : Boolean := False;
      --  Capture/Compare 4 overcapture flag
      SBIF           : Boolean := False;
      --  System Break flag
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  unspecified
      CC5IF          : Boolean := False;
      --  Capture/Compare 5 interrupt flag
      CC6IF          : Boolean := False;
      --  Capture/Compare 6 interrupt flag
      Reserved_18_31 : HAL.UInt14 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      CC2IF          at 0 range 2 .. 2;
      CC3IF          at 0 range 3 .. 3;
      CC4IF          at 0 range 4 .. 4;
      COMIF          at 0 range 5 .. 5;
      TIF            at 0 range 6 .. 6;
      BIF            at 0 range 7 .. 7;
      B2IF           at 0 range 8 .. 8;
      CC1OF          at 0 range 9 .. 9;
      CC2OF          at 0 range 10 .. 10;
      CC3OF          at 0 range 11 .. 11;
      CC4OF          at 0 range 12 .. 12;
      SBIF           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CC5IF          at 0 range 16 .. 16;
      CC6IF          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  event generation register
   type EGR_Register is record
      UG            : Boolean := False;
      --  Write-only. Update generation
      CC1G          : Boolean := False;
      --  Write-only. Capture/compare 1 generation
      CC2G          : Boolean := False;
      --  Write-only. Capture/compare 2 generation
      CC3G          : Boolean := False;
      --  Write-only. Capture/compare 3 generation
      CC4G          : Boolean := False;
      --  Write-only. Capture/compare 4 generation
      COMG          : Boolean := False;
      --  Write-only. Capture/Compare control update generation
      TG            : Boolean := False;
      --  Write-only. Trigger generation
      BG            : Boolean := False;
      --  Write-only. Break generation
      Reserved_8_31 : HAL.UInt24 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      CC2G          at 0 range 2 .. 2;
      CC3G          at 0 range 3 .. 3;
      CC4G          at 0 range 4 .. 4;
      COMG          at 0 range 5 .. 5;
      TG            at 0 range 6 .. 6;
      BG            at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CCMR1_Output_CC1S_Field is HAL.UInt2;
   subtype CCMR1_Output_OC1M_Field is HAL.UInt3;
   subtype CCMR1_Output_CC2S_Field is HAL.UInt2;
   subtype CCMR1_Output_OC2M_Field is HAL.UInt3;

   --  Capture/Compare mode register 1 (output mode)
   type CCMR1_Output_Register is record
      CC1S           : CCMR1_Output_CC1S_Field := 16#0#;
      --  Capture/Compare 1 selection
      OC1FE          : Boolean := False;
      --  Output Compare 1 fast enable
      OC1PE          : Boolean := False;
      --  Output Compare 1 preload enable
      OC1M           : CCMR1_Output_OC1M_Field := 16#0#;
      --  Output Compare 1 mode
      OC1CE          : Boolean := False;
      --  Output Compare 1 clear enable
      CC2S           : CCMR1_Output_CC2S_Field := 16#0#;
      --  Capture/Compare 2 selection
      OC2FE          : Boolean := False;
      --  Output Compare 2 fast enable
      OC2PE          : Boolean := False;
      --  Output Compare 2 preload enable
      OC2M           : CCMR1_Output_OC2M_Field := 16#0#;
      --  Output Compare 2 mode
      OC2CE          : Boolean := False;
      --  Output Compare 2 clear enable
      OC1M_bit3      : Boolean := False;
      --  Output Compare 1 mode bit 3
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  unspecified
      OC2M_bit3      : Boolean := False;
      --  Output Compare 2 mode bit 3
      Reserved_25_31 : HAL.UInt7 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCMR1_Output_Register use record
      CC1S           at 0 range 0 .. 1;
      OC1FE          at 0 range 2 .. 2;
      OC1PE          at 0 range 3 .. 3;
      OC1M           at 0 range 4 .. 6;
      OC1CE          at 0 range 7 .. 7;
      CC2S           at 0 range 8 .. 9;
      OC2FE          at 0 range 10 .. 10;
      OC2PE          at 0 range 11 .. 11;
      OC2M           at 0 range 12 .. 14;
      OC2CE          at 0 range 15 .. 15;
      OC1M_bit3      at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      OC2M_bit3      at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype CCMR1_Input_CC1S_Field is HAL.UInt2;
   subtype CCMR1_Input_IC1PSC_Field is HAL.UInt2;
   subtype CCMR1_Input_IC1F_Field is HAL.UInt4;
   subtype CCMR1_Input_CC2S_Field is HAL.UInt2;
   subtype CCMR1_Input_IC2PSC_Field is HAL.UInt2;
   subtype CCMR1_Input_IC2F_Field is HAL.UInt4;

   --  Capture/Compare mode register 1 (input mode)
   type CCMR1_Input_Register is record
      CC1S           : CCMR1_Input_CC1S_Field := 16#0#;
      --  Capture/Compare 1 selection
      IC1PSC         : CCMR1_Input_IC1PSC_Field := 16#0#;
      --  Input capture 1 prescaler
      IC1F           : CCMR1_Input_IC1F_Field := 16#0#;
      --  Input capture 1 filter
      CC2S           : CCMR1_Input_CC2S_Field := 16#0#;
      --  Capture/Compare 2 selection
      IC2PSC         : CCMR1_Input_IC2PSC_Field := 16#0#;
      --  Input capture 2 prescaler
      IC2F           : CCMR1_Input_IC2F_Field := 16#0#;
      --  Input capture 2 filter
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCMR1_Input_Register use record
      CC1S           at 0 range 0 .. 1;
      IC1PSC         at 0 range 2 .. 3;
      IC1F           at 0 range 4 .. 7;
      CC2S           at 0 range 8 .. 9;
      IC2PSC         at 0 range 10 .. 11;
      IC2F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CCMR2_Output_CC3S_Field is HAL.UInt2;
   subtype CCMR2_Output_OC3M_Field is HAL.UInt3;
   subtype CCMR2_Output_CC4S_Field is HAL.UInt2;
   subtype CCMR2_Output_OC4M_Field is HAL.UInt3;

   --  Capture/Compare mode register 2 (output mode)
   type CCMR2_Output_Register is record
      CC3S           : CCMR2_Output_CC3S_Field := 16#0#;
      --  Capture/Compare 3 selection
      OC3FE          : Boolean := False;
      --  Output compare 3 fast enable
      OC3PE          : Boolean := False;
      --  Output compare 3 preload enable
      OC3M           : CCMR2_Output_OC3M_Field := 16#0#;
      --  Output compare 3 mode
      OC3CE          : Boolean := False;
      --  Output compare 3 clear enable
      CC4S           : CCMR2_Output_CC4S_Field := 16#0#;
      --  Capture/Compare 4 selection
      OC4FE          : Boolean := False;
      --  Output compare 4 fast enable
      OC4PE          : Boolean := False;
      --  Output compare 4 preload enable
      OC4M           : CCMR2_Output_OC4M_Field := 16#0#;
      --  Output compare 4 mode
      OC4CE          : Boolean := False;
      --  Output compare 4 clear enable
      OC3M_bit3      : Boolean := False;
      --  Output Compare 3 mode bit 3
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  unspecified
      OC4M_bit3      : Boolean := False;
      --  Output Compare 4 mode bit 3
      Reserved_25_31 : HAL.UInt7 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCMR2_Output_Register use record
      CC3S           at 0 range 0 .. 1;
      OC3FE          at 0 range 2 .. 2;
      OC3PE          at 0 range 3 .. 3;
      OC3M           at 0 range 4 .. 6;
      OC3CE          at 0 range 7 .. 7;
      CC4S           at 0 range 8 .. 9;
      OC4FE          at 0 range 10 .. 10;
      OC4PE          at 0 range 11 .. 11;
      OC4M           at 0 range 12 .. 14;
      OC4CE          at 0 range 15 .. 15;
      OC3M_bit3      at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      OC4M_bit3      at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype CCMR2_Input_CC3S_Field is HAL.UInt2;
   subtype CCMR2_Input_IC3PSC_Field is HAL.UInt2;
   subtype CCMR2_Input_IC3F_Field is HAL.UInt4;
   subtype CCMR2_Input_CC4S_Field is HAL.UInt2;
   subtype CCMR2_Input_IC4PSC_Field is HAL.UInt2;
   subtype CCMR2_Input_IC4F_Field is HAL.UInt4;

   --  Capture/Compare mode register 2 (input mode)
   type CCMR2_Input_Register is record
      CC3S           : CCMR2_Input_CC3S_Field := 16#0#;
      --  Capture/compare 3 selection
      IC3PSC         : CCMR2_Input_IC3PSC_Field := 16#0#;
      --  Input capture 3 prescaler
      IC3F           : CCMR2_Input_IC3F_Field := 16#0#;
      --  Input capture 3 filter
      CC4S           : CCMR2_Input_CC4S_Field := 16#0#;
      --  Capture/Compare 4 selection
      IC4PSC         : CCMR2_Input_IC4PSC_Field := 16#0#;
      --  Input capture 4 prescaler
      IC4F           : CCMR2_Input_IC4F_Field := 16#0#;
      --  Input capture 4 filter
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCMR2_Input_Register use record
      CC3S           at 0 range 0 .. 1;
      IC3PSC         at 0 range 2 .. 3;
      IC3F           at 0 range 4 .. 7;
      CC4S           at 0 range 8 .. 9;
      IC4PSC         at 0 range 10 .. 11;
      IC4F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Capture/Compare enable register
   type CCER_Register is record
      CC1E           : Boolean := False;
      --  Capture/Compare 1 output enable
      CC1P           : Boolean := False;
      --  Capture/Compare 1 output Polarity
      CC1NE          : Boolean := False;
      --  Capture/Compare 1 complementary output enable
      CC1NP          : Boolean := False;
      --  Capture/Compare 1 output Polarity
      CC2E           : Boolean := False;
      --  Capture/Compare 2 output enable
      CC2P           : Boolean := False;
      --  Capture/Compare 2 output Polarity
      CC2NE          : Boolean := False;
      --  Capture/Compare 2 complementary output enable
      CC2NP          : Boolean := False;
      --  Capture/Compare 2 output Polarity
      CC3E           : Boolean := False;
      --  Capture/Compare 3 output enable
      CC3P           : Boolean := False;
      --  Capture/Compare 3 output Polarity
      CC3NE          : Boolean := False;
      --  Capture/Compare 3 complementary output enable
      CC3NP          : Boolean := False;
      --  Capture/Compare 3 output Polarity
      CC4E           : Boolean := False;
      --  Capture/Compare 4 output enable
      CC4P           : Boolean := False;
      --  Capture/Compare 3 output Polarity
      Reserved_14_31 : HAL.UInt18 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCER_Register use record
      CC1E           at 0 range 0 .. 0;
      CC1P           at 0 range 1 .. 1;
      CC1NE          at 0 range 2 .. 2;
      CC1NP          at 0 range 3 .. 3;
      CC2E           at 0 range 4 .. 4;
      CC2P           at 0 range 5 .. 5;
      CC2NE          at 0 range 6 .. 6;
      CC2NP          at 0 range 7 .. 7;
      CC3E           at 0 range 8 .. 8;
      CC3P           at 0 range 9 .. 9;
      CC3NE          at 0 range 10 .. 10;
      CC3NP          at 0 range 11 .. 11;
      CC4E           at 0 range 12 .. 12;
      CC4P           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype CNT_CNT_Field is HAL.UInt16;

   --  counter
   type CNT_Register is record
      CNT            : CNT_CNT_Field := 16#0#;
      --  counter value
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PSC_PSC_Field is HAL.UInt16;

   --  prescaler
   type PSC_Register is record
      PSC            : PSC_PSC_Field := 16#0#;
      --  Prescaler value
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSC_Register use record
      PSC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ARR_ARR_Field is HAL.UInt16;

   --  auto-reload register
   type ARR_Register is record
      ARR            : ARR_ARR_Field := 16#0#;
      --  Auto-reload value
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ARR_Register use record
      ARR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RCR_REP_Field is HAL.UInt8;

   --  repetition counter register
   type RCR_Register is record
      REP           : RCR_REP_Field := 16#0#;
      --  Repetition counter value
      Reserved_8_31 : HAL.UInt24 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCR_Register use record
      REP           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CCR1_CCR1_Field is HAL.UInt16;

   --  Capture/Compare register 1
   type CCR1_Register is record
      CCR1           : CCR1_CCR1_Field := 16#0#;
      --  Capture/Compare 1 value
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR1_Register use record
      CCR1           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CCR2_CCR2_Field is HAL.UInt16;

   --  Capture/Compare register 2
   type CCR2_Register is record
      CCR2           : CCR2_CCR2_Field := 16#0#;
      --  Capture/Compare 2 value
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR2_Register use record
      CCR2           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CCR3_CCR3_Field is HAL.UInt16;

   --  Capture/Compare register 3
   type CCR3_Register is record
      CCR3           : CCR3_CCR3_Field := 16#0#;
      --  Capture/Compare value
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR3_Register use record
      CCR3           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CCR4_CCR4_Field is HAL.UInt16;

   --  Capture/Compare register 4
   type CCR4_Register is record
      CCR4           : CCR4_CCR4_Field := 16#0#;
      --  Capture/Compare value
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR4_Register use record
      CCR4           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype BDTR_DTG_Field is HAL.UInt8;
   subtype BDTR_LOCK_Field is HAL.UInt2;

   --  break and dead-time register
   type BDTR_Register is record
      DTG            : BDTR_DTG_Field := 16#0#;
      --  Dead-time generator setup
      LOCK           : BDTR_LOCK_Field := 16#0#;
      --  Lock configuration
      OSSI           : Boolean := False;
      --  Off-state selection for Idle mode
      OSSR           : Boolean := False;
      --  Off-state selection for Run mode
      BKE            : Boolean := False;
      --  Break enable
      BKP            : Boolean := False;
      --  Break polarity
      AOE            : Boolean := False;
      --  Automatic output enable
      MOE            : Boolean := False;
      --  Main output enable
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BDTR_Register use record
      DTG            at 0 range 0 .. 7;
      LOCK           at 0 range 8 .. 9;
      OSSI           at 0 range 10 .. 10;
      OSSR           at 0 range 11 .. 11;
      BKE            at 0 range 12 .. 12;
      BKP            at 0 range 13 .. 13;
      AOE            at 0 range 14 .. 14;
      MOE            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DCR_DBA_Field is HAL.UInt5;
   subtype DCR_DBL_Field is HAL.UInt5;

   --  DMA control register
   type DCR_Register is record
      DBA            : DCR_DBA_Field := 16#0#;
      --  DMA base address
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  unspecified
      DBL            : DCR_DBL_Field := 16#0#;
      --  DMA burst length
      Reserved_13_31 : HAL.UInt19 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCR_Register use record
      DBA            at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DBL            at 0 range 8 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype DMAR_DMAB_Field is HAL.UInt16;

   --  DMA address for full transfer
   type DMAR_Register is record
      DMAB           : DMAR_DMAB_Field := 16#0#;
      --  DMA register for burst accesses
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAR_Register use record
      DMAB           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OR1_ETR_ADC1_RMP_Field is HAL.UInt2;

   --  DMA address for full transfer
   type OR1_Register is record
      ETR_ADC1_RMP  : OR1_ETR_ADC1_RMP_Field := 16#0#;
      --  External trigger remap on ADC1 analog watchdog
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  unspecified
      TI1_RMP       : Boolean := False;
      --  Input Capture 1 remap
      Reserved_5_31 : HAL.UInt27 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OR1_Register use record
      ETR_ADC1_RMP  at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      TI1_RMP       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype CCMR3_Output_OC5M_Field is HAL.UInt3;
   subtype CCMR3_Output_OC6M_Field is HAL.UInt3;

   --  Capture/Compare mode register 3 (output mode)
   type CCMR3_Output_Register is record
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  unspecified
      OC5FE          : Boolean := False;
      --  Output compare 5 fast enable
      OC5PE          : Boolean := False;
      --  Output compare 5 preload enable
      OC5M           : CCMR3_Output_OC5M_Field := 16#0#;
      --  Output compare 5 mode
      OC5CE          : Boolean := False;
      --  Output compare 5 clear enable
      Reserved_8_9   : HAL.UInt2 := 16#0#;
      --  unspecified
      OC6FE          : Boolean := False;
      --  Output compare 6 fast enable
      OC6PE          : Boolean := False;
      --  Output compare 6 preload enable
      OC6M           : CCMR3_Output_OC6M_Field := 16#0#;
      --  Output compare 6 mode
      OC6CE          : Boolean := False;
      --  Output compare 6 clear enable
      OC5M_bit3      : Boolean := False;
      --  Output Compare 5 mode bit 3
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  unspecified
      OC6M_bit3      : Boolean := False;
      --  Output Compare 6 mode bit 3
      Reserved_25_31 : HAL.UInt7 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCMR3_Output_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      OC5FE          at 0 range 2 .. 2;
      OC5PE          at 0 range 3 .. 3;
      OC5M           at 0 range 4 .. 6;
      OC5CE          at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      OC6FE          at 0 range 10 .. 10;
      OC6PE          at 0 range 11 .. 11;
      OC6M           at 0 range 12 .. 14;
      OC6CE          at 0 range 15 .. 15;
      OC5M_bit3      at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      OC6M_bit3      at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype CCR5_CCR5_Field is HAL.UInt16;

   --  CCR5_GC5C array
   type CCR5_GC5C_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for CCR5_GC5C
   type CCR5_GC5C_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt3;
            --  GC5C as a value
         when True =>
            Arr : CCR5_GC5C_Field_Array;
            --  GC5C as an array
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CCR5_GC5C_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Capture/Compare register 5
   type CCR5_Register is record
      CCR5           : CCR5_CCR5_Field := 16#0#;
      --  Capture/Compare value
      Reserved_16_28 : HAL.UInt13 := 16#0#;
      --  unspecified
      GC5C           : CCR5_GC5C_Field := (As_Array => False, Val => 16#0#);
      --  Group Channel 5 and Channel 1
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR5_Register use record
      CCR5           at 0 range 0 .. 15;
      Reserved_16_28 at 0 range 16 .. 28;
      GC5C           at 0 range 29 .. 31;
   end record;

   subtype CCR6_CCR6_Field is HAL.UInt16;

   --  Capture/Compare register 6
   type CCR6_Register is record
      CCR6           : CCR6_CCR6_Field := 16#0#;
      --  Capture/Compare value
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR6_Register use record
      CCR6           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OR2_ETRSEL_Field is HAL.UInt3;

   --  DMA address for full transfer
   type OR2_Register is record
      BKINE          : Boolean := True;
      --  BRK BKIN input enable
      BKCMP1E        : Boolean := False;
      --  BRK COMP1 enable
      BKCMP2E        : Boolean := False;
      --  BRK COMP2 enable
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  unspecified
      BKDF1BK0E      : Boolean := False;
      --  BRK DFSDM1_BREAK0 enable
      BKINP          : Boolean := False;
      --  BRK BKIN input polarity
      BKCMP1P        : Boolean := False;
      --  BRK COMP1 input polarity
      BKCMP2P        : Boolean := False;
      --  BRK COMP2 input polarity
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  unspecified
      ETRSEL         : OR2_ETRSEL_Field := 16#0#;
      --  ETR source selection
      Reserved_17_31 : HAL.UInt15 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OR2_Register use record
      BKINE          at 0 range 0 .. 0;
      BKCMP1E        at 0 range 1 .. 1;
      BKCMP2E        at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      BKDF1BK0E      at 0 range 8 .. 8;
      BKINP          at 0 range 9 .. 9;
      BKCMP1P        at 0 range 10 .. 10;
      BKCMP2P        at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      ETRSEL         at 0 range 14 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  DMA address for full transfer
   type OR3_Register is record
      BK2INE         : Boolean := True;
      --  BRK2 BKIN input enable
      BK2CMP1E       : Boolean := False;
      --  BRK2 COMP1 enable
      BK2CMP2E       : Boolean := False;
      --  BRK2 COMP2 enable
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  unspecified
      BK2DF1BK1E     : Boolean := False;
      --  BRK2 DFSDM_BREAK1 enable
      BK2INP         : Boolean := False;
      --  BRK2 BKIN input polarity
      BK2CMP1P       : Boolean := False;
      --  BRK2 COMP1 input polarity
      BK2CMP2P       : Boolean := False;
      --  BRK2 COMP2 input polarity
      Reserved_12_31 : HAL.UInt20 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OR3_Register use record
      BK2INE         at 0 range 0 .. 0;
      BK2CMP1E       at 0 range 1 .. 1;
      BK2CMP2E       at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      BK2DF1BK1E     at 0 range 8 .. 8;
      BK2INP         at 0 range 9 .. 9;
      BK2CMP1P       at 0 range 10 .. 10;
      BK2CMP2P       at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  control register 2
   type CR2_Register_1 is record
      Reserved_0_2  : HAL.UInt3 := 16#0#;
      --  unspecified
      CCDS          : Boolean := False;
      --  Capture/compare DMA selection
      MMS           : CR2_MMS_Field := 16#0#;
      --  Master mode selection
      TI1S          : Boolean := False;
      --  TI1 selection
      Reserved_8_31 : HAL.UInt24 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register_1 use record
      Reserved_0_2  at 0 range 0 .. 2;
      CCDS          at 0 range 3 .. 3;
      MMS           at 0 range 4 .. 6;
      TI1S          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DMA/Interrupt enable register
   type DIER_Register_1 is record
      UIE            : Boolean := False;
      --  Update interrupt enable
      CC1IE          : Boolean := False;
      --  Capture/Compare 1 interrupt enable
      CC2IE          : Boolean := False;
      --  Capture/Compare 2 interrupt enable
      CC3IE          : Boolean := False;
      --  Capture/Compare 3 interrupt enable
      CC4IE          : Boolean := False;
      --  Capture/Compare 4 interrupt enable
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  unspecified
      TIE            : Boolean := False;
      --  Trigger interrupt enable
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  unspecified
      UDE            : Boolean := False;
      --  Update DMA request enable
      CC1DE          : Boolean := False;
      --  Capture/Compare 1 DMA request enable
      CC2DE          : Boolean := False;
      --  Capture/Compare 2 DMA request enable
      CC3DE          : Boolean := False;
      --  Capture/Compare 3 DMA request enable
      CC4DE          : Boolean := False;
      --  Capture/Compare 4 DMA request enable
      COMDE          : Boolean := False;
      --  COM DMA request enable
      TDE            : Boolean := False;
      --  Trigger DMA request enable
      Reserved_15_31 : HAL.UInt17 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIER_Register_1 use record
      UIE            at 0 range 0 .. 0;
      CC1IE          at 0 range 1 .. 1;
      CC2IE          at 0 range 2 .. 2;
      CC3IE          at 0 range 3 .. 3;
      CC4IE          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      TIE            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      UDE            at 0 range 8 .. 8;
      CC1DE          at 0 range 9 .. 9;
      CC2DE          at 0 range 10 .. 10;
      CC3DE          at 0 range 11 .. 11;
      CC4DE          at 0 range 12 .. 12;
      COMDE          at 0 range 13 .. 13;
      TDE            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  status register
   type SR_Register_1 is record
      UIF            : Boolean := False;
      --  Update interrupt flag
      CC1IF          : Boolean := False;
      --  Capture/compare 1 interrupt flag
      CC2IF          : Boolean := False;
      --  Capture/Compare 2 interrupt flag
      CC3IF          : Boolean := False;
      --  Capture/Compare 3 interrupt flag
      CC4IF          : Boolean := False;
      --  Capture/Compare 4 interrupt flag
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  unspecified
      TIF            : Boolean := False;
      --  Trigger interrupt flag
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  unspecified
      CC1OF          : Boolean := False;
      --  Capture/Compare 1 overcapture flag
      CC2OF          : Boolean := False;
      --  Capture/compare 2 overcapture flag
      CC3OF          : Boolean := False;
      --  Capture/Compare 3 overcapture flag
      CC4OF          : Boolean := False;
      --  Capture/Compare 4 overcapture flag
      Reserved_13_31 : HAL.UInt19 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register_1 use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      CC2IF          at 0 range 2 .. 2;
      CC3IF          at 0 range 3 .. 3;
      CC4IF          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      TIF            at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      CC1OF          at 0 range 9 .. 9;
      CC2OF          at 0 range 10 .. 10;
      CC3OF          at 0 range 11 .. 11;
      CC4OF          at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  event generation register
   type EGR_Register_1 is record
      UG            : Boolean := False;
      --  Write-only. Update generation
      CC1G          : Boolean := False;
      --  Write-only. Capture/compare 1 generation
      CC2G          : Boolean := False;
      --  Write-only. Capture/compare 2 generation
      CC3G          : Boolean := False;
      --  Write-only. Capture/compare 3 generation
      CC4G          : Boolean := False;
      --  Write-only. Capture/compare 4 generation
      Reserved_5_5  : HAL.Bit := 16#0#;
      --  unspecified
      TG            : Boolean := False;
      --  Write-only. Trigger generation
      Reserved_7_31 : HAL.UInt25 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EGR_Register_1 use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      CC2G          at 0 range 2 .. 2;
      CC3G          at 0 range 3 .. 3;
      CC4G          at 0 range 4 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      TG            at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Capture/Compare enable register
   type CCER_Register_1 is record
      CC1E           : Boolean := False;
      --  Capture/Compare 1 output enable
      CC1P           : Boolean := False;
      --  Capture/Compare 1 output Polarity
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  unspecified
      CC1NP          : Boolean := False;
      --  Capture/Compare 1 output Polarity
      CC2E           : Boolean := False;
      --  Capture/Compare 2 output enable
      CC2P           : Boolean := False;
      --  Capture/Compare 2 output Polarity
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  unspecified
      CC2NP          : Boolean := False;
      --  Capture/Compare 2 output Polarity
      CC3E           : Boolean := False;
      --  Capture/Compare 3 output enable
      CC3P           : Boolean := False;
      --  Capture/Compare 3 output Polarity
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  unspecified
      CC3NP          : Boolean := False;
      --  Capture/Compare 3 output Polarity
      CC4E           : Boolean := False;
      --  Capture/Compare 4 output enable
      CC4P           : Boolean := False;
      --  Capture/Compare 3 output Polarity
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  unspecified
      CC4NP          : Boolean := False;
      --  Capture/Compare 4 output Polarity
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCER_Register_1 use record
      CC1E           at 0 range 0 .. 0;
      CC1P           at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      CC1NP          at 0 range 3 .. 3;
      CC2E           at 0 range 4 .. 4;
      CC2P           at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      CC2NP          at 0 range 7 .. 7;
      CC3E           at 0 range 8 .. 8;
      CC3P           at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      CC3NP          at 0 range 11 .. 11;
      CC4E           at 0 range 12 .. 12;
      CC4P           at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      CC4NP          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OR_ETR_RMP_Field is HAL.UInt3;
   subtype OR_TI4_RMP_Field is HAL.UInt2;

   --  TIM2 option register
   type OR_Register is record
      ETR_RMP       : OR_ETR_RMP_Field := 16#0#;
      --  Timer2 ETR remap
      TI4_RMP       : OR_TI4_RMP_Field := 16#0#;
      --  Internal trigger
      Reserved_5_31 : HAL.UInt27 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OR_Register use record
      ETR_RMP       at 0 range 0 .. 2;
      TI4_RMP       at 0 range 3 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  counter
   type CNT_Register_1 is record
      CNT            : CNT_CNT_Field := 16#0#;
      --  counter value
      Reserved_16_30 : HAL.UInt15 := 16#0#;
      --  unspecified
      UIFCPY         : Boolean := False;
      --  Read-only. UIF Copy
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNT_Register_1 use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPY         at 0 range 31 .. 31;
   end record;

   subtype CCR1_CCR1_L_Field is HAL.UInt16;
   subtype CCR1_CCR1_H_Field is HAL.UInt16;

   --  Capture/Compare register 1
   type CCR1_Register_1 is record
      CCR1_L : CCR1_CCR1_L_Field := 16#0#;
      --  Low Capture/Compare 1 value
      CCR1_H : CCR1_CCR1_H_Field := 16#0#;
      --  High Capture/Compare 1 value (TIM2 only)
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR1_Register_1 use record
      CCR1_L at 0 range 0 .. 15;
      CCR1_H at 0 range 16 .. 31;
   end record;

   subtype CCR2_CCR2_L_Field is HAL.UInt16;
   subtype CCR2_CCR2_H_Field is HAL.UInt16;

   --  Capture/Compare register 2
   type CCR2_Register_1 is record
      CCR2_L : CCR2_CCR2_L_Field := 16#0#;
      --  Low Capture/Compare 2 value
      CCR2_H : CCR2_CCR2_H_Field := 16#0#;
      --  High Capture/Compare 2 value (TIM2 only)
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR2_Register_1 use record
      CCR2_L at 0 range 0 .. 15;
      CCR2_H at 0 range 16 .. 31;
   end record;

   subtype CCR3_CCR3_L_Field is HAL.UInt16;
   subtype CCR3_CCR3_H_Field is HAL.UInt16;

   --  Capture/Compare register 3
   type CCR3_Register_1 is record
      CCR3_L : CCR3_CCR3_L_Field := 16#0#;
      --  Low Capture/Compare value
      CCR3_H : CCR3_CCR3_H_Field := 16#0#;
      --  High Capture/Compare value (TIM2 only)
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR3_Register_1 use record
      CCR3_L at 0 range 0 .. 15;
      CCR3_H at 0 range 16 .. 31;
   end record;

   subtype CCR4_CCR4_L_Field is HAL.UInt16;
   subtype CCR4_CCR4_H_Field is HAL.UInt16;

   --  Capture/Compare register 4
   type CCR4_Register_1 is record
      CCR4_L : CCR4_CCR4_L_Field := 16#0#;
      --  Low Capture/Compare value
      CCR4_H : CCR4_CCR4_H_Field := 16#0#;
      --  High Capture/Compare value (TIM2 only)
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR4_Register_1 use record
      CCR4_L at 0 range 0 .. 15;
      CCR4_H at 0 range 16 .. 31;
   end record;

   --  control register 1
   type CR1_Register_1 is record
      CEN           : Boolean := False;
      --  Counter enable
      UDIS          : Boolean := False;
      --  Update disable
      URS           : Boolean := False;
      --  Update request source
      OPM           : Boolean := False;
      --  One-pulse mode
      Reserved_4_6  : HAL.UInt3 := 16#0#;
      --  unspecified
      ARPE          : Boolean := False;
      --  Auto-reload preload enable
      Reserved_8_31 : HAL.UInt24 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register_1 use record
      CEN           at 0 range 0 .. 0;
      UDIS          at 0 range 1 .. 1;
      URS           at 0 range 2 .. 2;
      OPM           at 0 range 3 .. 3;
      Reserved_4_6  at 0 range 4 .. 6;
      ARPE          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  control register 2
   type CR2_Register_2 is record
      Reserved_0_3  : HAL.UInt4 := 16#0#;
      --  unspecified
      MMS           : CR2_MMS_Field := 16#0#;
      --  Master mode selection
      Reserved_7_31 : HAL.UInt25 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register_2 use record
      Reserved_0_3  at 0 range 0 .. 3;
      MMS           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  DMA/Interrupt enable register
   type DIER_Register_2 is record
      UIE           : Boolean := False;
      --  Update interrupt enable
      Reserved_1_7  : HAL.UInt7 := 16#0#;
      --  unspecified
      UDE           : Boolean := False;
      --  Update DMA request enable
      Reserved_9_31 : HAL.UInt23 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIER_Register_2 use record
      UIE           at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      UDE           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  status register
   type SR_Register_2 is record
      UIF           : Boolean := False;
      --  Update interrupt flag
      Reserved_1_31 : HAL.UInt31 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register_2 use record
      UIF           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  event generation register
   type EGR_Register_2 is record
      UG            : Boolean := False;
      --  Write-only. Update generation
      Reserved_1_31 : HAL.UInt31 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EGR_Register_2 use record
      UG            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  status register
   type SR_Register_3 is record
      UIF            : Boolean := False;
      --  Update interrupt flag
      CC1IF          : Boolean := False;
      --  Capture/compare 1 interrupt flag
      CC2IF          : Boolean := False;
      --  Capture/Compare 2 interrupt flag
      CC3IF          : Boolean := False;
      --  Capture/Compare 3 interrupt flag
      CC4IF          : Boolean := False;
      --  Capture/Compare 4 interrupt flag
      COMIF          : Boolean := False;
      --  COM interrupt flag
      TIF            : Boolean := False;
      --  Trigger interrupt flag
      BIF            : Boolean := False;
      --  Break interrupt flag
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  unspecified
      CC1OF          : Boolean := False;
      --  Capture/Compare 1 overcapture flag
      CC2OF          : Boolean := False;
      --  Capture/compare 2 overcapture flag
      CC3OF          : Boolean := False;
      --  Capture/Compare 3 overcapture flag
      CC4OF          : Boolean := False;
      --  Capture/Compare 4 overcapture flag
      Reserved_13_31 : HAL.UInt19 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register_3 use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      CC2IF          at 0 range 2 .. 2;
      CC3IF          at 0 range 3 .. 3;
      CC4IF          at 0 range 4 .. 4;
      COMIF          at 0 range 5 .. 5;
      TIF            at 0 range 6 .. 6;
      BIF            at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      CC1OF          at 0 range 9 .. 9;
      CC2OF          at 0 range 10 .. 10;
      CC3OF          at 0 range 11 .. 11;
      CC4OF          at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype OR1_ETR_ADC2_RMP_Field is HAL.UInt2;

   --  DMA address for full transfer
   type OR1_Register_1 is record
      ETR_ADC2_RMP  : OR1_ETR_ADC2_RMP_Field := 16#0#;
      --  External trigger remap on ADC2 analog watchdog
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  unspecified
      TI1_RMP       : Boolean := False;
      --  Input Capture 1 remap
      Reserved_5_31 : HAL.UInt27 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OR1_Register_1 use record
      ETR_ADC2_RMP  at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      TI1_RMP       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  DMA address for full transfer
   type OR2_Register_1 is record
      BKINE          : Boolean := True;
      --  BRK BKIN input enable
      BKCMP1E        : Boolean := False;
      --  BRK COMP1 enable
      BKCMP2E        : Boolean := False;
      --  BRK COMP2 enable
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  unspecified
      BKDF1BK2E      : Boolean := False;
      --  BRK DFSDM_BREAK2 enable
      BKINP          : Boolean := False;
      --  BRK BKIN input polarity
      BKCMP1P        : Boolean := False;
      --  BRK COMP1 input polarity
      BKCMP2P        : Boolean := False;
      --  BRK COMP2 input polarity
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  unspecified
      ETRSEL         : OR2_ETRSEL_Field := 16#0#;
      --  ETR source selection
      Reserved_17_31 : HAL.UInt15 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OR2_Register_1 use record
      BKINE          at 0 range 0 .. 0;
      BKCMP1E        at 0 range 1 .. 1;
      BKCMP2E        at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      BKDF1BK2E      at 0 range 8 .. 8;
      BKINP          at 0 range 9 .. 9;
      BKCMP1P        at 0 range 10 .. 10;
      BKCMP2P        at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      ETRSEL         at 0 range 14 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  DMA address for full transfer
   type OR3_Register_1 is record
      BK2INE         : Boolean := True;
      --  BRK2 BKIN input enable
      BK2CMP1E       : Boolean := False;
      --  BRK2 COMP1 enable
      BK2CMP2E       : Boolean := False;
      --  BRK2 COMP2 enable
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  unspecified
      BK2DF1BK3E     : Boolean := False;
      --  BRK2 DFSDM_BREAK3 enable
      BK2INP         : Boolean := False;
      --  BRK2 BKIN input polarity
      BK2CMP1P       : Boolean := False;
      --  BRK2 COMP1 input polarity
      BK2CMP2P       : Boolean := False;
      --  BRK2 COMP2 input polarity
      Reserved_12_31 : HAL.UInt20 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OR3_Register_1 use record
      BK2INE         at 0 range 0 .. 0;
      BK2CMP1E       at 0 range 1 .. 1;
      BK2CMP2E       at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      BK2DF1BK3E     at 0 range 8 .. 8;
      BK2INP         at 0 range 9 .. 9;
      BK2CMP1P       at 0 range 10 .. 10;
      BK2CMP2P       at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  control register 1
   type CR1_Register_2 is record
      CEN            : Boolean := False;
      --  Counter enable
      UDIS           : Boolean := False;
      --  Update disable
      URS            : Boolean := False;
      --  Update request source
      OPM            : Boolean := False;
      --  One-pulse mode
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  unspecified
      ARPE           : Boolean := False;
      --  Auto-reload preload enable
      CKD            : CR1_CKD_Field := 16#0#;
      --  Clock division
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  unspecified
      UIFREMAP       : Boolean := False;
      --  UIF status bit remapping
      Reserved_12_31 : HAL.UInt20 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register_2 use record
      CEN            at 0 range 0 .. 0;
      UDIS           at 0 range 1 .. 1;
      URS            at 0 range 2 .. 2;
      OPM            at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      ARPE           at 0 range 7 .. 7;
      CKD            at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      UIFREMAP       at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  control register 2
   type CR2_Register_3 is record
      CCPC           : Boolean := False;
      --  Capture/compare preloaded control
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  unspecified
      CCUS           : Boolean := False;
      --  Capture/compare control update selection
      CCDS           : Boolean := False;
      --  Capture/compare DMA selection
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  unspecified
      OIS1           : Boolean := False;
      --  Output Idle state 1
      OIS1N          : Boolean := False;
      --  Output Idle state 1
      Reserved_10_31 : HAL.UInt22 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register_3 use record
      CCPC           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CCUS           at 0 range 2 .. 2;
      CCDS           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      OIS1           at 0 range 8 .. 8;
      OIS1N          at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  DMA/Interrupt enable register
   type DIER_Register_3 is record
      UIE            : Boolean := False;
      --  Update interrupt enable
      CC1IE          : Boolean := False;
      --  Capture/Compare 1 interrupt enable
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  unspecified
      COMIE          : Boolean := False;
      --  COM interrupt enable
      TIE            : Boolean := False;
      --  Trigger interrupt enable
      BIE            : Boolean := False;
      --  Break interrupt enable
      UDE            : Boolean := False;
      --  Update DMA request enable
      CC1DE          : Boolean := False;
      --  Capture/Compare 1 DMA request enable
      Reserved_10_12 : HAL.UInt3 := 16#0#;
      --  unspecified
      COMDE          : Boolean := False;
      --  COM DMA request enable
      TDE            : Boolean := False;
      --  Trigger DMA request enable
      Reserved_15_31 : HAL.UInt17 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIER_Register_3 use record
      UIE            at 0 range 0 .. 0;
      CC1IE          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      COMIE          at 0 range 5 .. 5;
      TIE            at 0 range 6 .. 6;
      BIE            at 0 range 7 .. 7;
      UDE            at 0 range 8 .. 8;
      CC1DE          at 0 range 9 .. 9;
      Reserved_10_12 at 0 range 10 .. 12;
      COMDE          at 0 range 13 .. 13;
      TDE            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  status register
   type SR_Register_4 is record
      UIF            : Boolean := False;
      --  Update interrupt flag
      CC1IF          : Boolean := False;
      --  Capture/compare 1 interrupt flag
      CC2IF          : Boolean := False;
      --  Capture/compare 1 interrupt flag
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  unspecified
      COMIF          : Boolean := False;
      --  COM interrupt flag
      TIF            : Boolean := False;
      --  Trigger interrupt flag
      BIF            : Boolean := False;
      --  Break interrupt flag
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  unspecified
      CC1OF          : Boolean := False;
      --  Capture/Compare 1 overcapture flag
      CC2OF          : Boolean := False;
      --  Capture/Compare 2 overcapture flag
      Reserved_11_31 : HAL.UInt21 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register_4 use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      CC2IF          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      COMIF          at 0 range 5 .. 5;
      TIF            at 0 range 6 .. 6;
      BIF            at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      CC1OF          at 0 range 9 .. 9;
      CC2OF          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  event generation register
   type EGR_Register_3 is record
      UG            : Boolean := False;
      --  Write-only. Update generation
      CC1G          : Boolean := False;
      --  Write-only. Capture/compare 1 generation
      Reserved_2_4  : HAL.UInt3 := 16#0#;
      --  unspecified
      COMG          : Boolean := False;
      --  Write-only. Capture/Compare control update generation
      TG            : Boolean := False;
      --  Write-only. Trigger generation
      BG            : Boolean := False;
      --  Write-only. Break generation
      Reserved_8_31 : HAL.UInt24 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EGR_Register_3 use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      Reserved_2_4  at 0 range 2 .. 4;
      COMG          at 0 range 5 .. 5;
      TG            at 0 range 6 .. 6;
      BG            at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Capture/Compare mode register (output mode)
   type CCMR1_Output_Register_1 is record
      CC1S           : CCMR1_Output_CC1S_Field := 16#0#;
      --  Capture/Compare 1 selection
      OC1FE          : Boolean := False;
      --  Output Compare 1 fast enable
      OC1PE          : Boolean := False;
      --  Output Compare 1 preload enable
      OC1M           : CCMR1_Output_OC1M_Field := 16#0#;
      --  Output Compare 1 mode
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  unspecified
      OC1M_bit3      : Boolean := False;
      --  Output Compare 1 mode bit 3
      Reserved_17_31 : HAL.UInt15 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCMR1_Output_Register_1 use record
      CC1S           at 0 range 0 .. 1;
      OC1FE          at 0 range 2 .. 2;
      OC1PE          at 0 range 3 .. 3;
      OC1M           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      OC1M_bit3      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Capture/Compare mode register 1 (input mode)
   type CCMR1_Input_Register_1 is record
      CC1S          : CCMR1_Input_CC1S_Field := 16#0#;
      --  Capture/Compare 1 selection
      IC1PSC        : CCMR1_Input_IC1PSC_Field := 16#0#;
      --  Input capture 1 prescaler
      IC1F          : CCMR1_Input_IC1F_Field := 16#0#;
      --  Input capture 1 filter
      Reserved_8_31 : HAL.UInt24 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCMR1_Input_Register_1 use record
      CC1S          at 0 range 0 .. 1;
      IC1PSC        at 0 range 2 .. 3;
      IC1F          at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Capture/Compare enable register
   type CCER_Register_2 is record
      CC1E          : Boolean := False;
      --  Capture/Compare 1 output enable
      CC1P          : Boolean := False;
      --  Capture/Compare 1 output Polarity
      CC1NE         : Boolean := False;
      --  Capture/Compare 1 complementary output enable
      CC1NP         : Boolean := False;
      --  Capture/Compare 1 output Polarity
      Reserved_4_31 : HAL.UInt28 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCER_Register_2 use record
      CC1E          at 0 range 0 .. 0;
      CC1P          at 0 range 1 .. 1;
      CC1NE         at 0 range 2 .. 2;
      CC1NP         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype BDTR_BKF_Field is HAL.UInt4;

   --  break and dead-time register
   type BDTR_Register_1 is record
      DTG            : BDTR_DTG_Field := 16#0#;
      --  Dead-time generator setup
      LOCK           : BDTR_LOCK_Field := 16#0#;
      --  Lock configuration
      OSSI           : Boolean := False;
      --  Off-state selection for Idle mode
      OSSR           : Boolean := False;
      --  Off-state selection for Run mode
      BKE            : Boolean := False;
      --  Break enable
      BKP            : Boolean := False;
      --  Break polarity
      AOE            : Boolean := False;
      --  Automatic output enable
      MOE            : Boolean := False;
      --  Main output enable
      BKF            : BDTR_BKF_Field := 16#0#;
      --  Break filter
      Reserved_20_31 : HAL.UInt12 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BDTR_Register_1 use record
      DTG            at 0 range 0 .. 7;
      LOCK           at 0 range 8 .. 9;
      OSSI           at 0 range 10 .. 10;
      OSSR           at 0 range 11 .. 11;
      BKE            at 0 range 12 .. 12;
      BKP            at 0 range 13 .. 13;
      AOE            at 0 range 14 .. 14;
      MOE            at 0 range 15 .. 15;
      BKF            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype OR1_Encoder_Mode_Field is HAL.UInt2;

   --  TIM15 option register 1
   type OR1_Register_2 is record
      TI1_RMP       : Boolean := False;
      --  Input capture 1 remap
      Encoder_Mode  : OR1_Encoder_Mode_Field := 16#0#;
      --  Encoder Mode
      Reserved_3_31 : HAL.UInt29 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OR1_Register_2 use record
      TI1_RMP       at 0 range 0 .. 0;
      Encoder_Mode  at 0 range 1 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  TIM15 option register 2
   type OR2_Register_2 is record
      BKINE          : Boolean := False;
      --  BRK BKIN input enable
      BKCMP1E        : Boolean := False;
      --  BRK COMP1 enable
      BKCMP2E        : Boolean := False;
      --  BRK COMP2 enable
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  unspecified
      BKDFBK1E       : Boolean := False;
      --  BRK DFSDM_BREAK0 enable
      BKINP          : Boolean := False;
      --  BRK BKIN input polarity
      BKCMP1P        : Boolean := False;
      --  BRK COMP1 input polarity
      BKCMP2P        : Boolean := False;
      --  BRK COMP2 input polarit
      Reserved_12_31 : HAL.UInt20 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OR2_Register_2 use record
      BKINE          at 0 range 0 .. 0;
      BKCMP1E        at 0 range 1 .. 1;
      BKCMP2E        at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      BKDFBK1E       at 0 range 8 .. 8;
      BKINP          at 0 range 9 .. 9;
      BKCMP1P        at 0 range 10 .. 10;
      BKCMP2P        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  status register
   type SR_Register_5 is record
      UIF            : Boolean := False;
      --  Update interrupt flag
      CC1IF          : Boolean := False;
      --  Capture/compare 1 interrupt flag
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  unspecified
      COMIF          : Boolean := False;
      --  COM interrupt flag
      TIF            : Boolean := False;
      --  Trigger interrupt flag
      BIF            : Boolean := False;
      --  Break interrupt flag
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  unspecified
      CC1OF          : Boolean := False;
      --  Capture/Compare 1 overcapture flag
      Reserved_10_31 : HAL.UInt22 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register_5 use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      COMIF          at 0 range 5 .. 5;
      TIF            at 0 range 6 .. 6;
      BIF            at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      CC1OF          at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Capture/Compare mode register (output mode)
   type CCMR1_Output_Register_2 is record
      CC1S           : CCMR1_Output_CC1S_Field := 16#0#;
      --  Capture/Compare 1 selection
      OC1FE          : Boolean := False;
      --  Output Compare 1 fast enable
      OC1PE          : Boolean := False;
      --  Output Compare 1 preload enable
      OC1M           : CCMR1_Output_OC1M_Field := 16#0#;
      --  Output Compare 1 mode
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  unspecified
      OC1M_bit3      : Boolean := False;
      --  Output Compare 1 mode bit 3
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  unspecified
      OC2M_bit3      : Boolean := False;
      --  Output Compare 2 mode bit 3
      Reserved_25_31 : HAL.UInt7 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCMR1_Output_Register_2 use record
      CC1S           at 0 range 0 .. 1;
      OC1FE          at 0 range 2 .. 2;
      OC1PE          at 0 range 3 .. 3;
      OC1M           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      OC1M_bit3      at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      OC2M_bit3      at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype OR1_TI1_RMP_Field is HAL.UInt3;

   --  TIM16 option register 1
   type OR1_Register_3 is record
      TI1_RMP       : OR1_TI1_RMP_Field := 16#0#;
      --  Input capture 1 remap
      Reserved_3_31 : HAL.UInt29 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OR1_Register_3 use record
      TI1_RMP       at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype OR1_TI1_RMP_Field_1 is HAL.UInt2;

   --  TIM17 option register 1
   type OR1_Register_4 is record
      TI1_RMP       : OR1_TI1_RMP_Field_1 := 16#0#;
      --  Input capture 1 remap
      Reserved_2_31 : HAL.UInt30 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OR1_Register_4 use record
      TI1_RMP       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type TIM1_Disc is
     (Output,
      Input);

   --  Advanced-timers
   type TIM1_Peripheral
     (Discriminent : TIM1_Disc := Output)
   is record
      CR1          : aliased CR1_Register;
      --  control register 1
      CR2          : aliased CR2_Register;
      --  control register 2
      SMCR         : aliased SMCR_Register;
      --  slave mode control register
      DIER         : aliased DIER_Register;
      --  DMA/Interrupt enable register
      SR           : aliased SR_Register;
      --  status register
      EGR          : aliased EGR_Register;
      --  event generation register
      CCER         : aliased CCER_Register;
      --  Capture/Compare enable register
      CNT          : aliased CNT_Register;
      --  counter
      PSC          : aliased PSC_Register;
      --  prescaler
      ARR          : aliased ARR_Register;
      --  auto-reload register
      RCR          : aliased RCR_Register;
      --  repetition counter register
      CCR1         : aliased CCR1_Register;
      --  Capture/Compare register 1
      CCR2         : aliased CCR2_Register;
      --  Capture/Compare register 2
      CCR3         : aliased CCR3_Register;
      --  Capture/Compare register 3
      CCR4         : aliased CCR4_Register;
      --  Capture/Compare register 4
      BDTR         : aliased BDTR_Register;
      --  break and dead-time register
      DCR          : aliased DCR_Register;
      --  DMA control register
      DMAR         : aliased DMAR_Register;
      --  DMA address for full transfer
      OR1          : aliased OR1_Register;
      --  DMA address for full transfer
      CCMR3_Output : aliased CCMR3_Output_Register;
      --  Capture/Compare mode register 3 (output mode)
      CCR5         : aliased CCR5_Register;
      --  Capture/Compare register 5
      CCR6         : aliased CCR6_Register;
      --  Capture/Compare register 6
      OR2          : aliased OR2_Register;
      --  DMA address for full transfer
      OR3          : aliased OR3_Register;
      --  DMA address for full transfer
      case Discriminent is
         when Output =>
            CCMR1_Output : aliased CCMR1_Output_Register;
            --  Capture/Compare mode register 1 (output mode)
            CCMR2_Output : aliased CCMR2_Output_Register;
            --  Capture/Compare mode register 2 (output mode)
         when Input =>
            CCMR1_Input : aliased CCMR1_Input_Register;
            --  Capture/Compare mode register 1 (input mode)
            CCMR2_Input : aliased CCMR2_Input_Register;
            --  Capture/Compare mode register 2 (input mode)
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM1_Peripheral use record
      CR1          at 16#0# range 0 .. 31;
      CR2          at 16#4# range 0 .. 31;
      SMCR         at 16#8# range 0 .. 31;
      DIER         at 16#C# range 0 .. 31;
      SR           at 16#10# range 0 .. 31;
      EGR          at 16#14# range 0 .. 31;
      CCER         at 16#20# range 0 .. 31;
      CNT          at 16#24# range 0 .. 31;
      PSC          at 16#28# range 0 .. 31;
      ARR          at 16#2C# range 0 .. 31;
      RCR          at 16#30# range 0 .. 31;
      CCR1         at 16#34# range 0 .. 31;
      CCR2         at 16#38# range 0 .. 31;
      CCR3         at 16#3C# range 0 .. 31;
      CCR4         at 16#40# range 0 .. 31;
      BDTR         at 16#44# range 0 .. 31;
      DCR          at 16#48# range 0 .. 31;
      DMAR         at 16#4C# range 0 .. 31;
      OR1          at 16#50# range 0 .. 31;
      CCMR3_Output at 16#54# range 0 .. 31;
      CCR5         at 16#58# range 0 .. 31;
      CCR6         at 16#5C# range 0 .. 31;
      OR2          at 16#60# range 0 .. 31;
      OR3          at 16#64# range 0 .. 31;
      CCMR1_Output at 16#18# range 0 .. 31;
      CCMR2_Output at 16#1C# range 0 .. 31;
      CCMR1_Input  at 16#18# range 0 .. 31;
      CCMR2_Input  at 16#1C# range 0 .. 31;
   end record;

   --  Advanced-timers
   TIM1_Periph : aliased TIM1_Peripheral
     with Import, Address => TIM1_Base;

   type TIM2_Disc is
     (Output,
      Input);

   --  General-purpose-timers
   type TIM2_Peripheral
     (Discriminent : TIM2_Disc := Output)
   is record
      CR1          : aliased CR1_Register;
      --  control register 1
      CR2          : aliased CR2_Register_1;
      --  control register 2
      SMCR         : aliased SMCR_Register;
      --  slave mode control register
      DIER         : aliased DIER_Register_1;
      --  DMA/Interrupt enable register
      SR           : aliased SR_Register_1;
      --  status register
      EGR          : aliased EGR_Register_1;
      --  event generation register
      CCER         : aliased CCER_Register_1;
      --  Capture/Compare enable register
      CNT          : aliased HAL.UInt32;
      --  counter
      PSC          : aliased PSC_Register;
      --  prescaler
      ARR          : aliased HAL.UInt32;
      --  auto-reload register
      CCR1         : aliased HAL.UInt32;
      --  Capture/Compare register 1
      CCR2         : aliased HAL.UInt32;
      --  Capture/Compare register 2
      CCR3         : aliased HAL.UInt32;
      --  Capture/Compare register 3
      CCR4         : aliased HAL.UInt32;
      --  Capture/Compare register 4
      DCR          : aliased DCR_Register;
      --  DMA control register
      DMAR         : aliased DMAR_Register;
      --  DMA address for full transfer
      OR_k         : aliased OR_Register;
      --  TIM2 option register
      case Discriminent is
         when Output =>
            CCMR1_Output : aliased CCMR1_Output_Register;
            --  Capture/Compare mode register 1 (output mode)
            CCMR2_Output : aliased CCMR2_Output_Register;
            --  Capture/Compare mode register 2 (output mode)
         when Input =>
            CCMR1_Input : aliased CCMR1_Input_Register;
            --  Capture/Compare mode register 1 (input mode)
            CCMR2_Input : aliased CCMR2_Input_Register;
            --  Capture/Compare mode register 2 (input mode)
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM2_Peripheral use record
      CR1          at 16#0# range 0 .. 31;
      CR2          at 16#4# range 0 .. 31;
      SMCR         at 16#8# range 0 .. 31;
      DIER         at 16#C# range 0 .. 31;
      SR           at 16#10# range 0 .. 31;
      EGR          at 16#14# range 0 .. 31;
      CCER         at 16#20# range 0 .. 31;
      CNT          at 16#24# range 0 .. 31;
      PSC          at 16#28# range 0 .. 31;
      ARR          at 16#2C# range 0 .. 31;
      CCR1         at 16#34# range 0 .. 31;
      CCR2         at 16#38# range 0 .. 31;
      CCR3         at 16#3C# range 0 .. 31;
      CCR4         at 16#40# range 0 .. 31;
      DCR          at 16#48# range 0 .. 31;
      DMAR         at 16#4C# range 0 .. 31;
      OR_k         at 16#50# range 0 .. 31;
      CCMR1_Output at 16#18# range 0 .. 31;
      CCMR2_Output at 16#1C# range 0 .. 31;
      CCMR1_Input  at 16#18# range 0 .. 31;
      CCMR2_Input  at 16#1C# range 0 .. 31;
   end record;

   --  General-purpose-timers
   TIM2_Periph : aliased TIM2_Peripheral
     with Import, Address => TIM2_Base;

   --  General-purpose-timers
   TIM5_Periph : aliased TIM2_Peripheral
     with Import, Address => TIM5_Base;

   type TIM3_Disc is
     (Output,
      Input);

   --  General-purpose-timers
   type TIM3_Peripheral
     (Discriminent : TIM3_Disc := Output)
   is record
      CR1          : aliased CR1_Register;
      --  control register 1
      CR2          : aliased CR2_Register_1;
      --  control register 2
      SMCR         : aliased SMCR_Register;
      --  slave mode control register
      DIER         : aliased DIER_Register_1;
      --  DMA/Interrupt enable register
      SR           : aliased SR_Register_1;
      --  status register
      EGR          : aliased EGR_Register_1;
      --  event generation register
      CCER         : aliased CCER_Register_1;
      --  Capture/Compare enable register
      CNT          : aliased CNT_Register_1;
      --  counter
      PSC          : aliased PSC_Register;
      --  prescaler
      ARR          : aliased ARR_Register;
      --  auto-reload register
      CCR1         : aliased CCR1_Register_1;
      --  Capture/Compare register 1
      CCR2         : aliased CCR2_Register_1;
      --  Capture/Compare register 2
      CCR3         : aliased CCR3_Register_1;
      --  Capture/Compare register 3
      CCR4         : aliased CCR4_Register_1;
      --  Capture/Compare register 4
      DCR          : aliased DCR_Register;
      --  DMA control register
      DMAR         : aliased DMAR_Register;
      --  DMA address for full transfer
      OR_k         : aliased OR_Register;
      --  TIM2 option register
      case Discriminent is
         when Output =>
            CCMR1_Output : aliased CCMR1_Output_Register;
            --  Capture/Compare mode register 1 (output mode)
            CCMR2_Output : aliased CCMR2_Output_Register;
            --  Capture/Compare mode register 2 (output mode)
         when Input =>
            CCMR1_Input : aliased CCMR1_Input_Register;
            --  Capture/Compare mode register 1 (input mode)
            CCMR2_Input : aliased CCMR2_Input_Register;
            --  Capture/Compare mode register 2 (input mode)
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM3_Peripheral use record
      CR1          at 16#0# range 0 .. 31;
      CR2          at 16#4# range 0 .. 31;
      SMCR         at 16#8# range 0 .. 31;
      DIER         at 16#C# range 0 .. 31;
      SR           at 16#10# range 0 .. 31;
      EGR          at 16#14# range 0 .. 31;
      CCER         at 16#20# range 0 .. 31;
      CNT          at 16#24# range 0 .. 31;
      PSC          at 16#28# range 0 .. 31;
      ARR          at 16#2C# range 0 .. 31;
      CCR1         at 16#34# range 0 .. 31;
      CCR2         at 16#38# range 0 .. 31;
      CCR3         at 16#3C# range 0 .. 31;
      CCR4         at 16#40# range 0 .. 31;
      DCR          at 16#48# range 0 .. 31;
      DMAR         at 16#4C# range 0 .. 31;
      OR_k         at 16#50# range 0 .. 31;
      CCMR1_Output at 16#18# range 0 .. 31;
      CCMR2_Output at 16#1C# range 0 .. 31;
      CCMR1_Input  at 16#18# range 0 .. 31;
      CCMR2_Input  at 16#1C# range 0 .. 31;
   end record;

   --  General-purpose-timers
   TIM3_Periph : aliased TIM3_Peripheral
     with Import, Address => TIM3_Base;

   --  General-purpose-timers
   TIM4_Periph : aliased TIM3_Peripheral
     with Import, Address => TIM4_Base;

   --  Basic-timers
   type TIM6_Peripheral is record
      CR1  : aliased CR1_Register_1;
      --  control register 1
      CR2  : aliased CR2_Register_2;
      --  control register 2
      DIER : aliased DIER_Register_2;
      --  DMA/Interrupt enable register
      SR   : aliased SR_Register_2;
      --  status register
      EGR  : aliased EGR_Register_2;
      --  event generation register
      CNT  : aliased CNT_Register;
      --  counter
      PSC  : aliased PSC_Register;
      --  prescaler
      ARR  : aliased ARR_Register;
      --  auto-reload register
   end record
     with Volatile;

   for TIM6_Peripheral use record
      CR1  at 16#0# range 0 .. 31;
      CR2  at 16#4# range 0 .. 31;
      DIER at 16#C# range 0 .. 31;
      SR   at 16#10# range 0 .. 31;
      EGR  at 16#14# range 0 .. 31;
      CNT  at 16#24# range 0 .. 31;
      PSC  at 16#28# range 0 .. 31;
      ARR  at 16#2C# range 0 .. 31;
   end record;

   --  Basic-timers
   TIM6_Periph : aliased TIM6_Peripheral
     with Import, Address => TIM6_Base;

   --  Basic-timers
   TIM7_Periph : aliased TIM6_Peripheral
     with Import, Address => TIM7_Base;

   type TIM8_Disc is
     (Output,
      Input);

   --  Advanced-timers
   type TIM8_Peripheral
     (Discriminent : TIM8_Disc := Output)
   is record
      CR1          : aliased CR1_Register;
      --  control register 1
      CR2          : aliased CR2_Register;
      --  control register 2
      SMCR         : aliased SMCR_Register;
      --  slave mode control register
      DIER         : aliased DIER_Register;
      --  DMA/Interrupt enable register
      SR           : aliased SR_Register_3;
      --  status register
      EGR          : aliased EGR_Register;
      --  event generation register
      CCER         : aliased CCER_Register;
      --  Capture/Compare enable register
      CNT          : aliased CNT_Register;
      --  counter
      PSC          : aliased PSC_Register;
      --  prescaler
      ARR          : aliased ARR_Register;
      --  auto-reload register
      RCR          : aliased RCR_Register;
      --  repetition counter register
      CCR1         : aliased CCR1_Register;
      --  Capture/Compare register 1
      CCR2         : aliased CCR2_Register;
      --  Capture/Compare register 2
      CCR3         : aliased CCR3_Register;
      --  Capture/Compare register 3
      CCR4         : aliased CCR4_Register;
      --  Capture/Compare register 4
      BDTR         : aliased BDTR_Register;
      --  break and dead-time register
      DCR          : aliased DCR_Register;
      --  DMA control register
      DMAR         : aliased DMAR_Register;
      --  DMA address for full transfer
      OR1          : aliased OR1_Register_1;
      --  DMA address for full transfer
      CCMR3_Output : aliased CCMR3_Output_Register;
      --  Capture/Compare mode register 3 (output mode)
      CCR5         : aliased CCR5_Register;
      --  Capture/Compare register 5
      CCR6         : aliased CCR6_Register;
      --  Capture/Compare register 6
      OR2          : aliased OR2_Register_1;
      --  DMA address for full transfer
      OR3          : aliased OR3_Register_1;
      --  DMA address for full transfer
      case Discriminent is
         when Output =>
            CCMR1_Output : aliased CCMR1_Output_Register;
            --  Capture/Compare mode register 1 (output mode)
            CCMR2_Output : aliased CCMR2_Output_Register;
            --  Capture/Compare mode register 2 (output mode)
         when Input =>
            CCMR1_Input : aliased CCMR1_Input_Register;
            --  Capture/Compare mode register 1 (input mode)
            CCMR2_Input : aliased CCMR2_Input_Register;
            --  Capture/Compare mode register 2 (input mode)
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM8_Peripheral use record
      CR1          at 16#0# range 0 .. 31;
      CR2          at 16#4# range 0 .. 31;
      SMCR         at 16#8# range 0 .. 31;
      DIER         at 16#C# range 0 .. 31;
      SR           at 16#10# range 0 .. 31;
      EGR          at 16#14# range 0 .. 31;
      CCER         at 16#20# range 0 .. 31;
      CNT          at 16#24# range 0 .. 31;
      PSC          at 16#28# range 0 .. 31;
      ARR          at 16#2C# range 0 .. 31;
      RCR          at 16#30# range 0 .. 31;
      CCR1         at 16#34# range 0 .. 31;
      CCR2         at 16#38# range 0 .. 31;
      CCR3         at 16#3C# range 0 .. 31;
      CCR4         at 16#40# range 0 .. 31;
      BDTR         at 16#44# range 0 .. 31;
      DCR          at 16#48# range 0 .. 31;
      DMAR         at 16#4C# range 0 .. 31;
      OR1          at 16#50# range 0 .. 31;
      CCMR3_Output at 16#54# range 0 .. 31;
      CCR5         at 16#58# range 0 .. 31;
      CCR6         at 16#5C# range 0 .. 31;
      OR2          at 16#60# range 0 .. 31;
      OR3          at 16#64# range 0 .. 31;
      CCMR1_Output at 16#18# range 0 .. 31;
      CCMR2_Output at 16#1C# range 0 .. 31;
      CCMR1_Input  at 16#18# range 0 .. 31;
      CCMR2_Input  at 16#1C# range 0 .. 31;
   end record;

   --  Advanced-timers
   TIM8_Periph : aliased TIM8_Peripheral
     with Import, Address => TIM8_Base;

   type TIM15_Disc is
     (Output,
      Input);

   --  General purpose timers
   type TIM15_Peripheral
     (Discriminent : TIM15_Disc := Output)
   is record
      CR1          : aliased CR1_Register_2;
      --  control register 1
      CR2          : aliased CR2_Register_3;
      --  control register 2
      DIER         : aliased DIER_Register_3;
      --  DMA/Interrupt enable register
      SR           : aliased SR_Register_4;
      --  status register
      EGR          : aliased EGR_Register_3;
      --  event generation register
      CCER         : aliased CCER_Register_2;
      --  Capture/Compare enable register
      CNT          : aliased CNT_Register_1;
      --  counter
      PSC          : aliased PSC_Register;
      --  prescaler
      ARR          : aliased ARR_Register;
      --  auto-reload register
      RCR          : aliased RCR_Register;
      --  repetition counter register
      CCR1         : aliased CCR1_Register;
      --  Capture/Compare register 1
      BDTR         : aliased BDTR_Register_1;
      --  break and dead-time register
      DCR          : aliased DCR_Register;
      --  DMA control register
      DMAR         : aliased DMAR_Register;
      --  DMA address for full transfer
      OR1          : aliased OR1_Register_2;
      --  TIM15 option register 1
      OR2          : aliased OR2_Register_2;
      --  TIM15 option register 2
      case Discriminent is
         when Output =>
            CCMR1_Output : aliased CCMR1_Output_Register_1;
            --  Capture/Compare mode register (output mode)
         when Input =>
            CCMR1_Input : aliased CCMR1_Input_Register_1;
            --  Capture/Compare mode register 1 (input mode)
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM15_Peripheral use record
      CR1          at 16#0# range 0 .. 31;
      CR2          at 16#4# range 0 .. 31;
      DIER         at 16#C# range 0 .. 31;
      SR           at 16#10# range 0 .. 31;
      EGR          at 16#14# range 0 .. 31;
      CCER         at 16#20# range 0 .. 31;
      CNT          at 16#24# range 0 .. 31;
      PSC          at 16#28# range 0 .. 31;
      ARR          at 16#2C# range 0 .. 31;
      RCR          at 16#30# range 0 .. 31;
      CCR1         at 16#34# range 0 .. 31;
      BDTR         at 16#44# range 0 .. 31;
      DCR          at 16#48# range 0 .. 31;
      DMAR         at 16#4C# range 0 .. 31;
      OR1          at 16#50# range 0 .. 31;
      OR2          at 16#60# range 0 .. 31;
      CCMR1_Output at 16#18# range 0 .. 31;
      CCMR1_Input  at 16#18# range 0 .. 31;
   end record;

   --  General purpose timers
   TIM15_Periph : aliased TIM15_Peripheral
     with Import, Address => TIM15_Base;

   type TIM16_Disc is
     (Output,
      Input);

   --  General purpose timers
   type TIM16_Peripheral
     (Discriminent : TIM16_Disc := Output)
   is record
      CR1          : aliased CR1_Register_2;
      --  control register 1
      CR2          : aliased CR2_Register_3;
      --  control register 2
      DIER         : aliased DIER_Register_3;
      --  DMA/Interrupt enable register
      SR           : aliased SR_Register_5;
      --  status register
      EGR          : aliased EGR_Register_3;
      --  event generation register
      CCER         : aliased CCER_Register_2;
      --  Capture/Compare enable register
      CNT          : aliased CNT_Register_1;
      --  counter
      PSC          : aliased PSC_Register;
      --  prescaler
      ARR          : aliased ARR_Register;
      --  auto-reload register
      RCR          : aliased RCR_Register;
      --  repetition counter register
      CCR1         : aliased CCR1_Register;
      --  Capture/Compare register 1
      BDTR         : aliased BDTR_Register_1;
      --  break and dead-time register
      DCR          : aliased DCR_Register;
      --  DMA control register
      DMAR         : aliased DMAR_Register;
      --  DMA address for full transfer
      OR1          : aliased OR1_Register_3;
      --  TIM16 option register 1
      OR2          : aliased OR2_Register_2;
      --  TIM16 option register 2
      case Discriminent is
         when Output =>
            CCMR1_Output : aliased CCMR1_Output_Register_2;
            --  Capture/Compare mode register (output mode)
         when Input =>
            CCMR1_Input : aliased CCMR1_Input_Register_1;
            --  Capture/Compare mode register 1 (input mode)
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM16_Peripheral use record
      CR1          at 16#0# range 0 .. 31;
      CR2          at 16#4# range 0 .. 31;
      DIER         at 16#C# range 0 .. 31;
      SR           at 16#10# range 0 .. 31;
      EGR          at 16#14# range 0 .. 31;
      CCER         at 16#20# range 0 .. 31;
      CNT          at 16#24# range 0 .. 31;
      PSC          at 16#28# range 0 .. 31;
      ARR          at 16#2C# range 0 .. 31;
      RCR          at 16#30# range 0 .. 31;
      CCR1         at 16#34# range 0 .. 31;
      BDTR         at 16#44# range 0 .. 31;
      DCR          at 16#48# range 0 .. 31;
      DMAR         at 16#4C# range 0 .. 31;
      OR1          at 16#50# range 0 .. 31;
      OR2          at 16#60# range 0 .. 31;
      CCMR1_Output at 16#18# range 0 .. 31;
      CCMR1_Input  at 16#18# range 0 .. 31;
   end record;

   --  General purpose timers
   TIM16_Periph : aliased TIM16_Peripheral
     with Import, Address => TIM16_Base;

   type TIM17_Disc is
     (Output,
      Input);

   --  General purpose timers
   type TIM17_Peripheral
     (Discriminent : TIM17_Disc := Output)
   is record
      CR1          : aliased CR1_Register_2;
      --  control register 1
      CR2          : aliased CR2_Register_3;
      --  control register 2
      DIER         : aliased DIER_Register_3;
      --  DMA/Interrupt enable register
      SR           : aliased SR_Register_5;
      --  status register
      EGR          : aliased EGR_Register_3;
      --  event generation register
      CCER         : aliased CCER_Register_2;
      --  Capture/Compare enable register
      CNT          : aliased CNT_Register_1;
      --  counter
      PSC          : aliased PSC_Register;
      --  prescaler
      ARR          : aliased ARR_Register;
      --  auto-reload register
      RCR          : aliased RCR_Register;
      --  repetition counter register
      CCR1         : aliased CCR1_Register;
      --  Capture/Compare register 1
      BDTR         : aliased BDTR_Register_1;
      --  break and dead-time register
      DCR          : aliased DCR_Register;
      --  DMA control register
      DMAR         : aliased DMAR_Register;
      --  DMA address for full transfer
      OR1          : aliased OR1_Register_4;
      --  TIM17 option register 1
      OR2          : aliased OR2_Register_2;
      --  TIM17 option register 2
      case Discriminent is
         when Output =>
            CCMR1_Output : aliased CCMR1_Output_Register_2;
            --  Capture/Compare mode register (output mode)
         when Input =>
            CCMR1_Input : aliased CCMR1_Input_Register_1;
            --  Capture/Compare mode register 1 (input mode)
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM17_Peripheral use record
      CR1          at 16#0# range 0 .. 31;
      CR2          at 16#4# range 0 .. 31;
      DIER         at 16#C# range 0 .. 31;
      SR           at 16#10# range 0 .. 31;
      EGR          at 16#14# range 0 .. 31;
      CCER         at 16#20# range 0 .. 31;
      CNT          at 16#24# range 0 .. 31;
      PSC          at 16#28# range 0 .. 31;
      ARR          at 16#2C# range 0 .. 31;
      RCR          at 16#30# range 0 .. 31;
      CCR1         at 16#34# range 0 .. 31;
      BDTR         at 16#44# range 0 .. 31;
      DCR          at 16#48# range 0 .. 31;
      DMAR         at 16#4C# range 0 .. 31;
      OR1          at 16#50# range 0 .. 31;
      OR2          at 16#60# range 0 .. 31;
      CCMR1_Output at 16#18# range 0 .. 31;
      CCMR1_Input  at 16#18# range 0 .. 31;
   end record;

   --  General purpose timers
   TIM17_Periph : aliased TIM17_Peripheral
     with Import, Address => TIM17_Base;

end STM32_SVD.TIM;
