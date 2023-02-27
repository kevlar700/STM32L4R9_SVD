pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.SCB is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CPUID_Revision_Field is HAL.UInt4;
   subtype CPUID_PartNo_Field is HAL.UInt12;
   subtype CPUID_Constant_Field is HAL.UInt4;
   subtype CPUID_Variant_Field is HAL.UInt4;
   subtype CPUID_Implementer_Field is HAL.UInt8;

   --  CPUID base register
   type CPUID_Register is record
      Revision    : CPUID_Revision_Field;
      --  Read-only. Revision number
      PartNo      : CPUID_PartNo_Field;
      --  Read-only. Part number of the processor
      Constant_k  : CPUID_Constant_Field;
      --  Read-only. Reads as 0xF
      Variant     : CPUID_Variant_Field;
      --  Read-only. Variant number
      Implementer : CPUID_Implementer_Field;
      --  Read-only. Implementer code
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPUID_Register use record
      Revision    at 0 range 0 .. 3;
      PartNo      at 0 range 4 .. 15;
      Constant_k  at 0 range 16 .. 19;
      Variant     at 0 range 20 .. 23;
      Implementer at 0 range 24 .. 31;
   end record;

   subtype ICSR_VECTACTIVE_Field is HAL.UInt9;
   subtype ICSR_VECTPENDING_Field is HAL.UInt7;

   --  Interrupt control and state register
   type ICSR_Register is record
      VECTACTIVE     : ICSR_VECTACTIVE_Field := 16#0#;
      --  Active vector
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  unspecified
      RETTOBASE      : Boolean := False;
      --  Return to base level
      VECTPENDING    : ICSR_VECTPENDING_Field := 16#0#;
      --  Pending vector
      Reserved_19_21 : HAL.UInt3 := 16#0#;
      --  unspecified
      ISRPENDING     : Boolean := False;
      --  Interrupt pending flag
      Reserved_23_24 : HAL.UInt2 := 16#0#;
      --  unspecified
      PENDSTCLR      : Boolean := False;
      --  SysTick exception clear-pending bit
      PENDSTSET      : Boolean := False;
      --  SysTick exception set-pending bit
      PENDSVCLR      : Boolean := False;
      --  PendSV clear-pending bit
      PENDSVSET      : Boolean := False;
      --  PendSV set-pending bit
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  unspecified
      NMIPENDSET     : Boolean := False;
      --  NMI set-pending bit.
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICSR_Register use record
      VECTACTIVE     at 0 range 0 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RETTOBASE      at 0 range 11 .. 11;
      VECTPENDING    at 0 range 12 .. 18;
      Reserved_19_21 at 0 range 19 .. 21;
      ISRPENDING     at 0 range 22 .. 22;
      Reserved_23_24 at 0 range 23 .. 24;
      PENDSTCLR      at 0 range 25 .. 25;
      PENDSTSET      at 0 range 26 .. 26;
      PENDSVCLR      at 0 range 27 .. 27;
      PENDSVSET      at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      NMIPENDSET     at 0 range 31 .. 31;
   end record;

   subtype VTOR_TBLOFF_Field is HAL.UInt21;

   --  Vector table offset register
   type VTOR_Register is record
      Reserved_0_8   : HAL.UInt9 := 16#0#;
      --  unspecified
      TBLOFF         : VTOR_TBLOFF_Field := 16#0#;
      --  Vector table base offset field
      Reserved_30_31 : HAL.UInt2 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VTOR_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      TBLOFF         at 0 range 9 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype AIRCR_PRIGROUP_Field is HAL.UInt3;
   subtype AIRCR_VECTKEYSTAT_Field is HAL.UInt16;

   --  Application interrupt and reset control register
   type AIRCR_Register is record
      VECTRESET      : Boolean := False;
      --  VECTRESET
      VECTCLRACTIVE  : Boolean := False;
      --  VECTCLRACTIVE
      SYSRESETREQ    : Boolean := False;
      --  SYSRESETREQ
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  unspecified
      PRIGROUP       : AIRCR_PRIGROUP_Field := 16#0#;
      --  PRIGROUP
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  unspecified
      ENDIANESS      : Boolean := False;
      --  ENDIANESS
      VECTKEYSTAT    : AIRCR_VECTKEYSTAT_Field := 16#0#;
      --  Register key
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIRCR_Register use record
      VECTRESET      at 0 range 0 .. 0;
      VECTCLRACTIVE  at 0 range 1 .. 1;
      SYSRESETREQ    at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      PRIGROUP       at 0 range 8 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      ENDIANESS      at 0 range 15 .. 15;
      VECTKEYSTAT    at 0 range 16 .. 31;
   end record;

   --  System control register
   type SCR_Register is record
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  unspecified
      SLEEPONEXIT   : Boolean := False;
      --  SLEEPONEXIT
      SLEEPDEEP     : Boolean := False;
      --  SLEEPDEEP
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  unspecified
      SEVEONPEND    : Boolean := False;
      --  Send Event on Pending bit
      Reserved_5_31 : HAL.UInt27 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      SLEEPONEXIT   at 0 range 1 .. 1;
      SLEEPDEEP     at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      SEVEONPEND    at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Configuration and control register
   type CCR_Register is record
      NONBASETHRDENA : Boolean := False;
      --  Configures how the processor enters Thread mode
      USERSETMPEND   : Boolean := False;
      --  USERSETMPEND
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  unspecified
      UNALIGN_TRP    : Boolean := False;
      --  UNALIGN_ TRP
      DIV_0_TRP      : Boolean := False;
      --  DIV_0_TRP
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  unspecified
      BFHFNMIGN      : Boolean := False;
      --  BFHFNMIGN
      STKALIGN       : Boolean := False;
      --  STKALIGN
      Reserved_10_31 : HAL.UInt22 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      NONBASETHRDENA at 0 range 0 .. 0;
      USERSETMPEND   at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      UNALIGN_TRP    at 0 range 3 .. 3;
      DIV_0_TRP      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      BFHFNMIGN      at 0 range 8 .. 8;
      STKALIGN       at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype SHPR1_PRI_4_Field is HAL.UInt8;
   subtype SHPR1_PRI_5_Field is HAL.UInt8;
   subtype SHPR1_PRI_6_Field is HAL.UInt8;

   --  System handler priority registers
   type SHPR1_Register is record
      PRI_4          : SHPR1_PRI_4_Field := 16#0#;
      --  Priority of system handler 4
      PRI_5          : SHPR1_PRI_5_Field := 16#0#;
      --  Priority of system handler 5
      PRI_6          : SHPR1_PRI_6_Field := 16#0#;
      --  Priority of system handler 6
      Reserved_24_31 : HAL.UInt8 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHPR1_Register use record
      PRI_4          at 0 range 0 .. 7;
      PRI_5          at 0 range 8 .. 15;
      PRI_6          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SHPR2_PRI_11_Field is HAL.UInt8;

   --  System handler priority registers
   type SHPR2_Register is record
      Reserved_0_23 : HAL.UInt24 := 16#0#;
      --  unspecified
      PRI_11        : SHPR2_PRI_11_Field := 16#0#;
      --  Priority of system handler 11
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHPR2_Register use record
      Reserved_0_23 at 0 range 0 .. 23;
      PRI_11        at 0 range 24 .. 31;
   end record;

   subtype SHPR3_PRI_14_Field is HAL.UInt8;
   subtype SHPR3_PRI_15_Field is HAL.UInt8;

   --  System handler priority registers
   type SHPR3_Register is record
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  unspecified
      PRI_14        : SHPR3_PRI_14_Field := 16#0#;
      --  Priority of system handler 14
      PRI_15        : SHPR3_PRI_15_Field := 16#0#;
      --  Priority of system handler 15
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHPR3_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      PRI_14        at 0 range 16 .. 23;
      PRI_15        at 0 range 24 .. 31;
   end record;

   --  System handler control and state register
   type SHCSR_Register is record
      MEMFAULTACT    : Boolean := False;
      --  Memory management fault exception active bit
      BUSFAULTACT    : Boolean := False;
      --  Bus fault exception active bit
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  unspecified
      USGFAULTACT    : Boolean := False;
      --  Usage fault exception active bit
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  unspecified
      SVCALLACT      : Boolean := False;
      --  SVC call active bit
      MONITORACT     : Boolean := False;
      --  Debug monitor active bit
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  unspecified
      PENDSVACT      : Boolean := False;
      --  PendSV exception active bit
      SYSTICKACT     : Boolean := False;
      --  SysTick exception active bit
      USGFAULTPENDED : Boolean := False;
      --  Usage fault exception pending bit
      MEMFAULTPENDED : Boolean := False;
      --  Memory management fault exception pending bit
      BUSFAULTPENDED : Boolean := False;
      --  Bus fault exception pending bit
      SVCALLPENDED   : Boolean := False;
      --  SVC call pending bit
      MEMFAULTENA    : Boolean := False;
      --  Memory management fault enable bit
      BUSFAULTENA    : Boolean := False;
      --  Bus fault enable bit
      USGFAULTENA    : Boolean := False;
      --  Usage fault enable bit
      Reserved_19_31 : HAL.UInt13 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHCSR_Register use record
      MEMFAULTACT    at 0 range 0 .. 0;
      BUSFAULTACT    at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      USGFAULTACT    at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      SVCALLACT      at 0 range 7 .. 7;
      MONITORACT     at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      PENDSVACT      at 0 range 10 .. 10;
      SYSTICKACT     at 0 range 11 .. 11;
      USGFAULTPENDED at 0 range 12 .. 12;
      MEMFAULTPENDED at 0 range 13 .. 13;
      BUSFAULTPENDED at 0 range 14 .. 14;
      SVCALLPENDED   at 0 range 15 .. 15;
      MEMFAULTENA    at 0 range 16 .. 16;
      BUSFAULTENA    at 0 range 17 .. 17;
      USGFAULTENA    at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Configurable fault status register
   type CFSR_UFSR_BFSR_MMFSR_Register is record
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  unspecified
      IACCVIOL       : Boolean := False;
      --  Instruction access violation flag
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  unspecified
      MUNSTKERR      : Boolean := False;
      --  Memory manager fault on unstacking for a return from exception
      MSTKERR        : Boolean := False;
      --  Memory manager fault on stacking for exception entry.
      MLSPERR        : Boolean := False;
      --  MLSPERR
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  unspecified
      MMARVALID      : Boolean := False;
      --  Memory Management Fault Address Register (MMAR) valid flag
      IBUSERR        : Boolean := False;
      --  Instruction bus error
      PRECISERR      : Boolean := False;
      --  Precise data bus error
      IMPRECISERR    : Boolean := False;
      --  Imprecise data bus error
      UNSTKERR       : Boolean := False;
      --  Bus fault on unstacking for a return from exception
      STKERR         : Boolean := False;
      --  Bus fault on stacking for exception entry
      LSPERR         : Boolean := False;
      --  Bus fault on floating-point lazy state preservation
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  unspecified
      BFARVALID      : Boolean := False;
      --  Bus Fault Address Register (BFAR) valid flag
      UNDEFINSTR     : Boolean := False;
      --  Undefined instruction usage fault
      INVSTATE       : Boolean := False;
      --  Invalid state usage fault
      INVPC          : Boolean := False;
      --  Invalid PC load usage fault
      NOCP           : Boolean := False;
      --  No coprocessor usage fault.
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  unspecified
      UNALIGNED      : Boolean := False;
      --  Unaligned access usage fault
      DIVBYZERO      : Boolean := False;
      --  Divide by zero usage fault
      Reserved_26_31 : HAL.UInt6 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFSR_UFSR_BFSR_MMFSR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      IACCVIOL       at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      MUNSTKERR      at 0 range 3 .. 3;
      MSTKERR        at 0 range 4 .. 4;
      MLSPERR        at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      MMARVALID      at 0 range 7 .. 7;
      IBUSERR        at 0 range 8 .. 8;
      PRECISERR      at 0 range 9 .. 9;
      IMPRECISERR    at 0 range 10 .. 10;
      UNSTKERR       at 0 range 11 .. 11;
      STKERR         at 0 range 12 .. 12;
      LSPERR         at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      BFARVALID      at 0 range 15 .. 15;
      UNDEFINSTR     at 0 range 16 .. 16;
      INVSTATE       at 0 range 17 .. 17;
      INVPC          at 0 range 18 .. 18;
      NOCP           at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      UNALIGNED      at 0 range 24 .. 24;
      DIVBYZERO      at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Hard fault status register
   type HFSR_Register is record
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  unspecified
      VECTTBL       : Boolean := False;
      --  Vector table hard fault
      Reserved_2_29 : HAL.UInt28 := 16#0#;
      --  unspecified
      FORCED        : Boolean := False;
      --  Forced hard fault
      DEBUG_VT      : Boolean := False;
      --  Reserved for Debug use
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFSR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      VECTTBL       at 0 range 1 .. 1;
      Reserved_2_29 at 0 range 2 .. 29;
      FORCED        at 0 range 30 .. 30;
      DEBUG_VT      at 0 range 31 .. 31;
   end record;

   --  Auxiliary control register
   type ACTRL_Register is record
      DISMCYCINT     : Boolean := False;
      --  DISMCYCINT
      DISDEFWBUF     : Boolean := False;
      --  DISDEFWBUF
      DISFOLD        : Boolean := False;
      --  DISFOLD
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  unspecified
      DISFPCA        : Boolean := False;
      --  DISFPCA
      DISOOFP        : Boolean := False;
      --  DISOOFP
      Reserved_10_31 : HAL.UInt22 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACTRL_Register use record
      DISMCYCINT     at 0 range 0 .. 0;
      DISDEFWBUF     at 0 range 1 .. 1;
      DISFOLD        at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      DISFPCA        at 0 range 8 .. 8;
      DISOOFP        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System control block
   type SCB_Peripheral is record
      CPUID                : aliased CPUID_Register;
      --  CPUID base register
      ICSR                 : aliased ICSR_Register;
      --  Interrupt control and state register
      VTOR                 : aliased VTOR_Register;
      --  Vector table offset register
      AIRCR                : aliased AIRCR_Register;
      --  Application interrupt and reset control register
      SCR                  : aliased SCR_Register;
      --  System control register
      CCR                  : aliased CCR_Register;
      --  Configuration and control register
      SHPR1                : aliased SHPR1_Register;
      --  System handler priority registers
      SHPR2                : aliased SHPR2_Register;
      --  System handler priority registers
      SHPR3                : aliased SHPR3_Register;
      --  System handler priority registers
      SHCSR                : aliased SHCSR_Register;
      --  System handler control and state register
      CFSR_UFSR_BFSR_MMFSR : aliased CFSR_UFSR_BFSR_MMFSR_Register;
      --  Configurable fault status register
      HFSR                 : aliased HFSR_Register;
      --  Hard fault status register
      MMFAR                : aliased HAL.UInt32;
      --  Memory management fault address register
      BFAR                 : aliased HAL.UInt32;
      --  Bus fault address register
      AFSR                 : aliased HAL.UInt32;
      --  Auxiliary fault status register
   end record
     with Volatile;

   for SCB_Peripheral use record
      CPUID                at 16#0# range 0 .. 31;
      ICSR                 at 16#4# range 0 .. 31;
      VTOR                 at 16#8# range 0 .. 31;
      AIRCR                at 16#C# range 0 .. 31;
      SCR                  at 16#10# range 0 .. 31;
      CCR                  at 16#14# range 0 .. 31;
      SHPR1                at 16#18# range 0 .. 31;
      SHPR2                at 16#1C# range 0 .. 31;
      SHPR3                at 16#20# range 0 .. 31;
      SHCSR                at 16#24# range 0 .. 31;
      CFSR_UFSR_BFSR_MMFSR at 16#28# range 0 .. 31;
      HFSR                 at 16#2C# range 0 .. 31;
      MMFAR                at 16#34# range 0 .. 31;
      BFAR                 at 16#38# range 0 .. 31;
      AFSR                 at 16#3C# range 0 .. 31;
   end record;

   --  System control block
   SCB_Periph : aliased SCB_Peripheral
     with Import, Address => SCB_Base;

   --  System control block ACTLR
   type SCB_ACTRL_Peripheral is record
      ACTRL : aliased ACTRL_Register;
      --  Auxiliary control register
   end record
     with Volatile;

   for SCB_ACTRL_Peripheral use record
      ACTRL at 0 range 0 .. 31;
   end record;

   --  System control block ACTLR
   SCB_ACTRL_Periph : aliased SCB_ACTRL_Peripheral
     with Import, Address => SCB_ACTRL_Base;

end STM32_SVD.SCB;
