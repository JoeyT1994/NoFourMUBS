import TaoBundleAssembly0464
import TaoBundleChunkBatch0638
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465
def root_6771585 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771585_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771585_right_fuel : Nat := 21
def small_6771585_right_count : Nat := 103
def small_6771585_right_encoded : String := "135D450900000004045489F71386AD000CFD9BF90F350D020CFD9BFB0F350D040CFD9C07000000080F350CFC000000030C9A87020F8750F90000000A0000000100000008000000020F34D104000000020CFD9C07000000080F350CFC000000030C9A87020000000A00000008000000010F34D10200000001000000080000000013867100000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9C070F34D0FC0000000A000000030F350CFC000000030C9A87020F8750F90C9A87040F8750FB0000000A000000020000000A000000010F878CF9000000010C9A87040F8750FB0C9A86FC0000000800000008000000020F878CFB000000020C9A86FC0000000A0F87510700000003028000FE13D7ED09022A45770000000813E1C500000000000DE7CA0200000009000000080000000400000005000000020F34D104000000020CFD9C07000000090F350CFC000000030C9A8702000000090F878CF90000000100000009000000010F34D102000000010CFD9BFB0F350D040CFD9C07000000080F350CFC0000000300000008000000020F34D1040000000200000009"
theorem small_6771585_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6771585_right_root small_6771585_right_fuel small_6771585_right_count small_6771585_right_encoded = true := by
  decide +kernel
theorem small_6771585_right_covered : CoveredBy scale carrier boxes small_6771585_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6771585_right_root small_6771585_right_fuel small_6771585_right_count small_6771585_right_encoded small_6771585_right_checked

theorem cover_6771585 : CoveredBy scale carrier boxes root_6771585 := by
  apply coveredBy_split_literal root_6771585 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0464.root_6771586 small_6771585_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0464.cover_6771586
  · exact small_6771585_right_covered
#print axioms cover_6771585

def root_6771579 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771579_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771579_left_fuel : Nat := 1
def small_6771579_left_count : Nat := 1
def small_6771579_left_encoded : String := "00000003"
theorem small_6771579_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6771579_left_root small_6771579_left_fuel small_6771579_left_count small_6771579_left_encoded = true := by
  decide +kernel
theorem small_6771579_left_covered : CoveredBy scale carrier boxes small_6771579_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6771579_left_root small_6771579_left_fuel small_6771579_left_count small_6771579_left_encoded small_6771579_left_checked

theorem cover_6771579 : CoveredBy scale carrier boxes root_6771579 := by
  apply coveredBy_split_literal root_6771579 small_6771579_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.root_6771585 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6771579_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.cover_6771585
#print axioms cover_6771579

def root_6771533 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771533_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771533_left_fuel : Nat := 8
def small_6771533_left_count : Nat := 21
def small_6771533_left_encoded : String := "120700FC050000FE135D8109045489F71386AD000CFD9BF90000000A000000080000000013867100000000000CFD9BF90000000A0F34D102000000010000000800000004135D4509000000040000000800000003"
theorem small_6771533_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6771533_left_root small_6771533_left_fuel small_6771533_left_count small_6771533_left_encoded = true := by
  decide +kernel
theorem small_6771533_left_covered : CoveredBy scale carrier boxes small_6771533_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6771533_left_root small_6771533_left_fuel small_6771533_left_count small_6771533_left_encoded small_6771533_left_checked

theorem cover_6771533 : CoveredBy scale carrier boxes root_6771533 := by
  apply coveredBy_split_literal root_6771533 small_6771533_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.root_6771579 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6771533_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.cover_6771579
#print axioms cover_6771533

def root_6771528 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771528_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771528_right_fuel : Nat := 1
def small_6771528_right_count : Nat := 1
def small_6771528_right_encoded : String := "00000002"
theorem small_6771528_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6771528_right_root small_6771528_right_fuel small_6771528_right_count small_6771528_right_encoded = true := by
  decide +kernel
