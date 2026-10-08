import TaoBundleAssembly0401
import TaoBundleChunkBatch0540
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402
def root_5742600 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742600_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742600_left_fuel : Nat := 7
def small_5742600_left_count : Nat := 19
def small_5742600_left_encoded : String := "120700FE05000104135D450500000002050000FC135D8107045489F7000000050000000A000000030000000A135D8105050000FC00000005135D4507000000030000000A0000000200000004"
theorem small_5742600_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5742600_left_root small_5742600_left_fuel small_5742600_left_count small_5742600_left_encoded = true := by
  decide +kernel
theorem small_5742600_left_covered : CoveredBy scale carrier boxes small_5742600_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5742600_left_root small_5742600_left_fuel small_5742600_left_count small_5742600_left_encoded small_5742600_left_checked

theorem cover_5742600 : CoveredBy scale carrier boxes root_5742600 := by
  apply coveredBy_split_literal root_5742600 small_5742600_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5742640 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5742600_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5742640
#print axioms cover_5742600

def root_5742595 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742595_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742595_right_fuel : Nat := 1
def small_5742595_right_count : Nat := 1
def small_5742595_right_encoded : String := "00000001"
theorem small_5742595_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5742595_right_root small_5742595_right_fuel small_5742595_right_count small_5742595_right_encoded = true := by
  decide +kernel
theorem small_5742595_right_covered : CoveredBy scale carrier boxes small_5742595_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5742595_right_root small_5742595_right_fuel small_5742595_right_count small_5742595_right_encoded small_5742595_right_checked

theorem cover_5742595 : CoveredBy scale carrier boxes root_5742595 := by
  apply coveredBy_split_literal root_5742595 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.root_5742600 small_5742595_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.cover_5742600
  · exact small_5742595_right_covered
#print axioms cover_5742595

def root_5742207 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742207_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742207_left_fuel : Nat := 26
def small_5742207_left_count : Nat := 179
def small_5742207_left_encoded : String := "12073CF80000000108A91309120700FE000000050000000412073CFE0000000405000104135D450500000002050000FC135D8107045489F70000000513867100000000000CFD9BF9000000050F34D0F80CFD9C09000000050F350CFE000000040C9A86FE0F878D0900000005000000040F87510900000004028001040000000913D7ED05078000FC128A7D07000000050000000300000009000000020000000100000003135D450700000003045489F70000000913867100000000000CFD9BF9000000090F34D0F80CFD9C09000000050000000900000001135D8105050000FC135D8107045489F71386AD000CFD9BF9000000050F34D0F800000005000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9C09000000050F350CFE000000040C9A86F8000000050F8750F900000005000000010F34D0F80CFD9C09000000050F350CFE000000040C9A86FE0F878D0900000005000000040F8751090000000407800104128A410500000002078000FC128A7D070000000500000003128A41070000000300000009128A7D05078000FC128A7D070000000500000003128A410700000003022A45770000000513E1C500000000000AD357790000000510D100F80B4D43FE10804D09000000050000000410801109000000040000000600000001000000020000000100000003135D450700000003045489F71386AD000CFD9BF90F350CF800000001000000090F34D0F80CFD9C090000000500000009000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86F800000009000000090F34D0F80CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE0F878D090780010400000009128A7D05028000FC13D7ED07022A45770000000500000008000000030000000900000002000000040F87510900000004000000090000000100000002"
theorem small_5742207_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5742207_left_root small_5742207_left_fuel small_5742207_left_count small_5742207_left_encoded = true := by
  decide +kernel
theorem small_5742207_left_covered : CoveredBy scale carrier boxes small_5742207_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5742207_left_root small_5742207_left_fuel small_5742207_left_count small_5742207_left_encoded small_5742207_left_checked

theorem cover_5742207 : CoveredBy scale carrier boxes root_5742207 := by
  apply coveredBy_split_literal root_5742207 small_5742207_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.root_5742595 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5742207_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.cover_5742595
#print axioms cover_5742207

