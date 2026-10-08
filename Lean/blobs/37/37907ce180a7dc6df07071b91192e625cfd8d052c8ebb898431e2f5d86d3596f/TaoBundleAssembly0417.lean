import TaoBundleAssembly0416
import TaoBundleChunkBatch0566
import TaoBundleChunkBatch0567
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417
def root_5989614 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5989614_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5989614_right_fuel : Nat := 26
def small_5989614_right_count : Nat := 319
def small_5989614_right_encoded : String := "1151E903000000010A0000FA115224FB000000020A0001061151E9070000000300000005115225070A0000FE115224FF00000004000000051151E8FF08A912FB12073CFA0000000208A91307120701060000000305000100135D44F7050000F8135D8103050000FE000000050000000A00000001135D4503000000010000000A00000000135D80F700000000050000F8135D8103050000FE135D80FF000000040CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA000000050F8750FB0780010000000005128A7CF70000000000000005000000020000000500000005135D44FF0CFD9BFB0000000A0F34D0FA00000005000000020000000400000001135D450300000001050000FE135D80FF000000040CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA000000050F8750FB0000000A000000020000000500000005135D44FF0000000A0000000412073D060500010000000005135D80F7000000000000000500000003120700FA000000050000000200000004000000031151E8FB0A0001061151E9070000000300000005115225070A0000FE115224FF0000000408A91307120701060000000308A912FF12073CFE0000000405000100135D44F7050000F8135D8103050000FA000000050000000700000001135D450300000001050000FA000000050000000700000000135D80F700000000050000F8135D8103050000FA135D80FB0000000204548A0713867106000000030CFD9BFF0F350CFE000000040C9A86FE000000050F8750FF0780010000000005128A7CF70000000000000005000000040000000500000005135D44FB04548A07000000071386AD060CFD9BFF0000000700000005000000030000000200000001135D450300000001050000FA135D80FB0000000204548A0713867106000000030CFD9BFF000000070000000500000005135D44FB04548A07000000071386AD060CFD9BFF00000007000000050000000300000002120700FE000000050000000412073D0608A912FF12073CFE000000040500010000000005135D80F7000000000000000500000005000000031151E8FF08A91307120701060000000305000100135D44F7050000F8135D8103050000FA0000000A135D44FB000000090000000200000001135D450300000001050000FA0000000A0000000600000000135D80F700000000050000F8135D8103050000FA135D80FB00000002050000FE135D80FF0000000404548A07138671060000000307800100128A40F7078000F8000000090000000A00000000128A7CF700000000078000F8128A7D03078000FA0000000A0000000900000001128A410300000001078000FA0000000A000000090000000A0000000A135D44FB050000FE135D80FF0000000404548A07000000071386AD060780010000000006128A7CF700000000078000F8000000090000000600000003000000090000000200000001135D450300000001050000FA135D80FB00000002050000FE135D80FF0000000404548A0713867106000000030780010000000007128A7CF700000000028000F813D7ED03078000FA0000000A000000070000000113D7B10300000001078000FA0000000A000000070000000A0000000A135D44FB050000FE135D80FF0000000404548A070000000700000006000000090000000212073D06050001000000000A135D80F700000000050000F80000000A135D4503000000010000000A00000003000000040000000300000002"
theorem small_5989614_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5989614_right_root small_5989614_right_fuel small_5989614_right_count small_5989614_right_encoded = true := by
  decide +kernel
theorem small_5989614_right_covered : CoveredBy scale carrier boxes small_5989614_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5989614_right_root small_5989614_right_fuel small_5989614_right_count small_5989614_right_encoded small_5989614_right_checked

theorem cover_5989614 : CoveredBy scale carrier boxes root_5989614 := by
  apply coveredBy_split_literal root_5989614 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.root_5989615 small_5989614_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.cover_5989615
  · exact small_5989614_right_covered
#print axioms cover_5989614

def root_5989609 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5989609_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5989609_right_fuel : Nat := 1
def small_5989609_right_count : Nat := 1
def small_5989609_right_encoded : String := "00000000"
theorem small_5989609_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5989609_right_root small_5989609_right_fuel small_5989609_right_count small_5989609_right_encoded = true := by
  decide +kernel
