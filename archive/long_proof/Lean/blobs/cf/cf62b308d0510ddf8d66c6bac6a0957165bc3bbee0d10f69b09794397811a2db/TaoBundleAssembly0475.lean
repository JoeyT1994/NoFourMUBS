import TaoBundleAssembly0474
import TaoBundleChunkBatch0653
import TaoBundleChunkBatch0654
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475
def root_6933540 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6933540_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6933540_right_fuel : Nat := 17
def small_6933540_right_count : Nat := 103
def small_6933540_right_encoded : String := "135D450900000004045489F71386AD000CFD9C050F34D104000000020CFD9C070F34D0FC0000000A000000030F350CFC000000030C9A86FC0F878D0707800102000000080000000800000003000000080F350D040CFD9C070F34D0FC0C9A8704000000080F878D0507800102000000080000000800000002000000030F350CFC000000030C9A8704000000080F878D050C9A86FC0F878D0700000008000000030000000800000002000000020000000013867100000000000CFD9C050F34D104000000020CFD9C070F34D0FC00000009000000030F350CFC000000030C9A86FC0F878D07078001020000000900000009000000030F8751070000000307800102128A40F9028000FE13D7ED09022A45770000000813E1C500000000000AD357850000000900000009000000040000000800000001128A7CF900000001000000050F350D040CFD9C070F34D0FC0C9A8704000000070F878D050000000900000002000000030F350CFC000000030C9A8704000000080F878D050C9A86FC0F878D0707800102000000080000000800000003000000080000000200000002"
theorem small_6933540_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6933540_right_root small_6933540_right_fuel small_6933540_right_count small_6933540_right_encoded = true := by
  decide +kernel
theorem small_6933540_right_covered : CoveredBy scale carrier boxes small_6933540_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6933540_right_root small_6933540_right_fuel small_6933540_right_count small_6933540_right_encoded small_6933540_right_checked

theorem cover_6933540 : CoveredBy scale carrier boxes root_6933540 := by
  apply coveredBy_split_literal root_6933540 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2610.root small_6933540_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2610.covered
  · exact small_6933540_right_covered
#print axioms cover_6933540

def root_6933534 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6933534_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6933534_left_fuel : Nat := 1
def small_6933534_left_count : Nat := 1
def small_6933534_left_encoded : String := "00000001"
theorem small_6933534_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6933534_left_root small_6933534_left_fuel small_6933534_left_count small_6933534_left_encoded = true := by
  decide +kernel
theorem small_6933534_left_covered : CoveredBy scale carrier boxes small_6933534_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6933534_left_root small_6933534_left_fuel small_6933534_left_count small_6933534_left_encoded small_6933534_left_checked

theorem cover_6933534 : CoveredBy scale carrier boxes root_6933534 := by
  apply coveredBy_split_literal root_6933534 small_6933534_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6933540 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_6933534_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6933540
#print axioms cover_6933534

def root_6930666 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6930666 : CoveredBy scale carrier boxes root_6930666 := by
  apply coveredBy_split_literal root_6930666 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2609.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6933534 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2609.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6933534
#print axioms cover_6930666

def root_6930660 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6930660_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6930660_left_fuel : Nat := 1
def small_6930660_left_count : Nat := 1
def small_6930660_left_encoded : String := "00000003"
theorem small_6930660_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6930660_left_root small_6930660_left_fuel small_6930660_left_count small_6930660_left_encoded = true := by
  decide +kernel
theorem small_6930660_left_covered : CoveredBy scale carrier boxes small_6930660_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6930660_left_root small_6930660_left_fuel small_6930660_left_count small_6930660_left_encoded small_6930660_left_checked

theorem cover_6930660 : CoveredBy scale carrier boxes root_6930660 := by
  apply coveredBy_split_literal root_6930660 small_6930660_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6930666 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6930660_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6930666
#print axioms cover_6930660

def root_6930540 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6930540_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6930540_left_fuel : Nat := 14
def small_6930540_left_count : Nat := 55
def small_6930540_left_encoded : String := "120700FC05000102135D44F90000000A00000001135D80F900000001050000FE135D8109045489F71386AD000CFD9C05000000050F350D0400000005000000020000000013867100000000000CFD9C050F34D10400000002000000090F350D0404548A07000000051386ACFC000000030C9A8704000000050F878D0500000009000000020000000200000004135D450900000004045489F71386AD000CFD9C050000000A0F350D0404548A07000000081386ACFC000000030C9A8704000000080000000A000000020000000013867100000000000000000900000003"
theorem small_6930540_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6930540_left_root small_6930540_left_fuel small_6930540_left_count small_6930540_left_encoded = true := by
  decide +kernel