def root_5742201 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742201_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742201_left_fuel : Nat := 1
def small_5742201_left_count : Nat := 1
def small_5742201_left_encoded : String := "00000000"
theorem small_5742201_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5742201_left_root small_5742201_left_fuel small_5742201_left_count small_5742201_left_encoded = true := by
  decide +kernel
theorem small_5742201_left_covered : CoveredBy scale carrier boxes small_5742201_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5742201_left_root small_5742201_left_fuel small_5742201_left_count small_5742201_left_encoded small_5742201_left_checked

theorem cover_5742201 : CoveredBy scale carrier boxes root_5742201 := by
  apply coveredBy_split_literal root_5742201 small_5742201_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.root_5742207 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5742201_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.cover_5742207
#print axioms cover_5742201

def root_5742057 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742057_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742057_left_fuel : Nat := 20
def small_5742057_left_count : Nat := 71
def small_5742057_left_encoded : String := "12073D0008A912F900000005120700F808A913090000000512073CFE0000000405000104135D450500000002050000FC135D81070CFD9BF7000000050F34D10000000000045489F900000005138670F80CFD9C09000000050F350CFE000000040C9A86FE0000000900000005000000010000000300000009135D8105050000FC135D81070CFD9BF7000000050F34D10000000000045489F900000005138670F80CFD9C09000000050F350CFE000000040C9A86FE000000050F875109000000040780010400000005128A7D0500000005000000020000000100000003135D4507000000030CFD9BF7000000050F34D10000000000045489F900000005138670F80CFD9C09000000050000000900000001000000020000000100000000"
theorem small_5742057_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5742057_left_root small_5742057_left_fuel small_5742057_left_count small_5742057_left_encoded = true := by
  decide +kernel
theorem small_5742057_left_covered : CoveredBy scale carrier boxes small_5742057_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5742057_left_root small_5742057_left_fuel small_5742057_left_count small_5742057_left_encoded small_5742057_left_checked

theorem cover_5742057 : CoveredBy scale carrier boxes root_5742057 := by
  apply coveredBy_split_literal root_5742057 small_5742057_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.root_5742201 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5742057_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.cover_5742201
#print axioms cover_5742057

def root_5742052 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742052_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742052_right_fuel : Nat := 1
def small_5742052_right_count : Nat := 1
def small_5742052_right_encoded : String := "00000004"
theorem small_5742052_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5742052_right_root small_5742052_right_fuel small_5742052_right_count small_5742052_right_encoded = true := by
  decide +kernel
theorem small_5742052_right_covered : CoveredBy scale carrier boxes small_5742052_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5742052_right_root small_5742052_right_fuel small_5742052_right_count small_5742052_right_encoded small_5742052_right_checked

theorem cover_5742052 : CoveredBy scale carrier boxes root_5742052 := by
  apply coveredBy_split_literal root_5742052 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.root_5742057 small_5742052_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.cover_5742057
  · exact small_5742052_right_covered
#print axioms cover_5742052

def root_5753551 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5753551_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5753551_right_fuel : Nat := 23
def small_5753551_right_count : Nat := 101
def small_5753551_right_encoded : String := "128A410700000003078000FE128A7D09022A457713E20100067ECE790000000912EA58F8064001040000000912FFAD05064000FC12FFAD0708C000FE0000000911FBE9090000000400000009000000030000000900000002000000010000000013E1C50000000000067ECE7912EA94F80000000106400104000000060000000612EA58F80640010412FF710500000002064000FC12FFAD0708C000FE11FC2509011523370000000913F85900000000000569AC3900000006000000050000000400000006000000030000000912FFAD05064000FC12FFAD0708C000FE11FC25090115233713F895000569AC39000000061340D4F806E001040000000912C8210506E000FC12C82107096000FE0000000700000006000000030000000600000002000000010000000013F85900000000000569AC39000000061340D4F8000000060000000100000004000000060000000300000006000000020000000100000004128A410900000004022A457713E20100067ECE790000000612EA58F8064001040000000600000006000000010000000000000006"
theorem small_5753551_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5753551_right_root small_5753551_right_fuel small_5753551_right_count small_5753551_right_encoded = true := by
  decide +kernel
