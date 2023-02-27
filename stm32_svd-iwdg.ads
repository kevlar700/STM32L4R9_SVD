pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.IWDG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype KR_KEY_Field is HAL.UInt16;

   --  Key register
   type KR_Register is record
      KEY            : KR_KEY_Field := 16#0#;
      --  Write-only. Key value (write only, read 0x0000)
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for KR_Register use record
      KEY            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PR_PR_Field is HAL.UInt3;

   --  Prescaler register
   type PR_Register is record
      PR            : PR_PR_Field := 16#0#;
      --  Prescaler divider
      Reserved_3_31 : HAL.UInt29 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PR_Register use record
      PR            at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RLR_RL_Field is HAL.UInt12;

   --  Reload register
   type RLR_Register is record
      RL             : RLR_RL_Field := 16#FFF#;
      --  Watchdog counter reload value
      Reserved_12_31 : HAL.UInt20 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RLR_Register use record
      RL             at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Status register
   type SR_Register is record
      PVU           : Boolean;
      --  Read-only. Watchdog prescaler value update
      RVU           : Boolean;
      --  Read-only. Watchdog counter reload value update
      WVU           : Boolean;
      --  Read-only. Watchdog counter window value update
      Reserved_3_31 : HAL.UInt29;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      PVU           at 0 range 0 .. 0;
      RVU           at 0 range 1 .. 1;
      WVU           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype WINR_WIN_Field is HAL.UInt12;

   --  Window register
   type WINR_Register is record
      WIN            : WINR_WIN_Field := 16#FFF#;
      --  Watchdog counter window value
      Reserved_12_31 : HAL.UInt20 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WINR_Register use record
      WIN            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Independent watchdog
   type IWDG_Peripheral is record
      KR   : aliased KR_Register;
      --  Key register
      PR   : aliased PR_Register;
      --  Prescaler register
      RLR  : aliased RLR_Register;
      --  Reload register
      SR   : aliased SR_Register;
      --  Status register
      WINR : aliased WINR_Register;
      --  Window register
   end record
     with Volatile;

   for IWDG_Peripheral use record
      KR   at 16#0# range 0 .. 31;
      PR   at 16#4# range 0 .. 31;
      RLR  at 16#8# range 0 .. 31;
      SR   at 16#C# range 0 .. 31;
      WINR at 16#10# range 0 .. 31;
   end record;

   --  Independent watchdog
   IWDG_Periph : aliased IWDG_Peripheral
     with Import, Address => IWDG_Base;

end STM32_SVD.IWDG;
