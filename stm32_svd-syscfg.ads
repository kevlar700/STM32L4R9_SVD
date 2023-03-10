pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.SYSCFG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype MEMRMP_MEM_MODE_Field is HAL.UInt3;

   --  memory remap register
   type MEMRMP_Register is record
      MEM_MODE      : MEMRMP_MEM_MODE_Field := 16#0#;
      --  Memory mapping selection
      QFS           : Boolean := False;
      --  QUADSPI memory mapping swap
      Reserved_4_7  : HAL.UInt4 := 16#0#;
      --  unspecified
      FB_MODE       : Boolean := False;
      --  Flash Bank mode selection
      Reserved_9_31 : HAL.UInt23 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEMRMP_Register use record
      MEM_MODE      at 0 range 0 .. 2;
      QFS           at 0 range 3 .. 3;
      Reserved_4_7  at 0 range 4 .. 7;
      FB_MODE       at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype CFGR1_FPU_IE_Field is HAL.UInt6;

   --  configuration register 1
   type CFGR1_Register is record
      FWDIS          : Boolean := True;
      --  Firewall disable
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  unspecified
      BOOSTEN        : Boolean := False;
      --  I/O analog switch voltage booster enable
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  unspecified
      I2C_PB6_FMP    : Boolean := False;
      --  Fast-mode Plus (Fm+) driving capability activation on PB6
      I2C_PB7_FMP    : Boolean := False;
      --  Fast-mode Plus (Fm+) driving capability activation on PB7
      I2C_PB8_FMP    : Boolean := False;
      --  Fast-mode Plus (Fm+) driving capability activation on PB8
      I2C_PB9_FMP    : Boolean := False;
      --  Fast-mode Plus (Fm+) driving capability activation on PB9
      I2C1_FMP       : Boolean := False;
      --  I2C1 Fast-mode Plus driving capability activation
      I2C2_FMP       : Boolean := False;
      --  I2C2 Fast-mode Plus driving capability activation
      I2C3_FMP       : Boolean := False;
      --  I2C3 Fast-mode Plus driving capability activation
      Reserved_23_25 : HAL.UInt3 := 16#0#;
      --  unspecified
      FPU_IE         : CFGR1_FPU_IE_Field := 16#1F#;
      --  Floating Point Unit interrupts enable bits
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR1_Register use record
      FWDIS          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      BOOSTEN        at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      I2C_PB6_FMP    at 0 range 16 .. 16;
      I2C_PB7_FMP    at 0 range 17 .. 17;
      I2C_PB8_FMP    at 0 range 18 .. 18;
      I2C_PB9_FMP    at 0 range 19 .. 19;
      I2C1_FMP       at 0 range 20 .. 20;
      I2C2_FMP       at 0 range 21 .. 21;
      I2C3_FMP       at 0 range 22 .. 22;
      Reserved_23_25 at 0 range 23 .. 25;
      FPU_IE         at 0 range 26 .. 31;
   end record;

   --  EXTICR1_EXTI array element
   subtype EXTICR1_EXTI_Element is HAL.UInt4;

   --  EXTICR1_EXTI array
   type EXTICR1_EXTI_Field_Array is array (0 .. 3) of EXTICR1_EXTI_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for EXTICR1_EXTI
   type EXTICR1_EXTI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  EXTI as a value
         when True =>
            Arr : EXTICR1_EXTI_Field_Array;
            --  EXTI as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTICR1_EXTI_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  external interrupt configuration register 1
   type EXTICR1_Register is record
      EXTI           : EXTICR1_EXTI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  EXTI 0 configuration bits
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTICR1_Register use record
      EXTI           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EXTICR2_EXTI array element
   subtype EXTICR2_EXTI_Element is HAL.UInt4;

   --  EXTICR2_EXTI array
   type EXTICR2_EXTI_Field_Array is array (4 .. 7) of EXTICR2_EXTI_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for EXTICR2_EXTI
   type EXTICR2_EXTI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  EXTI as a value
         when True =>
            Arr : EXTICR2_EXTI_Field_Array;
            --  EXTI as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTICR2_EXTI_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  external interrupt configuration register 2
   type EXTICR2_Register is record
      EXTI           : EXTICR2_EXTI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  EXTI 4 configuration bits
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTICR2_Register use record
      EXTI           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EXTICR3_EXTI array element
   subtype EXTICR3_EXTI_Element is HAL.UInt4;

   --  EXTICR3_EXTI array
   type EXTICR3_EXTI_Field_Array is array (8 .. 11) of EXTICR3_EXTI_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for EXTICR3_EXTI
   type EXTICR3_EXTI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  EXTI as a value
         when True =>
            Arr : EXTICR3_EXTI_Field_Array;
            --  EXTI as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTICR3_EXTI_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  external interrupt configuration register 3
   type EXTICR3_Register is record
      EXTI           : EXTICR3_EXTI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  EXTI 8 configuration bits
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTICR3_Register use record
      EXTI           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EXTICR4_EXTI array element
   subtype EXTICR4_EXTI_Element is HAL.UInt4;

   --  EXTICR4_EXTI array
   type EXTICR4_EXTI_Field_Array is array (12 .. 15) of EXTICR4_EXTI_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for EXTICR4_EXTI
   type EXTICR4_EXTI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  EXTI as a value
         when True =>
            Arr : EXTICR4_EXTI_Field_Array;
            --  EXTI as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTICR4_EXTI_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  external interrupt configuration register 4
   type EXTICR4_Register is record
      EXTI           : EXTICR4_EXTI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  EXTI12 configuration bits
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTICR4_Register use record
      EXTI           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  SCSR
   type SCSR_Register is record
      SRAM2ER       : Boolean := False;
      --  SRAM2 Erase
      SRAM2BSY      : Boolean := False;
      --  Read-only. SRAM2 busy by erase operation
      Reserved_2_31 : HAL.UInt30 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCSR_Register use record
      SRAM2ER       at 0 range 0 .. 0;
      SRAM2BSY      at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  CFGR2
   type CFGR2_Register is record
      CLL           : Boolean := False;
      --  Write-only. Cortex-M4 LOCKUP (Hardfault) output enable bit
      SPL           : Boolean := False;
      --  Write-only. SRAM2 parity lock bit
      PVDL          : Boolean := False;
      --  Write-only. PVD lock enable bit
      ECCL          : Boolean := False;
      --  Write-only. ECC Lock
      Reserved_4_7  : HAL.UInt4 := 16#0#;
      --  unspecified
      SPF           : Boolean := False;
      --  SRAM2 parity error flag
      Reserved_9_31 : HAL.UInt23 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR2_Register use record
      CLL           at 0 range 0 .. 0;
      SPL           at 0 range 1 .. 1;
      PVDL          at 0 range 2 .. 2;
      ECCL          at 0 range 3 .. 3;
      Reserved_4_7  at 0 range 4 .. 7;
      SPF           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  SWPR
   type SWPR_Register is record
      P0WP  : Boolean := False;
      --  Write-only. P0WP
      P1WP  : Boolean := False;
      --  Write-only. P1WP
      P2WP  : Boolean := False;
      --  Write-only. P2WP
      P3WP  : Boolean := False;
      --  Write-only. P3WP
      P4WP  : Boolean := False;
      --  Write-only. P4WP
      P5WP  : Boolean := False;
      --  Write-only. P5WP
      P6WP  : Boolean := False;
      --  Write-only. P6WP
      P7WP  : Boolean := False;
      --  Write-only. P7WP
      P8WP  : Boolean := False;
      --  Write-only. P8WP
      P9WP  : Boolean := False;
      --  Write-only. P9WP
      P10WP : Boolean := False;
      --  Write-only. P10WP
      P11WP : Boolean := False;
      --  Write-only. P11WP
      P12WP : Boolean := False;
      --  Write-only. P12WP
      P13WP : Boolean := False;
      --  Write-only. P13WP
      P14WP : Boolean := False;
      --  Write-only. P14WP
      P15WP : Boolean := False;
      --  Write-only. P15WP
      P16WP : Boolean := False;
      --  Write-only. P16WP
      P17WP : Boolean := False;
      --  Write-only. P17WP
      P18WP : Boolean := False;
      --  Write-only. P18WP
      P19WP : Boolean := False;
      --  Write-only. P19WP
      P20WP : Boolean := False;
      --  Write-only. P20WP
      P21WP : Boolean := False;
      --  Write-only. P21WP
      P22WP : Boolean := False;
      --  Write-only. P22WP
      P23WP : Boolean := False;
      --  Write-only. P23WP
      P24WP : Boolean := False;
      --  Write-only. P24WP
      P25WP : Boolean := False;
      --  Write-only. P25WP
      P26WP : Boolean := False;
      --  Write-only. P26WP
      P27WP : Boolean := False;
      --  Write-only. P27WP
      P28WP : Boolean := False;
      --  Write-only. P28WP
      P29WP : Boolean := False;
      --  Write-only. P29WP
      P30WP : Boolean := False;
      --  Write-only. P30WP
      P31WP : Boolean := False;
      --  Write-only. SRAM2 page 31 write protection
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWPR_Register use record
      P0WP  at 0 range 0 .. 0;
      P1WP  at 0 range 1 .. 1;
      P2WP  at 0 range 2 .. 2;
      P3WP  at 0 range 3 .. 3;
      P4WP  at 0 range 4 .. 4;
      P5WP  at 0 range 5 .. 5;
      P6WP  at 0 range 6 .. 6;
      P7WP  at 0 range 7 .. 7;
      P8WP  at 0 range 8 .. 8;
      P9WP  at 0 range 9 .. 9;
      P10WP at 0 range 10 .. 10;
      P11WP at 0 range 11 .. 11;
      P12WP at 0 range 12 .. 12;
      P13WP at 0 range 13 .. 13;
      P14WP at 0 range 14 .. 14;
      P15WP at 0 range 15 .. 15;
      P16WP at 0 range 16 .. 16;
      P17WP at 0 range 17 .. 17;
      P18WP at 0 range 18 .. 18;
      P19WP at 0 range 19 .. 19;
      P20WP at 0 range 20 .. 20;
      P21WP at 0 range 21 .. 21;
      P22WP at 0 range 22 .. 22;
      P23WP at 0 range 23 .. 23;
      P24WP at 0 range 24 .. 24;
      P25WP at 0 range 25 .. 25;
      P26WP at 0 range 26 .. 26;
      P27WP at 0 range 27 .. 27;
      P28WP at 0 range 28 .. 28;
      P29WP at 0 range 29 .. 29;
      P30WP at 0 range 30 .. 30;
      P31WP at 0 range 31 .. 31;
   end record;

   subtype SKR_KEY_Field is HAL.UInt8;

   --  SKR
   type SKR_Register is record
      KEY           : SKR_KEY_Field := 16#0#;
      --  Write-only. SRAM2 write protection key for software erase
      Reserved_8_31 : HAL.UInt24 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SKR_Register use record
      KEY           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System configuration controller
   type SYSCFG_Peripheral is record
      MEMRMP  : aliased MEMRMP_Register;
      --  memory remap register
      CFGR1   : aliased CFGR1_Register;
      --  configuration register 1
      EXTICR1 : aliased EXTICR1_Register;
      --  external interrupt configuration register 1
      EXTICR2 : aliased EXTICR2_Register;
      --  external interrupt configuration register 2
      EXTICR3 : aliased EXTICR3_Register;
      --  external interrupt configuration register 3
      EXTICR4 : aliased EXTICR4_Register;
      --  external interrupt configuration register 4
      SCSR    : aliased SCSR_Register;
      --  SCSR
      CFGR2   : aliased CFGR2_Register;
      --  CFGR2
      SWPR    : aliased SWPR_Register;
      --  SWPR
      SKR     : aliased SKR_Register;
      --  SKR
   end record
     with Volatile;

   for SYSCFG_Peripheral use record
      MEMRMP  at 16#0# range 0 .. 31;
      CFGR1   at 16#4# range 0 .. 31;
      EXTICR1 at 16#8# range 0 .. 31;
      EXTICR2 at 16#C# range 0 .. 31;
      EXTICR3 at 16#10# range 0 .. 31;
      EXTICR4 at 16#14# range 0 .. 31;
      SCSR    at 16#18# range 0 .. 31;
      CFGR2   at 16#1C# range 0 .. 31;
      SWPR    at 16#20# range 0 .. 31;
      SKR     at 16#24# range 0 .. 31;
   end record;

   --  System configuration controller
   SYSCFG_Periph : aliased SYSCFG_Peripheral
     with Import, Address => SYSCFG_Base;

end STM32_SVD.SYSCFG;
