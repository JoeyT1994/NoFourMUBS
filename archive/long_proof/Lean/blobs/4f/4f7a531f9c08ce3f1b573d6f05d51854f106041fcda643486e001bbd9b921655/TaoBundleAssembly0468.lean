import TaoBundleAssembly0467
import TaoBundleChunkBatch0642
import TaoBundleChunkBatch0643
import TaoBundleChunkBatch0644
import TaoBundleChunkBatch0645
import TaoBundleChunkBatch0646
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468
def root_6820245 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6820245_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6820245_left_fuel : Nat := 24
def small_6820245_left_count : Nat := 335
def small_6820245_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0000FE1152250908A912F912073D0208A912FD12073CFC0000000308A91309120700FE0000000500000004000000050000000500000001120701020000000108A912FD12073CFC0000000308A91309000000060000000500000005000000041151E9090000000408A912F912073D0208A912FD12073CFC000000030500010000000005135D80F7000000000500010400000005135D8105050000FE00000005135D4509000000040CFD9BF90F350D0200000005000000010F34D102000000010CFD9BFD0F350CFC000000030C9A86FC000000050F8750FD00000006000000030000000500000002120700FC000000050000000300000001120701020000000108A912FD12073CFC000000030500010000000005135D80F700000000050001040000000500000006000000061151E8FD0A0000FE1152250908A912F912073D0208A91309120700FE05000100135D44F705000104135D45050000000200000005135D8105050000FC00000006135D44FD0CFD9BF9000000070F34D1020000000100000006000000030000000200000000135D80F70000000005000104135D45050000000200000007135D8105050000FC0000000600000007000000020000000412073CFE0000000405000100135D44F705000104135D45050000000200000005135D8105050000FC135D80FD0000000300000005000000090000000200000000135D80F70000000005000104135D450500000002050000FC0000000500000009135D8105050000FC135D80FD000000030CFD9BF90F350D020CFD9C090000000700000005000000010F34D1020000000100000006135D44FD0CFD9BF9000000090F34D102000000010CFD9C090000000700000009000000030000000200000001120701020000000108A91309120700FE000000060000000412073CFE0000000405000100135D44F705000104000000050000000600000000135D80F70000000005000104135D4505000000020000000600000006000000041151E9090000000408A912F912073D0205000100135D44F70500010400000009135D8105050000FC135D80FD00000003050000FE00000005135D45090000000400000009000000090000000200000000135D80F70000000005000104135D450500000002050000FC135D80FD00000003050000FE00000005135D4509000000040000000900000009135D8105050000FC135D80FD00000003050000FE135D81090CFD9BF9000000090F34D1020000000107800100000000050000000600000004135D4509000000040CFD9BF9000000090F34D1020000000107800100128A40F707800104128A410500000002000000090000000700000000128A7CF70000000007800104128A410500000002078000FC128A7CFD000000030000000600000007128A7D05078000FC000000060000000700000002135D44FD050000FE00000009135D45090000000400000009000000030000000200000001120701020000000105000100135D44F7050001040000000A135D8105050000FC135D80FD00000003050000FE000000050000000A135D44FD050000FE135D81090000000A0000000400000007000000030000000200000000135D80F70000000005000104135D450500000002050000FC135D80FD00000003050000FE000000050000000A135D44FD050000FE135D8109045489F90000000900000006000000040000000A00000003135D8105050000FC135D80FD00000003050000FE00000006135D45090000000400000006135D44FD050000FE135D8109045489F900000007000000060000000400000007000000030000000200000003"
theorem small_6820245_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6820245_left_root small_6820245_left_fuel small_6820245_left_count small_6820245_left_encoded = true := by
  decide +kernel
theorem small_6820245_left_covered : CoveredBy scale carrier boxes small_6820245_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6820245_left_root small_6820245_left_fuel small_6820245_left_count small_6820245_left_encoded small_6820245_left_checked

theorem cover_6820245 : CoveredBy scale carrier boxes root_6820245 := by
  apply coveredBy_split_literal root_6820245 small_6820245_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2568.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6820245_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2568.covered
#print axioms cover_6820245

def root_6820239 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6820239_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6820239_left_fuel : Nat := 1
def small_6820239_left_count : Nat := 1
def small_6820239_left_encoded : String := "00000001"
theorem small_6820239_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6820239_left_root small_6820239_left_fuel small_6820239_left_count small_6820239_left_encoded = true := by
  decide +kernel
