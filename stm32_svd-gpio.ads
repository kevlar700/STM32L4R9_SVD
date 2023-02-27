pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.GPIO is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  MODER array element
   subtype MODER_Element is HAL.UInt2;

   --  MODER array
   type MODER_Field_Array is array (0 .. 15) of MODER_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port mode register
   type MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt32;
            --  MODER as a value
         when True =>
            Arr : MODER_Field_Array;
            --  MODER as an array
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  OTYPER_OT array
   type OTYPER_OT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for OTYPER_OT
   type OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  OT as a value
         when True =>
            Arr : OTYPER_OT_Field_Array;
            --  OT as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for OTYPER_OT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port output type register
   type OTYPER_Register is record
      OT             : OTYPER_OT_Field := (As_Array => False, Val => 16#0#);
      --  Port x configuration bits (y = 0..15)
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  OSPEEDR array element
   subtype OSPEEDR_Element is HAL.UInt2;

   --  OSPEEDR array
   type OSPEEDR_Field_Array is array (0 .. 15) of OSPEEDR_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port output speed register
   type OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt32;
            --  OSPEEDR as a value
         when True =>
            Arr : OSPEEDR_Field_Array;
            --  OSPEEDR as an array
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PUPDR array element
   subtype PUPDR_Element is HAL.UInt2;

   --  PUPDR array
   type PUPDR_Field_Array is array (0 .. 15) of PUPDR_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port pull-up/pull-down register
   type PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt32;
            --  PUPDR as a value
         when True =>
            Arr : PUPDR_Field_Array;
            --  PUPDR as an array
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IDR array
   type IDR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for IDR
   type IDR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  IDR as a value
         when True =>
            Arr : IDR_Field_Array;
            --  IDR as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for IDR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port input data register
   type IDR_Register is record
      IDR            : IDR_Field;
      --  Read-only. Port input data (y = 0..15)
      Reserved_16_31 : HAL.UInt16;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDR_Register use record
      IDR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  ODR array
   type ODR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for ODR
   type ODR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  ODR as a value
         when True =>
            Arr : ODR_Field_Array;
            --  ODR as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for ODR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port output data register
   type ODR_Register is record
      ODR            : ODR_Field := (As_Array => False, Val => 16#0#);
      --  Port output data (y = 0..15)
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ODR_Register use record
      ODR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  BSRR_BS array
   type BSRR_BS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for BSRR_BS
   type BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  BS as a value
         when True =>
            Arr : BSRR_BS_Field_Array;
            --  BS as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for BSRR_BS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  BSRR_BR array
   type BSRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for BSRR_BR
   type BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  BR as a value
         when True =>
            Arr : BSRR_BR_Field_Array;
            --  BR as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for BSRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port bit set/reset register
   type BSRR_Register is record
      BS : BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x set bit y (y= 0..15)
      BR : BSRR_BR_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x set bit y (y= 0..15)
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSRR_Register use record
      BS at 0 range 0 .. 15;
      BR at 0 range 16 .. 31;
   end record;

   --  LCKR_LCK array
   type LCKR_LCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for LCKR_LCK
   type LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  LCK as a value
         when True =>
            Arr : LCKR_LCK_Field_Array;
            --  LCK as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for LCKR_LCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port configuration lock register
   type LCKR_Register is record
      LCK            : LCKR_LCK_Field := (As_Array => False, Val => 16#0#);
      --  Port x lock bit y (y= 0..15)
      LCKK           : Boolean := False;
      --  Port x lock bit y (y= 0..15)
      Reserved_17_31 : HAL.UInt15 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  AFRL array element
   subtype AFRL_Element is HAL.UInt4;

   --  AFRL array
   type AFRL_Field_Array is array (0 .. 7) of AFRL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO alternate function low register
   type AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt32;
            --  AFRL as a value
         when True =>
            Arr : AFRL_Field_Array;
            --  AFRL as an array
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  AFRH array element
   subtype AFRH_Element is HAL.UInt4;

   --  AFRH array
   type AFRH_Field_Array is array (8 .. 15) of AFRH_Element
     with Component_Size => 4, Size => 32;

   --  GPIO alternate function high register
   type AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt32;
            --  AFRH as a value
         when True =>
            Arr : AFRH_Field_Array;
            --  AFRH as an array
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BRR_BR array
   type BRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for BRR_BR
   type BRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  BR as a value
         when True =>
            Arr : BRR_BR_Field_Array;
            --  BR as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for BRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port bit reset register
   type BRR_Register is record
      BR             : BRR_BR_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port Reset bit
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BRR_Register use record
      BR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  ASCR_ASC array
   type ASCR_ASC_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for ASCR_ASC
   type ASCR_ASC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt16;
            --  ASC as a value
         when True =>
            Arr : ASCR_ASC_Field_Array;
            --  ASC as an array
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for ASCR_ASC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port analog switch control register
   type ASCR_Register is record
      ASC            : ASCR_ASC_Field := (As_Array => False, Val => 16#0#);
      --  Port analog switch control
      Reserved_16_31 : HAL.UInt16 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASCR_Register use record
      ASC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General-purpose I/Os
   type GPIOA_Peripheral is record
      MODER   : aliased MODER_Register;
      --  GPIO port mode register
      OTYPER  : aliased OTYPER_Register;
      --  GPIO port output type register
      OSPEEDR : aliased OSPEEDR_Register;
      --  GPIO port output speed register
      PUPDR   : aliased PUPDR_Register;
      --  GPIO port pull-up/pull-down register
      IDR     : aliased IDR_Register;
      --  GPIO port input data register
      ODR     : aliased ODR_Register;
      --  GPIO port output data register
      BSRR    : aliased BSRR_Register;
      --  GPIO port bit set/reset register
      LCKR    : aliased LCKR_Register;
      --  GPIO port configuration lock register
      AFRL    : aliased AFRL_Register;
      --  GPIO alternate function low register
      AFRH    : aliased AFRH_Register;
      --  GPIO alternate function high register
      BRR     : aliased BRR_Register;
      --  GPIO port bit reset register
      ASCR    : aliased ASCR_Register;
      --  GPIO port analog switch control register
   end record
     with Volatile;

   for GPIOA_Peripheral use record
      MODER   at 16#0# range 0 .. 31;
      OTYPER  at 16#4# range 0 .. 31;
      OSPEEDR at 16#8# range 0 .. 31;
      PUPDR   at 16#C# range 0 .. 31;
      IDR     at 16#10# range 0 .. 31;
      ODR     at 16#14# range 0 .. 31;
      BSRR    at 16#18# range 0 .. 31;
      LCKR    at 16#1C# range 0 .. 31;
      AFRL    at 16#20# range 0 .. 31;
      AFRH    at 16#24# range 0 .. 31;
      BRR     at 16#28# range 0 .. 31;
      ASCR    at 16#2C# range 0 .. 31;
   end record;

   --  General-purpose I/Os
   GPIOA_Periph : aliased GPIOA_Peripheral
     with Import, Address => GPIOA_Base;

   --  General-purpose I/Os
   GPIOB_Periph : aliased GPIOA_Peripheral
     with Import, Address => GPIOB_Base;

   --  General-purpose I/Os
   GPIOC_Periph : aliased GPIOA_Peripheral
     with Import, Address => GPIOC_Base;

   --  General-purpose I/Os
   GPIOD_Periph : aliased GPIOA_Peripheral
     with Import, Address => GPIOD_Base;

   --  General-purpose I/Os
   GPIOE_Periph : aliased GPIOA_Peripheral
     with Import, Address => GPIOE_Base;

   --  General-purpose I/Os
   GPIOF_Periph : aliased GPIOA_Peripheral
     with Import, Address => GPIOF_Base;

   --  General-purpose I/Os
   GPIOG_Periph : aliased GPIOA_Peripheral
     with Import, Address => GPIOG_Base;

   --  General-purpose I/Os
   GPIOH_Periph : aliased GPIOA_Peripheral
     with Import, Address => GPIOH_Base;

   --  General-purpose I/Os
   type GPIOI_Peripheral is record
      MODER   : aliased MODER_Register;
      --  GPIO port mode register
      OTYPER  : aliased OTYPER_Register;
      --  GPIO port output type register
      OSPEEDR : aliased OSPEEDR_Register;
      --  GPIO port output speed register
      PUPDR   : aliased PUPDR_Register;
      --  GPIO port pull-up/pull-down register
      IDR     : aliased IDR_Register;
      --  GPIO port input data register
      ODR     : aliased ODR_Register;
      --  GPIO port output data register
      BSRR    : aliased BSRR_Register;
      --  GPIO port bit set/reset register
      LCKR    : aliased LCKR_Register;
      --  GPIO port configuration lock register
      AFRL    : aliased AFRL_Register;
      --  GPIO alternate function low register
      AFRH    : aliased AFRH_Register;
      --  GPIO alternate function high register
      BRR     : aliased BRR_Register;
      --  GPIO port bit reset register
   end record
     with Volatile;

   for GPIOI_Peripheral use record
      MODER   at 16#0# range 0 .. 31;
      OTYPER  at 16#4# range 0 .. 31;
      OSPEEDR at 16#8# range 0 .. 31;
      PUPDR   at 16#C# range 0 .. 31;
      IDR     at 16#10# range 0 .. 31;
      ODR     at 16#14# range 0 .. 31;
      BSRR    at 16#18# range 0 .. 31;
      LCKR    at 16#1C# range 0 .. 31;
      AFRL    at 16#20# range 0 .. 31;
      AFRH    at 16#24# range 0 .. 31;
      BRR     at 16#28# range 0 .. 31;
   end record;

   --  General-purpose I/Os
   GPIOI_Periph : aliased GPIOI_Peripheral
     with Import, Address => GPIOI_Base;

end STM32_SVD.GPIO;
