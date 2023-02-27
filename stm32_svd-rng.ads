pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.RNG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  control register
   type CR_Register is record
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  unspecified
      RNGEN         : Boolean := False;
      --  Random number generator enable
      IE            : Boolean := False;
      --  Interrupt enable
      Reserved_4_4  : HAL.Bit := 16#0#;
      --  unspecified
      CED           : Boolean := False;
      --  Clock error detection disabled
      Reserved_6_31 : HAL.UInt26 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      RNGEN         at 0 range 2 .. 2;
      IE            at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      CED           at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  status register
   type SR_Register is record
      DRDY          : Boolean := False;
      --  Read-only. Data ready
      CECS          : Boolean := False;
      --  Read-only. Clock error current status
      SECS          : Boolean := False;
      --  Read-only. Seed error current status
      Reserved_3_4  : HAL.UInt2 := 16#0#;
      --  unspecified
      CEIS          : Boolean := False;
      --  Clock error interrupt status
      SEIS          : Boolean := False;
      --  Seed error interrupt status
      Reserved_7_31 : HAL.UInt25 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      DRDY          at 0 range 0 .. 0;
      CECS          at 0 range 1 .. 1;
      SECS          at 0 range 2 .. 2;
      Reserved_3_4  at 0 range 3 .. 4;
      CEIS          at 0 range 5 .. 5;
      SEIS          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Random number generator
   type RNG_Peripheral is record
      CR : aliased CR_Register;
      --  control register
      SR : aliased SR_Register;
      --  status register
      DR : aliased HAL.UInt32;
      --  data register
   end record
     with Volatile;

   for RNG_Peripheral use record
      CR at 16#0# range 0 .. 31;
      SR at 16#4# range 0 .. 31;
      DR at 16#8# range 0 .. 31;
   end record;

   --  Random number generator
   RNG_Periph : aliased RNG_Peripheral
     with Import, Address => RNG_Base;

end STM32_SVD.RNG;
