import TaoBundleAssembly0587
import TaoBundleAssembly0588
import TaoBundleChunkBatch0805
import TaoBundleChunkBatch0806
import TaoBundleChunkBatch0807
import TaoBundleChunkBatch0808
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589
def root_8597312 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8597312_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8597312_right_fuel : Nat := 20
def small_8597312_right_count : Nat := 265
def small_8597312_right_encoded : String := "1151E903000000010A0000FA115224FB000000020A0001061151E907000000030A0001081151E9090000000408A91301120701000000000008A912FB12073CFA0000000200000006120700FA050000F8135D810305000106135D45070000000300000006135D81070500010800000006000000060000000300000001000000060000000212073D0008A912FB0000000900000005000000001152250908A91301120701000000000008A912FB0000000A120700FA08A9130900000009000000090000000212073D0008A912FB12073CFA0000000208A9130912070108000000040000000A00000009120700FA00000009000000020000000000000004115225070A0001081151E9090000000408A91301120701000000000008A912FB12073CFA0000000208A9130712070106000000030000000812073D06050000F800000008135D45030000000105000108000000060000000900000003120700FA08A913071207010600000003050000F8000000070000000812073D06050000F8135D810305000108135D45090000000400000008135D810904548A0100000007000000090000000400000001135D45030000000105000108135D45090000000404548A010000000600000008135D810904548A011386710000000000000000070000000500000004000000030000000212073D0008A912FB12073CFA0000000208A913070000000912073D06050000F8000000090000000900000003120700FA08A913071207010600000003050000F8135D810305000108135D4509000000040000000800000009000000010000000912073D06050000F8135D810305000108135D4509000000040CFD9C010F34D1000000000000000008000000050000000900000001135D45030000000105000108135D45090000000400000005000000050000000300000002000000001152250908A91301120701000000000008A912FB12073CFA0000000208A913070000000912073D0608A91309000000090000000900000003120700FA08A91307120701060000000308A91309000000070000000912073D0608A9130912070108000000040000000912073D08050000F8135D810304548A011386710000000000000000090000000900000001135D4503000000010000000900000004000000030000000212073D0008A912FB00000009120700FA08A913070000000912073D060000000900000003000000020000000000000004000000031151E8FB0A0001061151E907000000030A0001081151E90900000004000000061152250908A913010000000A12073D0008A9130912070108000000040000000A12073D08050000F80000000900000006000000040000000000000004115225070A0001081151E90900000004000000091152250908A913010000000912073D0008A913071207010600000003000000090000000900000000000000040000000300000002"
theorem small_8597312_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8597312_right_root small_8597312_right_fuel small_8597312_right_count small_8597312_right_encoded = true := by
  decide +kernel
theorem small_8597312_right_covered : CoveredBy scale carrier boxes small_8597312_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8597312_right_root small_8597312_right_fuel small_8597312_right_count small_8597312_right_encoded small_8597312_right_checked

theorem cover_8597312 : CoveredBy scale carrier boxes root_8597312 := by
  apply coveredBy_split_literal root_8597312 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0588.root_8597313 small_8597312_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0588.cover_8597313
  · exact small_8597312_right_covered
#print axioms cover_8597312

def root_8597307 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8597307_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8597307_right_fuel : Nat := 1
def small_8597307_right_count : Nat := 1
def small_8597307_right_encoded : String := "00000000"
theorem small_8597307_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8597307_right_root small_8597307_right_fuel small_8597307_right_count small_8597307_right_encoded = true := by
  decide +kernel
theorem small_8597307_right_covered : CoveredBy scale carrier boxes small_8597307_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8597307_right_root small_8597307_right_fuel small_8597307_right_count small_8597307_right_encoded small_8597307_right_checked

theorem cover_8597307 : CoveredBy scale carrier boxes root_8597307 := by
  apply coveredBy_split_literal root_8597307 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8597312 small_8597307_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8597312
  · exact small_8597307_right_covered