theorem small_5753551_right_covered : CoveredBy scale carrier boxes small_5753551_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5753551_right_root small_5753551_right_fuel small_5753551_right_count small_5753551_right_encoded small_5753551_right_checked

theorem cover_5753551 : CoveredBy scale carrier boxes root_5753551 := by
  apply coveredBy_split_literal root_5753551 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2157.root small_5753551_right_root coord3 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2157.covered
  · exact small_5753551_right_covered
#print axioms cover_5753551

def root_5753545 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5753545_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (15552512)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5753545_left_fuel : Nat := 1
def small_5753545_left_count : Nat := 1
def small_5753545_left_encoded : String := "00000002"
theorem small_5753545_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5753545_left_root small_5753545_left_fuel small_5753545_left_count small_5753545_left_encoded = true := by
  decide +kernel
theorem small_5753545_left_covered : CoveredBy scale carrier boxes small_5753545_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5753545_left_root small_5753545_left_fuel small_5753545_left_count small_5753545_left_encoded small_5753545_left_checked

theorem cover_5753545 : CoveredBy scale carrier boxes root_5753545 := by
  apply coveredBy_split_literal root_5753545 small_5753545_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.root_5753551 coord2 true (15552512)
  · decide +kernel
  · decide +kernel
  · exact small_5753545_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.cover_5753551
#print axioms cover_5753545

def root_5753544 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5753544_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5753544_right_fuel : Nat := 26
def small_5753544_right_count : Nat := 363
def small_5753544_right_encoded : String := "128A7D05078000FC128A7D07078000FE128A7D09022A457713E20100067ECE7912EA94F80000000108C0010411FBE9050000000208C000FC0000000A11FBE9070000000308C000FE11FC2509000000050000000411FBE909000000040000000A0000000A12EA58F808C0010411FBE9050000000208C000FC0000000A11FBE9070000000308C000FE11FC2509033F67B70000000A13BBF500000000000569AC390000000A1340D4F80000000A000000010000000411FBE909000000040000000A0000000A000000010000000013E1C50000000000067ECE7912EA94F80000000108C0010411FBE9050000000208C000FC11FC25070000000A0000000311FBE9070000000308C000FE11FC25090115233713F895000793F0B900000005128220F800000006000000010000000000000006000000040000000611FC25050000000A0000000212EA58F808C0010411FBE9050000000208C000FC11FC250708C000FE11FC2509011523370000000A13F85900000000000000000A000000040000000A0000000311FBE9070000000308C000FE11FC25090115233713F895000569AC39134110F8000000010820010412465D0500000002082000FC0000000A000000060000000A1340D4F80820010412465D0500000002082000FC0000000A12465D0700000003096000FE0000000711AA810900000004000000060000000A000000010000000013F85900000000000569AC39134110F8000000010820010400000006000000061340D4F80820010412465D0500000002082000FC12469907096000FE0000000711AA810900000004000000060000000312465D070000000300000006124699050000000800000002000000010000000411FBE909000000040115233713F895000569AC39000000060000000A000000000000000611FC250508C000FC0000000A11FBE9070000000308C000FE11FC2509011523370000000A00000008000000040000000A000000020000000100000004128A410900000004022A457713E20100067ECE790000000A0000000A0000000013E1C50000000000067ECE790000000A12EA58F808C0010411FBE9050000000208C000FC0000000A000000060000000A0000000100000003128A410700000003078000FE128A7D09022A457713E20100067ECE7912EA94F80000000108C0010411FBE905000000020000000911FC2505064000FC12FFAD0708C000FE11FC2509033F67B70000000500000006000000040000000600000003000000060000000212EA58F808C0010411FBE90500000002064000FC12FFAD0708C000FE11FC2509033F67B70000000913BBF500000000000569AC39000000091340D4F80820010412465D050000000200000009124699050000000700000002000000010000000411FBE90900000004033F67B700000009000000060000000312FF71070000000308C000FE000000090000000611FC2505064000FC12FFAD0708C000FE11FC2509033F67B70000000A13BBF500000000000569AC390000000A000000070000000411FBE909000000040000000A0000000312FF71070000000308C000FE11FC2509033F67B70000000900000006000000040000000600000002000000010000000013E1C50000000000067ECE7912EA94F8000000010000000612EA58F808C0010411FBE90500000002064000FC12FFAD0708C000FE11FC25090115233713F895000569AC39000000061340D4F80820010412465D050000000206E000FC12C821070000000600000003000000061246990500000006000000020000000100000000000000060000000400000006000000030000000611FC2505064000FC12FFAD0708C000FE11FC25090115233713F895000569AC390000000600000007000000000000000600000004000000060000000300000006000000020000000100000004128A410900000004022A457713E20100067ECE790000000612EA58F808C00104000000060000000600000001000000000000000600000002"
theorem small_5753544_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5753544_right_root small_5753544_right_fuel small_5753544_right_count small_5753544_right_encoded = true := by
  decide +kernel
