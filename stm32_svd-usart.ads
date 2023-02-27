pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.USART is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  CR1_DEDT array
   type CR1_DEDT_Field_Array is array (0 .. 4) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for CR1_DEDT
   type CR1_DEDT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt5;
            --  DEDT as a value
         when True =>
            Arr : CR1_DEDT_Field_Array;
            --  DEDT as an array
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for CR1_DEDT_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  CR1_DEAT array
   type CR1_DEAT_Field_Array is array (0 .. 4) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for CR1_DEAT
   type CR1_DEAT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt5;
            --  DEAT as a value
         when True =>
            Arr : CR1_DEAT_Field_Array;
            --  DEAT as an array
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for CR1_DEAT_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  Control register 1
   type CR1_Register is record
      UE             : Boolean := False;
      --  USART enable
      UESM           : Boolean := False;
      --  USART enable in Stop mode
      RE             : Boolean := False;
      --  Receiver enable
      TE             : Boolean := False;
      --  Transmitter enable
      IDLEIE         : Boolean := False;
      --  IDLE interrupt enable
      RXNEIE         : Boolean := False;
      --  RXNE interrupt enable
      TCIE           : Boolean := False;
      --  Transmission complete interrupt enable
      TXEIE          : Boolean := False;
      --  interrupt enable
      PEIE           : Boolean := False;
      --  PE interrupt enable
      PS             : Boolean := False;
      --  Parity selection
      PCE            : Boolean := False;
      --  Parity control enable
      WAKE           : Boolean := False;
      --  Receiver wakeup method
      M0             : Boolean := False;
      --  Word length
      MME            : Boolean := False;
      --  Mute mode enable
      CMIE           : Boolean := False;
      --  Character match interrupt enable
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  unspecified
      DEDT           : CR1_DEDT_Field := (As_Array => False, Val => 16#0#);
      --  DEDT0
      DEAT           : CR1_DEAT_Field := (As_Array => False, Val => 16#0#);
      --  DEAT0
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  unspecified
      M1             : Boolean := False;
      --  Word length
      Reserved_29_31 : HAL.UInt3 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      UE             at 0 range 0 .. 0;
      UESM           at 0 range 1 .. 1;
      RE             at 0 range 2 .. 2;
      TE             at 0 range 3 .. 3;
      IDLEIE         at 0 range 4 .. 4;
      RXNEIE         at 0 range 5 .. 5;
      TCIE           at 0 range 6 .. 6;
      TXEIE          at 0 range 7 .. 7;
      PEIE           at 0 range 8 .. 8;
      PS             at 0 range 9 .. 9;
      PCE            at 0 range 10 .. 10;
      WAKE           at 0 range 11 .. 11;
      M0             at 0 range 12 .. 12;
      MME            at 0 range 13 .. 13;
      CMIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      DEDT           at 0 range 16 .. 20;
      DEAT           at 0 range 21 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      M1             at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CR2_STOP_Field is HAL.UInt2;
   subtype CR2_ADD0_3_Field is HAL.UInt4;
   subtype CR2_ADD4_7_Field is HAL.UInt4;

   --  Control register 2
   type CR2_Register is record
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  unspecified
      ADDM7          : Boolean := False;
      --  7-bit Address Detection/4-bit Address Detection
      Reserved_5_10  : HAL.UInt6 := 16#0#;
      --  unspecified
      CLKEN          : Boolean := False;
      --  Clock enable
      STOP           : CR2_STOP_Field := 16#0#;
      --  STOP bits
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  unspecified
      SWAP           : Boolean := False;
      --  Swap TX/RX pins
      RXINV          : Boolean := False;
      --  RX pin active level inversion
      TXINV          : Boolean := False;
      --  TX pin active level inversion
      DATAINV        : Boolean := False;
      --  Binary data inversion
      MSBFIRST       : Boolean := False;
      --  Most significant bit first
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  unspecified
      ADD0_3         : CR2_ADD0_3_Field := 16#0#;
      --  Address of the USART node
      ADD4_7         : CR2_ADD4_7_Field := 16#0#;
      --  Address of the USART node
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      ADDM7          at 0 range 4 .. 4;
      Reserved_5_10  at 0 range 5 .. 10;
      CLKEN          at 0 range 11 .. 11;
      STOP           at 0 range 12 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      SWAP           at 0 range 15 .. 15;
      RXINV          at 0 range 16 .. 16;
      TXINV          at 0 range 17 .. 17;
      DATAINV        at 0 range 18 .. 18;
      MSBFIRST       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      ADD0_3         at 0 range 24 .. 27;
      ADD4_7         at 0 range 28 .. 31;
   end record;

   subtype CR3_WUS_Field is HAL.UInt2;

   --  Control register 3
   type CR3_Register is record
      EIE            : Boolean := False;
      --  Error interrupt enable
      Reserved_1_2   : HAL.UInt2 := 16#0#;
      --  unspecified
      HDSEL          : Boolean := False;
      --  Half-duplex selection
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  unspecified
      DMAR           : Boolean := False;
      --  DMA enable receiver
      DMAT           : Boolean := False;
      --  DMA enable transmitter
      RTSE           : Boolean := False;
      --  RTS enable
      CTSE           : Boolean := False;
      --  CTS enable
      CTSIE          : Boolean := False;
      --  CTS interrupt enable
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  unspecified
      OVRDIS         : Boolean := False;
      --  Overrun Disable
      DDRE           : Boolean := False;
      --  DMA Disable on Reception Error
      DEM            : Boolean := False;
      --  Driver enable mode
      DEP            : Boolean := False;
      --  Driver enable polarity selection
      Reserved_16_19 : HAL.UInt4 := 16#0#;
      --  unspecified
      WUS            : CR3_WUS_Field := 16#0#;
      --  Wakeup from Stop mode interrupt flag selection
      WUFIE          : Boolean := False;
      --  Wakeup from Stop mode interrupt enable
      Reserved_23_31 : HAL.UInt9 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR3_Register use record
      EIE            at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      HDSEL          at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DMAR           at 0 range 6 .. 6;
      DMAT           at 0 range 7 .. 7;
      RTSE           at 0 range 8 .. 8;
      CTSE           at 0 range 9 .. 9;
      CTSIE          at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      OVRDIS         at 0 range 12 .. 12;
      DDRE           at 0 range 13 .. 13;
      DEM            at 0 range 14 .. 14;
      DEP            at 0 range 15 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      WUS            at 0 range 20 .. 21;
      WUFIE          at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype BRR_BRR_Field is HAL.UInt20;

   --  Baud rate register
   type BRR_Register is record
      BRR            : BRR_BRR_Field := 16#0#;
      --  BRR
      Reserved_20_31 : HAL.UInt12 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BRR_Register use record
      BRR            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Request register
   type RQR_Register is record
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  unspecified
      SBKRQ         : Boolean := False;
      --  Write-only. Send break request
      MMRQ          : Boolean := False;
      --  Write-only. Mute mode request
      RXFRQ         : Boolean := False;
      --  Write-only. Receive data flush request
      Reserved_4_31 : HAL.UInt28 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RQR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      SBKRQ         at 0 range 1 .. 1;
      MMRQ          at 0 range 2 .. 2;
      RXFRQ         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Interrupt & status register
   type ISR_Register is record
      PE             : Boolean;
      --  Read-only. PE
      FE             : Boolean;
      --  Read-only. FE
      NF             : Boolean;
      --  Read-only. NF
      ORE            : Boolean;
      --  Read-only. ORE
      IDLE           : Boolean;
      --  Read-only. IDLE
      RXNE           : Boolean;
      --  Read-only. RXNE
      TC             : Boolean;
      --  Read-only. TC
      TXE            : Boolean;
      --  Read-only. TXE
      Reserved_8_8   : HAL.Bit;
      --  unspecified
      CTSIF          : Boolean;
      --  Read-only. CTSIF
      CTS            : Boolean;
      --  Read-only. CTS
      Reserved_11_15 : HAL.UInt5;
      --  unspecified
      BUSY           : Boolean;
      --  Read-only. BUSY
      CMF            : Boolean;
      --  Read-only. CMF
      SBKF           : Boolean;
      --  Read-only. SBKF
      RWU            : Boolean;
      --  Read-only. RWU
      WUF            : Boolean;
      --  Read-only. WUF
      TEACK          : Boolean;
      --  Read-only. TEACK
      REACK          : Boolean;
      --  Read-only. REACK
      Reserved_23_31 : HAL.UInt9;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      PE             at 0 range 0 .. 0;
      FE             at 0 range 1 .. 1;
      NF             at 0 range 2 .. 2;
      ORE            at 0 range 3 .. 3;
      IDLE           at 0 range 4 .. 4;
      RXNE           at 0 range 5 .. 5;
      TC             at 0 range 6 .. 6;
      TXE            at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      CTSIF          at 0 range 9 .. 9;
      CTS            at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      BUSY           at 0 range 16 .. 16;
      CMF            at 0 range 17 .. 17;
      SBKF           at 0 range 18 .. 18;
      RWU            at 0 range 19 .. 19;
      WUF            at 0 range 20 .. 20;
      TEACK          at 0 range 21 .. 21;
      REACK          at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  Interrupt flag clear register
   type ICR_Register is record
      PECF           : Boolean := False;
      --  Write-only. Parity error clear flag
      FECF           : Boolean := False;
      --  Write-only. Framing error clear flag
      NCF            : Boolean := False;
      --  Write-only. Noise detected clear flag
      ORECF          : Boolean := False;
      --  Write-only. Overrun error clear flag
      IDLECF         : Boolean := False;
      --  Write-only. Idle line detected clear flag
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  unspecified
      TCCF           : Boolean := False;
      --  Write-only. Transmission complete clear flag
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  unspecified
      CTSCF          : Boolean := False;
      --  Write-only. CTS clear flag
      Reserved_10_16 : HAL.UInt7 := 16#0#;
      --  unspecified
      CMCF           : Boolean := False;
      --  Write-only. Character match clear flag
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  unspecified
      WUCF           : Boolean := False;
      --  Write-only. Wakeup from Stop mode clear flag
      Reserved_21_31 : HAL.UInt11 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register use record
      PECF           at 0 range 0 .. 0;
      FECF           at 0 range 1 .. 1;
      NCF            at 0 range 2 .. 2;
      ORECF          at 0 range 3 .. 3;
      IDLECF         at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      TCCF           at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      CTSCF          at 0 range 9 .. 9;
      Reserved_10_16 at 0 range 10 .. 16;
      CMCF           at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      WUCF           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype RDR_RDR_Field is HAL.UInt9;

   --  Receive data register
   type RDR_Register is record
      RDR           : RDR_RDR_Field;
      --  Read-only. Receive data value
      Reserved_9_31 : HAL.UInt23;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RDR_Register use record
      RDR           at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype TDR_TDR_Field is HAL.UInt9;

   --  Transmit data register
   type TDR_Register is record
      TDR           : TDR_TDR_Field := 16#0#;
      --  Transmit data value
      Reserved_9_31 : HAL.UInt23 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TDR_Register use record
      TDR           at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype CR1_DEDT_Field_1 is HAL.UInt5;
   subtype CR1_DEAT_Field_1 is HAL.UInt5;

   --  Control register 1
   type CR1_Register_1 is record
      UE      : Boolean := False;
      --  USART enable
      UESM    : Boolean := False;
      --  USART enable in Stop mode
      RE      : Boolean := False;
      --  Receiver enable
      TE      : Boolean := False;
      --  Transmitter enable
      IDLEIE  : Boolean := False;
      --  IDLE interrupt enable
      RXFNEIE : Boolean := False;
      --  RX FIFO not empty interrupt enable
      TCIE    : Boolean := False;
      --  Transmission complete interrupt enable
      TXFNFIE : Boolean := False;
      --  TX FIFO not full interrupt enable
      PEIE    : Boolean := False;
      --  PE interrupt enable
      PS      : Boolean := False;
      --  Parity selection
      PCE     : Boolean := False;
      --  Parity control enable
      WAKE    : Boolean := False;
      --  Receiver wakeup method
      M0      : Boolean := False;
      --  Word length
      MME     : Boolean := False;
      --  Mute mode enable
      CMIE    : Boolean := False;
      --  Character match interrupt enable
      OVER8   : Boolean := False;
      --  Oversampling mode
      DEDT    : CR1_DEDT_Field_1 := 16#0#;
      --  Driver enable deassertion time
      DEAT    : CR1_DEAT_Field_1 := 16#0#;
      --  Driver enable assertion time
      RTOIE   : Boolean := False;
      --  Receiver timeout interrupt enable
      EOBIE   : Boolean := False;
      --  End of Block interrupt enable
      M1      : Boolean := False;
      --  Word length
      FIFOEN  : Boolean := False;
      --  FIFO mode enable
      TXFEIE  : Boolean := False;
      --  TX FIFO empty interrupt enable
      RXFFIE  : Boolean := False;
      --  RX FIFO full interrupt enable
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register_1 use record
      UE      at 0 range 0 .. 0;
      UESM    at 0 range 1 .. 1;
      RE      at 0 range 2 .. 2;
      TE      at 0 range 3 .. 3;
      IDLEIE  at 0 range 4 .. 4;
      RXFNEIE at 0 range 5 .. 5;
      TCIE    at 0 range 6 .. 6;
      TXFNFIE at 0 range 7 .. 7;
      PEIE    at 0 range 8 .. 8;
      PS      at 0 range 9 .. 9;
      PCE     at 0 range 10 .. 10;
      WAKE    at 0 range 11 .. 11;
      M0      at 0 range 12 .. 12;
      MME     at 0 range 13 .. 13;
      CMIE    at 0 range 14 .. 14;
      OVER8   at 0 range 15 .. 15;
      DEDT    at 0 range 16 .. 20;
      DEAT    at 0 range 21 .. 25;
      RTOIE   at 0 range 26 .. 26;
      EOBIE   at 0 range 27 .. 27;
      M1      at 0 range 28 .. 28;
      FIFOEN  at 0 range 29 .. 29;
      TXFEIE  at 0 range 30 .. 30;
      RXFFIE  at 0 range 31 .. 31;
   end record;

   subtype CR2_ABRMOD_Field is HAL.UInt2;
   subtype CR2_ADD_Field is HAL.UInt8;

   --  Control register 2
   type CR2_Register_1 is record
      SLVEN        : Boolean := False;
      --  Synchronous slave mode enable
      Reserved_1_2 : HAL.UInt2 := 16#0#;
      --  unspecified
      DIS_NSS      : Boolean := False;
      --  Disable/ignore NSS pin
      ADDM7        : Boolean := False;
      --  7-bit Address Detection/4-bit Address Detection
      LBDL         : Boolean := False;
      --  LIN break detection length
      LBDIE        : Boolean := False;
      --  LIN break detection interrupt enable
      Reserved_7_7 : HAL.Bit := 16#0#;
      --  unspecified
      LBCL         : Boolean := False;
      --  Last bit clock pulse
      CPHA         : Boolean := False;
      --  Clock phase
      CPOL         : Boolean := False;
      --  Clock polarity
      CLKEN        : Boolean := False;
      --  Clock enable
      STOP         : CR2_STOP_Field := 16#0#;
      --  Stop bits
      LINEN        : Boolean := False;
      --  LIN mode enable
      SWAP         : Boolean := False;
      --  Swap TX/RX pins
      RXINV        : Boolean := False;
      --  RX pin active level inversion
      TXINV        : Boolean := False;
      --  TX pin active level inversion
      DATAINV      : Boolean := False;
      --  Binary data inversion
      MSBFIRST     : Boolean := False;
      --  Most significant bit first
      ABREN        : Boolean := False;
      --  Auto baud rate enable
      ABRMOD       : CR2_ABRMOD_Field := 16#0#;
      --  Auto baud rate mode
      RTOEN        : Boolean := False;
      --  Receiver timeout enable
      ADD          : CR2_ADD_Field := 16#0#;
      --  Address of the USART node
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register_1 use record
      SLVEN        at 0 range 0 .. 0;
      Reserved_1_2 at 0 range 1 .. 2;
      DIS_NSS      at 0 range 3 .. 3;
      ADDM7        at 0 range 4 .. 4;
      LBDL         at 0 range 5 .. 5;
      LBDIE        at 0 range 6 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
      LBCL         at 0 range 8 .. 8;
      CPHA         at 0 range 9 .. 9;
      CPOL         at 0 range 10 .. 10;
      CLKEN        at 0 range 11 .. 11;
      STOP         at 0 range 12 .. 13;
      LINEN        at 0 range 14 .. 14;
      SWAP         at 0 range 15 .. 15;
      RXINV        at 0 range 16 .. 16;
      TXINV        at 0 range 17 .. 17;
      DATAINV      at 0 range 18 .. 18;
      MSBFIRST     at 0 range 19 .. 19;
      ABREN        at 0 range 20 .. 20;
      ABRMOD       at 0 range 21 .. 22;
      RTOEN        at 0 range 23 .. 23;
      ADD          at 0 range 24 .. 31;
   end record;

   subtype CR3_SCARCNT_Field is HAL.UInt3;
   subtype CR3_RXFTCFG_Field is HAL.UInt3;
   subtype CR3_TXFTCFG_Field is HAL.UInt3;

   --  Control register 3
   type CR3_Register_1 is record
      EIE            : Boolean := False;
      --  Error interrupt enable
      IREN           : Boolean := False;
      --  IrDA mode enable
      IRLP           : Boolean := False;
      --  IrDA low-power
      HDSEL          : Boolean := False;
      --  Half-duplex selection
      NACK           : Boolean := False;
      --  Smartcard NACK enable
      SCEN           : Boolean := False;
      --  Smartcard mode enable
      DMAR           : Boolean := False;
      --  DMA enable receiver
      DMAT           : Boolean := False;
      --  DMA enable transmitter
      RTSE           : Boolean := False;
      --  RTS enable
      CTSE           : Boolean := False;
      --  CTS enable
      CTSIE          : Boolean := False;
      --  CTS interrupt enable
      ONEBIT         : Boolean := False;
      --  One sample bit method enable
      OVRDIS         : Boolean := False;
      --  Overrun Disable
      DDRE           : Boolean := False;
      --  DMA Disable on Reception Error
      DEM            : Boolean := False;
      --  Driver enable mode
      DEP            : Boolean := False;
      --  Driver enable polarity selection
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  unspecified
      SCARCNT        : CR3_SCARCNT_Field := 16#0#;
      --  Smartcard auto-retry count
      WUS            : CR3_WUS_Field := 16#0#;
      --  Wakeup from low power mode interrupt flag selection
      WUFIE          : Boolean := False;
      --  Wakeup from low power mode interrupt enable
      TXFTIE         : Boolean := False;
      --  TX FIFO threshold interrupt enable
      TCBGTIE        : Boolean := False;
      --  Transmission complete before guard time interrupt enable
      RXFTCFG        : CR3_RXFTCFG_Field := 16#0#;
      --  RX FIFO threshold configuration
      RXFTIE         : Boolean := False;
      --  RX FIFO threshold interrupt enable
      TXFTCFG        : CR3_TXFTCFG_Field := 16#0#;
      --  TX FIFO threshold configuration
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR3_Register_1 use record
      EIE            at 0 range 0 .. 0;
      IREN           at 0 range 1 .. 1;
      IRLP           at 0 range 2 .. 2;
      HDSEL          at 0 range 3 .. 3;
      NACK           at 0 range 4 .. 4;
      SCEN           at 0 range 5 .. 5;
      DMAR           at 0 range 6 .. 6;
      DMAT           at 0 range 7 .. 7;
      RTSE           at 0 range 8 .. 8;
      CTSE           at 0 range 9 .. 9;
      CTSIE          at 0 range 10 .. 10;
      ONEBIT         at 0 range 11 .. 11;
      OVRDIS         at 0 range 12 .. 12;
      DDRE           at 0 range 13 .. 13;
      DEM            at 0 range 14 .. 14;
      DEP            at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      SCARCNT        at 0 range 17 .. 19;
      WUS            at 0 range 20 .. 21;
      WUFIE          at 0 range 22 .. 22;
      TXFTIE         at 0 range 23 .. 23;
      TCBGTIE        at 0 range 24 .. 24;
      RXFTCFG        at 0 range 25 .. 27;
      RXFTIE         at 0 range 28 .. 28;
      TXFTCFG        at 0 range 29 .. 31;
   end record;

   subtype BRR_DIV_Fraction_Field is HAL.UInt4;
   subtype BRR_DIV_Mantissa_Field is HAL.UInt12;

   --  Baud rate register
   type BRR_Register_1 is record
      DIV_Fraction   : BRR_DIV_Fraction_Field := 16#0#;
      --  DIV_Fraction
      DIV_Mantissa   : BRR_DIV_Mantissa_Field := 16#0#;
      --  DIV_Mantissa
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BRR_Register_1 use record
      DIV_Fraction   at 0 range 0 .. 3;
      DIV_Mantissa   at 0 range 4 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GTPR_PSC_Field is HAL.UInt8;
   subtype GTPR_GT_Field is HAL.UInt8;

   --  Guard time and prescaler register
   type GTPR_Register is record
      PSC            : GTPR_PSC_Field := 16#0#;
      --  Prescaler value
      GT             : GTPR_GT_Field := 16#0#;
      --  Guard time value
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTPR_Register use record
      PSC            at 0 range 0 .. 7;
      GT             at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RTOR_RTO_Field is HAL.UInt24;
   subtype RTOR_BLEN_Field is HAL.UInt8;

   --  Receiver timeout register
   type RTOR_Register is record
      RTO  : RTOR_RTO_Field := 16#0#;
      --  Receiver timeout value
      BLEN : RTOR_BLEN_Field := 16#0#;
      --  Block Length
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTOR_Register use record
      RTO  at 0 range 0 .. 23;
      BLEN at 0 range 24 .. 31;
   end record;

   --  Request register
   type RQR_Register_1 is record
      ABRRQ         : Boolean := False;
      --  Write-only. Auto baud rate request
      SBKRQ         : Boolean := False;
      --  Write-only. Send break request
      MMRQ          : Boolean := False;
      --  Write-only. Mute mode request
      RXFRQ         : Boolean := False;
      --  Write-only. Receive data flush request
      TXFRQ         : Boolean := False;
      --  Write-only. Transmit data flush request
      Reserved_5_31 : HAL.UInt27 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RQR_Register_1 use record
      ABRRQ         at 0 range 0 .. 0;
      SBKRQ         at 0 range 1 .. 1;
      MMRQ          at 0 range 2 .. 2;
      RXFRQ         at 0 range 3 .. 3;
      TXFRQ         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Interrupt and status register
   type ISR_Register_1 is record
      PE             : Boolean;
      --  Read-only. Parity error
      FE             : Boolean;
      --  Read-only. Framing error
      NE             : Boolean;
      --  Read-only. Noise detection flag
      ORE            : Boolean;
      --  Read-only. Overrun error
      IDLE           : Boolean;
      --  Read-only. Idle line detected
      RXFNE          : Boolean;
      --  Read-only. RX FIFO not empty
      TC             : Boolean;
      --  Read-only. TX complete
      TXFNF          : Boolean;
      --  Read-only. TX FIFO not full
      LBDF           : Boolean;
      --  Read-only. Lin break detection flag
      CTSIF          : Boolean;
      --  Read-only. CTS toggle interrupt flag
      CTS            : Boolean;
      --  Read-only. Inverted copy of nCTS input pin status
      RTOF           : Boolean;
      --  Read-only. Receiver timeout
      EOBF           : Boolean;
      --  Read-only. End of block flag
      UDR            : Boolean;
      --  Read-only. SPI slave underrun error flag
      ABRE           : Boolean;
      --  Read-only. Auto baud rate error
      ABRF           : Boolean;
      --  Read-only. Auto baud rate flag
      BUSY           : Boolean;
      --  Read-only. Currently busy flag
      CMF            : Boolean;
      --  Read-only. Character match flag
      SBKF           : Boolean;
      --  Read-only. Send break character request flag
      RWU            : Boolean;
      --  Read-only. Receiver in active or mute mode flag
      WUF            : Boolean;
      --  Read-only. Wakeup from low power mode flag
      TEACK          : Boolean;
      --  Read-only. TX enable acknowledge flag
      REACK          : Boolean;
      --  Read-only. RX enable acknowledge flag
      TXFE           : Boolean;
      --  Read-only. TX FIFO empty flag
      RXFF           : Boolean;
      --  Read-only. RX FIFO full flag
      TCBGT          : Boolean;
      --  Read-only. Transmission complete before guard time flag
      RXFT           : Boolean;
      --  Read-only. RX FIFO threshold flag
      TXFT           : Boolean;
      --  Read-only. TX FIFO threshold flag
      Reserved_28_31 : HAL.UInt4;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register_1 use record
      PE             at 0 range 0 .. 0;
      FE             at 0 range 1 .. 1;
      NE             at 0 range 2 .. 2;
      ORE            at 0 range 3 .. 3;
      IDLE           at 0 range 4 .. 4;
      RXFNE          at 0 range 5 .. 5;
      TC             at 0 range 6 .. 6;
      TXFNF          at 0 range 7 .. 7;
      LBDF           at 0 range 8 .. 8;
      CTSIF          at 0 range 9 .. 9;
      CTS            at 0 range 10 .. 10;
      RTOF           at 0 range 11 .. 11;
      EOBF           at 0 range 12 .. 12;
      UDR            at 0 range 13 .. 13;
      ABRE           at 0 range 14 .. 14;
      ABRF           at 0 range 15 .. 15;
      BUSY           at 0 range 16 .. 16;
      CMF            at 0 range 17 .. 17;
      SBKF           at 0 range 18 .. 18;
      RWU            at 0 range 19 .. 19;
      WUF            at 0 range 20 .. 20;
      TEACK          at 0 range 21 .. 21;
      REACK          at 0 range 22 .. 22;
      TXFE           at 0 range 23 .. 23;
      RXFF           at 0 range 24 .. 24;
      TCBGT          at 0 range 25 .. 25;
      RXFT           at 0 range 26 .. 26;
      TXFT           at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Interrupt flag clear register
   type ICR_Register_1 is record
      PECF           : Boolean := False;
      --  Write-only. Parity error clear flag
      FECF           : Boolean := False;
      --  Write-only. Framing error clear flag
      NECF           : Boolean := False;
      --  Write-only. Noise detected clear flag
      ORECF          : Boolean := False;
      --  Write-only. Overrun error clear flag
      IDLECF         : Boolean := False;
      --  Write-only. Idle line detected clear flag
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  unspecified
      TCCF           : Boolean := False;
      --  Write-only. Transmission complete clear flag
      TCBGTCF        : Boolean := False;
      --  Write-only. TX complete before guard time clear flag
      LBDCF          : Boolean := False;
      --  Write-only. LIN break detection clear flag
      CTSCF          : Boolean := False;
      --  Write-only. CTS clear flag
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  unspecified
      RTOCF          : Boolean := False;
      --  Write-only. Receiver timeout clear flag
      EOBCF          : Boolean := False;
      --  Write-only. End of block clear flag
      UDRCF          : Boolean := False;
      --  Write-only. SPI slave underrun clear flag
      Reserved_14_16 : HAL.UInt3 := 16#0#;
      --  unspecified
      CMCF           : Boolean := False;
      --  Write-only. Character match clear flag
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  unspecified
      WUCF           : Boolean := False;
      --  Write-only. Wakeup from low power mode clear flag
      Reserved_21_31 : HAL.UInt11 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register_1 use record
      PECF           at 0 range 0 .. 0;
      FECF           at 0 range 1 .. 1;
      NECF           at 0 range 2 .. 2;
      ORECF          at 0 range 3 .. 3;
      IDLECF         at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      TCCF           at 0 range 6 .. 6;
      TCBGTCF        at 0 range 7 .. 7;
      LBDCF          at 0 range 8 .. 8;
      CTSCF          at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      RTOCF          at 0 range 11 .. 11;
      EOBCF          at 0 range 12 .. 12;
      UDRCF          at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      CMCF           at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      WUCF           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype PRESC_PRESCALER_Field is HAL.UInt4;

   --  Prescaler register
   type PRESC_Register is record
      PRESCALER     : PRESC_PRESCALER_Field := 16#0#;
      --  Transmit data value
      Reserved_4_31 : HAL.UInt28 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRESC_Register use record
      PRESCALER     at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Universal synchronous asynchronous receiver transmitter
   type LPUART1_Peripheral is record
      CR1 : aliased CR1_Register;
      --  Control register 1
      CR2 : aliased CR2_Register;
      --  Control register 2
      CR3 : aliased CR3_Register;
      --  Control register 3
      BRR : aliased BRR_Register;
      --  Baud rate register
      RQR : aliased RQR_Register;
      --  Request register
      ISR : aliased ISR_Register;
      --  Interrupt & status register
      ICR : aliased ICR_Register;
      --  Interrupt flag clear register
      RDR : aliased RDR_Register;
      --  Receive data register
      TDR : aliased TDR_Register;
      --  Transmit data register
   end record
     with Volatile;

   for LPUART1_Peripheral use record
      CR1 at 16#0# range 0 .. 31;
      CR2 at 16#4# range 0 .. 31;
      CR3 at 16#8# range 0 .. 31;
      BRR at 16#C# range 0 .. 31;
      RQR at 16#18# range 0 .. 31;
      ISR at 16#1C# range 0 .. 31;
      ICR at 16#20# range 0 .. 31;
      RDR at 16#24# range 0 .. 31;
      TDR at 16#28# range 0 .. 31;
   end record;

   --  Universal synchronous asynchronous receiver transmitter
   LPUART1_Periph : aliased LPUART1_Peripheral
     with Import, Address => LPUART1_Base;

   --  Universal synchronous asynchronous receiver transmitter
   type USART_Peripheral is record
      CR1   : aliased CR1_Register_1;
      --  Control register 1
      CR2   : aliased CR2_Register_1;
      --  Control register 2
      CR3   : aliased CR3_Register_1;
      --  Control register 3
      BRR   : aliased BRR_Register_1;
      --  Baud rate register
      GTPR  : aliased GTPR_Register;
      --  Guard time and prescaler register
      RTOR  : aliased RTOR_Register;
      --  Receiver timeout register
      RQR   : aliased RQR_Register_1;
      --  Request register
      ISR   : aliased ISR_Register_1;
      --  Interrupt and status register
      ICR   : aliased ICR_Register_1;
      --  Interrupt flag clear register
      RDR   : aliased RDR_Register;
      --  Receive data register
      TDR   : aliased TDR_Register;
      --  Transmit data register
      PRESC : aliased PRESC_Register;
      --  Prescaler register
   end record
     with Volatile;

   for USART_Peripheral use record
      CR1   at 16#0# range 0 .. 31;
      CR2   at 16#4# range 0 .. 31;
      CR3   at 16#8# range 0 .. 31;
      BRR   at 16#C# range 0 .. 31;
      GTPR  at 16#10# range 0 .. 31;
      RTOR  at 16#14# range 0 .. 31;
      RQR   at 16#18# range 0 .. 31;
      ISR   at 16#1C# range 0 .. 31;
      ICR   at 16#20# range 0 .. 31;
      RDR   at 16#24# range 0 .. 31;
      TDR   at 16#28# range 0 .. 31;
      PRESC at 16#2C# range 0 .. 31;
   end record;

   --  Universal synchronous asynchronous receiver transmitter
   UART4_Periph : aliased USART_Peripheral
     with Import, Address => UART4_Base;

   --  Universal synchronous asynchronous receiver transmitter
   UART5_Periph : aliased USART_Peripheral
     with Import, Address => UART5_Base;

   --  Universal synchronous asynchronous receiver transmitter
   USART1_Periph : aliased USART_Peripheral
     with Import, Address => USART1_Base;

   --  Universal synchronous asynchronous receiver transmitter
   USART2_Periph : aliased USART_Peripheral
     with Import, Address => USART2_Base;

   --  Universal synchronous asynchronous receiver transmitter
   USART3_Periph : aliased USART_Peripheral
     with Import, Address => USART3_Base;

end STM32_SVD.USART;