#print axioms cover_8597307

def root_8595019 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8595019 : CoveredBy scale carrier boxes root_8595019 := by
  apply coveredBy_split_literal root_8595019 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3218.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8597307 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3218.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8597307
#print axioms cover_8595019

def root_8592703 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8592703 : CoveredBy scale carrier boxes root_8592703 := by
  apply coveredBy_split_literal root_8592703 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3217.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8595019 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3217.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8595019
#print axioms cover_8592703

def root_8588495 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8588495 : CoveredBy scale carrier boxes root_8588495 := by
  apply coveredBy_split_literal root_8588495 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0588.root_8588496 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8592703 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0588.cover_8588496
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8592703
#print axioms cover_8588495

def root_8569677 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8569677 : CoveredBy scale carrier boxes root_8569677 := by
  apply coveredBy_split_literal root_8569677 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0588.root_8569678 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8588495 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0588.cover_8569678
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8588495
#print axioms cover_8569677

def root_8529359 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8529359 : CoveredBy scale carrier boxes root_8529359 := by
  apply coveredBy_split_literal root_8529359 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8529360 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8569677 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8529360
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8569677
#print axioms cover_8529359

def root_8604934 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8604934_left_root : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8604934_left_fuel : Nat := 23
def small_8604934_left_count : Nat := 293
def small_8604934_left_encoded : String := "0A0001001151E901000000000A0000F8115225030A0000FA115225050A0000FC115224FD000000030A0001081151E8FF08A91303120700F800000006000000010000000600000004115224FF0000000408A91303120700F808A913050000000512073CFA0000000208A912FD00000005120700FC08A912FF00000005120701080000000405000100135D4501000000000000000600000005000000030000000112073CF80000000108A91305120700FA08A912FD00000005120700FC08A912FF0000000500000008000000030000000212073CFA0000000208A912FD00000006120700FC08A912FF00000006120701080000000405000100135D4501000000000CFD9C030F34D0F800000006000000010000000600000006000000031151E8FD0000000500000003000000021151E905000000020A0000FC115224FD000000030A0001081151E8FF0000000600000004115224FF0000000408A91303120700F808A912FD00000005120700FC08A912FF00000005120701080000000405000100135D4501000000000000000A00000006000000030000000112073CF80000000108A912FD00000006120700FC08A912FF00000006120701080000000405000100135D450100000000050000FA000000060000000A00000006000000031151E8FD0A00010800000006115224FF000000040000000A00000003000000011151E903000000010A0000FA115225050A0000FC115224FD000000030A0001081151E8FF0000000600000004115224FF0000000408A91305120700FA08A912FD00000005000000080000000212073CFA0000000208A912FD00000006120700FC08A912FF00000006120701080000000405000100135D450100000000050000F8000000060000000800000006000000031151E8FD0A00010800000006115224FF0000000408A91305000000060000000600000003000000021151E905000000020A0000FC115224FD000000030A00010800000006115224FF0000000408A912FD00000006120700FC00000006000000031151E8FD0000000600000003115225010A0000F8115225030A0000FA115225050A0000FC115224FD000000030A0001081151E8FF0000000500000004115224FF0000000408A91301120701000000000008A91303000000050000000612073D0008A91303120700F8000000050000000112073CF80000000108A91305120700FA000000050000000200000006000000001151E8FD0A00010800000006115224FF0000000408A9130112070100000000000000000612073D0008A9130300000005000000060000000000000003000000021151E905000000020A0000FC115224FD000000030A00010800000006115224FF0000000408A9130112070100000000000000000612073D0008A91303120700F8000000060000000100000006000000001151E8FD0000000600000003000000011151E903000000010A0000FA115225050A0000FC115224FD000000030A00010800000006115224FF0000000408A9130112070100000000000000000612073D0008A91305120700FA000000060000000200000006000000001151E8FD0000000600000003000000021151E905000000020000000600000000"
theorem small_8604934_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8604934_left_root small_8604934_left_fuel small_8604934_left_count small_8604934_left_encoded = true := by
  decide +kernel