theorem small_5989609_right_covered : CoveredBy scale carrier boxes small_5989609_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5989609_right_root small_5989609_right_fuel small_5989609_right_count small_5989609_right_encoded small_5989609_right_checked

theorem cover_5989609 : CoveredBy scale carrier boxes root_5989609 := by
  apply coveredBy_split_literal root_5989609 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.root_5989614 small_5989609_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.cover_5989614
  · exact small_5989609_right_covered
#print axioms cover_5989609

def root_6015824 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6015824_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6015824_left_fuel : Nat := 18
def small_6015824_left_count : Nat := 129
def small_6015824_left_encoded : String := "115224FF0000000408A912F712073D0008A91303120700F808A91307120701060000000308A912FF12073CFE00000004050000FA135D80FB000000020CFD9BF70F350D0004548A03138670F80000000800000001000000080000000000000008135D44FB00000008000000020000000812073D0608A912FF12073CFE00000004050000FA135D80FB000000020CFD9BF70F350D0004548A03138670F80CFD9C070F34D10600000003000000080000000500000001000000050000000000000005135D44FB0CFD9BF70F350D0004548A03138670F800000008000000010000000500000000000000080000000200000005000000030000000112073CF80000000108A91307120701060000000308A912FF12073CFE00000004050000FA135D80FB000000020CFD9BF70F350D000CFD9C030F34D0F800000008000000010F350CF80000000104548A0713867106000000030000000800000005000000000F34D1000000000000000008135D44FB0CFD9BF70F350D000CFD9C030F34D0F80000000800000001000000080000000000000008000000020000000812073D0608A912FF12073CFE00000004050000FA00000005135D44FB0CFD9BF70F350D000CFD9C030F34D0F8000000050000000100000005000000000000000500000002000000050000000300000000120701000000000008A91303120700F8000000080000000100000008"
theorem small_6015824_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6015824_left_root small_6015824_left_fuel small_6015824_left_count small_6015824_left_encoded = true := by
  decide +kernel
theorem small_6015824_left_covered : CoveredBy scale carrier boxes small_6015824_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6015824_left_root small_6015824_left_fuel small_6015824_left_count small_6015824_left_encoded small_6015824_left_checked

theorem cover_6015824 : CoveredBy scale carrier boxes root_6015824 := by
  apply coveredBy_split_literal root_6015824 small_6015824_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2263.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6015824_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2263.covered
#print axioms cover_6015824

def root_6015819 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6015819_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6015819_right_fuel : Nat := 1
def small_6015819_right_count : Nat := 1
def small_6015819_right_encoded : String := "00000003"
theorem small_6015819_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6015819_right_root small_6015819_right_fuel small_6015819_right_count small_6015819_right_encoded = true := by
  decide +kernel
theorem small_6015819_right_covered : CoveredBy scale carrier boxes small_6015819_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6015819_right_root small_6015819_right_fuel small_6015819_right_count small_6015819_right_encoded small_6015819_right_checked

theorem cover_6015819 : CoveredBy scale carrier boxes root_6015819 := by
  apply coveredBy_split_literal root_6015819 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.root_6015824 small_6015819_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.cover_6015824
  · exact small_6015819_right_covered
#print axioms cover_6015819

def root_6015725 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6015725_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6015725_left_fuel : Nat := 13
def small_6015725_left_count : Nat := 45
def small_6015725_left_encoded : String := "1151E907000000030A0000FE115224FF00000004000000051151E8FF08A912F712073D0008A91303120700F8050000FA00000005135D44FB0500010600000005135D8107050000FE000000050000000A00000003000000020000000112073CF800000001050000FA00000005135D44FB0500010600000005135D8107050000FE000000050000000A000000030000000200000000120701000000000008A91303120700F800000005000000010000000500000004"
theorem small_6015725_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6015725_left_root small_6015725_left_fuel small_6015725_left_count small_6015725_left_encoded = true := by
  decide +kernel
theorem small_6015725_left_covered : CoveredBy scale carrier boxes small_6015725_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6015725_left_root small_6015725_left_fuel small_6015725_left_count small_6015725_left_encoded small_6015725_left_checked