theorem small_6820239_left_covered : CoveredBy scale carrier boxes small_6820239_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6820239_left_root small_6820239_left_fuel small_6820239_left_count small_6820239_left_encoded small_6820239_left_checked

theorem cover_6820239 : CoveredBy scale carrier boxes root_6820239 := by
  apply coveredBy_split_literal root_6820239 small_6820239_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6820245 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6820239_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6820245
#print axioms cover_6820239

def root_6819139 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6819139 : CoveredBy scale carrier boxes root_6819139 := by
  apply coveredBy_split_literal root_6819139 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2567.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6820239 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2567.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6820239
#print axioms cover_6819139

def root_6819134 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6819134_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6819134_right_fuel : Nat := 1
def small_6819134_right_count : Nat := 1
def small_6819134_right_encoded : String := "00000000"
theorem small_6819134_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6819134_right_root small_6819134_right_fuel small_6819134_right_count small_6819134_right_encoded = true := by
  decide +kernel
theorem small_6819134_right_covered : CoveredBy scale carrier boxes small_6819134_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6819134_right_root small_6819134_right_fuel small_6819134_right_count small_6819134_right_encoded small_6819134_right_checked

theorem cover_6819134 : CoveredBy scale carrier boxes root_6819134 := by
  apply coveredBy_split_literal root_6819134 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6819139 small_6819134_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6819139
  · exact small_6819134_right_covered
#print axioms cover_6819134

def root_6827081 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6827081_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6827081_right_fuel : Nat := 23
def small_6827081_right_count : Nat := 167
def small_6827081_right_encoded : String := "120701000000000008A912F912073D0205000104135D450500000002050000FC135D80FD00000003050000FE00000008135D450900000004045489F71386AD000CFD9BF90F350D0200000008000000010F34D102000000010280010413D7B10500000002078000FC128A7CFD000000030000000800000008000000080000000000000008135D44FD050000FE00000008135D450900000004045489F71386AD000CFD9BF90000000800000008000000000000000800000003135D8105050000FC135D80FD00000003050000FE00000008135D45090000000400000008000000080000000200000001120701020000000105000104135D450500000002050000FC135D80FD00000003050000FE135D8109045489F7000000060000000800000004135D450900000004045489F71386AD00045489F91386AD020280010413D7B10500000002078000FC00000006128A40FD028000FE0000000600000009000000030000000900000001000000060000000000000009135D44FD050000FE135D8109045489F71386AD00045489F90000000800000006000000000000000800000004135D450900000004045489F71386AD00045489F91386AD020280010413D7B10500000002028000FC13D7ECFD00000003028000FE0000000813D7B10900000004067ECE7712EA9500067ECE790000000800000006000000000000000813D7B0FD028000FE00000008000000050000000313D7ED05028000FC0000000800000005000000020000000113867102000000010280010413D7B10500000002028000FC000000060000000500000005000000001386710000000000045489F9000000080000000800000003135D8105050000FC135D80FD00000003050000FE0000000800000009135D44FD050000FE00000008000000050000000300000002"
theorem small_6827081_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6827081_right_root small_6827081_right_fuel small_6827081_right_count small_6827081_right_encoded = true := by
  decide +kernel
theorem small_6827081_right_covered : CoveredBy scale carrier boxes small_6827081_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6827081_right_root small_6827081_right_fuel small_6827081_right_count small_6827081_right_encoded small_6827081_right_checked

theorem cover_6827081 : CoveredBy scale carrier boxes root_6827081 := by
  apply coveredBy_split_literal root_6827081 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2571.root small_6827081_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2571.covered
  · exact small_6827081_right_covered
#print axioms cover_6827081

def root_6827075 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6827075_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6827075_left_fuel : Nat := 1
def small_6827075_left_count : Nat := 1
def small_6827075_left_encoded : String := "00000004"
theorem small_6827075_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6827075_left_root small_6827075_left_fuel small_6827075_left_count small_6827075_left_encoded = true := by
  decide +kernel
theorem small_6827075_left_covered : CoveredBy scale carrier boxes small_6827075_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6827075_left_root small_6827075_left_fuel small_6827075_left_count small_6827075_left_encoded small_6827075_left_checked

