pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.FPU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Floating-point context control register
   type FPCCR_Register is record
      LSPACT        : Boolean := False;
      --  LSPACT
      USER          : Boolean := False;
      --  USER
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  unspecified
      THREAD        : Boolean := False;
      --  THREAD
      HFRDY         : Boolean := False;
      --  HFRDY
      MMRDY         : Boolean := False;
      --  MMRDY
      BFRDY         : Boolean := False;
      --  BFRDY
      Reserved_7_7  : HAL.Bit := 16#0#;
      --  unspecified
      MONRDY        : Boolean := False;
      --  MONRDY
      Reserved_9_29 : HAL.UInt21 := 16#0#;
      --  unspecified
      LSPEN         : Boolean := False;
      --  LSPEN
      ASPEN         : Boolean := False;
      --  ASPEN
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPCCR_Register use record
      LSPACT        at 0 range 0 .. 0;
      USER          at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      THREAD        at 0 range 3 .. 3;
      HFRDY         at 0 range 4 .. 4;
      MMRDY         at 0 range 5 .. 5;
      BFRDY         at 0 range 6 .. 6;
      Reserved_7_7  at 0 range 7 .. 7;
      MONRDY        at 0 range 8 .. 8;
      Reserved_9_29 at 0 range 9 .. 29;
      LSPEN         at 0 range 30 .. 30;
      ASPEN         at 0 range 31 .. 31;
   end record;

   subtype FPCAR_ADDRESS_Field is HAL.UInt29;

   --  Floating-point context address register
   type FPCAR_Register is record
      Reserved_0_2 : HAL.UInt3 := 16#0#;
      --  unspecified
      ADDRESS      : FPCAR_ADDRESS_Field := 16#0#;
      --  Location of unpopulated floating-point
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPCAR_Register use record
      Reserved_0_2 at 0 range 0 .. 2;
      ADDRESS      at 0 range 3 .. 31;
   end record;

   subtype FPSCR_RMode_Field is HAL.UInt2;

   --  Floating-point status control register
   type FPSCR_Register is record
      IOC            : Boolean := False;
      --  Invalid operation cumulative exception bit
      DZC            : Boolean := False;
      --  Division by zero cumulative exception bit.
      OFC            : Boolean := False;
      --  Overflow cumulative exception bit
      UFC            : Boolean := False;
      --  Underflow cumulative exception bit
      IXC            : Boolean := False;
      --  Inexact cumulative exception bit
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  unspecified
      IDC            : Boolean := False;
      --  Input denormal cumulative exception bit.
      Reserved_8_21  : HAL.UInt14 := 16#0#;
      --  unspecified
      RMode          : FPSCR_RMode_Field := 16#0#;
      --  Rounding Mode control field
      FZ             : Boolean := False;
      --  Flush-to-zero mode control bit:
      DN             : Boolean := False;
      --  Default NaN mode control bit
      AHP            : Boolean := False;
      --  Alternative half-precision control bit
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  unspecified
      V              : Boolean := False;
      --  Overflow condition code flag
      C              : Boolean := False;
      --  Carry condition code flag
      Z              : Boolean := False;
      --  Zero condition code flag
      N              : Boolean := False;
      --  Negative condition code flag
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPSCR_Register use record
      IOC            at 0 range 0 .. 0;
      DZC            at 0 range 1 .. 1;
      OFC            at 0 range 2 .. 2;
      UFC            at 0 range 3 .. 3;
      IXC            at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      IDC            at 0 range 7 .. 7;
      Reserved_8_21  at 0 range 8 .. 21;
      RMode          at 0 range 22 .. 23;
      FZ             at 0 range 24 .. 24;
      DN             at 0 range 25 .. 25;
      AHP            at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      V              at 0 range 28 .. 28;
      C              at 0 range 29 .. 29;
      Z              at 0 range 30 .. 30;
      N              at 0 range 31 .. 31;
   end record;

   subtype CPACR_CP_Field is HAL.UInt4;

   --  Coprocessor access control register
   type CPACR_Register is record
      Reserved_0_19  : HAL.UInt20 := 16#0#;
      --  unspecified
      CP             : CPACR_CP_Field := 16#0#;
      --  CP
      Reserved_24_31 : HAL.UInt8 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPACR_Register use record
      Reserved_0_19  at 0 range 0 .. 19;
      CP             at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Floting point unit
   type FPU_Peripheral is record
      FPCCR : aliased FPCCR_Register;
      --  Floating-point context control register
      FPCAR : aliased FPCAR_Register;
      --  Floating-point context address register
      FPSCR : aliased FPSCR_Register;
      --  Floating-point status control register
   end record
     with Volatile;

   for FPU_Peripheral use record
      FPCCR at 16#0# range 0 .. 31;
      FPCAR at 16#4# range 0 .. 31;
      FPSCR at 16#8# range 0 .. 31;
   end record;

   --  Floting point unit
   FPU_Periph : aliased FPU_Peripheral
     with Import, Address => FPU_Base;

   --  Floating point unit CPACR
   type FPU_CPACR_Peripheral is record
      CPACR : aliased CPACR_Register;
      --  Coprocessor access control register
   end record
     with Volatile;

   for FPU_CPACR_Peripheral use record
      CPACR at 0 range 0 .. 31;
   end record;

   --  Floating point unit CPACR
   FPU_CPACR_Periph : aliased FPU_CPACR_Peripheral
     with Import, Address => FPU_CPACR_Base;

end STM32_SVD.FPU;