theorem small_6930540_left_covered : CoveredBy scale carrier boxes small_6930540_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6930540_left_root small_6930540_left_fuel small_6930540_left_count small_6930540_left_encoded small_6930540_left_checked

theorem cover_6930540 : CoveredBy scale carrier boxes root_6930540 := by
  apply coveredBy_split_literal root_6930540 small_6930540_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6930660 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6930540_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6930660
#print axioms cover_6930540

def root_6930535 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6930535_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6930535_right_fuel : Nat := 1
def small_6930535_right_count : Nat := 1
def small_6930535_right_encoded : String := "00000002"
theorem small_6930535_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6930535_right_root small_6930535_right_fuel small_6930535_right_count small_6930535_right_encoded = true := by
  decide +kernel
theorem small_6930535_right_covered : CoveredBy scale carrier boxes small_6930535_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6930535_right_root small_6930535_right_fuel small_6930535_right_count small_6930535_right_encoded small_6930535_right_checked

theorem cover_6930535 : CoveredBy scale carrier boxes root_6930535 := by
  apply coveredBy_split_literal root_6930535 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6930540 small_6930535_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6930540
  · exact small_6930535_right_covered
#print axioms cover_6930535

def root_6930201 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6930201_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6930201_left_fuel : Nat := 23
def small_6930201_left_count : Nat := 157
def small_6930201_left_encoded : String := "120701040000000208A91307120700FC0000000A0000000312073CFC0000000305000102135D44F90000000A00000001135D80F900000001050000FE135D8109045489F71386AD0004548A0513867104000000020000000A1386AD040CFD9C070F34D0FC0000000A000000030F350CFC000000030C9A86FC0F878D070000000A000000030F8751070000000307800102128A40F90000000A00000001128A7CF900000001078000FE00000006128A410900000004000000060000000200000000138671000000000004548A0513867104000000020CFD9C07000000090F350CFC000000030C9A86FC0000000A0F87510700000003078001020000000A128A7CF900000001078000FE128A7D09022A4577000000070000000900000004000000091386AD040CFD9C070F34D0FC00000009000000030F350CFC000000030C9A86FC0F878D07078001020000000A128A7CF90000000100000009000000030F8751070000000307800102128A40F9078000FE128A7D09022A45770000000A13E1C50000000000067ECE85000000090000000900000004128A4109000000040000000A00000001128A7CF900000001078000FE128A7D09022A457713E20100067ECE8500000007000000060000000013E1C50000000000067ECE85000000090000000900000004128A410900000004022A457713E20100067ECE85000000090000000900000000000000090000000200000004135D450900000004045489F71386AD0004548A050000000A1386AD040CFD9C070000000A0F350CFC000000030C9A86FC0000000A0F87510700000003078001020000000A000000080000000200000000138671000000000004548A050000000900000009"
theorem small_6930201_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6930201_left_root small_6930201_left_fuel small_6930201_left_count small_6930201_left_encoded = true := by
  decide +kernel
theorem small_6930201_left_covered : CoveredBy scale carrier boxes small_6930201_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6930201_left_root small_6930201_left_fuel small_6930201_left_count small_6930201_left_encoded small_6930201_left_checked

theorem cover_6930201 : CoveredBy scale carrier boxes root_6930201 := by
  apply coveredBy_split_literal root_6930201 small_6930201_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6930535 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6930201_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6930535
#print axioms cover_6930201

def root_6930195 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6930195_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6930195_left_fuel : Nat := 1
def small_6930195_left_count : Nat := 1
def small_6930195_left_encoded : String := "00000000"
theorem small_6930195_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6930195_left_root small_6930195_left_fuel small_6930195_left_count small_6930195_left_encoded = true := by
  decide +kernel
theorem small_6930195_left_covered : CoveredBy scale carrier boxes small_6930195_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6930195_left_root small_6930195_left_fuel small_6930195_left_count small_6930195_left_encoded small_6930195_left_checked

