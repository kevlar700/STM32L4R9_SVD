pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.Flash is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype ACR_LATENCY_Field is HAL.UInt3;

   --  Access control register
   type ACR_Register is record
      LATENCY        : ACR_LATENCY_Field := 16#0#;
      --  Latency
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  unspecified
      PRFTEN         : Boolean := False;
      --  Prefetch enable
      ICEN           : Boolean := True;
      --  Instruction cache enable
      DCEN           : Boolean := True;
      --  Data cache enable
      ICRST          : Boolean := False;
      --  Instruction cache reset
      DCRST          : Boolean := False;
      --  Data cache reset
      RUN_PD         : Boolean := False;
      --  Flash Power-down mode during Low-power run mode
      SLEEP_PD       : Boolean := False;
      --  Flash Power-down mode during Low-power sleep mode
      Reserved_15_31 : HAL.UInt17 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACR_Register use record
      LATENCY        at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      PRFTEN         at 0 range 8 .. 8;
      ICEN           at 0 range 9 .. 9;
      DCEN           at 0 range 10 .. 10;
      ICRST          at 0 range 11 .. 11;
      DCRST          at 0 range 12 .. 12;
      RUN_PD         at 0 range 13 .. 13;
      SLEEP_PD       at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Status register
   type SR_Register is record
      EOP            : Boolean := False;
      --  End of operation
      OPERR          : Boolean := False;
      --  Operation error
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  unspecified
      PROGERR        : Boolean := False;
      --  Programming error
      WRPERR         : Boolean := False;
      --  Write protected error
      PGAERR         : Boolean := False;
      --  Programming alignment error
      SIZERR         : Boolean := False;
      --  Size error
      PGSERR         : Boolean := False;
      --  Programming sequence error
      MISERR         : Boolean := False;
      --  Fast programming data miss error
      FASTERR        : Boolean := False;
      --  Fast programming error
      Reserved_10_13 : HAL.UInt4 := 16#0#;
      --  unspecified
      RDERR          : Boolean := False;
      --  PCROP read error
      OPTVERR        : Boolean := False;
      --  Option validity error
      BSY            : Boolean := False;
      --  Read-only. Busy
      Reserved_17_31 : HAL.UInt15 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      EOP            at 0 range 0 .. 0;
      OPERR          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      PROGERR        at 0 range 3 .. 3;
      WRPERR         at 0 range 4 .. 4;
      PGAERR         at 0 range 5 .. 5;
      SIZERR         at 0 range 6 .. 6;
      PGSERR         at 0 range 7 .. 7;
      MISERR         at 0 range 8 .. 8;
      FASTERR        at 0 range 9 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      RDERR          at 0 range 14 .. 14;
      OPTVERR        at 0 range 15 .. 15;
      BSY            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype CR_PNB_Field is HAL.UInt8;

   --  Flash control register
   type CR_Register is record
      PG             : Boolean := False;
      --  Programming
      PER            : Boolean := False;
      --  Page erase
      MER1           : Boolean := False;
      --  Bank 1 Mass erase
      PNB            : CR_PNB_Field := 16#0#;
      --  Page number
      BKER           : Boolean := False;
      --  Bank erase
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  unspecified
      MER2           : Boolean := False;
      --  Bank 2 Mass erase
      START          : Boolean := False;
      --  Start
      OPTSTRT        : Boolean := False;
      --  Options modification start
      FSTPG          : Boolean := False;
      --  Fast programming
      Reserved_19_23 : HAL.UInt5 := 16#0#;
      --  unspecified
      EOPIE          : Boolean := False;
      --  End of operation interrupt enable
      ERRIE          : Boolean := False;
      --  Error interrupt enable
      RDERRIE        : Boolean := False;
      --  PCROP read error interrupt enable
      OBL_LAUNCH     : Boolean := False;
      --  Force the option byte loading
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  unspecified
      OPTLOCK        : Boolean := True;
      --  Options Lock
      LOCK           : Boolean := True;
      --  FLASH_CR Lock
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      PG             at 0 range 0 .. 0;
      PER            at 0 range 1 .. 1;
      MER1           at 0 range 2 .. 2;
      PNB            at 0 range 3 .. 10;
      BKER           at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      MER2           at 0 range 15 .. 15;
      START          at 0 range 16 .. 16;
      OPTSTRT        at 0 range 17 .. 17;
      FSTPG          at 0 range 18 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      EOPIE          at 0 range 24 .. 24;
      ERRIE          at 0 range 25 .. 25;
      RDERRIE        at 0 range 26 .. 26;
      OBL_LAUNCH     at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      OPTLOCK        at 0 range 30 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype ECCR_ADDR_ECC_Field is HAL.UInt19;

   --  Flash ECC register
   type ECCR_Register is record
      ADDR_ECC       : ECCR_ADDR_ECC_Field := 16#0#;
      --  Read-only. ECC fail address
      BK_ECC         : Boolean := False;
      --  Read-only. ECC fail bank
      SYSF_ECC       : Boolean := False;
      --  Read-only. System Flash ECC fail
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  unspecified
      ECCIE          : Boolean := False;
      --  ECC correction interrupt enable
      Reserved_25_29 : HAL.UInt5 := 16#0#;
      --  unspecified
      ECCC           : Boolean := False;
      --  ECC correction
      ECCD           : Boolean := False;
      --  ECC detection
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ECCR_Register use record
      ADDR_ECC       at 0 range 0 .. 18;
      BK_ECC         at 0 range 19 .. 19;
      SYSF_ECC       at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      ECCIE          at 0 range 24 .. 24;
      Reserved_25_29 at 0 range 25 .. 29;
      ECCC           at 0 range 30 .. 30;
      ECCD           at 0 range 31 .. 31;
   end record;

   subtype OPTR_RDP_Field is HAL.UInt8;
   subtype OPTR_BOR_LEV_Field is HAL.UInt3;

   --  Flash option register
   type OPTR_Register is record
      RDP            : OPTR_RDP_Field := 16#0#;
      --  Read protection level
      BOR_LEV        : OPTR_BOR_LEV_Field := 16#0#;
      --  BOR reset Level
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  unspecified
      nRST_STOP      : Boolean := False;
      --  nRST_STOP
      nRST_STDBY     : Boolean := False;
      --  nRST_STDBY
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  unspecified
      IDWG_SW        : Boolean := False;
      --  Independent watchdog selection
      IWDG_STOP      : Boolean := False;
      --  Independent watchdog counter freeze in Stop mode
      IWDG_STDBY     : Boolean := False;
      --  Independent watchdog counter freeze in Standby mode
      WWDG_SW        : Boolean := False;
      --  Window watchdog selection
      BFB2           : Boolean := False;
      --  Dual-bank boot
      DUALBANK       : Boolean := False;
      --  Dual-Bank on 512 KB or 256 KB Flash memory devices
      Reserved_22_22 : HAL.Bit := 16#0#;
      --  unspecified
      nBOOT1         : Boolean := False;
      --  Boot configuration
      SRAM2_PE       : Boolean := False;
      --  SRAM2 parity check enable
      SRAM2_RST      : Boolean := False;
      --  SRAM2 Erase when system reset
      Reserved_26_31 : HAL.UInt6 := 16#3C#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPTR_Register use record
      RDP            at 0 range 0 .. 7;
      BOR_LEV        at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      nRST_STOP      at 0 range 12 .. 12;
      nRST_STDBY     at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      IDWG_SW        at 0 range 16 .. 16;
      IWDG_STOP      at 0 range 17 .. 17;
      IWDG_STDBY     at 0 range 18 .. 18;
      WWDG_SW        at 0 range 19 .. 19;
      BFB2           at 0 range 20 .. 20;
      DUALBANK       at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      nBOOT1         at 0 range 23 .. 23;
      SRAM2_PE       at 0 range 24 .. 24;
      SRAM2_RST      at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype PCROP1SR_PCROP1_STRT_Field is HAL.UInt16;

   --  Flash Bank 1 PCROP Start address register
   type PCROP1SR_Register is record
      PCROP1_STRT    : PCROP1SR_PCROP1_STRT_Field := 16#0#;
      --  Bank 1 PCROP area start offset
      Reserved_16_31 : HAL.UInt16 := 16#FFFF#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCROP1SR_Register use record
      PCROP1_STRT    at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PCROP1ER_PCROP1_END_Field is HAL.UInt16;

   --  Flash Bank 1 PCROP End address register
   type PCROP1ER_Register is record
      PCROP1_END     : PCROP1ER_PCROP1_END_Field := 16#0#;
      --  Bank 1 PCROP area end offset
      Reserved_16_30 : HAL.UInt15 := 16#FFF#;
      --  unspecified
      PCROP_RDP      : Boolean := False;
      --  PCROP area preserved when RDP level decreased
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCROP1ER_Register use record
      PCROP1_END     at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      PCROP_RDP      at 0 range 31 .. 31;
   end record;

   subtype WRP1AR_WRP1A_STRT_Field is HAL.UInt8;
   subtype WRP1AR_WRP1A_END_Field is HAL.UInt8;

   --  Flash Bank 1 WRP area A address register
   type WRP1AR_Register is record
      WRP1A_STRT     : WRP1AR_WRP1A_STRT_Field := 16#0#;
      --  Bank 1 WRP first area start offset
      Reserved_8_15  : HAL.UInt8 := 16#FF#;
      --  unspecified
      WRP1A_END      : WRP1AR_WRP1A_END_Field := 16#0#;
      --  Bank 1 WRP first area A end offset
      Reserved_24_31 : HAL.UInt8 := 16#FF#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WRP1AR_Register use record
      WRP1A_STRT     at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRP1A_END      at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype WRP1BR_WRP1B_STRT_Field is HAL.UInt8;
   subtype WRP1BR_WRP1B_END_Field is HAL.UInt8;

   --  Flash Bank 1 WRP area B address register
   type WRP1BR_Register is record
      WRP1B_STRT     : WRP1BR_WRP1B_STRT_Field := 16#0#;
      --  Bank 1 WRP second area B start offset
      Reserved_8_15  : HAL.UInt8 := 16#FF#;
      --  unspecified
      WRP1B_END      : WRP1BR_WRP1B_END_Field := 16#0#;
      --  Bank 1 WRP second area B end offset
      Reserved_24_31 : HAL.UInt8 := 16#FF#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WRP1BR_Register use record
      WRP1B_STRT     at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRP1B_END      at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PCROP2SR_PCROP2_STRT_Field is HAL.UInt16;

   --  Flash Bank 2 PCROP Start address register
   type PCROP2SR_Register is record
      PCROP2_STRT    : PCROP2SR_PCROP2_STRT_Field := 16#0#;
      --  Bank 2 PCROP area start offset
      Reserved_16_31 : HAL.UInt16 := 16#FFFF#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCROP2SR_Register use record
      PCROP2_STRT    at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PCROP2ER_PCROP2_END_Field is HAL.UInt16;

   --  Flash Bank 2 PCROP End address register
   type PCROP2ER_Register is record
      PCROP2_END     : PCROP2ER_PCROP2_END_Field := 16#0#;
      --  Bank 2 PCROP area end offset
      Reserved_16_31 : HAL.UInt16 := 16#FFFF#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCROP2ER_Register use record
      PCROP2_END     at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype WRP2AR_WRP2A_STRT_Field is HAL.UInt8;
   subtype WRP2AR_WRP2A_END_Field is HAL.UInt8;

   --  Flash Bank 2 WRP area A address register
   type WRP2AR_Register is record
      WRP2A_STRT     : WRP2AR_WRP2A_STRT_Field := 16#0#;
      --  Bank 2 WRP first area A start offset
      Reserved_8_15  : HAL.UInt8 := 16#FF#;
      --  unspecified
      WRP2A_END      : WRP2AR_WRP2A_END_Field := 16#0#;
      --  Bank 2 WRP first area A end offset
      Reserved_24_31 : HAL.UInt8 := 16#FF#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WRP2AR_Register use record
      WRP2A_STRT     at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRP2A_END      at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype WRP2BR_WRP2B_STRT_Field is HAL.UInt8;
   subtype WRP2BR_WRP2B_END_Field is HAL.UInt8;

   --  Flash Bank 2 WRP area B address register
   type WRP2BR_Register is record
      WRP2B_STRT     : WRP2BR_WRP2B_STRT_Field := 16#0#;
      --  Bank 2 WRP second area B start offset
      Reserved_8_15  : HAL.UInt8 := 16#FF#;
      --  unspecified
      WRP2B_END      : WRP2BR_WRP2B_END_Field := 16#0#;
      --  Bank 2 WRP second area B end offset
      Reserved_24_31 : HAL.UInt8 := 16#FF#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WRP2BR_Register use record
      WRP2B_STRT     at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRP2B_END      at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Flash
   type FLASH_Peripheral is record
      ACR      : aliased ACR_Register;
      --  Access control register
      PDKEYR   : aliased HAL.UInt32;
      --  Power down key register
      KEYR     : aliased HAL.UInt32;
      --  Flash key register
      OPTKEYR  : aliased HAL.UInt32;
      --  Option byte key register
      SR       : aliased SR_Register;
      --  Status register
      CR       : aliased CR_Register;
      --  Flash control register
      ECCR     : aliased ECCR_Register;
      --  Flash ECC register
      OPTR     : aliased OPTR_Register;
      --  Flash option register
      PCROP1SR : aliased PCROP1SR_Register;
      --  Flash Bank 1 PCROP Start address register
      PCROP1ER : aliased PCROP1ER_Register;
      --  Flash Bank 1 PCROP End address register
      WRP1AR   : aliased WRP1AR_Register;
      --  Flash Bank 1 WRP area A address register
      WRP1BR   : aliased WRP1BR_Register;
      --  Flash Bank 1 WRP area B address register
      PCROP2SR : aliased PCROP2SR_Register;
      --  Flash Bank 2 PCROP Start address register
      PCROP2ER : aliased PCROP2ER_Register;
      --  Flash Bank 2 PCROP End address register
      WRP2AR   : aliased WRP2AR_Register;
      --  Flash Bank 2 WRP area A address register
      WRP2BR   : aliased WRP2BR_Register;
      --  Flash Bank 2 WRP area B address register
   end record
     with Volatile;

   for FLASH_Peripheral use record
      ACR      at 16#0# range 0 .. 31;
      PDKEYR   at 16#4# range 0 .. 31;
      KEYR     at 16#8# range 0 .. 31;
      OPTKEYR  at 16#C# range 0 .. 31;
      SR       at 16#10# range 0 .. 31;
      CR       at 16#14# range 0 .. 31;
      ECCR     at 16#18# range 0 .. 31;
      OPTR     at 16#20# range 0 .. 31;
      PCROP1SR at 16#24# range 0 .. 31;
      PCROP1ER at 16#28# range 0 .. 31;
      WRP1AR   at 16#2C# range 0 .. 31;
      WRP1BR   at 16#30# range 0 .. 31;
      PCROP2SR at 16#44# range 0 .. 31;
      PCROP2ER at 16#48# range 0 .. 31;
      WRP2AR   at 16#4C# range 0 .. 31;
      WRP2BR   at 16#50# range 0 .. 31;
   end record;

   --  Flash
   FLASH_Periph : aliased FLASH_Peripheral
     with Import, Address => FLASH_Base;

end STM32_SVD.Flash;
