pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.RCC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR_MSIRANGE_Field is HAL.UInt4;

   --  Clock control register
   type CR_Register is record
      MSION          : Boolean := True;
      --  MSI clock enable
      MSIRDY         : Boolean := True;
      --  Read-only. MSI clock ready flag
      MSIPLLEN       : Boolean := False;
      --  MSI clock PLL enable
      MSIRGSEL       : Boolean := False;
      --  Write-only. MSI clock range selection
      MSIRANGE       : CR_MSIRANGE_Field := 16#6#;
      --  MSI clock ranges
      HSION          : Boolean := False;
      --  HSI clock enable
      HSIKERON       : Boolean := False;
      --  HSI always enable for peripheral kernels
      HSIRDY         : Boolean := False;
      --  Read-only. HSI clock ready flag
      HSIASFS        : Boolean := False;
      --  HSI automatic start from Stop
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  unspecified
      HSEON          : Boolean := False;
      --  HSE clock enable
      HSERDY         : Boolean := False;
      --  Read-only. HSE clock ready flag
      HSEBYP         : Boolean := False;
      --  HSE crystal oscillator bypass
      CSSON          : Boolean := False;
      --  Write-only. Clock security system enable
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  unspecified
      PLLON          : Boolean := False;
      --  Main PLL enable
      PLLRDY         : Boolean := False;
      --  Read-only. Main PLL clock ready flag
      PLLSAI1ON      : Boolean := False;
      --  SAI1 PLL enable
      PLLSAI1RDY     : Boolean := False;
      --  Read-only. SAI1 PLL clock ready flag
      PLLSAI2ON      : Boolean := False;
      --  SAI2 PLL enable
      PLLSAI2RDY     : Boolean := False;
      --  Read-only. SAI2 PLL clock ready flag
      Reserved_30_31 : HAL.UInt2 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      MSION          at 0 range 0 .. 0;
      MSIRDY         at 0 range 1 .. 1;
      MSIPLLEN       at 0 range 2 .. 2;
      MSIRGSEL       at 0 range 3 .. 3;
      MSIRANGE       at 0 range 4 .. 7;
      HSION          at 0 range 8 .. 8;
      HSIKERON       at 0 range 9 .. 9;
      HSIRDY         at 0 range 10 .. 10;
      HSIASFS        at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HSEON          at 0 range 16 .. 16;
      HSERDY         at 0 range 17 .. 17;
      HSEBYP         at 0 range 18 .. 18;
      CSSON          at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      PLLON          at 0 range 24 .. 24;
      PLLRDY         at 0 range 25 .. 25;
      PLLSAI1ON      at 0 range 26 .. 26;
      PLLSAI1RDY     at 0 range 27 .. 27;
      PLLSAI2ON      at 0 range 28 .. 28;
      PLLSAI2RDY     at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ICSCR_MSICAL_Field is HAL.UInt8;
   subtype ICSCR_MSITRIM_Field is HAL.UInt8;
   subtype ICSCR_HSICAL_Field is HAL.UInt8;
   subtype ICSCR_HSITRIM_Field is HAL.UInt7;

   --  Internal clock sources calibration register
   type ICSCR_Register is record
      MSICAL         : ICSCR_MSICAL_Field := 16#0#;
      --  Read-only. MSI clock calibration
      MSITRIM        : ICSCR_MSITRIM_Field := 16#0#;
      --  MSI clock trimming
      HSICAL         : ICSCR_HSICAL_Field := 16#0#;
      --  Read-only. HSI clock calibration
      HSITRIM        : ICSCR_HSITRIM_Field := 16#10#;
      --  HSI clock trimming
      Reserved_31_31 : HAL.Bit := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICSCR_Register use record
      MSICAL         at 0 range 0 .. 7;
      MSITRIM        at 0 range 8 .. 15;
      HSICAL         at 0 range 16 .. 23;
      HSITRIM        at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CFGR_SW_Field is HAL.UInt2;
   subtype CFGR_SWS_Field is HAL.UInt2;
   subtype CFGR_HPRE_Field is HAL.UInt4;
   subtype CFGR_PPRE_1_Field is HAL.UInt3;
   subtype CFGR_PPRE_2_Field is HAL.UInt3;
   subtype CFGR_MCOSEL_Field is HAL.UInt3;
   subtype CFGR_MCOPRE_Field is HAL.UInt3;

   --  Clock configuration register
   type CFGR_Register is record
      SW             : CFGR_SW_Field := 16#0#;
      --  System clock switch
      SWS            : CFGR_SWS_Field := 16#0#;
      --  Read-only. System clock switch status
      HPRE           : CFGR_HPRE_Field := 16#0#;
      --  AHB prescaler
      PPRE_1         : CFGR_PPRE_1_Field := 16#0#;
      --  APB low-speed prescaler (APB1)
      PPRE_2         : CFGR_PPRE_2_Field := 16#0#;
      --  APB high-speed prescaler (APB2)
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  unspecified
      STOPWUCK       : Boolean := False;
      --  Wakeup from Stop and CSS backup clock selection
      Reserved_16_23 : HAL.UInt8 := 16#0#;
      --  unspecified
      MCOSEL         : CFGR_MCOSEL_Field := 16#0#;
      --  Microcontroller clock output
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  unspecified
      MCOPRE         : CFGR_MCOPRE_Field := 16#0#;
      --  Read-only. Microcontroller clock output prescaler
      Reserved_31_31 : HAL.Bit := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR_Register use record
      SW             at 0 range 0 .. 1;
      SWS            at 0 range 2 .. 3;
      HPRE           at 0 range 4 .. 7;
      PPRE_1         at 0 range 8 .. 10;
      PPRE_2         at 0 range 11 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      STOPWUCK       at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      MCOSEL         at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      MCOPRE         at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype PLLCFGR_PLLSRC_Field is HAL.UInt2;
   subtype PLLCFGR_PLLM_Field is HAL.UInt4;
   subtype PLLCFGR_PLLN_Field is HAL.UInt7;
   subtype PLLCFGR_PLLQ_Field is HAL.UInt2;
   subtype PLLCFGR_PLLR_Field is HAL.UInt2;
   subtype PLLCFGR_PLLPDIV_Field is HAL.UInt5;

   --  PLL configuration register
   type PLLCFGR_Register is record
      PLLSRC         : PLLCFGR_PLLSRC_Field := 16#0#;
      --  Main PLL, PLLSAI1 and PLLSAI2 entry clock source
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  unspecified
      PLLM           : PLLCFGR_PLLM_Field := 16#0#;
      --  Division factor for the main PLL and audio PLL (PLLSAI1 and PLLSAI2)
      --  input clock
      PLLN           : PLLCFGR_PLLN_Field := 16#10#;
      --  Main PLL multiplication factor for VCO
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  unspecified
      PLLPEN         : Boolean := False;
      --  Main PLL PLLSAI3CLK output enable
      PLLP           : Boolean := False;
      --  Main PLL division factor for PLLSAI3CLK (SAI1 and SAI2 clock)
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  unspecified
      PLLQEN         : Boolean := False;
      --  Main PLL PLLUSB1CLK output enable
      PLLQ           : PLLCFGR_PLLQ_Field := 16#0#;
      --  Main PLL division factor for PLLUSB1CLK(48 MHz clock)
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  unspecified
      PLLREN         : Boolean := False;
      --  Main PLL PLLCLK output enable
      PLLR           : PLLCFGR_PLLR_Field := 16#0#;
      --  Main PLL division factor for PLLCLK (system clock)
      PLLPDIV        : PLLCFGR_PLLPDIV_Field := 16#0#;
      --  Main PLL division factor for PLLSAI2CLK
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PLLCFGR_Register use record
      PLLSRC         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      PLLM           at 0 range 4 .. 7;
      PLLN           at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PLLPEN         at 0 range 16 .. 16;
      PLLP           at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      PLLQEN         at 0 range 20 .. 20;
      PLLQ           at 0 range 21 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      PLLREN         at 0 range 24 .. 24;
      PLLR           at 0 range 25 .. 26;
      PLLPDIV        at 0 range 27 .. 31;
   end record;

   subtype PLLSAI1CFGR_PLLSAI1M_Field is HAL.UInt4;
   subtype PLLSAI1CFGR_PLLSAI1N_Field is HAL.UInt7;
   subtype PLLSAI1CFGR_PLLSAI1Q_Field is HAL.UInt2;
   subtype PLLSAI1CFGR_PLLSAI1R_Field is HAL.UInt2;
   subtype PLLSAI1CFGR_PLLSAI1PDIV_Field is HAL.UInt5;

   --  PLLSAI1 configuration register
   type PLLSAI1CFGR_Register is record
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  unspecified
      PLLSAI1M       : PLLSAI1CFGR_PLLSAI1M_Field := 16#0#;
      --  Division factor for PLLSAI1 input clock
      PLLSAI1N       : PLLSAI1CFGR_PLLSAI1N_Field := 16#10#;
      --  SAI1PLL multiplication factor for VCO
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  unspecified
      PLLSAI1PEN     : Boolean := False;
      --  SAI1PLL PLLSAI1CLK output enable
      PLLSAI1P       : Boolean := False;
      --  SAI1PLL division factor for PLLSAI1CLK (SAI1 or SAI2 clock)
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  unspecified
      PLLSAI1QEN     : Boolean := False;
      --  SAI1PLL PLLUSB2CLK output enable
      PLLSAI1Q       : PLLSAI1CFGR_PLLSAI1Q_Field := 16#0#;
      --  SAI1PLL division factor for PLLUSB2CLK (48 MHz clock)
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  unspecified
      PLLSAI1REN     : Boolean := False;
      --  PLLSAI1 PLLADC1CLK output enable
      PLLSAI1R       : PLLSAI1CFGR_PLLSAI1R_Field := 16#0#;
      --  PLLSAI1 division factor for PLLADC1CLK (ADC clock)
      PLLSAI1PDIV    : PLLSAI1CFGR_PLLSAI1PDIV_Field := 16#0#;
      --  PLLSAI1 division factor for PLLSAI1CLK
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PLLSAI1CFGR_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      PLLSAI1M       at 0 range 4 .. 7;
      PLLSAI1N       at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PLLSAI1PEN     at 0 range 16 .. 16;
      PLLSAI1P       at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      PLLSAI1QEN     at 0 range 20 .. 20;
      PLLSAI1Q       at 0 range 21 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      PLLSAI1REN     at 0 range 24 .. 24;
      PLLSAI1R       at 0 range 25 .. 26;
      PLLSAI1PDIV    at 0 range 27 .. 31;
   end record;

   subtype PLLSAI2CFGR_PLLSAI2M_Field is HAL.UInt4;
   subtype PLLSAI2CFGR_PLLSAI2N_Field is HAL.UInt7;
   subtype PLLSAI2CFGR_PLLSAI2Q_Field is HAL.UInt2;
   subtype PLLSAI2CFGR_PLLSAI2R_Field is HAL.UInt2;
   subtype PLLSAI2CFGR_PLLSAI2PDIV_Field is HAL.UInt5;

   --  PLLSAI2 configuration register
   type PLLSAI2CFGR_Register is record
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  unspecified
      PLLSAI2M       : PLLSAI2CFGR_PLLSAI2M_Field := 16#0#;
      --  Division factor for PLLSAI2 input clock
      PLLSAI2N       : PLLSAI2CFGR_PLLSAI2N_Field := 16#10#;
      --  SAI2PLL multiplication factor for VCO
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  unspecified
      PLLSAI2PEN     : Boolean := False;
      --  SAI2PLL PLLSAI2CLK output enable
      PLLSAI2P       : Boolean := False;
      --  SAI1PLL division factor for PLLSAI2CLK (SAI1 or SAI2 clock)
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  unspecified
      PLLSAI2QEN     : Boolean := False;
      --  PLLSAI2 division factor for PLLDISCLK
      PLLSAI2Q       : PLLSAI2CFGR_PLLSAI2Q_Field := 16#0#;
      --  SAI2PLL PLLSAI2CLK output enable
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  unspecified
      PLLSAI2REN     : Boolean := False;
      --  PLLSAI2 PLLADC2CLK output enable
      PLLSAI2R       : PLLSAI2CFGR_PLLSAI2R_Field := 16#0#;
      --  PLLSAI2 division factor for PLLADC2CLK (ADC clock)
      PLLSAI2PDIV    : PLLSAI2CFGR_PLLSAI2PDIV_Field := 16#0#;
      --  PLLSAI2 division factor for PLLSAI2CLK
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PLLSAI2CFGR_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      PLLSAI2M       at 0 range 4 .. 7;
      PLLSAI2N       at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PLLSAI2PEN     at 0 range 16 .. 16;
      PLLSAI2P       at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      PLLSAI2QEN     at 0 range 20 .. 20;
      PLLSAI2Q       at 0 range 21 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      PLLSAI2REN     at 0 range 24 .. 24;
      PLLSAI2R       at 0 range 25 .. 26;
      PLLSAI2PDIV    at 0 range 27 .. 31;
   end record;

   --  Clock interrupt enable register
   type CIER_Register is record
      LSIRDYIE       : Boolean := False;
      --  LSI ready interrupt enable
      LSERDYIE       : Boolean := False;
      --  LSE ready interrupt enable
      MSIRDYIE       : Boolean := False;
      --  MSI ready interrupt enable
      HSIRDYIE       : Boolean := False;
      --  HSI ready interrupt enable
      HSERDYIE       : Boolean := False;
      --  HSE ready interrupt enable
      PLLRDYIE       : Boolean := False;
      --  PLL ready interrupt enable
      PLLSAI1RDYIE   : Boolean := False;
      --  PLLSAI1 ready interrupt enable
      PLLSAI2RDYIE   : Boolean := False;
      --  PLLSAI2 ready interrupt enable
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  unspecified
      LSECSSIE       : Boolean := False;
      --  LSE clock security system interrupt enable
      HSI48RDYIE     : Boolean := False;
      --  HSI48 ready interrupt enable
      Reserved_11_31 : HAL.UInt21 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CIER_Register use record
      LSIRDYIE       at 0 range 0 .. 0;
      LSERDYIE       at 0 range 1 .. 1;
      MSIRDYIE       at 0 range 2 .. 2;
      HSIRDYIE       at 0 range 3 .. 3;
      HSERDYIE       at 0 range 4 .. 4;
      PLLRDYIE       at 0 range 5 .. 5;
      PLLSAI1RDYIE   at 0 range 6 .. 6;
      PLLSAI2RDYIE   at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      LSECSSIE       at 0 range 9 .. 9;
      HSI48RDYIE     at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Clock interrupt flag register
   type CIFR_Register is record
      LSIRDYF        : Boolean;
      --  Read-only. LSI ready interrupt flag
      LSERDYF        : Boolean;
      --  Read-only. LSE ready interrupt flag
      MSIRDYF        : Boolean;
      --  Read-only. MSI ready interrupt flag
      HSIRDYF        : Boolean;
      --  Read-only. HSI ready interrupt flag
      HSERDYF        : Boolean;
      --  Read-only. HSE ready interrupt flag
      PLLRDYF        : Boolean;
      --  Read-only. PLL ready interrupt flag
      PLLSAI1RDYF    : Boolean;
      --  Read-only. PLLSAI1 ready interrupt flag
      PLLSAI2RDYF    : Boolean;
      --  Read-only. PLLSAI2 ready interrupt flag
      CSSF           : Boolean;
      --  Read-only. Clock security system interrupt flag
      LSECSSF        : Boolean;
      --  Read-only. LSE Clock security system interrupt flag
      HSI48RDYF      : Boolean;
      --  Read-only. HSI48 ready interrupt flag
      Reserved_11_31 : HAL.UInt21;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CIFR_Register use record
      LSIRDYF        at 0 range 0 .. 0;
      LSERDYF        at 0 range 1 .. 1;
      MSIRDYF        at 0 range 2 .. 2;
      HSIRDYF        at 0 range 3 .. 3;
      HSERDYF        at 0 range 4 .. 4;
      PLLRDYF        at 0 range 5 .. 5;
      PLLSAI1RDYF    at 0 range 6 .. 6;
      PLLSAI2RDYF    at 0 range 7 .. 7;
      CSSF           at 0 range 8 .. 8;
      LSECSSF        at 0 range 9 .. 9;
      HSI48RDYF      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Clock interrupt clear register
   type CICR_Register is record
      LSIRDYC        : Boolean := False;
      --  Write-only. LSI ready interrupt clear
      LSERDYC        : Boolean := False;
      --  Write-only. LSE ready interrupt clear
      MSIRDYC        : Boolean := False;
      --  Write-only. MSI ready interrupt clear
      HSIRDYC        : Boolean := False;
      --  Write-only. HSI ready interrupt clear
      HSERDYC        : Boolean := False;
      --  Write-only. HSE ready interrupt clear
      PLLRDYC        : Boolean := False;
      --  Write-only. PLL ready interrupt clear
      PLLSAI1RDYC    : Boolean := False;
      --  Write-only. PLLSAI1 ready interrupt clear
      PLLSAI2RDYC    : Boolean := False;
      --  Write-only. PLLSAI2 ready interrupt clear
      CSSC           : Boolean := False;
      --  Write-only. Clock security system interrupt clear
      LSECSSC        : Boolean := False;
      --  Write-only. LSE Clock security system interrupt clear
      HSI48RDYC      : Boolean := False;
      --  Write-only. HSI48 oscillator ready interrupt clear
      Reserved_11_31 : HAL.UInt21 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CICR_Register use record
      LSIRDYC        at 0 range 0 .. 0;
      LSERDYC        at 0 range 1 .. 1;
      MSIRDYC        at 0 range 2 .. 2;
      HSIRDYC        at 0 range 3 .. 3;
      HSERDYC        at 0 range 4 .. 4;
      PLLRDYC        at 0 range 5 .. 5;
      PLLSAI1RDYC    at 0 range 6 .. 6;
      PLLSAI2RDYC    at 0 range 7 .. 7;
      CSSC           at 0 range 8 .. 8;
      LSECSSC        at 0 range 9 .. 9;
      HSI48RDYC      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  AHB1 peripheral reset register
   type AHB1RSTR_Register is record
      DMA1RST        : Boolean := False;
      --  DMA1 reset
      DMA2RST        : Boolean := False;
      --  DMA2 reset
      DMAMUX1RST     : Boolean := False;
      --  DMAMUXRST
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  unspecified
      FLASHRST       : Boolean := False;
      --  Flash memory interface reset
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  unspecified
      CRCRST         : Boolean := False;
      --  CRC reset
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  unspecified
      TSCRST         : Boolean := False;
      --  Touch Sensing Controller reset
      DMA2DRST       : Boolean := False;
      --  DMA2D reset
      GFXMMURST      : Boolean := False;
      --  GFXMMU reset
      Reserved_19_31 : HAL.UInt13 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB1RSTR_Register use record
      DMA1RST        at 0 range 0 .. 0;
      DMA2RST        at 0 range 1 .. 1;
      DMAMUX1RST     at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      FLASHRST       at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      CRCRST         at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TSCRST         at 0 range 16 .. 16;
      DMA2DRST       at 0 range 17 .. 17;
      GFXMMURST      at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  AHB2 peripheral reset register
   type AHB2RSTR_Register is record
      GPIOARST       : Boolean := False;
      --  IO port A reset
      GPIOBRST       : Boolean := False;
      --  IO port B reset
      GPIOCRST       : Boolean := False;
      --  IO port C reset
      GPIODRST       : Boolean := False;
      --  IO port D reset
      GPIOERST       : Boolean := False;
      --  IO port E reset
      GPIOFRST       : Boolean := False;
      --  IO port F reset
      GPIOGRST       : Boolean := False;
      --  IO port G reset
      GPIOHRST       : Boolean := False;
      --  IO port H reset
      GPIOIRST       : Boolean := False;
      --  IO port I reset
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  unspecified
      OTGFSRST       : Boolean := False;
      --  USB OTG FS reset
      ADCRST         : Boolean := False;
      --  ADC reset
      DCMIRST        : Boolean := False;
      --  Digital Camera Interface reset
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  unspecified
      AESRST         : Boolean := False;
      --  AES hardware accelerator reset
      HASHRST        : Boolean := False;
      --  Hash reset
      RNGRST         : Boolean := False;
      --  Random number generator reset
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  unspecified
      OSPIMRST       : Boolean := False;
      --  OCTOSPI IO manager reset
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  unspecified
      SDMMC1RST      : Boolean := False;
      --  SDMMC1 reset
      Reserved_23_31 : HAL.UInt9 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB2RSTR_Register use record
      GPIOARST       at 0 range 0 .. 0;
      GPIOBRST       at 0 range 1 .. 1;
      GPIOCRST       at 0 range 2 .. 2;
      GPIODRST       at 0 range 3 .. 3;
      GPIOERST       at 0 range 4 .. 4;
      GPIOFRST       at 0 range 5 .. 5;
      GPIOGRST       at 0 range 6 .. 6;
      GPIOHRST       at 0 range 7 .. 7;
      GPIOIRST       at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      OTGFSRST       at 0 range 12 .. 12;
      ADCRST         at 0 range 13 .. 13;
      DCMIRST        at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      AESRST         at 0 range 16 .. 16;
      HASHRST        at 0 range 17 .. 17;
      RNGRST         at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OSPIMRST       at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      SDMMC1RST      at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  AHB3 peripheral reset register
   type AHB3RSTR_Register is record
      FMCRST         : Boolean := False;
      --  Flexible memory controller reset
      Reserved_1_8   : HAL.UInt8 := 16#0#;
      --  unspecified
      OSPI2RST       : Boolean := False;
      --  OctOSPI2 memory interface reset
      Reserved_10_31 : HAL.UInt22 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB3RSTR_Register use record
      FMCRST         at 0 range 0 .. 0;
      Reserved_1_8   at 0 range 1 .. 8;
      OSPI2RST       at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  APB1 peripheral reset register 1
   type APB1RSTR1_Register is record
      TIM2RST        : Boolean := False;
      --  TIM2 timer reset
      TIM3RST        : Boolean := False;
      --  TIM3 timer reset
      TIM4RST        : Boolean := False;
      --  TIM3 timer reset
      TIM5RST        : Boolean := False;
      --  TIM5 timer reset
      TIM6RST        : Boolean := False;
      --  TIM6 timer reset
      TIM7RST        : Boolean := False;
      --  TIM7 timer reset
      Reserved_6_13  : HAL.UInt8 := 16#0#;
      --  unspecified
      SPI2RST        : Boolean := False;
      --  SPI2 reset
      SPI3RST        : Boolean := False;
      --  SPI3 reset
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  unspecified
      USART2RST      : Boolean := False;
      --  USART2 reset
      USART3RST      : Boolean := False;
      --  USART3 reset
      UART4RST       : Boolean := False;
      --  UART4 reset
      UART5RST       : Boolean := False;
      --  UART5 reset
      I2C1RST        : Boolean := False;
      --  I2C1 reset
      I2C2RST        : Boolean := False;
      --  I2C2 reset
      I2C3RST        : Boolean := False;
      --  I2C3 reset
      CRSRST         : Boolean := False;
      --  CRS reset
      CAN1RST        : Boolean := False;
      --  CAN1 reset
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  unspecified
      PWRRST         : Boolean := False;
      --  Power interface reset
      DAC1RST        : Boolean := False;
      --  DAC1 interface reset
      OPAMPRST       : Boolean := False;
      --  OPAMP interface reset
      LPTIM1RST      : Boolean := False;
      --  Low Power Timer 1 reset
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1RSTR1_Register use record
      TIM2RST        at 0 range 0 .. 0;
      TIM3RST        at 0 range 1 .. 1;
      TIM4RST        at 0 range 2 .. 2;
      TIM5RST        at 0 range 3 .. 3;
      TIM6RST        at 0 range 4 .. 4;
      TIM7RST        at 0 range 5 .. 5;
      Reserved_6_13  at 0 range 6 .. 13;
      SPI2RST        at 0 range 14 .. 14;
      SPI3RST        at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      USART2RST      at 0 range 17 .. 17;
      USART3RST      at 0 range 18 .. 18;
      UART4RST       at 0 range 19 .. 19;
      UART5RST       at 0 range 20 .. 20;
      I2C1RST        at 0 range 21 .. 21;
      I2C2RST        at 0 range 22 .. 22;
      I2C3RST        at 0 range 23 .. 23;
      CRSRST         at 0 range 24 .. 24;
      CAN1RST        at 0 range 25 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      PWRRST         at 0 range 28 .. 28;
      DAC1RST        at 0 range 29 .. 29;
      OPAMPRST       at 0 range 30 .. 30;
      LPTIM1RST      at 0 range 31 .. 31;
   end record;

   --  APB1 peripheral reset register 2
   type APB1RSTR2_Register is record
      LPUART1RST    : Boolean := False;
      --  Low-power UART 1 reset
      I2C4RST       : Boolean := False;
      --  I2C4 reset
      Reserved_2_4  : HAL.UInt3 := 16#0#;
      --  unspecified
      LPTIM2RST     : Boolean := False;
      --  Low-power timer 2 reset
      Reserved_6_31 : HAL.UInt26 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1RSTR2_Register use record
      LPUART1RST    at 0 range 0 .. 0;
      I2C4RST       at 0 range 1 .. 1;
      Reserved_2_4  at 0 range 2 .. 4;
      LPTIM2RST     at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  APB2 peripheral reset register
   type APB2RSTR_Register is record
      SYSCFGRST      : Boolean := False;
      --  System configuration (SYSCFG) reset
      Reserved_1_10  : HAL.UInt10 := 16#0#;
      --  unspecified
      TIM1RST        : Boolean := False;
      --  TIM1 timer reset
      SPI1RST        : Boolean := False;
      --  SPI1 reset
      TIM8RST        : Boolean := False;
      --  TIM8 timer reset
      USART1RST      : Boolean := False;
      --  USART1 reset
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  unspecified
      TIM15RST       : Boolean := False;
      --  TIM15 timer reset
      TIM16RST       : Boolean := False;
      --  TIM16 timer reset
      TIM17RST       : Boolean := False;
      --  TIM17 timer reset
      Reserved_19_20 : HAL.UInt2 := 16#0#;
      --  unspecified
      SAI1RST        : Boolean := False;
      --  Serial audio interface 1 (SAI1) reset
      SAI2RST        : Boolean := False;
      --  Serial audio interface 2 (SAI2) reset
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  unspecified
      DFSDM1RST      : Boolean := False;
      --  Digital filters for sigma-delata modulators (DFSDM) reset
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  unspecified
      LTDCRST        : Boolean := False;
      --  LCD-TFT reset
      DSIRST         : Boolean := False;
      --  DSI reset
      Reserved_28_31 : HAL.UInt4 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2RSTR_Register use record
      SYSCFGRST      at 0 range 0 .. 0;
      Reserved_1_10  at 0 range 1 .. 10;
      TIM1RST        at 0 range 11 .. 11;
      SPI1RST        at 0 range 12 .. 12;
      TIM8RST        at 0 range 13 .. 13;
      USART1RST      at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TIM15RST       at 0 range 16 .. 16;
      TIM16RST       at 0 range 17 .. 17;
      TIM17RST       at 0 range 18 .. 18;
      Reserved_19_20 at 0 range 19 .. 20;
      SAI1RST        at 0 range 21 .. 21;
      SAI2RST        at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      DFSDM1RST      at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      LTDCRST        at 0 range 26 .. 26;
      DSIRST         at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  AHB1 peripheral clock enable register
   type AHB1ENR_Register is record
      DMA1EN         : Boolean := False;
      --  DMA1 clock enable
      DMA2EN         : Boolean := False;
      --  DMA2 clock enable
      DMAMUX1EN      : Boolean := False;
      --  DMAMUX clock enable
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  unspecified
      FLASHEN        : Boolean := True;
      --  Flash memory interface clock enable
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  unspecified
      CRCEN          : Boolean := False;
      --  CRC clock enable
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  unspecified
      TSCEN          : Boolean := False;
      --  Touch Sensing Controller clock enable
      DMA2DEN        : Boolean := False;
      --  DMA2D clock enable
      GFXMMUEN       : Boolean := False;
      --  Graphic MMU clock enable
      Reserved_19_31 : HAL.UInt13 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB1ENR_Register use record
      DMA1EN         at 0 range 0 .. 0;
      DMA2EN         at 0 range 1 .. 1;
      DMAMUX1EN      at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      FLASHEN        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      CRCEN          at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TSCEN          at 0 range 16 .. 16;
      DMA2DEN        at 0 range 17 .. 17;
      GFXMMUEN       at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  AHB2 peripheral clock enable register
   type AHB2ENR_Register is record
      GPIOAEN        : Boolean := False;
      --  IO port A clock enable
      GPIOBEN        : Boolean := False;
      --  IO port B clock enable
      GPIOCEN        : Boolean := False;
      --  IO port C clock enable
      GPIODEN        : Boolean := False;
      --  IO port D clock enable
      GPIOEEN        : Boolean := False;
      --  IO port E clock enable
      GPIOFEN        : Boolean := False;
      --  IO port F clock enable
      GPIOGEN        : Boolean := False;
      --  IO port G clock enable
      GPIOHEN        : Boolean := False;
      --  IO port H clock enable
      GPIOIEN        : Boolean := False;
      --  IO port I clock enable
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  unspecified
      OTGFSEN        : Boolean := False;
      --  OTG full speed clock enable
      ADCEN          : Boolean := False;
      --  ADC clock enable
      DCMIEN         : Boolean := False;
      --  DCMI clock enable
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  unspecified
      AESEN          : Boolean := False;
      --  AES accelerator clock enable
      HASHEN         : Boolean := False;
      --  HASH clock enable
      RNGEN          : Boolean := False;
      --  Random Number Generator clock enable
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  unspecified
      OSPIMEN        : Boolean := False;
      --  OctoSPI IO manager clock enable
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  unspecified
      SDMMC1EN       : Boolean := False;
      --  SDMMC1 clock enable
      Reserved_23_31 : HAL.UInt9 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB2ENR_Register use record
      GPIOAEN        at 0 range 0 .. 0;
      GPIOBEN        at 0 range 1 .. 1;
      GPIOCEN        at 0 range 2 .. 2;
      GPIODEN        at 0 range 3 .. 3;
      GPIOEEN        at 0 range 4 .. 4;
      GPIOFEN        at 0 range 5 .. 5;
      GPIOGEN        at 0 range 6 .. 6;
      GPIOHEN        at 0 range 7 .. 7;
      GPIOIEN        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      OTGFSEN        at 0 range 12 .. 12;
      ADCEN          at 0 range 13 .. 13;
      DCMIEN         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      AESEN          at 0 range 16 .. 16;
      HASHEN         at 0 range 17 .. 17;
      RNGEN          at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OSPIMEN        at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      SDMMC1EN       at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  AHB3 peripheral clock enable register
   type AHB3ENR_Register is record
      FMCEN          : Boolean := False;
      --  Flexible memory controller clock enable
      Reserved_1_8   : HAL.UInt8 := 16#0#;
      --  unspecified
      OSPI2EN        : Boolean := False;
      --  OSPI2EN memory interface clock enable
      Reserved_10_31 : HAL.UInt22 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB3ENR_Register use record
      FMCEN          at 0 range 0 .. 0;
      Reserved_1_8   at 0 range 1 .. 8;
      OSPI2EN        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  APB1ENR1
   type APB1ENR1_Register is record
      TIM2EN         : Boolean := False;
      --  TIM2 timer clock enable
      TIM3EN         : Boolean := False;
      --  TIM3 timer clock enable
      TIM4EN         : Boolean := False;
      --  TIM4 timer clock enable
      TIM5EN         : Boolean := False;
      --  TIM5 timer clock enable
      TIM6EN         : Boolean := False;
      --  TIM6 timer clock enable
      TIM7EN         : Boolean := False;
      --  TIM7 timer clock enable
      Reserved_6_9   : HAL.UInt4 := 16#0#;
      --  unspecified
      RTCAPBEN       : Boolean := False;
      --  RTC APB clock enable
      WWDGEN         : Boolean := False;
      --  Window watchdog clock enable
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  unspecified
      SPI2EN         : Boolean := False;
      --  SPI2 clock enable
      SPI3EN         : Boolean := False;
      --  SPI3 clock enable
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  unspecified
      USART2EN       : Boolean := False;
      --  USART2 clock enable
      USART3EN       : Boolean := False;
      --  USART3 clock enable
      UART4EN        : Boolean := False;
      --  UART4 clock enable
      UART5EN        : Boolean := False;
      --  UART5 clock enable
      I2C1EN         : Boolean := False;
      --  I2C1 clock enable
      I2C2EN         : Boolean := False;
      --  I2C2 clock enable
      I2C3EN         : Boolean := False;
      --  I2C3 clock enable
      CRSEN          : Boolean := False;
      --  Clock Recovery System clock enable
      CAN1EN         : Boolean := False;
      --  CAN1 clock enable
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  unspecified
      PWREN          : Boolean := False;
      --  Power interface clock enable
      DAC1EN         : Boolean := False;
      --  DAC1 interface clock enable
      OPAMPEN        : Boolean := False;
      --  OPAMP interface clock enable
      LPTIM1EN       : Boolean := False;
      --  Low power timer 1 clock enable
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1ENR1_Register use record
      TIM2EN         at 0 range 0 .. 0;
      TIM3EN         at 0 range 1 .. 1;
      TIM4EN         at 0 range 2 .. 2;
      TIM5EN         at 0 range 3 .. 3;
      TIM6EN         at 0 range 4 .. 4;
      TIM7EN         at 0 range 5 .. 5;
      Reserved_6_9   at 0 range 6 .. 9;
      RTCAPBEN       at 0 range 10 .. 10;
      WWDGEN         at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2EN         at 0 range 14 .. 14;
      SPI3EN         at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      USART2EN       at 0 range 17 .. 17;
      USART3EN       at 0 range 18 .. 18;
      UART4EN        at 0 range 19 .. 19;
      UART5EN        at 0 range 20 .. 20;
      I2C1EN         at 0 range 21 .. 21;
      I2C2EN         at 0 range 22 .. 22;
      I2C3EN         at 0 range 23 .. 23;
      CRSEN          at 0 range 24 .. 24;
      CAN1EN         at 0 range 25 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      PWREN          at 0 range 28 .. 28;
      DAC1EN         at 0 range 29 .. 29;
      OPAMPEN        at 0 range 30 .. 30;
      LPTIM1EN       at 0 range 31 .. 31;
   end record;

   --  APB1 peripheral clock enable register 2
   type APB1ENR2_Register is record
      LPUART1EN     : Boolean := False;
      --  Low power UART 1 clock enable
      I2C4EN        : Boolean := False;
      --  I2C4 clock enable
      Reserved_2_4  : HAL.UInt3 := 16#0#;
      --  unspecified
      LPTIM2EN      : Boolean := False;
      --  LPTIM2EN
      Reserved_6_31 : HAL.UInt26 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1ENR2_Register use record
      LPUART1EN     at 0 range 0 .. 0;
      I2C4EN        at 0 range 1 .. 1;
      Reserved_2_4  at 0 range 2 .. 4;
      LPTIM2EN      at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  APB2ENR
   type APB2ENR_Register is record
      SYSCFGEN       : Boolean := False;
      --  SYSCFG clock enable
      Reserved_1_6   : HAL.UInt6 := 16#0#;
      --  unspecified
      FWEN           : Boolean := False;
      --  Firewall clock enable
      Reserved_8_10  : HAL.UInt3 := 16#0#;
      --  unspecified
      TIM1EN         : Boolean := False;
      --  TIM1 timer clock enable
      SPI1EN         : Boolean := False;
      --  SPI1 clock enable
      TIM8EN         : Boolean := False;
      --  TIM8 timer clock enable
      USART1EN       : Boolean := False;
      --  USART1clock enable
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  unspecified
      TIM15EN        : Boolean := False;
      --  TIM15 timer clock enable
      TIM16EN        : Boolean := False;
      --  TIM16 timer clock enable
      TIM17EN        : Boolean := False;
      --  TIM17 timer clock enable
      Reserved_19_20 : HAL.UInt2 := 16#0#;
      --  unspecified
      SAI1EN         : Boolean := False;
      --  SAI1 clock enable
      SAI2EN         : Boolean := False;
      --  SAI2 clock enable
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  unspecified
      DFSDM1EN       : Boolean := False;
      --  DFSDM timer clock enable
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  unspecified
      LTDCEN         : Boolean := False;
      --  LCD-TFT clock enable
      DSIEN          : Boolean := False;
      --  DSI clock enable
      Reserved_28_31 : HAL.UInt4 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2ENR_Register use record
      SYSCFGEN       at 0 range 0 .. 0;
      Reserved_1_6   at 0 range 1 .. 6;
      FWEN           at 0 range 7 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      TIM1EN         at 0 range 11 .. 11;
      SPI1EN         at 0 range 12 .. 12;
      TIM8EN         at 0 range 13 .. 13;
      USART1EN       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TIM15EN        at 0 range 16 .. 16;
      TIM16EN        at 0 range 17 .. 17;
      TIM17EN        at 0 range 18 .. 18;
      Reserved_19_20 at 0 range 19 .. 20;
      SAI1EN         at 0 range 21 .. 21;
      SAI2EN         at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      DFSDM1EN       at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      LTDCEN         at 0 range 26 .. 26;
      DSIEN          at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  AHB1 peripheral clocks enable in Sleep and Stop modes register
   type AHB1SMENR_Register is record
      DMA1SMEN       : Boolean := True;
      --  DMA1 clocks enable during Sleep and Stop modes
      DMA2SMEN       : Boolean := True;
      --  DMA2 clocks enable during Sleep and Stop modes
      DMAMUX1SMEN    : Boolean := False;
      --  DMAMUX clock enable during Sleep and Stop modes
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  unspecified
      FLASHSMEN      : Boolean := True;
      --  Flash memory interface clocks enable during Sleep and Stop modes
      SRAM1SMEN      : Boolean := True;
      --  SRAM1 interface clocks enable during Sleep and Stop modes
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  unspecified
      CRCSMEN        : Boolean := True;
      --  CRCSMEN
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  unspecified
      TSCSMEN        : Boolean := True;
      --  Touch Sensing Controller clocks enable during Sleep and Stop modes
      DMA2DSMEN      : Boolean := False;
      --  DMA2D clock enable during Sleep and Stop modes
      GFXMMUSMEN     : Boolean := False;
      --  GFXMMU clock enable during Sleep and Stop modes
      Reserved_19_31 : HAL.UInt13 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB1SMENR_Register use record
      DMA1SMEN       at 0 range 0 .. 0;
      DMA2SMEN       at 0 range 1 .. 1;
      DMAMUX1SMEN    at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      FLASHSMEN      at 0 range 8 .. 8;
      SRAM1SMEN      at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      CRCSMEN        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TSCSMEN        at 0 range 16 .. 16;
      DMA2DSMEN      at 0 range 17 .. 17;
      GFXMMUSMEN     at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  AHB2 peripheral clocks enable in Sleep and Stop modes register
   type AHB2SMENR_Register is record
      GPIOASMEN      : Boolean := True;
      --  IO port A clocks enable during Sleep and Stop modes
      GPIOBSMEN      : Boolean := True;
      --  IO port B clocks enable during Sleep and Stop modes
      GPIOCSMEN      : Boolean := True;
      --  IO port C clocks enable during Sleep and Stop modes
      GPIODSMEN      : Boolean := True;
      --  IO port D clocks enable during Sleep and Stop modes
      GPIOESMEN      : Boolean := True;
      --  IO port E clocks enable during Sleep and Stop modes
      GPIOFSMEN      : Boolean := True;
      --  IO port F clocks enable during Sleep and Stop modes
      GPIOGSMEN      : Boolean := True;
      --  IO port G clocks enable during Sleep and Stop modes
      GPIOHSMEN      : Boolean := True;
      --  IO port H clocks enable during Sleep and Stop modes
      GPIOISMEN      : Boolean := False;
      --  IO port I clocks enable during Sleep and Stop modes
      SRAM2SMEN      : Boolean := True;
      --  SRAM2 interface clocks enable during Sleep and Stop modes
      SRAM3SMEN      : Boolean := False;
      --  SRAM2 interface clocks enable during Sleep and Stop modes
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  unspecified
      OTGFSSMEN      : Boolean := True;
      --  OTG full speed clocks enable during Sleep and Stop modes
      ADCFSSMEN      : Boolean := True;
      --  ADC clocks enable during Sleep and Stop modes
      DCMISMEN       : Boolean := False;
      --  DCMI clock enable during Sleep and Stop modes
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  unspecified
      AESSMEN        : Boolean := True;
      --  AES accelerator clocks enable during Sleep and Stop modes
      HASHSMEN       : Boolean := False;
      --  HASH clock enable during Sleep and Stop modes
      RNGSMEN        : Boolean := True;
      --  Random Number Generator clocks enable during Sleep and Stop modes
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  unspecified
      OSPIMSMEN      : Boolean := False;
      --  OctoSPI IO manager clocks enable during Sleep and Stop modes
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  unspecified
      SDMMC1SMEN     : Boolean := False;
      --  SDMMC1 clocks enable during Sleep and Stop modes
      Reserved_23_31 : HAL.UInt9 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB2SMENR_Register use record
      GPIOASMEN      at 0 range 0 .. 0;
      GPIOBSMEN      at 0 range 1 .. 1;
      GPIOCSMEN      at 0 range 2 .. 2;
      GPIODSMEN      at 0 range 3 .. 3;
      GPIOESMEN      at 0 range 4 .. 4;
      GPIOFSMEN      at 0 range 5 .. 5;
      GPIOGSMEN      at 0 range 6 .. 6;
      GPIOHSMEN      at 0 range 7 .. 7;
      GPIOISMEN      at 0 range 8 .. 8;
      SRAM2SMEN      at 0 range 9 .. 9;
      SRAM3SMEN      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      OTGFSSMEN      at 0 range 12 .. 12;
      ADCFSSMEN      at 0 range 13 .. 13;
      DCMISMEN       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      AESSMEN        at 0 range 16 .. 16;
      HASHSMEN       at 0 range 17 .. 17;
      RNGSMEN        at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OSPIMSMEN      at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      SDMMC1SMEN     at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  AHB3 peripheral clocks enable in Sleep and Stop modes register
   type AHB3SMENR_Register is record
      FMCSMEN        : Boolean := True;
      --  Flexible memory controller clocks enable during Sleep and Stop modes
      Reserved_1_8   : HAL.UInt8 := 16#80#;
      --  unspecified
      OCTOSPI2       : Boolean := False;
      --  OctoSPI2 memory interface clocks enable during Sleep and Stop modes
      Reserved_10_31 : HAL.UInt22 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB3SMENR_Register use record
      FMCSMEN        at 0 range 0 .. 0;
      Reserved_1_8   at 0 range 1 .. 8;
      OCTOSPI2       at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  APB1SMENR1
   type APB1SMENR1_Register is record
      TIM2SMEN       : Boolean := True;
      --  TIM2 timer clocks enable during Sleep and Stop modes
      TIM3SMEN       : Boolean := True;
      --  TIM3 timer clocks enable during Sleep and Stop modes
      TIM4SMEN       : Boolean := True;
      --  TIM4 timer clocks enable during Sleep and Stop modes
      TIM5SMEN       : Boolean := True;
      --  TIM5 timer clocks enable during Sleep and Stop modes
      TIM6SMEN       : Boolean := True;
      --  TIM6 timer clocks enable during Sleep and Stop modes
      TIM7SMEN       : Boolean := True;
      --  TIM7 timer clocks enable during Sleep and Stop modes
      Reserved_6_9   : HAL.UInt4 := 16#8#;
      --  unspecified
      RTCAPBSMEN     : Boolean := False;
      --  RTC APB clock enable during Sleep and Stop modes
      WWDGSMEN       : Boolean := True;
      --  Window watchdog clocks enable during Sleep and Stop modes
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  unspecified
      SPI2SMEN       : Boolean := True;
      --  SPI2 clocks enable during Sleep and Stop modes
      SP3SMEN        : Boolean := True;
      --  SPI3 clocks enable during Sleep and Stop modes
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  unspecified
      USART2SMEN     : Boolean := True;
      --  USART2 clocks enable during Sleep and Stop modes
      USART3SMEN     : Boolean := True;
      --  USART3 clocks enable during Sleep and Stop modes
      UART4SMEN      : Boolean := True;
      --  UART4 clocks enable during Sleep and Stop modes
      UART5SMEN      : Boolean := True;
      --  UART5 clocks enable during Sleep and Stop modes
      I2C1SMEN       : Boolean := True;
      --  I2C1 clocks enable during Sleep and Stop modes
      I2C2SMEN       : Boolean := True;
      --  I2C2 clocks enable during Sleep and Stop modes
      I2C3SMEN       : Boolean := True;
      --  I2C3 clocks enable during Sleep and Stop modes
      CRSSMEN        : Boolean := False;
      --  CRS clock enable during Sleep and Stop modes
      CAN1SMEN       : Boolean := True;
      --  CAN1 clocks enable during Sleep and Stop modes
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  unspecified
      PWRSMEN        : Boolean := True;
      --  Power interface clocks enable during Sleep and Stop modes
      DAC1SMEN       : Boolean := True;
      --  DAC1 interface clocks enable during Sleep and Stop modes
      OPAMPSMEN      : Boolean := True;
      --  OPAMP interface clocks enable during Sleep and Stop modes
      LPTIM1SMEN     : Boolean := True;
      --  Low power timer 1 clocks enable during Sleep and Stop modes
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1SMENR1_Register use record
      TIM2SMEN       at 0 range 0 .. 0;
      TIM3SMEN       at 0 range 1 .. 1;
      TIM4SMEN       at 0 range 2 .. 2;
      TIM5SMEN       at 0 range 3 .. 3;
      TIM6SMEN       at 0 range 4 .. 4;
      TIM7SMEN       at 0 range 5 .. 5;
      Reserved_6_9   at 0 range 6 .. 9;
      RTCAPBSMEN     at 0 range 10 .. 10;
      WWDGSMEN       at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2SMEN       at 0 range 14 .. 14;
      SP3SMEN        at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      USART2SMEN     at 0 range 17 .. 17;
      USART3SMEN     at 0 range 18 .. 18;
      UART4SMEN      at 0 range 19 .. 19;
      UART5SMEN      at 0 range 20 .. 20;
      I2C1SMEN       at 0 range 21 .. 21;
      I2C2SMEN       at 0 range 22 .. 22;
      I2C3SMEN       at 0 range 23 .. 23;
      CRSSMEN        at 0 range 24 .. 24;
      CAN1SMEN       at 0 range 25 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      PWRSMEN        at 0 range 28 .. 28;
      DAC1SMEN       at 0 range 29 .. 29;
      OPAMPSMEN      at 0 range 30 .. 30;
      LPTIM1SMEN     at 0 range 31 .. 31;
   end record;

   --  APB1 peripheral clocks enable in Sleep and Stop modes register 2
   type APB1SMENR2_Register is record
      LPUART1SMEN   : Boolean := True;
      --  Low power UART 1 clocks enable during Sleep and Stop modes
      I2C4SMEN      : Boolean := False;
      --  I2C4 clocks enable during Sleep and Stop modes
      Reserved_2_4  : HAL.UInt3 := 16#1#;
      --  unspecified
      LPTIM2SMEN    : Boolean := True;
      --  LPTIM2SMEN
      Reserved_6_31 : HAL.UInt26 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1SMENR2_Register use record
      LPUART1SMEN   at 0 range 0 .. 0;
      I2C4SMEN      at 0 range 1 .. 1;
      Reserved_2_4  at 0 range 2 .. 4;
      LPTIM2SMEN    at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  APB2SMENR
   type APB2SMENR_Register is record
      SYSCFGSMEN     : Boolean := True;
      --  SYSCFG clocks enable during Sleep and Stop modes
      Reserved_1_10  : HAL.UInt10 := 16#200#;
      --  unspecified
      TIM1SMEN       : Boolean := True;
      --  TIM1 timer clocks enable during Sleep and Stop modes
      SPI1SMEN       : Boolean := True;
      --  SPI1 clocks enable during Sleep and Stop modes
      TIM8SMEN       : Boolean := True;
      --  TIM8 timer clocks enable during Sleep and Stop modes
      USART1SMEN     : Boolean := True;
      --  USART1clocks enable during Sleep and Stop modes
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  unspecified
      TIM15SMEN      : Boolean := True;
      --  TIM15 timer clocks enable during Sleep and Stop modes
      TIM16SMEN      : Boolean := True;
      --  TIM16 timer clocks enable during Sleep and Stop modes
      TIM17SMEN      : Boolean := True;
      --  TIM17 timer clocks enable during Sleep and Stop modes
      Reserved_19_20 : HAL.UInt2 := 16#0#;
      --  unspecified
      SAI1SMEN       : Boolean := True;
      --  SAI1 clocks enable during Sleep and Stop modes
      SAI2SMEN       : Boolean := True;
      --  SAI2 clocks enable during Sleep and Stop modes
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  unspecified
      DFSDM1SMEN     : Boolean := True;
      --  DFSDM timer clocks enable during Sleep and Stop modes
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  unspecified
      LTDCSMEN       : Boolean := False;
      --  LCD-TFT timer clocks enable during Sleep and Stop modes
      DSISMEN        : Boolean := False;
      --  DSI clocks enable during Sleep and Stop modes
      Reserved_28_31 : HAL.UInt4 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2SMENR_Register use record
      SYSCFGSMEN     at 0 range 0 .. 0;
      Reserved_1_10  at 0 range 1 .. 10;
      TIM1SMEN       at 0 range 11 .. 11;
      SPI1SMEN       at 0 range 12 .. 12;
      TIM8SMEN       at 0 range 13 .. 13;
      USART1SMEN     at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TIM15SMEN      at 0 range 16 .. 16;
      TIM16SMEN      at 0 range 17 .. 17;
      TIM17SMEN      at 0 range 18 .. 18;
      Reserved_19_20 at 0 range 19 .. 20;
      SAI1SMEN       at 0 range 21 .. 21;
      SAI2SMEN       at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      DFSDM1SMEN     at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      LTDCSMEN       at 0 range 26 .. 26;
      DSISMEN        at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype CCIPR_USART1SEL_Field is HAL.UInt2;
   subtype CCIPR_USART2SEL_Field is HAL.UInt2;
   subtype CCIPR_USART3SEL_Field is HAL.UInt2;
   subtype CCIPR_UART4SEL_Field is HAL.UInt2;
   subtype CCIPR_UART5SEL_Field is HAL.UInt2;
   subtype CCIPR_LPUART1SEL_Field is HAL.UInt2;
   subtype CCIPR_I2C1SEL_Field is HAL.UInt2;
   subtype CCIPR_I2C2SEL_Field is HAL.UInt2;
   subtype CCIPR_I2C3SEL_Field is HAL.UInt2;
   subtype CCIPR_LPTIM1SEL_Field is HAL.UInt2;
   subtype CCIPR_LPTIM2SEL_Field is HAL.UInt2;
   subtype CCIPR_SAI1SEL_Field is HAL.UInt2;
   subtype CCIPR_SAI2SEL_Field is HAL.UInt2;
   subtype CCIPR_CLK48SEL_Field is HAL.UInt2;
   subtype CCIPR_ADCSEL_Field is HAL.UInt2;

   --  CCIPR
   type CCIPR_Register is record
      USART1SEL      : CCIPR_USART1SEL_Field := 16#0#;
      --  USART1 clock source selection
      USART2SEL      : CCIPR_USART2SEL_Field := 16#0#;
      --  USART2 clock source selection
      USART3SEL      : CCIPR_USART3SEL_Field := 16#0#;
      --  USART3 clock source selection
      UART4SEL       : CCIPR_UART4SEL_Field := 16#0#;
      --  UART4 clock source selection
      UART5SEL       : CCIPR_UART5SEL_Field := 16#0#;
      --  UART5 clock source selection
      LPUART1SEL     : CCIPR_LPUART1SEL_Field := 16#0#;
      --  LPUART1 clock source selection
      I2C1SEL        : CCIPR_I2C1SEL_Field := 16#0#;
      --  I2C1 clock source selection
      I2C2SEL        : CCIPR_I2C2SEL_Field := 16#0#;
      --  I2C2 clock source selection
      I2C3SEL        : CCIPR_I2C3SEL_Field := 16#0#;
      --  I2C3 clock source selection
      LPTIM1SEL      : CCIPR_LPTIM1SEL_Field := 16#0#;
      --  Low power timer 1 clock source selection
      LPTIM2SEL      : CCIPR_LPTIM2SEL_Field := 16#0#;
      --  Low power timer 2 clock source selection
      SAI1SEL        : CCIPR_SAI1SEL_Field := 16#0#;
      --  SAI1 clock source selection
      SAI2SEL        : CCIPR_SAI2SEL_Field := 16#0#;
      --  SAI2 clock source selection
      CLK48SEL       : CCIPR_CLK48SEL_Field := 16#0#;
      --  48 MHz clock source selection
      ADCSEL         : CCIPR_ADCSEL_Field := 16#0#;
      --  ADCs clock source selection
      Reserved_30_31 : HAL.UInt2 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCIPR_Register use record
      USART1SEL      at 0 range 0 .. 1;
      USART2SEL      at 0 range 2 .. 3;
      USART3SEL      at 0 range 4 .. 5;
      UART4SEL       at 0 range 6 .. 7;
      UART5SEL       at 0 range 8 .. 9;
      LPUART1SEL     at 0 range 10 .. 11;
      I2C1SEL        at 0 range 12 .. 13;
      I2C2SEL        at 0 range 14 .. 15;
      I2C3SEL        at 0 range 16 .. 17;
      LPTIM1SEL      at 0 range 18 .. 19;
      LPTIM2SEL      at 0 range 20 .. 21;
      SAI1SEL        at 0 range 22 .. 23;
      SAI2SEL        at 0 range 24 .. 25;
      CLK48SEL       at 0 range 26 .. 27;
      ADCSEL         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype BDCR_LSEDRV_Field is HAL.UInt2;
   subtype BDCR_RTCSEL_Field is HAL.UInt2;

   --  BDCR
   type BDCR_Register is record
      LSEON          : Boolean := False;
      --  LSE oscillator enable
      LSERDY         : Boolean := False;
      --  Read-only. LSE oscillator ready
      LSEBYP         : Boolean := False;
      --  LSE oscillator bypass
      LSEDRV         : BDCR_LSEDRV_Field := 16#0#;
      --  SE oscillator drive capability
      LSECSSON       : Boolean := False;
      --  LSECSSON
      LSECSSD        : Boolean := False;
      --  Read-only. LSECSSD
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  unspecified
      RTCSEL         : BDCR_RTCSEL_Field := 16#0#;
      --  RTC clock source selection
      Reserved_10_14 : HAL.UInt5 := 16#0#;
      --  unspecified
      RTCEN          : Boolean := False;
      --  RTC clock enable
      BDRST          : Boolean := False;
      --  Backup domain software reset
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  unspecified
      LSCOEN         : Boolean := False;
      --  Low speed clock output enable
      LSCOSEL        : Boolean := False;
      --  Low speed clock output selection
      Reserved_26_31 : HAL.UInt6 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BDCR_Register use record
      LSEON          at 0 range 0 .. 0;
      LSERDY         at 0 range 1 .. 1;
      LSEBYP         at 0 range 2 .. 2;
      LSEDRV         at 0 range 3 .. 4;
      LSECSSON       at 0 range 5 .. 5;
      LSECSSD        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RTCSEL         at 0 range 8 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      RTCEN          at 0 range 15 .. 15;
      BDRST          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      LSCOEN         at 0 range 24 .. 24;
      LSCOSEL        at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype CSR_MSISRANGE_Field is HAL.UInt4;

   --  CSR
   type CSR_Register is record
      LSION          : Boolean := False;
      --  LSI oscillator enable
      LSIRDY         : Boolean := False;
      --  Read-only. LSI oscillator ready
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  unspecified
      MSISRANGE      : CSR_MSISRANGE_Field := 16#6#;
      --  SI range after Standby mode
      Reserved_12_22 : HAL.UInt11 := 16#0#;
      --  unspecified
      RMVF           : Boolean := False;
      --  Remove reset flag
      FWRSTF         : Boolean := False;
      --  Read-only. Firewall reset flag
      OBLRSTF        : Boolean := False;
      --  Read-only. Option byte loader reset flag
      PINRSTF        : Boolean := True;
      --  Read-only. Pin reset flag
      BORRSTF        : Boolean := True;
      --  Read-only. BOR flag
      SFTRSTF        : Boolean := False;
      --  Read-only. Software reset flag
      IWDGRSTF       : Boolean := False;
      --  Read-only. Independent window watchdog reset flag
      WWDGRSTF       : Boolean := False;
      --  Read-only. Window watchdog reset flag
      LPWRSTF        : Boolean := False;
      --  Read-only. Low-power reset flag
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      LSION          at 0 range 0 .. 0;
      LSIRDY         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      MSISRANGE      at 0 range 8 .. 11;
      Reserved_12_22 at 0 range 12 .. 22;
      RMVF           at 0 range 23 .. 23;
      FWRSTF         at 0 range 24 .. 24;
      OBLRSTF        at 0 range 25 .. 25;
      PINRSTF        at 0 range 26 .. 26;
      BORRSTF        at 0 range 27 .. 27;
      SFTRSTF        at 0 range 28 .. 28;
      IWDGRSTF       at 0 range 29 .. 29;
      WWDGRSTF       at 0 range 30 .. 30;
      LPWRSTF        at 0 range 31 .. 31;
   end record;

   subtype CRRCR_HSI48CAL_Field is HAL.UInt9;

   --  Clock recovery RC register
   type CRRCR_Register is record
      HSI48ON        : Boolean := False;
      --  HSI48 clock enable
      HSI48RDY       : Boolean := False;
      --  Read-only. HSI48 clock ready flag
      Reserved_2_6   : HAL.UInt5 := 16#0#;
      --  unspecified
      HSI48CAL       : CRRCR_HSI48CAL_Field := 16#0#;
      --  Read-only. HSI48 clock calibration
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRRCR_Register use record
      HSI48ON        at 0 range 0 .. 0;
      HSI48RDY       at 0 range 1 .. 1;
      Reserved_2_6   at 0 range 2 .. 6;
      HSI48CAL       at 0 range 7 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CCIPR2_I2C4SEL_Field is HAL.UInt2;
   subtype CCIPR2_ADFSDMSEL_Field is HAL.UInt2;
   subtype CCIPR2_SAI1SEL_Field is HAL.UInt3;
   subtype CCIPR2_SAI2SEL_Field is HAL.UInt3;
   subtype CCIPR2_PLLSAI2DIVR_Field is HAL.UInt2;
   subtype CCIPR2_OSPISEL_Field is HAL.UInt2;

   --  Peripherals independent clock configuration register
   type CCIPR2_Register is record
      I2C4SEL        : CCIPR2_I2C4SEL_Field := 16#0#;
      --  I2C4 clock source selection
      DFSDMSEL       : Boolean := False;
      --  Digital filter for sigma delta modulator kernel clock source
      --  selection
      ADFSDMSEL      : CCIPR2_ADFSDMSEL_Field := 16#0#;
      --  Digital filter for sigma delta modulator audio clock source selection
      SAI1SEL        : CCIPR2_SAI1SEL_Field := 16#0#;
      --  SAI1 clock source selection
      SAI2SEL        : CCIPR2_SAI2SEL_Field := 16#0#;
      --  SAI2 clock source selection
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  unspecified
      DSISEL         : Boolean := False;
      --  clock selection
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  unspecified
      SDMMCSEL       : Boolean := False;
      --  SDMMC clock selection
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  unspecified
      PLLSAI2DIVR    : CCIPR2_PLLSAI2DIVR_Field := 16#0#;
      --  division factor for LTDC clock
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  unspecified
      OSPISEL        : CCIPR2_OSPISEL_Field := 16#0#;
      --  Octospi clock source selection
      Reserved_22_31 : HAL.UInt10 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCIPR2_Register use record
      I2C4SEL        at 0 range 0 .. 1;
      DFSDMSEL       at 0 range 2 .. 2;
      ADFSDMSEL      at 0 range 3 .. 4;
      SAI1SEL        at 0 range 5 .. 7;
      SAI2SEL        at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      DSISEL         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      SDMMCSEL       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PLLSAI2DIVR    at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      OSPISEL        at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Reset and clock control
   type RCC_Peripheral is record
      CR          : aliased CR_Register;
      --  Clock control register
      ICSCR       : aliased ICSCR_Register;
      --  Internal clock sources calibration register
      CFGR        : aliased CFGR_Register;
      --  Clock configuration register
      PLLCFGR     : aliased PLLCFGR_Register;
      --  PLL configuration register
      PLLSAI1CFGR : aliased PLLSAI1CFGR_Register;
      --  PLLSAI1 configuration register
      PLLSAI2CFGR : aliased PLLSAI2CFGR_Register;
      --  PLLSAI2 configuration register
      CIER        : aliased CIER_Register;
      --  Clock interrupt enable register
      CIFR        : aliased CIFR_Register;
      --  Clock interrupt flag register
      CICR        : aliased CICR_Register;
      --  Clock interrupt clear register
      AHB1RSTR    : aliased AHB1RSTR_Register;
      --  AHB1 peripheral reset register
      AHB2RSTR    : aliased AHB2RSTR_Register;
      --  AHB2 peripheral reset register
      AHB3RSTR    : aliased AHB3RSTR_Register;
      --  AHB3 peripheral reset register
      APB1RSTR1   : aliased APB1RSTR1_Register;
      --  APB1 peripheral reset register 1
      APB1RSTR2   : aliased APB1RSTR2_Register;
      --  APB1 peripheral reset register 2
      APB2RSTR    : aliased APB2RSTR_Register;
      --  APB2 peripheral reset register
      AHB1ENR     : aliased AHB1ENR_Register;
      --  AHB1 peripheral clock enable register
      AHB2ENR     : aliased AHB2ENR_Register;
      --  AHB2 peripheral clock enable register
      AHB3ENR     : aliased AHB3ENR_Register;
      --  AHB3 peripheral clock enable register
      APB1ENR1    : aliased APB1ENR1_Register;
      --  APB1ENR1
      APB1ENR2    : aliased APB1ENR2_Register;
      --  APB1 peripheral clock enable register 2
      APB2ENR     : aliased APB2ENR_Register;
      --  APB2ENR
      AHB1SMENR   : aliased AHB1SMENR_Register;
      --  AHB1 peripheral clocks enable in Sleep and Stop modes register
      AHB2SMENR   : aliased AHB2SMENR_Register;
      --  AHB2 peripheral clocks enable in Sleep and Stop modes register
      AHB3SMENR   : aliased AHB3SMENR_Register;
      --  AHB3 peripheral clocks enable in Sleep and Stop modes register
      APB1SMENR1  : aliased APB1SMENR1_Register;
      --  APB1SMENR1
      APB1SMENR2  : aliased APB1SMENR2_Register;
      --  APB1 peripheral clocks enable in Sleep and Stop modes register 2
      APB2SMENR   : aliased APB2SMENR_Register;
      --  APB2SMENR
      CCIPR       : aliased CCIPR_Register;
      --  CCIPR
      BDCR        : aliased BDCR_Register;
      --  BDCR
      CSR         : aliased CSR_Register;
      --  CSR
      CRRCR       : aliased CRRCR_Register;
      --  Clock recovery RC register
      CCIPR2      : aliased CCIPR2_Register;
      --  Peripherals independent clock configuration register
   end record
     with Volatile;

   for RCC_Peripheral use record
      CR          at 16#0# range 0 .. 31;
      ICSCR       at 16#4# range 0 .. 31;
      CFGR        at 16#8# range 0 .. 31;
      PLLCFGR     at 16#C# range 0 .. 31;
      PLLSAI1CFGR at 16#10# range 0 .. 31;
      PLLSAI2CFGR at 16#14# range 0 .. 31;
      CIER        at 16#18# range 0 .. 31;
      CIFR        at 16#1C# range 0 .. 31;
      CICR        at 16#20# range 0 .. 31;
      AHB1RSTR    at 16#28# range 0 .. 31;
      AHB2RSTR    at 16#2C# range 0 .. 31;
      AHB3RSTR    at 16#30# range 0 .. 31;
      APB1RSTR1   at 16#38# range 0 .. 31;
      APB1RSTR2   at 16#3C# range 0 .. 31;
      APB2RSTR    at 16#40# range 0 .. 31;
      AHB1ENR     at 16#48# range 0 .. 31;
      AHB2ENR     at 16#4C# range 0 .. 31;
      AHB3ENR     at 16#50# range 0 .. 31;
      APB1ENR1    at 16#58# range 0 .. 31;
      APB1ENR2    at 16#5C# range 0 .. 31;
      APB2ENR     at 16#60# range 0 .. 31;
      AHB1SMENR   at 16#68# range 0 .. 31;
      AHB2SMENR   at 16#6C# range 0 .. 31;
      AHB3SMENR   at 16#70# range 0 .. 31;
      APB1SMENR1  at 16#78# range 0 .. 31;
      APB1SMENR2  at 16#7C# range 0 .. 31;
      APB2SMENR   at 16#80# range 0 .. 31;
      CCIPR       at 16#88# range 0 .. 31;
      BDCR        at 16#90# range 0 .. 31;
      CSR         at 16#94# range 0 .. 31;
      CRRCR       at 16#98# range 0 .. 31;
      CCIPR2      at 16#9C# range 0 .. 31;
   end record;

   --  Reset and clock control
   RCC_Periph : aliased RCC_Peripheral
     with Import, Address => RCC_Base;

end STM32_SVD.RCC;