theorem cover_6827075 : CoveredBy scale carrier boxes root_6827075 := by
  apply coveredBy_split_literal root_6827075 small_6827075_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6827081 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6827075_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6827081
#print axioms cover_6827075

def root_6826695 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6826695_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6826695_left_fuel : Nat := 20
def small_6826695_left_count : Nat := 175
def small_6826695_left_encoded : String := "1152250908A912F712073D0008A912F912073D0208A91309120700FE05000104135D450500000002050000FC135D80FD000000030CFD9BF7000000060000000500000008135D8105050000FC135D80FD000000030CFD9BF7000000060F34D1000000000000000006135D44FD0000000800000003000000020000000412073CFE0000000405000104135D450500000002050000FC135D80FD000000030CFD9BF70F350D000CFD9BF90F350D02000000050000000100000005000000000F34D100000000000CFD9BF90000000800000008135D44FD0CFD9BF70F350D000CFD9BF90F350D0200000009000000010F34D102000000010CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87000F8750F700000009000000000F878CF70000000000000008000000000F34D100000000000000000800000003135D8105050000FC135D80FD000000030CFD9BF70F350D000CFD9BF90F350D020CFD9C090000000800000008000000010F34D102000000010CFD9C090000000600000006000000000F34D1000000000000000008135D44FD0CFD9BF70F350D000CFD9BF90F350D0200000008000000010F34D102000000010CFD9C090000000700000008000000000F34D1000000000000000008000000030000000200000001120701020000000108A91309120700FE000000060000000412073CFE0000000405000104135D450500000002050000FC00000006135D44FD0CFD9BF7000000060F34D100000000000000000600000003135D8105050000FC00000006135D44FD0CFD9BF7000000060F34D1000000000000000006000000030000000200000000120701000000000008A912F912073D0208A91309120700FE00000008000000040000000800000001120701020000000108A913090000000812073CFE0000000405000104135D450500000002050000FC00000006000000080000000800000004"
theorem small_6826695_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6826695_left_root small_6826695_left_fuel small_6826695_left_count small_6826695_left_encoded = true := by
  decide +kernel
theorem small_6826695_left_covered : CoveredBy scale carrier boxes small_6826695_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6826695_left_root small_6826695_left_fuel small_6826695_left_count small_6826695_left_encoded small_6826695_left_checked

theorem cover_6826695 : CoveredBy scale carrier boxes root_6826695 := by
  apply coveredBy_split_literal root_6826695 small_6826695_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6827075 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6826695_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6827075
#print axioms cover_6826695

def root_6826690 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6826690_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6826690_right_fuel : Nat := 1
def small_6826690_right_count : Nat := 1
def small_6826690_right_encoded : String := "00000003"
theorem small_6826690_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6826690_right_root small_6826690_right_fuel small_6826690_right_count small_6826690_right_encoded = true := by
  decide +kernel
theorem small_6826690_right_covered : CoveredBy scale carrier boxes small_6826690_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6826690_right_root small_6826690_right_fuel small_6826690_right_count small_6826690_right_encoded small_6826690_right_checked

theorem cover_6826690 : CoveredBy scale carrier boxes root_6826690 := by
  apply coveredBy_split_literal root_6826690 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6826695 small_6826690_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6826695
  · exact small_6826690_right_covered
#print axioms cover_6826690

def root_6825372 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6825372 : CoveredBy scale carrier boxes root_6825372 := by
  apply coveredBy_split_literal root_6825372 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2570.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6826690 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2570.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6826690
#print axioms cover_6825372

def root_6825366 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6825366_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6825366_left_fuel : Nat := 1
def small_6825366_left_count : Nat := 1
def small_6825366_left_encoded : String := "00000002"
theorem small_6825366_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6825366_left_root small_6825366_left_fuel small_6825366_left_count small_6825366_left_encoded = true := by
  decide +kernel
theorem small_6825366_left_covered : CoveredBy scale carrier boxes small_6825366_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6825366_left_root small_6825366_left_fuel small_6825366_left_count small_6825366_left_encoded small_6825366_left_checked

theorem cover_6825366 : CoveredBy scale carrier boxes root_6825366 := by
  apply coveredBy_split_literal root_6825366 small_6825366_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6825372 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6825366_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6825372
#print axioms cover_6825366

