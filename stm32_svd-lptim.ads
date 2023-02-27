pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.LPTIM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Interrupt and Status Register
   type ISR_Register is record
      CMPM          : Boolean;
      --  Read-only. Compare match
      ARRM          : Boolean;
      --  Read-only. Autoreload match
      EXTTRIG       : Boolean;
      --  Read-only. External trigger edge event
      CMPOK         : Boolean;
      --  Read-only. Compare register update OK
      ARROK         : Boolean;
      --  Read-only. Autoreload register update OK
      UP            : Boolean;
      --  Read-only. Counter direction change down to up
      DOWN          : Boolean;
      --  Read-only. Counter direction change up to down
      Reserved_7_31 : HAL.UInt25;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      CMPM          at 0 range 0 .. 0;
      ARRM          at 0 range 1 .. 1;
      EXTTRIG       at 0 range 2 .. 2;
      CMPOK         at 0 range 3 .. 3;
      ARROK         at 0 range 4 .. 4;
      UP            at 0 range 5 .. 5;
      DOWN          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Interrupt Clear Register
   type ICR_Register is record
      CMPMCF        : Boolean := False;
      --  Write-only. compare match Clear Flag
      ARRMCF        : Boolean := False;
      --  Write-only. Autoreload match Clear Flag
      EXTTRIGCF     : Boolean := False;
      --  Write-only. External trigger valid edge Clear Flag
      CMPOKCF       : Boolean := False;
      --  Write-only. Compare register update OK Clear Flag
      ARROKCF       : Boolean := False;
      --  Write-only. Autoreload register update OK Clear Flag
      UPCF          : Boolean := False;
      --  Write-only. Direction change to UP Clear Flag
      DOWNCF        : Boolean := False;
      --  Write-only. Direction change to down Clear Flag
      Reserved_7_31 : HAL.UInt25 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register use record
      CMPMCF        at 0 range 0 .. 0;
      ARRMCF        at 0 range 1 .. 1;
      EXTTRIGCF     at 0 range 2 .. 2;
      CMPOKCF       at 0 range 3 .. 3;
      ARROKCF       at 0 range 4 .. 4;
      UPCF          at 0 range 5 .. 5;
      DOWNCF        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Interrupt Enable Register
   type IER_Register is record
      CMPMIE        : Boolean := False;
      --  Compare match Interrupt Enable
      ARRMIE        : Boolean := False;
      --  Autoreload match Interrupt Enable
      EXTTRIGIE     : Boolean := False;
      --  External trigger valid edge Interrupt Enable
      CMPOKIE       : Boolean := False;
      --  Compare register update OK Interrupt Enable
      ARROKIE       : Boolean := False;
      --  Autoreload register update OK Interrupt Enable
      UPIE          : Boolean := False;
      --  Direction change to UP Interrupt Enable
      DOWNIE        : Boolean := False;
      --  Direction change to down Interrupt Enable
      Reserved_7_31 : HAL.UInt25 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      CMPMIE        at 0 range 0 .. 0;
      ARRMIE        at 0 range 1 .. 1;
      EXTTRIGIE     at 0 range 2 .. 2;
      CMPOKIE       at 0 range 3 .. 3;
      ARROKIE       at 0 range 4 .. 4;
      UPIE          at 0 range 5 .. 5;
      DOWNIE        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype CFGR_CKPOL_Field is HAL.UInt2;
   subtype CFGR_CKFLT_Field is HAL.UInt2;
   subtype CFGR_TRGFLT_Field is HAL.UInt2;
   subtype CFGR_PRESC_Field is HAL.UInt3;
   subtype CFGR_TRIGSEL_Field is HAL.UInt3;
   subtype CFGR_TRIGEN_Field is HAL.UInt2;

   --  Configuration Register
   type CFGR_Register is record
      CKSEL          : Boolean := False;
      --  Clock selector
      CKPOL          : CFGR_CKPOL_Field := 16#0#;
      --  Clock Polarity
      CKFLT          : CFGR_CKFLT_Field := 16#0#;
      --  Configurable digital filter for external clock
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  unspecified
      TRGFLT         : CFGR_TRGFLT_Field := 16#0#;
      --  Configurable digital filter for trigger
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  unspecified
      PRESC          : CFGR_PRESC_Field := 16#0#;
      --  Clock prescaler
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  unspecified
      TRIGSEL        : CFGR_TRIGSEL_Field := 16#0#;
      --  Trigger selector
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  unspecified
      TRIGEN         : CFGR_TRIGEN_Field := 16#0#;
      --  Trigger enable and polarity
      TIMOUT         : Boolean := False;
      --  Timeout enable
      WAVE           : Boolean := False;
      --  Waveform shape
      WAVPOL         : Boolean := False;
      --  Waveform shape polarity
      PRELOAD        : Boolean := False;
      --  Registers update mode
      COUNTMODE      : Boolean := False;
      --  counter mode enabled
      ENC            : Boolean := False;
      --  Encoder mode enable
      Reserved_25_31 : HAL.UInt7 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR_Register use record
      CKSEL          at 0 range 0 .. 0;
      CKPOL          at 0 range 1 .. 2;
      CKFLT          at 0 range 3 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      TRGFLT         at 0 range 6 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      PRESC          at 0 range 9 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      TRIGSEL        at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      TRIGEN         at 0 range 17 .. 18;
      TIMOUT         at 0 range 19 .. 19;
      WAVE           at 0 range 20 .. 20;
      WAVPOL         at 0 range 21 .. 21;
      PRELOAD        at 0 range 22 .. 22;
      COUNTMODE      at 0 range 23 .. 23;
      ENC            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Control Register
   type CR_Register is record
      ENABLE        : Boolean := False;
      --  LPTIM Enable
      SNGSTRT       : Boolean := False;
      --  LPTIM start in single mode
      CNTSTRT       : Boolean := False;
      --  Timer start in continuous mode
      Reserved_3_31 : HAL.UInt29 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      ENABLE        at 0 range 0 .. 0;
      SNGSTRT       at 0 range 1 .. 1;
      CNTSTRT       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype CMP_CMP_Field is HAL.UInt16;

   --  Compare Register
   type CMP_Register is record
      CMP            : CMP_CMP_Field := 16#0#;
      --  Compare value
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP_Register use record
      CMP            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ARR_ARR_Field is HAL.UInt16;

   --  Autoreload Register
   type ARR_Register is record
      ARR            : ARR_ARR_Field := 16#1#;
      --  Auto reload value
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ARR_Register use record
      ARR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CNT_CNT_Field is HAL.UInt16;

   --  Counter Register
   type CNT_Register is record
      CNT            : CNT_CNT_Field;
      --  Read-only. Counter value
      Reserved_16_31 : HAL.UInt16;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Low power timer
   type LPTIM_Peripheral is record
      ISR  : aliased ISR_Register;
      --  Interrupt and Status Register
      ICR  : aliased ICR_Register;
      --  Interrupt Clear Register
      IER  : aliased IER_Register;
      --  Interrupt Enable Register
      CFGR : aliased CFGR_Register;
      --  Configuration Register
      CR   : aliased CR_Register;
      --  Control Register
      CMP  : aliased CMP_Register;
      --  Compare Register
      ARR  : aliased ARR_Register;
      --  Autoreload Register
      CNT  : aliased CNT_Register;
      --  Counter Register
   end record
     with Volatile;

   for LPTIM_Peripheral use record
      ISR  at 16#0# range 0 .. 31;
      ICR  at 16#4# range 0 .. 31;
      IER  at 16#8# range 0 .. 31;
      CFGR at 16#C# range 0 .. 31;
      CR   at 16#10# range 0 .. 31;
      CMP  at 16#14# range 0 .. 31;
      ARR  at 16#18# range 0 .. 31;
      CNT  at 16#1C# range 0 .. 31;
   end record;

   --  Low power timer
   LPTIM1_Periph : aliased LPTIM_Peripheral
     with Import, Address => LPTIM1_Base;

   --  Low power timer
   LPTIM2_Periph : aliased LPTIM_Peripheral
     with Import, Address => LPTIM2_Base;

end STM32_SVD.LPTIM;
