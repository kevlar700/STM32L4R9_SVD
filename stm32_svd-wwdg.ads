pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.WWDG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR_T_Field is HAL.UInt7;

   --  Control register
   type CR_Register is record
      T             : CR_T_Field := 16#7F#;
      --  7-bit counter (MSB to LSB)
      WDGA          : Boolean := False;
      --  Activation bit
      Reserved_8_31 : HAL.UInt24 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      T             at 0 range 0 .. 6;
      WDGA          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CFR_W_Field is HAL.UInt7;
   subtype CFR_WDGTB_Field is HAL.UInt2;

   --  Configuration register
   type CFR_Register is record
      W              : CFR_W_Field := 16#7F#;
      --  7-bit window value
      WDGTB          : CFR_WDGTB_Field := 16#0#;
      --  Timer base
      EWI            : Boolean := False;
      --  Early wakeup interrupt
      Reserved_10_31 : HAL.UInt22 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFR_Register use record
      W              at 0 range 0 .. 6;
      WDGTB          at 0 range 7 .. 8;
      EWI            at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Status register
   type SR_Register is record
      EWIF          : Boolean := False;
      --  Early wakeup interrupt flag
      Reserved_1_31 : HAL.UInt31 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      EWIF          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System window watchdog
   type WWDG_Peripheral is record
      CR  : aliased CR_Register;
      --  Control register
      CFR : aliased CFR_Register;
      --  Configuration register
      SR  : aliased SR_Register;
      --  Status register
   end record
     with Volatile;

   for WWDG_Peripheral use record
      CR  at 16#0# range 0 .. 31;
      CFR at 16#4# range 0 .. 31;
      SR  at 16#8# range 0 .. 31;
   end record;

   --  System window watchdog
   WWDG_Periph : aliased WWDG_Peripheral
     with Import, Address => WWDG_Base;

end STM32_SVD.WWDG;
