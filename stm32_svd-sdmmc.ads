pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.SDMMC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype POWER_PWRCTRL_Field is HAL.UInt2;
   subtype POWER_DIRPOL_Field is HAL.UInt2;

   --  power control register
   type POWER_Register is record
      PWRCTRL       : POWER_PWRCTRL_Field := 16#0#;
      --  SDMMC state control bits
      VSWITCH       : Boolean := False;
      --  Voltage switch sequence start
      VSWITCHEN     : Boolean := False;
      --  Voltage switch procedure enable
      DIRPOL        : POWER_DIRPOL_Field := 16#0#;
      --  Data and command direction signals polarity selection
      Reserved_6_31 : HAL.UInt26 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWER_Register use record
      PWRCTRL       at 0 range 0 .. 1;
      VSWITCH       at 0 range 2 .. 2;
      VSWITCHEN     at 0 range 3 .. 3;
      DIRPOL        at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype CLKCR_CLKDIV_Field is HAL.UInt10;
   subtype CLKCR_WIDBUS_Field is HAL.UInt2;
   subtype CLKCR_SELCLKRX_Field is HAL.UInt2;

   --  SDI clock control register
   type CLKCR_Register is record
      CLKDIV         : CLKCR_CLKDIV_Field := 16#0#;
      --  Clock divide factor
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  unspecified
      PWRSAV         : Boolean := False;
      --  Power saving configuration bit
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  unspecified
      WIDBUS         : CLKCR_WIDBUS_Field := 16#0#;
      --  Wide bus mode enable bit
      NEGEDGE        : Boolean := False;
      --  SDIO_CK dephasing selection bit
      HWFC_EN        : Boolean := False;
      --  HW Flow Control enable
      DDR            : Boolean := False;
      --  Data rate signalling selection
      BUSSPEED       : Boolean := False;
      --  BUS speed for selection of SDMMC operating modes
      SELCLKRX       : CLKCR_SELCLKRX_Field := 16#0#;
      --  Receive clock selection
      Reserved_22_31 : HAL.UInt10 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKCR_Register use record
      CLKDIV         at 0 range 0 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      PWRSAV         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      WIDBUS         at 0 range 14 .. 15;
      NEGEDGE        at 0 range 16 .. 16;
      HWFC_EN        at 0 range 17 .. 17;
      DDR            at 0 range 18 .. 18;
      BUSSPEED       at 0 range 19 .. 19;
      SELCLKRX       at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CMD_CMDINDEX_Field is HAL.UInt6;
   subtype CMD_WAITRESP_Field is HAL.UInt2;

   --  command register
   type CMD_Register is record
      CMDINDEX       : CMD_CMDINDEX_Field := 16#0#;
      --  Command index
      CMDTRANS       : Boolean := False;
      --  Treat command as data transfer
      CMDSTOP        : Boolean := False;
      --  Treat command as stop transmission
      WAITRESP       : CMD_WAITRESP_Field := 16#0#;
      --  Wait for response bits
      WAITINT        : Boolean := False;
      --  CPSM waits for interrupt request
      WAITPEND       : Boolean := False;
      --  CPSM Waits for ends of data transfer (CmdPend internal signal)
      CPSMEN         : Boolean := False;
      --  Command path state machine (CPSM) Enable bit
      DTHOLD         : Boolean := False;
      --  Hold new data block transmission and reception in the DPSM
      BOOTMODE       : Boolean := False;
      --  Select the boot mode procedure to use
      BOOTEN         : Boolean := False;
      --  Enable boot mode procedure
      CMDSUSPEND     : Boolean := False;
      --  Treat as a suspend or resume command
      Reserved_17_31 : HAL.UInt15 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      CMDINDEX       at 0 range 0 .. 5;
      CMDTRANS       at 0 range 6 .. 6;
      CMDSTOP        at 0 range 7 .. 7;
      WAITRESP       at 0 range 8 .. 9;
      WAITINT        at 0 range 10 .. 10;
      WAITPEND       at 0 range 11 .. 11;
      CPSMEN         at 0 range 12 .. 12;
      DTHOLD         at 0 range 13 .. 13;
      BOOTMODE       at 0 range 14 .. 14;
      BOOTEN         at 0 range 15 .. 15;
      CMDSUSPEND     at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype RESPCMD_RESPCMD_Field is HAL.UInt6;

   --  command response register
   type RESPCMD_Register is record
      RESPCMD       : RESPCMD_RESPCMD_Field;
      --  Read-only. Response command index
      Reserved_6_31 : HAL.UInt26;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RESPCMD_Register use record
      RESPCMD       at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype DLEN_DATALENGTH_Field is HAL.UInt25;

   --  data length register
   type DLEN_Register is record
      DATALENGTH     : DLEN_DATALENGTH_Field := 16#0#;
      --  Data length value
      Reserved_25_31 : HAL.UInt7 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLEN_Register use record
      DATALENGTH     at 0 range 0 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype DCTRL_DTMODE_Field is HAL.UInt2;
   subtype DCTRL_DBLOCKSIZE_Field is HAL.UInt4;

   --  data control register
   type DCTRL_Register is record
      DTEN           : Boolean := False;
      --  Data transfer enable bit
      DTDIR          : Boolean := False;
      --  Data transfer direction selection
      DTMODE         : DCTRL_DTMODE_Field := 16#0#;
      --  Data transfer mode selection
      DBLOCKSIZE     : DCTRL_DBLOCKSIZE_Field := 16#0#;
      --  Data block size
      RWSTART        : Boolean := False;
      --  Read wait start
      RWSTOP         : Boolean := False;
      --  Read wait stop
      RWMOD          : Boolean := False;
      --  Read wait mode
      SDIOEN         : Boolean := False;
      --  SD I/O interrupt enable functions
      BOOTACKEN      : Boolean := False;
      --  Enable the reception of the boot ack
      FIFORST        : Boolean := False;
      --  FIFO reset, flushes any remaining data
      Reserved_14_31 : HAL.UInt18 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCTRL_Register use record
      DTEN           at 0 range 0 .. 0;
      DTDIR          at 0 range 1 .. 1;
      DTMODE         at 0 range 2 .. 3;
      DBLOCKSIZE     at 0 range 4 .. 7;
      RWSTART        at 0 range 8 .. 8;
      RWSTOP         at 0 range 9 .. 9;
      RWMOD          at 0 range 10 .. 10;
      SDIOEN         at 0 range 11 .. 11;
      BOOTACKEN      at 0 range 12 .. 12;
      FIFORST        at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype DCNTR_DATACOUNT_Field is HAL.UInt25;

   --  data counter register
   type DCNTR_Register is record
      DATACOUNT      : DCNTR_DATACOUNT_Field;
      --  Read-only. Data count value
      Reserved_25_31 : HAL.UInt7;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCNTR_Register use record
      DATACOUNT      at 0 range 0 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  status register
   type STA_Register is record
      CCRCFAIL       : Boolean;
      --  Read-only. Command response received (CRC check failed)
      DCRCFAIL       : Boolean;
      --  Read-only. Data block sent/received (CRC check failed)
      CTIMEOUT       : Boolean;
      --  Read-only. Command response timeout
      DTIMEOUT       : Boolean;
      --  Read-only. Data timeout
      TXUNDERR       : Boolean;
      --  Read-only. Transmit FIFO underrun error
      RXOVERR        : Boolean;
      --  Read-only. Received FIFO overrun error
      CMDREND        : Boolean;
      --  Read-only. Command response received (CRC check passed, or no CRC)
      CMDSENT        : Boolean;
      --  Read-only. Command sent (no response required)
      DATAEND        : Boolean;
      --  Read-only. Data transfer ended correctly
      DHOLD          : Boolean;
      --  Read-only. Data transfer hold
      DBCKEND        : Boolean;
      --  Read-only. Data block sent/received (CRC check passed)
      DABORT         : Boolean;
      --  Read-only. Data transfer aborted by CMD 12
      DPSMACT        : Boolean;
      --  Read-only. Data path state machine active, i.e. not in Idle state
      CPSMACT        : Boolean;
      --  Read-only. Command path state machine active, i.e. not in Idle state
      TXFIFOHE       : Boolean;
      --  Read-only. Transmit FIFO half empty: at least halt the words can be
      --  written into the FIFO
      RXFIFOHF       : Boolean;
      --  Read-only. Receive FIFO half full: there are at least half the number
      --  of words in the FIFO
      TXFIFOF        : Boolean;
      --  Read-only. Transmit FIFO full
      RXFIFOF        : Boolean;
      --  Read-only. Receive FIFO full
      TXFIFOE        : Boolean;
      --  Read-only. Transmit FIFO empty
      RXFIFOE        : Boolean;
      --  Read-only. Receive FIFO empty
      BUSYD0         : Boolean;
      --  Read-only. Inverted value of SDMMC_D0 line (Busy)
      BUSYD0END      : Boolean;
      --  Read-only. end of SDMMC_D0 Busy following a CMD response detected
      SDIOIT         : Boolean;
      --  Read-only. SDIO interrupt received
      ACKFAIL        : Boolean;
      --  Read-only. Boot acknowledgment received (boot acknowledgment check
      --  fail)
      ACKTIMEOUT     : Boolean;
      --  Read-only. Boot acknowledgment timeout
      VSWEND         : Boolean;
      --  Read-only. Voltage switch critical timing section completion
      CKSTOP         : Boolean;
      --  Read-only. SDMMC_CK stopped in Voltage switch procedure
      IDMATE         : Boolean;
      --  Read-only. IDMA transfer error
      IDMABTC        : Boolean;
      --  Read-only. IDMA buffer transfer complete
      Reserved_29_31 : HAL.UInt3;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STA_Register use record
      CCRCFAIL       at 0 range 0 .. 0;
      DCRCFAIL       at 0 range 1 .. 1;
      CTIMEOUT       at 0 range 2 .. 2;
      DTIMEOUT       at 0 range 3 .. 3;
      TXUNDERR       at 0 range 4 .. 4;
      RXOVERR        at 0 range 5 .. 5;
      CMDREND        at 0 range 6 .. 6;
      CMDSENT        at 0 range 7 .. 7;
      DATAEND        at 0 range 8 .. 8;
      DHOLD          at 0 range 9 .. 9;
      DBCKEND        at 0 range 10 .. 10;
      DABORT         at 0 range 11 .. 11;
      DPSMACT        at 0 range 12 .. 12;
      CPSMACT        at 0 range 13 .. 13;
      TXFIFOHE       at 0 range 14 .. 14;
      RXFIFOHF       at 0 range 15 .. 15;
      TXFIFOF        at 0 range 16 .. 16;
      RXFIFOF        at 0 range 17 .. 17;
      TXFIFOE        at 0 range 18 .. 18;
      RXFIFOE        at 0 range 19 .. 19;
      BUSYD0         at 0 range 20 .. 20;
      BUSYD0END      at 0 range 21 .. 21;
      SDIOIT         at 0 range 22 .. 22;
      ACKFAIL        at 0 range 23 .. 23;
      ACKTIMEOUT     at 0 range 24 .. 24;
      VSWEND         at 0 range 25 .. 25;
      CKSTOP         at 0 range 26 .. 26;
      IDMATE         at 0 range 27 .. 27;
      IDMABTC        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  interrupt clear register
   type ICR_Register is record
      CCRCFAILC      : Boolean := False;
      --  CCRCFAIL flag clear bit
      DCRCFAILC      : Boolean := False;
      --  DCRCFAIL flag clear bit
      CTIMEOUTC      : Boolean := False;
      --  CTIMEOUT flag clear bit
      DTIMEOUTC      : Boolean := False;
      --  DTIMEOUT flag clear bit
      TXUNDERRC      : Boolean := False;
      --  TXUNDERR flag clear bit
      RXOVERRC       : Boolean := False;
      --  RXOVERR flag clear bit
      CMDRENDC       : Boolean := False;
      --  CMDREND flag clear bit
      CMDSENTC       : Boolean := False;
      --  CMDSENT flag clear bit
      DATAENDC       : Boolean := False;
      --  DATAEND flag clear bit
      DHOLDC         : Boolean := False;
      --  DHOLD flag clear bit
      DBCKENDC       : Boolean := False;
      --  DBCKEND flag clear bit
      DABORTC        : Boolean := False;
      --  DABORT flag clear bit
      Reserved_12_20 : HAL.UInt9 := 16#0#;
      --  unspecified
      BUSYD0ENDC     : Boolean := False;
      --  BUSYD0END flag clear bit
      SDIOITC        : Boolean := False;
      --  SDIOIT flag clear bit
      ACKFAILC       : Boolean := False;
      --  ACKFAIL flag clear bit
      ACKTIMEOUTC    : Boolean := False;
      --  ACKTIMEOUT flag clear bit
      VSWENDC        : Boolean := False;
      --  VSWEND flag clear bit
      CKSTOPC        : Boolean := False;
      --  CKSTOP flag clear bit
      IDMATEC        : Boolean := False;
      --  IDMATE flag clear bit
      IDMABTCC       : Boolean := False;
      --  IDMABTC flag clear bit
      Reserved_29_31 : HAL.UInt3 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register use record
      CCRCFAILC      at 0 range 0 .. 0;
      DCRCFAILC      at 0 range 1 .. 1;
      CTIMEOUTC      at 0 range 2 .. 2;
      DTIMEOUTC      at 0 range 3 .. 3;
      TXUNDERRC      at 0 range 4 .. 4;
      RXOVERRC       at 0 range 5 .. 5;
      CMDRENDC       at 0 range 6 .. 6;
      CMDSENTC       at 0 range 7 .. 7;
      DATAENDC       at 0 range 8 .. 8;
      DHOLDC         at 0 range 9 .. 9;
      DBCKENDC       at 0 range 10 .. 10;
      DABORTC        at 0 range 11 .. 11;
      Reserved_12_20 at 0 range 12 .. 20;
      BUSYD0ENDC     at 0 range 21 .. 21;
      SDIOITC        at 0 range 22 .. 22;
      ACKFAILC       at 0 range 23 .. 23;
      ACKTIMEOUTC    at 0 range 24 .. 24;
      VSWENDC        at 0 range 25 .. 25;
      CKSTOPC        at 0 range 26 .. 26;
      IDMATEC        at 0 range 27 .. 27;
      IDMABTCC       at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  mask register
   type MASK_Register is record
      CCRCFAILIE     : Boolean := False;
      --  Command CRC fail interrupt enable
      DCRCFAILIE     : Boolean := False;
      --  Data CRC fail interrupt enable
      CTIMEOUTIE     : Boolean := False;
      --  Command timeout interrupt enable
      DTIMEOUTIE     : Boolean := False;
      --  Data timeout interrupt enable
      TXUNDERRIE     : Boolean := False;
      --  Tx FIFO underrun error interrupt enable
      RXOVERRIE      : Boolean := False;
      --  Rx FIFO overrun error interrupt enable
      CMDRENDIE      : Boolean := False;
      --  Command response received interrupt enable
      CMDSENTIE      : Boolean := False;
      --  Command sent interrupt enable
      DATAENDIE      : Boolean := False;
      --  Data end interrupt enable
      DHOLDIE        : Boolean := False;
      --  Data hold interrupt enable
      DBCKENDIE      : Boolean := False;
      --  Data block end interrupt enable
      DABORTIE       : Boolean := False;
      --  Data transfer aborted interrupt enable
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  unspecified
      TXFIFOHEIE     : Boolean := False;
      --  Tx FIFO half empty interrupt enable
      RXFIFOHFIE     : Boolean := False;
      --  Rx FIFO half full interrupt enable
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  unspecified
      RXFIFOFIE      : Boolean := False;
      --  Rx FIFO full interrupt enable
      TXFIFOEIE      : Boolean := False;
      --  Tx FIFO empty interrupt enable
      Reserved_19_20 : HAL.UInt2 := 16#0#;
      --  unspecified
      BUSYD0ENDIE    : Boolean := False;
      --  BUSYD0END interrupt enable
      SDIOITIE       : Boolean := False;
      --  SDIO mode interrupt received interrupt enable
      ACKFAILIE      : Boolean := False;
      --  Acknowledgement fail interrupt enable
      ACKTIMEOUTIE   : Boolean := False;
      --  Acknowledge timeout interrupt enable
      VSWENDIE       : Boolean := False;
      --  Voltage switch critical timing section completion interrupt enable
      CKSTOPIE       : Boolean := False;
      --  Voltage switch clock stopped interrupt enable
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  unspecified
      IDMABTCIE      : Boolean := False;
      --  IDMA buffer transfer complete interrupt enable
      Reserved_29_31 : HAL.UInt3 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MASK_Register use record
      CCRCFAILIE     at 0 range 0 .. 0;
      DCRCFAILIE     at 0 range 1 .. 1;
      CTIMEOUTIE     at 0 range 2 .. 2;
      DTIMEOUTIE     at 0 range 3 .. 3;
      TXUNDERRIE     at 0 range 4 .. 4;
      RXOVERRIE      at 0 range 5 .. 5;
      CMDRENDIE      at 0 range 6 .. 6;
      CMDSENTIE      at 0 range 7 .. 7;
      DATAENDIE      at 0 range 8 .. 8;
      DHOLDIE        at 0 range 9 .. 9;
      DBCKENDIE      at 0 range 10 .. 10;
      DABORTIE       at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      TXFIFOHEIE     at 0 range 14 .. 14;
      RXFIFOHFIE     at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      RXFIFOFIE      at 0 range 17 .. 17;
      TXFIFOEIE      at 0 range 18 .. 18;
      Reserved_19_20 at 0 range 19 .. 20;
      BUSYD0ENDIE    at 0 range 21 .. 21;
      SDIOITIE       at 0 range 22 .. 22;
      ACKFAILIE      at 0 range 23 .. 23;
      ACKTIMEOUTIE   at 0 range 24 .. 24;
      VSWENDIE       at 0 range 25 .. 25;
      CKSTOPIE       at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      IDMABTCIE      at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype ACKTIMER_ACKTIME_Field is HAL.UInt25;

   --  Acknowledgement timer register
   type ACKTIMER_Register is record
      ACKTIME        : ACKTIMER_ACKTIME_Field := 16#0#;
      --  Boot acknowledgement timeout period
      Reserved_25_31 : HAL.UInt7 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACKTIMER_Register use record
      ACKTIME        at 0 range 0 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  DMA control register
   type IDMACTRL_Register is record
      IDMAEN        : Boolean := False;
      --  IDMA enable
      IDMABMODE     : Boolean := False;
      --  Buffer mode selection
      IDMABACT      : Boolean := False;
      --  Double buffer mode active buffer indication
      Reserved_3_31 : HAL.UInt29 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDMACTRL_Register use record
      IDMAEN        at 0 range 0 .. 0;
      IDMABMODE     at 0 range 1 .. 1;
      IDMABACT      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype IDMABSIZER_IDMABNDT_Field is HAL.UInt8;

   --  IDMA buffer size register
   type IDMABSIZER_Register is record
      Reserved_0_4   : HAL.UInt5 := 16#0#;
      --  unspecified
      IDMABNDT       : IDMABSIZER_IDMABNDT_Field := 16#0#;
      --  Number of bytes per buffer
      Reserved_13_31 : HAL.UInt19 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDMABSIZER_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      IDMABNDT       at 0 range 5 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Secure digital input/output SDMMC interface
   type SDMMC_Peripheral is record
      POWER      : aliased POWER_Register;
      --  power control register
      CLKCR      : aliased CLKCR_Register;
      --  SDI clock control register
      ARG        : aliased HAL.UInt32;
      --  argument register
      CMD        : aliased CMD_Register;
      --  command register
      RESPCMD    : aliased RESPCMD_Register;
      --  command response register
      RESP1      : aliased HAL.UInt32;
      --  response 1..4 register
      RESP2      : aliased HAL.UInt32;
      --  response 1..4 register
      RESP3      : aliased HAL.UInt32;
      --  response 1..4 register
      RESP4      : aliased HAL.UInt32;
      --  response 1..4 register
      DTIMER     : aliased HAL.UInt32;
      --  data timer register
      DLEN       : aliased DLEN_Register;
      --  data length register
      DCTRL      : aliased DCTRL_Register;
      --  data control register
      DCNTR      : aliased DCNTR_Register;
      --  data counter register
      STA        : aliased STA_Register;
      --  status register
      ICR        : aliased ICR_Register;
      --  interrupt clear register
      MASK       : aliased MASK_Register;
      --  mask register
      ACKTIMER   : aliased ACKTIMER_Register;
      --  Acknowledgement timer register
      IDMACTRL   : aliased IDMACTRL_Register;
      --  DMA control register
      IDMABSIZER : aliased IDMABSIZER_Register;
      --  IDMA buffer size register
      IDMABASE0  : aliased HAL.UInt32;
      --  IDMA buffer 0 base address register
      IDMABASE1  : aliased HAL.UInt32;
      --  IDMA buffer 1 base address register
      FIFO       : aliased HAL.UInt32;
      --  data FIFO register
   end record
     with Volatile;

   for SDMMC_Peripheral use record
      POWER      at 16#0# range 0 .. 31;
      CLKCR      at 16#4# range 0 .. 31;
      ARG        at 16#8# range 0 .. 31;
      CMD        at 16#C# range 0 .. 31;
      RESPCMD    at 16#10# range 0 .. 31;
      RESP1      at 16#14# range 0 .. 31;
      RESP2      at 16#18# range 0 .. 31;
      RESP3      at 16#1C# range 0 .. 31;
      RESP4      at 16#20# range 0 .. 31;
      DTIMER     at 16#24# range 0 .. 31;
      DLEN       at 16#28# range 0 .. 31;
      DCTRL      at 16#2C# range 0 .. 31;
      DCNTR      at 16#30# range 0 .. 31;
      STA        at 16#34# range 0 .. 31;
      ICR        at 16#38# range 0 .. 31;
      MASK       at 16#3C# range 0 .. 31;
      ACKTIMER   at 16#40# range 0 .. 31;
      IDMACTRL   at 16#50# range 0 .. 31;
      IDMABSIZER at 16#54# range 0 .. 31;
      IDMABASE0  at 16#58# range 0 .. 31;
      IDMABASE1  at 16#5C# range 0 .. 31;
      FIFO       at 16#80# range 0 .. 31;
   end record;

   --  Secure digital input/output SDMMC interface
   SDMMC_Periph : aliased SDMMC_Peripheral
     with Import, Address => SDMMC_Base;

end STM32_SVD.SDMMC;
