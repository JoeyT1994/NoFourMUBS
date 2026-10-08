import TaoBundleAssembly0638
import TaoBundleChunkBatch0878
import TaoBundleChunkBatch0879
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639
def root_9382989 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9382989_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9382989_left_fuel : Nat := 7
def small_9382989_left_count : Nat := 17
def small_9382989_left_encoded : String := "0F34D0FC045489FF00000005138670FE07800100128A410100000000078000FA0000000700000009128A7D01078000FA0000000A0000000A000000000000000400000003"
theorem small_9382989_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9382989_left_root small_9382989_left_fuel small_9382989_left_count small_9382989_left_encoded = true := by
  decide +kernel
theorem small_9382989_left_covered : CoveredBy scale carrier boxes small_9382989_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9382989_left_root small_9382989_left_fuel small_9382989_left_count small_9382989_left_encoded small_9382989_left_checked

theorem cover_9382989 : CoveredBy scale carrier boxes root_9382989 := by
  apply coveredBy_split_literal root_9382989 small_9382989_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9383023 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9382989_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9383023
#print axioms cover_9382989

def root_9382983 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9382983_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9382983_left_fuel : Nat := 1
def small_9382983_left_count : Nat := 1
def small_9382983_left_encoded : String := "00000001"
theorem small_9382983_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9382983_left_root small_9382983_left_fuel small_9382983_left_count small_9382983_left_encoded = true := by
  decide +kernel
theorem small_9382983_left_covered : CoveredBy scale carrier boxes small_9382983_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9382983_left_root small_9382983_left_fuel small_9382983_left_count small_9382983_left_encoded small_9382983_left_checked

theorem cover_9382983 : CoveredBy scale carrier boxes root_9382983 := by
  apply coveredBy_split_literal root_9382983 small_9382983_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.root_9382989 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9382983_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.cover_9382989
#print axioms cover_9382983

def root_9382563 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9382563_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9382563_left_fuel : Nat := 23
def small_9382563_left_count : Nat := 203
def small_9382563_left_encoded : String := "1386AD020CFD9C070F34D0FC00000005000000030F350CFC00000003045489FF1386ACFE000000040C9A86FC0F878D0700000005000000030F8751070000000307800100128A410100000000078000FA0000000500000008128A7D01078000FA00000005128A410500000002067ECE790000000512EA590200000001067ECE7F0000000512EA58FE0B4D43FC000000051080110700000003000000080000000400000000138670FE0C9A86FC0F878D0707800100128A410100000000078000FA128A7D05067ECE790000000512EA590200000001022A457F000000050000000700000002128A410500000002067ECE790000000512EA590200000001022A457F000000050000000A128A7D01078000FA128A7D05067ECE79000000050000000A00000002128A410500000002067ECE79000000050000000A00000000000000030F8751070000000307800100128A410100000000078000FA128A7D05067ECE7912EA9502022A457F0000000513E1C4FE00000007000000040000000112EA590200000001022A457F13E200FE000000040B4D43FC10804D07000000050000000310801107000000030640010012FF71010000000008C000FA11FC250500000005000000020000000812FFAD0108C000FA11FC2505000000050000000211FBE905000000020569AC39000000050000000A0000000013E1C4FE0B4D43FC0000000710801107000000030640010000000007000000070000000400000002128A410500000002067ECE790000000812EA590200000001022A457F0000000813E1C4FE0B4D43FC0000000A1080110700000003064001000000000A0000000A00000004128A7D01078000FA128A7D05067ECE7912EA9502022A457F000000050000000A0000000112EA590200000001022A457F13E200FE000000040B4D43FC0000000A108011070000000308C0010011FBE9010000000008C000FA000000050000000A0000000A0000000A00000002128A410500000002067ECE7912EA9502022A457F000000050000000A0000000112EA590200000001022A457F13E200FE000000040B4D43FC0000000A108011070000000308C001000000000A0000000A0000000A000000000000000400000001"
theorem small_9382563_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9382563_left_root small_9382563_left_fuel small_9382563_left_count small_9382563_left_encoded = true := by
  decide +kernel
theorem small_9382563_left_covered : CoveredBy scale carrier boxes small_9382563_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9382563_left_root small_9382563_left_fuel small_9382563_left_count small_9382563_left_encoded small_9382563_left_checked

theorem cover_9382563 : CoveredBy scale carrier boxes root_9382563 := by
  apply coveredBy_split_literal root_9382563 small_9382563_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.root_9382983 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_9382563_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.cover_9382983
