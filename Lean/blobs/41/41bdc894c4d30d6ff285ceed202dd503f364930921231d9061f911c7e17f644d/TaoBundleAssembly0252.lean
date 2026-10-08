import TaoBundleAssembly0249
import TaoBundleAssembly0250
import TaoBundleAssembly0251
import TaoBundleChunkBatch0339
import TaoBundleChunkBatch0340
import TaoBundleChunkBatch0341
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252
def root_3578790 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3578790_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3578790_right_fuel : Nat := 18
def small_3578790_right_count : Nat := 45
def small_3578790_right_encoded : String := "1207010800000004050000F6135D8101050000F8135D81030CFD9BFB0F350D0404548A071386710600000003045489FF1386AD080C9A87040F8750FB078000F6128A7D01078000F8128A7D030000000700000001000000050000000000000005000000020000000500000004000000051386AD06045489FF1386AD080C9A87040000000700000005000000040000000500000003000000020F34D104000000020000000500000001000000050000000000000005"
theorem small_3578790_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3578790_right_root small_3578790_right_fuel small_3578790_right_count small_3578790_right_encoded = true := by
  decide +kernel
theorem small_3578790_right_covered : CoveredBy scale carrier boxes small_3578790_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3578790_right_root small_3578790_right_fuel small_3578790_right_count small_3578790_right_encoded small_3578790_right_checked

theorem cover_3578790 : CoveredBy scale carrier boxes root_3578790 := by
  apply coveredBy_split_literal root_3578790 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0251.root_3578791 small_3578790_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0251.cover_3578791
  · exact small_3578790_right_covered
#print axioms cover_3578790

def root_3578784 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3578784_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3578784_left_fuel : Nat := 1
def small_3578784_left_count : Nat := 1
def small_3578784_left_encoded : String := "00000003"
theorem small_3578784_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3578784_left_root small_3578784_left_fuel small_3578784_left_count small_3578784_left_encoded = true := by
  decide +kernel
theorem small_3578784_left_covered : CoveredBy scale carrier boxes small_3578784_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3578784_left_root small_3578784_left_fuel small_3578784_left_count small_3578784_left_encoded small_3578784_left_checked

theorem cover_3578784 : CoveredBy scale carrier boxes root_3578784 := by
  apply coveredBy_split_literal root_3578784 small_3578784_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.root_3578790 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3578784_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.cover_3578790
#print axioms cover_3578784

def root_3578783 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3578783_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3578783_right_fuel : Nat := 20
def small_3578783_right_count : Nat := 197
def small_3578783_right_encoded : String := "12073D0608A912FF12073D08050000F6135D8101050000F8135D81030CFD9BFB0F350D040CFD9C070F34D106000000030CFD9BFF0F350D080C9A87040F8750FB0C9A87080F8750FF078000F60000000900000009000000040F878CFF00000004078000F60000000A00000007000000020F878CFB000000020C9A87080F8750FF078000F600000006128A41010000000000000008000000040F878CFF00000004078000F6128A7D01000000060000000000000007000000040F34D10800000004000000070F350D060CFD9BFF0F350D080C9A87040000000700000006000000040F34D108000000040000000700000003000000020F34D104000000020CFD9C070F34D106000000030CFD9BFF0F350D080000000600000004000000060F350D06000000060000000300000001135D4503000000010CFD9BFB0F350D040CFD9C070F34D106000000030CFD9BFF0F350D080C9A87040F8750FB000000060000000200000006000000040F34D108000000040C9A87040F8750FB0000000A00000002000000050F350D060CFD9BFF000000060000000600000003000000020F34D104000000020000000600000000135D450100000000050000F8135D81030CFD9BFB0F350D040CFD9C070F34D106000000030CFD9BFF0F350D080C9A87040000000700000007000000040000000700000007000000020F34D104000000020CFD9C070F34D106000000030CFD9BFF0F350D080C9A87080F8750FF00000008000000040000000500000004000000050F350D06000000060000000300000001135D4503000000010CFD9BFB0F350D040CFD9C070F34D106000000030CFD9BFF0F350D080C9A87040F8750FB0C9A870800000006000000050000000200000005000000040F34D10800000004000000050F350D060000000600000003000000020F34D1040000000200000006000000041207010800000004050000F6135D8101050000F8135D81030CFD9BFB0F350D0400000007000000020000000700000001135D4503000000010CFD9BFB0F350D040CFD9C070F34D1060000000300000005000000050000000200000005000000000000000700000003"
theorem small_3578783_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3578783_right_root small_3578783_right_fuel small_3578783_right_count small_3578783_right_encoded = true := by
  decide +kernel