theorem small_5753544_right_covered : CoveredBy scale carrier boxes small_5753544_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5753544_right_root small_5753544_right_fuel small_5753544_right_count small_5753544_right_encoded small_5753544_right_checked

theorem cover_5753544 : CoveredBy scale carrier boxes root_5753544 := by
  apply coveredBy_split_literal root_5753544 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.root_5753545 small_5753544_right_root coord2 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.cover_5753545
  · exact small_5753544_right_covered
#print axioms cover_5753544

def root_5753538 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5753538_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5753538_left_fuel : Nat := 1
def small_5753538_left_count : Nat := 1
def small_5753538_left_encoded : String := "00000001"
theorem small_5753538_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5753538_left_root small_5753538_left_fuel small_5753538_left_count small_5753538_left_encoded = true := by
  decide +kernel
theorem small_5753538_left_covered : CoveredBy scale carrier boxes small_5753538_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5753538_left_root small_5753538_left_fuel small_5753538_left_count small_5753538_left_encoded small_5753538_left_checked

theorem cover_5753538 : CoveredBy scale carrier boxes root_5753538 := by
  apply coveredBy_split_literal root_5753538 small_5753538_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.root_5753544 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5753538_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.cover_5753544
#print axioms cover_5753538

def root_5757626 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5757626_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5757626_right_fuel : Nat := 23
def small_5757626_right_count : Nat := 333
def small_5757626_right_encoded : String := "128A7D05078000FC128A7D07078000FE128A7D09022A457713E20100022A457913E200F80000000108C0010411FBE9050000000208C000FC0000000A11FBE9070000000308C000FE11FC2509033F67B713BC31000000000700000000000000070000000411FBE909000000040000000A0000000A13E1C4F808C0010411FBE9050000000208C000FC11FC25070000000A0000000311FBE9070000000308C000FE0000000711FBE909000000040000000711FC25050000000A00000002000000010000000013E1C50000000000022A457913E200F80000000108C0010411FBE9050000000208C000FC11FC250708C000FE11FC2509011523370000000A13F8590000000000033F67B90000000A000000070000000411FBE909000000040000000A0000000311FBE9070000000308C000FE11FC25090115233713F89500033F67B913BC30F80000000100000007000000070000000013F8590000000000033F67B913BC30F800000001082001040000000700000007000000050000000411FBE909000000040115233713F89500033F67B90000000A00000005000000000000000511FC250508C000FC0000000A11FBE9070000000308C000FE0000000711FBE909000000040000000A0000000213E1C4F808C0010411FBE9050000000208C000FC000000090000000511FC250500000009000000020000000100000004128A410900000004022A457713E20100022A45790000000A13E1C4F80000000A000000010000000013E1C50000000000022A457913E200F80000000108C0010411FBE9050000000208C000FC0000000A11FBE90700000003000000050000000A0000000500000003128A410700000003078000FE128A7D09022A457713E20100022A457913E200F80000000108C0010411FBE90500000002064000FC12FFAD0708C000FE11FC2509033F67B700000007000000070000000411FBE90900000004033F67B713BC3100033F67B90000000A13BBF4F8082001040000000700000007000000010000000013BBF50000000000033F67B913BC30F8000000010820010412465D050000000206E000FC0000000A000000060000000A000000050000000312FF71070000000308C000FE11FC2509033F67B700000007000000070000000411FBE90900000004033F67B713BC3100033F67B900000006000000070000000013BBF50000000000033F67B9000000060000000511FC2505064000FC12FFAD0708C000FE0000000711FBE909000000040000000A0000000312FF71070000000308C000FE0000000711FBE90900000004033F67B700000007000000070000000213E1C4F808C0010411FBE90500000002064000FC12FFAD0708C000FE0000000711FBE9090000000400000005000000030000000711FC25050000000700000002000000010000000013E1C50000000000022A457913E200F80000000108C0010411FBE90500000002064000FC12FFAD0708C000FE11FC25090115233700000007000000050000000411FBE90900000004000000050000000312FF7107000000030000000511FC2505064000FC12FFAD0708C000FE0000000711FBE909000000040115233700000007000000050000000312FF71070000000308C000FE0000000700000005000000020000000500000004128A410900000004022A457713E20100022A457913E200F80000000108C0010411FBE90500000002064000FC12FFAD07064000FE12FFAD09033F67B70000000A000000050000000412FF710900000004000000060000000312FF7107000000030000000611FC2505064000FC0000000A000000060000000200000005000000000000000500000002"
theorem small_5757626_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5757626_right_root small_5757626_right_fuel small_5757626_right_count small_5757626_right_encoded = true := by
  decide +kernel
