import TaoBundleAssembly0539
import TaoBundleAssembly0540
import TaoBundleAssembly0541
import TaoBundleChunkBatch0742
import TaoBundleChunkBatch0743
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542
def root_7887317 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7887317_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7887317_right_fuel : Nat := 20
def small_7887317_right_count : Nat := 105
def small_7887317_right_encoded : String := "1151E9090000000408A913011207010000000000050000F8135D80F900000001050000FA135D80FB0000000205000106135D44FD050000FE000000070000000700000003135D80FD00000003050000FE135D810904548A011386710000000000078000F8128A7CF900000001078000FA128A7CFB000000020780010600000005128A7CFD00000003000000050000000A128A40F9078000FA0000000700000006000000010000000700000004135D45090000000404548A011386710000000000078000F80000000A0000000700000007135D44FB050001060000000A135D80FD00000003050000FE135D810904548A01000000061386AD00078000F800000009000000060000000000000004135D45090000000404548A01000000060000000900000002135D44F9050000FA135D80FB000000020500010600000007135D80FD00000003050000FE0000000700000007135D44FB0500010600000006135D80FD00000003050000FE0000000600000006000000020000000112073D00050000F8135D80F900000001050000FA00000007135D44FB00000007000000020000000700000000"
theorem small_7887317_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7887317_right_root small_7887317_right_fuel small_7887317_right_count small_7887317_right_encoded = true := by
  decide +kernel
theorem small_7887317_right_covered : CoveredBy scale carrier boxes small_7887317_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7887317_right_root small_7887317_right_fuel small_7887317_right_count small_7887317_right_encoded small_7887317_right_checked

theorem cover_7887317 : CoveredBy scale carrier boxes root_7887317 := by
  apply coveredBy_split_literal root_7887317 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0541.root_7887318 small_7887317_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0541.cover_7887318
  · exact small_7887317_right_covered
#print axioms cover_7887317

def root_7887312 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7887312_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7887312_right_fuel : Nat := 1
def small_7887312_right_count : Nat := 1
def small_7887312_right_encoded : String := "00000003"
theorem small_7887312_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7887312_right_root small_7887312_right_fuel small_7887312_right_count small_7887312_right_encoded = true := by
  decide +kernel
theorem small_7887312_right_covered : CoveredBy scale carrier boxes small_7887312_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7887312_right_root small_7887312_right_fuel small_7887312_right_count small_7887312_right_encoded small_7887312_right_checked

theorem cover_7887312 : CoveredBy scale carrier boxes root_7887312 := by
  apply coveredBy_split_literal root_7887312 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.root_7887317 small_7887312_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.cover_7887317
  · exact small_7887312_right_covered
#print axioms cover_7887312

def root_7898963 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7898963 : CoveredBy scale carrier boxes root_7898963 := by
  apply coveredBy_split_literal root_7898963 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2968.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2969.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2968.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2969.covered
#print axioms cover_7898963

def root_7898957 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7898957_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7898957_left_fuel : Nat := 1
def small_7898957_left_count : Nat := 1
def small_7898957_left_encoded : String := "00000003"
theorem small_7898957_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7898957_left_root small_7898957_left_fuel small_7898957_left_count small_7898957_left_encoded = true := by
  decide +kernel
theorem small_7898957_left_covered : CoveredBy scale carrier boxes small_7898957_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7898957_left_root small_7898957_left_fuel small_7898957_left_count small_7898957_left_encoded small_7898957_left_checked

theorem cover_7898957 : CoveredBy scale carrier boxes root_7898957 := by
  apply coveredBy_split_literal root_7898957 small_7898957_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.root_7898963 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7898957_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.cover_7898963
#print axioms cover_7898957

def root_7887311 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7887311 : CoveredBy scale carrier boxes root_7887311 := by
  apply coveredBy_split_literal root_7887311 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.root_7887312 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.root_7898957 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.cover_7887312
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.cover_7898957
#print axioms cover_7887311