theorem small_3578783_right_covered : CoveredBy scale carrier boxes small_3578783_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3578783_right_root small_3578783_right_fuel small_3578783_right_count small_3578783_right_encoded small_3578783_right_checked

theorem cover_3578783 : CoveredBy scale carrier boxes root_3578783 := by
  apply coveredBy_split_literal root_3578783 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.root_3578784 small_3578783_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.cover_3578784
  · exact small_3578783_right_covered
#print axioms cover_3578783

def root_3578778 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3578778_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3578778_right_fuel : Nat := 1
def small_3578778_right_count : Nat := 1
def small_3578778_right_encoded : String := "00000002"
theorem small_3578778_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3578778_right_root small_3578778_right_fuel small_3578778_right_count small_3578778_right_encoded = true := by
  decide +kernel
theorem small_3578778_right_covered : CoveredBy scale carrier boxes small_3578778_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3578778_right_root small_3578778_right_fuel small_3578778_right_count small_3578778_right_encoded small_3578778_right_checked

theorem cover_3578778 : CoveredBy scale carrier boxes root_3578778 := by
  apply coveredBy_split_literal root_3578778 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.root_3578783 small_3578778_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.cover_3578783
  · exact small_3578778_right_covered
#print axioms cover_3578778

def root_3578777 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3578777_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3578777_right_fuel : Nat := 22
def small_3578777_right_count : Nat := 85
def small_3578777_right_encoded : String := "120701040000000208A91307120701060000000308A912FF12073D08050000F6135D8101050000F8135D8103045489FB1386AD0404548A0713867106000000030CFD9BFF0F350D080C9A87080F8750FF078000F6128A7D01078000F8128A7D030000000600000001000000050000000000000005000000040000000500000004000000051386AD060CFD9BFF0F350D080C9A870800000006000000050000000400000005000000030000000213867104000000020000000500000001000000050000000000000005000000040000000512073D0608A912FF12073D08050000F6135D8101050000F8135D8103045489FB0000000600000006000000010000000600000000135D450100000000050000F8135D8103045489FB1386AD040CFD9C070F34D106000000030000000500000005000000020000000500000001000000050000000412070108000000040000000500000003"
theorem small_3578777_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3578777_right_root small_3578777_right_fuel small_3578777_right_count small_3578777_right_encoded = true := by
  decide +kernel
theorem small_3578777_right_covered : CoveredBy scale carrier boxes small_3578777_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3578777_right_root small_3578777_right_fuel small_3578777_right_count small_3578777_right_encoded small_3578777_right_checked

theorem cover_3578777 : CoveredBy scale carrier boxes root_3578777 := by
  apply coveredBy_split_literal root_3578777 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.root_3578778 small_3578777_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.cover_3578778
  · exact small_3578777_right_covered
#print axioms cover_3578777

def root_3578771 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3578771_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3578771_left_fuel : Nat := 1
def small_3578771_left_count : Nat := 1
def small_3578771_left_encoded : String := "00000004"
theorem small_3578771_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3578771_left_root small_3578771_left_fuel small_3578771_left_count small_3578771_left_encoded = true := by
  decide +kernel
theorem small_3578771_left_covered : CoveredBy scale carrier boxes small_3578771_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3578771_left_root small_3578771_left_fuel small_3578771_left_count small_3578771_left_encoded small_3578771_left_checked

theorem cover_3578771 : CoveredBy scale carrier boxes root_3578771 := by
  apply coveredBy_split_literal root_3578771 small_3578771_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.root_3578777 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3578771_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.cover_3578777
#print axioms cover_3578771

def root_3577305 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3577305 : CoveredBy scale carrier boxes root_3577305 := by
  apply coveredBy_split_literal root_3577305 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1354.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.root_3578771 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1354.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.cover_3578771
#print axioms cover_3577305

def root_3577300 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3577300_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3577300_right_fuel : Nat := 1
def small_3577300_right_count : Nat := 1
def small_3577300_right_encoded : String := "00000003"
theorem small_3577300_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3577300_right_root small_3577300_right_fuel small_3577300_right_count small_3577300_right_encoded = true := by
  decide +kernel
theorem small_3577300_right_covered : CoveredBy scale carrier boxes small_3577300_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3577300_right_root small_3577300_right_fuel small_3577300_right_count small_3577300_right_encoded small_3577300_right_checked