theorem small_8604934_left_covered : CoveredBy scale carrier boxes small_8604934_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8604934_left_root small_8604934_left_fuel small_8604934_left_count small_8604934_left_encoded small_8604934_left_checked

theorem cover_8604934 : CoveredBy scale carrier boxes root_8604934 := by
  apply coveredBy_split_literal root_8604934 small_8604934_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3222.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact small_8604934_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3222.covered
#print axioms cover_8604934

def root_8603108 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8603108 : CoveredBy scale carrier boxes root_8603108 := by
  apply coveredBy_split_literal root_8603108 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3221.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8604934 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3221.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8604934
#print axioms cover_8603108

def root_8610583 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8610583 : CoveredBy scale carrier boxes root_8610583 := by
  apply coveredBy_split_literal root_8610583 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3224.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3225.root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3224.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3225.covered
#print axioms cover_8610583

def root_8610578 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610578_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610578_right_fuel : Nat := 1
def small_8610578_right_count : Nat := 1
def small_8610578_right_encoded : String := "00000001"
theorem small_8610578_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610578_right_root small_8610578_right_fuel small_8610578_right_count small_8610578_right_encoded = true := by
  decide +kernel
theorem small_8610578_right_covered : CoveredBy scale carrier boxes small_8610578_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610578_right_root small_8610578_right_fuel small_8610578_right_count small_8610578_right_encoded small_8610578_right_checked

theorem cover_8610578 : CoveredBy scale carrier boxes root_8610578 := by
  apply coveredBy_split_literal root_8610578 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8610583 small_8610578_right_root coord1 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8610583
  · exact small_8610578_right_covered
#print axioms cover_8610578

def root_8616661 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8616661 : CoveredBy scale carrier boxes root_8616661 := by
  apply coveredBy_split_literal root_8616661 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3226.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3227.root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3226.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3227.covered
#print axioms cover_8616661

def root_8616655 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8616655_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8616655_left_fuel : Nat := 1
def small_8616655_left_count : Nat := 1
def small_8616655_left_encoded : String := "00000001"
theorem small_8616655_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8616655_left_root small_8616655_left_fuel small_8616655_left_count small_8616655_left_encoded = true := by
  decide +kernel
theorem small_8616655_left_covered : CoveredBy scale carrier boxes small_8616655_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8616655_left_root small_8616655_left_fuel small_8616655_left_count small_8616655_left_encoded small_8616655_left_checked

theorem cover_8616655 : CoveredBy scale carrier boxes root_8616655 := by
  apply coveredBy_split_literal root_8616655 small_8616655_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8616661 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_8616655_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8616661
#print axioms cover_8616655

def root_8610577 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8610577 : CoveredBy scale carrier boxes root_8610577 := by
  apply coveredBy_split_literal root_8610577 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8610578 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8616655 coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8610578
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8616655
#print axioms cover_8610577

def root_8610571 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610571_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610571_left_fuel : Nat := 1
def small_8610571_left_count : Nat := 1
def small_8610571_left_encoded : String := "00000000"
theorem small_8610571_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610571_left_root small_8610571_left_fuel small_8610571_left_count small_8610571_left_encoded = true := by
  decide +kernel
theorem small_8610571_left_covered : CoveredBy scale carrier boxes small_8610571_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610571_left_root small_8610571_left_fuel small_8610571_left_count small_8610571_left_encoded small_8610571_left_checked

theorem cover_8610571 : CoveredBy scale carrier boxes root_8610571 := by
  apply coveredBy_split_literal root_8610571 small_8610571_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8610577 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_8610571_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8610577
#print axioms cover_8610571

def root_8610570 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8610570 : CoveredBy scale carrier boxes root_8610570 := by
  apply coveredBy_split_literal root_8610570 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8610571 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3228.root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8610571
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3228.covered
#print axioms cover_8610570