theorem small_6771528_right_covered : CoveredBy scale carrier boxes small_6771528_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6771528_right_root small_6771528_right_fuel small_6771528_right_count small_6771528_right_encoded small_6771528_right_checked

theorem cover_6771528 : CoveredBy scale carrier boxes root_6771528 := by
  apply coveredBy_split_literal root_6771528 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.root_6771533 small_6771528_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.cover_6771533
  · exact small_6771528_right_covered
#print axioms cover_6771528

def root_6771527 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771527_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771527_right_fuel : Nat := 23
def small_6771527_right_count : Nat := 193
def small_6771527_right_encoded : String := "120701040000000208A91307120700FC050000FE135D8109045489F7000000080000000900000004000000090000000312073CFC00000003050000FE135D8109045489F71386AD000CFD9BF90F350D02045489FB1386AD040CFD9C070F34D0FC0000000A000000030F350CFC000000030C9A87020F8750F90000000A000000010F878CF9000000010C9A86FC000000060F87510700000003078000FE00000006000000060000000213867104000000020CFD9C070F34D0FC00000006000000030F350CFC000000030C9A87020F8750F90C9A86FC000000060F87510700000003078000FE00000006000000060000000100000006000000010F34D10200000001045489FB1386AD040CFD9C07000000080000000600000002000000060000000013867100000000000CFD9BF90F350D02045489FB1386AD040CFD9C07000000090F350CFC000000030C9A87020F8750F90C9A86FC0000000A0F87510700000003078000FE128A7D09022A45770000000A000000090000000400000009000000010F878CF9000000010C9A86FC0F878D0700000009000000030F87510700000003078000FE128A7D09022A457713E20100067ECE7B0000000600000006000000000000000900000004000000050000000213867104000000020CFD9C07000000090F350CFC000000030C9A87020F8750F90C9A86FC000000090F87510700000003078000FE128A7D09000000090000000400000005000000010F878CF90000000100000009000000010F34D10200000001045489FB1386AD040CFD9C07000000090F350CFC000000030C9A86FC0F878D070000000900000003000000050000000213867104000000020000000900000004135D450900000004045489F71386AD000CFD9BF90F350D02045489FB1386AD040CFD9C07000000080F350CFC000000030C9A870200000009000000080000000213867104000000020CFD9C07000000080F350CFC000000030C9A87020000000900000005000000010F34D10200000001000000080000000013867100000000000CFD9BF90F350D02000000090000000100000009"
theorem small_6771527_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6771527_right_root small_6771527_right_fuel small_6771527_right_count small_6771527_right_encoded = true := by
  decide +kernel
theorem small_6771527_right_covered : CoveredBy scale carrier boxes small_6771527_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6771527_right_root small_6771527_right_fuel small_6771527_right_count small_6771527_right_encoded small_6771527_right_checked

theorem cover_6771527 : CoveredBy scale carrier boxes root_6771527 := by
  apply coveredBy_split_literal root_6771527 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.root_6771528 small_6771527_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.cover_6771528
  · exact small_6771527_right_covered
#print axioms cover_6771527

def root_6771522 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771522_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771522_right_fuel : Nat := 1
def small_6771522_right_count : Nat := 1
def small_6771522_right_encoded : String := "00000001"
theorem small_6771522_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6771522_right_root small_6771522_right_fuel small_6771522_right_count small_6771522_right_encoded = true := by
  decide +kernel
theorem small_6771522_right_covered : CoveredBy scale carrier boxes small_6771522_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6771522_right_root small_6771522_right_fuel small_6771522_right_count small_6771522_right_encoded small_6771522_right_checked

theorem cover_6771522 : CoveredBy scale carrier boxes root_6771522 := by
  apply coveredBy_split_literal root_6771522 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.root_6771527 small_6771522_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.cover_6771527
  · exact small_6771522_right_covered
#print axioms cover_6771522