theorem cover_3577300 : CoveredBy scale carrier boxes root_3577300 := by
  apply coveredBy_split_literal root_3577300 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.root_3577305 small_3577300_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.cover_3577305
  · exact small_3577300_right_covered
#print axioms cover_3577300

def root_3577224 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3577224_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3577224_left_fuel : Nat := 11
def small_3577224_left_count : Nat := 35
def small_3577224_left_encoded : String := "1151E907000000030A0001081151E8FF08A912FB12073D04050000F600000006000000080000000212070104000000020000000600000004115224FF0000000408A912FB12073D0408A912FF12073D08050000F6135D8101050000F8000000060000000600000000000000070000000412070108000000040000000700000002120701040000000200000006"
theorem small_3577224_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3577224_left_root small_3577224_left_fuel small_3577224_left_count small_3577224_left_encoded = true := by
  decide +kernel
theorem small_3577224_left_covered : CoveredBy scale carrier boxes small_3577224_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3577224_left_root small_3577224_left_fuel small_3577224_left_count small_3577224_left_encoded small_3577224_left_checked

theorem cover_3577224 : CoveredBy scale carrier boxes root_3577224 := by
  apply coveredBy_split_literal root_3577224 small_3577224_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.root_3577300 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3577224_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.cover_3577300
#print axioms cover_3577224

def root_3577218 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3577218_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3577218_left_fuel : Nat := 1
def small_3577218_left_count : Nat := 1
def small_3577218_left_encoded : String := "00000002"
theorem small_3577218_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3577218_left_root small_3577218_left_fuel small_3577218_left_count small_3577218_left_encoded = true := by
  decide +kernel
theorem small_3577218_left_covered : CoveredBy scale carrier boxes small_3577218_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3577218_left_root small_3577218_left_fuel small_3577218_left_count small_3577218_left_encoded small_3577218_left_checked

theorem cover_3577218 : CoveredBy scale carrier boxes root_3577218 := by
  apply coveredBy_split_literal root_3577218 small_3577218_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.root_3577224 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3577218_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.cover_3577224
#print axioms cover_3577218

def root_3575348 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3575348 : CoveredBy scale carrier boxes root_3575348 := by
  apply coveredBy_split_literal root_3575348 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1353.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.root_3577218 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1353.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.cover_3577218
#print axioms cover_3575348

def root_3575342 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3575342_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3575342_left_fuel : Nat := 1
def small_3575342_left_count : Nat := 1
def small_3575342_left_encoded : String := "00000001"
theorem small_3575342_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3575342_left_root small_3575342_left_fuel small_3575342_left_count small_3575342_left_encoded = true := by
  decide +kernel
theorem small_3575342_left_covered : CoveredBy scale carrier boxes small_3575342_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3575342_left_root small_3575342_left_fuel small_3575342_left_count small_3575342_left_encoded small_3575342_left_checked

theorem cover_3575342 : CoveredBy scale carrier boxes root_3575342 := by
  apply coveredBy_split_literal root_3575342 small_3575342_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.root_3575348 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3575342_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.cover_3575348
#print axioms cover_3575342

def root_3568962 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3568962 : CoveredBy scale carrier boxes root_3568962 := by
  apply coveredBy_split_literal root_3568962 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0250.root_3568963 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.root_3575342 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0250.cover_3568963
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.cover_3575342
#print axioms cover_3568962

def root_3568956 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3568956_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3568956_left_fuel : Nat := 1
def small_3568956_left_count : Nat := 1
def small_3568956_left_encoded : String := "00000000"
theorem small_3568956_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3568956_left_root small_3568956_left_fuel small_3568956_left_count small_3568956_left_encoded = true := by
  decide +kernel
theorem small_3568956_left_covered : CoveredBy scale carrier boxes small_3568956_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3568956_left_root small_3568956_left_fuel small_3568956_left_count small_3568956_left_encoded small_3568956_left_checked

theorem cover_3568956 : CoveredBy scale carrier boxes root_3568956 := by
  apply coveredBy_split_literal root_3568956 small_3568956_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.root_3568962 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3568956_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.cover_3568962
#print axioms cover_3568956

def root_3541664 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3541664 : CoveredBy scale carrier boxes root_3541664 := by
  apply coveredBy_split_literal root_3541664 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3541665 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.root_3568956 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3541665
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.cover_3568956
#print axioms cover_3541664