def root_7887306 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7887306_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7887306_right_fuel : Nat := 1
def small_7887306_right_count : Nat := 1
def small_7887306_right_encoded : String := "00000002"
theorem small_7887306_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7887306_right_root small_7887306_right_fuel small_7887306_right_count small_7887306_right_encoded = true := by
  decide +kernel
theorem small_7887306_right_covered : CoveredBy scale carrier boxes small_7887306_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7887306_right_root small_7887306_right_fuel small_7887306_right_count small_7887306_right_encoded small_7887306_right_checked

theorem cover_7887306 : CoveredBy scale carrier boxes root_7887306 := by
  apply coveredBy_split_literal root_7887306 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.root_7887311 small_7887306_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.cover_7887311
  · exact small_7887306_right_covered
#print axioms cover_7887306

def root_7877776 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7877776 : CoveredBy scale carrier boxes root_7877776 := by
  apply coveredBy_split_literal root_7877776 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.root_7877777 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.root_7887306 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.cover_7877777
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.cover_7887306
#print axioms cover_7877776

def root_7877771 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877771_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877771_right_fuel : Nat := 1
def small_7877771_right_count : Nat := 1
def small_7877771_right_encoded : String := "00000001"
theorem small_7877771_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877771_right_root small_7877771_right_fuel small_7877771_right_count small_7877771_right_encoded = true := by
  decide +kernel
theorem small_7877771_right_covered : CoveredBy scale carrier boxes small_7877771_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877771_right_root small_7877771_right_fuel small_7877771_right_count small_7877771_right_encoded small_7877771_right_checked

theorem cover_7877771 : CoveredBy scale carrier boxes root_7877771 := by
  apply coveredBy_split_literal root_7877771 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.root_7877776 small_7877771_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.cover_7877776
  · exact small_7877771_right_covered
#print axioms cover_7877771

def root_7871269 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7871269 : CoveredBy scale carrier boxes root_7871269 := by
  apply coveredBy_split_literal root_7871269 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7871270 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.root_7877771 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7871270
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.cover_7877771
#print axioms cover_7871269

def root_7871264 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7871264_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7871264_right_fuel : Nat := 1
def small_7871264_right_count : Nat := 1
def small_7871264_right_encoded : String := "00000000"
theorem small_7871264_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7871264_right_root small_7871264_right_fuel small_7871264_right_count small_7871264_right_encoded = true := by
  decide +kernel
theorem small_7871264_right_covered : CoveredBy scale carrier boxes small_7871264_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7871264_right_root small_7871264_right_fuel small_7871264_right_count small_7871264_right_encoded small_7871264_right_checked

theorem cover_7871264 : CoveredBy scale carrier boxes root_7871264 := by
  apply coveredBy_split_literal root_7871264 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.root_7871269 small_7871264_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.cover_7871269
  · exact small_7871264_right_covered
#print axioms cover_7871264

def root_7870896 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7870896_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7870896_left_fuel : Nat := 20
def small_7870896_left_count : Nat := 171
def small_7870896_left_encoded : String := "1151E901000000000A0000F8115224F9000000010A0000FA115224FB000000020A0001061151E8FD0A0000FE1152250908A912F912073CF80000000108A912FB12073CFA0000000208A91309120700FE05000100135D45010000000005000106000000070000000500000005000000040000000500000005120700F808A912FB12073CFA00000002000000050000000500000001000000040000000500000003115224FD000000030A0000FE1152250900000005000000041151E9090000000408A912F900000005120700F800000005000000011151E8FB0A0001061151E8FD0A0000FE1152250908A912F912073CF8000000010000000500000005000000041151E909000000040000000500000003115224FD000000030A0000FE000000051151E9090000000400000005000000021151E8F90A0000FA115224FB000000020A0001061151E8FD0A0000FE1152250908A912FB12073CFA000000020000000500000005000000041151E909000000040000000500000003115224FD000000030A0000FE000000051151E90900000004000000051151E8FB0A0001061151E8FD0A0000FE000000071151E909000000040000000500000003115224FD000000030A0000FE1152250908A912FD12073D0608A91309120700FE0500010000000005135D8101050000F800000005135D44F9050000FA00000005135D44FB000000070000000200000001000000000000000412073CFE000000040500010000000005135D8101050000F800000005000000070000000000000003120701060000000308A91309120700FE000000050000000400000005000000041151E9090000000408A912FD12073D060500010000000005135D8101050000F80000000500000007000000000000000312070106000000030500010000000005135D81010000000A000000000000000200000001"
theorem small_7870896_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7870896_left_root small_7870896_left_fuel small_7870896_left_count small_7870896_left_encoded = true := by
  decide +kernel