theorem cover_6015725 : CoveredBy scale carrier boxes root_6015725 := by
  apply coveredBy_split_literal root_6015725 small_6015725_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.root_6015819 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6015725_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.cover_6015819
#print axioms cover_6015725

def root_6015720 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6015720_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6015720_right_fuel : Nat := 1
def small_6015720_right_count : Nat := 1
def small_6015720_right_encoded : String := "00000002"
theorem small_6015720_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6015720_right_root small_6015720_right_fuel small_6015720_right_count small_6015720_right_encoded = true := by
  decide +kernel
theorem small_6015720_right_covered : CoveredBy scale carrier boxes small_6015720_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6015720_right_root small_6015720_right_fuel small_6015720_right_count small_6015720_right_encoded small_6015720_right_checked

theorem cover_6015720 : CoveredBy scale carrier boxes root_6015720 := by
  apply coveredBy_split_literal root_6015720 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.root_6015725 small_6015720_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.cover_6015725
  · exact small_6015720_right_covered
#print axioms cover_6015720

def root_6013632 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6013632 : CoveredBy scale carrier boxes root_6013632 := by
  apply coveredBy_split_literal root_6013632 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2262.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.root_6015720 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2262.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.cover_6015720
#print axioms cover_6013632

def root_6013627 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6013627_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6013627_right_fuel : Nat := 1
def small_6013627_right_count : Nat := 1
def small_6013627_right_encoded : String := "00000001"
theorem small_6013627_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6013627_right_root small_6013627_right_fuel small_6013627_right_count small_6013627_right_encoded = true := by
  decide +kernel
theorem small_6013627_right_covered : CoveredBy scale carrier boxes small_6013627_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6013627_right_root small_6013627_right_fuel small_6013627_right_count small_6013627_right_encoded small_6013627_right_checked

theorem cover_6013627 : CoveredBy scale carrier boxes root_6013627 := by
  apply coveredBy_split_literal root_6013627 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.root_6013632 small_6013627_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.cover_6013632
  · exact small_6013627_right_covered
#print axioms cover_6013627

def root_6020168 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6020168_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6020168_left_fuel : Nat := 29
def small_6020168_left_count : Nat := 229
def small_6020168_left_encoded : String := "115224FF0000000408A912F712073D0008A91307120701060000000308A912FF12073CFE00000004050000F8135D8103050000FA135D80FB000000020CFD9BF70F350D0004548A0713867106000000030CFD9BFF0F350CFE000000040C9A87000F8750F70C9A86FE000000050F8750FF078000F800000005128A410300000001000000050000000400000000000000080000000500000005000000000F34D1000000000000000008135D44FB0CFD9BF70F350D0004548A071386710600000003000000080000000800000000000000080000000200000001135D450300000001050000FA135D80FB000000020CFD9BF70F350D0004548A0713867106000000030CFD9BFF0F350CFE000000040C9A87000F8750F70C9A86FE0F878CFF00000004000000050F8750FF028000F813D7ED03078000FA00000005000000070000000113D7B10300000001078000FA000000050000000700000004000000000F878CF7000000000C9A86FE000000080F8750FF028000F80000000813D7B10300000001078000FA128A7CFB00000002022A458713E1C506000000030DE7CA00000000050000000800000005128A40FB022A458713E1C50600000003000000080000000800000002000000040F34D0FE00000005000000041386AD060CFD9BFF0F350CFE000000040C9A8700000000050F878CF700000000000000050000000500000003000000000F34D1000000000000000008135D44FB0CFD9BF70F350D0004548A0713867106000000030CFD9BFF0F350CFE000000040C9A8700000000070F878CF700000000000000080F34D0FE00000007000000041386AD060CFD9BFF0F350CFE000000040C9A87000F8750F70C9A86FE000000070000000600000000000000080F34D0FE000000050000000400000003000000000F34D100000000000000000800000002120700FE000000080000000412073D0608A912FF12073CFE00000004050000F8135D8103050000FA00000005135D44FB0CFD9BF70F350D000000000500000000000000050000000200000001135D450300000001050000FA00000005135D44FB0CFD9BF70F350D000CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A8700000000050F878CF700000000000000080000000500000005000000000F34D100000000000CFD9C070F34D10600000003000000080000000800000002120700FE00000005000000040000000300000000120701000000000008A9130712070106000000030000000800000008"
theorem small_6020168_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6020168_left_root small_6020168_left_fuel small_6020168_left_count small_6020168_left_encoded = true := by
  decide +kernel