#print axioms cover_9382563

def root_9382558 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9382558_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9382558_right_fuel : Nat := 1
def small_9382558_right_count : Nat := 1
def small_9382558_right_encoded : String := "00000002"
theorem small_9382558_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9382558_right_root small_9382558_right_fuel small_9382558_right_count small_9382558_right_encoded = true := by
  decide +kernel
theorem small_9382558_right_covered : CoveredBy scale carrier boxes small_9382558_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9382558_right_root small_9382558_right_fuel small_9382558_right_count small_9382558_right_encoded small_9382558_right_checked

theorem cover_9382558 : CoveredBy scale carrier boxes root_9382558 := by
  apply coveredBy_split_literal root_9382558 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.root_9382563 small_9382558_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.cover_9382563
  · exact small_9382558_right_covered
#print axioms cover_9382558

def root_9382557 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9382557_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9382557_right_fuel : Nat := 20
def small_9382557_right_count : Nat := 215
def small_9382557_right_encoded : String := "135D450500000002045489F91386AD020CFD9C070F34D0FC045489FF00000005138670FE0780010000000009128A7D01028000FA00000005000000090000000000000004000000030F350CFC00000003045489FF1386ACFE000000040C9A86FC000000080F8751070000000300000008138670FE0C9A86FC0F878D0707800100128A41010000000000000008128A7D01028000FA13D7ED05067ECE790000000A0000000A000000020000000800000000000000030F8751070000000307800100128A41010000000000000008128A7D01028000FA13D7ED05067ECE790000000812EA590200000001022A457F000000080000000A000000020000000800000000000000040000000113867102000000010CFD9C070F34D0FC045489FF1386ACFE0000000407800100000000090000000600000009000000030F350CFC00000003045489FF1386ACFE000000040C9A86FC0F878D0707800100128A41010000000000000009128A7D01028000FA13D7ED05022A457913E20102067ECE7F000000050000000A00000001000000060000000213D7B105000000020000000600000000000000030F8751070000000307800100128A410100000000028000FA13D7ED05022A45790000000813E1C50200000001067ECE7F00000008000000090000000200000008128A7D01028000FA13D7ED05022A457913E20102067ECE7F0000000812EA58FE0B4D43FC00000008108011070000000300000008000000040000000113E1C50200000001067ECE7F0000000612EA58FE00000006000000040000000213D7B10500000002022A45790000000813E1C50200000001067ECE7F000000060000000600000000138670FE0C9A86FC0F878D070780010000000009128A7D01028000FA0000000A0000000900000000000000030F8751070000000307800100128A410100000000028000FA13D7ED05022A457913E20102022A457F0000000813E1C4FE0B4D43FC0000000910801107000000030000000A0000000400000001000000090000000200000009128A7D01028000FA13D7ED05022A457913E20102022A457F13E200FE000000040B4D43FC0000000A10801107000000030000000A0000000A0000000113E1C50200000001022A457F000000060000000A0000000213D7B10500000002022A45790000000A000000090000000000000004"
theorem small_9382557_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9382557_right_root small_9382557_right_fuel small_9382557_right_count small_9382557_right_encoded = true := by
  decide +kernel
theorem small_9382557_right_covered : CoveredBy scale carrier boxes small_9382557_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9382557_right_root small_9382557_right_fuel small_9382557_right_count small_9382557_right_encoded small_9382557_right_checked

theorem cover_9382557 : CoveredBy scale carrier boxes root_9382557 := by
  apply coveredBy_split_literal root_9382557 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.root_9382558 small_9382557_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.cover_9382558
  · exact small_9382557_right_covered
#print axioms cover_9382557

def root_9382552 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9382552_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9382552_right_fuel : Nat := 1
def small_9382552_right_count : Nat := 1
def small_9382552_right_encoded : String := "00000000"
theorem small_9382552_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9382552_right_root small_9382552_right_fuel small_9382552_right_count small_9382552_right_encoded = true := by
  decide +kernel
theorem small_9382552_right_covered : CoveredBy scale carrier boxes small_9382552_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9382552_right_root small_9382552_right_fuel small_9382552_right_count small_9382552_right_encoded small_9382552_right_checked

theorem cover_9382552 : CoveredBy scale carrier boxes root_9382552 := by
  apply coveredBy_split_literal root_9382552 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.root_9382557 small_9382552_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.cover_9382557
  · exact small_9382552_right_covered
#print axioms cover_9382552