theorem cover_6930195 : CoveredBy scale carrier boxes root_6930195 := by
  apply coveredBy_split_literal root_6930195 small_6930195_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6930201 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6930195_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6930201
#print axioms cover_6930195

def root_6929417 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6929417_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6929417_left_fuel : Nat := 23
def small_6929417_left_count : Nat := 365
def small_6929417_left_encoded : String := "12073D0008A91305120701040000000208A91307120700FC0000000A0000000312073CFC0000000305000102135D44F9050000FE135D81090CFD9BF70000000A0F34D100000000000000000A00000004135D4509000000040CFD9BF70000000A0F34D100000000000000000A00000001135D80F900000001050000FE135D81090CFD9BF7000000060F34D1000000000004548A0513867104000000020000000A1386AD040CFD9C070F34D0FC0000000600000003000000060000000200000004135D4509000000040CFD9BF70F350D0004548A0513867104000000020000000A1386AD040CFD9C070F34D0FC00000006000000030000000600000002000000000F34D1000000000004548A050000000A1386AD040CFD9C070000000A0F350CFC000000030C9A86FC0000000A000000080000000212073D0408A91307120700FC0500010200000005135D80F900000001050000FE00000005135D4509000000040CFD9BF70F350D0000000005000000000F34D100000000000CFD9C050000000A0F350D0404548A07000000051386ACFC000000030C9A8704000000050000000A000000020000000312073CFC0000000305000102135D44F9050000FE135D81090CFD9BF70F350D0000000005000000000F34D100000000000CFD9C050F34D104000000020CFD9C070000000A0F350CFC000000030C9A86FC000000050F87510700000003028001020000000513D7ECF900000001078000FE00000005128A410900000004000000080F350D040CFD9C07000000050F350CFC000000030C9A8704000000050F878D050C9A86FC000000050F87510700000003028001020000000513D7ECF900000001078000FE0000000500000008000000020000000200000004135D4509000000040CFD9BF70F350D000CFD9C050F34D104000000020CFD9C070F34D0FC00000005000000030F350CFC000000030C9A87000F8750F700000005000000000F878CF7000000000C9A86FC0000000A000000080F350D040CFD9C07000000050F350CFC000000030C9A8700000000050F878CF7000000000C9A8704000000050F878D050C9A86FC00000005000000080000000200000002000000000F34D100000000000CFD9C050F34D104000000020CFD9C070000000A0F350CFC000000030C9A86FC0000000A0F875107000000030280010200000008000000080F350D040CFD9C070F34D0FC00000005000000030F350CFC000000030C9A8704000000080F878D050C9A86FC0F878D07000000080000000300000008000000020000000200000001135D80F900000001050000FE135D81090CFD9BF70F350D000CFD9C050F34D10400000002000000060F350D040CFD9C070F34D0FC00000005000000030000000600000002000000000F34D100000000000CFD9C050F34D104000000020CFD9C070F34D0FC00000006000000030F350CFC000000030C9A86FC000000060F87510700000003000000060F350D040CFD9C070F34D0FC0C9A87040000000500000006000000030F350CFC000000030C9A87040F875105000000020C9A86FC00000006000000080F878D050C9A86FC000000060F8751070000000300000006000000020000000200000004135D4509000000040CFD9BF70F350D000CFD9C050F34D104000000020CFD9C070F34D0FC0000000600000003000000060F350D040CFD9C070F34D0FC00000006000000030F350CFC000000030C9A87000F8750F700000006000000000F878CF7000000000C9A8704000000080000000600000002000000000F34D100000000000CFD9C050F34D104000000020CFD9C070F34D0FC0000000A000000030F350CFC000000030C9A86FC0F878D0707800102000000080000000600000003000000080F350D040CFD9C070F34D0FC0C9A8704000000080F878D0507800102000000080000000600000002000000030F350CFC000000030C9A8704000000080F878D050C9A86FC0F878D0700000008000000030000000800000002000000020000000200000000"
theorem small_6929417_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6929417_left_root small_6929417_left_fuel small_6929417_left_count small_6929417_left_encoded = true := by
  decide +kernel
theorem small_6929417_left_covered : CoveredBy scale carrier boxes small_6929417_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6929417_left_root small_6929417_left_fuel small_6929417_left_count small_6929417_left_encoded small_6929417_left_checked