theorem small_7870896_left_covered : CoveredBy scale carrier boxes small_7870896_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7870896_left_root small_7870896_left_fuel small_7870896_left_count small_7870896_left_encoded small_7870896_left_checked

theorem cover_7870896 : CoveredBy scale carrier boxes root_7870896 := by
  apply coveredBy_split_literal root_7870896 small_7870896_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.root_7871264 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7870896_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.cover_7871264
#print axioms cover_7870896

def root_7862138 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7862138 : CoveredBy scale carrier boxes root_7862138 := by
  apply coveredBy_split_literal root_7862138 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7862139 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.root_7870896 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7862139
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.cover_7870896
#print axioms cover_7862138

def root_7906992 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7906992_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7906992_right_fuel : Nat := 27
def small_7906992_right_count : Nat := 457
def small_7906992_right_encoded : String := "1152250908A91301120701000000000008A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073D0608A9130912070108000000040000000612073D0804548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9C090F34D10800000004000000060F350D080C9A86F80F878CF9000000010C9A86FA000000060F8750FB00000006000000020F8750F90C9A86FA000000060F8750FB0C9A87060000000900000006000000020000000100000004000000030F34D106000000030CFD9C09000000060F350D080C9A86F8000000060F8750F90000000600000001000000040F34D0FA0CFD9BFD0F350D060CFD9C09000000060F350D080C9A86F8000000060F8750F9000000060000000100000004000000030F34D1060000000300000006000000020F34D0F80CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9C09000000060F350D080C9A86FA000000060F8750FB000000060000000200000004000000030F34D10600000003000000060F34D0FA0CFD9BFD000000060F34D106000000030000000600000002000000011386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFD000000060F34D10600000003000000060F34D0FA00000006000000020F34D0F80CFD9BFB000000060F34D0FA000000060000000200000001000000000000000400000003120701060000000308A9130912070108000000040000000612073D0804548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD1386AD060CFD9C09000000060F350D080C9A86F8000000060F8750F90000000600000001000000040000000313867106000000030CFD9C09000000060F350D080C9A86F8000000060F8750F90C9A86FA000000060F8750FB000000060000000200000001000000040F34D0FA045489FD00000006138671060000000300000006000000020F34D0F80CFD9BFB0F350CFA00000002045489FD000000061386710600000003000000060F34D0FA0000000600000002000000011386AD000CFD9BF90F350CF8000000010CFD9BFB000000060F34D0FA00000006000000020F34D0F800000006000000010000000000000004120700FA08A912FD12073D0608A9130912070108000000040000000612073D0804548A0113867100000000000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9BFD0F350D0600000006000000030F34D1060000000300000006138670FA0CFD9BFD000000060000000A000000020F34D0F8045489FB00000006138670FA0000000500000002000000011386AD000CFD9BF90F350CF800000001045489FB000000060000000A0F34D0F80000000600000001000000000000000400000003120701060000000308A9130912070108000000040000000612073D0804548A0113867100000000000CFD9BF90F350CF8000000010000000A0F34D0F8045489FB0000000600000005000000011386AD000000000A000000000000000400000002120700F808A912FB12073CFA0000000208A912FD12073D0608A9130912070108000000040000000612073D0804548A011386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D0600000006000000030F34D10600000003000000060F34D0FA0000000600000002138670F80CFD9BFB0F350CFA000000020CFD9BFD000000060F34D10600000003000000060F34D0FA0000000500000002000000011386AD00045489F91386ACF8000000010CFD9BFB000000060F34D0FA0000000600000002138670F80CFD9BFB000000060F34D0FA000000050000000200000001000000000000000400000003120701060000000308A9130912070108000000040000000612073D0804548A011386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA00000002045489FD000000061386710600000003000000060F34D0FA0000000600000002138670F80CFD9BFB0F350CFA00000002000000070F34D0FA0000000500000002000000011386AD00045489F900000006138670F800000006000000010000000000000004120700FA08A912FD12073D0608A913090000000612073D08000000050000000400000003120701060000000308A913090000000612073D0804548A01000000050000000600000004000000020000000112073D0008A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073D0608A913090000000612073D080CFD9C010F34D100000000000CFD9BF9000000060F34D0F80000000600000001000000060000000400000003120701060000000300000006120700FA08A912FD0000000612070106000000030000000600000002120700F808A912FB12073CFA0000000208A912FD00000006120701060000000300000006120700FA08A912FD0000000612070106000000030000000600000002000000010000000000000004"
theorem small_7906992_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7906992_right_root small_7906992_right_fuel small_7906992_right_count small_7906992_right_encoded = true := by
  decide +kernel