def root_9380360 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9380360 : CoveredBy scale carrier boxes root_9380360 := by
  apply coveredBy_split_literal root_9380360 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3512.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.root_9382552 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3512.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.cover_9382552
#print axioms cover_9380360

def root_9380355 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9380355_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9380355_right_fuel : Nat := 1
def small_9380355_right_count : Nat := 1
def small_9380355_right_encoded : String := "00000004"
theorem small_9380355_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9380355_right_root small_9380355_right_fuel small_9380355_right_count small_9380355_right_encoded = true := by
  decide +kernel
theorem small_9380355_right_covered : CoveredBy scale carrier boxes small_9380355_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9380355_right_root small_9380355_right_fuel small_9380355_right_count small_9380355_right_encoded small_9380355_right_checked

theorem cover_9380355 : CoveredBy scale carrier boxes root_9380355 := by
  apply coveredBy_split_literal root_9380355 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.root_9380360 small_9380355_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.cover_9380360
  · exact small_9380355_right_covered
#print axioms cover_9380355

def root_9379963 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379963_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379963_left_fuel : Nat := 24
def small_9379963_left_count : Nat := 179
def small_9379963_left_encoded : String := "12073CFE0000000405000100135D450100000000050000FA135D8105045489F90000000513867102000000010CFD9C07000000050F350CFC000000030CFD9BFF000000050F34D0FE0C9A86FC0F878D0700000005000000030F87510700000003028001000000000813D7ED01078000FA128A7D05000000050000000200000008000000000000000400000002135D450500000002045489F90000000813867102000000010CFD9C070F34D0FC000000050000000300000008135D8101050000FA135D8105045489F91386AD020CFD9C07000000050F350CFC000000030CFD9BFF000000050F34D0FE00000005000000040000000113867102000000010CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9BFF0F350CFE000000040C9A86FC000000050F875107000000030C9A86FE000000050F8750FF00000005000000040F34D0FE0C9A86FC0F878D0700000005000000030F8751070000000307800100128A410100000000078000FA128A7D050000000500000002128A41050000000200000008128A7D01078000FA128A7D050000000500000002128A410500000002022A45790000000513E1C502000000010AD3577F0000000510D100FE0B4D43FC10804D07000000050000000310801107000000030000000700000004000000000000000400000002135D450500000002045489F91386AD020CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9BFF000000080F34D0FE00000008000000040000000113867102000000010CFD9C070F34D0FC0CFD9BFF000000050F34D0FE0000000500000004000000030F350CFC000000030CFD9BFF0F350CFE000000040C9A86FC000000080F87510700000003000000080F34D0FE0C9A86FC0F878D070780010000000008128A7D01028000FA13D7ED05022A45790000000500000006000000020000000800000000000000030F87510700000003000000080000000400000000"
theorem small_9379963_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9379963_left_root small_9379963_left_fuel small_9379963_left_count small_9379963_left_encoded = true := by
  decide +kernel
theorem small_9379963_left_covered : CoveredBy scale carrier boxes small_9379963_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9379963_left_root small_9379963_left_fuel small_9379963_left_count small_9379963_left_encoded small_9379963_left_checked

theorem cover_9379963 : CoveredBy scale carrier boxes root_9379963 := by
  apply coveredBy_split_literal root_9379963 small_9379963_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.root_9380355 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9379963_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.cover_9380355
#print axioms cover_9379963

def root_9379957 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379957_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379957_left_fuel : Nat := 1
def small_9379957_left_count : Nat := 1
def small_9379957_left_encoded : String := "00000003"
theorem small_9379957_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9379957_left_root small_9379957_left_fuel small_9379957_left_count small_9379957_left_encoded = true := by
  decide +kernel
theorem small_9379957_left_covered : CoveredBy scale carrier boxes small_9379957_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9379957_left_root small_9379957_left_fuel small_9379957_left_count small_9379957_left_encoded small_9379957_left_checked

theorem cover_9379957 : CoveredBy scale carrier boxes root_9379957 := by
  apply coveredBy_split_literal root_9379957 small_9379957_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.root_9379963 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9379957_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.cover_9379963
#print axioms cover_9379957

def root_9379909 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379909_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379909_left_fuel : Nat := 9
def small_9379909_left_count : Nat := 23
def small_9379909_left_encoded : String := "120700FC08A912FF00000005120700FE05000100135D450100000000050000FA135D8105045489F900000005000000090000000200000009135D8101050000FA00000005135D45050000000200000009000000000000000400000003"
theorem small_9379909_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9379909_left_root small_9379909_left_fuel small_9379909_left_count small_9379909_left_encoded = true := by
  decide +kernel
