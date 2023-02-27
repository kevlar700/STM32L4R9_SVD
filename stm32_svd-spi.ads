pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.SPI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR1_BR_Field is HAL.UInt3;

   --  control register 1
   type CR1_Register is record
      CPHA           : Boolean := False;
      --  Clock phase
      CPOL           : Boolean := False;
      --  Clock polarity
      MSTR           : Boolean := False;
      --  Master selection
      BR             : CR1_BR_Field := 16#0#;
      --  Baud rate control
      SPE            : Boolean := False;
      --  SPI enable
      LSBFIRST       : Boolean := False;
      --  Frame format
      SSI            : Boolean := False;
      --  Internal slave select
      SSM            : Boolean := False;
      --  Software slave management
      RXONLY         : Boolean := False;
      --  Receive only mode enabled
      CRCL           : Boolean := False;
      --  CRC length
      CRCNEXT        : Boolean := False;
      --  TX XRC next
      CRCEN          : Boolean := False;
      --  Hardware CRC calculation enable
      BIDIOE         : Boolean := False;
      --  Output enable in bidirectional mode
      BIDIMODE       : Boolean := False;
      --  Bidirectional data mode enable
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      CPHA           at 0 range 0 .. 0;
      CPOL           at 0 range 1 .. 1;
      MSTR           at 0 range 2 .. 2;
      BR             at 0 range 3 .. 5;
      SPE            at 0 range 6 .. 6;
      LSBFIRST       at 0 range 7 .. 7;
      SSI            at 0 range 8 .. 8;
      SSM            at 0 range 9 .. 9;
      RXONLY         at 0 range 10 .. 10;
      CRCL           at 0 range 11 .. 11;
      CRCNEXT        at 0 range 12 .. 12;
      CRCEN          at 0 range 13 .. 13;
      BIDIOE         at 0 range 14 .. 14;
      BIDIMODE       at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CR2_DS_Field is HAL.UInt4;

   --  control register 2
   type CR2_Register is record
      RXDMAEN        : Boolean := False;
      --  Rx buffer DMA enable
      TXDMAEN        : Boolean := False;
      --  Tx buffer DMA enable
      SSOE           : Boolean := False;
      --  SS output enable
      NSSP           : Boolean := False;
      --  NSS pulse management
      FRF            : Boolean := False;
      --  Frame format
      ERRIE          : Boolean := False;
      --  Error interrupt enable
      RXNEIE         : Boolean := False;
      --  RX buffer not empty interrupt enable
      TXEIE          : Boolean := False;
      --  Tx buffer empty interrupt enable
      DS             : CR2_DS_Field := 16#0#;
      --  Data size
      FRXTH          : Boolean := False;
      --  FIFO reception threshold
      LDMA_RX        : Boolean := False;
      --  Last DMA transfer for reception
      LDMA_TX        : Boolean := False;
      --  Last DMA transfer for transmission
      Reserved_15_31 : HAL.UInt17 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      RXDMAEN        at 0 range 0 .. 0;
      TXDMAEN        at 0 range 1 .. 1;
      SSOE           at 0 range 2 .. 2;
      NSSP           at 0 range 3 .. 3;
      FRF            at 0 range 4 .. 4;
      ERRIE          at 0 range 5 .. 5;
      RXNEIE         at 0 range 6 .. 6;
      TXEIE          at 0 range 7 .. 7;
      DS             at 0 range 8 .. 11;
      FRXTH          at 0 range 12 .. 12;
      LDMA_RX        at 0 range 13 .. 13;
      LDMA_TX        at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype SR_FRLVL_Field is HAL.UInt2;
   subtype SR_FTLVL_Field is HAL.UInt2;

   --  status register
   type SR_Register is record
      RXNE           : Boolean := False;
      --  Read-only. Receive buffer not empty
      TXE            : Boolean := True;
      --  Read-only. Transmit buffer empty
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  unspecified
      CRCERR         : Boolean := False;
      --  CRC error flag
      MODF           : Boolean := False;
      --  Read-only. Mode fault
      OVR            : Boolean := False;
      --  Read-only. Overrun flag
      BSY            : Boolean := False;
      --  Read-only. Busy flag
      FRE            : Boolean := False;
      --  Read-only. TI frame format error
      FRLVL          : SR_FRLVL_Field := 16#0#;
      --  Read-only. FIFO reception level
      FTLVL          : SR_FTLVL_Field := 16#0#;
      --  Read-only. FIFO transmission level
      Reserved_13_31 : HAL.UInt19 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      RXNE           at 0 range 0 .. 0;
      TXE            at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CRCERR         at 0 range 4 .. 4;
      MODF           at 0 range 5 .. 5;
      OVR            at 0 range 6 .. 6;
      BSY            at 0 range 7 .. 7;
      FRE            at 0 range 8 .. 8;
      FRLVL          at 0 range 9 .. 10;
      FTLVL          at 0 range 11 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype DR_DR_Field is HAL.UInt16;

   --  data register
   type DR_Register is record
      DR             : DR_DR_Field := 16#0#;
      --  Data register
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DR_Register use record
      DR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CRCPR_CRCPOLY_Field is HAL.UInt16;

   --  CRC polynomial register
   type CRCPR_Register is record
      CRCPOLY        : CRCPR_CRCPOLY_Field := 16#7#;
      --  CRC polynomial register
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCPR_Register use record
      CRCPOLY        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RXCRCR_RxCRC_Field is HAL.UInt16;

   --  RX CRC register
   type RXCRCR_Register is record
      RxCRC          : RXCRCR_RxCRC_Field;
      --  Read-only. Rx CRC register
      Reserved_16_31 : HAL.UInt16;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXCRCR_Register use record
      RxCRC          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TXCRCR_TxCRC_Field is HAL.UInt16;

   --  TX CRC register
   type TXCRCR_Register is record
      TxCRC          : TXCRCR_TxCRC_Field;
      --  Read-only. Tx CRC register
      Reserved_16_31 : HAL.UInt16;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXCRCR_Register use record
      TxCRC          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial peripheral interface/Inter-IC sound
   type SPI_Peripheral is record
      CR1    : aliased CR1_Register;
      --  control register 1
      CR2    : aliased CR2_Register;
      --  control register 2
      SR     : aliased SR_Register;
      --  status register
      DR     : aliased DR_Register;
      --  data register
      CRCPR  : aliased CRCPR_Register;
      --  CRC polynomial register
      RXCRCR : aliased RXCRCR_Register;
      --  RX CRC register
      TXCRCR : aliased TXCRCR_Register;
      --  TX CRC register
   end record
     with Volatile;

   for SPI_Peripheral use record
      CR1    at 16#0# range 0 .. 31;
      CR2    at 16#4# range 0 .. 31;
      SR     at 16#8# range 0 .. 31;
      DR     at 16#C# range 0 .. 31;
      CRCPR  at 16#10# range 0 .. 31;
      RXCRCR at 16#14# range 0 .. 31;
      TXCRCR at 16#18# range 0 .. 31;
   end record;

   --  Serial peripheral interface/Inter-IC sound
   SPI1_Periph : aliased SPI_Peripheral
     with Import, Address => SPI1_Base;

   --  Serial peripheral interface/Inter-IC sound
   SPI2_Periph : aliased SPI_Peripheral
     with Import, Address => SPI2_Base;

   --  Serial peripheral interface/Inter-IC sound
   SPI3_Periph : aliased SPI_Peripheral
     with Import, Address => SPI3_Base;

end STM32_SVD.SPI;