def root_6830436 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6830436_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6830436_right_fuel : Nat := 29
def small_6830436_right_count : Nat := 489
def small_6830436_right_encoded : String := "1151E8FD0A0000FE1152250908A912F712073D0008A912F912073D0208A91305120701040000000208A91309120700FE050000FC135D80FD000000030CFD9BF70F350D000CFD9BF90F350D02000000080000000100000008000000000F34D100000000000000000800000008000000040000000812073D0408A91309120700FE050000FC135D80FD000000030CFD9BF70F350D000CFD9BF90F350D020CFD9C050F34D104000000020000000700000007000000010F34D1020000000100000006000000000F34D100000000000CFD9BF90F350D02000000080000000100000008135D44FD0CFD9BF7000000080F34D1000000000000000008000000030000000412073CFE00000004050000FC135D80FD000000030CFD9BF70F350D000CFD9BF90F350D020CFD9C05000000080F350D0400000008000000020000000100000008000000000F34D1000000000000000008135D44FD00000008000000030000000200000001120701020000000108A9130512070104000000020000000812073D0408A91309120700FE000000080000000412073CFE00000004050000FC135D80FD000000030CFD9BF70F350D00045489F91386AD020CFD9C05000000080000000600000001000000060000000000000008135D44FD0CFD9BF70F350D00045489F900000008000000080000000000000008000000030000000200000000120701000000000008A912F912073D0208A91305120701040000000208A91309120700FE00000008000000040000000812073D0408A91309120700FE050000FC135D80FD00000003045489F7000000081386710000000000000000080000000800000004000000080000000200000001120701020000000100000008000000041151E9090000000408A912F712073D0008A912F912073D0208A9130512070104000000020000000812073D04050000FC135D80FD00000003050000FE135D81090CFD9BF70F350D000CFD9BF90F350D0200000008000000010F34D102000000010CFD9C05000000080F350D040C9A87000F8750F70C9A87040F875105000000020000000600000006000000000000000800000002000000000F34D100000000000000000800000004135D4509000000040CFD9BF70F350D000CFD9BF90F350D020CFD9C05000000080F350D040C9A87000F8750F70C9A8702000000080F878CF9000000010C9A87040F87510500000002078000FC128A7CFD00000003000000070000000700000007000000000F878CF7000000000000000800000002000000010F34D102000000010CFD9C050F34D10400000002000000080F350D040C9A87000F8750F70C9A87040F87510500000002078000FC128A7CFD0000000300000006000000070F878D05078000FC128A7CFD00000003000000070000000700000002000000000F878CF7000000000C9A87040F87510500000002078000FC128A7CFD00000003028000FE0000000613D7B109000000040AD357790000000800000006128A40FD028000FE0000000813D7B1090000000400000008000000030F878D05000000080000000200000002000000000F34D100000000000CFD9BF90000000800000008135D44FD050000FE135D81090CFD9BF70F350D000CFD9BF90000000800000008000000000000000800000004135D4509000000040CFD9BF70F350D000CFD9BF90F350D020CFD9C05000000080F350D040C9A87000F8750F700000007000000000000000800000002000000010F34D102000000010CFD9C050F34D10400000002000000050F350D040C9A87000F8750F700000007000000000F878CF7000000000C9A87040F87510500000002000000070000000500000002000000000F34D1000000000000000008000000030000000200000001120701020000000108A913051207010400000002050000FC135D80FD00000003000000080000000512073D04050000FC135D80FD00000003050000FE135D81090CFD9BF70F350D00045489F91386AD020CFD9C0500000008000000060000000100000006000000000F34D100000000000000000800000004135D4509000000040CFD9BF70F350D00045489F91386AD020CFD9C050F34D104000000020C9A87000F8750F70000000600000000000000050F350D040C9A87000F8750F700000006000000000F878CF7000000000C9A87040F875105000000020000000600000006000000020000000113867102000000010CFD9C050F34D104000000020000000500000006000000000F34D10000000000045489F91386AD020CFD9C05000000080F350D040C9A87040000000900000005000000020000000100000009135D44FD050000FE135D81090CFD9BF70F350D00045489F91386AD020CFD9C05000000080F350D040C9A87000F8750F7000000070000000000000008000000020000000113867102000000010CFD9C050000000800000006000000000F34D100000000000000000800000004135D4509000000040CFD9BF70F350D00045489F91386AD020CFD9C050F34D10400000002000000050F350D040C9A87000F8750F70000000700000000000000050000000200000001138671020000000100000005000000000F34D1000000000000000005000000030000000200000000120701000000000008A912F900000008120701020000000108A913050000000812073D04050000FC00000008000000050000000200000003"
theorem small_6830436_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6830436_right_root small_6830436_right_fuel small_6830436_right_count small_6830436_right_encoded = true := by
  decide +kernel