def root_8610564 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610564_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610564_left_fuel : Nat := 1
def small_8610564_left_count : Nat := 1
def small_8610564_left_encoded : String := "00000004"
theorem small_8610564_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610564_left_root small_8610564_left_fuel small_8610564_left_count small_8610564_left_encoded = true := by
  decide +kernel
theorem small_8610564_left_covered : CoveredBy scale carrier boxes small_8610564_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610564_left_root small_8610564_left_fuel small_8610564_left_count small_8610564_left_encoded small_8610564_left_checked

theorem cover_8610564 : CoveredBy scale carrier boxes root_8610564 := by
  apply coveredBy_split_literal root_8610564 small_8610564_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8610570 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8610564_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8610570
#print axioms cover_8610564

def root_8610526 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610526_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610526_left_fuel : Nat := 8
def small_8610526_left_count : Nat := 17
def small_8610526_left_encoded : String := "120700FE04548A011386710000000000000000061386AD0004548A03138670F804548A05138670FA00000006000000020000000600000001000000060000000000000004"
theorem small_8610526_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610526_left_root small_8610526_left_fuel small_8610526_left_count small_8610526_left_encoded = true := by
  decide +kernel
theorem small_8610526_left_covered : CoveredBy scale carrier boxes small_8610526_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610526_left_root small_8610526_left_fuel small_8610526_left_count small_8610526_left_encoded small_8610526_left_checked

theorem cover_8610526 : CoveredBy scale carrier boxes root_8610526 := by
  apply coveredBy_split_literal root_8610526 small_8610526_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8610564 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8610526_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8610564
#print axioms cover_8610526

def root_8610520 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610520_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610520_left_fuel : Nat := 1
def small_8610520_left_count : Nat := 1
def small_8610520_left_encoded : String := "00000003"
theorem small_8610520_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610520_left_root small_8610520_left_fuel small_8610520_left_count small_8610520_left_encoded = true := by
  decide +kernel
theorem small_8610520_left_covered : CoveredBy scale carrier boxes small_8610520_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610520_left_root small_8610520_left_fuel small_8610520_left_count small_8610520_left_encoded small_8610520_left_checked

theorem cover_8610520 : CoveredBy scale carrier boxes root_8610520 := by
  apply coveredBy_split_literal root_8610520 small_8610520_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8610526 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8610520_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8610526
#print axioms cover_8610520

def root_8610474 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610474_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610474_left_fuel : Nat := 10
def small_8610474_left_count : Nat := 21
def small_8610474_left_encoded : String := "120700FC08A913090000000612073CFE0000000404548A011386710000000000000000061386AD0004548A03138670F804548A05138670FA00000006000000020000000600000001000000060000000000000003"
theorem small_8610474_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610474_left_root small_8610474_left_fuel small_8610474_left_count small_8610474_left_encoded = true := by
  decide +kernel
theorem small_8610474_left_covered : CoveredBy scale carrier boxes small_8610474_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610474_left_root small_8610474_left_fuel small_8610474_left_count small_8610474_left_encoded small_8610474_left_checked

theorem cover_8610474 : CoveredBy scale carrier boxes root_8610474 := by
  apply coveredBy_split_literal root_8610474 small_8610474_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8610520 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8610474_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8610520
#print axioms cover_8610474

def root_8610469 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610469_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610469_right_fuel : Nat := 1
def small_8610469_right_count : Nat := 1
def small_8610469_right_encoded : String := "00000002"
theorem small_8610469_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610469_right_root small_8610469_right_fuel small_8610469_right_count small_8610469_right_encoded = true := by
  decide +kernel
theorem small_8610469_right_covered : CoveredBy scale carrier boxes small_8610469_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610469_right_root small_8610469_right_fuel small_8610469_right_count small_8610469_right_encoded small_8610469_right_checked

