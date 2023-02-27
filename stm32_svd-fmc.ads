pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.FMC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype BCR1_MTYP_Field is HAL.UInt2;
   subtype BCR1_MWID_Field is HAL.UInt2;

   --  SRAM/NOR-Flash chip-select control register 1
   type BCR1_Register is record
      MBKEN          : Boolean := False;
      --  MBKEN
      MUXEN          : Boolean := False;
      --  MUXEN
      MTYP           : BCR1_MTYP_Field := 16#0#;
      --  MTYP
      MWID           : BCR1_MWID_Field := 16#1#;
      --  MWID
      FACCEN         : Boolean := True;
      --  FACCEN
      Reserved_7_7   : HAL.Bit := 16#1#;
      --  unspecified
      BURSTEN        : Boolean := False;
      --  BURSTEN
      WAITPOL        : Boolean := False;
      --  WAITPOL
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  unspecified
      WAITCFG        : Boolean := False;
      --  WAITCFG
      WREN           : Boolean := True;
      --  WREN
      WAITEN         : Boolean := True;
      --  WAITEN
      EXTMOD         : Boolean := False;
      --  EXTMOD
      ASYNCWAIT      : Boolean := False;
      --  ASYNCWAIT
      Reserved_16_18 : HAL.UInt3 := 16#0#;
      --  unspecified
      CBURSTRW       : Boolean := False;
      --  CBURSTRW
      CCLKEN         : Boolean := False;
      --  CCLKEN
      WFDIS          : Boolean := False;
      --  Write FIFO Disable
      Reserved_22_31 : HAL.UInt10 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BCR1_Register use record
      MBKEN          at 0 range 0 .. 0;
      MUXEN          at 0 range 1 .. 1;
      MTYP           at 0 range 2 .. 3;
      MWID           at 0 range 4 .. 5;
      FACCEN         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      BURSTEN        at 0 range 8 .. 8;
      WAITPOL        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WAITCFG        at 0 range 11 .. 11;
      WREN           at 0 range 12 .. 12;
      WAITEN         at 0 range 13 .. 13;
      EXTMOD         at 0 range 14 .. 14;
      ASYNCWAIT      at 0 range 15 .. 15;
      Reserved_16_18 at 0 range 16 .. 18;
      CBURSTRW       at 0 range 19 .. 19;
      CCLKEN         at 0 range 20 .. 20;
      WFDIS          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype BTR_ADDSET_Field is HAL.UInt4;
   subtype BTR_ADDHLD_Field is HAL.UInt4;
   subtype BTR_DATAST_Field is HAL.UInt8;
   subtype BTR_BUSTURN_Field is HAL.UInt4;
   subtype BTR_CLKDIV_Field is HAL.UInt4;
   subtype BTR_DATLAT_Field is HAL.UInt4;
   subtype BTR_ACCMOD_Field is HAL.UInt2;

   --  SRAM/NOR-Flash chip-select timing register 1
   type BTR_Register is record
      ADDSET         : BTR_ADDSET_Field := 16#F#;
      --  ADDSET
      ADDHLD         : BTR_ADDHLD_Field := 16#F#;
      --  ADDHLD
      DATAST         : BTR_DATAST_Field := 16#FF#;
      --  DATAST
      BUSTURN        : BTR_BUSTURN_Field := 16#F#;
      --  BUSTURN
      CLKDIV         : BTR_CLKDIV_Field := 16#F#;
      --  CLKDIV
      DATLAT         : BTR_DATLAT_Field := 16#F#;
      --  DATLAT
      ACCMOD         : BTR_ACCMOD_Field := 16#3#;
      --  ACCMOD
      Reserved_30_31 : HAL.UInt2 := 16#3#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BTR_Register use record
      ADDSET         at 0 range 0 .. 3;
      ADDHLD         at 0 range 4 .. 7;
      DATAST         at 0 range 8 .. 15;
      BUSTURN        at 0 range 16 .. 19;
      CLKDIV         at 0 range 20 .. 23;
      DATLAT         at 0 range 24 .. 27;
      ACCMOD         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype BCR_MTYP_Field is HAL.UInt2;
   subtype BCR_MWID_Field is HAL.UInt2;

   --  SRAM/NOR-Flash chip-select control register 2
   type BCR_Register is record
      MBKEN          : Boolean := False;
      --  MBKEN
      MUXEN          : Boolean := False;
      --  MUXEN
      MTYP           : BCR_MTYP_Field := 16#0#;
      --  MTYP
      MWID           : BCR_MWID_Field := 16#1#;
      --  MWID
      FACCEN         : Boolean := True;
      --  FACCEN
      Reserved_7_7   : HAL.Bit := 16#1#;
      --  unspecified
      BURSTEN        : Boolean := False;
      --  BURSTEN
      WAITPOL        : Boolean := False;
      --  WAITPOL
      WRAPMOD        : Boolean := False;
      --  WRAPMOD
      WAITCFG        : Boolean := False;
      --  WAITCFG
      WREN           : Boolean := True;
      --  WREN
      WAITEN         : Boolean := True;
      --  WAITEN
      EXTMOD         : Boolean := False;
      --  EXTMOD
      ASYNCWAIT      : Boolean := False;
      --  ASYNCWAIT
      Reserved_16_18 : HAL.UInt3 := 16#0#;
      --  unspecified
      CBURSTRW       : Boolean := False;
      --  CBURSTRW
      Reserved_20_31 : HAL.UInt12 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BCR_Register use record
      MBKEN          at 0 range 0 .. 0;
      MUXEN          at 0 range 1 .. 1;
      MTYP           at 0 range 2 .. 3;
      MWID           at 0 range 4 .. 5;
      FACCEN         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      BURSTEN        at 0 range 8 .. 8;
      WAITPOL        at 0 range 9 .. 9;
      WRAPMOD        at 0 range 10 .. 10;
      WAITCFG        at 0 range 11 .. 11;
      WREN           at 0 range 12 .. 12;
      WAITEN         at 0 range 13 .. 13;
      EXTMOD         at 0 range 14 .. 14;
      ASYNCWAIT      at 0 range 15 .. 15;
      Reserved_16_18 at 0 range 16 .. 18;
      CBURSTRW       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype PCR_PWID_Field is HAL.UInt2;
   subtype PCR_TCLR_Field is HAL.UInt4;
   subtype PCR_TAR_Field is HAL.UInt4;
   subtype PCR_ECCPS_Field is HAL.UInt3;

   --  PC Card/NAND Flash control register 3
   type PCR_Register is record
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  unspecified
      PWAITEN        : Boolean := False;
      --  PWAITEN
      PBKEN          : Boolean := False;
      --  PBKEN
      PTYP           : Boolean := True;
      --  PTYP
      PWID           : PCR_PWID_Field := 16#1#;
      --  PWID
      ECCEN          : Boolean := False;
      --  ECCEN
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  unspecified
      TCLR           : PCR_TCLR_Field := 16#0#;
      --  TCLR
      TAR            : PCR_TAR_Field := 16#0#;
      --  TAR
      ECCPS          : PCR_ECCPS_Field := 16#0#;
      --  ECCPS
      Reserved_20_31 : HAL.UInt12 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      PWAITEN        at 0 range 1 .. 1;
      PBKEN          at 0 range 2 .. 2;
      PTYP           at 0 range 3 .. 3;
      PWID           at 0 range 4 .. 5;
      ECCEN          at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      TCLR           at 0 range 9 .. 12;
      TAR            at 0 range 13 .. 16;
      ECCPS          at 0 range 17 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  FIFO status and interrupt register 3
   type SR_Register is record
      IRS           : Boolean := False;
      --  IRS
      ILS           : Boolean := False;
      --  ILS
      IFS           : Boolean := False;
      --  IFS
      IREN          : Boolean := False;
      --  IREN
      ILEN          : Boolean := False;
      --  ILEN
      IFEN          : Boolean := False;
      --  IFEN
      FEMPT         : Boolean := True;
      --  Read-only. FEMPT
      Reserved_7_31 : HAL.UInt25 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      IRS           at 0 range 0 .. 0;
      ILS           at 0 range 1 .. 1;
      IFS           at 0 range 2 .. 2;
      IREN          at 0 range 3 .. 3;
      ILEN          at 0 range 4 .. 4;
      IFEN          at 0 range 5 .. 5;
      FEMPT         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype PMEM_MEMSETx_Field is HAL.UInt8;
   subtype PMEM_MEMWAITx_Field is HAL.UInt8;
   subtype PMEM_MEMHOLDx_Field is HAL.UInt8;
   subtype PMEM_MEMHIZx_Field is HAL.UInt8;

   --  Common memory space timing register 3
   type PMEM_Register is record
      MEMSETx  : PMEM_MEMSETx_Field := 16#FC#;
      --  MEMSETx
      MEMWAITx : PMEM_MEMWAITx_Field := 16#FC#;
      --  MEMWAITx
      MEMHOLDx : PMEM_MEMHOLDx_Field := 16#FC#;
      --  MEMHOLDx
      MEMHIZx  : PMEM_MEMHIZx_Field := 16#FC#;
      --  MEMHIZx
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMEM_Register use record
      MEMSETx  at 0 range 0 .. 7;
      MEMWAITx at 0 range 8 .. 15;
      MEMHOLDx at 0 range 16 .. 23;
      MEMHIZx  at 0 range 24 .. 31;
   end record;

   subtype PATT_ATTSETx_Field is HAL.UInt8;
   subtype PATT_ATTWAITx_Field is HAL.UInt8;
   subtype PATT_ATTHOLDx_Field is HAL.UInt8;
   subtype PATT_ATTHIZx_Field is HAL.UInt8;

   --  Attribute memory space timing register 3
   type PATT_Register is record
      ATTSETx  : PATT_ATTSETx_Field := 16#FC#;
      --  ATTSETx
      ATTWAITx : PATT_ATTWAITx_Field := 16#FC#;
      --  ATTWAITx
      ATTHOLDx : PATT_ATTHOLDx_Field := 16#FC#;
      --  ATTHOLDx
      ATTHIZx  : PATT_ATTHIZx_Field := 16#FC#;
      --  ATTHIZx
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PATT_Register use record
      ATTSETx  at 0 range 0 .. 7;
      ATTWAITx at 0 range 8 .. 15;
      ATTHOLDx at 0 range 16 .. 23;
      ATTHIZx  at 0 range 24 .. 31;
   end record;

   subtype BWTR_ADDSET_Field is HAL.UInt4;
   subtype BWTR_ADDHLD_Field is HAL.UInt4;
   subtype BWTR_DATAST_Field is HAL.UInt8;
   subtype BWTR_CLKDIV_Field is HAL.UInt4;
   subtype BWTR_DATLAT_Field is HAL.UInt4;
   subtype BWTR_ACCMOD_Field is HAL.UInt2;

   --  SRAM/NOR-Flash write timing registers 1
   type BWTR_Register is record
      ADDSET         : BWTR_ADDSET_Field := 16#F#;
      --  ADDSET
      ADDHLD         : BWTR_ADDHLD_Field := 16#F#;
      --  ADDHLD
      DATAST         : BWTR_DATAST_Field := 16#FF#;
      --  DATAST
      Reserved_16_19 : HAL.UInt4 := 16#F#;
      --  unspecified
      CLKDIV         : BWTR_CLKDIV_Field := 16#F#;
      --  CLKDIV
      DATLAT         : BWTR_DATLAT_Field := 16#F#;
      --  DATLAT
      ACCMOD         : BWTR_ACCMOD_Field := 16#0#;
      --  ACCMOD
      Reserved_30_31 : HAL.UInt2 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BWTR_Register use record
      ADDSET         at 0 range 0 .. 3;
      ADDHLD         at 0 range 4 .. 7;
      DATAST         at 0 range 8 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      CLKDIV         at 0 range 20 .. 23;
      DATLAT         at 0 range 24 .. 27;
      ACCMOD         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Flexible memory controller
   type FMC_Peripheral is record
      BCR1  : aliased BCR1_Register;
      --  SRAM/NOR-Flash chip-select control register 1
      BTR1  : aliased BTR_Register;
      --  SRAM/NOR-Flash chip-select timing register 1
      BCR2  : aliased BCR_Register;
      --  SRAM/NOR-Flash chip-select control register 2
      BTR2  : aliased BTR_Register;
      --  SRAM/NOR-Flash chip-select timing register 2
      BCR3  : aliased BCR_Register;
      --  SRAM/NOR-Flash chip-select control register 3
      BTR3  : aliased BTR_Register;
      --  SRAM/NOR-Flash chip-select timing register 3
      BCR4  : aliased BCR_Register;
      --  SRAM/NOR-Flash chip-select control register 4
      BTR4  : aliased BTR_Register;
      --  SRAM/NOR-Flash chip-select timing register 4
      PCR   : aliased PCR_Register;
      --  PC Card/NAND Flash control register 3
      SR    : aliased SR_Register;
      --  FIFO status and interrupt register 3
      PMEM  : aliased PMEM_Register;
      --  Common memory space timing register 3
      PATT  : aliased PATT_Register;
      --  Attribute memory space timing register 3
      ECCR  : aliased HAL.UInt32;
      --  ECC result register 3
      BWTR1 : aliased BWTR_Register;
      --  SRAM/NOR-Flash write timing registers 1
      BWTR2 : aliased BWTR_Register;
      --  SRAM/NOR-Flash write timing registers 2
      BWTR3 : aliased BWTR_Register;
      --  SRAM/NOR-Flash write timing registers 3
      BWTR4 : aliased BWTR_Register;
      --  SRAM/NOR-Flash write timing registers 4
   end record
     with Volatile;

   for FMC_Peripheral use record
      BCR1  at 16#0# range 0 .. 31;
      BTR1  at 16#4# range 0 .. 31;
      BCR2  at 16#8# range 0 .. 31;
      BTR2  at 16#C# range 0 .. 31;
      BCR3  at 16#10# range 0 .. 31;
      BTR3  at 16#14# range 0 .. 31;
      BCR4  at 16#18# range 0 .. 31;
      BTR4  at 16#1C# range 0 .. 31;
      PCR   at 16#80# range 0 .. 31;
      SR    at 16#84# range 0 .. 31;
      PMEM  at 16#88# range 0 .. 31;
      PATT  at 16#8C# range 0 .. 31;
      ECCR  at 16#94# range 0 .. 31;
      BWTR1 at 16#104# range 0 .. 31;
      BWTR2 at 16#10C# range 0 .. 31;
      BWTR3 at 16#114# range 0 .. 31;
      BWTR4 at 16#11C# range 0 .. 31;
   end record;

   --  Flexible memory controller
   FMC_Periph : aliased FMC_Peripheral
     with Import, Address => FMC_Base;

end STM32_SVD.FMC;