theorem small_7906992_right_covered : CoveredBy scale carrier boxes small_7906992_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7906992_right_root small_7906992_right_fuel small_7906992_right_count small_7906992_right_encoded small_7906992_right_checked

theorem cover_7906992 : CoveredBy scale carrier boxes root_7906992 := by
  apply coveredBy_split_literal root_7906992 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2970.root small_7906992_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2970.covered
  · exact small_7906992_right_covered
#print axioms cover_7906992

def root_7906986 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7906986_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7906986_left_fuel : Nat := 1
def small_7906986_left_count : Nat := 1
def small_7906986_left_encoded : String := "00000003"
theorem small_7906986_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7906986_left_root small_7906986_left_fuel small_7906986_left_count small_7906986_left_encoded = true := by
  decide +kernel
theorem small_7906986_left_covered : CoveredBy scale carrier boxes small_7906986_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7906986_left_root small_7906986_left_fuel small_7906986_left_count small_7906986_left_encoded small_7906986_left_checked

theorem cover_7906986 : CoveredBy scale carrier boxes root_7906986 := by
  apply coveredBy_split_literal root_7906986 small_7906986_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.root_7906992 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7906986_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.cover_7906992
#print axioms cover_7906986

def root_7905918 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7905918_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7905918_left_fuel : Nat := 31
def small_7905918_left_count : Nat := 495
def small_7905918_left_encoded : String := "1151E8FD0A0001081151E9090000000408A91301120701000000000008A912F912073CF80000000108A912FB12073CFA0000000205000106135D44FD0500010800000005135D810904548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020C9A86F80F878CF90000000100000005000000090000000500000005000000050000000400000003135D80FD0000000305000108135D45090000000404548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020C9A86F8000000050F8750F90C9A86FA000000050F8750FB0780010600000005128A7CFD00000003000000050000000200000001000000050000000500000005135D810904548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020C9A86F80F878CF9000000010C9A86FA0F878CFB00000002000000050F8750FB0780010600000009128A7CFD00000003078001080000000500000009000000020F8750F90C9A86FA0F878CFB0000000207800106128A40FD0000000700000003128A7CFD000000030780010800000005128A7D09022A458113E1C500000000000B4D43F8000000080000000700000006000000040F8750FB0780010600000009128A7CFD0000000307800108128A410900000004022A458113E1C5000000000000000009000000070000000900000002000000010F34D0FA00000005000000020F34D0F800000005000000011386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020C9A86F80F878CF900000001000000050F8750F90C9A86FA000000070F8750FB00000009000000020000000100000005000000050000000000000004120700FA0000000500000002120700F8000000050000000112073D0000000005000000001152250908A91301120701000000000008A912F912073CF80000000108A912FB12073CFA0000000208A91309120701080000000405000106000000080000000612073D0805000106135D44FD04548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002000000090F34D0FA0CFD9C09000000080F350D080000000800000004000000020F34D0F80CFD9BFB0F350CFA000000020CFD9C09000000090F350D0800000009000000040F34D0FA0000000600000002000000011386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA0000000200000009000000080F34D0F80CFD9BFB0F350CFA00000002000000090F34D0FA0000000500000002000000010000000000000003135D80FD0000000304548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C09000000090F350D080C9A86F80F878CF9000000010C9A86FA000000060F8750FB00000009000000020F8750F90C9A86FA0F878CFB000000020C9A870800000008000000060000000900000001000000040F34D0FA0CFD9C09000000060F350D080C9A86F8000000060F8750F90C9A870800000006000000060000000100000004000000020F34D0F80CFD9BFB0F350CFA000000020CFD9C09000000060F350D080C9A86FA000000060F8750FB0000000900000002000000040F34D0FA0000000600000002000000011386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C09000000060F350D080C9A86F80000000600000009000000040F34D0FA00000006000000020F34D0F80CFD9BFB0000000600000006000000010000000000000004120700FA08A9130912070108000000040000000612073D0805000106135D44FD04548A0113867100000000000CFD9BF90F350CF80000000100000008000000050000000500000003135D80FD0000000304548A0113867100000000000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9C09000000060F350D080000000600000004138670FA00000006000000020F34D0F800000005000000011386AD000CFD9BF90000000600000005000000000000000400000002120700F808A912FB12073CFA0000000208A9130912070108000000040000000612073D0805000106135D44FD04548A011386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020000000900000005000000050000000500000003135D80FD0000000304548A011386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9C09000000060F350D0800000006000000040F34D0FA0000000500000002138670F80CFD9BFB0000000600000005000000011386AD00045489F900000006000000050000000000000004120700FA08A913090000000600000005000000020000000112073D0008A912F912073CF80000000108A912FB12073CFA0000000208A9130912070108000000040000000612073D0805000106135D44FD0CFD9C010F34D100000000000CFD9BF90F350CF800000001000000080F34D0F800000005000000010F350D000CFD9BF900000006000000050000000000000003135D80FD000000030CFD9C010F34D100000000000CFD9BF9000000060F34D0F800000006000000010000000600000004120700FA08A913090000000612073D08000000050000000400000002120700F808A912FB12073CFA0000000208A913090000000612073D080000000500000004120700FA000000050000000200000001000000000000000400000003"
theorem small_7905918_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7905918_left_root small_7905918_left_fuel small_7905918_left_count small_7905918_left_encoded = true := by
  decide +kernel