def root_3597841 : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3597841 : CoveredBy scale carrier boxes root_3597841 := by
  apply coveredBy_split_literal root_3597841 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1360.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1361.root coord4 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1360.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1361.covered
#print axioms cover_3597841

def root_3597835 : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3597835_left_root : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (13841408)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3597835_left_fuel : Nat := 1
def small_3597835_left_count : Nat := 1
def small_3597835_left_encoded : String := "00000001"
theorem small_3597835_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3597835_left_root small_3597835_left_fuel small_3597835_left_count small_3597835_left_encoded = true := by
  decide +kernel
theorem small_3597835_left_covered : CoveredBy scale carrier boxes small_3597835_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3597835_left_root small_3597835_left_fuel small_3597835_left_count small_3597835_left_encoded small_3597835_left_checked

theorem cover_3597835 : CoveredBy scale carrier boxes root_3597835 := by
  apply coveredBy_split_literal root_3597835 small_3597835_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.root_3597841 coord1 true (13841408)
  · decide +kernel
  · decide +kernel
  · exact small_3597835_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.cover_3597841
#print axioms cover_3597835

def root_3597273 : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3597273_left_root : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(-10572672), (-9480640)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3597273_left_fuel : Nat := 19
def small_3597273_left_count : Nat := 269
def small_3597273_left_encoded : String := "10804D030DE7CA080E5FD909000000040640010412FF70FB0115234713F85906000000030AA6A27610EDAD010BF3E578000000051008ED03000000010D412888000000050EFA4D0900000005000000040000000010ED7101000000000BF3E578000000081008ED03000000010D412888000000080EFA4D0905A00104133134FB0000000800000002133170FB00000002008A922713FDF906000000030A5351B60000000900000008000000080000000413F895060AA6A27610EDAD010BF3E5781009290300000008000000011008ED03000000010D412888000000080EFA4D0905A00104133134FB0000000500000002133170FB00000002019FB46713EEF906000000030AF9F336000000050000000800000007000000040000000010ED71010000000000000008000000030000000212FFACFB000000020115234713F85906000000030AA6A27610EDAD010BF3E578000000091008ED03000000010D4128880EFA11090000000400000009000000090000000010ED7101000000000BF3E578100929030D4128880000000800000009000000011008ED03000000010D412888000000080EFA4D0906E0010412C7E4FB008A9227000000090000000800000002000000090000000413F895060AA6A27610EDAD010BF3E578100929030D412888000000080EFA4D090000000700000004000000011008ED03000000010D4128880EFA110900000004000000080EFA4D0906E0010412C7E4FB019FB46713EEF906000000030AF9F3360000000900000007000000070000000212C820FB00000002019FB4670000000900000007000000040000000010ED7101000000000BF3E578000000081008ED030000000100000008000000030E6015090640010412FF70FB0115234713F85906000000030DAED8890E962508000000040AA6A27610EDAD010BF3E578000000051008ED030000000105A00104000000050000000700000000000000070E9661080AA6A27610EDAD010BF3E578000000051008ED030000000105A0010400000005133170FB00000002008A92270000000513FE35060E0776C90000000500000007000000030000000010ED7101000000000BF3E5781009290300000007000000011008ED030000000105A00104133134FB008A9227000000050000000700000002133170FB00000002008A922713FDF906000000030E0776C90000000700000009000000070000000413F895060DAED889000000070E9661080AA6A27610EDAD0100000007000000000000000700000004000000030000000212FFACFB000000020115234713F85906000000030DAED8890E962508000000040AA6A27600000009000000070E9661080AA6A2760000000910ED7101000000000BF3E578000000071008ED030000000106E0010400000009000000090000000413F895060DAED889000000070E9661080AA6A27610EDAD0100000007000000000000000700000004000000030000000400000001"
theorem small_3597273_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3597273_left_root small_3597273_left_fuel small_3597273_left_count small_3597273_left_encoded = true := by
  decide +kernel
theorem small_3597273_left_covered : CoveredBy scale carrier boxes small_3597273_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3597273_left_root small_3597273_left_fuel small_3597273_left_count small_3597273_left_encoded small_3597273_left_checked

theorem cover_3597273 : CoveredBy scale carrier boxes root_3597273 := by
  apply coveredBy_split_literal root_3597273 small_3597273_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.root_3597835 coord1 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact small_3597273_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.cover_3597835
#print axioms cover_3597273

