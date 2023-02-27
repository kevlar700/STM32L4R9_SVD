pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.USB_OTG_FS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DCFG_DSPD_Field is HAL.UInt2;
   subtype DCFG_DAD_Field is HAL.UInt7;
   subtype DCFG_PFIVL_Field is HAL.UInt2;

   --  OTG_FS device configuration register (OTG_FS_DCFG)
   type DCFG_Register is record
      DSPD           : DCFG_DSPD_Field := 16#0#;
      --  Device speed
      NZLSOHSK       : Boolean := False;
      --  Non-zero-length status OUT handshake
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  unspecified
      DAD            : DCFG_DAD_Field := 16#0#;
      --  Device address
      PFIVL          : DCFG_PFIVL_Field := 16#0#;
      --  Periodic frame interval
      Reserved_13_31 : HAL.UInt19 := 16#1100#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCFG_Register use record
      DSPD           at 0 range 0 .. 1;
      NZLSOHSK       at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      DAD            at 0 range 4 .. 10;
      PFIVL          at 0 range 11 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype DCTL_TCTL_Field is HAL.UInt3;

   --  OTG_FS device control register (OTG_FS_DCTL)
   type DCTL_Register is record
      RWUSIG         : Boolean := False;
      --  Remote wakeup signaling
      SDIS           : Boolean := False;
      --  Soft disconnect
      GINSTS         : Boolean := False;
      --  Read-only. Global IN NAK status
      GONSTS         : Boolean := False;
      --  Read-only. Global OUT NAK status
      TCTL           : DCTL_TCTL_Field := 16#0#;
      --  Test control
      SGINAK         : Boolean := False;
      --  Set global IN NAK
      CGINAK         : Boolean := False;
      --  Clear global IN NAK
      SGONAK         : Boolean := False;
      --  Set global OUT NAK
      CGONAK         : Boolean := False;
      --  Clear global OUT NAK
      POPRGDNE       : Boolean := False;
      --  Power-on programming done
      Reserved_12_31 : HAL.UInt20 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCTL_Register use record
      RWUSIG         at 0 range 0 .. 0;
      SDIS           at 0 range 1 .. 1;
      GINSTS         at 0 range 2 .. 2;
      GONSTS         at 0 range 3 .. 3;
      TCTL           at 0 range 4 .. 6;
      SGINAK         at 0 range 7 .. 7;
      CGINAK         at 0 range 8 .. 8;
      SGONAK         at 0 range 9 .. 9;
      CGONAK         at 0 range 10 .. 10;
      POPRGDNE       at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DSTS_ENUMSPD_Field is HAL.UInt2;
   subtype DSTS_FNSOF_Field is HAL.UInt14;

   --  OTG_FS device status register (OTG_FS_DSTS)
   type DSTS_Register is record
      SUSPSTS        : Boolean;
      --  Read-only. Suspend status
      ENUMSPD        : DSTS_ENUMSPD_Field;
      --  Read-only. Enumerated speed
      EERR           : Boolean;
      --  Read-only. Erratic error
      Reserved_4_7   : HAL.UInt4;
      --  unspecified
      FNSOF          : DSTS_FNSOF_Field;
      --  Read-only. Frame number of the received SOF
      Reserved_22_31 : HAL.UInt10;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSTS_Register use record
      SUSPSTS        at 0 range 0 .. 0;
      ENUMSPD        at 0 range 1 .. 2;
      EERR           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      FNSOF          at 0 range 8 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  OTG_FS device IN endpoint common interrupt mask register
   --  (OTG_FS_DIEPMSK)
   type DIEPMSK_Register is record
      XFRCM         : Boolean := False;
      --  Transfer completed interrupt mask
      EPDM          : Boolean := False;
      --  Endpoint disabled interrupt mask
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  unspecified
      TOM           : Boolean := False;
      --  Timeout condition mask (Non-isochronous endpoints)
      ITTXFEMSK     : Boolean := False;
      --  IN token received when TxFIFO empty mask
      INEPNMM       : Boolean := False;
      --  IN token received with EP mismatch mask
      INEPNEM       : Boolean := False;
      --  IN endpoint NAK effective mask
      Reserved_7_31 : HAL.UInt25 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPMSK_Register use record
      XFRCM         at 0 range 0 .. 0;
      EPDM          at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      TOM           at 0 range 3 .. 3;
      ITTXFEMSK     at 0 range 4 .. 4;
      INEPNMM       at 0 range 5 .. 5;
      INEPNEM       at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  OTG_FS device OUT endpoint common interrupt mask register
   --  (OTG_FS_DOEPMSK)
   type DOEPMSK_Register is record
      XFRCM         : Boolean := False;
      --  Transfer completed interrupt mask
      EPDM          : Boolean := False;
      --  Endpoint disabled interrupt mask
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  unspecified
      STUPM         : Boolean := False;
      --  SETUP phase done mask
      OTEPDM        : Boolean := False;
      --  OUT token received when endpoint disabled mask
      Reserved_5_31 : HAL.UInt27 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPMSK_Register use record
      XFRCM         at 0 range 0 .. 0;
      EPDM          at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      STUPM         at 0 range 3 .. 3;
      OTEPDM        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DAINT_IEPINT_Field is HAL.UInt16;
   subtype DAINT_OEPINT_Field is HAL.UInt16;

   --  OTG_FS device all endpoints interrupt register (OTG_FS_DAINT)
   type DAINT_Register is record
      IEPINT : DAINT_IEPINT_Field;
      --  Read-only. IN endpoint interrupt bits
      OEPINT : DAINT_OEPINT_Field;
      --  Read-only. OUT endpoint interrupt bits
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAINT_Register use record
      IEPINT at 0 range 0 .. 15;
      OEPINT at 0 range 16 .. 31;
   end record;

   subtype DAINTMSK_IEPM_Field is HAL.UInt16;
   subtype DAINTMSK_OEPINT_Field is HAL.UInt16;

   --  OTG_FS all endpoints interrupt mask register (OTG_FS_DAINTMSK)
   type DAINTMSK_Register is record
      IEPM   : DAINTMSK_IEPM_Field := 16#0#;
      --  IN EP interrupt mask bits
      OEPINT : DAINTMSK_OEPINT_Field := 16#0#;
      --  OUT endpoint interrupt bits
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAINTMSK_Register use record
      IEPM   at 0 range 0 .. 15;
      OEPINT at 0 range 16 .. 31;
   end record;

   subtype DVBUSDIS_VBUSDT_Field is HAL.UInt16;

   --  OTG_FS device VBUS discharge time register
   type DVBUSDIS_Register is record
      VBUSDT         : DVBUSDIS_VBUSDT_Field := 16#17D7#;
      --  Device VBUS discharge time
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DVBUSDIS_Register use record
      VBUSDT         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DVBUSPULSE_DVBUSP_Field is HAL.UInt12;

   --  OTG_FS device VBUS pulsing time register
   type DVBUSPULSE_Register is record
      DVBUSP         : DVBUSPULSE_DVBUSP_Field := 16#5B8#;
      --  Device VBUS pulsing time
      Reserved_12_31 : HAL.UInt20 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DVBUSPULSE_Register use record
      DVBUSP         at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DIEPEMPMSK_INEPTXFEM_Field is HAL.UInt16;

   --  OTG_FS device IN endpoint FIFO empty interrupt mask register
   type DIEPEMPMSK_Register is record
      INEPTXFEM      : DIEPEMPMSK_INEPTXFEM_Field := 16#0#;
      --  IN EP Tx FIFO empty interrupt mask bits
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPEMPMSK_Register use record
      INEPTXFEM      at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DIEPCTL0_MPSIZ_Field is HAL.UInt2;
   subtype DIEPCTL0_EPTYP_Field is HAL.UInt2;
   subtype DIEPCTL0_TXFNUM_Field is HAL.UInt4;

   --  OTG_FS device control IN endpoint 0 control register (OTG_FS_DIEPCTL0)
   type DIEPCTL0_Register is record
      MPSIZ          : DIEPCTL0_MPSIZ_Field := 16#0#;
      --  Maximum packet size
      Reserved_2_14  : HAL.UInt13 := 16#0#;
      --  unspecified
      USBAEP         : Boolean := False;
      --  Read-only. USB active endpoint
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  unspecified
      NAKSTS         : Boolean := False;
      --  Read-only. NAK status
      EPTYP          : DIEPCTL0_EPTYP_Field := 16#0#;
      --  Read-only. Endpoint type
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  unspecified
      STALL          : Boolean := False;
      --  STALL handshake
      TXFNUM         : DIEPCTL0_TXFNUM_Field := 16#0#;
      --  TxFIFO number
      CNAK           : Boolean := False;
      --  Write-only. Clear NAK
      SNAK           : Boolean := False;
      --  Write-only. Set NAK
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  unspecified
      EPDIS          : Boolean := False;
      --  Read-only. Endpoint disable
      EPENA          : Boolean := False;
      --  Read-only. Endpoint enable
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPCTL0_Register use record
      MPSIZ          at 0 range 0 .. 1;
      Reserved_2_14  at 0 range 2 .. 14;
      USBAEP         at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      TXFNUM         at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   --  device endpoint-x interrupt register
   type DIEPINT_Register is record
      XFRC          : Boolean := False;
      --  XFRC
      EPDISD        : Boolean := False;
      --  EPDISD
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  unspecified
      TOC           : Boolean := False;
      --  TOC
      ITTXFE        : Boolean := False;
      --  ITTXFE
      Reserved_5_5  : HAL.Bit := 16#0#;
      --  unspecified
      INEPNE        : Boolean := False;
      --  INEPNE
      TXFE          : Boolean := True;
      --  Read-only. TXFE
      Reserved_8_31 : HAL.UInt24 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPINT_Register use record
      XFRC          at 0 range 0 .. 0;
      EPDISD        at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      TOC           at 0 range 3 .. 3;
      ITTXFE        at 0 range 4 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      INEPNE        at 0 range 6 .. 6;
      TXFE          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DIEPTSIZ0_XFRSIZ_Field is HAL.UInt7;
   subtype DIEPTSIZ0_PKTCNT_Field is HAL.UInt2;

   --  device endpoint-0 transfer size register
   type DIEPTSIZ0_Register is record
      XFRSIZ         : DIEPTSIZ0_XFRSIZ_Field := 16#0#;
      --  Transfer size
      Reserved_7_18  : HAL.UInt12 := 16#0#;
      --  unspecified
      PKTCNT         : DIEPTSIZ0_PKTCNT_Field := 16#0#;
      --  Packet count
      Reserved_21_31 : HAL.UInt11 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPTSIZ0_Register use record
      XFRSIZ         at 0 range 0 .. 6;
      Reserved_7_18  at 0 range 7 .. 18;
      PKTCNT         at 0 range 19 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype DTXFSTS_INEPTFSAV_Field is HAL.UInt16;

   --  OTG_FS device IN endpoint transmit FIFO status register
   type DTXFSTS_Register is record
      INEPTFSAV      : DTXFSTS_INEPTFSAV_Field;
      --  Read-only. IN endpoint TxFIFO space available
      Reserved_16_31 : HAL.UInt16;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTXFSTS_Register use record
      INEPTFSAV      at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DIEPCTL1_MPSIZ_Field is HAL.UInt11;
   subtype DIEPCTL1_EPTYP_Field is HAL.UInt2;
   subtype DIEPCTL1_TXFNUM_Field is HAL.UInt4;

   --  OTG device endpoint-1 control register
   type DIEPCTL1_Register is record
      MPSIZ          : DIEPCTL1_MPSIZ_Field := 16#0#;
      --  MPSIZ
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  unspecified
      USBAEP         : Boolean := False;
      --  USBAEP
      EONUM_DPID     : Boolean := False;
      --  Read-only. EONUM/DPID
      NAKSTS         : Boolean := False;
      --  Read-only. NAKSTS
      EPTYP          : DIEPCTL1_EPTYP_Field := 16#0#;
      --  EPTYP
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  unspecified
      Stall          : Boolean := False;
      --  Stall
      TXFNUM         : DIEPCTL1_TXFNUM_Field := 16#0#;
      --  TXFNUM
      CNAK           : Boolean := False;
      --  Write-only. CNAK
      SNAK           : Boolean := False;
      --  Write-only. SNAK
      SD0PID_SEVNFRM : Boolean := False;
      --  Write-only. SD0PID/SEVNFRM
      SODDFRM_SD1PID : Boolean := False;
      --  Write-only. SODDFRM/SD1PID
      EPDIS          : Boolean := False;
      --  EPDIS
      EPENA          : Boolean := False;
      --  EPENA
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPCTL1_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM_DPID     at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      Stall          at 0 range 21 .. 21;
      TXFNUM         at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SD0PID_SEVNFRM at 0 range 28 .. 28;
      SODDFRM_SD1PID at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype DIEPTSIZ_XFRSIZ_Field is HAL.UInt19;
   subtype DIEPTSIZ_PKTCNT_Field is HAL.UInt10;
   subtype DIEPTSIZ_MCNT_Field is HAL.UInt2;

   --  device endpoint-1 transfer size register
   type DIEPTSIZ_Register is record
      XFRSIZ         : DIEPTSIZ_XFRSIZ_Field := 16#0#;
      --  Transfer size
      PKTCNT         : DIEPTSIZ_PKTCNT_Field := 16#0#;
      --  Packet count
      MCNT           : DIEPTSIZ_MCNT_Field := 16#0#;
      --  Multi count
      Reserved_31_31 : HAL.Bit := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPTSIZ_Register use record
      XFRSIZ         at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      MCNT           at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DIEPCTL_MPSIZ_Field is HAL.UInt11;
   subtype DIEPCTL_EPTYP_Field is HAL.UInt2;
   subtype DIEPCTL_TXFNUM_Field is HAL.UInt4;

   --  OTG device endpoint-2 control register
   type DIEPCTL_Register is record
      MPSIZ          : DIEPCTL_MPSIZ_Field := 16#0#;
      --  MPSIZ
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  unspecified
      USBAEP         : Boolean := False;
      --  USBAEP
      EONUM_DPID     : Boolean := False;
      --  Read-only. EONUM/DPID
      NAKSTS         : Boolean := False;
      --  Read-only. NAKSTS
      EPTYP          : DIEPCTL_EPTYP_Field := 16#0#;
      --  EPTYP
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  unspecified
      Stall          : Boolean := False;
      --  Stall
      TXFNUM         : DIEPCTL_TXFNUM_Field := 16#0#;
      --  TXFNUM
      CNAK           : Boolean := False;
      --  Write-only. CNAK
      SNAK           : Boolean := False;
      --  Write-only. SNAK
      SD0PID_SEVNFRM : Boolean := False;
      --  Write-only. SD0PID/SEVNFRM
      SODDFRM        : Boolean := False;
      --  Write-only. SODDFRM
      EPDIS          : Boolean := False;
      --  EPDIS
      EPENA          : Boolean := False;
      --  EPENA
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPCTL_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM_DPID     at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      Stall          at 0 range 21 .. 21;
      TXFNUM         at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SD0PID_SEVNFRM at 0 range 28 .. 28;
      SODDFRM        at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype DOEPCTL0_MPSIZ_Field is HAL.UInt2;
   subtype DOEPCTL0_EPTYP_Field is HAL.UInt2;

   --  device endpoint-0 control register
   type DOEPCTL0_Register is record
      MPSIZ          : DOEPCTL0_MPSIZ_Field := 16#0#;
      --  Read-only. MPSIZ
      Reserved_2_14  : HAL.UInt13 := 16#0#;
      --  unspecified
      USBAEP         : Boolean := True;
      --  Read-only. USBAEP
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  unspecified
      NAKSTS         : Boolean := False;
      --  Read-only. NAKSTS
      EPTYP          : DOEPCTL0_EPTYP_Field := 16#0#;
      --  Read-only. EPTYP
      SNPM           : Boolean := False;
      --  SNPM
      Stall          : Boolean := False;
      --  Stall
      Reserved_22_25 : HAL.UInt4 := 16#0#;
      --  unspecified
      CNAK           : Boolean := False;
      --  Write-only. CNAK
      SNAK           : Boolean := False;
      --  Write-only. SNAK
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  unspecified
      EPDIS          : Boolean := False;
      --  Read-only. EPDIS
      EPENA          : Boolean := False;
      --  Write-only. EPENA
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPCTL0_Register use record
      MPSIZ          at 0 range 0 .. 1;
      Reserved_2_14  at 0 range 2 .. 14;
      USBAEP         at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      SNPM           at 0 range 20 .. 20;
      Stall          at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   --  device endpoint-0 interrupt register
   type DOEPINT_Register is record
      XFRC          : Boolean := False;
      --  XFRC
      EPDISD        : Boolean := False;
      --  EPDISD
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  unspecified
      STUP          : Boolean := False;
      --  STUP
      OTEPDIS       : Boolean := False;
      --  OTEPDIS
      Reserved_5_5  : HAL.Bit := 16#0#;
      --  unspecified
      B2BSTUP       : Boolean := False;
      --  B2BSTUP
      Reserved_7_31 : HAL.UInt25 := 16#1#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPINT_Register use record
      XFRC          at 0 range 0 .. 0;
      EPDISD        at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      STUP          at 0 range 3 .. 3;
      OTEPDIS       at 0 range 4 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      B2BSTUP       at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype DOEPTSIZ0_XFRSIZ_Field is HAL.UInt7;
   subtype DOEPTSIZ0_STUPCNT_Field is HAL.UInt2;

   --  device OUT endpoint-0 transfer size register
   type DOEPTSIZ0_Register is record
      XFRSIZ         : DOEPTSIZ0_XFRSIZ_Field := 16#0#;
      --  Transfer size
      Reserved_7_18  : HAL.UInt12 := 16#0#;
      --  unspecified
      PKTCNT         : Boolean := False;
      --  Packet count
      Reserved_20_28 : HAL.UInt9 := 16#0#;
      --  unspecified
      STUPCNT        : DOEPTSIZ0_STUPCNT_Field := 16#0#;
      --  SETUP packet count
      Reserved_31_31 : HAL.Bit := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPTSIZ0_Register use record
      XFRSIZ         at 0 range 0 .. 6;
      Reserved_7_18  at 0 range 7 .. 18;
      PKTCNT         at 0 range 19 .. 19;
      Reserved_20_28 at 0 range 20 .. 28;
      STUPCNT        at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DOEPCTL_MPSIZ_Field is HAL.UInt11;
   subtype DOEPCTL_EPTYP_Field is HAL.UInt2;

   --  device endpoint-1 control register
   type DOEPCTL_Register is record
      MPSIZ          : DOEPCTL_MPSIZ_Field := 16#0#;
      --  MPSIZ
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  unspecified
      USBAEP         : Boolean := False;
      --  USBAEP
      EONUM_DPID     : Boolean := False;
      --  Read-only. EONUM/DPID
      NAKSTS         : Boolean := False;
      --  Read-only. NAKSTS
      EPTYP          : DOEPCTL_EPTYP_Field := 16#0#;
      --  EPTYP
      SNPM           : Boolean := False;
      --  SNPM
      Stall          : Boolean := False;
      --  Stall
      Reserved_22_25 : HAL.UInt4 := 16#0#;
      --  unspecified
      CNAK           : Boolean := False;
      --  Write-only. CNAK
      SNAK           : Boolean := False;
      --  Write-only. SNAK
      SD0PID_SEVNFRM : Boolean := False;
      --  Write-only. SD0PID/SEVNFRM
      SODDFRM        : Boolean := False;
      --  Write-only. SODDFRM
      EPDIS          : Boolean := False;
      --  EPDIS
      EPENA          : Boolean := False;
      --  EPENA
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPCTL_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM_DPID     at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      SNPM           at 0 range 20 .. 20;
      Stall          at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SD0PID_SEVNFRM at 0 range 28 .. 28;
      SODDFRM        at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype DOEPTSIZ_XFRSIZ_Field is HAL.UInt19;
   subtype DOEPTSIZ_PKTCNT_Field is HAL.UInt10;
   subtype DOEPTSIZ_RXDPID_STUPCNT_Field is HAL.UInt2;

   --  device OUT endpoint-1 transfer size register
   type DOEPTSIZ_Register is record
      XFRSIZ         : DOEPTSIZ_XFRSIZ_Field := 16#0#;
      --  Transfer size
      PKTCNT         : DOEPTSIZ_PKTCNT_Field := 16#0#;
      --  Packet count
      RXDPID_STUPCNT : DOEPTSIZ_RXDPID_STUPCNT_Field := 16#0#;
      --  Received data PID/SETUP packet count
      Reserved_31_31 : HAL.Bit := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPTSIZ_Register use record
      XFRSIZ         at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      RXDPID_STUPCNT at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  OTG_FS control and status register (OTG_FS_GOTGCTL)
   type GOTGCTL_Register is record
      SRQSCS         : Boolean := False;
      --  Read-only. Session request success
      SRQ            : Boolean := False;
      --  Session request
      VBVALOEN       : Boolean := False;
      --  VBus valid override enable
      VBVALOVAL      : Boolean := False;
      --  VBus valid override value
      AVALOEN        : Boolean := False;
      --  A-peripheral session valid override enable
      AVALOVAL       : Boolean := False;
      --  A-peripheral session valid override value
      BVALOEN        : Boolean := False;
      --  B-peripheral session valid override enable
      BVALOVAL       : Boolean := False;
      --  B-peripheral session valid override value
      HNGSCS         : Boolean := False;
      --  Read-only. Host negotiation success
      HNPRQ          : Boolean := False;
      --  HNP request
      HSHNPEN        : Boolean := False;
      --  Host set HNP enable
      DHNPEN         : Boolean := True;
      --  Device HNP enabled
      EHEN           : Boolean := False;
      --  Embedded host enable
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  unspecified
      CIDSTS         : Boolean := False;
      --  Read-only. Connector ID status
      DBCT           : Boolean := False;
      --  Read-only. Long/short debounce time
      ASVLD          : Boolean := False;
      --  Read-only. A-session valid
      BSVLD          : Boolean := False;
      --  Read-only. B-session valid
      CURMOD         : Boolean := False;
      --  Read-only. B-OTG version select
      Reserved_21_31 : HAL.UInt11 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GOTGCTL_Register use record
      SRQSCS         at 0 range 0 .. 0;
      SRQ            at 0 range 1 .. 1;
      VBVALOEN       at 0 range 2 .. 2;
      VBVALOVAL      at 0 range 3 .. 3;
      AVALOEN        at 0 range 4 .. 4;
      AVALOVAL       at 0 range 5 .. 5;
      BVALOEN        at 0 range 6 .. 6;
      BVALOVAL       at 0 range 7 .. 7;
      HNGSCS         at 0 range 8 .. 8;
      HNPRQ          at 0 range 9 .. 9;
      HSHNPEN        at 0 range 10 .. 10;
      DHNPEN         at 0 range 11 .. 11;
      EHEN           at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      CIDSTS         at 0 range 16 .. 16;
      DBCT           at 0 range 17 .. 17;
      ASVLD          at 0 range 18 .. 18;
      BSVLD          at 0 range 19 .. 19;
      CURMOD         at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  OTG_FS interrupt register (OTG_FS_GOTGINT)
   type GOTGINT_Register is record
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  unspecified
      SEDET          : Boolean := False;
      --  Session end detected
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  unspecified
      SRSSCHG        : Boolean := False;
      --  Session request success status change
      HNSSCHG        : Boolean := False;
      --  Host negotiation success status change
      Reserved_10_16 : HAL.UInt7 := 16#0#;
      --  unspecified
      HNGDET         : Boolean := False;
      --  Host negotiation detected
      ADTOCHG        : Boolean := False;
      --  A-device timeout change
      DBCDNE         : Boolean := False;
      --  Debounce done
      Reserved_20_31 : HAL.UInt12 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GOTGINT_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      SEDET          at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SRSSCHG        at 0 range 8 .. 8;
      HNSSCHG        at 0 range 9 .. 9;
      Reserved_10_16 at 0 range 10 .. 16;
      HNGDET         at 0 range 17 .. 17;
      ADTOCHG        at 0 range 18 .. 18;
      DBCDNE         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  OTG_FS AHB configuration register (OTG_FS_GAHBCFG)
   type GAHBCFG_Register is record
      GINTMSK       : Boolean := False;
      --  Global interrupt mask
      Reserved_1_6  : HAL.UInt6 := 16#0#;
      --  unspecified
      TXFELVL       : Boolean := False;
      --  TxFIFO empty level
      PTXFELVL      : Boolean := False;
      --  Periodic TxFIFO empty level
      Reserved_9_31 : HAL.UInt23 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GAHBCFG_Register use record
      GINTMSK       at 0 range 0 .. 0;
      Reserved_1_6  at 0 range 1 .. 6;
      TXFELVL       at 0 range 7 .. 7;
      PTXFELVL      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype GUSBCFG_TOCAL_Field is HAL.UInt3;
   subtype GUSBCFG_TRDT_Field is HAL.UInt4;

   --  OTG_FS USB configuration register (OTG_FS_GUSBCFG)
   type GUSBCFG_Register is record
      TOCAL          : GUSBCFG_TOCAL_Field := 16#0#;
      --  FS timeout calibration
      Reserved_3_5   : HAL.UInt3 := 16#0#;
      --  unspecified
      PHYSEL         : Boolean := False;
      --  Read-only. Should be 1 (Full speed) as HS is not supported
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  unspecified
      SRPCAP         : Boolean := False;
      --  SRP-capable
      HNPCAP         : Boolean := True;
      --  HNP-capable
      TRDT           : GUSBCFG_TRDT_Field := 16#2#;
      --  USB turnaround time
      Reserved_14_28 : HAL.UInt15 := 16#0#;
      --  unspecified
      FHMOD          : Boolean := False;
      --  Force host mode
      FDMOD          : Boolean := False;
      --  Force device mode
      CTXPKT         : Boolean := False;
      --  Corrupt Tx packet (debug purposes only)
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GUSBCFG_Register use record
      TOCAL          at 0 range 0 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      PHYSEL         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SRPCAP         at 0 range 8 .. 8;
      HNPCAP         at 0 range 9 .. 9;
      TRDT           at 0 range 10 .. 13;
      Reserved_14_28 at 0 range 14 .. 28;
      FHMOD          at 0 range 29 .. 29;
      FDMOD          at 0 range 30 .. 30;
      CTXPKT         at 0 range 31 .. 31;
   end record;

   subtype GRSTCTL_TXFNUM_Field is HAL.UInt5;

   --  OTG_FS reset register (OTG_FS_GRSTCTL)
   type GRSTCTL_Register is record
      CSRST          : Boolean := False;
      --  Core soft reset
      PSRST          : Boolean := False;
      --  Partial soft reset
      FCRST          : Boolean := False;
      --  Host frame counter reset
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  unspecified
      RXFFLSH        : Boolean := False;
      --  Rx FIFO flush
      TXFFLSH        : Boolean := False;
      --  Tx FIFO flush
      TXFNUM         : GRSTCTL_TXFNUM_Field := 16#0#;
      --  Tx FIFO number
      Reserved_11_30 : HAL.UInt20 := 16#40000#;
      --  unspecified
      AHBIDL         : Boolean := False;
      --  Read-only. AHB master idle
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GRSTCTL_Register use record
      CSRST          at 0 range 0 .. 0;
      PSRST          at 0 range 1 .. 1;
      FCRST          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      RXFFLSH        at 0 range 4 .. 4;
      TXFFLSH        at 0 range 5 .. 5;
      TXFNUM         at 0 range 6 .. 10;
      Reserved_11_30 at 0 range 11 .. 30;
      AHBIDL         at 0 range 31 .. 31;
   end record;

   --  OTG_FS core interrupt register (OTG_FS_GINTSTS)
   type GINTSTS_Register is record
      CMOD               : Boolean := False;
      --  Read-only. Current mode of operation
      MMIS               : Boolean := False;
      --  Mode mismatch interrupt
      OTGINT             : Boolean := False;
      --  Read-only. OTG interrupt
      SOF                : Boolean := False;
      --  Start of frame
      RXFLVL             : Boolean := False;
      --  Read-only. Rx FIFO non-empty
      NPTXFE             : Boolean := True;
      --  Read-only. Non-periodic Tx FIFO empty
      GINAKEFF           : Boolean := False;
      --  Read-only. Global IN non-periodic NAK effective
      GOUTNAKEFF         : Boolean := False;
      --  Read-only. Global OUT NAK effective
      Reserved_8_9       : HAL.UInt2 := 16#0#;
      --  unspecified
      ESUSP              : Boolean := False;
      --  Early suspend
      USBSUSP            : Boolean := False;
      --  USB suspend
      USBRST             : Boolean := False;
      --  USB reset
      ENUMDNE            : Boolean := False;
      --  Enumeration done
      ISOODRP            : Boolean := False;
      --  Isochronous OUT packet dropped interrupt
      EOPF               : Boolean := False;
      --  End of periodic frame interrupt
      Reserved_16_17     : HAL.UInt2 := 16#0#;
      --  unspecified
      IEPINT             : Boolean := False;
      --  Read-only. IN endpoint interrupt
      OEPINT             : Boolean := False;
      --  Read-only. OUT endpoint interrupt
      IISOIXFR           : Boolean := False;
      --  Incomplete isochronous IN transfer
      IPXFR_INCOMPISOOUT : Boolean := False;
      --  Incomplete periodic transfer(Host mode)/Incomplete isochronous OUT
      --  transfer(Device mode)
      Reserved_22_22     : HAL.Bit := 16#0#;
      --  unspecified
      RSTDET             : Boolean := False;
      --  Reset detected interrupt
      HPRTINT            : Boolean := False;
      --  Read-only. Host port interrupt
      HCINT              : Boolean := False;
      --  Read-only. Host channels interrupt
      PTXFE              : Boolean := True;
      --  Read-only. Periodic Tx FIFO empty
      LPMINT             : Boolean := False;
      --  LPM Interrupt
      CIDSCHG            : Boolean := False;
      --  Connector ID status change
      DISCINT            : Boolean := False;
      --  Disconnect detected interrupt
      SRQINT             : Boolean := False;
      --  Session request/new session detected interrupt
      WKUPINT            : Boolean := False;
      --  Resume/remote wakeup detected interrupt
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GINTSTS_Register use record
      CMOD               at 0 range 0 .. 0;
      MMIS               at 0 range 1 .. 1;
      OTGINT             at 0 range 2 .. 2;
      SOF                at 0 range 3 .. 3;
      RXFLVL             at 0 range 4 .. 4;
      NPTXFE             at 0 range 5 .. 5;
      GINAKEFF           at 0 range 6 .. 6;
      GOUTNAKEFF         at 0 range 7 .. 7;
      Reserved_8_9       at 0 range 8 .. 9;
      ESUSP              at 0 range 10 .. 10;
      USBSUSP            at 0 range 11 .. 11;
      USBRST             at 0 range 12 .. 12;
      ENUMDNE            at 0 range 13 .. 13;
      ISOODRP            at 0 range 14 .. 14;
      EOPF               at 0 range 15 .. 15;
      Reserved_16_17     at 0 range 16 .. 17;
      IEPINT             at 0 range 18 .. 18;
      OEPINT             at 0 range 19 .. 19;
      IISOIXFR           at 0 range 20 .. 20;
      IPXFR_INCOMPISOOUT at 0 range 21 .. 21;
      Reserved_22_22     at 0 range 22 .. 22;
      RSTDET             at 0 range 23 .. 23;
      HPRTINT            at 0 range 24 .. 24;
      HCINT              at 0 range 25 .. 25;
      PTXFE              at 0 range 26 .. 26;
      LPMINT             at 0 range 27 .. 27;
      CIDSCHG            at 0 range 28 .. 28;
      DISCINT            at 0 range 29 .. 29;
      SRQINT             at 0 range 30 .. 30;
      WKUPINT            at 0 range 31 .. 31;
   end record;

   --  OTG_FS interrupt mask register (OTG_FS_GINTMSK)
   type GINTMSK_Register is record
      Reserved_0_0     : HAL.Bit := 16#0#;
      --  unspecified
      MMISM            : Boolean := False;
      --  Mode mismatch interrupt mask
      OTGINT           : Boolean := False;
      --  OTG interrupt mask
      SOFM             : Boolean := False;
      --  Start of frame mask
      RXFLVLM          : Boolean := False;
      --  Receive FIFO non-empty mask
      NPTXFEM          : Boolean := False;
      --  Non-periodic Tx FIFO empty mask
      GINAKEFFM        : Boolean := False;
      --  Global non-periodic IN NAK effective mask
      GONAKEFFM        : Boolean := False;
      --  Global OUT NAK effective mask
      Reserved_8_9     : HAL.UInt2 := 16#0#;
      --  unspecified
      ESUSPM           : Boolean := False;
      --  Early suspend mask
      USBSUSPM         : Boolean := False;
      --  USB suspend mask
      USBRST           : Boolean := False;
      --  USB reset mask
      ENUMDNEM         : Boolean := False;
      --  Enumeration done mask
      ISOODRPM         : Boolean := False;
      --  Isochronous OUT packet dropped interrupt mask
      EOPFM            : Boolean := False;
      --  End of periodic frame interrupt mask
      Reserved_16_16   : HAL.Bit := 16#0#;
      --  unspecified
      EPMISM           : Boolean := False;
      --  Endpoint mismatch interrupt mask
      IEPINT           : Boolean := False;
      --  IN endpoints interrupt mask
      OEPINT           : Boolean := False;
      --  OUT endpoints interrupt mask
      IISOIXFRM        : Boolean := False;
      --  Incomplete isochronous IN transfer mask
      IPXFRM_IISOOXFRM : Boolean := False;
      --  Incomplete periodic transfer mask(Host mode)/Incomplete isochronous
      --  OUT transfer mask(Device mode)
      Reserved_22_22   : HAL.Bit := 16#0#;
      --  unspecified
      RSTDETM          : Boolean := False;
      --  Reset detected interrupt mask
      PRTIM            : Boolean := False;
      --  Host port interrupt mask
      HCIM             : Boolean := False;
      --  Host channels interrupt mask
      PTXFEM           : Boolean := False;
      --  Periodic Tx FIFO empty mask
      LPMINTM          : Boolean := False;
      --  LPM interrupt mask
      CIDSCHGM         : Boolean := False;
      --  Connector ID status change mask
      DISCINT          : Boolean := False;
      --  Disconnect detected interrupt mask
      SRQIM            : Boolean := False;
      --  Session request/new session detected interrupt mask
      WUIM             : Boolean := False;
      --  Resume/remote wakeup detected interrupt mask
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GINTMSK_Register use record
      Reserved_0_0     at 0 range 0 .. 0;
      MMISM            at 0 range 1 .. 1;
      OTGINT           at 0 range 2 .. 2;
      SOFM             at 0 range 3 .. 3;
      RXFLVLM          at 0 range 4 .. 4;
      NPTXFEM          at 0 range 5 .. 5;
      GINAKEFFM        at 0 range 6 .. 6;
      GONAKEFFM        at 0 range 7 .. 7;
      Reserved_8_9     at 0 range 8 .. 9;
      ESUSPM           at 0 range 10 .. 10;
      USBSUSPM         at 0 range 11 .. 11;
      USBRST           at 0 range 12 .. 12;
      ENUMDNEM         at 0 range 13 .. 13;
      ISOODRPM         at 0 range 14 .. 14;
      EOPFM            at 0 range 15 .. 15;
      Reserved_16_16   at 0 range 16 .. 16;
      EPMISM           at 0 range 17 .. 17;
      IEPINT           at 0 range 18 .. 18;
      OEPINT           at 0 range 19 .. 19;
      IISOIXFRM        at 0 range 20 .. 20;
      IPXFRM_IISOOXFRM at 0 range 21 .. 21;
      Reserved_22_22   at 0 range 22 .. 22;
      RSTDETM          at 0 range 23 .. 23;
      PRTIM            at 0 range 24 .. 24;
      HCIM             at 0 range 25 .. 25;
      PTXFEM           at 0 range 26 .. 26;
      LPMINTM          at 0 range 27 .. 27;
      CIDSCHGM         at 0 range 28 .. 28;
      DISCINT          at 0 range 29 .. 29;
      SRQIM            at 0 range 30 .. 30;
      WUIM             at 0 range 31 .. 31;
   end record;

   subtype GRXSTSR_Device_EPNUM_Field is HAL.UInt4;
   subtype GRXSTSR_Device_BCNT_Field is HAL.UInt11;
   subtype GRXSTSR_Device_DPID_Field is HAL.UInt2;
   subtype GRXSTSR_Device_PKTSTS_Field is HAL.UInt4;
   subtype GRXSTSR_Device_FRMNUM_Field is HAL.UInt4;

   --  OTG_FS Receive status debug read(Device mode)
   type GRXSTSR_Device_Register is record
      EPNUM          : GRXSTSR_Device_EPNUM_Field;
      --  Read-only. Endpoint number
      BCNT           : GRXSTSR_Device_BCNT_Field;
      --  Read-only. Byte count
      DPID           : GRXSTSR_Device_DPID_Field;
      --  Read-only. Data PID
      PKTSTS         : GRXSTSR_Device_PKTSTS_Field;
      --  Read-only. Packet status
      FRMNUM         : GRXSTSR_Device_FRMNUM_Field;
      --  Read-only. Frame number
      Reserved_25_26 : HAL.UInt2;
      --  unspecified
      STSPHST        : Boolean;
      --  Read-only. Status phase start
      Reserved_28_31 : HAL.UInt4;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GRXSTSR_Device_Register use record
      EPNUM          at 0 range 0 .. 3;
      BCNT           at 0 range 4 .. 14;
      DPID           at 0 range 15 .. 16;
      PKTSTS         at 0 range 17 .. 20;
      FRMNUM         at 0 range 21 .. 24;
      Reserved_25_26 at 0 range 25 .. 26;
      STSPHST        at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype GRXSTSR_Host_CHNUM_Field is HAL.UInt4;
   subtype GRXSTSR_Host_BCNT_Field is HAL.UInt11;
   subtype GRXSTSR_Host_DPID_Field is HAL.UInt2;
   subtype GRXSTSR_Host_PKTSTS_Field is HAL.UInt4;

   --  OTG_FS Receive status debug read(Host mode)
   type GRXSTSR_Host_Register is record
      CHNUM          : GRXSTSR_Host_CHNUM_Field;
      --  Read-only. Channel number
      BCNT           : GRXSTSR_Host_BCNT_Field;
      --  Read-only. Byte count
      DPID           : GRXSTSR_Host_DPID_Field;
      --  Read-only. Data PID
      PKTSTS         : GRXSTSR_Host_PKTSTS_Field;
      --  Read-only. Packet status
      Reserved_21_31 : HAL.UInt11;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GRXSTSR_Host_Register use record
      CHNUM          at 0 range 0 .. 3;
      BCNT           at 0 range 4 .. 14;
      DPID           at 0 range 15 .. 16;
      PKTSTS         at 0 range 17 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype GRXFSIZ_RXFD_Field is HAL.UInt16;

   --  OTG_FS Receive FIFO size register (OTG_FS_GRXFSIZ)
   type GRXFSIZ_Register is record
      RXFD           : GRXFSIZ_RXFD_Field := 16#200#;
      --  Rx FIFO depth
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GRXFSIZ_Register use record
      RXFD           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GNPTXFSIZ_Device_TX0FSA_Field is HAL.UInt16;
   subtype GNPTXFSIZ_Device_TX0FD_Field is HAL.UInt16;

   --  OTG_FS non-periodic transmit FIFO size register (Device mode)
   type GNPTXFSIZ_Device_Register is record
      TX0FSA : GNPTXFSIZ_Device_TX0FSA_Field := 16#200#;
      --  Endpoint 0 transmit RAM start address
      TX0FD  : GNPTXFSIZ_Device_TX0FD_Field := 16#0#;
      --  Endpoint 0 Tx FIFO depth
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GNPTXFSIZ_Device_Register use record
      TX0FSA at 0 range 0 .. 15;
      TX0FD  at 0 range 16 .. 31;
   end record;

   subtype GNPTXFSIZ_Host_NPTXFSA_Field is HAL.UInt16;
   subtype GNPTXFSIZ_Host_NPTXFD_Field is HAL.UInt16;

   --  OTG_FS non-periodic transmit FIFO size register (Host mode)
   type GNPTXFSIZ_Host_Register is record
      NPTXFSA : GNPTXFSIZ_Host_NPTXFSA_Field := 16#200#;
      --  Non-periodic transmit RAM start address
      NPTXFD  : GNPTXFSIZ_Host_NPTXFD_Field := 16#0#;
      --  Non-periodic TxFIFO depth
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GNPTXFSIZ_Host_Register use record
      NPTXFSA at 0 range 0 .. 15;
      NPTXFD  at 0 range 16 .. 31;
   end record;

   subtype GNPTXSTS_NPTXFSAV_Field is HAL.UInt16;
   subtype GNPTXSTS_NPTQXSAV_Field is HAL.UInt8;
   subtype GNPTXSTS_NPTXQTOP_Field is HAL.UInt7;

   --  OTG_FS non-periodic transmit FIFO/queue status register
   --  (OTG_FS_GNPTXSTS)
   type GNPTXSTS_Register is record
      NPTXFSAV       : GNPTXSTS_NPTXFSAV_Field;
      --  Read-only. Non-periodic TxFIFO space available
      NPTQXSAV       : GNPTXSTS_NPTQXSAV_Field;
      --  Read-only. Non-periodic transmit request queue space available
      NPTXQTOP       : GNPTXSTS_NPTXQTOP_Field;
      --  Read-only. Top of the non-periodic transmit request queue
      Reserved_31_31 : HAL.Bit;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GNPTXSTS_Register use record
      NPTXFSAV       at 0 range 0 .. 15;
      NPTQXSAV       at 0 range 16 .. 23;
      NPTXQTOP       at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  OTG_FS general core configuration register (OTG_FS_GCCFG)
   type GCCFG_Register is record
      DCDET          : Boolean := False;
      --  Read-only. Data constact detection (DCD) status
      PDET           : Boolean := False;
      --  Read-only. Primary detection (PD) status
      SDET           : Boolean := False;
      --  Read-only. Secondary detection (SD) status
      PS2DET         : Boolean := False;
      --  Read-only. DM pull-up detection status
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  unspecified
      PWRDWN         : Boolean := False;
      --  Power down control of FS PHY
      BCDEN          : Boolean := False;
      --  Battery charging detector (BCD) enable
      DCDEN          : Boolean := False;
      --  Data contact detection (DCD) mode enable
      PDEN           : Boolean := False;
      --  Primary detection (PD) mode enable
      SDEN           : Boolean := False;
      --  Secondary detection (SD) mode enable
      VBDEN          : Boolean := False;
      --  USB Vbus detection enable
      Reserved_22_31 : HAL.UInt10 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GCCFG_Register use record
      DCDET          at 0 range 0 .. 0;
      PDET           at 0 range 1 .. 1;
      SDET           at 0 range 2 .. 2;
      PS2DET         at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      PWRDWN         at 0 range 16 .. 16;
      BCDEN          at 0 range 17 .. 17;
      DCDEN          at 0 range 18 .. 18;
      PDEN           at 0 range 19 .. 19;
      SDEN           at 0 range 20 .. 20;
      VBDEN          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype HPTXFSIZ_PTXSA_Field is HAL.UInt16;
   subtype HPTXFSIZ_PTXFSIZ_Field is HAL.UInt16;

   --  OTG_FS Host periodic transmit FIFO size register (OTG_FS_HPTXFSIZ)
   type HPTXFSIZ_Register is record
      PTXSA   : HPTXFSIZ_PTXSA_Field := 16#600#;
      --  Host periodic TxFIFO start address
      PTXFSIZ : HPTXFSIZ_PTXFSIZ_Field := 16#200#;
      --  Host periodic TxFIFO depth
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPTXFSIZ_Register use record
      PTXSA   at 0 range 0 .. 15;
      PTXFSIZ at 0 range 16 .. 31;
   end record;

   subtype DIEPTXF_INEPTXSA_Field is HAL.UInt16;
   subtype DIEPTXF_INEPTXFD_Field is HAL.UInt16;

   --  OTG_FS device IN endpoint transmit FIFO size register (OTG_FS_DIEPTXF2)
   type DIEPTXF_Register is record
      INEPTXSA : DIEPTXF_INEPTXSA_Field := 16#400#;
      --  IN endpoint FIFO2 transmit RAM start address
      INEPTXFD : DIEPTXF_INEPTXFD_Field := 16#200#;
      --  IN endpoint TxFIFO depth
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPTXF_Register use record
      INEPTXSA at 0 range 0 .. 15;
      INEPTXFD at 0 range 16 .. 31;
   end record;

   subtype HCFG_FSLSPCS_Field is HAL.UInt2;

   --  OTG_FS host configuration register (OTG_FS_HCFG)
   type HCFG_Register is record
      FSLSPCS       : HCFG_FSLSPCS_Field := 16#0#;
      --  FS/LS PHY clock select
      FSLSS         : Boolean := False;
      --  Read-only. FS- and LS-only support
      Reserved_3_31 : HAL.UInt29 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCFG_Register use record
      FSLSPCS       at 0 range 0 .. 1;
      FSLSS         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype HFIR_FRIVL_Field is HAL.UInt16;

   --  OTG_FS Host frame interval register
   type HFIR_Register is record
      FRIVL          : HFIR_FRIVL_Field := 16#EA60#;
      --  Frame interval
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFIR_Register use record
      FRIVL          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HFNUM_FRNUM_Field is HAL.UInt16;
   subtype HFNUM_FTREM_Field is HAL.UInt16;

   --  OTG_FS host frame number/frame time remaining register (OTG_FS_HFNUM)
   type HFNUM_Register is record
      FRNUM : HFNUM_FRNUM_Field;
      --  Read-only. Frame number
      FTREM : HFNUM_FTREM_Field;
      --  Read-only. Frame time remaining
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFNUM_Register use record
      FRNUM at 0 range 0 .. 15;
      FTREM at 0 range 16 .. 31;
   end record;

   subtype HPTXSTS_PTXFSAVL_Field is HAL.UInt16;
   subtype HPTXSTS_PTXQSAV_Field is HAL.UInt8;
   subtype HPTXSTS_PTXQTOP_Field is HAL.UInt8;

   --  OTG_FS_Host periodic transmit FIFO/queue status register
   --  (OTG_FS_HPTXSTS)
   type HPTXSTS_Register is record
      PTXFSAVL : HPTXSTS_PTXFSAVL_Field := 16#100#;
      --  Periodic transmit data FIFO space available
      PTXQSAV  : HPTXSTS_PTXQSAV_Field := 16#8#;
      --  Read-only. Periodic transmit request queue space available
      PTXQTOP  : HPTXSTS_PTXQTOP_Field := 16#0#;
      --  Read-only. Top of the periodic transmit request queue
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPTXSTS_Register use record
      PTXFSAVL at 0 range 0 .. 15;
      PTXQSAV  at 0 range 16 .. 23;
      PTXQTOP  at 0 range 24 .. 31;
   end record;

   subtype HAINT_HAINT_Field is HAL.UInt16;

   --  OTG_FS Host all channels interrupt register
   type HAINT_Register is record
      HAINT          : HAINT_HAINT_Field;
      --  Read-only. Channel interrupts
      Reserved_16_31 : HAL.UInt16;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HAINT_Register use record
      HAINT          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HAINTMSK_HAINTM_Field is HAL.UInt16;

   --  OTG_FS host all channels interrupt mask register
   type HAINTMSK_Register is record
      HAINTM         : HAINTMSK_HAINTM_Field := 16#0#;
      --  Channel interrupt mask
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HAINTMSK_Register use record
      HAINTM         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HPRT_PLSTS_Field is HAL.UInt2;
   subtype HPRT_PTCTL_Field is HAL.UInt4;
   subtype HPRT_PSPD_Field is HAL.UInt2;

   --  OTG_FS host port control and status register (OTG_FS_HPRT)
   type HPRT_Register is record
      PCSTS          : Boolean := False;
      --  Read-only. Port connect status
      PCDET          : Boolean := False;
      --  Port connect detected
      PENA           : Boolean := False;
      --  Port enable
      PENCHNG        : Boolean := False;
      --  Port enable/disable change
      POCA           : Boolean := False;
      --  Read-only. Port overcurrent active
      POCCHNG        : Boolean := False;
      --  Port overcurrent change
      PRES           : Boolean := False;
      --  Port resume
      PSUSP          : Boolean := False;
      --  Port suspend
      PRST           : Boolean := False;
      --  Port reset
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  unspecified
      PLSTS          : HPRT_PLSTS_Field := 16#0#;
      --  Read-only. Port line status
      PPWR           : Boolean := False;
      --  Port power
      PTCTL          : HPRT_PTCTL_Field := 16#0#;
      --  Port test control
      PSPD           : HPRT_PSPD_Field := 16#0#;
      --  Read-only. Port speed
      Reserved_19_31 : HAL.UInt13 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPRT_Register use record
      PCSTS          at 0 range 0 .. 0;
      PCDET          at 0 range 1 .. 1;
      PENA           at 0 range 2 .. 2;
      PENCHNG        at 0 range 3 .. 3;
      POCA           at 0 range 4 .. 4;
      POCCHNG        at 0 range 5 .. 5;
      PRES           at 0 range 6 .. 6;
      PSUSP          at 0 range 7 .. 7;
      PRST           at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      PLSTS          at 0 range 10 .. 11;
      PPWR           at 0 range 12 .. 12;
      PTCTL          at 0 range 13 .. 16;
      PSPD           at 0 range 17 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype HCCHAR_MPSIZ_Field is HAL.UInt11;
   subtype HCCHAR_EPNUM_Field is HAL.UInt4;
   subtype HCCHAR_EPTYP_Field is HAL.UInt2;
   subtype HCCHAR_MCNT_Field is HAL.UInt2;
   subtype HCCHAR_DAD_Field is HAL.UInt7;

   --  OTG_FS host channel-0 characteristics register (OTG_FS_HCCHAR0)
   type HCCHAR_Register is record
      MPSIZ          : HCCHAR_MPSIZ_Field := 16#0#;
      --  Maximum packet size
      EPNUM          : HCCHAR_EPNUM_Field := 16#0#;
      --  Endpoint number
      EPDIR          : Boolean := False;
      --  Endpoint direction
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  unspecified
      LSDEV          : Boolean := False;
      --  Low-speed device
      EPTYP          : HCCHAR_EPTYP_Field := 16#0#;
      --  Endpoint type
      MCNT           : HCCHAR_MCNT_Field := 16#0#;
      --  Multicount
      DAD            : HCCHAR_DAD_Field := 16#0#;
      --  Device address
      ODDFRM         : Boolean := False;
      --  Odd frame
      CHDIS          : Boolean := False;
      --  Channel disable
      CHENA          : Boolean := False;
      --  Channel enable
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCCHAR_Register use record
      MPSIZ          at 0 range 0 .. 10;
      EPNUM          at 0 range 11 .. 14;
      EPDIR          at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      LSDEV          at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      MCNT           at 0 range 20 .. 21;
      DAD            at 0 range 22 .. 28;
      ODDFRM         at 0 range 29 .. 29;
      CHDIS          at 0 range 30 .. 30;
      CHENA          at 0 range 31 .. 31;
   end record;

   --  OTG_FS host channel-0 interrupt register (OTG_FS_HCINT0)
   type HCINT_Register is record
      XFRC           : Boolean := False;
      --  Transfer completed
      CHH            : Boolean := False;
      --  Channel halted
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  unspecified
      STALL          : Boolean := False;
      --  STALL response received interrupt
      NAK            : Boolean := False;
      --  NAK response received interrupt
      ACK            : Boolean := False;
      --  ACK response received/transmitted interrupt
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  unspecified
      TXERR          : Boolean := False;
      --  Transaction error
      BBERR          : Boolean := False;
      --  Babble error
      FRMOR          : Boolean := False;
      --  Frame overrun
      DTERR          : Boolean := False;
      --  Data toggle error
      Reserved_11_31 : HAL.UInt21 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCINT_Register use record
      XFRC           at 0 range 0 .. 0;
      CHH            at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      STALL          at 0 range 3 .. 3;
      NAK            at 0 range 4 .. 4;
      ACK            at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      TXERR          at 0 range 7 .. 7;
      BBERR          at 0 range 8 .. 8;
      FRMOR          at 0 range 9 .. 9;
      DTERR          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  OTG_FS host channel-0 mask register (OTG_FS_HCINTMSK0)
   type HCINTMSK_Register is record
      XFRCM          : Boolean := False;
      --  Transfer completed mask
      CHHM           : Boolean := False;
      --  Channel halted mask
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  unspecified
      STALLM         : Boolean := False;
      --  STALL response received interrupt mask
      NAKM           : Boolean := False;
      --  NAK response received interrupt mask
      ACKM           : Boolean := False;
      --  ACK response received/transmitted interrupt mask
      NYET           : Boolean := False;
      --  response received interrupt mask
      TXERRM         : Boolean := False;
      --  Transaction error mask
      BBERRM         : Boolean := False;
      --  Babble error mask
      FRMORM         : Boolean := False;
      --  Frame overrun mask
      DTERRM         : Boolean := False;
      --  Data toggle error mask
      Reserved_11_31 : HAL.UInt21 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCINTMSK_Register use record
      XFRCM          at 0 range 0 .. 0;
      CHHM           at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      STALLM         at 0 range 3 .. 3;
      NAKM           at 0 range 4 .. 4;
      ACKM           at 0 range 5 .. 5;
      NYET           at 0 range 6 .. 6;
      TXERRM         at 0 range 7 .. 7;
      BBERRM         at 0 range 8 .. 8;
      FRMORM         at 0 range 9 .. 9;
      DTERRM         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HCTSIZ_XFRSIZ_Field is HAL.UInt19;
   subtype HCTSIZ_PKTCNT_Field is HAL.UInt10;
   subtype HCTSIZ_DPID_Field is HAL.UInt2;

   --  OTG_FS host channel-0 transfer size register
   type HCTSIZ_Register is record
      XFRSIZ         : HCTSIZ_XFRSIZ_Field := 16#0#;
      --  Transfer size
      PKTCNT         : HCTSIZ_PKTCNT_Field := 16#0#;
      --  Packet count
      DPID           : HCTSIZ_DPID_Field := 16#0#;
      --  Data PID
      Reserved_31_31 : HAL.Bit := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCTSIZ_Register use record
      XFRSIZ         at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      DPID           at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  OTG_FS power and clock gating control register (OTG_FS_PCGCCTL)
   type PCGCCTL_Register is record
      STPPCLK       : Boolean := False;
      --  Stop PHY clock
      GATEHCLK      : Boolean := False;
      --  Gate HCLK
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  unspecified
      PHYSUSP       : Boolean := False;
      --  PHY Suspended
      Reserved_5_31 : HAL.UInt27 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCGCCTL_Register use record
      STPPCLK       at 0 range 0 .. 0;
      GATEHCLK      at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      PHYSUSP       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  USB on the go full speed
   type OTG_FS_DEVICE_Peripheral is record
      DCFG       : aliased DCFG_Register;
      --  OTG_FS device configuration register (OTG_FS_DCFG)
      DCTL       : aliased DCTL_Register;
      --  OTG_FS device control register (OTG_FS_DCTL)
      DSTS       : aliased DSTS_Register;
      --  OTG_FS device status register (OTG_FS_DSTS)
      DIEPMSK    : aliased DIEPMSK_Register;
      --  OTG_FS device IN endpoint common interrupt mask register
      --  (OTG_FS_DIEPMSK)
      DOEPMSK    : aliased DOEPMSK_Register;
      --  OTG_FS device OUT endpoint common interrupt mask register
      --  (OTG_FS_DOEPMSK)
      DAINT      : aliased DAINT_Register;
      --  OTG_FS device all endpoints interrupt register (OTG_FS_DAINT)
      DAINTMSK   : aliased DAINTMSK_Register;
      --  OTG_FS all endpoints interrupt mask register (OTG_FS_DAINTMSK)
      DVBUSDIS   : aliased DVBUSDIS_Register;
      --  OTG_FS device VBUS discharge time register
      DVBUSPULSE : aliased DVBUSPULSE_Register;
      --  OTG_FS device VBUS pulsing time register
      DIEPEMPMSK : aliased DIEPEMPMSK_Register;
      --  OTG_FS device IN endpoint FIFO empty interrupt mask register
      DIEPCTL0   : aliased DIEPCTL0_Register;
      --  OTG_FS device control IN endpoint 0 control register
      --  (OTG_FS_DIEPCTL0)
      DIEPINT0   : aliased DIEPINT_Register;
      --  device endpoint-x interrupt register
      DIEPTSIZ0  : aliased DIEPTSIZ0_Register;
      --  device endpoint-0 transfer size register
      DTXFSTS0   : aliased DTXFSTS_Register;
      --  OTG_FS device IN endpoint transmit FIFO status register
      DIEPCTL1   : aliased DIEPCTL1_Register;
      --  OTG device endpoint-1 control register
      DIEPINT1   : aliased DIEPINT_Register;
      --  device endpoint-1 interrupt register
      DIEPTSIZ1  : aliased DIEPTSIZ_Register;
      --  device endpoint-1 transfer size register
      DTXFSTS1   : aliased DTXFSTS_Register;
      --  OTG_FS device IN endpoint transmit FIFO status register
      DIEPCTL2   : aliased DIEPCTL_Register;
      --  OTG device endpoint-2 control register
      DIEPINT2   : aliased DIEPINT_Register;
      --  device endpoint-2 interrupt register
      DIEPTSIZ2  : aliased DIEPTSIZ_Register;
      --  device endpoint-2 transfer size register
      DTXFSTS2   : aliased DTXFSTS_Register;
      --  OTG_FS device IN endpoint transmit FIFO status register
      DIEPCTL3   : aliased DIEPCTL_Register;
      --  OTG device endpoint-3 control register
      DIEPINT3   : aliased DIEPINT_Register;
      --  device endpoint-3 interrupt register
      DIEPTSIZ3  : aliased DIEPTSIZ_Register;
      --  device endpoint-3 transfer size register
      DTXFSTS3   : aliased DTXFSTS_Register;
      --  OTG_FS device IN endpoint transmit FIFO status register
      DOEPCTL0   : aliased DOEPCTL0_Register;
      --  device endpoint-0 control register
      DOEPINT0   : aliased DOEPINT_Register;
      --  device endpoint-0 interrupt register
      DOEPTSIZ0  : aliased DOEPTSIZ0_Register;
      --  device OUT endpoint-0 transfer size register
      DOEPCTL1   : aliased DOEPCTL_Register;
      --  device endpoint-1 control register
      DOEPINT1   : aliased DOEPINT_Register;
      --  device endpoint-1 interrupt register
      DOEPTSIZ1  : aliased DOEPTSIZ_Register;
      --  device OUT endpoint-1 transfer size register
      DOEPCTL2   : aliased DOEPCTL_Register;
      --  device endpoint-2 control register
      DOEPINT2   : aliased DOEPINT_Register;
      --  device endpoint-2 interrupt register
      DOEPTSIZ2  : aliased DOEPTSIZ_Register;
      --  device OUT endpoint-2 transfer size register
      DOEPCTL3   : aliased DOEPCTL_Register;
      --  device endpoint-3 control register
      DOEPINT3   : aliased DOEPINT_Register;
      --  device endpoint-3 interrupt register
      DOEPTSIZ3  : aliased DOEPTSIZ_Register;
      --  device OUT endpoint-3 transfer size register
   end record
     with Volatile;

   for OTG_FS_DEVICE_Peripheral use record
      DCFG       at 16#0# range 0 .. 31;
      DCTL       at 16#4# range 0 .. 31;
      DSTS       at 16#8# range 0 .. 31;
      DIEPMSK    at 16#10# range 0 .. 31;
      DOEPMSK    at 16#14# range 0 .. 31;
      DAINT      at 16#18# range 0 .. 31;
      DAINTMSK   at 16#1C# range 0 .. 31;
      DVBUSDIS   at 16#28# range 0 .. 31;
      DVBUSPULSE at 16#2C# range 0 .. 31;
      DIEPEMPMSK at 16#34# range 0 .. 31;
      DIEPCTL0   at 16#100# range 0 .. 31;
      DIEPINT0   at 16#108# range 0 .. 31;
      DIEPTSIZ0  at 16#110# range 0 .. 31;
      DTXFSTS0   at 16#118# range 0 .. 31;
      DIEPCTL1   at 16#120# range 0 .. 31;
      DIEPINT1   at 16#128# range 0 .. 31;
      DIEPTSIZ1  at 16#130# range 0 .. 31;
      DTXFSTS1   at 16#138# range 0 .. 31;
      DIEPCTL2   at 16#140# range 0 .. 31;
      DIEPINT2   at 16#148# range 0 .. 31;
      DIEPTSIZ2  at 16#150# range 0 .. 31;
      DTXFSTS2   at 16#158# range 0 .. 31;
      DIEPCTL3   at 16#160# range 0 .. 31;
      DIEPINT3   at 16#168# range 0 .. 31;
      DIEPTSIZ3  at 16#170# range 0 .. 31;
      DTXFSTS3   at 16#178# range 0 .. 31;
      DOEPCTL0   at 16#300# range 0 .. 31;
      DOEPINT0   at 16#308# range 0 .. 31;
      DOEPTSIZ0  at 16#310# range 0 .. 31;
      DOEPCTL1   at 16#320# range 0 .. 31;
      DOEPINT1   at 16#328# range 0 .. 31;
      DOEPTSIZ1  at 16#330# range 0 .. 31;
      DOEPCTL2   at 16#340# range 0 .. 31;
      DOEPINT2   at 16#348# range 0 .. 31;
      DOEPTSIZ2  at 16#350# range 0 .. 31;
      DOEPCTL3   at 16#360# range 0 .. 31;
      DOEPINT3   at 16#368# range 0 .. 31;
      DOEPTSIZ3  at 16#370# range 0 .. 31;
   end record;

   --  USB on the go full speed
   OTG_FS_DEVICE_Periph : aliased OTG_FS_DEVICE_Peripheral
     with Import, Address => OTG_FS_DEVICE_Base;

   type OTG_FS_GLOBAL_Disc is
     (Device,
      Host);

   --  USB on the go full speed
   type OTG_FS_GLOBAL_Peripheral
     (Discriminent : OTG_FS_GLOBAL_Disc := Device)
   is record
      GOTGCTL          : aliased GOTGCTL_Register;
      --  OTG_FS control and status register (OTG_FS_GOTGCTL)
      GOTGINT          : aliased GOTGINT_Register;
      --  OTG_FS interrupt register (OTG_FS_GOTGINT)
      GAHBCFG          : aliased GAHBCFG_Register;
      --  OTG_FS AHB configuration register (OTG_FS_GAHBCFG)
      GUSBCFG          : aliased GUSBCFG_Register;
      --  OTG_FS USB configuration register (OTG_FS_GUSBCFG)
      GRSTCTL          : aliased GRSTCTL_Register;
      --  OTG_FS reset register (OTG_FS_GRSTCTL)
      GINTSTS          : aliased GINTSTS_Register;
      --  OTG_FS core interrupt register (OTG_FS_GINTSTS)
      GINTMSK          : aliased GINTMSK_Register;
      --  OTG_FS interrupt mask register (OTG_FS_GINTMSK)
      GRXFSIZ          : aliased GRXFSIZ_Register;
      --  OTG_FS Receive FIFO size register (OTG_FS_GRXFSIZ)
      GNPTXSTS         : aliased GNPTXSTS_Register;
      --  OTG_FS non-periodic transmit FIFO/queue status register
      --  (OTG_FS_GNPTXSTS)
      GCCFG            : aliased GCCFG_Register;
      --  OTG_FS general core configuration register (OTG_FS_GCCFG)
      CID              : aliased HAL.UInt32;
      --  core ID register
      HPTXFSIZ         : aliased HPTXFSIZ_Register;
      --  OTG_FS Host periodic transmit FIFO size register (OTG_FS_HPTXFSIZ)
      DIEPTXF1         : aliased DIEPTXF_Register;
      --  OTG_FS device IN endpoint transmit FIFO size register
      --  (OTG_FS_DIEPTXF2)
      DIEPTXF2         : aliased DIEPTXF_Register;
      --  OTG_FS device IN endpoint transmit FIFO size register
      --  (OTG_FS_DIEPTXF3)
      DIEPTXF3         : aliased DIEPTXF_Register;
      --  OTG_FS device IN endpoint transmit FIFO size register
      --  (OTG_FS_DIEPTXF4)
      case Discriminent is
         when Device =>
            GRXSTSR_Device : aliased GRXSTSR_Device_Register;
            --  OTG_FS Receive status debug read(Device mode)
            GNPTXFSIZ_Device : aliased GNPTXFSIZ_Device_Register;
            --  OTG_FS non-periodic transmit FIFO size register (Device mode)
         when Host =>
            GRXSTSR_Host : aliased GRXSTSR_Host_Register;
            --  OTG_FS Receive status debug read(Host mode)
            GNPTXFSIZ_Host : aliased GNPTXFSIZ_Host_Register;
            --  OTG_FS non-periodic transmit FIFO size register (Host mode)
      end case;
   end record
     with Unchecked_Union, Volatile;

   for OTG_FS_GLOBAL_Peripheral use record
      GOTGCTL          at 16#0# range 0 .. 31;
      GOTGINT          at 16#4# range 0 .. 31;
      GAHBCFG          at 16#8# range 0 .. 31;
      GUSBCFG          at 16#C# range 0 .. 31;
      GRSTCTL          at 16#10# range 0 .. 31;
      GINTSTS          at 16#14# range 0 .. 31;
      GINTMSK          at 16#18# range 0 .. 31;
      GRXFSIZ          at 16#24# range 0 .. 31;
      GNPTXSTS         at 16#2C# range 0 .. 31;
      GCCFG            at 16#38# range 0 .. 31;
      CID              at 16#3C# range 0 .. 31;
      HPTXFSIZ         at 16#100# range 0 .. 31;
      DIEPTXF1         at 16#104# range 0 .. 31;
      DIEPTXF2         at 16#108# range 0 .. 31;
      DIEPTXF3         at 16#10C# range 0 .. 31;
      GRXSTSR_Device   at 16#1C# range 0 .. 31;
      GNPTXFSIZ_Device at 16#28# range 0 .. 31;
      GRXSTSR_Host     at 16#1C# range 0 .. 31;
      GNPTXFSIZ_Host   at 16#28# range 0 .. 31;
   end record;

   --  USB on the go full speed
   OTG_FS_GLOBAL_Periph : aliased OTG_FS_GLOBAL_Peripheral
     with Import, Address => OTG_FS_GLOBAL_Base;

   --  USB on the go full speed
   type OTG_FS_HOST_Peripheral is record
      HCFG      : aliased HCFG_Register;
      --  OTG_FS host configuration register (OTG_FS_HCFG)
      HFIR      : aliased HFIR_Register;
      --  OTG_FS Host frame interval register
      HFNUM     : aliased HFNUM_Register;
      --  OTG_FS host frame number/frame time remaining register (OTG_FS_HFNUM)
      HPTXSTS   : aliased HPTXSTS_Register;
      --  OTG_FS_Host periodic transmit FIFO/queue status register
      --  (OTG_FS_HPTXSTS)
      HAINT     : aliased HAINT_Register;
      --  OTG_FS Host all channels interrupt register
      HAINTMSK  : aliased HAINTMSK_Register;
      --  OTG_FS host all channels interrupt mask register
      HPRT      : aliased HPRT_Register;
      --  OTG_FS host port control and status register (OTG_FS_HPRT)
      HCCHAR0   : aliased HCCHAR_Register;
      --  OTG_FS host channel-0 characteristics register (OTG_FS_HCCHAR0)
      HCINT0    : aliased HCINT_Register;
      --  OTG_FS host channel-0 interrupt register (OTG_FS_HCINT0)
      HCINTMSK0 : aliased HCINTMSK_Register;
      --  OTG_FS host channel-0 mask register (OTG_FS_HCINTMSK0)
      HCTSIZ0   : aliased HCTSIZ_Register;
      --  OTG_FS host channel-0 transfer size register
      HCCHAR1   : aliased HCCHAR_Register;
      --  OTG_FS host channel-1 characteristics register (OTG_FS_HCCHAR1)
      HCINT1    : aliased HCINT_Register;
      --  OTG_FS host channel-1 interrupt register (OTG_FS_HCINT1)
      HCINTMSK1 : aliased HCINTMSK_Register;
      --  OTG_FS host channel-1 mask register (OTG_FS_HCINTMSK1)
      HCTSIZ1   : aliased HCTSIZ_Register;
      --  OTG_FS host channel-1 transfer size register
      HCCHAR2   : aliased HCCHAR_Register;
      --  OTG_FS host channel-2 characteristics register (OTG_FS_HCCHAR2)
      HCINT2    : aliased HCINT_Register;
      --  OTG_FS host channel-2 interrupt register (OTG_FS_HCINT2)
      HCINTMSK2 : aliased HCINTMSK_Register;
      --  OTG_FS host channel-2 mask register (OTG_FS_HCINTMSK2)
      HCTSIZ2   : aliased HCTSIZ_Register;
      --  OTG_FS host channel-2 transfer size register
      HCCHAR3   : aliased HCCHAR_Register;
      --  OTG_FS host channel-3 characteristics register (OTG_FS_HCCHAR3)
      HCINT3    : aliased HCINT_Register;
      --  OTG_FS host channel-3 interrupt register (OTG_FS_HCINT3)
      HCINTMSK3 : aliased HCINTMSK_Register;
      --  OTG_FS host channel-3 mask register (OTG_FS_HCINTMSK3)
      HCTSIZ3   : aliased HCTSIZ_Register;
      --  OTG_FS host channel-3 transfer size register
      HCCHAR4   : aliased HCCHAR_Register;
      --  OTG_FS host channel-4 characteristics register (OTG_FS_HCCHAR4)
      HCINT4    : aliased HCINT_Register;
      --  OTG_FS host channel-4 interrupt register (OTG_FS_HCINT4)
      HCINTMSK4 : aliased HCINTMSK_Register;
      --  OTG_FS host channel-4 mask register (OTG_FS_HCINTMSK4)
      HCTSIZ4   : aliased HCTSIZ_Register;
      --  OTG_FS host channel-x transfer size register
      HCCHAR5   : aliased HCCHAR_Register;
      --  OTG_FS host channel-5 characteristics register (OTG_FS_HCCHAR5)
      HCINT5    : aliased HCINT_Register;
      --  OTG_FS host channel-5 interrupt register (OTG_FS_HCINT5)
      HCINTMSK5 : aliased HCINTMSK_Register;
      --  OTG_FS host channel-5 mask register (OTG_FS_HCINTMSK5)
      HCTSIZ5   : aliased HCTSIZ_Register;
      --  OTG_FS host channel-5 transfer size register
      HCCHAR6   : aliased HCCHAR_Register;
      --  OTG_FS host channel-6 characteristics register (OTG_FS_HCCHAR6)
      HCINT6    : aliased HCINT_Register;
      --  OTG_FS host channel-6 interrupt register (OTG_FS_HCINT6)
      HCINTMSK6 : aliased HCINTMSK_Register;
      --  OTG_FS host channel-6 mask register (OTG_FS_HCINTMSK6)
      HCTSIZ6   : aliased HCTSIZ_Register;
      --  OTG_FS host channel-6 transfer size register
      HCCHAR7   : aliased HCCHAR_Register;
      --  OTG_FS host channel-7 characteristics register (OTG_FS_HCCHAR7)
      HCINT7    : aliased HCINT_Register;
      --  OTG_FS host channel-7 interrupt register (OTG_FS_HCINT7)
      HCINTMSK7 : aliased HCINTMSK_Register;
      --  OTG_FS host channel-7 mask register (OTG_FS_HCINTMSK7)
      HCTSIZ7   : aliased HCTSIZ_Register;
      --  OTG_FS host channel-7 transfer size register
   end record
     with Volatile;

   for OTG_FS_HOST_Peripheral use record
      HCFG      at 16#0# range 0 .. 31;
      HFIR      at 16#4# range 0 .. 31;
      HFNUM     at 16#8# range 0 .. 31;
      HPTXSTS   at 16#10# range 0 .. 31;
      HAINT     at 16#14# range 0 .. 31;
      HAINTMSK  at 16#18# range 0 .. 31;
      HPRT      at 16#40# range 0 .. 31;
      HCCHAR0   at 16#100# range 0 .. 31;
      HCINT0    at 16#108# range 0 .. 31;
      HCINTMSK0 at 16#10C# range 0 .. 31;
      HCTSIZ0   at 16#110# range 0 .. 31;
      HCCHAR1   at 16#120# range 0 .. 31;
      HCINT1    at 16#128# range 0 .. 31;
      HCINTMSK1 at 16#12C# range 0 .. 31;
      HCTSIZ1   at 16#130# range 0 .. 31;
      HCCHAR2   at 16#140# range 0 .. 31;
      HCINT2    at 16#148# range 0 .. 31;
      HCINTMSK2 at 16#14C# range 0 .. 31;
      HCTSIZ2   at 16#150# range 0 .. 31;
      HCCHAR3   at 16#160# range 0 .. 31;
      HCINT3    at 16#168# range 0 .. 31;
      HCINTMSK3 at 16#16C# range 0 .. 31;
      HCTSIZ3   at 16#170# range 0 .. 31;
      HCCHAR4   at 16#180# range 0 .. 31;
      HCINT4    at 16#188# range 0 .. 31;
      HCINTMSK4 at 16#18C# range 0 .. 31;
      HCTSIZ4   at 16#190# range 0 .. 31;
      HCCHAR5   at 16#1A0# range 0 .. 31;
      HCINT5    at 16#1A8# range 0 .. 31;
      HCINTMSK5 at 16#1AC# range 0 .. 31;
      HCTSIZ5   at 16#1B0# range 0 .. 31;
      HCCHAR6   at 16#1C0# range 0 .. 31;
      HCINT6    at 16#1C8# range 0 .. 31;
      HCINTMSK6 at 16#1CC# range 0 .. 31;
      HCTSIZ6   at 16#1D0# range 0 .. 31;
      HCCHAR7   at 16#1E0# range 0 .. 31;
      HCINT7    at 16#1E8# range 0 .. 31;
      HCINTMSK7 at 16#1EC# range 0 .. 31;
      HCTSIZ7   at 16#1F0# range 0 .. 31;
   end record;

   --  USB on the go full speed
   OTG_FS_HOST_Periph : aliased OTG_FS_HOST_Peripheral
     with Import, Address => OTG_FS_HOST_Base;

   --  USB on the go full speed
   type OTG_FS_PWRCLK_Peripheral is record
      PCGCCTL : aliased PCGCCTL_Register;
      --  OTG_FS power and clock gating control register (OTG_FS_PCGCCTL)
   end record
     with Volatile;

   for OTG_FS_PWRCLK_Peripheral use record
      PCGCCTL at 0 range 0 .. 31;
   end record;

   --  USB on the go full speed
   OTG_FS_PWRCLK_Periph : aliased OTG_FS_PWRCLK_Peripheral
     with Import, Address => OTG_FS_PWRCLK_Base;

end STM32_SVD.USB_OTG_FS;