theorem small_9379909_left_covered : CoveredBy scale carrier boxes small_9379909_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9379909_left_root small_9379909_left_fuel small_9379909_left_count small_9379909_left_encoded small_9379909_left_checked

theorem cover_9379909 : CoveredBy scale carrier boxes root_9379909 := by
  apply coveredBy_split_literal root_9379909 small_9379909_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.root_9379957 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9379909_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.cover_9379957
#print axioms cover_9379909

def root_9379903 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379903_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379903_left_fuel : Nat := 1
def small_9379903_left_count : Nat := 1
def small_9379903_left_encoded : String := "00000001"
theorem small_9379903_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9379903_left_root small_9379903_left_fuel small_9379903_left_count small_9379903_left_encoded = true := by
  decide +kernel
theorem small_9379903_left_covered : CoveredBy scale carrier boxes small_9379903_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9379903_left_root small_9379903_left_fuel small_9379903_left_count small_9379903_left_encoded small_9379903_left_checked

theorem cover_9379903 : CoveredBy scale carrier boxes root_9379903 := by
  apply coveredBy_split_literal root_9379903 small_9379903_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.root_9379909 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9379903_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.cover_9379909
#print axioms cover_9379903

def root_9379753 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379753_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379753_left_fuel : Nat := 20
def small_9379753_left_count : Nat := 73
def small_9379753_left_encoded : String := "12073D0208A913070000000512073CFC0000000308A912FF00000005120700FE05000100135D450100000000050000FA135D81050CFD9BF9000000050F34D102000000010CFD9C07000000050F350CFC00000003045489FF00000005138670FE0C9A86FC0000000800000005000000040000000200000008135D8101050000FA135D81050CFD9BF9000000050F34D102000000010CFD9C07000000050F350CFC00000003045489FF00000005138670FE0C9A86FC000000050F875107000000030780010000000005128A7D0100000005000000000000000400000002135D4505000000020CFD9BF9000000050F34D102000000010CFD9C07000000050F350CFC00000003045489FF00000005138670FE0000000800000004000000000000000400000001"
theorem small_9379753_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9379753_left_root small_9379753_left_fuel small_9379753_left_count small_9379753_left_encoded = true := by
  decide +kernel
theorem small_9379753_left_covered : CoveredBy scale carrier boxes small_9379753_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9379753_left_root small_9379753_left_fuel small_9379753_left_count small_9379753_left_encoded small_9379753_left_checked

theorem cover_9379753 : CoveredBy scale carrier boxes root_9379753 := by
  apply coveredBy_split_literal root_9379753 small_9379753_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.root_9379903 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9379753_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.cover_9379903
#print axioms cover_9379753

def root_9379747 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379747_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379747_left_fuel : Nat := 1
def small_9379747_left_count : Nat := 1
def small_9379747_left_encoded : String := "00000004"
theorem small_9379747_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9379747_left_root small_9379747_left_fuel small_9379747_left_count small_9379747_left_encoded = true := by
  decide +kernel
theorem small_9379747_left_covered : CoveredBy scale carrier boxes small_9379747_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9379747_left_root small_9379747_left_fuel small_9379747_left_count small_9379747_left_encoded small_9379747_left_checked

theorem cover_9379747 : CoveredBy scale carrier boxes root_9379747 := by
  apply coveredBy_split_literal root_9379747 small_9379747_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.root_9379753 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9379747_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.cover_9379753
#print axioms cover_9379747

def root_9379746 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379746_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379746_right_fuel : Nat := 20
def small_9379746_right_count : Nat := 89
def small_9379746_right_encoded : String := "1151E8FF08A912F912073D0208A913070000000512073CFC000000030500010000000005135D8101000000050000000000000001120701020000000108A91307120700FC000000050000000312073CFC0000000305000100135D450100000000050000FA135D8105050000FE00000005135D44FF00000005000000040000000200000008135D8101050000FA135D8105050000FE135D80FF00000004045489F90000000513867102000000010CFD9C07000000050F350CFC000000030C9A86FC000000050F875107000000030780010000000005128A7D010000000500000000135D44FF045489F90000000513867102000000010CFD9C07000000050F350CFC000000030C9A86FC000000050F87510700000003000000080000000400000002135D450500000002050000FE135D80FF00000004045489F90000000813867102000000010CFD9C070000000800000008135D44FF00000008000000040000000000000004"
theorem small_9379746_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9379746_right_root small_9379746_right_fuel small_9379746_right_count small_9379746_right_encoded = true := by
  decide +kernel