def root_3597267 : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3597267_left_root : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (13841408)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3597267_left_fuel : Nat := 1
def small_3597267_left_count : Nat := 1
def small_3597267_left_encoded : String := "00000000"
theorem small_3597267_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3597267_left_root small_3597267_left_fuel small_3597267_left_count small_3597267_left_encoded = true := by
  decide +kernel
theorem small_3597267_left_covered : CoveredBy scale carrier boxes small_3597267_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3597267_left_root small_3597267_left_fuel small_3597267_left_count small_3597267_left_encoded small_3597267_left_checked

theorem cover_3597267 : CoveredBy scale carrier boxes root_3597267 := by
  apply coveredBy_split_literal root_3597267 small_3597267_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.root_3597273 coord0 true (13841408)
  · decide +kernel
  · decide +kernel
  · exact small_3597267_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.cover_3597273
#print axioms cover_3597267

def root_3595817 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3595817 : CoveredBy scale carrier boxes root_3595817 := by
  apply coveredBy_split_literal root_3595817 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1359.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.root_3597267 coord0 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1359.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.cover_3597267
#print axioms cover_3595817

def root_3595811 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3595811_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3595811_left_fuel : Nat := 1
def small_3595811_left_count : Nat := 1
def small_3595811_left_encoded : String := "00000003"
theorem small_3595811_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3595811_left_root small_3595811_left_fuel small_3595811_left_count small_3595811_left_encoded = true := by
  decide +kernel
theorem small_3595811_left_covered : CoveredBy scale carrier boxes small_3595811_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3595811_left_root small_3595811_left_fuel small_3595811_left_count small_3595811_left_encoded small_3595811_left_checked

theorem cover_3595811 : CoveredBy scale carrier boxes root_3595811 := by
  apply coveredBy_split_literal root_3595811 small_3595811_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.root_3595817 coord3 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_3595811_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.cover_3595817
#print axioms cover_3595811

def root_3595810 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3595810_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3595810_right_fuel : Nat := 24
def small_3595810_right_count : Nat := 447
def small_3595810_right_encoded : String := "13E201060B4D43F610804D010B4D43F810804D030DE7CA080E5FD909000000040640010412FF70FB033F67C713BBF506000000030BF3E5761009290100000005000000001008ED01000000000BF3E5781009290300000005000000011008ED03000000010D4128880EFA110900000004000000080000000A0000000A0000000212FFACFB00000002033F67C713BBF506000000030BF3E576100929010BF3E578100929030D412888000000050000000A000000011008ED03000000010D4128880EFA11090000000406E0010412C7E4FB0000000A0000000212C820FB0000000202B4D6A7000000090000000A0000000A000000001008ED01000000000BF3E578100929030D4128880000000800000007000000011008ED03000000010D4128880EFA110900000004000000080EFA4D0906E0010400000007000000070000000413BC31060BF3E576100929010000000A000000001008ED010000000000000007000000030E601509064001040000000A12FFACFB00000002033F67C713BBF506000000030DAED889000000070E9661080BF3E5760000000A000000070000000400000007000000040000000110801103000000010DE7CA080E5FD909000000040640010412FF70FB033F67C713BBF506000000030BF3E5760000000A1008ED01000000000AA6A27810EDAD030D4128880EFA11090000000405A001040000000A133170FB000000020000000A0000000A0000000110ED7103000000010000000A0000000A0000000212FFACFB00000002033F67C713BBF506000000030BF3E576100929010AA6A27810EDAD030D4128880EFA11090000000406E001040000000A000000060000000A0000000110ED7103000000010D412888000000060000000A000000001008ED01000000000AA6A27810EDAD030D4128880EFA11090000000406E0010412C7E4FB02B4D6A7000000060000000600000002000000060EFA4D0906E0010412C7E4FB0000000A0000000212C820FB0000000202B4D6A713D0D106000000030BA094B61046050100000006000000000000000600000007000000040000000110ED7103000000010D412888000000060EFA4D0906E001040000000A000000060000000413BC31060BF3E576100929010000000A000000001008ED01000000000AA6A27810EDAD030D4128880EFA110900000004000000080000000A0000000110ED7103000000010000000A000000030E601509064001040000000A12FFACFB00000002033F67C713BBF506000000030DAED8890000000A0E9661080BF3E5760000000A1008ED01000000000AA6A2780000000A0000000A000000040000000A000000040000000010801101000000000B4D43F810804D030DE7CA080E5FD909000000040640010412FF70FB033F67C713BBF506000000030AA6A27610EDAD010BF3E578000000081008ED0300000001000000080000000000000008000000070000000212FFACFB00000002033F67C713BBF506000000030AA6A27610EDAD010BF3E578000000081008ED03000000010D41288800000008000000070000000000000008000000070E601509064001040000000700000007000000040000000110801103000000010DE7CA080E5FD909000000040640010412FF70FB033F67C713BBF506000000030AA6A27610EDAD010AA6A27810EDAD030D412888000000080EFA4D0905A001040000000A133170FB0000000202B4D6A713D0D106000000030AF9F336000000080000000700000007000000040000000110ED7103000000010D4128880EFA110900000004000000080000000A0000000010ED7101000000000AA6A2780000000810ED7103000000010000000813BC31060AA6A27610EDAD010AA6A278000000080000000A0000000000000008000000030000000212FFACFB00000002033F67C713BBF506000000030AA6A27610EDAD010AA6A27810EDAD030D412888000000080EFA4D0906E001040000000712C820FB0000000200000007000000040000000110ED7103000000010D412888000000060EFA4D0906E0010412C7E4FB02B4D6A700000006000000060000000200000006000000040000000010ED7101000000000AA6A2780000000810ED7103000000010D412888000000060000000513BC31060AA6A27610EDAD010AA6A27810EDAD03000000080000000110ED7103000000010D41288800000006000000050000000010ED71010000000000000008000000030E6015090640010412FF70FB033F67C713BBF506000000030DAED8890E96250800000004000000070E9661080AA6A2760000000A10ED7101000000000000000700000004000000070000000212FFACFB00000002033F67C713BBF506000000030DAED8890E96250800000004000000070E9661080AA6A27610EDAD010AA6A2780000000710ED71030000000106E001040000000700000005000000000000000700000004000000070000000400000003"
theorem small_3595810_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3595810_right_root small_3595810_right_fuel small_3595810_right_count small_3595810_right_encoded = true := by
  decide +kernel