theorem cover_8610469 : CoveredBy scale carrier boxes root_8610469 := by
  apply coveredBy_split_literal root_8610469 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8610474 small_8610469_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8610474
  · exact small_8610469_right_covered
#print axioms cover_8610469

def root_8610468 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610468_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610468_right_fuel : Nat := 33
def small_8610468_right_count : Nat := 363
def small_8610468_right_encoded : String := "12073CFA0000000208A91307120700FC000000060000000312073CFC0000000308A91309120700FE000000060000000412073CFE0000000404548A01138671000000000004548A03138670F80CFD9C050F34D0FA0CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D0900000006000000040F87510900000004022A458113E1C50000000000022A458313E1C4F80AD3578510D100FA000000080000000200000006000000010000000613E20100022A458313E1C4F80AD3578510D100FA000000070000000200000006000000010000000600000000000000030F875107000000030C9A86FE0F878D09022A458113E1C50000000000022A45830000000A000000060000000A000000040F87510900000004022A458113E1C50000000000022A458313E1C4F80AD3578510D100FA0B4D43FC10804D070B4D43FE0000000A00000007000000030000000A0000000210D13CFA000000020000000A0000000113E200F8000000010AD3578510D100FA0B4D43FC10804D070B4D43FE00000006000000080000000310801107000000030B4D43FE0000000A10801109000000040115234113F8590000000000033F67C300000008000000080000000A0000000210D13CFA000000020B4D43FC000000060000000A13E20100022A458313E1C4F80AD3578510D100FA0000000A000000020000000A0000000113E200F8000000010AD3578510D100FA0000000A000000020000000A00000000000000020F350CFA000000020CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FA0F878D050C9A86FC0F878D0700000006000000030F875107000000030C9A86FE0000000A0F87510900000004022A458113E1C50000000000022A45830000000A000000060000000A000000020F875105000000020C9A86FC000000060000000A000000011386ACF8000000010CFD9C050F34D0FA0CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FC0F878D0700000006000000030F875107000000030C9A86FE0F878D0900000006000000040F87510900000004022A458113E1C50000000000067ECE8312EA58F80AD3578510D100FA000000060000000200000006000000010000000613E20100067ECE8312EA58F80AD3578510D100FA0000000A0000000200000005000000010000000500000000000000020F350CFA000000020CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FA00000006000000061386AD0004548A03138670F80CFD9C050F34D0FA0CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D090000000A000000040F87510900000004067ECE8112EA590000000000022A458313E1C4F80AD3578510D100FA0000000700000002000000070000000113E200F8000000010AD3578510D100FA00000006000000020000000512EA95000000000A00000000000000030F875107000000030000000A000000020F350CFA000000020CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090000000A0F350CFE000000040C9A86FA0000000A0F875105000000020000000A000000011386ACF8000000010CFD9C050F34D0FA0CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FC0F878D070C9A86FE000000060F87510900000004067ECE8112EA5900000000000000000600000005000000030F875107000000030C9A86FE0000000A0F8751090000000400000005000000020F350CFA000000020CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FA0F878D050C9A86FC000000050000000A000000020F875105000000020000000500000000"
theorem small_8610468_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610468_right_root small_8610468_right_fuel small_8610468_right_count small_8610468_right_encoded = true := by
  decide +kernel
theorem small_8610468_right_covered : CoveredBy scale carrier boxes small_8610468_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610468_right_root small_8610468_right_fuel small_8610468_right_count small_8610468_right_encoded small_8610468_right_checked

theorem cover_8610468 : CoveredBy scale carrier boxes root_8610468 := by
  apply coveredBy_split_literal root_8610468 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8610469 small_8610468_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8610469
  · exact small_8610468_right_covered
#print axioms cover_8610468

