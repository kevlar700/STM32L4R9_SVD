pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.AES is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR_DATATYPE_Field is HAL.UInt2;
   subtype CR_MODE_Field is HAL.UInt2;
   subtype CR_CHMOD_Field is HAL.UInt2;

   --  control register
   type CR_Register is record
      EN             : Boolean := False;
      --  AES enable
      DATATYPE       : CR_DATATYPE_Field := 16#0#;
      --  Data type selection (for data in and data out to/from the
      --  cryptographic block)
      MODE           : CR_MODE_Field := 16#0#;
      --  AES operating mode
      CHMOD          : CR_CHMOD_Field := 16#0#;
      --  AES chaining mode
      CCFC           : Boolean := False;
      --  Computation Complete Flag Clear
      ERRC           : Boolean := False;
      --  Error clear
      CCFIE          : Boolean := False;
      --  CCF flag interrupt enable
      ERRIE          : Boolean := False;
      --  Error interrupt enable
      DMAINEN        : Boolean := False;
      --  Enable DMA management of data input phase
      DMAOUTEN       : Boolean := False;
      --  Enable DMA management of data output phase
      Reserved_13_31 : HAL.UInt19 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      EN             at 0 range 0 .. 0;
      DATATYPE       at 0 range 1 .. 2;
      MODE           at 0 range 3 .. 4;
      CHMOD          at 0 range 5 .. 6;
      CCFC           at 0 range 7 .. 7;
      ERRC           at 0 range 8 .. 8;
      CCFIE          at 0 range 9 .. 9;
      ERRIE          at 0 range 10 .. 10;
      DMAINEN        at 0 range 11 .. 11;
      DMAOUTEN       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  status register
   type SR_Register is record
      CCF           : Boolean;
      --  Read-only. Computation complete flag
      RDERR         : Boolean;
      --  Read-only. Read error flag
      WRERR         : Boolean;
      --  Read-only. Write error flag
      Reserved_3_31 : HAL.UInt29;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      CCF           at 0 range 0 .. 0;
      RDERR         at 0 range 1 .. 1;
      WRERR         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Advanced encryption standard hardware accelerator
   type AES_Peripheral is record
      CR    : aliased CR_Register;
      --  control register
      SR    : aliased SR_Register;
      --  status register
      DINR  : aliased HAL.UInt32;
      --  data input register
      DOUTR : aliased HAL.UInt32;
      --  data output register
      KEYR0 : aliased HAL.UInt32;
      --  key register 0
      KEYR1 : aliased HAL.UInt32;
      --  key register 1
      KEYR2 : aliased HAL.UInt32;
      --  key register 2
      KEYR3 : aliased HAL.UInt32;
      --  key register 3
      IVR0  : aliased HAL.UInt32;
      --  initialization vector register 0
      IVR1  : aliased HAL.UInt32;
      --  initialization vector register 1
      IVR2  : aliased HAL.UInt32;
      --  initialization vector register 2
      IVR3  : aliased HAL.UInt32;
      --  initialization vector register 3
   end record
     with Volatile;

   for AES_Peripheral use record
      CR    at 16#0# range 0 .. 31;
      SR    at 16#4# range 0 .. 31;
      DINR  at 16#8# range 0 .. 31;
      DOUTR at 16#C# range 0 .. 31;
      KEYR0 at 16#10# range 0 .. 31;
      KEYR1 at 16#14# range 0 .. 31;
      KEYR2 at 16#18# range 0 .. 31;
      KEYR3 at 16#1C# range 0 .. 31;
      IVR0  at 16#20# range 0 .. 31;
      IVR1  at 16#24# range 0 .. 31;
      IVR2  at 16#28# range 0 .. 31;
      IVR3  at 16#2C# range 0 .. 31;
   end record;

   --  Advanced encryption standard hardware accelerator
   AES_Periph : aliased AES_Peripheral
     with Import, Address => AES_Base;

end STM32_SVD.AES;