def root_6771521 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771521_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771521_right_fuel : Nat := 19
def small_6771521_right_count : Nat := 93
def small_6771521_right_encoded : String := "120701020000000108A912FB12073D0408A913070000000812073CFC00000003050000FE135D8109045489F71386AD00045489F91386AD020CFD9BFB0F350D040000000800000002000000080000000100000008000000001386710000000000045489F91386AD020CFD9BFB0F350D040CFD9C07000000080F350CFC000000030C9A8704000000080F878CFB000000020C9A86FC0000000800000008000000020F34D104000000020CFD9C07000000080F350CFC000000030C9A86FC00000008000000050000000113867102000000010CFD9BFB0F350D040CFD9C07000000080F350CFC0000000300000008000000020000000800000004135D450900000004045489F7000000081386710000000000045489F9000000080000000800000002120701040000000208A913070000000812073CFC00000003050000FE135D8109045489F7000000061386710000000000045489F91386AD02045489FB000000090000000600000001000000060000000400000005"
theorem small_6771521_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6771521_right_root small_6771521_right_fuel small_6771521_right_count small_6771521_right_encoded = true := by
  decide +kernel
theorem small_6771521_right_covered : CoveredBy scale carrier boxes small_6771521_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6771521_right_root small_6771521_right_fuel small_6771521_right_count small_6771521_right_encoded small_6771521_right_checked

theorem cover_6771521 : CoveredBy scale carrier boxes root_6771521 := by
  apply coveredBy_split_literal root_6771521 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.root_6771522 small_6771521_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.cover_6771522
  · exact small_6771521_right_covered
#print axioms cover_6771521

def root_6771515 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771515_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771515_left_fuel : Nat := 1
def small_6771515_left_count : Nat := 1
def small_6771515_left_encoded : String := "00000000"
theorem small_6771515_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6771515_left_root small_6771515_left_fuel small_6771515_left_count small_6771515_left_encoded = true := by
  decide +kernel
theorem small_6771515_left_covered : CoveredBy scale carrier boxes small_6771515_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6771515_left_root small_6771515_left_fuel small_6771515_left_count small_6771515_left_encoded small_6771515_left_checked

theorem cover_6771515 : CoveredBy scale carrier boxes root_6771515 := by
  apply coveredBy_split_literal root_6771515 small_6771515_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.root_6771521 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6771515_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.cover_6771521
#print axioms cover_6771515

def root_6771065 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771065_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771065_left_fuel : Nat := 22
def small_6771065_left_count : Nat := 209
def small_6771065_left_encoded : String := "12073D0008A912F912073D0208A912FB12073D0408A91307120700FC050000FE00000008000000080000000312073CFC00000003050000FE135D81090CFD9BF70F350D000CFD9BF90F350D020CFD9BFB0F350D040CFD9C07000000080F350CFC000000030C9A87000000000800000008000000020F34D104000000020CFD9C07000000080F350CFC000000030C9A87000000000600000008000000010F34D1020000000100000008000000000F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9C070F34D0FC00000008000000030F350CFC000000030C9A87020F8750F90C9A87040F8750FB0000000A000000020000000A000000010F878CF9000000010C9A8704000000080F878CFB0000000200000008000000020F34D104000000020CFD9C070F34D0FC00000008000000030F350CFC000000030C9A87020F8750F90000000A000000010F878CF9000000010C9A86FC0000000600000008000000010F34D102000000010CFD9BFB0F350D0400000008000000020000000800000004135D4509000000040CFD9BF70F350D0000000008000000000F34D100000000000CFD9BF90F350D020CFD9BFB0F350D04000000080000000200000008000000010F34D102000000010000000800000002120701040000000208A91307120700FC050000FE135D81090CFD9BF7000000060F34D100000000000000000800000004135D4509000000040CFD9BF700000006000000090000000312073CFC00000003050000FE135D81090CFD9BF7000000060F34D100000000000CFD9BF90F350D02045489FB1386AD040CFD9C070F34D0FC00000006000000030F350CFC000000030C9A87020F8750F90000000A000000010000000600000002138671040000000200000006000000010F34D102000000010000000600000004135D4509000000040CFD9BF70F350D000CFD9BF90F350D02045489FB00000008000000060000000100000006000000000F34D100000000000CFD9BF9000000080000000800000001120701020000000108A912FB12073D0408A913070000000812073CFC00000003050000FE135D81090CFD9BF7000000060F34D1000000000000000008000000040000000800000002120701040000000208A91307000000080000000600000000"
theorem small_6771065_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6771065_left_root small_6771065_left_fuel small_6771065_left_count small_6771065_left_encoded = true := by
  decide +kernel