theorem small_6830436_right_covered : CoveredBy scale carrier boxes small_6830436_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6830436_right_root small_6830436_right_fuel small_6830436_right_count small_6830436_right_encoded small_6830436_right_checked

theorem cover_6830436 : CoveredBy scale carrier boxes root_6830436 := by
  apply coveredBy_split_literal root_6830436 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2572.root small_6830436_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2572.covered
  · exact small_6830436_right_covered
#print axioms cover_6830436

def root_6830431 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6830431_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6830431_right_fuel : Nat := 1
def small_6830431_right_count : Nat := 1
def small_6830431_right_encoded : String := "00000002"
theorem small_6830431_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6830431_right_root small_6830431_right_fuel small_6830431_right_count small_6830431_right_encoded = true := by
  decide +kernel
theorem small_6830431_right_covered : CoveredBy scale carrier boxes small_6830431_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6830431_right_root small_6830431_right_fuel small_6830431_right_count small_6830431_right_encoded small_6830431_right_checked

theorem cover_6830431 : CoveredBy scale carrier boxes root_6830431 := by
  apply coveredBy_split_literal root_6830431 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6830436 small_6830431_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6830436
  · exact small_6830431_right_covered
#print axioms cover_6830431

def root_6825365 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6825365 : CoveredBy scale carrier boxes root_6825365 := by
  apply coveredBy_split_literal root_6825365 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6825366 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6830431 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6825366
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6830431
#print axioms cover_6825365

def root_6825359 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6825359_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6825359_left_fuel : Nat := 1
def small_6825359_left_count : Nat := 1
def small_6825359_left_encoded : String := "00000001"
theorem small_6825359_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6825359_left_root small_6825359_left_fuel small_6825359_left_count small_6825359_left_encoded = true := by
  decide +kernel
theorem small_6825359_left_covered : CoveredBy scale carrier boxes small_6825359_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6825359_left_root small_6825359_left_fuel small_6825359_left_count small_6825359_left_encoded small_6825359_left_checked

theorem cover_6825359 : CoveredBy scale carrier boxes root_6825359 := by
  apply coveredBy_split_literal root_6825359 small_6825359_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6825365 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6825359_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6825365
#print axioms cover_6825359

def root_6823705 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6823705 : CoveredBy scale carrier boxes root_6823705 := by
  apply coveredBy_split_literal root_6823705 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2569.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6825359 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2569.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6825359
#print axioms cover_6823705

def root_6823699 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6823699_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6823699_left_fuel : Nat := 1
def small_6823699_left_count : Nat := 1
def small_6823699_left_encoded : String := "00000000"
theorem small_6823699_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6823699_left_root small_6823699_left_fuel small_6823699_left_count small_6823699_left_encoded = true := by
  decide +kernel
theorem small_6823699_left_covered : CoveredBy scale carrier boxes small_6823699_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6823699_left_root small_6823699_left_fuel small_6823699_left_count small_6823699_left_encoded small_6823699_left_checked

theorem cover_6823699 : CoveredBy scale carrier boxes root_6823699 := by
  apply coveredBy_split_literal root_6823699 small_6823699_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6823705 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6823699_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6823705
#print axioms cover_6823699

def root_6819133 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6819133 : CoveredBy scale carrier boxes root_6819133 := by
  apply coveredBy_split_literal root_6819133 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6819134 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6823699 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6819134
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6823699
#print axioms cover_6819133

def root_6815213 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6815213 : CoveredBy scale carrier boxes root_6815213 := by
  apply coveredBy_split_literal root_6815213 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6815214 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6819133 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6815214
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6819133
#print axioms cover_6815213

def root_6835378 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6835378 : CoveredBy scale carrier boxes root_6835378 := by
  apply coveredBy_split_literal root_6835378 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2574.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2575.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2574.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2575.covered
#print axioms cover_6835378

