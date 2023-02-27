pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.VREF is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  VREF control and status register
   type CSR_Register is record
      ENVR          : Boolean := False;
      --  Voltage reference buffer enable
      HIZ           : Boolean := True;
      --  High impedance mode
      VRS           : Boolean := False;
      --  Voltage reference scale
      VRR           : Boolean := False;
      --  Read-only. Voltage reference buffer ready
      Reserved_4_31 : HAL.UInt28 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      ENVR          at 0 range 0 .. 0;
      HIZ           at 0 range 1 .. 1;
      VRS           at 0 range 2 .. 2;
      VRR           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype CCR_TRIM_Field is HAL.UInt6;

   --  calibration control register
   type CCR_Register is record
      TRIM          : CCR_TRIM_Field := 16#0#;
      --  Trimming code
      Reserved_6_31 : HAL.UInt26 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      TRIM          at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Voltage reference buffer
   type VREFBUF_Peripheral is record
      CSR : aliased CSR_Register;
      --  VREF control and status register
      CCR : aliased CCR_Register;
      --  calibration control register
   end record
     with Volatile;

   for VREFBUF_Peripheral use record
      CSR at 16#0# range 0 .. 31;
      CCR at 16#4# range 0 .. 31;
   end record;

   --  Voltage reference buffer
   VREFBUF_Periph : aliased VREFBUF_Peripheral
     with Import, Address => VREFBUF_Base;

end STM32_SVD.VREF;