theorem small_6020168_left_covered : CoveredBy scale carrier boxes small_6020168_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6020168_left_root small_6020168_left_fuel small_6020168_left_count small_6020168_left_encoded small_6020168_left_checked

theorem cover_6020168 : CoveredBy scale carrier boxes root_6020168 := by
  apply coveredBy_split_literal root_6020168 small_6020168_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2264.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6020168_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2264.covered
#print axioms cover_6020168

def root_6020163 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6020163_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6020163_right_fuel : Nat := 1
def small_6020163_right_count : Nat := 1
def small_6020163_right_encoded : String := "00000003"
theorem small_6020163_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6020163_right_root small_6020163_right_fuel small_6020163_right_count small_6020163_right_encoded = true := by
  decide +kernel
theorem small_6020163_right_covered : CoveredBy scale carrier boxes small_6020163_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6020163_right_root small_6020163_right_fuel small_6020163_right_count small_6020163_right_encoded small_6020163_right_checked

theorem cover_6020163 : CoveredBy scale carrier boxes root_6020163 := by
  apply coveredBy_split_literal root_6020163 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.root_6020168 small_6020163_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.cover_6020168
  · exact small_6020163_right_covered
#print axioms cover_6020163

def root_6020123 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6020123_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6020123_left_fuel : Nat := 8
def small_6020123_left_count : Nat := 19
def small_6020123_left_encoded : String := "1151E907000000030A0000FE000000051151E8FF08A912F712073D00050000F800000005135D4503000000010000000A000000001207010000000000050000F8000000050000000700000004"
theorem small_6020123_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6020123_left_root small_6020123_left_fuel small_6020123_left_count small_6020123_left_encoded = true := by
  decide +kernel
theorem small_6020123_left_covered : CoveredBy scale carrier boxes small_6020123_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6020123_left_root small_6020123_left_fuel small_6020123_left_count small_6020123_left_encoded small_6020123_left_checked

theorem cover_6020123 : CoveredBy scale carrier boxes root_6020123 := by
  apply coveredBy_split_literal root_6020123 small_6020123_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.root_6020163 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6020123_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.cover_6020163
#print axioms cover_6020123

def root_6020118 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6020118_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6020118_right_fuel : Nat := 1
def small_6020118_right_count : Nat := 1
def small_6020118_right_encoded : String := "00000002"
theorem small_6020118_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6020118_right_root small_6020118_right_fuel small_6020118_right_count small_6020118_right_encoded = true := by
  decide +kernel
theorem small_6020118_right_covered : CoveredBy scale carrier boxes small_6020118_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6020118_right_root small_6020118_right_fuel small_6020118_right_count small_6020118_right_encoded small_6020118_right_checked

theorem cover_6020118 : CoveredBy scale carrier boxes root_6020118 := by
  apply coveredBy_split_literal root_6020118 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.root_6020123 small_6020118_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.cover_6020123
  · exact small_6020118_right_covered
#print axioms cover_6020118

