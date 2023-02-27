pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.CRS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR_TRIM_Field is HAL.UInt6;

   --  control register
   type CR_Register is record
      SYNCOKIE       : Boolean := False;
      --  SYNC event OK interrupt enable
      SYNCWARNIE     : Boolean := False;
      --  SYNC warning interrupt enable
      ERRIE          : Boolean := False;
      --  Synchronization or trimming error interrupt enable
      ESYNCIE        : Boolean := False;
      --  Expected SYNC interrupt enable
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  unspecified
      CEN            : Boolean := False;
      --  Frequency error counter enable
      AUTOTRIMEN     : Boolean := False;
      --  Automatic trimming enable
      SWSYNC         : Boolean := False;
      --  Generate software SYNC event
      TRIM           : CR_TRIM_Field := 16#20#;
      --  HSI48 oscillator smooth trimming
      Reserved_14_31 : HAL.UInt18 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      SYNCOKIE       at 0 range 0 .. 0;
      SYNCWARNIE     at 0 range 1 .. 1;
      ERRIE          at 0 range 2 .. 2;
      ESYNCIE        at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      CEN            at 0 range 5 .. 5;
      AUTOTRIMEN     at 0 range 6 .. 6;
      SWSYNC         at 0 range 7 .. 7;
      TRIM           at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype CFGR_RELOAD_Field is HAL.UInt16;
   subtype CFGR_FELIM_Field is HAL.UInt8;
   subtype CFGR_SYNCDIV_Field is HAL.UInt3;
   subtype CFGR_SYNCSRC_Field is HAL.UInt2;

   --  configuration register
   type CFGR_Register is record
      RELOAD         : CFGR_RELOAD_Field := 16#BB7F#;
      --  Counter reload value
      FELIM          : CFGR_FELIM_Field := 16#22#;
      --  Frequency error limit
      SYNCDIV        : CFGR_SYNCDIV_Field := 16#0#;
      --  SYNC divider
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  unspecified
      SYNCSRC        : CFGR_SYNCSRC_Field := 16#2#;
      --  SYNC signal source selection
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  unspecified
      SYNCPOL        : Boolean := False;
      --  SYNC polarity selection
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR_Register use record
      RELOAD         at 0 range 0 .. 15;
      FELIM          at 0 range 16 .. 23;
      SYNCDIV        at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      SYNCSRC        at 0 range 28 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      SYNCPOL        at 0 range 31 .. 31;
   end record;

   subtype ISR_FECAP_Field is HAL.UInt16;

   --  interrupt and status register
   type ISR_Register is record
      SYNCOKF        : Boolean;
      --  Read-only. SYNC event OK flag
      SYNCWARNF      : Boolean;
      --  Read-only. SYNC warning flag
      ERRF           : Boolean;
      --  Read-only. Error flag
      ESYNCF         : Boolean;
      --  Read-only. Expected SYNC flag
      Reserved_4_7   : HAL.UInt4;
      --  unspecified
      SYNCERR        : Boolean;
      --  Read-only. SYNC error
      SYNCMISS       : Boolean;
      --  Read-only. SYNC missed
      TRIMOVF        : Boolean;
      --  Read-only. Trimming overflow or underflow
      Reserved_11_14 : HAL.UInt4;
      --  unspecified
      FEDIR          : Boolean;
      --  Read-only. Frequency error direction
      FECAP          : ISR_FECAP_Field;
      --  Read-only. Frequency error capture
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      SYNCOKF        at 0 range 0 .. 0;
      SYNCWARNF      at 0 range 1 .. 1;
      ERRF           at 0 range 2 .. 2;
      ESYNCF         at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      SYNCERR        at 0 range 8 .. 8;
      SYNCMISS       at 0 range 9 .. 9;
      TRIMOVF        at 0 range 10 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      FEDIR          at 0 range 15 .. 15;
      FECAP          at 0 range 16 .. 31;
   end record;

   --  interrupt flag clear register
   type ICR_Register is record
      SYNCOKC       : Boolean := False;
      --  SYNC event OK clear flag
      SYNCWARNC     : Boolean := False;
      --  SYNC warning clear flag
      ERRC          : Boolean := False;
      --  Error clear flag
      ESYNCC        : Boolean := False;
      --  Expected SYNC clear flag
      Reserved_4_31 : HAL.UInt28 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register use record
      SYNCOKC       at 0 range 0 .. 0;
      SYNCWARNC     at 0 range 1 .. 1;
      ERRC          at 0 range 2 .. 2;
      ESYNCC        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Clock recovery system
   type CRS_Peripheral is record
      CR   : aliased CR_Register;
      --  control register
      CFGR : aliased CFGR_Register;
      --  configuration register
      ISR  : aliased ISR_Register;
      --  interrupt and status register
      ICR  : aliased ICR_Register;
      --  interrupt flag clear register
   end record
     with Volatile;

   for CRS_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      CFGR at 16#4# range 0 .. 31;
      ISR  at 16#8# range 0 .. 31;
      ICR  at 16#C# range 0 .. 31;
   end record;

   --  Clock recovery system
   CRS_Periph : aliased CRS_Peripheral
     with Import, Address => CRS_Base;

end STM32_SVD.CRS;