def root_8610463 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610463_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610463_right_fuel : Nat := 1
def small_8610463_right_count : Nat := 1
def small_8610463_right_encoded : String := "00000001"
theorem small_8610463_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610463_right_root small_8610463_right_fuel small_8610463_right_count small_8610463_right_encoded = true := by
  decide +kernel
theorem small_8610463_right_covered : CoveredBy scale carrier boxes small_8610463_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610463_right_root small_8610463_right_fuel small_8610463_right_count small_8610463_right_encoded small_8610463_right_checked

theorem cover_8610463 : CoveredBy scale carrier boxes root_8610463 := by
  apply coveredBy_split_literal root_8610463 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8610468 small_8610463_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8610468
  · exact small_8610463_right_covered
#print axioms cover_8610463

def root_8610462 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610462_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610462_right_fuel : Nat := 36
def small_8610462_right_count : Nat := 421
def small_8610462_right_encoded : String := "12073CF80000000108A91305120700FA08A91307120700FC000000060000000312073CFC0000000308A91309120700FE000000060000000412073CFE0000000404548A0113867100000000000CFD9C030F34D0F804548A05138670FA0CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D0900000006000000040F87510900000004022A458113E1C500000000000AD3578310D100F800000009000000010000000600000009000000030F875107000000030C9A86FE0F878D09022A458113E1C500000000000AD3578310D100F8022A45850000000700000006000000010000000613E201000AD3578310D100F8022A45850000000800000006000000010000000600000000000000040F87510900000004022A458113E1C500000000000AD3578310D100F8022A458513E1C4FA0B4D43FC10804D07000000090000000310801107000000030B4D43FE00000007000000090000000213E200FA000000020B4D43FC10804D070B4D43FE00000006000000090000000310801107000000030B4D43FE10804D09000000060000000410801109000000040115234113F859000000000009BE3543117740F8000000070000000100000007000000090000000110D13CF800000001022A45850000000913E200FA000000020B4D43FC000000060000000713E201000AD3578310D100F8022A45850000000900000009000000010000000900000000000000021386ACFA000000020CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FC0F878D0700000006000000030F875107000000030C9A86FE0F878D0900000006000000040F87510900000004022A458113E1C500000000000AD3578310D100F8067ECE8512EA58FA000000060000000200000006000000010000000613E201000AD3578310D100F8067ECE850000000900000005000000010000000500000000000000010F350CF80000000104548A05138670FA0CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86F80F878D030C9A86FC0F878D0700000006000000030F875107000000030C9A86FE0F878D0900000006000000040F87510900000004022A458113E1C50000000000022A4585000000090000000600000009000000010F875103000000010C9A86FC000000060F875107000000030C9A86FE0000000600000009000000021386ACFA000000020CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86F800000006000000061386AD000CFD9C030F34D0F804548A05138670FA0CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D09000000090000000400000009000000030F875107000000030C9A86FE0F878D09067ECE8112EA5900000000000AD3578310D100F8022A45850000000800000006000000010000000912EA95000000000900000000000000040F8751090000000400000009000000021386ACFA000000020CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FC0F878D070C9A86FE0000000600000009000000030F875107000000030C9A86FE0F878D09067ECE8112EA5900000000000000000600000005000000040F8751090000000400000005000000010F350CF80000000104548A05138670FA0CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86F8000000090F8751030000000100000009000000021386ACFA000000020CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86F80F878D030C9A86FC000000050F8751070000000300000005000000010F8751030000000100000005000000000000000212073CFA0000000208A913070000000612073CFC0000000308A913090000000612073CFE0000000404548A0113867100000000000CFD9C030F34D0F80CFD9C050F34D0FA000000060000000200000006000000010F350CF8000000010CFD9C050F34D0FA0000000600000002000000061386AD000CFD9C030F34D0F80CFD9C050F34D0FA0CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FC000000050F87510700000003000000050000000200000006000000010F350CF8000000010CFD9C050F34D0FA00000006000000020000000600000000"
theorem small_8610462_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610462_right_root small_8610462_right_fuel small_8610462_right_count small_8610462_right_encoded = true := by
  decide +kernel