def root_6019068 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6019068_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6019068_left_fuel : Nat := 34
def small_6019068_left_count : Nat := 489
def small_6019068_left_encoded : String := "115224FB000000020A0001061151E907000000030A0000FE115224FF0000000408A912F700000005120701000000000008A912FB00000005000000071151E8FF0000000500000004115225070A0000FE115224FF0000000408A912F712073D0008A912FB12073CFA0000000208A91307120701060000000308A912FF12073CFE00000004050000F800000005135D4503000000010CFD9BF70F350D0000000005000000000000000500000005000000050000000500000000120701000000000008A912FB12073CFA0000000208A913070000000512073D060000000500000003120700FA08A913070000000512073D060000000500000003000000021151E8FF08A912F712073D0008A912FB12073CFA0000000208A913071207010600000003050000F8135D8103050000FE135D80FF000000040CFD9BF70F350D000CFD9BFB0F350CFA0000000204548A0713867106000000030C9A87000F8750F70C9A86FA000000050F8750FB078000F800000005128A4103000000010000000500000002000000000F878CF7000000000C9A86FA000000050F8750FB078000F800000005128A41030000000100000005000000020000000500000005000000000F34D100000000000CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA000000050F8750FB078000F800000005128A41030000000100000006000000020000000500000005135D44FF0CFD9BF70F350D000CFD9BFB0F350CFA0000000204548A0713867106000000030C9A87000F8750F70C9A86FA0000000A0F8750FB0000000900000002000000000F878CF7000000000C9A86FA0F878CFB00000002078000F800000005128A410300000001000000060F8750FB00000009000000021386AD060C9A87000000000A0F878CF7000000000000000A000000030F34D0FA0000000500000002000000000F34D100000000000CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA000000060F8750FB00000006000000021386AD060C9A86FA000000070F8750FB078000F8128A7D0300000007000000010000000700000002000000030F34D0FA00000005000000020000000400000001135D450300000001050000FE135D80FF000000040CFD9BF70F350D000CFD9BFB0F350CFA0000000204548A0713867106000000030C9A87000F8750F70C9A86FA0F878CFB00000002000000050F8750FB028000F813D7ED03078000FE000000050000000A0000000113D7B10300000001078000FE000000050000000A00000002000000000F878CF7000000000C9A86FA0F878CFB00000002000000050F8750FB028000F813D7ED03078000FE00000005128A40FF022A45870000000900000005000000040000000113D7B10300000001078000FE128A7CFF00000004022A458713E1C506000000030DE7CA00000000050E6014F7000000000000000500000005128A40FF022A458713E1C506000000030DE7CA000E5FD8F70000000A000000000E6014F700000000000000060000000A00000004000000021386AD060C9A8700000000050F878CF70000000000000005000000030F34D0FA0000000500000002000000000F34D100000000000CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA0F878CFB00000002000000060F8750FB028000F813D7ED03078000FE00000005000000070000000113D7B10300000001078000FE128A7CFF000000040AD3577710D13D0000000005000000000000000500000007000000021386AD060C9A86FA000000050F8750FB028000F80000000513D7B10300000001078000FE000000050000000700000002000000030F34D0FA0000000500000002135D44FF0CFD9BF70F350D000CFD9BFB0F350CFA0000000204548A0713867106000000030C9A87000F8750F70000000A000000000F878CF7000000000C9A86FA0F878CFB000000020000000A0F8750FB028000F8000000090000000A000000020000000A0F34D0FA04548A0713867106000000030C9A870000000005000000060000000500000002000000000F34D100000000000CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA000000070F8750FB00000007000000021386AD0600000007000000030F34D0FA00000007000000020000000412073D06050000F8135D8103050000FE00000005135D44FF0CFD9BF70F350D000000000500000000000000050000000400000001135D450300000001050000FE00000005135D44FF0CFD9BF70F350D000000000A000000000F34D100000000000CFD9BFB0F350CFA000000020CFD9C0700000007000000070F34D0FA00000005000000020000000400000003120700FA08A913071207010600000003050000F800000005135D45030000000100000005000000050000000200000000120701000000000008A912FB12073CFA0000000208A913071207010600000003050000F8135D8103050000FE135D80FF0000000400000005135D44FF045489F71386AD000CFD9BFB000000070000000600000000000000060000000400000001135D450300000001050000FE135D80FF00000004045489F71386AD000CFD9BFB000000070000000700000000000000070000000712073D06050000F800000005135D450300000001050000FE000000050000000700000003120700FA00000005000000020000000400000003"
theorem small_6019068_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6019068_left_root small_6019068_left_fuel small_6019068_left_count small_6019068_left_encoded = true := by
  decide +kernel
theorem small_6019068_left_covered : CoveredBy scale carrier boxes small_6019068_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6019068_left_root small_6019068_left_fuel small_6019068_left_count small_6019068_left_encoded small_6019068_left_checked

theorem cover_6019068 : CoveredBy scale carrier boxes root_6019068 := by
  apply coveredBy_split_literal root_6019068 small_6019068_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.root_6020118 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6019068_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.cover_6020118
#print axioms cover_6019068