theorem small_3595810_right_covered : CoveredBy scale carrier boxes small_3595810_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3595810_right_root small_3595810_right_fuel small_3595810_right_count small_3595810_right_encoded small_3595810_right_checked

theorem cover_3595810 : CoveredBy scale carrier boxes root_3595810 := by
  apply coveredBy_split_literal root_3595810 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.root_3595811 small_3595810_right_root coord3 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.cover_3595811
  · exact small_3595810_right_covered
#print axioms cover_3595810

def root_3595805 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3595805_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-15552512), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3595805_right_fuel : Nat := 1
def small_3595805_right_count : Nat := 1
def small_3595805_right_encoded : String := "00000002"
theorem small_3595805_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3595805_right_root small_3595805_right_fuel small_3595805_right_count small_3595805_right_encoded = true := by
  decide +kernel
theorem small_3595805_right_covered : CoveredBy scale carrier boxes small_3595805_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3595805_right_root small_3595805_right_fuel small_3595805_right_count small_3595805_right_encoded small_3595805_right_checked

theorem cover_3595805 : CoveredBy scale carrier boxes root_3595805 := by
  apply coveredBy_split_literal root_3595805 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.root_3595810 small_3595805_right_root coord2 true (-15552512)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.cover_3595810
  · exact small_3595805_right_covered
#print axioms cover_3595805

def root_3595804 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3595804 : CoveredBy scale carrier boxes root_3595804 := by
  apply coveredBy_split_literal root_3595804 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.root_3595805 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1362.root coord2 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.cover_3595805
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1362.covered
#print axioms cover_3595804

def root_3595799 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3595799_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3595799_right_fuel : Nat := 1
def small_3595799_right_count : Nat := 1
def small_3595799_right_encoded : String := "00000004"
theorem small_3595799_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3595799_right_root small_3595799_right_fuel small_3595799_right_count small_3595799_right_encoded = true := by
  decide +kernel
theorem small_3595799_right_covered : CoveredBy scale carrier boxes small_3595799_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3595799_right_root small_3595799_right_fuel small_3595799_right_count small_3595799_right_encoded small_3595799_right_checked

theorem cover_3595799 : CoveredBy scale carrier boxes root_3595799 := by
  apply coveredBy_split_literal root_3595799 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.root_3595804 small_3595799_right_root coord4 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.cover_3595804
  · exact small_3595799_right_covered
#print axioms cover_3595799

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252