theorem cover_6929417 : CoveredBy scale carrier boxes root_6929417 := by
  apply coveredBy_split_literal root_6929417 small_6929417_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6930195 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6929417_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6930195
#print axioms cover_6929417

def root_6929411 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6929411_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6929411_left_fuel : Nat := 1
def small_6929411_left_count : Nat := 1
def small_6929411_left_encoded : String := "00000004"
theorem small_6929411_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6929411_left_root small_6929411_left_fuel small_6929411_left_count small_6929411_left_encoded = true := by
  decide +kernel
theorem small_6929411_left_covered : CoveredBy scale carrier boxes small_6929411_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6929411_left_root small_6929411_left_fuel small_6929411_left_count small_6929411_left_encoded small_6929411_left_checked

theorem cover_6929411 : CoveredBy scale carrier boxes root_6929411 := by
  apply coveredBy_split_literal root_6929411 small_6929411_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6929417 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6929411_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6929417
#print axioms cover_6929411

def root_6925837 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6925837 : CoveredBy scale carrier boxes root_6925837 := by
  apply coveredBy_split_literal root_6925837 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.root_6925838 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6929411 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.cover_6925838
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6929411
#print axioms cover_6925837

def root_6925832 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6925832_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6925832_right_fuel : Nat := 1
def small_6925832_right_count : Nat := 1
def small_6925832_right_encoded : String := "00000003"
theorem small_6925832_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6925832_right_root small_6925832_right_fuel small_6925832_right_count small_6925832_right_encoded = true := by
  decide +kernel
theorem small_6925832_right_covered : CoveredBy scale carrier boxes small_6925832_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6925832_right_root small_6925832_right_fuel small_6925832_right_count small_6925832_right_encoded small_6925832_right_checked

theorem cover_6925832 : CoveredBy scale carrier boxes root_6925832 := by
  apply coveredBy_split_literal root_6925832 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6925837 small_6925832_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6925837
  · exact small_6925832_right_covered
#print axioms cover_6925832

def root_6937106 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6937106 : CoveredBy scale carrier boxes root_6937106 := by
  apply coveredBy_split_literal root_6937106 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2611.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2612.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2611.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2612.covered
#print axioms cover_6937106

def root_6937100 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6937100_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6937100_left_fuel : Nat := 1
def small_6937100_left_count : Nat := 1
def small_6937100_left_encoded : String := "00000004"
theorem small_6937100_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6937100_left_root small_6937100_left_fuel small_6937100_left_count small_6937100_left_encoded = true := by
  decide +kernel
theorem small_6937100_left_covered : CoveredBy scale carrier boxes small_6937100_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6937100_left_root small_6937100_left_fuel small_6937100_left_count small_6937100_left_encoded small_6937100_left_checked

theorem cover_6937100 : CoveredBy scale carrier boxes root_6937100 := by
  apply coveredBy_split_literal root_6937100 small_6937100_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6937106 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6937100_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6937106
#print axioms cover_6937100

def root_6937060 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6937060_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6937060_left_fuel : Nat := 7
def small_6937060_left_count : Nat := 19
def small_6937060_left_encoded : String := "120700FE05000102135D44F9050000FC00000005135D450700000003045489F7000000070000000700000001135D80F900000001050000FC135D810700000007000000030000000700000004"
theorem small_6937060_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6937060_left_root small_6937060_left_fuel small_6937060_left_count small_6937060_left_encoded = true := by
  decide +kernel
theorem small_6937060_left_covered : CoveredBy scale carrier boxes small_6937060_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6937060_left_root small_6937060_left_fuel small_6937060_left_count small_6937060_left_encoded small_6937060_left_checked

theorem cover_6937060 : CoveredBy scale carrier boxes root_6937060 := by
  apply coveredBy_split_literal root_6937060 small_6937060_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6937100 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6937060_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6937100
#print axioms cover_6937060

def root_6937055 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6937055_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6937055_right_fuel : Nat := 1
def small_6937055_right_count : Nat := 1
def small_6937055_right_encoded : String := "00000002"
theorem small_6937055_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6937055_right_root small_6937055_right_fuel small_6937055_right_count small_6937055_right_encoded = true := by
  decide +kernel
theorem small_6937055_right_covered : CoveredBy scale carrier boxes small_6937055_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6937055_right_root small_6937055_right_fuel small_6937055_right_count small_6937055_right_encoded small_6937055_right_checked

