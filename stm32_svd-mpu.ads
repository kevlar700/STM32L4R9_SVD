pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.MPU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype TYPER_DREGION_Field is HAL.UInt8;
   subtype TYPER_IREGION_Field is HAL.UInt8;

   --  MPU type register
   type TYPER_Register is record
      SEPARATE_k     : Boolean;
      --  Read-only. Separate flag
      Reserved_1_7   : HAL.UInt7;
      --  unspecified
      DREGION        : TYPER_DREGION_Field;
      --  Read-only. Number of MPU data regions
      IREGION        : TYPER_IREGION_Field;
      --  Read-only. Number of MPU instruction regions
      Reserved_24_31 : HAL.UInt8;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TYPER_Register use record
      SEPARATE_k     at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      DREGION        at 0 range 8 .. 15;
      IREGION        at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  MPU control register
   type CTRL_Register is record
      ENABLE        : Boolean := False;
      --  Enables the MPU
      HFNMIENA      : Boolean := False;
      --  Enables the operation of MPU during hard fault
      PRIVDEFENA    : Boolean := False;
      --  Enable priviliged software access to default memory map
      Reserved_3_31 : HAL.UInt29 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      ENABLE        at 0 range 0 .. 0;
      HFNMIENA      at 0 range 1 .. 1;
      PRIVDEFENA    at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RNR_REGION_Field is HAL.UInt8;

   --  MPU region number register
   type RNR_Register is record
      REGION        : RNR_REGION_Field := 16#0#;
      --  MPU region
      Reserved_8_31 : HAL.UInt24 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RNR_Register use record
      REGION        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RBAR_REGION_Field is HAL.UInt4;
   subtype RBAR_ADDR_Field is HAL.UInt27;

   --  MPU region base address register
   type RBAR_Register is record
      REGION : RBAR_REGION_Field := 16#0#;
      --  MPU region field
      VALID  : Boolean := False;
      --  MPU region number valid
      ADDR   : RBAR_ADDR_Field := 16#0#;
      --  Region base address field
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RBAR_Register use record
      REGION at 0 range 0 .. 3;
      VALID  at 0 range 4 .. 4;
      ADDR   at 0 range 5 .. 31;
   end record;

   subtype RASR_SIZE_Field is HAL.UInt5;
   subtype RASR_SRD_Field is HAL.UInt8;
   subtype RASR_TEX_Field is HAL.UInt3;
   subtype RASR_AP_Field is HAL.UInt3;

   --  MPU region attribute and size register
   type RASR_Register is record
      ENABLE         : Boolean := False;
      --  Region enable bit.
      SIZE           : RASR_SIZE_Field := 16#0#;
      --  Size of the MPU protection region
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  unspecified
      SRD            : RASR_SRD_Field := 16#0#;
      --  Subregion disable bits
      B              : Boolean := False;
      --  memory attribute
      C              : Boolean := False;
      --  memory attribute
      S              : Boolean := False;
      --  Shareable memory attribute
      TEX            : RASR_TEX_Field := 16#0#;
      --  memory attribute
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  unspecified
      AP             : RASR_AP_Field := 16#0#;
      --  Access permission
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  unspecified
      XN             : Boolean := False;
      --  Instruction access disable bit
      Reserved_29_31 : HAL.UInt3 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RASR_Register use record
      ENABLE         at 0 range 0 .. 0;
      SIZE           at 0 range 1 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SRD            at 0 range 8 .. 15;
      B              at 0 range 16 .. 16;
      C              at 0 range 17 .. 17;
      S              at 0 range 18 .. 18;
      TEX            at 0 range 19 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      AP             at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      XN             at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Memory protection unit
   type MPU_Peripheral is record
      TYPER : aliased TYPER_Register;
      --  MPU type register
      CTRL  : aliased CTRL_Register;
      --  MPU control register
      RNR   : aliased RNR_Register;
      --  MPU region number register
      RBAR  : aliased RBAR_Register;
      --  MPU region base address register
      RASR  : aliased RASR_Register;
      --  MPU region attribute and size register
   end record
     with Volatile;

   for MPU_Peripheral use record
      TYPER at 16#0# range 0 .. 31;
      CTRL  at 16#4# range 0 .. 31;
      RNR   at 16#8# range 0 .. 31;
      RBAR  at 16#C# range 0 .. 31;
      RASR  at 16#10# range 0 .. 31;
   end record;

   --  Memory protection unit
   MPU_Periph : aliased MPU_Peripheral
     with Import, Address => MPU_Base;

end STM32_SVD.MPU;
