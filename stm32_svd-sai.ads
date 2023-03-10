pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.SAI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype ACR1_MODE_Field is HAL.UInt2;
   subtype ACR1_PRTCFG_Field is HAL.UInt2;
   subtype ACR1_DS_Field is HAL.UInt3;
   subtype ACR1_SYNCEN_Field is HAL.UInt2;
   subtype ACR1_MCKDIV_Field is HAL.UInt6;

   --  AConfiguration register 1
   type ACR1_Register is record
      MODE           : ACR1_MODE_Field := 16#0#;
      --  Audio block mode
      PRTCFG         : ACR1_PRTCFG_Field := 16#0#;
      --  Protocol configuration
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  unspecified
      DS             : ACR1_DS_Field := 16#2#;
      --  Data size
      LSBFIRST       : Boolean := False;
      --  Least significant bit first
      CKSTR          : Boolean := False;
      --  Clock strobing edge
      SYNCEN         : ACR1_SYNCEN_Field := 16#0#;
      --  Synchronization enable
      MONO           : Boolean := False;
      --  Mono mode
      OUTDRIV        : Boolean := False;
      --  Output drive
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  unspecified
      SAIAEN         : Boolean := False;
      --  Audio block A enable
      DMAEN          : Boolean := False;
      --  DMA enable
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  unspecified
      NODIV          : Boolean := False;
      --  No divider
      MCKDIV         : ACR1_MCKDIV_Field := 16#0#;
      --  Master clock divider
      OSR            : Boolean := False;
      --  Oversampling ratio for master clock
      Reserved_27_31 : HAL.UInt5 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACR1_Register use record
      MODE           at 0 range 0 .. 1;
      PRTCFG         at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      DS             at 0 range 5 .. 7;
      LSBFIRST       at 0 range 8 .. 8;
      CKSTR          at 0 range 9 .. 9;
      SYNCEN         at 0 range 10 .. 11;
      MONO           at 0 range 12 .. 12;
      OUTDRIV        at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      SAIAEN         at 0 range 16 .. 16;
      DMAEN          at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      NODIV          at 0 range 19 .. 19;
      MCKDIV         at 0 range 20 .. 25;
      OSR            at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype ACR2_FTH_Field is HAL.UInt3;
   subtype ACR2_MUTECN_Field is HAL.UInt6;
   subtype ACR2_COMP_Field is HAL.UInt2;

   --  AConfiguration register 2
   type ACR2_Register is record
      FTH            : ACR2_FTH_Field := 16#0#;
      --  FIFO threshold
      FFLUSH         : Boolean := False;
      --  FIFO flush
      TRIS           : Boolean := False;
      --  Tristate management on data line
      MUTE           : Boolean := False;
      --  Mute
      MUTEVAL        : Boolean := False;
      --  Mute value
      MUTECN         : ACR2_MUTECN_Field := 16#0#;
      --  Mute counter
      CPL            : Boolean := False;
      --  Complement bit
      COMP           : ACR2_COMP_Field := 16#0#;
      --  Companding mode
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACR2_Register use record
      FTH            at 0 range 0 .. 2;
      FFLUSH         at 0 range 3 .. 3;
      TRIS           at 0 range 4 .. 4;
      MUTE           at 0 range 5 .. 5;
      MUTEVAL        at 0 range 6 .. 6;
      MUTECN         at 0 range 7 .. 12;
      CPL            at 0 range 13 .. 13;
      COMP           at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype AFRCR_FRL_Field is HAL.UInt8;
   subtype AFRCR_FSALL_Field is HAL.UInt7;

   --  AFRCR
   type AFRCR_Register is record
      FRL            : AFRCR_FRL_Field := 16#7#;
      --  Frame length
      FSALL          : AFRCR_FSALL_Field := 16#0#;
      --  Frame synchronization active level length
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  unspecified
      FSDEF          : Boolean := False;
      --  Frame synchronization definition
      FSPOL          : Boolean := False;
      --  Frame synchronization polarity
      FSOFF          : Boolean := False;
      --  Frame synchronization offset
      Reserved_19_31 : HAL.UInt13 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFRCR_Register use record
      FRL            at 0 range 0 .. 7;
      FSALL          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FSDEF          at 0 range 16 .. 16;
      FSPOL          at 0 range 17 .. 17;
      FSOFF          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ASLOTR_FBOFF_Field is HAL.UInt5;
   subtype ASLOTR_SLOTSZ_Field is HAL.UInt2;
   subtype ASLOTR_NBSLOT_Field is HAL.UInt4;
   subtype ASLOTR_SLOTEN_Field is HAL.UInt16;

   --  ASlot register
   type ASLOTR_Register is record
      FBOFF          : ASLOTR_FBOFF_Field := 16#0#;
      --  First bit offset
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  unspecified
      SLOTSZ         : ASLOTR_SLOTSZ_Field := 16#0#;
      --  Slot size
      NBSLOT         : ASLOTR_NBSLOT_Field := 16#0#;
      --  Number of slots in an audio frame
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  unspecified
      SLOTEN         : ASLOTR_SLOTEN_Field := 16#0#;
      --  Slot enable
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASLOTR_Register use record
      FBOFF          at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SLOTSZ         at 0 range 6 .. 7;
      NBSLOT         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SLOTEN         at 0 range 16 .. 31;
   end record;

   --  AInterrupt mask register2
   type AIM_Register is record
      OVRUDRIE      : Boolean := False;
      --  Overrun/underrun interrupt enable
      MUTEDETIE     : Boolean := False;
      --  Mute detection interrupt enable
      WCKCFGIE      : Boolean := False;
      --  Wrong clock configuration interrupt enable
      FREQIE        : Boolean := False;
      --  FIFO request interrupt enable
      CNRDYIE       : Boolean := False;
      --  Codec not ready interrupt enable
      AFSDETIE      : Boolean := False;
      --  Anticipated frame synchronization detection interrupt enable
      LFSDETIE      : Boolean := False;
      --  Late frame synchronization detection interrupt enable
      Reserved_7_31 : HAL.UInt25 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIM_Register use record
      OVRUDRIE      at 0 range 0 .. 0;
      MUTEDETIE     at 0 range 1 .. 1;
      WCKCFGIE      at 0 range 2 .. 2;
      FREQIE        at 0 range 3 .. 3;
      CNRDYIE       at 0 range 4 .. 4;
      AFSDETIE      at 0 range 5 .. 5;
      LFSDETIE      at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype ASR_FLVL_Field is HAL.UInt3;

   --  AStatus register
   type ASR_Register is record
      OVRUDR         : Boolean := False;
      --  Overrun / underrun
      MUTEDET        : Boolean := False;
      --  Mute detection
      WCKCFG         : Boolean := False;
      --  Wrong clock configuration flag. This bit is read only
      FREQ           : Boolean := False;
      --  FIFO request
      CNRDY          : Boolean := False;
      --  Codec not ready
      AFSDET         : Boolean := False;
      --  Anticipated frame synchronization detection
      LFSDET         : Boolean := False;
      --  Late frame synchronization detection
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  unspecified
      FLVL           : ASR_FLVL_Field := 16#0#;
      --  FIFO level threshold
      Reserved_19_31 : HAL.UInt13 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASR_Register use record
      OVRUDR         at 0 range 0 .. 0;
      MUTEDET        at 0 range 1 .. 1;
      WCKCFG         at 0 range 2 .. 2;
      FREQ           at 0 range 3 .. 3;
      CNRDY          at 0 range 4 .. 4;
      AFSDET         at 0 range 5 .. 5;
      LFSDET         at 0 range 6 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      FLVL           at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  AClear flag register
   type ACLRFR_Register is record
      COVRUDR       : Boolean := False;
      --  Clear overrun / underrun
      CMUTEDET      : Boolean := False;
      --  Mute detection flag
      CWCKCFG       : Boolean := False;
      --  Clear wrong clock configuration flag
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  unspecified
      CCNRDY        : Boolean := False;
      --  Clear codec not ready flag
      CAFSDET       : Boolean := False;
      --  Clear anticipated frame synchronization detection flag
      CLFSDET       : Boolean := False;
      --  Clear late frame synchronization detection flag
      Reserved_7_31 : HAL.UInt25 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACLRFR_Register use record
      COVRUDR       at 0 range 0 .. 0;
      CMUTEDET      at 0 range 1 .. 1;
      CWCKCFG       at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      CCNRDY        at 0 range 4 .. 4;
      CAFSDET       at 0 range 5 .. 5;
      CLFSDET       at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype BCR1_MODE_Field is HAL.UInt2;
   subtype BCR1_PRTCFG_Field is HAL.UInt2;
   subtype BCR1_DS_Field is HAL.UInt3;
   subtype BCR1_SYNCEN_Field is HAL.UInt2;
   subtype BCR1_MCKDIV_Field is HAL.UInt6;

   --  BConfiguration register 1
   type BCR1_Register is record
      MODE           : BCR1_MODE_Field := 16#0#;
      --  Audio block mode
      PRTCFG         : BCR1_PRTCFG_Field := 16#0#;
      --  Protocol configuration
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  unspecified
      DS             : BCR1_DS_Field := 16#2#;
      --  Data size
      LSBFIRST       : Boolean := False;
      --  Least significant bit first
      CKSTR          : Boolean := False;
      --  Clock strobing edge
      SYNCEN         : BCR1_SYNCEN_Field := 16#0#;
      --  Synchronization enable
      MONO           : Boolean := False;
      --  Mono mode
      OUTDRIV        : Boolean := False;
      --  Output drive
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  unspecified
      SAIBEN         : Boolean := False;
      --  Audio block B enable
      DMAEN          : Boolean := False;
      --  DMA enable
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  unspecified
      NODIV          : Boolean := False;
      --  No divider
      MCKDIV         : BCR1_MCKDIV_Field := 16#0#;
      --  Master clock divider
      OSR            : Boolean := False;
      --  Oversampling ratio for master clock
      Reserved_27_31 : HAL.UInt5 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BCR1_Register use record
      MODE           at 0 range 0 .. 1;
      PRTCFG         at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      DS             at 0 range 5 .. 7;
      LSBFIRST       at 0 range 8 .. 8;
      CKSTR          at 0 range 9 .. 9;
      SYNCEN         at 0 range 10 .. 11;
      MONO           at 0 range 12 .. 12;
      OUTDRIV        at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      SAIBEN         at 0 range 16 .. 16;
      DMAEN          at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      NODIV          at 0 range 19 .. 19;
      MCKDIV         at 0 range 20 .. 25;
      OSR            at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype BCR2_FTH_Field is HAL.UInt3;
   subtype BCR2_MUTECN_Field is HAL.UInt6;
   subtype BCR2_COMP_Field is HAL.UInt2;

   --  BConfiguration register 2
   type BCR2_Register is record
      FTH            : BCR2_FTH_Field := 16#0#;
      --  FIFO threshold
      FFLUS          : Boolean := False;
      --  FIFO flush
      TRIS           : Boolean := False;
      --  Tristate management on data line
      MUTE           : Boolean := False;
      --  Mute
      MUTEVAL        : Boolean := False;
      --  Mute value
      MUTECN         : BCR2_MUTECN_Field := 16#0#;
      --  Mute counter
      CPL            : Boolean := False;
      --  Complement bit
      COMP           : BCR2_COMP_Field := 16#0#;
      --  Companding mode
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BCR2_Register use record
      FTH            at 0 range 0 .. 2;
      FFLUS          at 0 range 3 .. 3;
      TRIS           at 0 range 4 .. 4;
      MUTE           at 0 range 5 .. 5;
      MUTEVAL        at 0 range 6 .. 6;
      MUTECN         at 0 range 7 .. 12;
      CPL            at 0 range 13 .. 13;
      COMP           at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype BFRCR_FRL_Field is HAL.UInt8;
   subtype BFRCR_FSALL_Field is HAL.UInt7;

   --  BFRCR
   type BFRCR_Register is record
      FRL            : BFRCR_FRL_Field := 16#7#;
      --  Frame length
      FSALL          : BFRCR_FSALL_Field := 16#0#;
      --  Frame synchronization active level length
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  unspecified
      FSDEF          : Boolean := False;
      --  Frame synchronization definition
      FSPOL          : Boolean := False;
      --  Frame synchronization polarity
      FSOFF          : Boolean := False;
      --  Frame synchronization offset
      Reserved_19_31 : HAL.UInt13 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BFRCR_Register use record
      FRL            at 0 range 0 .. 7;
      FSALL          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FSDEF          at 0 range 16 .. 16;
      FSPOL          at 0 range 17 .. 17;
      FSOFF          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype BSLOTR_FBOFF_Field is HAL.UInt5;
   subtype BSLOTR_SLOTSZ_Field is HAL.UInt2;
   subtype BSLOTR_NBSLOT_Field is HAL.UInt4;
   subtype BSLOTR_SLOTEN_Field is HAL.UInt16;

   --  BSlot register
   type BSLOTR_Register is record
      FBOFF          : BSLOTR_FBOFF_Field := 16#0#;
      --  First bit offset
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  unspecified
      SLOTSZ         : BSLOTR_SLOTSZ_Field := 16#0#;
      --  Slot size
      NBSLOT         : BSLOTR_NBSLOT_Field := 16#0#;
      --  Number of slots in an audio frame
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  unspecified
      SLOTEN         : BSLOTR_SLOTEN_Field := 16#0#;
      --  Slot enable
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSLOTR_Register use record
      FBOFF          at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SLOTSZ         at 0 range 6 .. 7;
      NBSLOT         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SLOTEN         at 0 range 16 .. 31;
   end record;

   --  BInterrupt mask register2
   type BIM_Register is record
      OVRUDRIE      : Boolean := False;
      --  Overrun/underrun interrupt enable
      MUTEDET       : Boolean := False;
      --  Mute detection interrupt enable
      WCKCFG        : Boolean := False;
      --  Wrong clock configuration interrupt enable
      FREQIE        : Boolean := False;
      --  FIFO request interrupt enable
      CNRDYIE       : Boolean := False;
      --  Codec not ready interrupt enable
      AFSDETIE      : Boolean := False;
      --  Anticipated frame synchronization detection interrupt enable
      LFSDETIE      : Boolean := False;
      --  Late frame synchronization detection interrupt enable
      Reserved_7_31 : HAL.UInt25 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BIM_Register use record
      OVRUDRIE      at 0 range 0 .. 0;
      MUTEDET       at 0 range 1 .. 1;
      WCKCFG        at 0 range 2 .. 2;
      FREQIE        at 0 range 3 .. 3;
      CNRDYIE       at 0 range 4 .. 4;
      AFSDETIE      at 0 range 5 .. 5;
      LFSDETIE      at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype BSR_FLVL_Field is HAL.UInt3;

   --  BStatus register
   type BSR_Register is record
      OVRUDR         : Boolean;
      --  Read-only. Overrun / underrun
      MUTEDET        : Boolean;
      --  Read-only. Mute detection
      WCKCFG         : Boolean;
      --  Read-only. Wrong clock configuration flag
      FREQ           : Boolean;
      --  Read-only. FIFO request
      CNRDY          : Boolean;
      --  Read-only. Codec not ready
      AFSDET         : Boolean;
      --  Read-only. Anticipated frame synchronization detection
      LFSDET         : Boolean;
      --  Read-only. Late frame synchronization detection
      Reserved_7_15  : HAL.UInt9;
      --  unspecified
      FLVL           : BSR_FLVL_Field;
      --  Read-only. FIFO level threshold
      Reserved_19_31 : HAL.UInt13;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSR_Register use record
      OVRUDR         at 0 range 0 .. 0;
      MUTEDET        at 0 range 1 .. 1;
      WCKCFG         at 0 range 2 .. 2;
      FREQ           at 0 range 3 .. 3;
      CNRDY          at 0 range 4 .. 4;
      AFSDET         at 0 range 5 .. 5;
      LFSDET         at 0 range 6 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      FLVL           at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  BClear flag register
   type BCLRFR_Register is record
      OVRUDR        : Boolean := False;
      --  Write-only. Clear overrun / underrun
      MUTEDET       : Boolean := False;
      --  Write-only. Mute detection flag
      WCKCFG        : Boolean := False;
      --  Write-only. Clear wrong clock configuration flag
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  unspecified
      CNRDY         : Boolean := False;
      --  Write-only. Clear codec not ready flag
      CAFSDET       : Boolean := False;
      --  Write-only. Clear anticipated frame synchronization detection flag
      LFSDET        : Boolean := False;
      --  Write-only. Clear late frame synchronization detection flag
      Reserved_7_31 : HAL.UInt25 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BCLRFR_Register use record
      OVRUDR        at 0 range 0 .. 0;
      MUTEDET       at 0 range 1 .. 1;
      WCKCFG        at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      CNRDY         at 0 range 4 .. 4;
      CAFSDET       at 0 range 5 .. 5;
      LFSDET        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial audio interface
   type SAI_Peripheral is record
      ACR1   : aliased ACR1_Register;
      --  AConfiguration register 1
      ACR2   : aliased ACR2_Register;
      --  AConfiguration register 2
      AFRCR  : aliased AFRCR_Register;
      --  AFRCR
      ASLOTR : aliased ASLOTR_Register;
      --  ASlot register
      AIM    : aliased AIM_Register;
      --  AInterrupt mask register2
      ASR    : aliased ASR_Register;
      --  AStatus register
      ACLRFR : aliased ACLRFR_Register;
      --  AClear flag register
      ADR    : aliased HAL.UInt32;
      --  AData register
      BCR1   : aliased BCR1_Register;
      --  BConfiguration register 1
      BCR2   : aliased BCR2_Register;
      --  BConfiguration register 2
      BFRCR  : aliased BFRCR_Register;
      --  BFRCR
      BSLOTR : aliased BSLOTR_Register;
      --  BSlot register
      BIM    : aliased BIM_Register;
      --  BInterrupt mask register2
      BSR    : aliased BSR_Register;
      --  BStatus register
      BCLRFR : aliased BCLRFR_Register;
      --  BClear flag register
      BDR    : aliased HAL.UInt32;
      --  BData register
   end record
     with Volatile;

   for SAI_Peripheral use record
      ACR1   at 16#4# range 0 .. 31;
      ACR2   at 16#8# range 0 .. 31;
      AFRCR  at 16#C# range 0 .. 31;
      ASLOTR at 16#10# range 0 .. 31;
      AIM    at 16#14# range 0 .. 31;
      ASR    at 16#18# range 0 .. 31;
      ACLRFR at 16#1C# range 0 .. 31;
      ADR    at 16#20# range 0 .. 31;
      BCR1   at 16#24# range 0 .. 31;
      BCR2   at 16#28# range 0 .. 31;
      BFRCR  at 16#2C# range 0 .. 31;
      BSLOTR at 16#30# range 0 .. 31;
      BIM    at 16#34# range 0 .. 31;
      BSR    at 16#38# range 0 .. 31;
      BCLRFR at 16#3C# range 0 .. 31;
      BDR    at 16#40# range 0 .. 31;
   end record;

   --  Serial audio interface
   SAI1_Periph : aliased SAI_Peripheral
     with Import, Address => SAI1_Base;

   --  Serial audio interface
   SAI2_Periph : aliased SAI_Peripheral
     with Import, Address => SAI2_Base;

end STM32_SVD.SAI;
