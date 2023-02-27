pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.STK is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  SysTick control and status register
   type CTRL_Register is record
      ENABLE         : Boolean := False;
      --  Counter enable
      TICKINT        : Boolean := False;
      --  SysTick exception request enable
      CLKSOURCE      : Boolean := False;
      --  Clock source selection
      Reserved_3_15  : HAL.UInt13 := 16#0#;
      --  unspecified
      COUNTFLAG      : Boolean := False;
      --  COUNTFLAG
      Reserved_17_31 : HAL.UInt15 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      ENABLE         at 0 range 0 .. 0;
      TICKINT        at 0 range 1 .. 1;
      CLKSOURCE      at 0 range 2 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
      COUNTFLAG      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype LOAD_RELOAD_Field is HAL.UInt24;

   --  SysTick reload value register
   type LOAD_Register is record
      RELOAD         : LOAD_RELOAD_Field := 16#0#;
      --  RELOAD value
      Reserved_24_31 : HAL.UInt8 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOAD_Register use record
      RELOAD         at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype VAL_CURRENT_Field is HAL.UInt24;

   --  SysTick current value register
   type VAL_Register is record
      CURRENT        : VAL_CURRENT_Field := 16#0#;
      --  Current counter value
      Reserved_24_31 : HAL.UInt8 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VAL_Register use record
      CURRENT        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CALIB_TENMS_Field is HAL.UInt24;

   --  SysTick calibration value register
   type CALIB_Register is record
      TENMS          : CALIB_TENMS_Field := 16#0#;
      --  Calibration value
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  unspecified
      SKEW           : Boolean := False;
      --  SKEW flag: Indicates whether the TENMS value is exact
      NOREF          : Boolean := False;
      --  NOREF flag. Reads as zero
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CALIB_Register use record
      TENMS          at 0 range 0 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      SKEW           at 0 range 30 .. 30;
      NOREF          at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SysTick timer
   type STK_Peripheral is record
      CTRL  : aliased CTRL_Register;
      --  SysTick control and status register
      LOAD  : aliased LOAD_Register;
      --  SysTick reload value register
      VAL   : aliased VAL_Register;
      --  SysTick current value register
      CALIB : aliased CALIB_Register;
      --  SysTick calibration value register
   end record
     with Volatile;

   for STK_Peripheral use record
      CTRL  at 16#0# range 0 .. 31;
      LOAD  at 16#4# range 0 .. 31;
      VAL   at 16#8# range 0 .. 31;
      CALIB at 16#C# range 0 .. 31;
   end record;

   --  SysTick timer
   STK_Periph : aliased STK_Peripheral
     with Import, Address => STK_Base;

end STM32_SVD.STK;