theorem small_6771065_left_covered : CoveredBy scale carrier boxes small_6771065_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6771065_left_root small_6771065_left_fuel small_6771065_left_count small_6771065_left_encoded small_6771065_left_checked

theorem cover_6771065 : CoveredBy scale carrier boxes root_6771065 := by
  apply coveredBy_split_literal root_6771065 small_6771065_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.root_6771515 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6771065_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.cover_6771515
#print axioms cover_6771065

def root_6771059 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771059_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771059_left_fuel : Nat := 1
def small_6771059_left_count : Nat := 1
def small_6771059_left_encoded : String := "00000004"
theorem small_6771059_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6771059_left_root small_6771059_left_fuel small_6771059_left_count small_6771059_left_encoded = true := by
  decide +kernel
theorem small_6771059_left_covered : CoveredBy scale carrier boxes small_6771059_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6771059_left_root small_6771059_left_fuel small_6771059_left_count small_6771059_left_encoded small_6771059_left_checked

theorem cover_6771059 : CoveredBy scale carrier boxes root_6771059 := by
  apply coveredBy_split_literal root_6771059 small_6771059_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.root_6771065 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6771059_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.cover_6771065
#print axioms cover_6771059

def root_6758905 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6758905 : CoveredBy scale carrier boxes root_6758905 := by
  apply coveredBy_split_literal root_6758905 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0464.root_6758906 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.root_6771059 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0464.cover_6758906
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.cover_6771059
#print axioms cover_6758905

def root_6758900 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6758900_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6758900_right_fuel : Nat := 1
def small_6758900_right_count : Nat := 1
def small_6758900_right_encoded : String := "00000003"
theorem small_6758900_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6758900_right_root small_6758900_right_fuel small_6758900_right_count small_6758900_right_encoded = true := by
  decide +kernel
theorem small_6758900_right_covered : CoveredBy scale carrier boxes small_6758900_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6758900_right_root small_6758900_right_fuel small_6758900_right_count small_6758900_right_encoded small_6758900_right_checked

theorem cover_6758900 : CoveredBy scale carrier boxes root_6758900 := by
  apply coveredBy_split_literal root_6758900 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.root_6758905 small_6758900_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.cover_6758905
  · exact small_6758900_right_covered
#print axioms cover_6758900

def root_6776363 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776363_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776363_left_fuel : Nat := 21
def small_6776363_left_count : Nat := 163
def small_6776363_left_encoded : String := "1386AD000CFD9BF90F350D020CFD9BFB0F350D040CFD9C090F34D0FE00000009000000040F350CFE000000040C9A87020F8750F90C9A87040F8750FB0C9A86FE000000050F8751090000000400000009000000020F878CFB000000020C9A86FE0F878D0900000007000000040F87510900000004078000FC128A7D07067ECE770000000712EA5900000000000B4D44020000000510804CF9000000010DE7CA0400000005000000070000000300000007000000010F878CF9000000010C9A87040F8750FB00000009000000020F878CFB000000020C9A86FE0F878D0900000009000000040F87510900000004078000FC128A7D07067ECE7712EA9500000000070000000012EA5900000000000DE7CA020E5FD8F90DE7CA040000000900000007000000010E6014F9000000010DE7CA04000000090000000700000003128A41070000000300000007000000020F34D104000000020CFD9C09000000070F350CFE000000040C9A8702000000070F878CF9000000010C9A86FE0000000700000007000000010F34D102000000010CFD9BFB0F350D040CFD9C090F34D0FE00000009000000040F350CFE000000040C9A87040F8750FB00000009000000020F878CFB000000020C9A86FE0F878D0900000009000000040F87510900000004078000FC128A7D07067ECE7712EA9500000000060000000012EA5900000000000AD3577910D13D020DE7CA04000000090E6014FB00000002000000060000000110D10102000000010000000600000003128A410700000003067ECE770000000712EA59000000000000000007000000020F34D104000000020CFD9C09000000070F350CFE000000040C9A86FE0F878D0900000007000000040F87510900000004078000FC000000060000000700000000"
theorem small_6776363_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6776363_left_root small_6776363_left_fuel small_6776363_left_count small_6776363_left_encoded = true := by
  decide +kernel
