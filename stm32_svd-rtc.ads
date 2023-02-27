pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.RTC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype TR_SU_Field is HAL.UInt4;
   subtype TR_ST_Field is HAL.UInt3;
   subtype TR_MNU_Field is HAL.UInt4;
   subtype TR_MNT_Field is HAL.UInt3;
   subtype TR_HU_Field is HAL.UInt4;
   subtype TR_HT_Field is HAL.UInt2;

   --  time register
   type TR_Register is record
      SU             : TR_SU_Field := 16#0#;
      --  Second units in BCD format
      ST             : TR_ST_Field := 16#0#;
      --  Second tens in BCD format
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  unspecified
      MNU            : TR_MNU_Field := 16#0#;
      --  Minute units in BCD format
      MNT            : TR_MNT_Field := 16#0#;
      --  Minute tens in BCD format
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  unspecified
      HU             : TR_HU_Field := 16#0#;
      --  Hour units in BCD format
      HT             : TR_HT_Field := 16#0#;
      --  Hour tens in BCD format
      PM             : Boolean := False;
      --  AM/PM notation
      Reserved_23_31 : HAL.UInt9 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TR_Register use record
      SU             at 0 range 0 .. 3;
      ST             at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MNU            at 0 range 8 .. 11;
      MNT            at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HU             at 0 range 16 .. 19;
      HT             at 0 range 20 .. 21;
      PM             at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype DR_DU_Field is HAL.UInt4;
   subtype DR_DT_Field is HAL.UInt2;
   subtype DR_MU_Field is HAL.UInt4;
   subtype DR_WDU_Field is HAL.UInt3;
   subtype DR_YU_Field is HAL.UInt4;
   subtype DR_YT_Field is HAL.UInt4;

   --  date register
   type DR_Register is record
      DU             : DR_DU_Field := 16#1#;
      --  Date units in BCD format
      DT             : DR_DT_Field := 16#0#;
      --  Date tens in BCD format
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  unspecified
      MU             : DR_MU_Field := 16#1#;
      --  Month units in BCD format
      MT             : Boolean := False;
      --  Month tens in BCD format
      WDU            : DR_WDU_Field := 16#1#;
      --  Week day units
      YU             : DR_YU_Field := 16#0#;
      --  Year units in BCD format
      YT             : DR_YT_Field := 16#0#;
      --  Year tens in BCD format
      Reserved_24_31 : HAL.UInt8 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DR_Register use record
      DU             at 0 range 0 .. 3;
      DT             at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      MU             at 0 range 8 .. 11;
      MT             at 0 range 12 .. 12;
      WDU            at 0 range 13 .. 15;
      YU             at 0 range 16 .. 19;
      YT             at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CR_WUCKSEL_Field is HAL.UInt3;
   subtype CR_OSEL_Field is HAL.UInt2;

   --  control register
   type CR_Register is record
      WUCKSEL        : CR_WUCKSEL_Field := 16#0#;
      --  Wakeup clock selection
      TSEDGE         : Boolean := False;
      --  Time-stamp event active edge
      REFCKON        : Boolean := False;
      --  Reference clock detection enable (50 or 60 Hz)
      BYPSHAD        : Boolean := False;
      --  Bypass the shadow registers
      FMT            : Boolean := False;
      --  Hour format
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  unspecified
      ALRAE          : Boolean := False;
      --  Alarm A enable
      ALRBE          : Boolean := False;
      --  Alarm B enable
      WUTE           : Boolean := False;
      --  Wakeup timer enable
      TSE            : Boolean := False;
      --  Time stamp enable
      ALRAIE         : Boolean := False;
      --  Alarm A interrupt enable
      ALRBIE         : Boolean := False;
      --  Alarm B interrupt enable
      WUTIE          : Boolean := False;
      --  Wakeup timer interrupt enable
      TSIE           : Boolean := False;
      --  Time-stamp interrupt enable
      ADD1H          : Boolean := False;
      --  Add 1 hour (summer time change)
      SUB1H          : Boolean := False;
      --  Subtract 1 hour (winter time change)
      BKP            : Boolean := False;
      --  Backup
      COSEL          : Boolean := False;
      --  Calibration output selection
      POL            : Boolean := False;
      --  Output polarity
      OSEL           : CR_OSEL_Field := 16#0#;
      --  Output selection
      COE            : Boolean := False;
      --  Calibration output enable
      ITSE           : Boolean := False;
      --  timestamp on internal event enable
      Reserved_25_31 : HAL.UInt7 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      WUCKSEL        at 0 range 0 .. 2;
      TSEDGE         at 0 range 3 .. 3;
      REFCKON        at 0 range 4 .. 4;
      BYPSHAD        at 0 range 5 .. 5;
      FMT            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ALRAE          at 0 range 8 .. 8;
      ALRBE          at 0 range 9 .. 9;
      WUTE           at 0 range 10 .. 10;
      TSE            at 0 range 11 .. 11;
      ALRAIE         at 0 range 12 .. 12;
      ALRBIE         at 0 range 13 .. 13;
      WUTIE          at 0 range 14 .. 14;
      TSIE           at 0 range 15 .. 15;
      ADD1H          at 0 range 16 .. 16;
      SUB1H          at 0 range 17 .. 17;
      BKP            at 0 range 18 .. 18;
      COSEL          at 0 range 19 .. 19;
      POL            at 0 range 20 .. 20;
      OSEL           at 0 range 21 .. 22;
      COE            at 0 range 23 .. 23;
      ITSE           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  initialization and status register
   type ISR_Register is record
      ALRAWF         : Boolean := True;
      --  Read-only. Alarm A write flag
      ALRBWF         : Boolean := True;
      --  Read-only. Alarm B write flag
      WUTWF          : Boolean := True;
      --  Read-only. Wakeup timer write flag
      SHPF           : Boolean := False;
      --  Shift operation pending
      INITS          : Boolean := False;
      --  Read-only. Initialization status flag
      RSF            : Boolean := False;
      --  Registers synchronization flag
      INITF          : Boolean := False;
      --  Read-only. Initialization flag
      INIT           : Boolean := False;
      --  Initialization mode
      ALRAF          : Boolean := False;
      --  Alarm A flag
      ALRBF          : Boolean := False;
      --  Alarm B flag
      WUTF           : Boolean := False;
      --  Wakeup timer flag
      TSF            : Boolean := False;
      --  Time-stamp flag
      TSOVF          : Boolean := False;
      --  Time-stamp overflow flag
      TAMP1F         : Boolean := False;
      --  Tamper detection flag
      TAMP2F         : Boolean := False;
      --  RTC_TAMP2 detection flag
      TAMP3F         : Boolean := False;
      --  RTC_TAMP3 detection flag
      RECALPF        : Boolean := False;
      --  Read-only. Recalibration pending Flag
      ITSF           : Boolean := False;
      --  Read-only. Internal tTime-stamp Flag
      Reserved_18_31 : HAL.UInt14 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      ALRAWF         at 0 range 0 .. 0;
      ALRBWF         at 0 range 1 .. 1;
      WUTWF          at 0 range 2 .. 2;
      SHPF           at 0 range 3 .. 3;
      INITS          at 0 range 4 .. 4;
      RSF            at 0 range 5 .. 5;
      INITF          at 0 range 6 .. 6;
      INIT           at 0 range 7 .. 7;
      ALRAF          at 0 range 8 .. 8;
      ALRBF          at 0 range 9 .. 9;
      WUTF           at 0 range 10 .. 10;
      TSF            at 0 range 11 .. 11;
      TSOVF          at 0 range 12 .. 12;
      TAMP1F         at 0 range 13 .. 13;
      TAMP2F         at 0 range 14 .. 14;
      TAMP3F         at 0 range 15 .. 15;
      RECALPF        at 0 range 16 .. 16;
      ITSF           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype PRER_PREDIV_S_Field is HAL.UInt15;
   subtype PRER_PREDIV_A_Field is HAL.UInt7;

   --  prescaler register
   type PRER_Register is record
      PREDIV_S       : PRER_PREDIV_S_Field := 16#FF#;
      --  Synchronous prescaler factor
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  unspecified
      PREDIV_A       : PRER_PREDIV_A_Field := 16#7F#;
      --  Asynchronous prescaler factor
      Reserved_23_31 : HAL.UInt9 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRER_Register use record
      PREDIV_S       at 0 range 0 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PREDIV_A       at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype WUTR_WUT_Field is HAL.UInt16;

   --  wakeup timer register
   type WUTR_Register is record
      WUT            : WUTR_WUT_Field := 16#FFFF#;
      --  Wakeup auto-reload value bits
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WUTR_Register use record
      WUT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ALRMAR_SU_Field is HAL.UInt4;
   subtype ALRMAR_ST_Field is HAL.UInt3;
   subtype ALRMAR_MNU_Field is HAL.UInt4;
   subtype ALRMAR_MNT_Field is HAL.UInt3;
   subtype ALRMAR_HU_Field is HAL.UInt4;
   subtype ALRMAR_HT_Field is HAL.UInt2;
   subtype ALRMAR_DU_Field is HAL.UInt4;
   subtype ALRMAR_DT_Field is HAL.UInt2;

   --  alarm A register
   type ALRMAR_Register is record
      SU    : ALRMAR_SU_Field := 16#0#;
      --  Second units in BCD format
      ST    : ALRMAR_ST_Field := 16#0#;
      --  Second tens in BCD format
      MSK1  : Boolean := False;
      --  Alarm A seconds mask
      MNU   : ALRMAR_MNU_Field := 16#0#;
      --  Minute units in BCD format
      MNT   : ALRMAR_MNT_Field := 16#0#;
      --  Minute tens in BCD format
      MSK2  : Boolean := False;
      --  Alarm A minutes mask
      HU    : ALRMAR_HU_Field := 16#0#;
      --  Hour units in BCD format
      HT    : ALRMAR_HT_Field := 16#0#;
      --  Hour tens in BCD format
      PM    : Boolean := False;
      --  AM/PM notation
      MSK3  : Boolean := False;
      --  Alarm A hours mask
      DU    : ALRMAR_DU_Field := 16#0#;
      --  Date units or day in BCD format
      DT    : ALRMAR_DT_Field := 16#0#;
      --  Date tens in BCD format
      WDSEL : Boolean := False;
      --  Week day selection
      MSK4  : Boolean := False;
      --  Alarm A date mask
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALRMAR_Register use record
      SU    at 0 range 0 .. 3;
      ST    at 0 range 4 .. 6;
      MSK1  at 0 range 7 .. 7;
      MNU   at 0 range 8 .. 11;
      MNT   at 0 range 12 .. 14;
      MSK2  at 0 range 15 .. 15;
      HU    at 0 range 16 .. 19;
      HT    at 0 range 20 .. 21;
      PM    at 0 range 22 .. 22;
      MSK3  at 0 range 23 .. 23;
      DU    at 0 range 24 .. 27;
      DT    at 0 range 28 .. 29;
      WDSEL at 0 range 30 .. 30;
      MSK4  at 0 range 31 .. 31;
   end record;

   subtype ALRMBR_SU_Field is HAL.UInt4;
   subtype ALRMBR_ST_Field is HAL.UInt3;
   subtype ALRMBR_MNU_Field is HAL.UInt4;
   subtype ALRMBR_MNT_Field is HAL.UInt3;
   subtype ALRMBR_HU_Field is HAL.UInt4;
   subtype ALRMBR_HT_Field is HAL.UInt2;
   subtype ALRMBR_DU_Field is HAL.UInt4;
   subtype ALRMBR_DT_Field is HAL.UInt2;

   --  alarm B register
   type ALRMBR_Register is record
      SU    : ALRMBR_SU_Field := 16#0#;
      --  Second units in BCD format
      ST    : ALRMBR_ST_Field := 16#0#;
      --  Second tens in BCD format
      MSK1  : Boolean := False;
      --  Alarm B seconds mask
      MNU   : ALRMBR_MNU_Field := 16#0#;
      --  Minute units in BCD format
      MNT   : ALRMBR_MNT_Field := 16#0#;
      --  Minute tens in BCD format
      MSK2  : Boolean := False;
      --  Alarm B minutes mask
      HU    : ALRMBR_HU_Field := 16#0#;
      --  Hour units in BCD format
      HT    : ALRMBR_HT_Field := 16#0#;
      --  Hour tens in BCD format
      PM    : Boolean := False;
      --  AM/PM notation
      MSK3  : Boolean := False;
      --  Alarm B hours mask
      DU    : ALRMBR_DU_Field := 16#0#;
      --  Date units or day in BCD format
      DT    : ALRMBR_DT_Field := 16#0#;
      --  Date tens in BCD format
      WDSEL : Boolean := False;
      --  Week day selection
      MSK4  : Boolean := False;
      --  Alarm B date mask
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALRMBR_Register use record
      SU    at 0 range 0 .. 3;
      ST    at 0 range 4 .. 6;
      MSK1  at 0 range 7 .. 7;
      MNU   at 0 range 8 .. 11;
      MNT   at 0 range 12 .. 14;
      MSK2  at 0 range 15 .. 15;
      HU    at 0 range 16 .. 19;
      HT    at 0 range 20 .. 21;
      PM    at 0 range 22 .. 22;
      MSK3  at 0 range 23 .. 23;
      DU    at 0 range 24 .. 27;
      DT    at 0 range 28 .. 29;
      WDSEL at 0 range 30 .. 30;
      MSK4  at 0 range 31 .. 31;
   end record;

   subtype WPR_KEY_Field is HAL.UInt8;

   --  write protection register
   type WPR_Register is record
      KEY           : WPR_KEY_Field := 16#0#;
      --  Write-only. Write protection key
      Reserved_8_31 : HAL.UInt24 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WPR_Register use record
      KEY           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SSR_SS_Field is HAL.UInt16;

   --  sub second register
   type SSR_Register is record
      SS             : SSR_SS_Field;
      --  Read-only. Sub second value
      Reserved_16_31 : HAL.UInt16;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSR_Register use record
      SS             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SHIFTR_SUBFS_Field is HAL.UInt15;

   --  shift control register
   type SHIFTR_Register is record
      SUBFS          : SHIFTR_SUBFS_Field := 16#0#;
      --  Write-only. Subtract a fraction of a second
      Reserved_15_30 : HAL.UInt16 := 16#0#;
      --  unspecified
      ADD1S          : Boolean := False;
      --  Write-only. Add one second
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHIFTR_Register use record
      SUBFS          at 0 range 0 .. 14;
      Reserved_15_30 at 0 range 15 .. 30;
      ADD1S          at 0 range 31 .. 31;
   end record;

   subtype TSTR_SU_Field is HAL.UInt4;
   subtype TSTR_ST_Field is HAL.UInt3;
   subtype TSTR_MNU_Field is HAL.UInt4;
   subtype TSTR_MNT_Field is HAL.UInt3;
   subtype TSTR_HU_Field is HAL.UInt4;
   subtype TSTR_HT_Field is HAL.UInt2;

   --  time stamp time register
   type TSTR_Register is record
      SU             : TSTR_SU_Field;
      --  Read-only. Second units in BCD format
      ST             : TSTR_ST_Field;
      --  Read-only. Second tens in BCD format
      Reserved_7_7   : HAL.Bit;
      --  unspecified
      MNU            : TSTR_MNU_Field;
      --  Read-only. Minute units in BCD format
      MNT            : TSTR_MNT_Field;
      --  Read-only. Minute tens in BCD format
      Reserved_15_15 : HAL.Bit;
      --  unspecified
      HU             : TSTR_HU_Field;
      --  Read-only. Hour units in BCD format
      HT             : TSTR_HT_Field;
      --  Read-only. Hour tens in BCD format
      PM             : Boolean;
      --  Read-only. AM/PM notation
      Reserved_23_31 : HAL.UInt9;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSTR_Register use record
      SU             at 0 range 0 .. 3;
      ST             at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MNU            at 0 range 8 .. 11;
      MNT            at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HU             at 0 range 16 .. 19;
      HT             at 0 range 20 .. 21;
      PM             at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype TSDR_DU_Field is HAL.UInt4;
   subtype TSDR_DT_Field is HAL.UInt2;
   subtype TSDR_MU_Field is HAL.UInt4;
   subtype TSDR_WDU_Field is HAL.UInt3;

   --  time stamp date register
   type TSDR_Register is record
      DU             : TSDR_DU_Field;
      --  Read-only. Date units in BCD format
      DT             : TSDR_DT_Field;
      --  Read-only. Date tens in BCD format
      Reserved_6_7   : HAL.UInt2;
      --  unspecified
      MU             : TSDR_MU_Field;
      --  Read-only. Month units in BCD format
      MT             : Boolean;
      --  Read-only. Month tens in BCD format
      WDU            : TSDR_WDU_Field;
      --  Read-only. Week day units
      Reserved_16_31 : HAL.UInt16;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSDR_Register use record
      DU             at 0 range 0 .. 3;
      DT             at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      MU             at 0 range 8 .. 11;
      MT             at 0 range 12 .. 12;
      WDU            at 0 range 13 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TSSSR_SS_Field is HAL.UInt16;

   --  timestamp sub second register
   type TSSSR_Register is record
      SS             : TSSSR_SS_Field;
      --  Read-only. Sub second value
      Reserved_16_31 : HAL.UInt16;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSSSR_Register use record
      SS             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CALR_CALM_Field is HAL.UInt9;

   --  calibration register
   type CALR_Register is record
      CALM           : CALR_CALM_Field := 16#0#;
      --  Calibration minus
      Reserved_9_12  : HAL.UInt4 := 16#0#;
      --  unspecified
      CALW16         : Boolean := False;
      --  Use a 16-second calibration cycle period
      CALW8          : Boolean := False;
      --  Use an 8-second calibration cycle period
      CALP           : Boolean := False;
      --  Increase frequency of RTC by 488.5 ppm
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CALR_Register use record
      CALM           at 0 range 0 .. 8;
      Reserved_9_12  at 0 range 9 .. 12;
      CALW16         at 0 range 13 .. 13;
      CALW8          at 0 range 14 .. 14;
      CALP           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TAMPCR_TAMPFREQ_Field is HAL.UInt3;
   subtype TAMPCR_TAMPFLT_Field is HAL.UInt2;
   subtype TAMPCR_TAMPPRCH_Field is HAL.UInt2;

   --  tamper configuration register
   type TAMPCR_Register is record
      TAMP1E         : Boolean := False;
      --  Tamper 1 detection enable
      TAMP1TRG       : Boolean := False;
      --  Active level for tamper 1
      TAMPIE         : Boolean := False;
      --  Tamper interrupt enable
      TAMP2E         : Boolean := False;
      --  Tamper 2 detection enable
      TAMP2TRG       : Boolean := False;
      --  Active level for tamper 2
      TAMP3E         : Boolean := False;
      --  Tamper 3 detection enable
      TAMP3TRG       : Boolean := False;
      --  Active level for tamper 3
      TAMPTS         : Boolean := False;
      --  Activate timestamp on tamper detection event
      TAMPFREQ       : TAMPCR_TAMPFREQ_Field := 16#0#;
      --  Tamper sampling frequency
      TAMPFLT        : TAMPCR_TAMPFLT_Field := 16#0#;
      --  Tamper filter count
      TAMPPRCH       : TAMPCR_TAMPPRCH_Field := 16#0#;
      --  Tamper precharge duration
      TAMPPUDIS      : Boolean := False;
      --  TAMPER pull-up disable
      TAMP1IE        : Boolean := False;
      --  Tamper 1 interrupt enable
      TAMP1NOERASE   : Boolean := False;
      --  Tamper 1 no erase
      TAMP1MF        : Boolean := False;
      --  Tamper 1 mask flag
      TAMP2IE        : Boolean := False;
      --  Tamper 2 interrupt enable
      TAMP2NOERASE   : Boolean := False;
      --  Tamper 2 no erase
      TAMP2MF        : Boolean := False;
      --  Tamper 2 mask flag
      TAMP3IE        : Boolean := False;
      --  Tamper 3 interrupt enable
      TAMP3NOERASE   : Boolean := False;
      --  Tamper 3 no erase
      TAMP3MF        : Boolean := False;
      --  Tamper 3 mask flag
      Reserved_25_31 : HAL.UInt7 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMPCR_Register use record
      TAMP1E         at 0 range 0 .. 0;
      TAMP1TRG       at 0 range 1 .. 1;
      TAMPIE         at 0 range 2 .. 2;
      TAMP2E         at 0 range 3 .. 3;
      TAMP2TRG       at 0 range 4 .. 4;
      TAMP3E         at 0 range 5 .. 5;
      TAMP3TRG       at 0 range 6 .. 6;
      TAMPTS         at 0 range 7 .. 7;
      TAMPFREQ       at 0 range 8 .. 10;
      TAMPFLT        at 0 range 11 .. 12;
      TAMPPRCH       at 0 range 13 .. 14;
      TAMPPUDIS      at 0 range 15 .. 15;
      TAMP1IE        at 0 range 16 .. 16;
      TAMP1NOERASE   at 0 range 17 .. 17;
      TAMP1MF        at 0 range 18 .. 18;
      TAMP2IE        at 0 range 19 .. 19;
      TAMP2NOERASE   at 0 range 20 .. 20;
      TAMP2MF        at 0 range 21 .. 21;
      TAMP3IE        at 0 range 22 .. 22;
      TAMP3NOERASE   at 0 range 23 .. 23;
      TAMP3MF        at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype ALRMASSR_SS_Field is HAL.UInt15;
   subtype ALRMASSR_MASKSS_Field is HAL.UInt4;

   --  alarm A sub second register
   type ALRMASSR_Register is record
      SS             : ALRMASSR_SS_Field := 16#0#;
      --  Sub seconds value
      Reserved_15_23 : HAL.UInt9 := 16#0#;
      --  unspecified
      MASKSS         : ALRMASSR_MASKSS_Field := 16#0#;
      --  Mask the most-significant bits starting at this bit
      Reserved_28_31 : HAL.UInt4 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALRMASSR_Register use record
      SS             at 0 range 0 .. 14;
      Reserved_15_23 at 0 range 15 .. 23;
      MASKSS         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype ALRMBSSR_SS_Field is HAL.UInt15;
   subtype ALRMBSSR_MASKSS_Field is HAL.UInt4;

   --  alarm B sub second register
   type ALRMBSSR_Register is record
      SS             : ALRMBSSR_SS_Field := 16#0#;
      --  Sub seconds value
      Reserved_15_23 : HAL.UInt9 := 16#0#;
      --  unspecified
      MASKSS         : ALRMBSSR_MASKSS_Field := 16#0#;
      --  Mask the most-significant bits starting at this bit
      Reserved_28_31 : HAL.UInt4 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALRMBSSR_Register use record
      SS             at 0 range 0 .. 14;
      Reserved_15_23 at 0 range 15 .. 23;
      MASKSS         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  option register
   type OR_Register is record
      RTC_ALARM_TYPE : Boolean := False;
      --  RTC_ALARM on PC13 output type
      RTC_OUT_RMP    : Boolean := False;
      --  RTC_OUT remap
      Reserved_2_31  : HAL.UInt30 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OR_Register use record
      RTC_ALARM_TYPE at 0 range 0 .. 0;
      RTC_OUT_RMP    at 0 range 1 .. 1;
      Reserved_2_31  at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Real-time clock
   type RTC_Peripheral is record
      TR       : aliased TR_Register;
      --  time register
      DR       : aliased DR_Register;
      --  date register
      CR       : aliased CR_Register;
      --  control register
      ISR      : aliased ISR_Register;
      --  initialization and status register
      PRER     : aliased PRER_Register;
      --  prescaler register
      WUTR     : aliased WUTR_Register;
      --  wakeup timer register
      ALRMAR   : aliased ALRMAR_Register;
      --  alarm A register
      ALRMBR   : aliased ALRMBR_Register;
      --  alarm B register
      WPR      : aliased WPR_Register;
      --  write protection register
      SSR      : aliased SSR_Register;
      --  sub second register
      SHIFTR   : aliased SHIFTR_Register;
      --  shift control register
      TSTR     : aliased TSTR_Register;
      --  time stamp time register
      TSDR     : aliased TSDR_Register;
      --  time stamp date register
      TSSSR    : aliased TSSSR_Register;
      --  timestamp sub second register
      CALR     : aliased CALR_Register;
      --  calibration register
      TAMPCR   : aliased TAMPCR_Register;
      --  tamper configuration register
      ALRMASSR : aliased ALRMASSR_Register;
      --  alarm A sub second register
      ALRMBSSR : aliased ALRMBSSR_Register;
      --  alarm B sub second register
      OR_k     : aliased OR_Register;
      --  option register
      BKP0R    : aliased HAL.UInt32;
      --  backup register
      BKP1R    : aliased HAL.UInt32;
      --  backup register
      BKP2R    : aliased HAL.UInt32;
      --  backup register
      BKP3R    : aliased HAL.UInt32;
      --  backup register
      BKP4R    : aliased HAL.UInt32;
      --  backup register
      BKP5R    : aliased HAL.UInt32;
      --  backup register
      BKP6R    : aliased HAL.UInt32;
      --  backup register
      BKP7R    : aliased HAL.UInt32;
      --  backup register
      BKP8R    : aliased HAL.UInt32;
      --  backup register
      BKP9R    : aliased HAL.UInt32;
      --  backup register
      BKP10R   : aliased HAL.UInt32;
      --  backup register
      BKP11R   : aliased HAL.UInt32;
      --  backup register
      BKP12R   : aliased HAL.UInt32;
      --  backup register
      BKP13R   : aliased HAL.UInt32;
      --  backup register
      BKP14R   : aliased HAL.UInt32;
      --  backup register
      BKP15R   : aliased HAL.UInt32;
      --  backup register
      BKP16R   : aliased HAL.UInt32;
      --  backup register
      BKP17R   : aliased HAL.UInt32;
      --  backup register
      BKP18R   : aliased HAL.UInt32;
      --  backup register
      BKP19R   : aliased HAL.UInt32;
      --  backup register
      BKP20R   : aliased HAL.UInt32;
      --  backup register
      BKP21R   : aliased HAL.UInt32;
      --  backup register
      BKP22R   : aliased HAL.UInt32;
      --  backup register
      BKP23R   : aliased HAL.UInt32;
      --  backup register
      BKP24R   : aliased HAL.UInt32;
      --  backup register
      BKP25R   : aliased HAL.UInt32;
      --  backup register
      BKP26R   : aliased HAL.UInt32;
      --  backup register
      BKP27R   : aliased HAL.UInt32;
      --  backup register
      BKP28R   : aliased HAL.UInt32;
      --  backup register
      BKP29R   : aliased HAL.UInt32;
      --  backup register
      BKP30R   : aliased HAL.UInt32;
      --  backup register
      BKP31R   : aliased HAL.UInt32;
      --  backup register
   end record
     with Volatile;

   for RTC_Peripheral use record
      TR       at 16#0# range 0 .. 31;
      DR       at 16#4# range 0 .. 31;
      CR       at 16#8# range 0 .. 31;
      ISR      at 16#C# range 0 .. 31;
      PRER     at 16#10# range 0 .. 31;
      WUTR     at 16#14# range 0 .. 31;
      ALRMAR   at 16#1C# range 0 .. 31;
      ALRMBR   at 16#20# range 0 .. 31;
      WPR      at 16#24# range 0 .. 31;
      SSR      at 16#28# range 0 .. 31;
      SHIFTR   at 16#2C# range 0 .. 31;
      TSTR     at 16#30# range 0 .. 31;
      TSDR     at 16#34# range 0 .. 31;
      TSSSR    at 16#38# range 0 .. 31;
      CALR     at 16#3C# range 0 .. 31;
      TAMPCR   at 16#40# range 0 .. 31;
      ALRMASSR at 16#44# range 0 .. 31;
      ALRMBSSR at 16#48# range 0 .. 31;
      OR_k     at 16#4C# range 0 .. 31;
      BKP0R    at 16#50# range 0 .. 31;
      BKP1R    at 16#54# range 0 .. 31;
      BKP2R    at 16#58# range 0 .. 31;
      BKP3R    at 16#5C# range 0 .. 31;
      BKP4R    at 16#60# range 0 .. 31;
      BKP5R    at 16#64# range 0 .. 31;
      BKP6R    at 16#68# range 0 .. 31;
      BKP7R    at 16#6C# range 0 .. 31;
      BKP8R    at 16#70# range 0 .. 31;
      BKP9R    at 16#74# range 0 .. 31;
      BKP10R   at 16#78# range 0 .. 31;
      BKP11R   at 16#7C# range 0 .. 31;
      BKP12R   at 16#80# range 0 .. 31;
      BKP13R   at 16#84# range 0 .. 31;
      BKP14R   at 16#88# range 0 .. 31;
      BKP15R   at 16#8C# range 0 .. 31;
      BKP16R   at 16#90# range 0 .. 31;
      BKP17R   at 16#94# range 0 .. 31;
      BKP18R   at 16#98# range 0 .. 31;
      BKP19R   at 16#9C# range 0 .. 31;
      BKP20R   at 16#A0# range 0 .. 31;
      BKP21R   at 16#A4# range 0 .. 31;
      BKP22R   at 16#A8# range 0 .. 31;
      BKP23R   at 16#AC# range 0 .. 31;
      BKP24R   at 16#B0# range 0 .. 31;
      BKP25R   at 16#B4# range 0 .. 31;
      BKP26R   at 16#B8# range 0 .. 31;
      BKP27R   at 16#BC# range 0 .. 31;
      BKP28R   at 16#C0# range 0 .. 31;
      BKP29R   at 16#C4# range 0 .. 31;
      BKP30R   at 16#C8# range 0 .. 31;
      BKP31R   at 16#CC# range 0 .. 31;
   end record;

   --  Real-time clock
   RTC_Periph : aliased RTC_Peripheral
     with Import, Address => RTC_Base;

end STM32_SVD.RTC;