theorem cover_6937055 : CoveredBy scale carrier boxes root_6937055 := by
  apply coveredBy_split_literal root_6937055 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6937060 small_6937055_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6937060
  · exact small_6937055_right_covered
#print axioms cover_6937055

def root_6936991 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6936991_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6936991_left_fuel : Nat := 11
def small_6936991_left_count : Nat := 31
def small_6936991_left_encoded : String := "120701040000000208A913090000000712073CFE0000000405000102135D44F9050000FC135D8107045489F700000007138671000000000000000007000000030000000700000001135D80F900000001050000FC135D8107045489F700000007138671000000000004548A0500000007000000070000000300000007"
theorem small_6936991_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6936991_left_root small_6936991_left_fuel small_6936991_left_count small_6936991_left_encoded = true := by
  decide +kernel
theorem small_6936991_left_covered : CoveredBy scale carrier boxes small_6936991_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6936991_left_root small_6936991_left_fuel small_6936991_left_count small_6936991_left_encoded small_6936991_left_checked

theorem cover_6936991 : CoveredBy scale carrier boxes root_6936991 := by
  apply coveredBy_split_literal root_6936991 small_6936991_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6937055 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6936991_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6937055
#print axioms cover_6936991

def root_6936985 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6936985_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6936985_left_fuel : Nat := 1
def small_6936985_left_count : Nat := 1
def small_6936985_left_encoded : String := "00000000"
theorem small_6936985_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6936985_left_root small_6936985_left_fuel small_6936985_left_count small_6936985_left_encoded = true := by
  decide +kernel
theorem small_6936985_left_covered : CoveredBy scale carrier boxes small_6936985_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6936985_left_root small_6936985_left_fuel small_6936985_left_count small_6936985_left_encoded small_6936985_left_checked

theorem cover_6936985 : CoveredBy scale carrier boxes root_6936985 := by
  apply coveredBy_split_literal root_6936985 small_6936985_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6936991 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6936985_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6936991
#print axioms cover_6936985

def root_6936723 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6936723_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6936723_left_fuel : Nat := 20
def small_6936723_left_count : Nat := 121
def small_6936723_left_encoded : String := "12073D0008A91305120701040000000208A91309000000070000000712073D0408A91309120700FE0500010200000005135D80F900000001050000FC00000005000000070000000412073CFE0000000405000102135D44F9050000FC135D81070CFD9BF70F350D0000000005000000000F34D100000000000CFD9C050F34D10400000002000000070F350D040CFD9C09000000050F350CFE000000040C9A8704000000050F878D050C9A86FE000000050F8751090000000400000009000000020000000200000003135D4507000000030CFD9BF70F350D000CFD9C050000000700000009000000000F34D100000000000CFD9C050F34D10400000002000000070F350D04000000090000000200000001135D80F900000001050000FC135D81070CFD9BF70F350D000CFD9C05000000070F350D040CFD9C09000000070000000600000002000000000F34D100000000000CFD9C050F34D10400000002000000070F350D040CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87040F87510500000002000000090F878D0500000007000000020000000200000003135D4507000000030CFD9BF70F350D0000000007000000000F34D100000000000CFD9C05000000070F350D040CFD9C090000000700000007000000020000000200000000"
theorem small_6936723_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6936723_left_root small_6936723_left_fuel small_6936723_left_count small_6936723_left_encoded = true := by
  decide +kernel
theorem small_6936723_left_covered : CoveredBy scale carrier boxes small_6936723_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6936723_left_root small_6936723_left_fuel small_6936723_left_count small_6936723_left_encoded small_6936723_left_checked

theorem cover_6936723 : CoveredBy scale carrier boxes root_6936723 := by
  apply coveredBy_split_literal root_6936723 small_6936723_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6936985 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6936723_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6936985
#print axioms cover_6936723

def root_6936718 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6936718_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6936718_right_fuel : Nat := 1
def small_6936718_right_count : Nat := 1
def small_6936718_right_encoded : String := "00000004"
theorem small_6936718_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6936718_right_root small_6936718_right_fuel small_6936718_right_count small_6936718_right_encoded = true := by
  decide +kernel
theorem small_6936718_right_covered : CoveredBy scale carrier boxes small_6936718_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6936718_right_root small_6936718_right_fuel small_6936718_right_count small_6936718_right_encoded small_6936718_right_checked

