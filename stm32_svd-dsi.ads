pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.DSI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  DSI Host Control Register
   type CR_Register is record
      EN            : Boolean := False;
      --  Enable
      Reserved_1_31 : HAL.UInt31 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      EN            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CCR_TXECKDIV_Field is HAL.UInt8;
   subtype CCR_TOCKDIV_Field is HAL.UInt8;

   --  DSI HOST Clock Control Register
   type CCR_Register is record
      TXECKDIV       : CCR_TXECKDIV_Field := 16#0#;
      --  TX Escape Clock Division
      TOCKDIV        : CCR_TOCKDIV_Field := 16#0#;
      --  Timeout Clock Division
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      TXECKDIV       at 0 range 0 .. 7;
      TOCKDIV        at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LVCIDR_VCID_Field is HAL.UInt2;

   --  DSI Host LTDC VCID Register
   type LVCIDR_Register is record
      VCID          : LVCIDR_VCID_Field := 16#0#;
      --  Virtual Channel ID
      Reserved_2_31 : HAL.UInt30 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVCIDR_Register use record
      VCID          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype LCOLCR_COLC_Field is HAL.UInt4;

   --  DSI Host LTDC Color Coding Register
   type LCOLCR_Register is record
      COLC          : LCOLCR_COLC_Field := 16#0#;
      --  Color Coding
      Reserved_4_7  : HAL.UInt4 := 16#0#;
      --  unspecified
      LPE           : Boolean := False;
      --  Loosely Packet Enable
      Reserved_9_31 : HAL.UInt23 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCOLCR_Register use record
      COLC          at 0 range 0 .. 3;
      Reserved_4_7  at 0 range 4 .. 7;
      LPE           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  DSI Host LTDC Polarity Configuration Register
   type LPCR_Register is record
      DEP           : Boolean := False;
      --  Data Enable Polarity
      VSP           : Boolean := False;
      --  VSYNC Polarity
      HSP           : Boolean := False;
      --  HSYNC Polarity
      Reserved_3_31 : HAL.UInt29 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPCR_Register use record
      DEP           at 0 range 0 .. 0;
      VSP           at 0 range 1 .. 1;
      HSP           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype LPMCR_VLPSIZE_Field is HAL.UInt8;
   subtype LPMCR_LPSIZE_Field is HAL.UInt8;

   --  DSI Host Low-Power mode Configuration Register
   type LPMCR_Register is record
      VLPSIZE        : LPMCR_VLPSIZE_Field := 16#0#;
      --  VACT Largest Packet Size
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  unspecified
      LPSIZE         : LPMCR_LPSIZE_Field := 16#0#;
      --  Largest Packet Size
      Reserved_24_31 : HAL.UInt8 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPMCR_Register use record
      VLPSIZE        at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      LPSIZE         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  DSI Host Protocol Configuration Register
   type PCR_Register is record
      ETTXE         : Boolean := False;
      --  EoTp Transmission Enable
      ETRXE         : Boolean := False;
      --  EoTp Reception Enable
      BTAE          : Boolean := False;
      --  Bus Turn Around Enable
      ECCRXE        : Boolean := False;
      --  ECC Reception Enable
      CRCRXE        : Boolean := False;
      --  CRC Reception Enable
      Reserved_5_31 : HAL.UInt27 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCR_Register use record
      ETTXE         at 0 range 0 .. 0;
      ETRXE         at 0 range 1 .. 1;
      BTAE          at 0 range 2 .. 2;
      ECCRXE        at 0 range 3 .. 3;
      CRCRXE        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype GVCIDR_VCID_Field is HAL.UInt2;

   --  DSI Host Generic VCID Register
   type GVCIDR_Register is record
      VCID          : GVCIDR_VCID_Field := 16#0#;
      --  Virtual Channel ID
      Reserved_2_31 : HAL.UInt30 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GVCIDR_Register use record
      VCID          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  DSI Host mode Configuration Register
   type MCR_Register is record
      CMDM          : Boolean := True;
      --  Command mode
      Reserved_1_31 : HAL.UInt31 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCR_Register use record
      CMDM          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype VMCR_VMT_Field is HAL.UInt2;

   --  DSI Host Video mode Configuration Register
   type VMCR_Register is record
      VMT            : VMCR_VMT_Field := 16#0#;
      --  Video mode Type
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  unspecified
      LPVSAE         : Boolean := False;
      --  Low-Power Vertical Sync Active Enable
      LPVBPE         : Boolean := False;
      --  Low-power Vertical Back-Porch Enable
      LPVFPE         : Boolean := False;
      --  Low-power Vertical Front-porch Enable
      LPVAE          : Boolean := False;
      --  Low-Power Vertical Active Enable
      LPHBPE         : Boolean := False;
      --  Low-Power Horizontal Back-Porch Enable
      LPHFPE         : Boolean := False;
      --  Low-Power Horizontal Front-Porch Enable
      FBTAAE         : Boolean := False;
      --  Frame Bus-Turn-Around Acknowledge Enable
      LPCE           : Boolean := False;
      --  Low-Power Command Enable
      PGE            : Boolean := False;
      --  Pattern Generator Enable
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  unspecified
      PGM            : Boolean := False;
      --  Pattern Generator mode
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  unspecified
      PGO            : Boolean := False;
      --  Pattern Generator Orientation
      Reserved_25_31 : HAL.UInt7 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VMCR_Register use record
      VMT            at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      LPVSAE         at 0 range 8 .. 8;
      LPVBPE         at 0 range 9 .. 9;
      LPVFPE         at 0 range 10 .. 10;
      LPVAE          at 0 range 11 .. 11;
      LPHBPE         at 0 range 12 .. 12;
      LPHFPE         at 0 range 13 .. 13;
      FBTAAE         at 0 range 14 .. 14;
      LPCE           at 0 range 15 .. 15;
      PGE            at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      PGM            at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      PGO            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype VPCR_VPSIZE_Field is HAL.UInt14;

   --  DSI Host Video Packet Configuration Register
   type VPCR_Register is record
      VPSIZE         : VPCR_VPSIZE_Field := 16#0#;
      --  Video Packet Size
      Reserved_14_31 : HAL.UInt18 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VPCR_Register use record
      VPSIZE         at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype VCCR_NUMC_Field is HAL.UInt13;

   --  DSI Host Video Chunks Configuration Register
   type VCCR_Register is record
      NUMC           : VCCR_NUMC_Field := 16#0#;
      --  Number of Chunks
      Reserved_13_31 : HAL.UInt19 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VCCR_Register use record
      NUMC           at 0 range 0 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype VNPCR_NPSIZE_Field is HAL.UInt13;

   --  DSI Host Video Null Packet Configuration Register
   type VNPCR_Register is record
      NPSIZE         : VNPCR_NPSIZE_Field := 16#0#;
      --  Null Packet Size
      Reserved_13_31 : HAL.UInt19 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VNPCR_Register use record
      NPSIZE         at 0 range 0 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype VHSACR_HSA_Field is HAL.UInt12;

   --  DSI Host Video HSA Configuration Register
   type VHSACR_Register is record
      HSA            : VHSACR_HSA_Field := 16#0#;
      --  Horizontal Synchronism Active duration
      Reserved_12_31 : HAL.UInt20 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VHSACR_Register use record
      HSA            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype VHBPCR_HBP_Field is HAL.UInt12;

   --  DSI Host Video HBP Configuration Register
   type VHBPCR_Register is record
      HBP            : VHBPCR_HBP_Field := 16#0#;
      --  Horizontal Back-Porch duration
      Reserved_12_31 : HAL.UInt20 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VHBPCR_Register use record
      HBP            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype VLCR_HLINE_Field is HAL.UInt15;

   --  DSI Host Video Line Configuration Register
   type VLCR_Register is record
      HLINE          : VLCR_HLINE_Field := 16#0#;
      --  Horizontal Line duration
      Reserved_15_31 : HAL.UInt17 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VLCR_Register use record
      HLINE          at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype VVSACR_VSA_Field is HAL.UInt10;

   --  DSI Host Video VSA Configuration Register
   type VVSACR_Register is record
      VSA            : VVSACR_VSA_Field := 16#0#;
      --  Vertical Synchronism Active duration
      Reserved_10_31 : HAL.UInt22 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VVSACR_Register use record
      VSA            at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype VVBPCR_VBP_Field is HAL.UInt10;

   --  DSI Host Video VBP Configuration Register
   type VVBPCR_Register is record
      VBP            : VVBPCR_VBP_Field := 16#0#;
      --  Vertical Back-Porch duration
      Reserved_10_31 : HAL.UInt22 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VVBPCR_Register use record
      VBP            at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype VVFPCR_VFP_Field is HAL.UInt10;

   --  DSI Host Video VFP Configuration Register
   type VVFPCR_Register is record
      VFP            : VVFPCR_VFP_Field := 16#0#;
      --  Vertical Front-Porch duration
      Reserved_10_31 : HAL.UInt22 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VVFPCR_Register use record
      VFP            at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype VVACR_VA_Field is HAL.UInt14;

   --  DSI Host Video VA Configuration Register
   type VVACR_Register is record
      VA             : VVACR_VA_Field := 16#0#;
      --  Vertical Active duration
      Reserved_14_31 : HAL.UInt18 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VVACR_Register use record
      VA             at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype LCCR_CMDSIZE_Field is HAL.UInt16;

   --  DSI Host LTDC Command Configuration Register
   type LCCR_Register is record
      CMDSIZE        : LCCR_CMDSIZE_Field := 16#0#;
      --  Command Size
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCCR_Register use record
      CMDSIZE        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DSI Host Command mode Configuration Register
   type CMCR_Register is record
      TEARE          : Boolean := False;
      --  Tearing Effect Acknowledge Request Enable
      ARE            : Boolean := False;
      --  Acknowledge Request Enable
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  unspecified
      GSW0TX         : Boolean := False;
      --  Generic Short Write Zero parameters Transmission
      GSW1TX         : Boolean := False;
      --  Generic Short Write One parameters Transmission
      GSW2TX         : Boolean := False;
      --  Generic Short Write Two parameters Transmission
      GSR0TX         : Boolean := False;
      --  Generic Short Read Zero parameters Transmission
      GSR1TX         : Boolean := False;
      --  Generic Short Read One parameters Transmission
      GSR2TX         : Boolean := False;
      --  Generic Short Read Two parameters Transmission
      GLWTX          : Boolean := False;
      --  Generic Long Write Transmission
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  unspecified
      DSW0TX         : Boolean := False;
      --  DCS Short Write Zero parameter Transmission
      DSW1TX         : Boolean := False;
      --  DCS Short Read One parameter Transmission
      DSR0TX         : Boolean := False;
      --  DCS Short Read Zero parameter Transmission
      DLWTX          : Boolean := False;
      --  DCS Long Write Transmission
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  unspecified
      MRDPS          : Boolean := False;
      --  Maximum Read Packet Size
      Reserved_25_31 : HAL.UInt7 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCR_Register use record
      TEARE          at 0 range 0 .. 0;
      ARE            at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      GSW0TX         at 0 range 8 .. 8;
      GSW1TX         at 0 range 9 .. 9;
      GSW2TX         at 0 range 10 .. 10;
      GSR0TX         at 0 range 11 .. 11;
      GSR1TX         at 0 range 12 .. 12;
      GSR2TX         at 0 range 13 .. 13;
      GLWTX          at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      DSW0TX         at 0 range 16 .. 16;
      DSW1TX         at 0 range 17 .. 17;
      DSR0TX         at 0 range 18 .. 18;
      DLWTX          at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      MRDPS          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype GHCR_DT_Field is HAL.UInt6;
   subtype GHCR_VCID_Field is HAL.UInt2;
   subtype GHCR_WCLSB_Field is HAL.UInt8;
   subtype GHCR_WCMSB_Field is HAL.UInt8;

   --  DSI Host Generic Header Configuration Register
   type GHCR_Register is record
      DT             : GHCR_DT_Field := 16#0#;
      --  Type
      VCID           : GHCR_VCID_Field := 16#0#;
      --  Channel
      WCLSB          : GHCR_WCLSB_Field := 16#0#;
      --  WordCount LSB
      WCMSB          : GHCR_WCMSB_Field := 16#0#;
      --  WordCount MSB
      Reserved_24_31 : HAL.UInt8 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GHCR_Register use record
      DT             at 0 range 0 .. 5;
      VCID           at 0 range 6 .. 7;
      WCLSB          at 0 range 8 .. 15;
      WCMSB          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  GPDR_DATA array element
   subtype GPDR_DATA_Element is HAL.UInt8;

   --  GPDR_DATA array
   type GPDR_DATA_Field_Array is array (1 .. 4) of GPDR_DATA_Element
     with Component_Size => 8, Size => 32;

   --  DSI Host Generic Payload Data Register
   type GPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt32;
            --  DATA as a value
         when True =>
            Arr : GPDR_DATA_Field_Array;
            --  DATA as an array
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  DSI Host Generic Packet Status Register
   type GPSR_Register is record
      CMDFE         : Boolean;
      --  Read-only. Command FIFO Empty
      CMDFF         : Boolean;
      --  Read-only. Command FIFO Full
      PWRFE         : Boolean;
      --  Read-only. Payload Write FIFO Empty
      PWRFF         : Boolean;
      --  Read-only. Payload Write FIFO Full
      PRDFE         : Boolean;
      --  Read-only. Payload Read FIFO Empty
      PRDFF         : Boolean;
      --  Read-only. Payload Read FIFO Full
      RCB           : Boolean;
      --  Read-only. Read Command Busy
      Reserved_7_31 : HAL.UInt25;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPSR_Register use record
      CMDFE         at 0 range 0 .. 0;
      CMDFF         at 0 range 1 .. 1;
      PWRFE         at 0 range 2 .. 2;
      PWRFF         at 0 range 3 .. 3;
      PRDFE         at 0 range 4 .. 4;
      PRDFF         at 0 range 5 .. 5;
      RCB           at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype TCCR0_LPRX_TOCNT_Field is HAL.UInt16;
   subtype TCCR0_HSTX_TOCNT_Field is HAL.UInt16;

   --  DSI Host Timeout Counter Configuration Register 0
   type TCCR0_Register is record
      LPRX_TOCNT : TCCR0_LPRX_TOCNT_Field := 16#0#;
      --  Low-power Reception Timeout Counter
      HSTX_TOCNT : TCCR0_HSTX_TOCNT_Field := 16#0#;
      --  High-Speed Transmission Timeout Counter
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCCR0_Register use record
      LPRX_TOCNT at 0 range 0 .. 15;
      HSTX_TOCNT at 0 range 16 .. 31;
   end record;

   subtype TCCR1_HSRD_TOCNT_Field is HAL.UInt16;

   --  DSI Host Timeout Counter Configuration Register 1
   type TCCR1_Register is record
      HSRD_TOCNT     : TCCR1_HSRD_TOCNT_Field := 16#0#;
      --  High-Speed Read Timeout Counter
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCCR1_Register use record
      HSRD_TOCNT     at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TCCR2_LPRD_TOCNT_Field is HAL.UInt16;

   --  DSI Host Timeout Counter Configuration Register 2
   type TCCR2_Register is record
      LPRD_TOCNT     : TCCR2_LPRD_TOCNT_Field := 16#0#;
      --  Low-Power Read Timeout Counter
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCCR2_Register use record
      LPRD_TOCNT     at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TCCR3_HSWR_TOCNT_Field is HAL.UInt16;

   --  DSI Host Timeout Counter Configuration Register 3
   type TCCR3_Register is record
      HSWR_TOCNT     : TCCR3_HSWR_TOCNT_Field := 16#0#;
      --  High-Speed Write Timeout Counter
      Reserved_16_23 : HAL.UInt8 := 16#0#;
      --  unspecified
      PM             : Boolean := False;
      --  Presp mode
      Reserved_25_31 : HAL.UInt7 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCCR3_Register use record
      HSWR_TOCNT     at 0 range 0 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      PM             at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype TCCR4_LSWR_TOCNT_Field is HAL.UInt16;

   --  DSI Host Timeout Counter Configuration Register 4
   type TCCR4_Register is record
      LSWR_TOCNT     : TCCR4_LSWR_TOCNT_Field := 16#0#;
      --  Low-Power Write Timeout Counter
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCCR4_Register use record
      LSWR_TOCNT     at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TCCR5_BTA_TOCNT_Field is HAL.UInt16;

   --  DSI Host Timeout Counter Configuration Register 5
   type TCCR5_Register is record
      BTA_TOCNT      : TCCR5_BTA_TOCNT_Field := 16#0#;
      --  Bus-Turn-Around Timeout Counter
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCCR5_Register use record
      BTA_TOCNT      at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DSI Host Clock Lane Configuration Register
   type CLCR_Register is record
      DPCC          : Boolean := False;
      --  D-PHY Clock Control
      ACR           : Boolean := False;
      --  Automatic Clock lane Control
      Reserved_2_31 : HAL.UInt30 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLCR_Register use record
      DPCC          at 0 range 0 .. 0;
      ACR           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype CLTCR_LP2HS_TIME_Field is HAL.UInt10;
   subtype CLTCR_HS2LP_TIME_Field is HAL.UInt10;

   --  DSI Host Clock Lane Timer Configuration Register
   type CLTCR_Register is record
      LP2HS_TIME     : CLTCR_LP2HS_TIME_Field := 16#0#;
      --  Low-Power to High-Speed Time
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  unspecified
      HS2LP_TIME     : CLTCR_HS2LP_TIME_Field := 16#0#;
      --  High-Speed to Low-Power Time
      Reserved_26_31 : HAL.UInt6 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLTCR_Register use record
      LP2HS_TIME     at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      HS2LP_TIME     at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype DLTRC_MRD_TIME_Field is HAL.UInt15;
   subtype DLTRC_LP2HS_TIME_Field is HAL.UInt8;
   subtype DLTRC_HS2LP_TIME_Field is HAL.UInt8;

   --  DSI Host Data Lane Timer Configuration Register
   type DLTRC_Register is record
      MRD_TIME       : DLTRC_MRD_TIME_Field := 16#0#;
      --  Maximum Read Time
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  unspecified
      LP2HS_TIME     : DLTRC_LP2HS_TIME_Field := 16#0#;
      --  Low-Power To High-Speed Time
      HS2LP_TIME     : DLTRC_HS2LP_TIME_Field := 16#0#;
      --  High-Speed To Low-Power Time
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLTRC_Register use record
      MRD_TIME       at 0 range 0 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LP2HS_TIME     at 0 range 16 .. 23;
      HS2LP_TIME     at 0 range 24 .. 31;
   end record;

   --  DSI Host PHY Control Register
   type PCTLR_Register is record
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  unspecified
      DEN           : Boolean := False;
      --  Digital Enable
      CKE           : Boolean := False;
      --  Clock Enable
      Reserved_3_31 : HAL.UInt29 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCTLR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      DEN           at 0 range 1 .. 1;
      CKE           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype PCONFR_NL_Field is HAL.UInt2;
   subtype PCONFR_SW_TIME_Field is HAL.UInt8;

   --  DSI Host PHY Configuration Register
   type PCONFR_Register is record
      NL             : PCONFR_NL_Field := 16#1#;
      --  Number of Lanes
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  unspecified
      SW_TIME        : PCONFR_SW_TIME_Field := 16#0#;
      --  Stop Wait Time
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCONFR_Register use record
      NL             at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      SW_TIME        at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DSI Host PHY ULPS Control Register
   type PUCR_Register is record
      URCL          : Boolean := False;
      --  ULPS Request on Clock Lane
      UECL          : Boolean := False;
      --  ULPS Exit on Clock Lane
      URDL          : Boolean := False;
      --  ULPS Request on Data Lane
      UEDL          : Boolean := False;
      --  ULPS Exit on Data Lane
      Reserved_4_31 : HAL.UInt28 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCR_Register use record
      URCL          at 0 range 0 .. 0;
      UECL          at 0 range 1 .. 1;
      URDL          at 0 range 2 .. 2;
      UEDL          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype PTTCR_TX_TRIG_Field is HAL.UInt4;

   --  DSI Host PHY TX Triggers Configuration Register
   type PTTCR_Register is record
      TX_TRIG       : PTTCR_TX_TRIG_Field := 16#0#;
      --  Transmission Trigger
      Reserved_4_31 : HAL.UInt28 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PTTCR_Register use record
      TX_TRIG       at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  DSI Host PHY Status Register
   type PSR_Register is record
      Reserved_0_0  : HAL.Bit;
      --  unspecified
      PD            : Boolean;
      --  Read-only. PHY Direction
      PSSC          : Boolean;
      --  Read-only. PHY Stop State Clock lane
      UANC          : Boolean;
      --  Read-only. ULPS Active Not Clock lane
      PSS0          : Boolean;
      --  Read-only. PHY Stop State lane 0
      UAN0          : Boolean;
      --  Read-only. ULPS Active Not lane 1
      RUE0          : Boolean;
      --  Read-only. RX ULPS Escape lane 0
      PSS1          : Boolean;
      --  Read-only. PHY Stop State lane 1
      UAN1          : Boolean;
      --  Read-only. ULPS Active Not lane 1
      Reserved_9_31 : HAL.UInt23;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      PD            at 0 range 1 .. 1;
      PSSC          at 0 range 2 .. 2;
      UANC          at 0 range 3 .. 3;
      PSS0          at 0 range 4 .. 4;
      UAN0          at 0 range 5 .. 5;
      RUE0          at 0 range 6 .. 6;
      PSS1          at 0 range 7 .. 7;
      UAN1          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  ISR0_AE array
   type ISR0_AE_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for ISR0_AE
   type ISR0_AE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  AE as a value
         when True =>
            Arr : ISR0_AE_Field_Array;
            --  AE as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for ISR0_AE_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ISR0_PE array
   type ISR0_PE_Field_Array is array (0 .. 4) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for ISR0_PE
   type ISR0_PE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt5;
            --  PE as a value
         when True =>
            Arr : ISR0_PE_Field_Array;
            --  PE as an array
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for ISR0_PE_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  DSI Host Interrupt & Status Register 0
   type ISR0_Register is record
      AE             : ISR0_AE_Field;
      --  Read-only. Acknowledge Error 0
      PE             : ISR0_PE_Field;
      --  Read-only. PHY Error 0
      Reserved_21_31 : HAL.UInt11;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR0_Register use record
      AE             at 0 range 0 .. 15;
      PE             at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  DSI Host Interrupt & Status Register 1
   type ISR1_Register is record
      TOHSTX         : Boolean;
      --  Read-only. Timeout High-Speed Transmission
      TOLPRX         : Boolean;
      --  Read-only. Timeout Low-Power Reception
      ECCSE          : Boolean;
      --  Read-only. ECC Single-bit Error
      ECCME          : Boolean;
      --  Read-only. ECC Multi-bit Error
      CRCE           : Boolean;
      --  Read-only. CRC Error
      PSE            : Boolean;
      --  Read-only. Packet Size Error
      EOTPE          : Boolean;
      --  Read-only. EoTp Error
      LPWRE          : Boolean;
      --  Read-only. LTDC Payload Write Error
      GCWRE          : Boolean;
      --  Read-only. Generic Command Write Error
      GPWRE          : Boolean;
      --  Read-only. Generic Payload Write Error
      GPTXE          : Boolean;
      --  Read-only. Generic Payload Transmit Error
      GPRDE          : Boolean;
      --  Read-only. Generic Payload Read Error
      GPRXE          : Boolean;
      --  Read-only. Generic Payload Receive Error
      Reserved_13_31 : HAL.UInt19;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR1_Register use record
      TOHSTX         at 0 range 0 .. 0;
      TOLPRX         at 0 range 1 .. 1;
      ECCSE          at 0 range 2 .. 2;
      ECCME          at 0 range 3 .. 3;
      CRCE           at 0 range 4 .. 4;
      PSE            at 0 range 5 .. 5;
      EOTPE          at 0 range 6 .. 6;
      LPWRE          at 0 range 7 .. 7;
      GCWRE          at 0 range 8 .. 8;
      GPWRE          at 0 range 9 .. 9;
      GPTXE          at 0 range 10 .. 10;
      GPRDE          at 0 range 11 .. 11;
      GPRXE          at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  DSI Host Interrupt Enable Register 0
   type IER0_Register is record
      AE0IE          : Boolean := False;
      --  Acknowledge Error 0 Interrupt Enable
      AE1IE          : Boolean := False;
      --  Acknowledge Error 1 Interrupt Enable
      AE2IE          : Boolean := False;
      --  Acknowledge Error 2 Interrupt Enable
      AE3IE          : Boolean := False;
      --  Acknowledge Error 3 Interrupt Enable
      AE4IE          : Boolean := False;
      --  Acknowledge Error 4 Interrupt Enable
      AE5IE          : Boolean := False;
      --  Acknowledge Error 5 Interrupt Enable
      AE6IE          : Boolean := False;
      --  Acknowledge Error 6 Interrupt Enable
      AE7IE          : Boolean := False;
      --  Acknowledge Error 7 Interrupt Enable
      AE8IE          : Boolean := False;
      --  Acknowledge Error 8 Interrupt Enable
      AE9IE          : Boolean := False;
      --  Acknowledge Error 9 Interrupt Enable
      AE10IE         : Boolean := False;
      --  Acknowledge Error 10 Interrupt Enable
      AE11IE         : Boolean := False;
      --  Acknowledge Error 11 Interrupt Enable
      AE12IE         : Boolean := False;
      --  Acknowledge Error 12 Interrupt Enable
      AE13IE         : Boolean := False;
      --  Acknowledge Error 13 Interrupt Enable
      AE14IE         : Boolean := False;
      --  Acknowledge Error 14 Interrupt Enable
      AE15IE         : Boolean := False;
      --  Acknowledge Error 15 Interrupt Enable
      PE0IE          : Boolean := False;
      --  PHY Error 0 Interrupt Enable
      PE1IE          : Boolean := False;
      --  PHY Error 1 Interrupt Enable
      PE2IE          : Boolean := False;
      --  PHY Error 2 Interrupt Enable
      PE3IE          : Boolean := False;
      --  PHY Error 3 Interrupt Enable
      PE4IE          : Boolean := False;
      --  PHY Error 4 Interrupt Enable
      Reserved_21_31 : HAL.UInt11 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER0_Register use record
      AE0IE          at 0 range 0 .. 0;
      AE1IE          at 0 range 1 .. 1;
      AE2IE          at 0 range 2 .. 2;
      AE3IE          at 0 range 3 .. 3;
      AE4IE          at 0 range 4 .. 4;
      AE5IE          at 0 range 5 .. 5;
      AE6IE          at 0 range 6 .. 6;
      AE7IE          at 0 range 7 .. 7;
      AE8IE          at 0 range 8 .. 8;
      AE9IE          at 0 range 9 .. 9;
      AE10IE         at 0 range 10 .. 10;
      AE11IE         at 0 range 11 .. 11;
      AE12IE         at 0 range 12 .. 12;
      AE13IE         at 0 range 13 .. 13;
      AE14IE         at 0 range 14 .. 14;
      AE15IE         at 0 range 15 .. 15;
      PE0IE          at 0 range 16 .. 16;
      PE1IE          at 0 range 17 .. 17;
      PE2IE          at 0 range 18 .. 18;
      PE3IE          at 0 range 19 .. 19;
      PE4IE          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  DSI Host Interrupt Enable Register 1
   type IER1_Register is record
      TOHSTXIE       : Boolean := False;
      --  Timeout High-Speed Transmission Interrupt Enable
      TOLPRXIE       : Boolean := False;
      --  Timeout Low-Power Reception Interrupt Enable
      ECCSEIE        : Boolean := False;
      --  ECC Single-bit Error Interrupt Enable
      ECCMEIE        : Boolean := False;
      --  ECC Multi-bit Error Interrupt Enable
      CRCEIE         : Boolean := False;
      --  CRC Error Interrupt Enable
      PSEIE          : Boolean := False;
      --  Packet Size Error Interrupt Enable
      EOTPEIE        : Boolean := False;
      --  EoTp Error Interrupt Enable
      LPWREIE        : Boolean := False;
      --  LTDC Payload Write Error Interrupt Enable
      GCWREIE        : Boolean := False;
      --  Generic Command Write Error Interrupt Enable
      GPWREIE        : Boolean := False;
      --  Generic Payload Write Error Interrupt Enable
      GPTXEIE        : Boolean := False;
      --  Generic Payload Transmit Error Interrupt Enable
      GPRDEIE        : Boolean := False;
      --  Generic Payload Read Error Interrupt Enable
      GPRXEIE        : Boolean := False;
      --  Generic Payload Receive Error Interrupt Enable
      Reserved_13_31 : HAL.UInt19 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER1_Register use record
      TOHSTXIE       at 0 range 0 .. 0;
      TOLPRXIE       at 0 range 1 .. 1;
      ECCSEIE        at 0 range 2 .. 2;
      ECCMEIE        at 0 range 3 .. 3;
      CRCEIE         at 0 range 4 .. 4;
      PSEIE          at 0 range 5 .. 5;
      EOTPEIE        at 0 range 6 .. 6;
      LPWREIE        at 0 range 7 .. 7;
      GCWREIE        at 0 range 8 .. 8;
      GPWREIE        at 0 range 9 .. 9;
      GPTXEIE        at 0 range 10 .. 10;
      GPRDEIE        at 0 range 11 .. 11;
      GPRXEIE        at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  FIR0_FAE array
   type FIR0_FAE_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for FIR0_FAE
   type FIR0_FAE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  FAE as a value
         when True =>
            Arr : FIR0_FAE_Field_Array;
            --  FAE as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for FIR0_FAE_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  FIR0_FPE array
   type FIR0_FPE_Field_Array is array (0 .. 4) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for FIR0_FPE
   type FIR0_FPE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt5;
            --  FPE as a value
         when True =>
            Arr : FIR0_FPE_Field_Array;
            --  FPE as an array
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for FIR0_FPE_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  DSI Host Force Interrupt Register 0
   type FIR0_Register is record
      FAE            : FIR0_FAE_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Force Acknowledge Error 0
      FPE            : FIR0_FPE_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Force PHY Error 0
      Reserved_21_31 : HAL.UInt11 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIR0_Register use record
      FAE            at 0 range 0 .. 15;
      FPE            at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  DSI Host Force Interrupt Register 1
   type FIR1_Register is record
      FTOHSTX        : Boolean := False;
      --  Write-only. Force Timeout High-Speed Transmission
      FTOLPRX        : Boolean := False;
      --  Write-only. Force Timeout Low-Power Reception
      FECCSE         : Boolean := False;
      --  Write-only. Force ECC Single-bit Error
      FECCME         : Boolean := False;
      --  Write-only. Force ECC Multi-bit Error
      FCRCE          : Boolean := False;
      --  Write-only. Force CRC Error
      FPSE           : Boolean := False;
      --  Write-only. Force Packet Size Error
      FEOTPE         : Boolean := False;
      --  Write-only. Force EoTp Error
      FLPWRE         : Boolean := False;
      --  Write-only. Force LTDC Payload Write Error
      FGCWRE         : Boolean := False;
      --  Write-only. Force Generic Command Write Error
      FGPWRE         : Boolean := False;
      --  Write-only. Force Generic Payload Write Error
      FGPTXE         : Boolean := False;
      --  Write-only. Force Generic Payload Transmit Error
      FGPRDE         : Boolean := False;
      --  Write-only. Force Generic Payload Read Error
      FGPRXE         : Boolean := False;
      --  Write-only. Force Generic Payload Receive Error
      Reserved_13_31 : HAL.UInt19 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIR1_Register use record
      FTOHSTX        at 0 range 0 .. 0;
      FTOLPRX        at 0 range 1 .. 1;
      FECCSE         at 0 range 2 .. 2;
      FECCME         at 0 range 3 .. 3;
      FCRCE          at 0 range 4 .. 4;
      FPSE           at 0 range 5 .. 5;
      FEOTPE         at 0 range 6 .. 6;
      FLPWRE         at 0 range 7 .. 7;
      FGCWRE         at 0 range 8 .. 8;
      FGPWRE         at 0 range 9 .. 9;
      FGPTXE         at 0 range 10 .. 10;
      FGPRDE         at 0 range 11 .. 11;
      FGPRXE         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  DSI Host Video Shadow Control Register
   type VSCR_Register is record
      EN            : Boolean := False;
      --  Enable
      Reserved_1_7  : HAL.UInt7 := 16#0#;
      --  unspecified
      UR            : Boolean := False;
      --  Update Register
      Reserved_9_31 : HAL.UInt23 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VSCR_Register use record
      EN            at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      UR            at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype LCVCIDR_VCID_Field is HAL.UInt2;

   --  DSI Host LTDC Current VCID Register
   type LCVCIDR_Register is record
      VCID          : LCVCIDR_VCID_Field;
      --  Read-only. Virtual Channel ID
      Reserved_2_31 : HAL.UInt30;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCVCIDR_Register use record
      VCID          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype LCCCR_COLC_Field is HAL.UInt4;

   --  DSI Host LTDC Current Color Coding Register
   type LCCCR_Register is record
      COLC          : LCCCR_COLC_Field;
      --  Read-only. Color Coding
      Reserved_4_7  : HAL.UInt4;
      --  unspecified
      LPE           : Boolean;
      --  Read-only. Loosely Packed Enable
      Reserved_9_31 : HAL.UInt23;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCCCR_Register use record
      COLC          at 0 range 0 .. 3;
      Reserved_4_7  at 0 range 4 .. 7;
      LPE           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype LPMCCR_VLPSIZE_Field is HAL.UInt8;
   subtype LPMCCR_LPSIZE_Field is HAL.UInt8;

   --  DSI Host Low-Power mode Current Configuration Register
   type LPMCCR_Register is record
      VLPSIZE        : LPMCCR_VLPSIZE_Field;
      --  Read-only. VACT Largest Packet Size
      Reserved_8_15  : HAL.UInt8;
      --  unspecified
      LPSIZE         : LPMCCR_LPSIZE_Field;
      --  Read-only. Largest Packet Size
      Reserved_24_31 : HAL.UInt8;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPMCCR_Register use record
      VLPSIZE        at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      LPSIZE         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype VMCCR_VMT_Field is HAL.UInt2;

   --  DSI Host Video mode Current Configuration Register
   type VMCCR_Register is record
      VMT            : VMCCR_VMT_Field;
      --  Read-only. Video mode Type
      LPVSAE         : Boolean;
      --  Read-only. Low-Power Vertical Sync time Enable
      LPVBPE         : Boolean;
      --  Read-only. Low-power Vertical Back-Porch Enable
      LPVFPE         : Boolean;
      --  Read-only. Low-power Vertical Front-Porch Enable
      LPVAE          : Boolean;
      --  Read-only. Low-Power Vertical Active Enable
      LPHBPE         : Boolean;
      --  Read-only. Low-power Horizontal Back-Porch Enable
      LPHFE          : Boolean;
      --  Read-only. Low-Power Horizontal Front-Porch Enable
      FBTAAE         : Boolean;
      --  Read-only. Frame BTA Acknowledge Enable
      LPCE           : Boolean;
      --  Read-only. Low-Power Command Enable
      Reserved_10_31 : HAL.UInt22;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VMCCR_Register use record
      VMT            at 0 range 0 .. 1;
      LPVSAE         at 0 range 2 .. 2;
      LPVBPE         at 0 range 3 .. 3;
      LPVFPE         at 0 range 4 .. 4;
      LPVAE          at 0 range 5 .. 5;
      LPHBPE         at 0 range 6 .. 6;
      LPHFE          at 0 range 7 .. 7;
      FBTAAE         at 0 range 8 .. 8;
      LPCE           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype VPCCR_VPSIZE_Field is HAL.UInt14;

   --  DSI Host Video Packet Current Configuration Register
   type VPCCR_Register is record
      VPSIZE         : VPCCR_VPSIZE_Field;
      --  Read-only. Video Packet Size
      Reserved_14_31 : HAL.UInt18;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VPCCR_Register use record
      VPSIZE         at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype VCCCR_NUMC_Field is HAL.UInt13;

   --  DSI Host Video Chunks Current Configuration Register
   type VCCCR_Register is record
      NUMC           : VCCCR_NUMC_Field;
      --  Read-only. Number of Chunks
      Reserved_13_31 : HAL.UInt19;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VCCCR_Register use record
      NUMC           at 0 range 0 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype VNPCCR_NPSIZE_Field is HAL.UInt13;

   --  DSI Host Video Null Packet Current Configuration Register
   type VNPCCR_Register is record
      NPSIZE         : VNPCCR_NPSIZE_Field;
      --  Read-only. Null Packet Size
      Reserved_13_31 : HAL.UInt19;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VNPCCR_Register use record
      NPSIZE         at 0 range 0 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype VHSACCR_HSA_Field is HAL.UInt12;

   --  DSI Host Video HSA Current Configuration Register
   type VHSACCR_Register is record
      HSA            : VHSACCR_HSA_Field;
      --  Read-only. Horizontal Synchronism Active duration
      Reserved_12_31 : HAL.UInt20;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VHSACCR_Register use record
      HSA            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype VHBPCCR_HBP_Field is HAL.UInt12;

   --  DSI Host Video HBP Current Configuration Register
   type VHBPCCR_Register is record
      HBP            : VHBPCCR_HBP_Field;
      --  Read-only. Horizontal Back-Porch duration
      Reserved_12_31 : HAL.UInt20;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VHBPCCR_Register use record
      HBP            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype VLCCR_HLINE_Field is HAL.UInt15;

   --  DSI Host Video Line Current Configuration Register
   type VLCCR_Register is record
      HLINE          : VLCCR_HLINE_Field;
      --  Read-only. Horizontal Line duration
      Reserved_15_31 : HAL.UInt17;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VLCCR_Register use record
      HLINE          at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype VVSACCR_VSA_Field is HAL.UInt10;

   --  DSI Host Video VSA Current Configuration Register
   type VVSACCR_Register is record
      VSA            : VVSACCR_VSA_Field;
      --  Read-only. Vertical Synchronism Active duration
      Reserved_10_31 : HAL.UInt22;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VVSACCR_Register use record
      VSA            at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype VVBPCCR_VBP_Field is HAL.UInt10;

   --  DSI Host Video VBP Current Configuration Register
   type VVBPCCR_Register is record
      VBP            : VVBPCCR_VBP_Field;
      --  Read-only. Vertical Back-Porch duration
      Reserved_10_31 : HAL.UInt22;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VVBPCCR_Register use record
      VBP            at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype VVFPCCR_VFP_Field is HAL.UInt10;

   --  DSI Host Video VFP Current Configuration Register
   type VVFPCCR_Register is record
      VFP            : VVFPCCR_VFP_Field;
      --  Read-only. Vertical Front-Porch duration
      Reserved_10_31 : HAL.UInt22;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VVFPCCR_Register use record
      VFP            at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype VVACCR_VA_Field is HAL.UInt14;

   --  DSI Host Video VA Current Configuration Register
   type VVACCR_Register is record
      VA             : VVACCR_VA_Field;
      --  Read-only. Vertical Active duration
      Reserved_14_31 : HAL.UInt18;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VVACCR_Register use record
      VA             at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype WCFGR_COLMUX_Field is HAL.UInt3;

   --  DSI Wrapper Configuration Register
   type WCFGR_Register is record
      DSIM          : Boolean := False;
      --  DSI Mode
      COLMUX        : WCFGR_COLMUX_Field := 16#0#;
      --  Color Multiplexing
      TESRC         : Boolean := False;
      --  TE Source
      TEPOL         : Boolean := False;
      --  TE Polarity
      AR            : Boolean := False;
      --  Automatic Refresh
      VSPOL         : Boolean := False;
      --  VSync Polarity
      Reserved_8_31 : HAL.UInt24 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WCFGR_Register use record
      DSIM          at 0 range 0 .. 0;
      COLMUX        at 0 range 1 .. 3;
      TESRC         at 0 range 4 .. 4;
      TEPOL         at 0 range 5 .. 5;
      AR            at 0 range 6 .. 6;
      VSPOL         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DSI Wrapper Control Register
   type WCR_Register is record
      COLM          : Boolean := False;
      --  Color Mode
      SHTDN         : Boolean := False;
      --  Shutdown
      LTDCEN        : Boolean := False;
      --  LTDC Enable
      DSIEN         : Boolean := False;
      --  DSI Enable
      Reserved_4_31 : HAL.UInt28 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WCR_Register use record
      COLM          at 0 range 0 .. 0;
      SHTDN         at 0 range 1 .. 1;
      LTDCEN        at 0 range 2 .. 2;
      DSIEN         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  DSI Wrapper Interrupt Enable Register
   type WIER_Register is record
      TEIE           : Boolean := False;
      --  Tearing Effect Interrupt Enable
      ERIE           : Boolean := False;
      --  End of Refresh Interrupt Enable
      Reserved_2_8   : HAL.UInt7 := 16#0#;
      --  unspecified
      PLLLIE         : Boolean := False;
      --  PLL Lock Interrupt Enable
      PLLUIE         : Boolean := False;
      --  PLL Unlock Interrupt Enable
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  unspecified
      RRIE           : Boolean := False;
      --  Regulator Ready Interrupt Enable
      Reserved_14_31 : HAL.UInt18 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WIER_Register use record
      TEIE           at 0 range 0 .. 0;
      ERIE           at 0 range 1 .. 1;
      Reserved_2_8   at 0 range 2 .. 8;
      PLLLIE         at 0 range 9 .. 9;
      PLLUIE         at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      RRIE           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  DSI Wrapper Interrupt & Status Register
   type WISR_Register is record
      TEIF           : Boolean;
      --  Read-only. Tearing Effect Interrupt Flag
      ERIF           : Boolean;
      --  Read-only. End of Refresh Interrupt Flag
      BUSY           : Boolean;
      --  Read-only. Busy Flag
      Reserved_3_7   : HAL.UInt5;
      --  unspecified
      PLLLS          : Boolean;
      --  Read-only. PLL Lock Status
      PLLLIF         : Boolean;
      --  Read-only. PLL Lock Interrupt Flag
      PLLUIF         : Boolean;
      --  Read-only. PLL Unlock Interrupt Flag
      Reserved_11_11 : HAL.Bit;
      --  unspecified
      RRS            : Boolean;
      --  Read-only. Regulator Ready Status
      RRIF           : Boolean;
      --  Read-only. Regulator Ready Interrupt Flag
      Reserved_14_31 : HAL.UInt18;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WISR_Register use record
      TEIF           at 0 range 0 .. 0;
      ERIF           at 0 range 1 .. 1;
      BUSY           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      PLLLS          at 0 range 8 .. 8;
      PLLLIF         at 0 range 9 .. 9;
      PLLUIF         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      RRS            at 0 range 12 .. 12;
      RRIF           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  DSI Wrapper Interrupt Flag Clear Register
   type WIFCR_Register is record
      CTEIF          : Boolean := False;
      --  Clear Tearing Effect Interrupt Flag
      CERIF          : Boolean := False;
      --  Clear End of Refresh Interrupt Flag
      Reserved_2_8   : HAL.UInt7 := 16#0#;
      --  unspecified
      CPLLLIF        : Boolean := False;
      --  Clear PLL Lock Interrupt Flag
      CPLLUIF        : Boolean := False;
      --  Clear PLL Unlock Interrupt Flag
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  unspecified
      CRRIF          : Boolean := False;
      --  Clear Regulator Ready Interrupt Flag
      Reserved_14_31 : HAL.UInt18 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WIFCR_Register use record
      CTEIF          at 0 range 0 .. 0;
      CERIF          at 0 range 1 .. 1;
      Reserved_2_8   at 0 range 2 .. 8;
      CPLLLIF        at 0 range 9 .. 9;
      CPLLUIF        at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      CRRIF          at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype WPCR0_UIX4_Field is HAL.UInt6;

   --  WPCR0_SWDL array
   type WPCR0_SWDL_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for WPCR0_SWDL
   type WPCR0_SWDL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt2;
            --  SWDL as a value
         when True =>
            Arr : WPCR0_SWDL_Field_Array;
            --  SWDL as an array
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for WPCR0_SWDL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  WPCR0_HSIDL array
   type WPCR0_HSIDL_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for WPCR0_HSIDL
   type WPCR0_HSIDL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt2;
            --  HSIDL as a value
         when True =>
            Arr : WPCR0_HSIDL_Field_Array;
            --  HSIDL as an array
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for WPCR0_HSIDL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  DSI Wrapper PHY Configuration Register 0
   type WPCR0_Register is record
      UIX4           : WPCR0_UIX4_Field := 16#0#;
      --  Unit Interval multiplied by 4
      SWCL           : Boolean := False;
      --  Swap Clock Lane pins
      SWDL           : WPCR0_SWDL_Field := (As_Array => False, Val => 16#0#);
      --  Swap Data Lane 0 pins
      HSICL          : Boolean := False;
      --  Invert Hight-Speed data signal on Clock Lane
      HSIDL          : WPCR0_HSIDL_Field := (As_Array => False, Val => 16#0#);
      --  Invert the Hight-Speed data signal on Data Lane 0
      FTXSMCL        : Boolean := False;
      --  Force in TX Stop Mode the Clock Lane
      FTXSMDL        : Boolean := False;
      --  Force in TX Stop Mode the Data Lanes
      CDOFFDL        : Boolean := False;
      --  Contention Detection OFF on Data Lanes
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  unspecified
      TDDL           : Boolean := False;
      --  Turn Disable Data Lanes
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  unspecified
      PDEN           : Boolean := False;
      --  Pull-Down Enable
      TCLKPREPEN     : Boolean := False;
      --  custom time for tCLK-PREPARE Enable
      TCLKZEROEN     : Boolean := False;
      --  custom time for tCLK-ZERO Enable
      THSPREPEN      : Boolean := False;
      --  custom time for tHS-PREPARE Enable
      THSTRAILEN     : Boolean := False;
      --  custom time for tHS-TRAIL Enable
      THSZEROEN      : Boolean := False;
      --  custom time for tHS-ZERO Enable
      TLPXDEN        : Boolean := False;
      --  custom time for tLPX for Data lanes Enable
      THSEXITEN      : Boolean := False;
      --  custom time for tHS-EXIT Enable
      TLPXCEN        : Boolean := False;
      --  custom time for tLPX for Clock lane Enable
      TCLKPOSTEN     : Boolean := False;
      --  custom time for tCLK-POST Enable
      Reserved_28_31 : HAL.UInt4 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WPCR0_Register use record
      UIX4           at 0 range 0 .. 5;
      SWCL           at 0 range 6 .. 6;
      SWDL           at 0 range 7 .. 8;
      HSICL          at 0 range 9 .. 9;
      HSIDL          at 0 range 10 .. 11;
      FTXSMCL        at 0 range 12 .. 12;
      FTXSMDL        at 0 range 13 .. 13;
      CDOFFDL        at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TDDL           at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      PDEN           at 0 range 18 .. 18;
      TCLKPREPEN     at 0 range 19 .. 19;
      TCLKZEROEN     at 0 range 20 .. 20;
      THSPREPEN      at 0 range 21 .. 21;
      THSTRAILEN     at 0 range 22 .. 22;
      THSZEROEN      at 0 range 23 .. 23;
      TLPXDEN        at 0 range 24 .. 24;
      THSEXITEN      at 0 range 25 .. 25;
      TLPXCEN        at 0 range 26 .. 26;
      TCLKPOSTEN     at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype WPCR1_HSTXDCL_Field is HAL.UInt2;
   subtype WPCR1_HSTXDLL_Field is HAL.UInt2;
   subtype WPCR1_LPSRCL_Field is HAL.UInt2;
   subtype WPCR1_LPSRDL_Field is HAL.UInt2;
   subtype WPCR1_HSTXSRCCL_Field is HAL.UInt2;
   subtype WPCR1_HSTXSRCDL_Field is HAL.UInt2;
   subtype WPCR1_LPRXFT_Field is HAL.UInt2;

   --  DSI Wrapper PHY Configuration Register 1
   type WPCR1_Register is record
      HSTXDCL        : WPCR1_HSTXDCL_Field := 16#0#;
      --  High-Speed Transmission Delay on Clock Lane
      HSTXDLL        : WPCR1_HSTXDLL_Field := 16#0#;
      --  High-Speed Transmission Delay on Data Lanes
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  unspecified
      LPSRCL         : WPCR1_LPSRCL_Field := 16#0#;
      --  Low-Power transmission Slew Rate Compensation on Clock Lane
      LPSRDL         : WPCR1_LPSRDL_Field := 16#0#;
      --  Low-Power transmission Slew Rate Compensation on Data Lanes
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  unspecified
      SDCC           : Boolean := False;
      --  SDD Control
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  unspecified
      HSTXSRCCL      : WPCR1_HSTXSRCCL_Field := 16#0#;
      --  High-Speed Transmission Slew Rate Control on Clock Lane
      HSTXSRCDL      : WPCR1_HSTXSRCDL_Field := 16#0#;
      --  High-Speed Transmission Slew Rate Control on Data Lanes
      Reserved_20_21 : HAL.UInt2 := 16#0#;
      --  unspecified
      FLPRXLPM       : Boolean := False;
      --  Forces LP Receiver in Low-Power Mode
      Reserved_23_24 : HAL.UInt2 := 16#0#;
      --  unspecified
      LPRXFT         : WPCR1_LPRXFT_Field := 16#0#;
      --  Low-Power RX low-pass Filtering Tuning
      Reserved_27_31 : HAL.UInt5 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WPCR1_Register use record
      HSTXDCL        at 0 range 0 .. 1;
      HSTXDLL        at 0 range 2 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      LPSRCL         at 0 range 6 .. 7;
      LPSRDL         at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      SDCC           at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      HSTXSRCCL      at 0 range 16 .. 17;
      HSTXSRCDL      at 0 range 18 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      FLPRXLPM       at 0 range 22 .. 22;
      Reserved_23_24 at 0 range 23 .. 24;
      LPRXFT         at 0 range 25 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype WPCR2_TCLKPREP_Field is HAL.UInt8;
   subtype WPCR2_TCLKZEO_Field is HAL.UInt8;
   subtype WPCR2_THSPREP_Field is HAL.UInt8;
   subtype WPCR2_THSTRAIL_Field is HAL.UInt8;

   --  DSI Wrapper PHY Configuration Register 2
   type WPCR2_Register is record
      TCLKPREP : WPCR2_TCLKPREP_Field := 16#0#;
      --  tCLK-PREPARE
      TCLKZEO  : WPCR2_TCLKZEO_Field := 16#0#;
      --  tCLK-ZERO
      THSPREP  : WPCR2_THSPREP_Field := 16#0#;
      --  tHS-PREPARE
      THSTRAIL : WPCR2_THSTRAIL_Field := 16#0#;
      --  tHSTRAIL
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WPCR2_Register use record
      TCLKPREP at 0 range 0 .. 7;
      TCLKZEO  at 0 range 8 .. 15;
      THSPREP  at 0 range 16 .. 23;
      THSTRAIL at 0 range 24 .. 31;
   end record;

   subtype WPCR3_THSZERO_Field is HAL.UInt8;
   subtype WPCR3_TLPXD_Field is HAL.UInt8;
   subtype WPCR3_THSEXIT_Field is HAL.UInt8;
   subtype WPCR3_TLPXC_Field is HAL.UInt8;

   --  WPCR3
   type WPCR3_Register is record
      THSZERO : WPCR3_THSZERO_Field := 16#0#;
      --  tHS-ZERO
      TLPXD   : WPCR3_TLPXD_Field := 16#0#;
      --  tLPX for Data lanes
      THSEXIT : WPCR3_THSEXIT_Field := 16#0#;
      --  tHSEXIT
      TLPXC   : WPCR3_TLPXC_Field := 16#0#;
      --  tLPXC for Clock lane
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WPCR3_Register use record
      THSZERO at 0 range 0 .. 7;
      TLPXD   at 0 range 8 .. 15;
      THSEXIT at 0 range 16 .. 23;
      TLPXC   at 0 range 24 .. 31;
   end record;

   subtype WPCR4_THSZERO_Field is HAL.UInt8;

   --  DSI Wrapper PHY Configuration Register 4
   type WPCR4_Register is record
      THSZERO       : WPCR4_THSZERO_Field := 16#0#;
      --  tCLK-POST
      Reserved_8_31 : HAL.UInt24 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WPCR4_Register use record
      THSZERO       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype WRPCR_NDIV_Field is HAL.UInt7;
   subtype WRPCR_IDF_Field is HAL.UInt4;
   subtype WRPCR_ODF_Field is HAL.UInt2;

   --  DSI Wrapper Regulator and PLL Control Register
   type WRPCR_Register is record
      PLLEN          : Boolean := False;
      --  PLL Enable
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  unspecified
      NDIV           : WRPCR_NDIV_Field := 16#0#;
      --  PLL Loop Division Factor
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  unspecified
      IDF            : WRPCR_IDF_Field := 16#0#;
      --  PLL Input Division Factor
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  unspecified
      ODF            : WRPCR_ODF_Field := 16#0#;
      --  PLL Output Division Factor
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  unspecified
      REGEN          : Boolean := False;
      --  Regulator Enable
      Reserved_25_31 : HAL.UInt7 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WRPCR_Register use record
      PLLEN          at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      NDIV           at 0 range 2 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      IDF            at 0 range 11 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      ODF            at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      REGEN          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DSI Host
   type DSI_Peripheral is record
      VR      : aliased HAL.UInt32;
      --  DSI Host Version Register
      CR      : aliased CR_Register;
      --  DSI Host Control Register
      CCR     : aliased CCR_Register;
      --  DSI HOST Clock Control Register
      LVCIDR  : aliased LVCIDR_Register;
      --  DSI Host LTDC VCID Register
      LCOLCR  : aliased LCOLCR_Register;
      --  DSI Host LTDC Color Coding Register
      LPCR    : aliased LPCR_Register;
      --  DSI Host LTDC Polarity Configuration Register
      LPMCR   : aliased LPMCR_Register;
      --  DSI Host Low-Power mode Configuration Register
      PCR     : aliased PCR_Register;
      --  DSI Host Protocol Configuration Register
      GVCIDR  : aliased GVCIDR_Register;
      --  DSI Host Generic VCID Register
      MCR     : aliased MCR_Register;
      --  DSI Host mode Configuration Register
      VMCR    : aliased VMCR_Register;
      --  DSI Host Video mode Configuration Register
      VPCR    : aliased VPCR_Register;
      --  DSI Host Video Packet Configuration Register
      VCCR    : aliased VCCR_Register;
      --  DSI Host Video Chunks Configuration Register
      VNPCR   : aliased VNPCR_Register;
      --  DSI Host Video Null Packet Configuration Register
      VHSACR  : aliased VHSACR_Register;
      --  DSI Host Video HSA Configuration Register
      VHBPCR  : aliased VHBPCR_Register;
      --  DSI Host Video HBP Configuration Register
      VLCR    : aliased VLCR_Register;
      --  DSI Host Video Line Configuration Register
      VVSACR  : aliased VVSACR_Register;
      --  DSI Host Video VSA Configuration Register
      VVBPCR  : aliased VVBPCR_Register;
      --  DSI Host Video VBP Configuration Register
      VVFPCR  : aliased VVFPCR_Register;
      --  DSI Host Video VFP Configuration Register
      VVACR   : aliased VVACR_Register;
      --  DSI Host Video VA Configuration Register
      LCCR    : aliased LCCR_Register;
      --  DSI Host LTDC Command Configuration Register
      CMCR    : aliased CMCR_Register;
      --  DSI Host Command mode Configuration Register
      GHCR    : aliased GHCR_Register;
      --  DSI Host Generic Header Configuration Register
      GPDR    : aliased GPDR_Register;
      --  DSI Host Generic Payload Data Register
      GPSR    : aliased GPSR_Register;
      --  DSI Host Generic Packet Status Register
      TCCR0   : aliased TCCR0_Register;
      --  DSI Host Timeout Counter Configuration Register 0
      TCCR1   : aliased TCCR1_Register;
      --  DSI Host Timeout Counter Configuration Register 1
      TCCR2   : aliased TCCR2_Register;
      --  DSI Host Timeout Counter Configuration Register 2
      TCCR3   : aliased TCCR3_Register;
      --  DSI Host Timeout Counter Configuration Register 3
      TCCR4   : aliased TCCR4_Register;
      --  DSI Host Timeout Counter Configuration Register 4
      TCCR5   : aliased TCCR5_Register;
      --  DSI Host Timeout Counter Configuration Register 5
      CLCR    : aliased CLCR_Register;
      --  DSI Host Clock Lane Configuration Register
      CLTCR   : aliased CLTCR_Register;
      --  DSI Host Clock Lane Timer Configuration Register
      DLTRC   : aliased DLTRC_Register;
      --  DSI Host Data Lane Timer Configuration Register
      PCTLR   : aliased PCTLR_Register;
      --  DSI Host PHY Control Register
      PCONFR  : aliased PCONFR_Register;
      --  DSI Host PHY Configuration Register
      PUCR    : aliased PUCR_Register;
      --  DSI Host PHY ULPS Control Register
      PTTCR   : aliased PTTCR_Register;
      --  DSI Host PHY TX Triggers Configuration Register
      PSR     : aliased PSR_Register;
      --  DSI Host PHY Status Register
      ISR0    : aliased ISR0_Register;
      --  DSI Host Interrupt & Status Register 0
      ISR1    : aliased ISR1_Register;
      --  DSI Host Interrupt & Status Register 1
      IER0    : aliased IER0_Register;
      --  DSI Host Interrupt Enable Register 0
      IER1    : aliased IER1_Register;
      --  DSI Host Interrupt Enable Register 1
      FIR0    : aliased FIR0_Register;
      --  DSI Host Force Interrupt Register 0
      FIR1    : aliased FIR1_Register;
      --  DSI Host Force Interrupt Register 1
      VSCR    : aliased VSCR_Register;
      --  DSI Host Video Shadow Control Register
      LCVCIDR : aliased LCVCIDR_Register;
      --  DSI Host LTDC Current VCID Register
      LCCCR   : aliased LCCCR_Register;
      --  DSI Host LTDC Current Color Coding Register
      LPMCCR  : aliased LPMCCR_Register;
      --  DSI Host Low-Power mode Current Configuration Register
      VMCCR   : aliased VMCCR_Register;
      --  DSI Host Video mode Current Configuration Register
      VPCCR   : aliased VPCCR_Register;
      --  DSI Host Video Packet Current Configuration Register
      VCCCR   : aliased VCCCR_Register;
      --  DSI Host Video Chunks Current Configuration Register
      VNPCCR  : aliased VNPCCR_Register;
      --  DSI Host Video Null Packet Current Configuration Register
      VHSACCR : aliased VHSACCR_Register;
      --  DSI Host Video HSA Current Configuration Register
      VHBPCCR : aliased VHBPCCR_Register;
      --  DSI Host Video HBP Current Configuration Register
      VLCCR   : aliased VLCCR_Register;
      --  DSI Host Video Line Current Configuration Register
      VVSACCR : aliased VVSACCR_Register;
      --  DSI Host Video VSA Current Configuration Register
      VVBPCCR : aliased VVBPCCR_Register;
      --  DSI Host Video VBP Current Configuration Register
      VVFPCCR : aliased VVFPCCR_Register;
      --  DSI Host Video VFP Current Configuration Register
      VVACCR  : aliased VVACCR_Register;
      --  DSI Host Video VA Current Configuration Register
      WCFGR   : aliased WCFGR_Register;
      --  DSI Wrapper Configuration Register
      WCR     : aliased WCR_Register;
      --  DSI Wrapper Control Register
      WIER    : aliased WIER_Register;
      --  DSI Wrapper Interrupt Enable Register
      WISR    : aliased WISR_Register;
      --  DSI Wrapper Interrupt & Status Register
      WIFCR   : aliased WIFCR_Register;
      --  DSI Wrapper Interrupt Flag Clear Register
      WPCR0   : aliased WPCR0_Register;
      --  DSI Wrapper PHY Configuration Register 0
      WPCR1   : aliased WPCR1_Register;
      --  DSI Wrapper PHY Configuration Register 1
      WPCR2   : aliased WPCR2_Register;
      --  DSI Wrapper PHY Configuration Register 2
      WPCR3   : aliased WPCR3_Register;
      --  WPCR3
      WPCR4   : aliased WPCR4_Register;
      --  DSI Wrapper PHY Configuration Register 4
      WRPCR   : aliased WRPCR_Register;
      --  DSI Wrapper Regulator and PLL Control Register
   end record
     with Volatile;

   for DSI_Peripheral use record
      VR      at 16#0# range 0 .. 31;
      CR      at 16#4# range 0 .. 31;
      CCR     at 16#8# range 0 .. 31;
      LVCIDR  at 16#C# range 0 .. 31;
      LCOLCR  at 16#10# range 0 .. 31;
      LPCR    at 16#14# range 0 .. 31;
      LPMCR   at 16#18# range 0 .. 31;
      PCR     at 16#2C# range 0 .. 31;
      GVCIDR  at 16#30# range 0 .. 31;
      MCR     at 16#34# range 0 .. 31;
      VMCR    at 16#38# range 0 .. 31;
      VPCR    at 16#3C# range 0 .. 31;
      VCCR    at 16#40# range 0 .. 31;
      VNPCR   at 16#44# range 0 .. 31;
      VHSACR  at 16#48# range 0 .. 31;
      VHBPCR  at 16#4C# range 0 .. 31;
      VLCR    at 16#50# range 0 .. 31;
      VVSACR  at 16#54# range 0 .. 31;
      VVBPCR  at 16#58# range 0 .. 31;
      VVFPCR  at 16#5C# range 0 .. 31;
      VVACR   at 16#60# range 0 .. 31;
      LCCR    at 16#64# range 0 .. 31;
      CMCR    at 16#68# range 0 .. 31;
      GHCR    at 16#6C# range 0 .. 31;
      GPDR    at 16#70# range 0 .. 31;
      GPSR    at 16#74# range 0 .. 31;
      TCCR0   at 16#78# range 0 .. 31;
      TCCR1   at 16#7C# range 0 .. 31;
      TCCR2   at 16#80# range 0 .. 31;
      TCCR3   at 16#84# range 0 .. 31;
      TCCR4   at 16#88# range 0 .. 31;
      TCCR5   at 16#8C# range 0 .. 31;
      CLCR    at 16#94# range 0 .. 31;
      CLTCR   at 16#98# range 0 .. 31;
      DLTRC   at 16#9C# range 0 .. 31;
      PCTLR   at 16#A0# range 0 .. 31;
      PCONFR  at 16#A4# range 0 .. 31;
      PUCR    at 16#A8# range 0 .. 31;
      PTTCR   at 16#AC# range 0 .. 31;
      PSR     at 16#B0# range 0 .. 31;
      ISR0    at 16#BC# range 0 .. 31;
      ISR1    at 16#C0# range 0 .. 31;
      IER0    at 16#C4# range 0 .. 31;
      IER1    at 16#C8# range 0 .. 31;
      FIR0    at 16#D8# range 0 .. 31;
      FIR1    at 16#DC# range 0 .. 31;
      VSCR    at 16#100# range 0 .. 31;
      LCVCIDR at 16#10C# range 0 .. 31;
      LCCCR   at 16#110# range 0 .. 31;
      LPMCCR  at 16#118# range 0 .. 31;
      VMCCR   at 16#138# range 0 .. 31;
      VPCCR   at 16#13C# range 0 .. 31;
      VCCCR   at 16#140# range 0 .. 31;
      VNPCCR  at 16#144# range 0 .. 31;
      VHSACCR at 16#148# range 0 .. 31;
      VHBPCCR at 16#14C# range 0 .. 31;
      VLCCR   at 16#150# range 0 .. 31;
      VVSACCR at 16#154# range 0 .. 31;
      VVBPCCR at 16#158# range 0 .. 31;
      VVFPCCR at 16#15C# range 0 .. 31;
      VVACCR  at 16#160# range 0 .. 31;
      WCFGR   at 16#400# range 0 .. 31;
      WCR     at 16#404# range 0 .. 31;
      WIER    at 16#408# range 0 .. 31;
      WISR    at 16#40C# range 0 .. 31;
      WIFCR   at 16#410# range 0 .. 31;
      WPCR0   at 16#418# range 0 .. 31;
      WPCR1   at 16#41C# range 0 .. 31;
      WPCR2   at 16#420# range 0 .. 31;
      WPCR3   at 16#424# range 0 .. 31;
      WPCR4   at 16#428# range 0 .. 31;
      WRPCR   at 16#430# range 0 .. 31;
   end record;

   --  DSI Host
   DSI_Periph : aliased DSI_Peripheral
     with Import, Address => DSI_Base;

end STM32_SVD.DSI;