def root_6019062 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6019062_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6019062_left_fuel : Nat := 1
def small_6019062_left_count : Nat := 1
def small_6019062_left_encoded : String := "00000001"
theorem small_6019062_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6019062_left_root small_6019062_left_fuel small_6019062_left_count small_6019062_left_encoded = true := by
  decide +kernel
theorem small_6019062_left_covered : CoveredBy scale carrier boxes small_6019062_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6019062_left_root small_6019062_left_fuel small_6019062_left_count small_6019062_left_encoded small_6019062_left_checked

theorem cover_6019062 : CoveredBy scale carrier boxes root_6019062 := by
  apply coveredBy_split_literal root_6019062 small_6019062_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.root_6019068 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6019062_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.cover_6019068
#print axioms cover_6019062

def root_6013626 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6013626 : CoveredBy scale carrier boxes root_6013626 := by
  apply coveredBy_split_literal root_6013626 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.root_6013627 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.root_6019062 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.cover_6013627
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.cover_6019062
#print axioms cover_6013626

def root_6013620 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6013620_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6013620_left_fuel : Nat := 1
def small_6013620_left_count : Nat := 1
def small_6013620_left_encoded : String := "00000000"
theorem small_6013620_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6013620_left_root small_6013620_left_fuel small_6013620_left_count small_6013620_left_encoded = true := by
  decide +kernel
theorem small_6013620_left_covered : CoveredBy scale carrier boxes small_6013620_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6013620_left_root small_6013620_left_fuel small_6013620_left_count small_6013620_left_encoded small_6013620_left_checked

theorem cover_6013620 : CoveredBy scale carrier boxes root_6013620 := by
  apply coveredBy_split_literal root_6013620 small_6013620_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.root_6013626 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6013620_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.cover_6013626
#print axioms cover_6013620

def root_5989608 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5989608 : CoveredBy scale carrier boxes root_5989608 := by
  apply coveredBy_split_literal root_5989608 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.root_5989609 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.root_6013620 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.cover_5989609
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.cover_6013620
#print axioms cover_5989608

def root_5989607 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5989607 : CoveredBy scale carrier boxes root_5989607 := by
  apply coveredBy_split_literal root_5989607 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.root_5989608 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2265.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.cover_5989608
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2265.covered
#print axioms cover_5989607

def root_6025019 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6025019 : CoveredBy scale carrier boxes root_6025019 := by
  apply coveredBy_split_literal root_6025019 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2266.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2267.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2266.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2267.covered
#print axioms cover_6025019

def root_6025014 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6025014_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6025014_right_fuel : Nat := 1
def small_6025014_right_count : Nat := 1
def small_6025014_right_encoded : String := "00000001"
theorem small_6025014_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6025014_right_root small_6025014_right_fuel small_6025014_right_count small_6025014_right_encoded = true := by
  decide +kernel
theorem small_6025014_right_covered : CoveredBy scale carrier boxes small_6025014_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6025014_right_root small_6025014_right_fuel small_6025014_right_count small_6025014_right_encoded small_6025014_right_checked

theorem cover_6025014 : CoveredBy scale carrier boxes root_6025014 := by
  apply coveredBy_split_literal root_6025014 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.root_6025019 small_6025014_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.cover_6025019
  · exact small_6025014_right_covered
#print axioms cover_6025014

def root_6025013 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6025013 : CoveredBy scale carrier boxes root_6025013 := by
  apply coveredBy_split_literal root_6025013 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.root_6025014 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2268.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.cover_6025014
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2268.covered
#print axioms cover_6025013

def root_6025007 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6025007_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6025007_left_fuel : Nat := 1
def small_6025007_left_count : Nat := 1
def small_6025007_left_encoded : String := "00000000"
theorem small_6025007_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6025007_left_root small_6025007_left_fuel small_6025007_left_count small_6025007_left_encoded = true := by
  decide +kernel
theorem small_6025007_left_covered : CoveredBy scale carrier boxes small_6025007_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6025007_left_root small_6025007_left_fuel small_6025007_left_count small_6025007_left_encoded small_6025007_left_checked

theorem cover_6025007 : CoveredBy scale carrier boxes root_6025007 := by
  apply coveredBy_split_literal root_6025007 small_6025007_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.root_6025013 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6025007_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.cover_6025013
#print axioms cover_6025007

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417