theorem cover_6936718 : CoveredBy scale carrier boxes root_6936718 := by
  apply coveredBy_split_literal root_6936718 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6936723 small_6936718_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6936723
  · exact small_6936718_right_covered
#print axioms cover_6936718

def root_6945748 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6945748_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6945748_left_fuel : Nat := 20
def small_6945748_left_count : Nat := 219
def small_6945748_left_encoded : String := "13E201000DE7CA040E5FD9050000000203C0010213A510F908C000FC11FC250708C000FE000000090000000800000003000000090000000113A54CF90000000108C000FC11FC25070000000800000003000000080E60150503C0010213A510F908C000FC11FC250708C000FE11FC2509033F67B713BC31000DAED8850E9625040000000200000007000000090000000013BBF500000000000DAED8850E962504000000020320010213C108F9096000FC00000005000000070000000113C144F900000001096000FC11AABD07096000FE0000000511AA8109000000040000000A00000003000000070E9661040320010213C108F9000000090000000113C144F900000001096000FC11AABD07096000FE0000000511AA810900000004000000080000000300000009000000020000000411FBE90900000004033F67B70000000813BBF500000000000DAED8850E962504000000020320010213C108F9096000FC0000000A0000000A0000000113C144F900000001096000FC11AABD070000000800000003000000080E96610400000008000000020000000311FBE9070000000308C000FE11FC2509033F67B70000000913BBF50000000000000000090000000411FBE90900000004033F67B70000000813BBF500000000000DAED8850E962504000000020320010213C108F9082000FC12469907082000FE0000000912465D09000000040000000800000003000000090000000113C144F900000001082000FC124699070000000800000003000000090E96610400000009000000020000000113A54CF90000000108C000FC11FC250708C000FE11FC2509033F67B713BC31000DAED8850E96250400000002000000070E96610400000008000000020000000013BBF500000000000DAED8850E96250400000002046001021383DCF9096000FC11AABD07096000FE0000000711AA81090000000400000008000000030000000700000001138418F900000001096000FC11AABD07096000FE000000070000000800000003000000070E966104046001021383DCF9096000FC11AABD070000000800000003000000090000000100000008000000020000000411FBE90900000004000000080000000311FBE9070000000308C000FE11FC2509033F67B70000000713BBF500000000000DAED88500000009000000090000000411FBE90900000004000000080000000200000000"
theorem small_6945748_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6945748_left_root small_6945748_left_fuel small_6945748_left_count small_6945748_left_encoded = true := by
  decide +kernel
theorem small_6945748_left_covered : CoveredBy scale carrier boxes small_6945748_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6945748_left_root small_6945748_left_fuel small_6945748_left_count small_6945748_left_encoded small_6945748_left_checked

theorem cover_6945748 : CoveredBy scale carrier boxes root_6945748 := by
  apply coveredBy_split_literal root_6945748 small_6945748_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2614.root coord0 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_6945748_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2614.covered
#print axioms cover_6945748

def root_6945743 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6945743_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6945743_right_fuel : Nat := 1
def small_6945743_right_count : Nat := 1
def small_6945743_right_encoded : String := "00000004"
theorem small_6945743_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6945743_right_root small_6945743_right_fuel small_6945743_right_count small_6945743_right_encoded = true := by
  decide +kernel
theorem small_6945743_right_covered : CoveredBy scale carrier boxes small_6945743_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6945743_right_root small_6945743_right_fuel small_6945743_right_count small_6945743_right_encoded small_6945743_right_checked

theorem cover_6945743 : CoveredBy scale carrier boxes root_6945743 := by
  apply coveredBy_split_literal root_6945743 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6945748 small_6945743_right_root coord4 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6945748
  · exact small_6945743_right_covered
#print axioms cover_6945743

def root_6945742 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6945742_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6945742_right_fuel : Nat := 17
def small_6945742_right_count : Nat := 77
def small_6945742_right_encoded : String := "128A410900000004022A457713E201000DE7CA04000000080E60150503C0010213A510F908C000FC11FC25070000000800000003000000080000000100000008000000020000000013E1C500000000000DE7CA040E5FD9050000000203C0010213A510F908C000FC000000070000000600000001000000080E60150503C0010213A510F908C000FC11FC2507064000FE12FFAD090115233713F895000DAED8850E962504000000020320010200000006000000080E9661040000000700000002000000000000000600000004000000060000000311FBE90700000003064000FE12FFAD090000000600000004000000050000000113A54CF90000000108C000FC11FC2507064000FE12FFAD09011523370000000813F8590000000000000000050000000400000005000000030000000500000002"
theorem small_6945742_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6945742_right_root small_6945742_right_fuel small_6945742_right_count small_6945742_right_encoded = true := by
  decide +kernel