theorem small_6776363_left_covered : CoveredBy scale carrier boxes small_6776363_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6776363_left_root small_6776363_left_fuel small_6776363_left_count small_6776363_left_encoded small_6776363_left_checked

theorem cover_6776363 : CoveredBy scale carrier boxes root_6776363 := by
  apply coveredBy_split_literal root_6776363 small_6776363_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2550.root coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_6776363_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2550.covered
#print axioms cover_6776363

def root_6776358 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776358_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776358_right_fuel : Nat := 1
def small_6776358_right_count : Nat := 1
def small_6776358_right_encoded : String := "00000003"
theorem small_6776358_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6776358_right_root small_6776358_right_fuel small_6776358_right_count small_6776358_right_encoded = true := by
  decide +kernel
theorem small_6776358_right_covered : CoveredBy scale carrier boxes small_6776358_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6776358_right_root small_6776358_right_fuel small_6776358_right_count small_6776358_right_encoded small_6776358_right_checked

theorem cover_6776358 : CoveredBy scale carrier boxes root_6776358 := by
  apply coveredBy_split_literal root_6776358 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.root_6776363 small_6776358_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.cover_6776363
  · exact small_6776358_right_covered
#print axioms cover_6776358

def root_6776357 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776357_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776357_right_fuel : Nat := 21
def small_6776357_right_count : Nat := 115
def small_6776357_right_encoded : String := "135D450700000003045489F71386AD000CFD9BF90F350D020CFD9BFB0F350D040CFD9C09000000070F350CFE000000040C9A87020F8750F90C9A87040000000900000007000000010F878CF9000000010C9A87040000000900000007000000020F34D1040000000200000007000000010F34D102000000010CFD9BFB0F350D040CFD9C09000000070F350CFE000000040C9A87040000000900000007000000020F34D10400000002000000070000000013867100000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9C090F34D0FE00000009000000040F350CFE000000040C9A87020F8750F90C9A87040F8750FB00000009000000020F878CFB000000020C9A86FE0000000700000007000000010F878CF9000000010C9A8704000000090F878CFB000000020C9A86FE000000090F87510900000004028000FC13D7ED07022A45770000000713E1C500000000000DE7CA02000000070000000A0000000300000005000000020F34D104000000020CFD9C09000000070F350CFE0000000400000007000000010F34D102000000010CFD9BFB0F350D040CFD9C09000000090F350CFE000000040C9A8704000000090F878CFB000000020000000A000000020F34D104000000020000000A"
theorem small_6776357_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6776357_right_root small_6776357_right_fuel small_6776357_right_count small_6776357_right_encoded = true := by
  decide +kernel
theorem small_6776357_right_covered : CoveredBy scale carrier boxes small_6776357_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6776357_right_root small_6776357_right_fuel small_6776357_right_count small_6776357_right_encoded small_6776357_right_checked

theorem cover_6776357 : CoveredBy scale carrier boxes root_6776357 := by
  apply coveredBy_split_literal root_6776357 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.root_6776358 small_6776357_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.cover_6776358
  · exact small_6776357_right_covered
#print axioms cover_6776357