theorem small_8610462_right_covered : CoveredBy scale carrier boxes small_8610462_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610462_right_root small_8610462_right_fuel small_8610462_right_count small_8610462_right_encoded small_8610462_right_checked

theorem cover_8610462 : CoveredBy scale carrier boxes root_8610462 := by
  apply coveredBy_split_literal root_8610462 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8610463 small_8610462_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8610463
  · exact small_8610462_right_covered
#print axioms cover_8610462

def root_8610456 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610456_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610456_left_fuel : Nat := 1
def small_8610456_left_count : Nat := 1
def small_8610456_left_encoded : String := "00000000"
theorem small_8610456_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610456_left_root small_8610456_left_fuel small_8610456_left_count small_8610456_left_encoded = true := by
  decide +kernel
theorem small_8610456_left_covered : CoveredBy scale carrier boxes small_8610456_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610456_left_root small_8610456_left_fuel small_8610456_left_count small_8610456_left_encoded small_8610456_left_checked

theorem cover_8610456 : CoveredBy scale carrier boxes root_8610456 := by
  apply coveredBy_split_literal root_8610456 small_8610456_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8610462 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8610456_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8610462
#print axioms cover_8610456

def root_8610455 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8610455 : CoveredBy scale carrier boxes root_8610455 := by
  apply coveredBy_split_literal root_8610455 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8610456 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3229.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8610456
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3229.covered
#print axioms cover_8610455

def root_8610450 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610450_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610450_right_fuel : Nat := 1
def small_8610450_right_count : Nat := 1
def small_8610450_right_encoded : String := "00000004"
theorem small_8610450_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610450_right_root small_8610450_right_fuel small_8610450_right_count small_8610450_right_encoded = true := by
  decide +kernel
theorem small_8610450_right_covered : CoveredBy scale carrier boxes small_8610450_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610450_right_root small_8610450_right_fuel small_8610450_right_count small_8610450_right_encoded small_8610450_right_checked

theorem cover_8610450 : CoveredBy scale carrier boxes root_8610450 := by
  apply coveredBy_split_literal root_8610450 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8610455 small_8610450_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8610455
  · exact small_8610450_right_covered
#print axioms cover_8610450

def root_8626994 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8626994_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8626994_left_fuel : Nat := 7
def small_8626994_left_count : Nat := 13
def small_8626994_left_encoded : String := "120700FC050000FE135D810904548A01138671000000000004548A03000000080000000900000009000000040000000900000003"
theorem small_8626994_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8626994_left_root small_8626994_left_fuel small_8626994_left_count small_8626994_left_encoded = true := by
  decide +kernel
theorem small_8626994_left_covered : CoveredBy scale carrier boxes small_8626994_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8626994_left_root small_8626994_left_fuel small_8626994_left_count small_8626994_left_encoded small_8626994_left_checked

theorem cover_8626994 : CoveredBy scale carrier boxes root_8626994 := by
  apply coveredBy_split_literal root_8626994 small_8626994_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3230.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8626994_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3230.covered
#print axioms cover_8626994

def root_8626989 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8626989_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8626989_right_fuel : Nat := 1
def small_8626989_right_count : Nat := 1
def small_8626989_right_encoded : String := "00000002"
theorem small_8626989_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8626989_right_root small_8626989_right_fuel small_8626989_right_count small_8626989_right_encoded = true := by
  decide +kernel
theorem small_8626989_right_covered : CoveredBy scale carrier boxes small_8626989_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8626989_right_root small_8626989_right_fuel small_8626989_right_count small_8626989_right_encoded small_8626989_right_checked

theorem cover_8626989 : CoveredBy scale carrier boxes root_8626989 := by
  apply coveredBy_split_literal root_8626989 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8626994 small_8626989_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8626994
  · exact small_8626989_right_covered
#print axioms cover_8626989

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589