theorem small_6945742_right_covered : CoveredBy scale carrier boxes small_6945742_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6945742_right_root small_6945742_right_fuel small_6945742_right_count small_6945742_right_encoded small_6945742_right_checked

theorem cover_6945742 : CoveredBy scale carrier boxes root_6945742 := by
  apply coveredBy_split_literal root_6945742 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6945743 small_6945742_right_root coord4 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6945743
  · exact small_6945742_right_covered
#print axioms cover_6945742

def root_6945737 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6945737_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6945737_right_fuel : Nat := 1
def small_6945737_right_count : Nat := 1
def small_6945737_right_encoded : String := "00000003"
theorem small_6945737_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6945737_right_root small_6945737_right_fuel small_6945737_right_count small_6945737_right_encoded = true := by
  decide +kernel
theorem small_6945737_right_covered : CoveredBy scale carrier boxes small_6945737_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6945737_right_root small_6945737_right_fuel small_6945737_right_count small_6945737_right_encoded small_6945737_right_checked

theorem cover_6945737 : CoveredBy scale carrier boxes root_6945737 := by
  apply coveredBy_split_literal root_6945737 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6945742 small_6945737_right_root coord3 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6945742
  · exact small_6945737_right_covered
#print axioms cover_6945737

def root_6945736 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6945736_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6945736_right_fuel : Nat := 16
def small_6945736_right_count : Nat := 111
def small_6945736_right_encoded : String := "128A410700000003078000FE128A7D09022A457713E201000DE7CA04000000090E60150503C0010213A510F9000000090000000113A54CF900000001064000FC12FFAD0708C000FE0000000711FBE90900000004000000090000000300000009000000020000000013E1C500000000000DE7CA040E5FD9050000000203C0010213A510F9064000FC12FFAD0708C000FE000000090000000600000003000000060000000113A54CF900000001064000FC12FFAD0708C000FE000000090000000500000003000000050E60150503C0010213A510F9064000FC12FFAD0708C000FE11FC250901152337000000090000000600000004000000060000000312FF71070000000308C000FE00000009000000050000000113A54CF900000001064000FC12FFAD0708C000FE11FC2509011523370000000913F859000000000000000005000000040000000500000003000000050000000200000004128A410900000004022A457713E201000DE7CA04000000080E60150503C0010213A510F9064000FC12FFAD070000000800000003000000050000000100000005000000020000000013E1C500000000000DE7CA040E5FD905000000020000000500000005"
theorem small_6945736_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6945736_right_root small_6945736_right_fuel small_6945736_right_count small_6945736_right_encoded = true := by
  decide +kernel
theorem small_6945736_right_covered : CoveredBy scale carrier boxes small_6945736_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6945736_right_root small_6945736_right_fuel small_6945736_right_count small_6945736_right_encoded small_6945736_right_checked

theorem cover_6945736 : CoveredBy scale carrier boxes root_6945736 := by
  apply coveredBy_split_literal root_6945736 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6945737 small_6945736_right_root coord3 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6945737
  · exact small_6945736_right_covered
#print axioms cover_6945736

def root_6945730 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6945730_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6945730_left_fuel : Nat := 1
def small_6945730_left_count : Nat := 1
def small_6945730_left_encoded : String := "00000001"
theorem small_6945730_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6945730_left_root small_6945730_left_fuel small_6945730_left_count small_6945730_left_encoded = true := by
  decide +kernel
theorem small_6945730_left_covered : CoveredBy scale carrier boxes small_6945730_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6945730_left_root small_6945730_left_fuel small_6945730_left_count small_6945730_left_encoded small_6945730_left_checked

theorem cover_6945730 : CoveredBy scale carrier boxes root_6945730 := by
  apply coveredBy_split_literal root_6945730 small_6945730_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6945736 coord1 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_6945730_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6945736
#print axioms cover_6945730

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475