theorem small_9379746_right_covered : CoveredBy scale carrier boxes small_9379746_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9379746_right_root small_9379746_right_fuel small_9379746_right_count small_9379746_right_encoded small_9379746_right_checked

theorem cover_9379746 : CoveredBy scale carrier boxes root_9379746 := by
  apply coveredBy_split_literal root_9379746 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.root_9379747 small_9379746_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.cover_9379747
  · exact small_9379746_right_covered
#print axioms cover_9379746

def root_9379741 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379741_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379741_right_fuel : Nat := 1
def small_9379741_right_count : Nat := 1
def small_9379741_right_encoded : String := "00000003"
theorem small_9379741_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9379741_right_root small_9379741_right_fuel small_9379741_right_count small_9379741_right_encoded = true := by
  decide +kernel
theorem small_9379741_right_covered : CoveredBy scale carrier boxes small_9379741_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9379741_right_root small_9379741_right_fuel small_9379741_right_count small_9379741_right_encoded small_9379741_right_checked

theorem cover_9379741 : CoveredBy scale carrier boxes root_9379741 := by
  apply coveredBy_split_literal root_9379741 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.root_9379746 small_9379741_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.cover_9379746
  · exact small_9379741_right_covered
#print axioms cover_9379741

def root_9391441 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9391441_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9391441_right_fuel : Nat := 23
def small_9391441_right_count : Nat := 101
def small_9391441_right_encoded : String := "128A410500000002078000FC128A7D07022A457913E20102067ECE7F0000000812EA58FE064001000000000812FFAD01064000FA12FFAD0508C000FC0000000811FBE9070000000300000008000000020000000800000000000000040000000113E1C50200000001067ECE7F12EA94FE0000000406400100000000070000000712EA58FE0640010012FF710100000000064000FA12FFAD0508C000FC11FC2507011523390000000813F85902000000010569AC3F00000007000000050000000300000007000000020000000812FFAD01064000FA12FFAD0508C000FC11FC25070115233913F895020569AC3F000000071340D4FE06E001000000000812C8210106E000FA12C82105096000FC0000000800000007000000020000000700000000000000040000000113F85902000000010569AC3F000000071340D4FE000000070000000400000003000000070000000200000007000000000000000400000003128A410700000003022A457913E20102067ECE7F0000000712EA58FE064001000000000700000007000000040000000100000007"
theorem small_9391441_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9391441_right_root small_9391441_right_fuel small_9391441_right_count small_9391441_right_encoded = true := by
  decide +kernel
theorem small_9391441_right_covered : CoveredBy scale carrier boxes small_9391441_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9391441_right_root small_9391441_right_fuel small_9391441_right_count small_9391441_right_encoded small_9391441_right_checked

theorem cover_9391441 : CoveredBy scale carrier boxes root_9391441 := by
  apply coveredBy_split_literal root_9391441 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3516.root small_9391441_right_root coord2 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3516.covered
  · exact small_9391441_right_covered
#print axioms cover_9391441

def root_9391435 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9391435_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (15552512)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9391435_left_fuel : Nat := 1
def small_9391435_left_count : Nat := 1
def small_9391435_left_encoded : String := "00000000"
theorem small_9391435_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9391435_left_root small_9391435_left_fuel small_9391435_left_count small_9391435_left_encoded = true := by
  decide +kernel
theorem small_9391435_left_covered : CoveredBy scale carrier boxes small_9391435_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9391435_left_root small_9391435_left_fuel small_9391435_left_count small_9391435_left_encoded small_9391435_left_checked

theorem cover_9391435 : CoveredBy scale carrier boxes root_9391435 := by
  apply coveredBy_split_literal root_9391435 small_9391435_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.root_9391441 coord0 true (15552512)
  · decide +kernel
  · decide +kernel
  · exact small_9391435_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.cover_9391441
#print axioms cover_9391435