def root_6835373 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6835373_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6835373_right_fuel : Nat := 1
def small_6835373_right_count : Nat := 1
def small_6835373_right_encoded : String := "00000001"
theorem small_6835373_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6835373_right_root small_6835373_right_fuel small_6835373_right_count small_6835373_right_encoded = true := by
  decide +kernel
theorem small_6835373_right_covered : CoveredBy scale carrier boxes small_6835373_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6835373_right_root small_6835373_right_fuel small_6835373_right_count small_6835373_right_encoded small_6835373_right_checked

theorem cover_6835373 : CoveredBy scale carrier boxes root_6835373 := by
  apply coveredBy_split_literal root_6835373 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6835378 small_6835373_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6835378
  · exact small_6835373_right_covered
#print axioms cover_6835373

def root_6838943 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6838943 : CoveredBy scale carrier boxes root_6838943 := by
  apply coveredBy_split_literal root_6838943 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2576.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2577.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2576.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2577.covered
#print axioms cover_6838943

def root_6838937 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6838937_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6838937_left_fuel : Nat := 1
def small_6838937_left_count : Nat := 1
def small_6838937_left_encoded : String := "00000002"
theorem small_6838937_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6838937_left_root small_6838937_left_fuel small_6838937_left_count small_6838937_left_encoded = true := by
  decide +kernel
theorem small_6838937_left_covered : CoveredBy scale carrier boxes small_6838937_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6838937_left_root small_6838937_left_fuel small_6838937_left_count small_6838937_left_encoded small_6838937_left_checked

theorem cover_6838937 : CoveredBy scale carrier boxes root_6838937 := by
  apply coveredBy_split_literal root_6838937 small_6838937_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6838943 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6838937_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6838943
#print axioms cover_6838937

def root_6842140 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6842140 : CoveredBy scale carrier boxes root_6842140 := by
  apply coveredBy_split_literal root_6842140 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2578.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2579.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2578.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2579.covered
#print axioms cover_6842140

def root_6842134 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6842134_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6842134_left_fuel : Nat := 1
def small_6842134_left_count : Nat := 1
def small_6842134_left_encoded : String := "00000003"
theorem small_6842134_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6842134_left_root small_6842134_left_fuel small_6842134_left_count small_6842134_left_encoded = true := by
  decide +kernel
theorem small_6842134_left_covered : CoveredBy scale carrier boxes small_6842134_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6842134_left_root small_6842134_left_fuel small_6842134_left_count small_6842134_left_encoded small_6842134_left_checked

theorem cover_6842134 : CoveredBy scale carrier boxes root_6842134 := by
  apply coveredBy_split_literal root_6842134 small_6842134_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6842140 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6842134_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6842140
#print axioms cover_6842134

def root_6842133 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6842133 : CoveredBy scale carrier boxes root_6842133 := by
  apply coveredBy_split_literal root_6842133 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6842134 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2580.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6842134
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2580.covered
#print axioms cover_6842133

def root_6842128 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6842128_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6842128_right_fuel : Nat := 1
def small_6842128_right_count : Nat := 1
def small_6842128_right_encoded : String := "00000002"
theorem small_6842128_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6842128_right_root small_6842128_right_fuel small_6842128_right_count small_6842128_right_encoded = true := by
  decide +kernel
theorem small_6842128_right_covered : CoveredBy scale carrier boxes small_6842128_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6842128_right_root small_6842128_right_fuel small_6842128_right_count small_6842128_right_encoded small_6842128_right_checked

theorem cover_6842128 : CoveredBy scale carrier boxes root_6842128 := by
  apply coveredBy_split_literal root_6842128 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6842133 small_6842128_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6842133
  · exact small_6842128_right_covered
#print axioms cover_6842128

def root_6838936 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6838936 : CoveredBy scale carrier boxes root_6838936 := by
  apply coveredBy_split_literal root_6838936 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6838937 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6842128 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6838937
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6842128
#print axioms cover_6838936

def root_6838930 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6838930_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6838930_left_fuel : Nat := 1
def small_6838930_left_count : Nat := 1
def small_6838930_left_encoded : String := "00000001"
theorem small_6838930_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6838930_left_root small_6838930_left_fuel small_6838930_left_count small_6838930_left_encoded = true := by
  decide +kernel