def root_6776351 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776351_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776351_left_fuel : Nat := 1
def small_6776351_left_count : Nat := 1
def small_6776351_left_encoded : String := "00000004"
theorem small_6776351_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6776351_left_root small_6776351_left_fuel small_6776351_left_count small_6776351_left_encoded = true := by
  decide +kernel
theorem small_6776351_left_covered : CoveredBy scale carrier boxes small_6776351_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6776351_left_root small_6776351_left_fuel small_6776351_left_count small_6776351_left_encoded small_6776351_left_checked

theorem cover_6776351 : CoveredBy scale carrier boxes root_6776351 := by
  apply coveredBy_split_literal root_6776351 small_6776351_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.root_6776357 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6776351_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.cover_6776357
#print axioms cover_6776351

def root_6776305 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776305_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776305_left_fuel : Nat := 8
def small_6776305_left_count : Nat := 21
def small_6776305_left_encoded : String := "120700FE050000FC135D8107045489F71386AD000CFD9BF900000009000000070000000013867100000000000CFD9BF9000000090F34D102000000010000000900000003135D4507000000030000000700000004"
theorem small_6776305_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6776305_left_root small_6776305_left_fuel small_6776305_left_count small_6776305_left_encoded = true := by
  decide +kernel
theorem small_6776305_left_covered : CoveredBy scale carrier boxes small_6776305_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6776305_left_root small_6776305_left_fuel small_6776305_left_count small_6776305_left_encoded small_6776305_left_checked

theorem cover_6776305 : CoveredBy scale carrier boxes root_6776305 := by
  apply coveredBy_split_literal root_6776305 small_6776305_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.root_6776351 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6776305_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.cover_6776351
#print axioms cover_6776305

def root_6776300 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776300_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776300_right_fuel : Nat := 1
def small_6776300_right_count : Nat := 1
def small_6776300_right_encoded : String := "00000002"
theorem small_6776300_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6776300_right_root small_6776300_right_fuel small_6776300_right_count small_6776300_right_encoded = true := by
  decide +kernel
theorem small_6776300_right_covered : CoveredBy scale carrier boxes small_6776300_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6776300_right_root small_6776300_right_fuel small_6776300_right_count small_6776300_right_encoded small_6776300_right_checked

theorem cover_6776300 : CoveredBy scale carrier boxes root_6776300 := by
  apply coveredBy_split_literal root_6776300 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.root_6776305 small_6776300_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.cover_6776305
  · exact small_6776300_right_covered
#print axioms cover_6776300

def root_6776299 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776299_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776299_right_fuel : Nat := 17
def small_6776299_right_count : Nat := 71
def small_6776299_right_encoded : String := "120701040000000208A913090000000712073CFE00000004050000FC135D8107045489F71386AD000CFD9BF90F350D02045489FB000000070000000700000001000000070000000013867100000000000CFD9BF90F350D02045489FB1386AD040CFD9C09000000070F350CFE000000040C9A8702000000070F878CF9000000010C9A86FE00000007000000070000000213867104000000020CFD9C09000000070F350CFE0000000400000007000000010F34D10200000001045489FB1386AD040CFD9C09000000070F350CFE000000040C9A86FE00000007000000050000000213867104000000020000000700000003135D450700000003045489F70000000713867100000000000CFD9BF90F350D02000000070000000100000007"
theorem small_6776299_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6776299_right_root small_6776299_right_fuel small_6776299_right_count small_6776299_right_encoded = true := by
  decide +kernel
theorem small_6776299_right_covered : CoveredBy scale carrier boxes small_6776299_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6776299_right_root small_6776299_right_fuel small_6776299_right_count small_6776299_right_encoded small_6776299_right_checked

theorem cover_6776299 : CoveredBy scale carrier boxes root_6776299 := by
  apply coveredBy_split_literal root_6776299 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.root_6776300 small_6776299_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.cover_6776300
  · exact small_6776299_right_covered
#print axioms cover_6776299

