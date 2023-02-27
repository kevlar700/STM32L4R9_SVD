pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package STM32_SVD.EXTI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  IMR1_MR array
   type IMR1_MR_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt mask register
   type IMR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt32;
            --  MR as a value
         when True =>
            Arr : IMR1_MR_Field_Array;
            --  MR as an array
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  EMR1_MR array
   type EMR1_MR_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Event mask register
   type EMR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt32;
            --  MR as a value
         when True =>
            Arr : EMR1_MR_Field_Array;
            --  MR as an array
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RTSR1_RT array
   type RTSR1_RT_Field_Array is array (0 .. 16) of Boolean
     with Component_Size => 1, Size => 17;

   --  Type definition for RTSR1_RT
   type RTSR1_RT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt17;
            --  RT as a value
         when True =>
            Arr : RTSR1_RT_Field_Array;
            --  RT as an array
      end case;
   end record
     with Unchecked_Union, Size => 17;

   for RTSR1_RT_Field use record
      Val at 0 range 0 .. 16;
      Arr at 0 range 0 .. 16;
   end record;

   --  RTSR1_RT array
   type RTSR1_RT_Field_Array_1 is array (18 .. 22) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for RTSR1_RT
   type RTSR1_RT_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt5;
            --  RT as a value
         when True =>
            Arr : RTSR1_RT_Field_Array_1;
            --  RT as an array
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for RTSR1_RT_Field_1 use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  Rising Trigger selection register
   type RTSR1_Register is record
      RT             : RTSR1_RT_Field := (As_Array => False, Val => 16#0#);
      --  Rising trigger event configuration of line 0
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  unspecified
      RT_1           : RTSR1_RT_Field_1 := (As_Array => False, Val => 16#0#);
      --  Rising trigger event configuration of line 18
      Reserved_23_31 : HAL.UInt9 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTSR1_Register use record
      RT             at 0 range 0 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      RT_1           at 0 range 18 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  FTSR1_FT array
   type FTSR1_FT_Field_Array is array (0 .. 16) of Boolean
     with Component_Size => 1, Size => 17;

   --  Type definition for FTSR1_FT
   type FTSR1_FT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt17;
            --  FT as a value
         when True =>
            Arr : FTSR1_FT_Field_Array;
            --  FT as an array
      end case;
   end record
     with Unchecked_Union, Size => 17;

   for FTSR1_FT_Field use record
      Val at 0 range 0 .. 16;
      Arr at 0 range 0 .. 16;
   end record;

   --  FTSR1_FT array
   type FTSR1_FT_Field_Array_1 is array (18 .. 22) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for FTSR1_FT
   type FTSR1_FT_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt5;
            --  FT as a value
         when True =>
            Arr : FTSR1_FT_Field_Array_1;
            --  FT as an array
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for FTSR1_FT_Field_1 use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  Falling Trigger selection register
   type FTSR1_Register is record
      FT             : FTSR1_FT_Field := (As_Array => False, Val => 16#0#);
      --  Falling trigger event configuration of line 0
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  unspecified
      FT_1           : FTSR1_FT_Field_1 := (As_Array => False, Val => 16#0#);
      --  Falling trigger event configuration of line 18
      Reserved_23_31 : HAL.UInt9 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTSR1_Register use record
      FT             at 0 range 0 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      FT_1           at 0 range 18 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  SWIER1_SWIER array
   type SWIER1_SWIER_Field_Array is array (0 .. 16) of Boolean
     with Component_Size => 1, Size => 17;

   --  Type definition for SWIER1_SWIER
   type SWIER1_SWIER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt17;
            --  SWIER as a value
         when True =>
            Arr : SWIER1_SWIER_Field_Array;
            --  SWIER as an array
      end case;
   end record
     with Unchecked_Union, Size => 17;

   for SWIER1_SWIER_Field use record
      Val at 0 range 0 .. 16;
      Arr at 0 range 0 .. 16;
   end record;

   --  SWIER1_SWIER array
   type SWIER1_SWIER_Field_Array_1 is array (18 .. 22) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for SWIER1_SWIER
   type SWIER1_SWIER_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt5;
            --  SWIER as a value
         when True =>
            Arr : SWIER1_SWIER_Field_Array_1;
            --  SWIER as an array
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for SWIER1_SWIER_Field_1 use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  Software interrupt event register
   type SWIER1_Register is record
      SWIER          : SWIER1_SWIER_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Software Interrupt on line 0
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  unspecified
      SWIER_1        : SWIER1_SWIER_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  Software Interrupt on line 18
      Reserved_23_31 : HAL.UInt9 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWIER1_Register use record
      SWIER          at 0 range 0 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      SWIER_1        at 0 range 18 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  PR1_PR array
   type PR1_PR_Field_Array is array (0 .. 16) of Boolean
     with Component_Size => 1, Size => 17;

   --  Type definition for PR1_PR
   type PR1_PR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt17;
            --  PR as a value
         when True =>
            Arr : PR1_PR_Field_Array;
            --  PR as an array
      end case;
   end record
     with Unchecked_Union, Size => 17;

   for PR1_PR_Field use record
      Val at 0 range 0 .. 16;
      Arr at 0 range 0 .. 16;
   end record;

   --  PR1_PR array
   type PR1_PR_Field_Array_1 is array (18 .. 22) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for PR1_PR
   type PR1_PR_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt5;
            --  PR as a value
         when True =>
            Arr : PR1_PR_Field_Array_1;
            --  PR as an array
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for PR1_PR_Field_1 use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  Pending register
   type PR1_Register is record
      PR             : PR1_PR_Field := (As_Array => False, Val => 16#0#);
      --  Pending bit 0
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  unspecified
      PR_1           : PR1_PR_Field_1 := (As_Array => False, Val => 16#0#);
      --  Pending bit 18
      Reserved_23_31 : HAL.UInt9 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PR1_Register use record
      PR             at 0 range 0 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      PR_1           at 0 range 18 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  IMR2_MR array
   type IMR2_MR_Field_Array is array (32 .. 39) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for IMR2_MR
   type IMR2_MR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt8;
            --  MR as a value
         when True =>
            Arr : IMR2_MR_Field_Array;
            --  MR as an array
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for IMR2_MR_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Interrupt mask register
   type IMR2_Register is record
      MR            : IMR2_MR_Field := (As_Array => False, Val => 16#1#);
      --  Interrupt Mask on external/internal line 32
      Reserved_8_31 : HAL.UInt24 := 16#FFFFFF#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMR2_Register use record
      MR            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  EMR2_MR array
   type EMR2_MR_Field_Array is array (32 .. 39) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for EMR2_MR
   type EMR2_MR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt8;
            --  MR as a value
         when True =>
            Arr : EMR2_MR_Field_Array;
            --  MR as an array
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for EMR2_MR_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Event mask register
   type EMR2_Register is record
      MR            : EMR2_MR_Field := (As_Array => False, Val => 16#0#);
      --  Event mask on external/internal line 32
      Reserved_8_31 : HAL.UInt24 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMR2_Register use record
      MR            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RTSR2_RT array
   type RTSR2_RT_Field_Array is array (35 .. 38) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for RTSR2_RT
   type RTSR2_RT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt4;
            --  RT as a value
         when True =>
            Arr : RTSR2_RT_Field_Array;
            --  RT as an array
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RTSR2_RT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Rising Trigger selection register
   type RTSR2_Register is record
      Reserved_0_2  : HAL.UInt3 := 16#0#;
      --  unspecified
      RT            : RTSR2_RT_Field := (As_Array => False, Val => 16#0#);
      --  Rising trigger event configuration bit of line 35
      Reserved_7_31 : HAL.UInt25 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTSR2_Register use record
      Reserved_0_2  at 0 range 0 .. 2;
      RT            at 0 range 3 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  FTSR2_FT array
   type FTSR2_FT_Field_Array is array (35 .. 38) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for FTSR2_FT
   type FTSR2_FT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt4;
            --  FT as a value
         when True =>
            Arr : FTSR2_FT_Field_Array;
            --  FT as an array
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for FTSR2_FT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Falling Trigger selection register
   type FTSR2_Register is record
      Reserved_0_2  : HAL.UInt3 := 16#0#;
      --  unspecified
      FT            : FTSR2_FT_Field := (As_Array => False, Val => 16#0#);
      --  Falling trigger event configuration bit of line 35
      Reserved_7_31 : HAL.UInt25 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTSR2_Register use record
      Reserved_0_2  at 0 range 0 .. 2;
      FT            at 0 range 3 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  SWIER2_SWI array
   type SWIER2_SWI_Field_Array is array (35 .. 38) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for SWIER2_SWI
   type SWIER2_SWI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt4;
            --  SWI as a value
         when True =>
            Arr : SWIER2_SWI_Field_Array;
            --  SWI as an array
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SWIER2_SWI_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Software interrupt event register
   type SWIER2_Register is record
      Reserved_0_2  : HAL.UInt3 := 16#0#;
      --  unspecified
      SWI           : SWIER2_SWI_Field := (As_Array => False, Val => 16#0#);
      --  Software interrupt on line 35
      Reserved_7_31 : HAL.UInt25 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWIER2_Register use record
      Reserved_0_2  at 0 range 0 .. 2;
      SWI           at 0 range 3 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  PR2_PIF array
   type PR2_PIF_Field_Array is array (35 .. 38) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PR2_PIF
   type PR2_PIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            Val : HAL.UInt4;
            --  PIF as a value
         when True =>
            Arr : PR2_PIF_Field_Array;
            --  PIF as an array
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PR2_PIF_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Pending register
   type PR2_Register is record
      Reserved_0_2  : HAL.UInt3 := 16#0#;
      --  unspecified
      PIF           : PR2_PIF_Field := (As_Array => False, Val => 16#0#);
      --  Pending interrupt flag on line 35
      Reserved_7_31 : HAL.UInt25 := 16#0#;
      --  unspecified
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PR2_Register use record
      Reserved_0_2  at 0 range 0 .. 2;
      PIF           at 0 range 3 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  External interrupt/event controller
   type EXTI_Peripheral is record
      IMR1   : aliased IMR1_Register;
      --  Interrupt mask register
      EMR1   : aliased EMR1_Register;
      --  Event mask register
      RTSR1  : aliased RTSR1_Register;
      --  Rising Trigger selection register
      FTSR1  : aliased FTSR1_Register;
      --  Falling Trigger selection register
      SWIER1 : aliased SWIER1_Register;
      --  Software interrupt event register
      PR1    : aliased PR1_Register;
      --  Pending register
      IMR2   : aliased IMR2_Register;
      --  Interrupt mask register
      EMR2   : aliased EMR2_Register;
      --  Event mask register
      RTSR2  : aliased RTSR2_Register;
      --  Rising Trigger selection register
      FTSR2  : aliased FTSR2_Register;
      --  Falling Trigger selection register
      SWIER2 : aliased SWIER2_Register;
      --  Software interrupt event register
      PR2    : aliased PR2_Register;
      --  Pending register
   end record
     with Volatile;

   for EXTI_Peripheral use record
      IMR1   at 16#0# range 0 .. 31;
      EMR1   at 16#4# range 0 .. 31;
      RTSR1  at 16#8# range 0 .. 31;
      FTSR1  at 16#C# range 0 .. 31;
      SWIER1 at 16#10# range 0 .. 31;
      PR1    at 16#14# range 0 .. 31;
      IMR2   at 16#20# range 0 .. 31;
      EMR2   at 16#24# range 0 .. 31;
      RTSR2  at 16#28# range 0 .. 31;
      FTSR2  at 16#2C# range 0 .. 31;
      SWIER2 at 16#30# range 0 .. 31;
      PR2    at 16#34# range 0 .. 31;
   end record;

   --  External interrupt/event controller
   EXTI_Periph : aliased EXTI_Peripheral
     with Import, Address => EXTI_Base;

end STM32_SVD.EXTI;