theorem small_7905918_left_covered : CoveredBy scale carrier boxes small_7905918_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7905918_left_root small_7905918_left_fuel small_7905918_left_count small_7905918_left_encoded small_7905918_left_checked

theorem cover_7905918 : CoveredBy scale carrier boxes root_7905918 := by
  apply coveredBy_split_literal root_7905918 small_7905918_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.root_7906986 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7905918_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.cover_7906986
#print axioms cover_7905918

def root_7905912 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7905912_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7905912_left_fuel : Nat := 1
def small_7905912_left_count : Nat := 1
def small_7905912_left_encoded : String := "00000002"
theorem small_7905912_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7905912_left_root small_7905912_left_fuel small_7905912_left_count small_7905912_left_encoded = true := by
  decide +kernel
theorem small_7905912_left_covered : CoveredBy scale carrier boxes small_7905912_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7905912_left_root small_7905912_left_fuel small_7905912_left_count small_7905912_left_encoded small_7905912_left_checked

theorem cover_7905912 : CoveredBy scale carrier boxes root_7905912 := by
  apply coveredBy_split_literal root_7905912 small_7905912_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.root_7905918 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7905912_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.cover_7905918
#print axioms cover_7905912

def root_7912014 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7912014 : CoveredBy scale carrier boxes root_7912014 := by
  apply coveredBy_split_literal root_7912014 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2971.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2972.root coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2971.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2972.covered
#print axioms cover_7912014