def root_6776294 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776294_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776294_right_fuel : Nat := 1
def small_6776294_right_count : Nat := 1
def small_6776294_right_encoded : String := "00000001"
theorem small_6776294_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6776294_right_root small_6776294_right_fuel small_6776294_right_count small_6776294_right_encoded = true := by
  decide +kernel
theorem small_6776294_right_covered : CoveredBy scale carrier boxes small_6776294_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6776294_right_root small_6776294_right_fuel small_6776294_right_count small_6776294_right_encoded small_6776294_right_checked

theorem cover_6776294 : CoveredBy scale carrier boxes root_6776294 := by
  apply coveredBy_split_literal root_6776294 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.root_6776299 small_6776294_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.cover_6776299
  · exact small_6776294_right_covered
#print axioms cover_6776294

def root_6776293 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776293_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776293_right_fuel : Nat := 25
def small_6776293_right_count : Nat := 231
def small_6776293_right_encoded : String := "120701020000000108A912FB12073D0408A91309120700FE050000FC135D8107045489F7000000070000000A000000030000000A0000000412073CFE00000004050000FC135D8107045489F71386AD00045489F91386AD020CFD9BFB0F350D040CFD9C090F34D0FE00000009000000040F350CFE000000040C9A87040F8750FB00000009000000020F878CFB000000020C9A86FE000000060F87510900000004078000FC0000000600000006000000020F34D104000000020CFD9C0900000007000000060000000113867102000000010CFD9BFB0F350D040CFD9C090F34D0FE00000006000000040F350CFE000000040C9A87040F8750FB0C9A86FE000000060F87510900000004078000FC00000006000000060000000200000006000000020F34D1040000000200000006000000001386710000000000045489F91386AD020CFD9BFB0F350D040CFD9C090000000A0F350CFE000000040C9A87040F8750FB0C9A86FE000000090F87510900000004078000FC128A7D07022A4577000000090000000A000000030000000A000000020F878CFB000000020C9A86FE0F878D090000000A000000040F87510900000004078000FC128A7D07022A457713E20100067ECE790000000600000006000000000000000A0000000300000005000000020F34D104000000020CFD9C090000000A0F350CFE000000040C9A86FE0F878D090000000A00000004000000050000000113867102000000010CFD9BFB0F350D040CFD9C090000000A0F350CFE000000040C9A87040F8750FB0C9A86FE000000090F87510900000004078000FC128A7D070000000A0000000300000005000000020F878CFB000000020000000A000000020F34D104000000020000000A00000003135D450700000003045489F71386AD00045489F91386AD020CFD9BFB0F350D040CFD9C09000000070F350CFE000000040C9A87040000000900000007000000020F34D10400000002000000070000000113867102000000010CFD9BFB0F350D040CFD9C09000000070F350CFE000000040C9A870400000009000000050000000200000007000000001386710000000000045489F91386AD020CFD9BFB0F350D040000000A000000020000000A0000000113867102000000010000000A00000002120701040000000208A913090000000712073CFE00000004050000FC135D8107045489F7000000061386710000000000045489F91386AD02045489FB1386AD040000000A000000020000000600000001000000060000000300000005"
theorem small_6776293_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6776293_right_root small_6776293_right_fuel small_6776293_right_count small_6776293_right_encoded = true := by
  decide +kernel
theorem small_6776293_right_covered : CoveredBy scale carrier boxes small_6776293_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6776293_right_root small_6776293_right_fuel small_6776293_right_count small_6776293_right_encoded small_6776293_right_checked

theorem cover_6776293 : CoveredBy scale carrier boxes root_6776293 := by
  apply coveredBy_split_literal root_6776293 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.root_6776294 small_6776293_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.cover_6776294
  · exact small_6776293_right_covered
#print axioms cover_6776293

def root_6776287 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776287_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776287_left_fuel : Nat := 1
def small_6776287_left_count : Nat := 1
def small_6776287_left_encoded : String := "00000000"
theorem small_6776287_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6776287_left_root small_6776287_left_fuel small_6776287_left_count small_6776287_left_encoded = true := by
  decide +kernel