theorem small_6838930_left_covered : CoveredBy scale carrier boxes small_6838930_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6838930_left_root small_6838930_left_fuel small_6838930_left_count small_6838930_left_encoded small_6838930_left_checked

theorem cover_6838930 : CoveredBy scale carrier boxes root_6838930 := by
  apply coveredBy_split_literal root_6838930 small_6838930_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6838936 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6838930_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6838936
#print axioms cover_6838930

def root_6835372 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6835372 : CoveredBy scale carrier boxes root_6835372 := by
  apply coveredBy_split_literal root_6835372 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6835373 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6838930 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6835373
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6838930
#print axioms cover_6835372

def root_6835367 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6835367_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6835367_right_fuel : Nat := 1
def small_6835367_right_count : Nat := 1
def small_6835367_right_encoded : String := "00000000"
theorem small_6835367_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6835367_right_root small_6835367_right_fuel small_6835367_right_count small_6835367_right_encoded = true := by
  decide +kernel
theorem small_6835367_right_covered : CoveredBy scale carrier boxes small_6835367_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6835367_right_root small_6835367_right_fuel small_6835367_right_count small_6835367_right_encoded small_6835367_right_checked

theorem cover_6835367 : CoveredBy scale carrier boxes root_6835367 := by
  apply coveredBy_split_literal root_6835367 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6835372 small_6835367_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6835372
  · exact small_6835367_right_covered
#print axioms cover_6835367

def root_6847596 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6847596 : CoveredBy scale carrier boxes root_6847596 := by
  apply coveredBy_split_literal root_6847596 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2581.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2582.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2581.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2582.covered
#print axioms cover_6847596

def root_6847590 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6847590_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6847590_left_fuel : Nat := 1
def small_6847590_left_count : Nat := 1
def small_6847590_left_encoded : String := "00000003"
theorem small_6847590_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6847590_left_root small_6847590_left_fuel small_6847590_left_count small_6847590_left_encoded = true := by
  decide +kernel
theorem small_6847590_left_covered : CoveredBy scale carrier boxes small_6847590_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6847590_left_root small_6847590_left_fuel small_6847590_left_count small_6847590_left_encoded small_6847590_left_checked

theorem cover_6847590 : CoveredBy scale carrier boxes root_6847590 := by
  apply coveredBy_split_literal root_6847590 small_6847590_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6847596 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6847590_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6847596
#print axioms cover_6847590

def root_6847589 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6847589 : CoveredBy scale carrier boxes root_6847589 := by
  apply coveredBy_split_literal root_6847589 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6847590 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2583.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6847590
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2583.covered
#print axioms cover_6847589

def root_6847583 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6847583_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6847583_left_fuel : Nat := 1
def small_6847583_left_count : Nat := 1
def small_6847583_left_encoded : String := "00000002"
theorem small_6847583_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6847583_left_root small_6847583_left_fuel small_6847583_left_count small_6847583_left_encoded = true := by
  decide +kernel
theorem small_6847583_left_covered : CoveredBy scale carrier boxes small_6847583_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6847583_left_root small_6847583_left_fuel small_6847583_left_count small_6847583_left_encoded small_6847583_left_checked

theorem cover_6847583 : CoveredBy scale carrier boxes root_6847583 := by
  apply coveredBy_split_literal root_6847583 small_6847583_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6847589 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6847583_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6847589
#print axioms cover_6847583

def root_6847582 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6847582 : CoveredBy scale carrier boxes root_6847582 := by
  apply coveredBy_split_literal root_6847582 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6847583 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2584.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6847583
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2584.covered
#print axioms cover_6847582

def root_6847577 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6847577_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6847577_right_fuel : Nat := 1
def small_6847577_right_count : Nat := 1
def small_6847577_right_encoded : String := "00000001"
theorem small_6847577_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6847577_right_root small_6847577_right_fuel small_6847577_right_count small_6847577_right_encoded = true := by
  decide +kernel
theorem small_6847577_right_covered : CoveredBy scale carrier boxes small_6847577_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6847577_right_root small_6847577_right_fuel small_6847577_right_count small_6847577_right_encoded small_6847577_right_checked

theorem cover_6847577 : CoveredBy scale carrier boxes root_6847577 := by
  apply coveredBy_split_literal root_6847577 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6847582 small_6847577_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6847582
  · exact small_6847577_right_covered
#print axioms cover_6847577

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468