def root_9391434 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9391434_right_root : ZRayBox := fun j => (#[⟨⟨(6291456), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9391434_right_fuel : Nat := 26
def small_9391434_right_count : Nat := 363
def small_9391434_right_encoded : String := "128A7D01078000FA128A7D05078000FC128A7D07022A457913E20102067ECE7F12EA94FE0000000408C0010011FBE9010000000008C000FA0000000911FBE9050000000208C000FC11FC2507000000050000000311FBE90700000003000000090000000912EA58FE08C0010011FBE9010000000008C000FA0000000911FBE9050000000208C000FC11FC2507033F67B90000000913BBF502000000010569AC3F000000091340D4FE00000009000000040000000311FBE907000000030000000900000009000000040000000113E1C50200000001067ECE7F12EA94FE0000000408C0010011FBE9010000000008C000FA11FC2505000000090000000211FBE9050000000208C000FC11FC25070115233913F895020793F0BF00000005128220FE00000007000000040000000100000007000000030000000711FC2501000000090000000012EA58FE08C0010011FBE9010000000008C000FA11FC250508C000FC11FC2507011523390000000913F85902000000010000000900000003000000090000000211FBE9050000000208C000FC11FC25070115233913F895020569AC3F134110FE000000040820010012465D0100000000082000FA0000000900000007000000091340D4FE0820010012465D0100000000082000FA0000000912465D0500000002096000FC0000000A11AA8107000000030000000700000009000000040000000113F85902000000010569AC3F134110FE000000040820010000000007000000071340D4FE0820010012465D0100000000082000FA12469905096000FC0000000611AA810700000003000000070000000212465D050000000200000007124699010000000600000000000000040000000311FBE907000000030115233913F895020569AC3F0000000700000009000000010000000711FC250108C000FA0000000911FBE9050000000208C000FC11FC25070115233900000009000000060000000300000009000000000000000400000003128A410700000003022A457913E20102067ECE7F00000009000000090000000113E1C50200000001067ECE7F0000000912EA58FE08C0010011FBE9010000000008C000FA0000000900000007000000090000000400000002128A410500000002078000FC128A7D07022A457913E20102067ECE7F12EA94FE0000000408C0010011FBE901000000000000000811FC2501064000FA12FFAD0508C000FC11FC2507033F67B90000000500000007000000030000000700000002000000070000000012EA58FE08C0010011FBE90100000000064000FA12FFAD0508C000FC11FC2507033F67B90000000813BBF502000000010569AC3F000000081340D4FE0820010012465D010000000000000008124699010000000A00000000000000040000000311FBE90700000003033F67B900000008000000070000000212FF71050000000208C000FC000000080000000711FC2501064000FA12FFAD0508C000FC11FC2507033F67B90000000913BBF502000000010569AC3F000000090000000A0000000311FBE90700000003000000090000000212FF71050000000208C000FC11FC2507033F67B90000000800000007000000030000000700000000000000040000000113E1C50200000001067ECE7F12EA94FE000000040000000712EA58FE08C0010011FBE90100000000064000FA12FFAD0508C000FC11FC25070115233913F895020569AC3F000000071340D4FE0820010012465D010000000006E000FA12C821050000000700000002000000071246990100000007000000000000000400000001000000070000000300000007000000020000000711FC2501064000FA12FFAD0508C000FC11FC25070115233913F895020569AC3F0000000600000006000000010000000600000003000000070000000200000007000000000000000400000003128A410700000003022A457913E20102067ECE7F0000000712EA58FE08C00100000000070000000700000004000000010000000700000000"
theorem small_9391434_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9391434_right_root small_9391434_right_fuel small_9391434_right_count small_9391434_right_encoded = true := by
  decide +kernel
theorem small_9391434_right_covered : CoveredBy scale carrier boxes small_9391434_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9391434_right_root small_9391434_right_fuel small_9391434_right_count small_9391434_right_encoded small_9391434_right_checked

theorem cover_9391434 : CoveredBy scale carrier boxes root_9391434 := by
  apply coveredBy_split_literal root_9391434 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.root_9391435 small_9391434_right_root coord0 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.cover_9391435
  · exact small_9391434_right_covered
#print axioms cover_9391434

def root_9391428 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9391428_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9391428_left_fuel : Nat := 1
def small_9391428_left_count : Nat := 1
def small_9391428_left_encoded : String := "00000004"
theorem small_9391428_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9391428_left_root small_9391428_left_fuel small_9391428_left_count small_9391428_left_encoded = true := by
  decide +kernel
theorem small_9391428_left_covered : CoveredBy scale carrier boxes small_9391428_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9391428_left_root small_9391428_left_fuel small_9391428_left_count small_9391428_left_encoded small_9391428_left_checked

theorem cover_9391428 : CoveredBy scale carrier boxes root_9391428 := by
  apply coveredBy_split_literal root_9391428 small_9391428_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.root_9391434 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_9391428_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.cover_9391434
#print axioms cover_9391428

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639