theorem small_6776287_left_covered : CoveredBy scale carrier boxes small_6776287_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6776287_left_root small_6776287_left_fuel small_6776287_left_count small_6776287_left_encoded small_6776287_left_checked

theorem cover_6776287 : CoveredBy scale carrier boxes root_6776287 := by
  apply coveredBy_split_literal root_6776287 small_6776287_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.root_6776293 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6776287_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.cover_6776293
#print axioms cover_6776287

def root_6775827 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6775827_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6775827_left_fuel : Nat := 22
def small_6775827_left_count : Nat := 215
def small_6775827_left_encoded : String := "12073D0008A912F912073D0208A912FB12073D0408A91309120700FE050000FC00000007000000070000000412073CFE00000004050000FC135D81070CFD9BF70F350D000CFD9BF90F350D020CFD9BFB0F350D040CFD9C09000000070F350CFE000000040C9A870000000007000000070000000200000007000000010F34D102000000010CFD9BFB0F350D040CFD9C09000000070F350CFE000000040C9A870000000006000000070000000200000007000000000F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87020F8750F90C9A87040F8750FB000000090000000200000007000000010F878CF9000000010C9A87040F8750FB00000009000000020F878CFB0000000200000007000000020F34D1040000000200000007000000010F34D102000000010CFD9BFB0F350D040CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87040F8750FB00000009000000020F878CFB000000020C9A86FE0000000600000007000000020F34D104000000020000000700000003135D4507000000030CFD9BF70F350D0000000007000000000F34D100000000000CFD9BF90F350D020CFD9BFB0000000700000007000000010F34D102000000010CFD9BFB000000070000000700000002120701040000000208A913090000000712073CFE00000004050000FC135D81070CFD9BF7000000060F34D1000000000000000007000000030000000700000001120701020000000108A912FB12073D0408A91309120700FE050000FC135D81070CFD9BF7000000060F34D100000000000000000700000003135D4507000000030CFD9BF7000000060000000A0000000412073CFE00000004050000FC135D81070CFD9BF7000000060F34D10000000000045489F91386AD020CFD9BFB0F350D040CFD9C090F34D0FE00000006000000040F350CFE000000040C9A87040F8750FB000000090000000200000006000000020F34D10400000002000000060000000113867102000000010000000600000003135D4507000000030CFD9BF70F350D00045489F90000000700000006000000000F34D10000000000045489F91386AD020CFD9BFB0000000700000007000000010000000700000002120701040000000208A91309000000070000000600000000"
theorem small_6775827_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6775827_left_root small_6775827_left_fuel small_6775827_left_count small_6775827_left_encoded = true := by
  decide +kernel
theorem small_6775827_left_covered : CoveredBy scale carrier boxes small_6775827_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6775827_left_root small_6775827_left_fuel small_6775827_left_count small_6775827_left_encoded small_6775827_left_checked

theorem cover_6775827 : CoveredBy scale carrier boxes root_6775827 := by
  apply coveredBy_split_literal root_6775827 small_6775827_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.root_6776287 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6775827_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.cover_6776287
#print axioms cover_6775827

def root_6775822 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6775822_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6775822_right_fuel : Nat := 1
def small_6775822_right_count : Nat := 1
def small_6775822_right_encoded : String := "00000004"
theorem small_6775822_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6775822_right_root small_6775822_right_fuel small_6775822_right_count small_6775822_right_encoded = true := by
  decide +kernel
theorem small_6775822_right_covered : CoveredBy scale carrier boxes small_6775822_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6775822_right_root small_6775822_right_fuel small_6775822_right_count small_6775822_right_encoded small_6775822_right_checked

theorem cover_6775822 : CoveredBy scale carrier boxes root_6775822 := by
  apply coveredBy_split_literal root_6775822 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.root_6775827 small_6775822_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465.cover_6775827
  · exact small_6775822_right_covered
#print axioms cover_6775822

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0465
