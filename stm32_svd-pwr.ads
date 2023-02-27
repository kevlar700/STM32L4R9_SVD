pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.PWR is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR1_LPMS_Field is HAL.UInt3;
   subtype CR1_VOS_Field is HAL.UInt2;

   --  Power control register 1
   type CR1_Register is record
      LPMS           : CR1_LPMS_Field := 16#0#;
      --  Low-power mode selection
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  unspecified
      RRSTP          : Boolean := False;
      --  SRAM3 retention in Stop 2 mode
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  unspecified
      DBP            : Boolean := False;
      --  Disable backup domain write protection
      VOS            : CR1_VOS_Field := 16#1#;
      --  Voltage scaling range selection
      Reserved_11_13 : HAL.UInt3 := 16#0#;
      --  unspecified
      LPR            : Boolean := False;
      --  Low-power run
      Reserved_15_31 : HAL.UInt17 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      LPMS           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      RRSTP          at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DBP            at 0 range 8 .. 8;
      VOS            at 0 range 9 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      LPR            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype CR2_PLS_Field is HAL.UInt3;

   --  CR2_PVME array
   type CR2_PVME_Field_Array is array (1 .. 4) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for CR2_PVME
   type CR2_PVME_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt4;
            --  PVME as a value
         when True =>
            Arr : CR2_PVME_Field_Array;
            --  PVME as an array
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for CR2_PVME_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Power control register 2
   type CR2_Register is record
      PVDE           : Boolean := False;
      --  Power voltage detector enable
      PLS            : CR2_PLS_Field := 16#0#;
      --  Power voltage detector level selection
      PVME           : CR2_PVME_Field := (As_Array => False, Val => 16#0#);
      --  Peripheral voltage monitoring 1 enable: VDDUSB vs. 1.2V
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  unspecified
      IOSV           : Boolean := False;
      --  VDDIO2 Independent I/Os supply valid
      USV            : Boolean := False;
      --  VDDUSB USB supply valid
      Reserved_11_31 : HAL.UInt21 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      PVDE           at 0 range 0 .. 0;
      PLS            at 0 range 1 .. 3;
      PVME           at 0 range 4 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      IOSV           at 0 range 9 .. 9;
      USV            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  CR3_EWUP array
   type CR3_EWUP_Field_Array is array (1 .. 5) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for CR3_EWUP
   type CR3_EWUP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt5;
            --  EWUP as a value
         when True =>
            Arr : CR3_EWUP_Field_Array;
            --  EWUP as an array
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for CR3_EWUP_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   subtype CR3_RRS_Field is HAL.UInt2;

   --  Power control register 3
   type CR3_Register is record
      EWUP           : CR3_EWUP_Field := (As_Array => False, Val => 16#0#);
      --  Enable Wakeup pin WKUP1
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  unspecified
      RRS            : CR3_RRS_Field := 16#0#;
      --  SRAM2 retention in Standby mode
      APC            : Boolean := False;
      --  Apply pull-up and pull-down configuration
      ENULP          : Boolean := False;
      --  Enable Ultra Low Power sampling
      DSIPDEN        : Boolean := False;
      --  Enable Pull-down activation on DSI pins
      Reserved_13_14 : HAL.UInt2 := 16#0#;
      --  unspecified
      EIWUL          : Boolean := True;
      --  Enable internal wakeup line
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR3_Register use record
      EWUP           at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      RRS            at 0 range 8 .. 9;
      APC            at 0 range 10 .. 10;
      ENULP          at 0 range 11 .. 11;
      DSIPDEN        at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      EIWUL          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  CR4_WP array
   type CR4_WP_Field_Array is array (1 .. 5) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for CR4_WP
   type CR4_WP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt5;
            --  WP as a value
         when True =>
            Arr : CR4_WP_Field_Array;
            --  WP as an array
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for CR4_WP_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  Power control register 4
   type CR4_Register is record
      WP             : CR4_WP_Field := (As_Array => False, Val => 16#0#);
      --  Wakeup pin WKUP1 polarity
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  unspecified
      VBE            : Boolean := False;
      --  VBAT battery charging enable
      VBRS           : Boolean := False;
      --  VBAT battery charging resistor selection
      Reserved_10_12 : HAL.UInt3 := 16#0#;
      --  unspecified
      EXT_SMPS_ON    : Boolean := False;
      --  External SMPS on
      Reserved_14_31 : HAL.UInt18 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR4_Register use record
      WP             at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      VBE            at 0 range 8 .. 8;
      VBRS           at 0 range 9 .. 9;
      Reserved_10_12 at 0 range 10 .. 12;
      EXT_SMPS_ON    at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  SR1_WUF array
   type SR1_WUF_Field_Array is array (1 .. 5) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for SR1_WUF
   type SR1_WUF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt5;
            --  WUF as a value
         when True =>
            Arr : SR1_WUF_Field_Array;
            --  WUF as an array
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for SR1_WUF_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  Power status register 1
   type SR1_Register is record
      WUF            : SR1_WUF_Field;
      --  Read-only. Wakeup flag 1
      Reserved_5_7   : HAL.UInt3;
      --  unspecified
      SBF            : Boolean;
      --  Read-only. Standby flag
      Reserved_9_12  : HAL.UInt4;
      --  unspecified
      EXT_SMPS_RDY   : Boolean;
      --  Read-only. External SMPS ready
      Reserved_14_14 : HAL.Bit;
      --  unspecified
      WUFI           : Boolean;
      --  Read-only. Wakeup flag internal
      Reserved_16_31 : HAL.UInt16;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR1_Register use record
      WUF            at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      SBF            at 0 range 8 .. 8;
      Reserved_9_12  at 0 range 9 .. 12;
      EXT_SMPS_RDY   at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      WUFI           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  SR2_PVMO array
   type SR2_PVMO_Field_Array is array (1 .. 4) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for SR2_PVMO
   type SR2_PVMO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt4;
            --  PVMO as a value
         when True =>
            Arr : SR2_PVMO_Field_Array;
            --  PVMO as an array
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SR2_PVMO_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Power status register 2
   type SR2_Register is record
      Reserved_0_7   : HAL.UInt8;
      --  unspecified
      REGLPS         : Boolean;
      --  Read-only. Low-power regulator started
      REGLPF         : Boolean;
      --  Read-only. Low-power regulator flag
      VOSF           : Boolean;
      --  Read-only. Voltage scaling flag
      PVDO           : Boolean;
      --  Read-only. Power voltage detector output
      PVMO           : SR2_PVMO_Field;
      --  Read-only. Peripheral voltage monitoring output: VDDUSB vs. 1.2 V
      Reserved_16_31 : HAL.UInt16;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR2_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      REGLPS         at 0 range 8 .. 8;
      REGLPF         at 0 range 9 .. 9;
      VOSF           at 0 range 10 .. 10;
      PVDO           at 0 range 11 .. 11;
      PVMO           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  SCR_CWUF array
   type SCR_CWUF_Field_Array is array (1 .. 5) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for SCR_CWUF
   type SCR_CWUF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt5;
            --  CWUF as a value
         when True =>
            Arr : SCR_CWUF_Field_Array;
            --  CWUF as an array
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for SCR_CWUF_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  Power status clear register
   type SCR_Register is record
      CWUF          : SCR_CWUF_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Clear wakeup flag 1
      Reserved_5_7  : HAL.UInt3 := 16#0#;
      --  unspecified
      CSBF          : Boolean := False;
      --  Write-only. Clear standby flag
      Reserved_9_31 : HAL.UInt23 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCR_Register use record
      CWUF          at 0 range 0 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      CSBF          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  PUCRA_PU array
   type PUCRA_PU_Field_Array is array (0 .. 13) of Boolean
     with Component_Size => 1, Size => 14;

   --  Type definition for PUCRA_PU
   type PUCRA_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt14;
            --  PU as a value
         when True =>
            Arr : PUCRA_PU_Field_Array;
            --  PU as an array
      end case;
   end record
     with Unchecked_Union, Size => 14;

   for PUCRA_PU_Field use record
      Val at 0 range 0 .. 13;
      Arr at 0 range 0 .. 13;
   end record;

   --  Power Port A pull-up control register
   type PUCRA_Register is record
      PU             : PUCRA_PU_Field := (As_Array => False, Val => 16#0#);
      --  Port A pull-up bit y (y=0..13)
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  unspecified
      PU15           : Boolean := False;
      --  Port A pull-up bit 15
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRA_Register use record
      PU             at 0 range 0 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      PU15           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDCRA_PD array
   type PDCRA_PD_Field_Array is array (0 .. 12) of Boolean
     with Component_Size => 1, Size => 13;

   --  Type definition for PDCRA_PD
   type PDCRA_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt13;
            --  PD as a value
         when True =>
            Arr : PDCRA_PD_Field_Array;
            --  PD as an array
      end case;
   end record
     with Unchecked_Union, Size => 13;

   for PDCRA_PD_Field use record
      Val at 0 range 0 .. 12;
      Arr at 0 range 0 .. 12;
   end record;

   --  Power Port A pull-down control register
   type PDCRA_Register is record
      PD             : PDCRA_PD_Field := (As_Array => False, Val => 16#0#);
      --  Port A pull-down bit y (y=0..12)
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  unspecified
      PD14           : Boolean := False;
      --  Port A pull-down bit 14
      Reserved_15_31 : HAL.UInt17 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRA_Register use record
      PD             at 0 range 0 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      PD14           at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  PUCRB_PU array
   type PUCRB_PU_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PUCRB_PU
   type PUCRB_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  PU as a value
         when True =>
            Arr : PUCRB_PU_Field_Array;
            --  PU as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PUCRB_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port B pull-up control register
   type PUCRB_Register is record
      PU             : PUCRB_PU_Field := (As_Array => False, Val => 16#0#);
      --  Port B pull-up bit y (y=0..15)
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRB_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDCRB_PD array
   type PDCRB_PD_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PDCRB_PD
   type PDCRB_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt4;
            --  PD as a value
         when True =>
            Arr : PDCRB_PD_Field_Array;
            --  PD as an array
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PDCRB_PD_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PDCRB_PD array
   type PDCRB_PD_Field_Array_1 is array (5 .. 15) of Boolean
     with Component_Size => 1, Size => 11;

   --  Type definition for PDCRB_PD
   type PDCRB_PD_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt11;
            --  PD as a value
         when True =>
            Arr : PDCRB_PD_Field_Array_1;
            --  PD as an array
      end case;
   end record
     with Unchecked_Union, Size => 11;

   for PDCRB_PD_Field_1 use record
      Val at 0 range 0 .. 10;
      Arr at 0 range 0 .. 10;
   end record;

   --  Power Port B pull-down control register
   type PDCRB_Register is record
      PD             : PDCRB_PD_Field := (As_Array => False, Val => 16#0#);
      --  Port B pull-down bit y (y=0..15)
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  unspecified
      PD_1           : PDCRB_PD_Field_1 := (As_Array => False, Val => 16#0#);
      --  Port B pull-down bit y (y=0..15)
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRB_Register use record
      PD             at 0 range 0 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      PD_1           at 0 range 5 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PUCRC_PU array
   type PUCRC_PU_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PUCRC_PU
   type PUCRC_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  PU as a value
         when True =>
            Arr : PUCRC_PU_Field_Array;
            --  PU as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PUCRC_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port C pull-up control register
   type PUCRC_Register is record
      PU             : PUCRC_PU_Field := (As_Array => False, Val => 16#0#);
      --  Port C pull-up bit y (y=0..15)
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRC_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDCRC_PD array
   type PDCRC_PD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PDCRC_PD
   type PDCRC_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  PD as a value
         when True =>
            Arr : PDCRC_PD_Field_Array;
            --  PD as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PDCRC_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port C pull-down control register
   type PDCRC_Register is record
      PD             : PDCRC_PD_Field := (As_Array => False, Val => 16#0#);
      --  Port C pull-down bit y (y=0..15)
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRC_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PUCRD_PU array
   type PUCRD_PU_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PUCRD_PU
   type PUCRD_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  PU as a value
         when True =>
            Arr : PUCRD_PU_Field_Array;
            --  PU as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PUCRD_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port D pull-up control register
   type PUCRD_Register is record
      PU             : PUCRD_PU_Field := (As_Array => False, Val => 16#0#);
      --  Port D pull-up bit y (y=0..15)
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRD_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDCRD_PD array
   type PDCRD_PD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PDCRD_PD
   type PDCRD_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  PD as a value
         when True =>
            Arr : PDCRD_PD_Field_Array;
            --  PD as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PDCRD_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port D pull-down control register
   type PDCRD_Register is record
      PD             : PDCRD_PD_Field := (As_Array => False, Val => 16#0#);
      --  Port D pull-down bit y (y=0..15)
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRD_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PUCRE_PU array
   type PUCRE_PU_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PUCRE_PU
   type PUCRE_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  PU as a value
         when True =>
            Arr : PUCRE_PU_Field_Array;
            --  PU as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PUCRE_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port E pull-up control register
   type PUCRE_Register is record
      PU             : PUCRE_PU_Field := (As_Array => False, Val => 16#0#);
      --  Port E pull-up bit y (y=0..15)
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRE_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDCRE_PD array
   type PDCRE_PD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PDCRE_PD
   type PDCRE_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  PD as a value
         when True =>
            Arr : PDCRE_PD_Field_Array;
            --  PD as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PDCRE_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port E pull-down control register
   type PDCRE_Register is record
      PD             : PDCRE_PD_Field := (As_Array => False, Val => 16#0#);
      --  Port E pull-down bit y (y=0..15)
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRE_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PUCRF_PU array
   type PUCRF_PU_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PUCRF_PU
   type PUCRF_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  PU as a value
         when True =>
            Arr : PUCRF_PU_Field_Array;
            --  PU as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PUCRF_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port F pull-up control register
   type PUCRF_Register is record
      PU             : PUCRF_PU_Field := (As_Array => False, Val => 16#0#);
      --  Port F pull-up bit y (y=0..15)
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRF_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDCRF_PD array
   type PDCRF_PD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PDCRF_PD
   type PDCRF_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  PD as a value
         when True =>
            Arr : PDCRF_PD_Field_Array;
            --  PD as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PDCRF_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port F pull-down control register
   type PDCRF_Register is record
      PD             : PDCRF_PD_Field := (As_Array => False, Val => 16#0#);
      --  Port F pull-down bit y (y=0..15)
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRF_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PUCRG_PU array
   type PUCRG_PU_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PUCRG_PU
   type PUCRG_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  PU as a value
         when True =>
            Arr : PUCRG_PU_Field_Array;
            --  PU as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PUCRG_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port G pull-up control register
   type PUCRG_Register is record
      PU             : PUCRG_PU_Field := (As_Array => False, Val => 16#0#);
      --  Port G pull-up bit y (y=0..15)
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRG_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDCRG_PD array
   type PDCRG_PD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PDCRG_PD
   type PDCRG_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  PD as a value
         when True =>
            Arr : PDCRG_PD_Field_Array;
            --  PD as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PDCRG_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port G pull-down control register
   type PDCRG_Register is record
      PD             : PDCRG_PD_Field := (As_Array => False, Val => 16#0#);
      --  Port G pull-down bit y (y=0..15)
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRG_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PUCRH_PU array
   type PUCRH_PU_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PUCRH_PU
   type PUCRH_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  PU as a value
         when True =>
            Arr : PUCRH_PU_Field_Array;
            --  PU as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PUCRH_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port H pull-up control register
   type PUCRH_Register is record
      PU             : PUCRH_PU_Field := (As_Array => False, Val => 16#0#);
      --  Port H pull-up bit y (y=0..15)
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRH_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDCRH_PD array
   type PDCRH_PD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PDCRH_PD
   type PDCRH_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  PD as a value
         when True =>
            Arr : PDCRH_PD_Field_Array;
            --  PD as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PDCRH_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port H pull-down control register
   type PDCRH_Register is record
      PD             : PDCRH_PD_Field := (As_Array => False, Val => 16#0#);
      --  Port H pull-down bit y (y=0..1)
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRH_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PUCRI_PU array
   type PUCRI_PU_Field_Array is array (0 .. 11) of Boolean
     with Component_Size => 1, Size => 12;

   --  Type definition for PUCRI_PU
   type PUCRI_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt12;
            --  PU as a value
         when True =>
            Arr : PUCRI_PU_Field_Array;
            --  PU as an array
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for PUCRI_PU_Field use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  Power Port I pull-up control register
   type PUCRI_Register is record
      PU             : PUCRI_PU_Field := (As_Array => False, Val => 16#0#);
      --  Port I pull-up bit
      Reserved_12_31 : HAL.UInt20 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRI_Register use record
      PU             at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  PDCRI_PD array
   type PDCRI_PD_Field_Array is array (0 .. 11) of Boolean
     with Component_Size => 1, Size => 12;

   --  Type definition for PDCRI_PD
   type PDCRI_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt12;
            --  PD as a value
         when True =>
            Arr : PDCRI_PD_Field_Array;
            --  PD as an array
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for PDCRI_PD_Field use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  Power Port I pull-down control register
   type PDCRI_Register is record
      PD             : PDCRI_PD_Field := (As_Array => False, Val => 16#0#);
      --  Port I pull-down bit
      Reserved_12_31 : HAL.UInt20 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRI_Register use record
      PD             at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  PWR control register
   type CR5_Register is record
      Reserved_0_7  : HAL.UInt8 := 16#0#;
      --  unspecified
      R1MODE        : Boolean := True;
      --  Main regulator Range 1 mode
      Reserved_9_31 : HAL.UInt23 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR5_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      R1MODE        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Power control
   type PWR_Peripheral is record
      CR1   : aliased CR1_Register;
      --  Power control register 1
      CR2   : aliased CR2_Register;
      --  Power control register 2
      CR3   : aliased CR3_Register;
      --  Power control register 3
      CR4   : aliased CR4_Register;
      --  Power control register 4
      SR1   : aliased SR1_Register;
      --  Power status register 1
      SR2   : aliased SR2_Register;
      --  Power status register 2
      SCR   : aliased SCR_Register;
      --  Power status clear register
      PUCRA : aliased PUCRA_Register;
      --  Power Port A pull-up control register
      PDCRA : aliased PDCRA_Register;
      --  Power Port A pull-down control register
      PUCRB : aliased PUCRB_Register;
      --  Power Port B pull-up control register
      PDCRB : aliased PDCRB_Register;
      --  Power Port B pull-down control register
      PUCRC : aliased PUCRC_Register;
      --  Power Port C pull-up control register
      PDCRC : aliased PDCRC_Register;
      --  Power Port C pull-down control register
      PUCRD : aliased PUCRD_Register;
      --  Power Port D pull-up control register
      PDCRD : aliased PDCRD_Register;
      --  Power Port D pull-down control register
      PUCRE : aliased PUCRE_Register;
      --  Power Port E pull-up control register
      PDCRE : aliased PDCRE_Register;
      --  Power Port E pull-down control register
      PUCRF : aliased PUCRF_Register;
      --  Power Port F pull-up control register
      PDCRF : aliased PDCRF_Register;
      --  Power Port F pull-down control register
      PUCRG : aliased PUCRG_Register;
      --  Power Port G pull-up control register
      PDCRG : aliased PDCRG_Register;
      --  Power Port G pull-down control register
      PUCRH : aliased PUCRH_Register;
      --  Power Port H pull-up control register
      PDCRH : aliased PDCRH_Register;
      --  Power Port H pull-down control register
      PUCRI : aliased PUCRI_Register;
      --  Power Port I pull-up control register
      PDCRI : aliased PDCRI_Register;
      --  Power Port I pull-down control register
      CR5   : aliased CR5_Register;
      --  PWR control register
   end record
     with Volatile;

   for PWR_Peripheral use record
      CR1   at 16#0# range 0 .. 31;
      CR2   at 16#4# range 0 .. 31;
      CR3   at 16#8# range 0 .. 31;
      CR4   at 16#C# range 0 .. 31;
      SR1   at 16#10# range 0 .. 31;
      SR2   at 16#14# range 0 .. 31;
      SCR   at 16#18# range 0 .. 31;
      PUCRA at 16#20# range 0 .. 31;
      PDCRA at 16#24# range 0 .. 31;
      PUCRB at 16#28# range 0 .. 31;
      PDCRB at 16#2C# range 0 .. 31;
      PUCRC at 16#30# range 0 .. 31;
      PDCRC at 16#34# range 0 .. 31;
      PUCRD at 16#38# range 0 .. 31;
      PDCRD at 16#3C# range 0 .. 31;
      PUCRE at 16#40# range 0 .. 31;
      PDCRE at 16#44# range 0 .. 31;
      PUCRF at 16#48# range 0 .. 31;
      PDCRF at 16#4C# range 0 .. 31;
      PUCRG at 16#50# range 0 .. 31;
      PDCRG at 16#54# range 0 .. 31;
      PUCRH at 16#58# range 0 .. 31;
      PDCRH at 16#5C# range 0 .. 31;
      PUCRI at 16#60# range 0 .. 31;
      PDCRI at 16#64# range 0 .. 31;
      CR5   at 16#80# range 0 .. 31;
   end record;

   --  Power control
   PWR_Periph : aliased PWR_Peripheral
     with Import, Address => PWR_Base;

end STM32_SVD.PWR;
