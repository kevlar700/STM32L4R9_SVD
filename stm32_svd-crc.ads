pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.CRC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype IDR_IDR_Field is HAL.UInt8;

   --  Independent data register
   type IDR_Register is record
      IDR           : IDR_IDR_Field := 16#0#;
      --  General-purpose 8-bit data register bits
      Reserved_8_31 : HAL.UInt24 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDR_Register use record
      IDR           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CR_POLYSIZE_Field is HAL.UInt2;
   subtype CR_REV_IN_Field is HAL.UInt2;

   --  Control register
   type CR_Register is record
      RESET         : Boolean := False;
      --  Write-only. RESET bit
      Reserved_1_2  : HAL.UInt2 := 16#0#;
      --  unspecified
      POLYSIZE      : CR_POLYSIZE_Field := 16#0#;
      --  Polynomial size
      REV_IN        : CR_REV_IN_Field := 16#0#;
      --  Reverse input data
      REV_OUT       : Boolean := False;
      --  Reverse output data
      Reserved_8_31 : HAL.UInt24 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      RESET         at 0 range 0 .. 0;
      Reserved_1_2  at 0 range 1 .. 2;
      POLYSIZE      at 0 range 3 .. 4;
      REV_IN        at 0 range 5 .. 6;
      REV_OUT       at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Cyclic redundancy check calculation unit
   type CRC_Peripheral is record
      DR   : aliased HAL.UInt32;
      --  Data register
      IDR  : aliased IDR_Register;
      --  Independent data register
      CR   : aliased CR_Register;
      --  Control register
      INIT : aliased HAL.UInt32;
      --  Initial CRC value
      POL  : aliased HAL.UInt32;
      --  polynomial
   end record
     with Volatile;

   for CRC_Peripheral use record
      DR   at 16#0# range 0 .. 31;
      IDR  at 16#4# range 0 .. 31;
      CR   at 16#8# range 0 .. 31;
      INIT at 16#10# range 0 .. 31;
      POL  at 16#14# range 0 .. 31;
   end record;

   --  Cyclic redundancy check calculation unit
   CRC_Periph : aliased CRC_Peripheral
     with Import, Address => CRC_Base;

end STM32_SVD.CRC;
