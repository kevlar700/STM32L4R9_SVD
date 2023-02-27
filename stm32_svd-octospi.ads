pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.OctoSPI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR_FTHRES_Field is HAL.UInt5;
   subtype CR_FMODE_Field is HAL.UInt2;

   --  control register
   type CR_Register is record
      EN             : Boolean := False;
      --  Enable
      ABORT_k        : Boolean := False;
      --  Abort request
      DMAEN          : Boolean := False;
      --  DMA enable
      TCEN           : Boolean := False;
      --  Timeout counter enable
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  unspecified
      DQM            : Boolean := False;
      --  Dual-quad mode
      FSEL           : Boolean := False;
      --  FLASH memory selection
      FTHRES         : CR_FTHRES_Field := 16#0#;
      --  IFO threshold level
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  unspecified
      TEIE           : Boolean := False;
      --  Transfer error interrupt enable
      TCIE           : Boolean := False;
      --  Transfer complete interrupt enable
      FTIE           : Boolean := False;
      --  FIFO threshold interrupt enable
      SMIE           : Boolean := False;
      --  Status match interrupt enable
      TOIE           : Boolean := False;
      --  TimeOut interrupt enable
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  unspecified
      APMS           : Boolean := False;
      --  Automatic poll mode stop
      PMM            : Boolean := False;
      --  Polling match mode
      Reserved_24_27 : HAL.UInt4 := 16#0#;
      --  unspecified
      FMODE          : CR_FMODE_Field := 16#0#;
      --  Functional mode
      Reserved_30_31 : HAL.UInt2 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      EN             at 0 range 0 .. 0;
      ABORT_k        at 0 range 1 .. 1;
      DMAEN          at 0 range 2 .. 2;
      TCEN           at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DQM            at 0 range 6 .. 6;
      FSEL           at 0 range 7 .. 7;
      FTHRES         at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TEIE           at 0 range 16 .. 16;
      TCIE           at 0 range 17 .. 17;
      FTIE           at 0 range 18 .. 18;
      SMIE           at 0 range 19 .. 19;
      TOIE           at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      APMS           at 0 range 22 .. 22;
      PMM            at 0 range 23 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      FMODE          at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DCR1_CSHT_Field is HAL.UInt3;
   subtype DCR1_DEVSIZE_Field is HAL.UInt5;
   subtype DCR1_MTYP_Field is HAL.UInt2;

   --  device configuration register
   type DCR1_Register is record
      CKMODE         : Boolean := False;
      --  Mode 0 / mode 3
      FRCK           : Boolean := False;
      --  Free running clock
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  unspecified
      CSHT           : DCR1_CSHT_Field := 16#0#;
      --  Chip-select high time
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  unspecified
      DEVSIZE        : DCR1_DEVSIZE_Field := 16#0#;
      --  Device size
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  unspecified
      MTYP           : DCR1_MTYP_Field := 16#0#;
      --  Memory type
      Reserved_26_31 : HAL.UInt6 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCR1_Register use record
      CKMODE         at 0 range 0 .. 0;
      FRCK           at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      CSHT           at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      DEVSIZE        at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      MTYP           at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype DCR2_PRESCALER_Field is HAL.UInt8;
   subtype DCR2_WRAPSIZE_Field is HAL.UInt3;

   --  device configuration register 2
   type DCR2_Register is record
      PRESCALER      : DCR2_PRESCALER_Field := 16#0#;
      --  Clock prescaler
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  unspecified
      WRAPSIZE       : DCR2_WRAPSIZE_Field := 16#0#;
      --  Wrap size
      Reserved_19_31 : HAL.UInt13 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCR2_Register use record
      PRESCALER      at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRAPSIZE       at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype DCR3_CSBOUND_Field is HAL.UInt5;

   --  device configuration register 3
   type DCR3_Register is record
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  unspecified
      CSBOUND        : DCR3_CSBOUND_Field := 16#0#;
      --  CS boundary
      Reserved_21_31 : HAL.UInt11 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCR3_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      CSBOUND        at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype SR_FLEVEL_Field is HAL.UInt6;

   --  status register
   type SR_Register is record
      TEF            : Boolean := False;
      --  Transfer error flag
      TCF            : Boolean := False;
      --  Transfer complete flag
      FTF            : Boolean := False;
      --  FIFO threshold flag
      SMF            : Boolean := False;
      --  Status match flag
      TOF            : Boolean := False;
      --  Timeout flag
      BUSY           : Boolean := False;
      --  BUSY
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  unspecified
      FLEVEL         : SR_FLEVEL_Field := 16#0#;
      --  FIFO level
      Reserved_14_31 : HAL.UInt18 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      TEF            at 0 range 0 .. 0;
      TCF            at 0 range 1 .. 1;
      FTF            at 0 range 2 .. 2;
      SMF            at 0 range 3 .. 3;
      TOF            at 0 range 4 .. 4;
      BUSY           at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      FLEVEL         at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  flag clear register
   type FCR_Register is record
      CTEF          : Boolean := False;
      --  Write-only. Clear transfer error flag
      CTCF          : Boolean := False;
      --  Write-only. Clear transfer complete flag
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  unspecified
      CSMF          : Boolean := False;
      --  Write-only. Clear status match flag
      CTOF          : Boolean := False;
      --  Write-only. Clear timeout flag
      Reserved_5_31 : HAL.UInt27 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FCR_Register use record
      CTEF          at 0 range 0 .. 0;
      CTCF          at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      CSMF          at 0 range 3 .. 3;
      CTOF          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype PIR_INTERVAL_Field is HAL.UInt16;

   --  polling interval register
   type PIR_Register is record
      INTERVAL       : PIR_INTERVAL_Field := 16#0#;
      --  Polling interval
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIR_Register use record
      INTERVAL       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CCR_IMODE_Field is HAL.UInt3;
   subtype CCR_ISIZE_Field is HAL.UInt2;
   subtype CCR_ADMODE_Field is HAL.UInt3;
   subtype CCR_ADSIZE_Field is HAL.UInt2;
   subtype CCR_ABMODE_Field is HAL.UInt3;
   subtype CCR_ABSIZE_Field is HAL.UInt2;
   subtype CCR_DMODE_Field is HAL.UInt3;

   --  communication configuration register
   type CCR_Register is record
      IMODE          : CCR_IMODE_Field := 16#0#;
      --  Instruction mode
      IDTR           : Boolean := False;
      --  Instruction double transfer rate
      ISIZE          : CCR_ISIZE_Field := 16#0#;
      --  Instruction size
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  unspecified
      ADMODE         : CCR_ADMODE_Field := 16#0#;
      --  Address mode
      ADDTR          : Boolean := False;
      --  Address double transfer rate
      ADSIZE         : CCR_ADSIZE_Field := 16#0#;
      --  Address size
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  unspecified
      ABMODE         : CCR_ABMODE_Field := 16#0#;
      --  Alternate byte mode
      ABDTR          : Boolean := False;
      --  Alternate bytes double transfer rate
      ABSIZE         : CCR_ABSIZE_Field := 16#0#;
      --  Alternate bytes size
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  unspecified
      DMODE          : CCR_DMODE_Field := 16#0#;
      --  Data mode
      DDTR           : Boolean := False;
      --  Alternate bytes double transfer rate
      Reserved_28_28 : HAL.Bit := 16#0#;
      --  unspecified
      DQSE           : Boolean := False;
      --  DQS enable
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  unspecified
      SIOO           : Boolean := False;
      --  Send instruction only once mode
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      IMODE          at 0 range 0 .. 2;
      IDTR           at 0 range 3 .. 3;
      ISIZE          at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ADMODE         at 0 range 8 .. 10;
      ADDTR          at 0 range 11 .. 11;
      ADSIZE         at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      ABMODE         at 0 range 16 .. 18;
      ABDTR          at 0 range 19 .. 19;
      ABSIZE         at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DMODE          at 0 range 24 .. 26;
      DDTR           at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      DQSE           at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      SIOO           at 0 range 31 .. 31;
   end record;

   subtype TCR_DCYC_Field is HAL.UInt5;

   --  timing configuration register
   type TCR_Register is record
      DCYC           : TCR_DCYC_Field := 16#0#;
      --  Number of dummy cycles
      Reserved_5_27  : HAL.UInt23 := 16#0#;
      --  unspecified
      DHQC           : Boolean := False;
      --  Delay hold quarter cycle
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  unspecified
      SSHIFT         : Boolean := False;
      --  Sample shift
      Reserved_31_31 : HAL.Bit := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCR_Register use record
      DCYC           at 0 range 0 .. 4;
      Reserved_5_27  at 0 range 5 .. 27;
      DHQC           at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      SSHIFT         at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype LPTR_TIMEOUT_Field is HAL.UInt16;

   --  low-power timeout register
   type LPTR_Register is record
      TIMEOUT        : LPTR_TIMEOUT_Field := 16#0#;
      --  Timeout period
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTR_Register use record
      TIMEOUT        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype WCCR_IMODE_Field is HAL.UInt3;
   subtype WCCR_ISIZE_Field is HAL.UInt2;
   subtype WCCR_ADMODE_Field is HAL.UInt3;
   subtype WCCR_ADSIZE_Field is HAL.UInt2;
   subtype WCCR_ABMODE_Field is HAL.UInt3;
   subtype WCCR_ABSIZE_Field is HAL.UInt2;
   subtype WCCR_DMODE_Field is HAL.UInt3;

   --  write communication configuration register
   type WCCR_Register is record
      IMODE          : WCCR_IMODE_Field := 16#0#;
      --  Instruction mode
      IDTR           : Boolean := False;
      --  Instruction double transfer rate
      ISIZE          : WCCR_ISIZE_Field := 16#0#;
      --  Instruction size
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  unspecified
      ADMODE         : WCCR_ADMODE_Field := 16#0#;
      --  Address mode
      ADDTR          : Boolean := False;
      --  Address double transfer rate
      ADSIZE         : WCCR_ADSIZE_Field := 16#0#;
      --  Address size
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  unspecified
      ABMODE         : WCCR_ABMODE_Field := 16#0#;
      --  Alternate byte mode
      ABDTR          : Boolean := False;
      --  Alternate bytes double transfer rate
      ABSIZE         : WCCR_ABSIZE_Field := 16#0#;
      --  Alternate bytes size
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  unspecified
      DMODE          : WCCR_DMODE_Field := 16#0#;
      --  Data mode
      DDTR           : Boolean := False;
      --  alternate bytes double transfer rate
      Reserved_28_28 : HAL.Bit := 16#0#;
      --  unspecified
      DQSE           : Boolean := False;
      --  DQS enable
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  unspecified
      SIOO           : Boolean := False;
      --  Send instruction only once mode
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WCCR_Register use record
      IMODE          at 0 range 0 .. 2;
      IDTR           at 0 range 3 .. 3;
      ISIZE          at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ADMODE         at 0 range 8 .. 10;
      ADDTR          at 0 range 11 .. 11;
      ADSIZE         at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      ABMODE         at 0 range 16 .. 18;
      ABDTR          at 0 range 19 .. 19;
      ABSIZE         at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DMODE          at 0 range 24 .. 26;
      DDTR           at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      DQSE           at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      SIOO           at 0 range 31 .. 31;
   end record;

   subtype WTCR_DCYC_Field is HAL.UInt5;

   --  write timing configuration register
   type WTCR_Register is record
      DCYC          : WTCR_DCYC_Field := 16#0#;
      --  Number of dummy cycles
      Reserved_5_31 : HAL.UInt27 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WTCR_Register use record
      DCYC          at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype HLCR_TACC_Field is HAL.UInt8;
   subtype HLCR_TRWR_Field is HAL.UInt8;

   --  HyperBusTM latency configuration register
   type HLCR_Register is record
      LM             : Boolean := False;
      --  Latency mode
      WZL            : Boolean := False;
      --  Write zero latency
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  unspecified
      TACC           : HLCR_TACC_Field := 16#0#;
      --  Access time
      TRWR           : HLCR_TRWR_Field := 16#0#;
      --  Read write recovery time
      Reserved_24_31 : HAL.UInt8 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HLCR_Register use record
      LM             at 0 range 0 .. 0;
      WZL            at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TACC           at 0 range 8 .. 15;
      TRWR           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype HWCFGR_AXI_Field is HAL.UInt4;
   subtype HWCFGR_FIFO_Field is HAL.UInt8;
   subtype HWCFGR_PRES_Field is HAL.UInt8;
   subtype HWCFGR_IDL_Field is HAL.UInt4;
   subtype HWCFGR_MMW_Field is HAL.UInt4;
   subtype HWCFGR_MST_Field is HAL.UInt4;

   --  HW configuration register
   type HWCFGR_Register is record
      AXI  : HWCFGR_AXI_Field;
      --  Read-only. AXI interface
      FIFO : HWCFGR_FIFO_Field;
      --  Read-only. FIFO depth
      PRES : HWCFGR_PRES_Field;
      --  Read-only. Prescaler
      IDL  : HWCFGR_IDL_Field;
      --  Read-only. ID Length
      MMW  : HWCFGR_MMW_Field;
      --  Read-only. Memory map write
      MST  : HWCFGR_MST_Field;
      --  Read-only. Master
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HWCFGR_Register use record
      AXI  at 0 range 0 .. 3;
      FIFO at 0 range 4 .. 11;
      PRES at 0 range 12 .. 19;
      IDL  at 0 range 20 .. 23;
      MMW  at 0 range 24 .. 27;
      MST  at 0 range 28 .. 31;
   end record;

   subtype VER_VER_Field is HAL.UInt8;

   --  version register
   type VER_Register is record
      VER           : VER_VER_Field;
      --  Read-only. Version
      Reserved_8_31 : HAL.UInt24;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VER_Register use record
      VER           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  OctoSPI
   type OctoSPI_Peripheral is record
      CR     : aliased CR_Register;
      --  control register
      DCR1   : aliased DCR1_Register;
      --  device configuration register
      DCR2   : aliased DCR2_Register;
      --  device configuration register 2
      DCR3   : aliased DCR3_Register;
      --  device configuration register 3
      SR     : aliased SR_Register;
      --  status register
      FCR    : aliased FCR_Register;
      --  flag clear register
      DLR    : aliased HAL.UInt32;
      --  data length register
      AR     : aliased HAL.UInt32;
      --  address register
      DR     : aliased HAL.UInt32;
      --  data register
      PSMKR  : aliased HAL.UInt32;
      --  polling status mask register
      PSMAR  : aliased HAL.UInt32;
      --  polling status match register
      PIR    : aliased PIR_Register;
      --  polling interval register
      CCR    : aliased CCR_Register;
      --  communication configuration register
      TCR    : aliased TCR_Register;
      --  timing configuration register
      IR     : aliased HAL.UInt32;
      --  instruction register
      ABR    : aliased HAL.UInt32;
      --  alternate bytes register
      LPTR   : aliased LPTR_Register;
      --  low-power timeout register
      WCCR   : aliased WCCR_Register;
      --  write communication configuration register
      WTCR   : aliased WTCR_Register;
      --  write timing configuration register
      WIR    : aliased HAL.UInt32;
      --  write instruction register
      WABR   : aliased HAL.UInt32;
      --  write alternate bytes register
      HLCR   : aliased HLCR_Register;
      --  HyperBusTM latency configuration register
      HWCFGR : aliased HWCFGR_Register;
      --  HW configuration register
      VER    : aliased VER_Register;
      --  version register
      ID     : aliased HAL.UInt32;
      --  identification
      MID    : aliased HAL.UInt32;
      --  magic ID
   end record
     with Volatile;

   for OctoSPI_Peripheral use record
      CR     at 16#0# range 0 .. 31;
      DCR1   at 16#8# range 0 .. 31;
      DCR2   at 16#C# range 0 .. 31;
      DCR3   at 16#10# range 0 .. 31;
      SR     at 16#20# range 0 .. 31;
      FCR    at 16#24# range 0 .. 31;
      DLR    at 16#40# range 0 .. 31;
      AR     at 16#48# range 0 .. 31;
      DR     at 16#50# range 0 .. 31;
      PSMKR  at 16#80# range 0 .. 31;
      PSMAR  at 16#88# range 0 .. 31;
      PIR    at 16#90# range 0 .. 31;
      CCR    at 16#100# range 0 .. 31;
      TCR    at 16#108# range 0 .. 31;
      IR     at 16#110# range 0 .. 31;
      ABR    at 16#120# range 0 .. 31;
      LPTR   at 16#130# range 0 .. 31;
      WCCR   at 16#180# range 0 .. 31;
      WTCR   at 16#188# range 0 .. 31;
      WIR    at 16#190# range 0 .. 31;
      WABR   at 16#1A0# range 0 .. 31;
      HLCR   at 16#200# range 0 .. 31;
      HWCFGR at 16#3F0# range 0 .. 31;
      VER    at 16#3F4# range 0 .. 31;
      ID     at 16#3F8# range 0 .. 31;
      MID    at 16#3FC# range 0 .. 31;
   end record;

   --  OctoSPI
   OCTOSPI1_Periph : aliased OctoSPI_Peripheral
     with Import, Address => OCTOSPI1_Base;

   --  OctoSPI
   OCTOSPI2_Periph : aliased OctoSPI_Peripheral
     with Import, Address => OCTOSPI2_Base;

end STM32_SVD.OctoSPI;