theorem small_5757626_right_covered : CoveredBy scale carrier boxes small_5757626_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5757626_right_root small_5757626_right_fuel small_5757626_right_count small_5757626_right_encoded small_5757626_right_checked

theorem cover_5757626 : CoveredBy scale carrier boxes root_5757626 := by
  apply coveredBy_split_literal root_5757626 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2158.root small_5757626_right_root coord2 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2158.covered
  · exact small_5757626_right_covered
#print axioms cover_5757626

def root_5757621 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5757621_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5757621_right_fuel : Nat := 1
def small_5757621_right_count : Nat := 1
def small_5757621_right_encoded : String := "00000001"
theorem small_5757621_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5757621_right_root small_5757621_right_fuel small_5757621_right_count small_5757621_right_encoded = true := by
  decide +kernel
theorem small_5757621_right_covered : CoveredBy scale carrier boxes small_5757621_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5757621_right_root small_5757621_right_fuel small_5757621_right_count small_5757621_right_encoded small_5757621_right_checked

theorem cover_5757621 : CoveredBy scale carrier boxes root_5757621 := by
  apply coveredBy_split_literal root_5757621 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.root_5757626 small_5757621_right_root coord1 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.cover_5757626
  · exact small_5757621_right_covered
#print axioms cover_5757621

def root_5753537 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5753537 : CoveredBy scale carrier boxes root_5753537 := by
  apply coveredBy_split_literal root_5753537 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.root_5753538 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.root_5757621 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.cover_5753538
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.cover_5757621
#print axioms cover_5753537

def root_5753531 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5753531_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5753531_left_fuel : Nat := 1
def small_5753531_left_count : Nat := 1
def small_5753531_left_encoded : String := "00000000"
theorem small_5753531_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5753531_left_root small_5753531_left_fuel small_5753531_left_count small_5753531_left_encoded = true := by
  decide +kernel
theorem small_5753531_left_covered : CoveredBy scale carrier boxes small_5753531_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5753531_left_root small_5753531_left_fuel small_5753531_left_count small_5753531_left_encoded small_5753531_left_checked

theorem cover_5753531 : CoveredBy scale carrier boxes root_5753531 := by
  apply coveredBy_split_literal root_5753531 small_5753531_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.root_5753537 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5753531_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.cover_5753537
#print axioms cover_5753531

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402