def root_7912008 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7912008_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7912008_left_fuel : Nat := 1
def small_7912008_left_count : Nat := 1
def small_7912008_left_encoded : String := "00000002"
theorem small_7912008_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7912008_left_root small_7912008_left_fuel small_7912008_left_count small_7912008_left_encoded = true := by
  decide +kernel
theorem small_7912008_left_covered : CoveredBy scale carrier boxes small_7912008_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7912008_left_root small_7912008_left_fuel small_7912008_left_count small_7912008_left_encoded small_7912008_left_checked

theorem cover_7912008 : CoveredBy scale carrier boxes root_7912008 := by
  apply coveredBy_split_literal root_7912008 small_7912008_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.root_7912014 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7912008_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.cover_7912014
#print axioms cover_7912008

def root_7912007 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7912007_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7912007_right_fuel : Nat := 19
def small_7912007_right_count : Nat := 187
def small_7912007_right_encoded : String := "135D44FB05000108135D45090000000404548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFD0F350D060C9A86F80000000A0F8750F90000000A00000001000000030F34D106000000030C9A86F8000000080F8750F9028000FA13D7ECFB00000002028001080000000813D7ED09022A458113E1C500000000000AD3577D0000000700000007000000080000000413D7B0FB028001080000000813D7ED09022A458100000007000000080000000400000002000000010F34D0F80CFD9BFD0F350D060000000A0000000300000008000000011386AD000CFD9BF90F350CF8000000010CFD9BFD0F350D060C9A86F80F878CF9000000010C9A8706000000090F878CFD00000003028000FA00000009000000090F8750F90000000900000001000000030F34D10600000003000000080F34D0F8000000080000000100000000135D810904548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFD0F350D060C9A86F80F878CF9000000010C9A8706000000090F878CFD00000003028000FA00000009000000090F8750F90000000900000001000000030F34D106000000030C9A86F80F878CF900000001028000FA13D7ECFB00000002078001080000000700000007000000070F8750F9028000FA13D7ECFB0000000207800108128A410900000004022A458113E1C500000000000AD3577D0000000700000007000000090000000913D7B0FB0000000500000002000000010F34D0F80CFD9BFD0F350D060C9A8706000000090F878CFD0000000300000007000000030F34D1060000000300000007000000011386AD000CFD9BF90F350CF8000000010CFD9BFD0F350D060C9A86F80F878CF9000000010000000900000009000000030F34D106000000030C9A86F80F878CF900000001028000FA0000000900000009000000090F34D0F80CFD9BFD0F350D060C9A8706000000090F878CFD00000003028000FA0000000900000009000000030F34D106000000030000000800000001000000000000000400000002"
theorem small_7912007_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7912007_right_root small_7912007_right_fuel small_7912007_right_count small_7912007_right_encoded = true := by
  decide +kernel
theorem small_7912007_right_covered : CoveredBy scale carrier boxes small_7912007_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7912007_right_root small_7912007_right_fuel small_7912007_right_count small_7912007_right_encoded small_7912007_right_checked

theorem cover_7912007 : CoveredBy scale carrier boxes root_7912007 := by
  apply coveredBy_split_literal root_7912007 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.root_7912008 small_7912007_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.cover_7912008
  · exact small_7912007_right_covered
#print axioms cover_7912007

def root_7912002 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7912002_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7912002_right_fuel : Nat := 1
def small_7912002_right_count : Nat := 1
def small_7912002_right_encoded : String := "00000003"
theorem small_7912002_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7912002_right_root small_7912002_right_fuel small_7912002_right_count small_7912002_right_encoded = true := by
  decide +kernel
theorem small_7912002_right_covered : CoveredBy scale carrier boxes small_7912002_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7912002_right_root small_7912002_right_fuel small_7912002_right_count small_7912002_right_encoded small_7912002_right_checked

theorem cover_7912002 : CoveredBy scale carrier boxes root_7912002 := by
  apply coveredBy_split_literal root_7912002 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.root_7912007 small_7912002_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.cover_7912007
  · exact small_7912002_right_covered
#print axioms cover_7912002

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542
