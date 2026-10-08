import TaoBundleAssembly0211
import TaoBundleChunkBatch0823
import TaoBundleChunkBatch0825
import TaoBundleChunkBatch0826
import TaoBundleChunkBatch0827
import TaoBundleChunkBatch0828
import TaoBundleChunkBatch0829
import TaoBundleChunkBatch0830
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212
def root_8804681 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804681_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804681_left_fuel : Nat := 17
def small_8804681_left_count : Nat := 89
def small_8804681_left_encoded : String := "1151E8FB0A0001061151E8FD0A0000FE1152250908A913010000000912073D0008A91309120700FE000000050000000412073CFE00000004050000F8000000050000000900000000000000041151E9090000000408A9130112070100000000000000000912073D00050000F8135D810305000104135D44FB0000000900000002135D80FB0000000205000106135D44FD050000FE00000005135D4509000000040000000700000003135D80FD00000003050000FE00000008135D4509000000040CFD9C01000000090000000700000001135D4503000000010500010400000007135D80FB000000020500010600000007000000070000000000000003115224FD000000030A0000FE1152250908A9130112070100000000000000000800000009000000041151E9090000000408A9130112070100000000000000000812073D0008A912FD12073D06050000F8000000080000000900000003000000080000000000000002"
theorem small_8804681_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8804681_left_root small_8804681_left_fuel small_8804681_left_count small_8804681_left_encoded = true := by
  decide +kernel
theorem small_8804681_left_covered : CoveredBy scale carrier boxes small_8804681_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8804681_left_root small_8804681_left_fuel small_8804681_left_count small_8804681_left_encoded small_8804681_left_checked

theorem cover_8804681 : CoveredBy scale carrier boxes root_8804681 := by
  apply coveredBy_split_literal root_8804681 small_8804681_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8804871 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8804681_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8804871
#print axioms cover_8804681

def root_8804675 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804675_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804675_left_fuel : Nat := 1
def small_8804675_left_count : Nat := 1
def small_8804675_left_encoded : String := "00000001"
theorem small_8804675_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8804675_left_root small_8804675_left_fuel small_8804675_left_count small_8804675_left_encoded = true := by
  decide +kernel
theorem small_8804675_left_covered : CoveredBy scale carrier boxes small_8804675_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8804675_left_root small_8804675_left_fuel small_8804675_left_count small_8804675_left_encoded small_8804675_left_checked

theorem cover_8804675 : CoveredBy scale carrier boxes root_8804675 := by
  apply coveredBy_split_literal root_8804675 small_8804675_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8804681 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8804675_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8804681
#print axioms cover_8804675

def root_8791595 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8791595 : CoveredBy scale carrier boxes root_8791595 := by
  apply coveredBy_split_literal root_8791595 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8791596 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8804675 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8791596
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8804675
#print axioms cover_8791595

def root_8791590 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8791590_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8791590_right_fuel : Nat := 1
def small_8791590_right_count : Nat := 1
def small_8791590_right_encoded : String := "00000000"
theorem small_8791590_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8791590_right_root small_8791590_right_fuel small_8791590_right_count small_8791590_right_encoded = true := by
  decide +kernel
theorem small_8791590_right_covered : CoveredBy scale carrier boxes small_8791590_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8791590_right_root small_8791590_right_fuel small_8791590_right_count small_8791590_right_encoded small_8791590_right_checked

theorem cover_8791590 : CoveredBy scale carrier boxes root_8791590 := by
  apply coveredBy_split_literal root_8791590 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8791595 small_8791590_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8791595
  · exact small_8791590_right_covered
#print axioms cover_8791590

def root_8788722 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8788722 : CoveredBy scale carrier boxes root_8788722 := by
  apply coveredBy_split_literal root_8788722 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3290.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8791590 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3290.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8791590
#print axioms cover_8788722

def root_8786594 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8786594 : CoveredBy scale carrier boxes root_8786594 := by
  apply coveredBy_split_literal root_8786594 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3289.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8788722 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3289.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8788722
#print axioms cover_8786594

def root_8820372 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8820372 : CoveredBy scale carrier boxes root_8820372 := by
  apply coveredBy_split_literal root_8820372 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3299.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3300.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3299.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3300.covered
#print axioms cover_8820372

def root_8828450 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8828450_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8828450_left_fuel : Nat := 24
def small_8828450_left_count : Nat := 263
def small_8828450_left_encoded : String := "1151E9090000000408A91303120700F808A912FD12073D0605000100135D4501000000000500010400000005135D80FB000000020500010800000005135D810904548A03000000051386ACF8000000010CFD9BFD000000050F34D106000000030000000800000004135D810105000104135D44FB0500010800000005135D810904548A0300000005000000080000000400000002135D80FB000000020500010800000008135D810904548A03138670F80CFD9BFD0F350D06000000050000000300000008000000011386ACF8000000010CFD9BFD0F350D060C9A8706000000050000000800000003000000080000000400000000000000031207010600000003000000080000000112073CF80000000108A912FD12073D0605000100135D45010000000005000104135D44FB05000108135D4509000000040CFD9C030F34D0F8000000050000000100000008135D81090CFD9C030F34D0F80CFD9BFD000000050F34D1060000000300000008000000010F350CF8000000010CFD9BFD0F350D060C9A86F80F878D03000000050000000100000007000000030F34D10600000003000000080000000400000002135D80FB0000000205000108135D4509000000040CFD9C030F34D0F800000008000000010F350CF8000000010CFD9BFD0F350D060C9A86F800000008000000070000000300000008135D81090CFD9C030F34D0F80CFD9BFD0F350D060C9A8706000000050F878CFD00000003028001000000000500000008000000030F34D1060000000300000008000000010F350CF8000000010CFD9BFD0F350D060C9A86F80F878D030C9A87060F8750FD02800100000000050000000A000000030000000A000000010F875103000000010000000A000000030F34D106000000030000000A00000004135D810105000104135D44FB0500010800000008135D81090CFD9C030F34D0F800000008000000010F350CF8000000010CFD9BFD0F350D060C9A86F8000000080F875103000000010C9A87060F8750FD00000007000000030000000800000003000000080000000400000002135D80FB0000000205000108135D4509000000040CFD9C030F34D0F8000000080000000100000008135D81090CFD9C030F34D0F80CFD9BFD0F350D060C9A87060F8750FD07800100000000050000000800000003000000080000000300000008000000010F350CF8000000010CFD9BFD0F350D060C9A86F80F878D030C9A87060F8750FD07800100128A410100000000078001040000000A128A7CFB000000020000000A000000080000000300000008000000010F875103000000010C9A87060F8750FD078001000000000A128A7D010780010400000008128A7CFB000000020000000A00000000000000030F878CFD0000000300000008000000030F34D1060000000300000008000000040000000000000003120701060000000300000008"
theorem small_8828450_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8828450_left_root small_8828450_left_fuel small_8828450_left_count small_8828450_left_encoded = true := by
  decide +kernel
theorem small_8828450_left_covered : CoveredBy scale carrier boxes small_8828450_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8828450_left_root small_8828450_left_fuel small_8828450_left_count small_8828450_left_encoded small_8828450_left_checked

theorem cover_8828450 : CoveredBy scale carrier boxes root_8828450 := by
  apply coveredBy_split_literal root_8828450 small_8828450_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3302.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8828450_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3302.covered
#print axioms cover_8828450

def root_8828444 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8828444_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8828444_left_fuel : Nat := 1
def small_8828444_left_count : Nat := 1
def small_8828444_left_encoded : String := "00000003"
theorem small_8828444_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8828444_left_root small_8828444_left_fuel small_8828444_left_count small_8828444_left_encoded = true := by
  decide +kernel
theorem small_8828444_left_covered : CoveredBy scale carrier boxes small_8828444_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8828444_left_root small_8828444_left_fuel small_8828444_left_count small_8828444_left_encoded small_8828444_left_checked

theorem cover_8828444 : CoveredBy scale carrier boxes root_8828444 := by
  apply coveredBy_split_literal root_8828444 small_8828444_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8828450 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8828444_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8828450
#print axioms cover_8828444

def root_8826420 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8826420 : CoveredBy scale carrier boxes root_8826420 := by
  apply coveredBy_split_literal root_8826420 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3301.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8828444 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3301.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8828444
#print axioms cover_8826420

def root_8826415 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8826415_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8826415_right_fuel : Nat := 1
def small_8826415_right_count : Nat := 1
def small_8826415_right_encoded : String := "00000002"
theorem small_8826415_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8826415_right_root small_8826415_right_fuel small_8826415_right_count small_8826415_right_encoded = true := by
  decide +kernel
theorem small_8826415_right_covered : CoveredBy scale carrier boxes small_8826415_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8826415_right_root small_8826415_right_fuel small_8826415_right_count small_8826415_right_encoded small_8826415_right_checked

theorem cover_8826415 : CoveredBy scale carrier boxes root_8826415 := by
  apply coveredBy_split_literal root_8826415 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8826420 small_8826415_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8826420
  · exact small_8826415_right_covered
#print axioms cover_8826415

def root_8831948 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8831948_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8831948_left_fuel : Nat := 28
def small_8831948_left_count : Nat := 459
def small_8831948_left_encoded : String := "1151E8FD0A0001081151E9090000000408A91303120700F808A912FB12073D0405000100135D4501000000000500010600000005135D80FD00000003050001080000000500000009135D810105000106135D44FD0500010800000005135D810904548A0300000005000000090000000400000003135D80FD0000000305000108135D45090000000404548A03000000051386ACF8000000010CFD9BFB000000050F34D1040000000200000009135D810904548A03138670F80CFD9BFB0F350D04000000050000000200000009000000011386ACF8000000010CFD9BFB0F350D040C9A8704000000050000000900000002000000090000000400000000000000021207010400000002000000090000000112073CF80000000108A912FB12073D0405000100135D45010000000005000106135D44FD05000108135D4509000000040CFD9C030F34D0F80000000500000001000000090000000900000003135D80FD0000000305000108135D4509000000040CFD9C030F34D0F800000009000000010F350CF8000000010CFD9BFB0F350D040C9A86F800000009000000060000000200000009135D81090CFD9C030F34D0F800000009000000010000000900000004135D810105000106135D44FD05000108135D4509000000040CFD9C030F34D0F80CFD9BFB000000050F34D1040000000200000006000000010F350CF8000000010CFD9BFB0F350D040C9A86F80F878D03000000050000000100000006000000020F34D1040000000200000006135D81090CFD9C030F34D0F800000009000000010F350CF8000000010CFD9BFB0F350D040C9A86F8000000090F875103000000010C9A87040F8750FB00000007000000020000000600000002000000090000000400000003135D80FD0000000305000108135D4509000000040CFD9C030F34D0F80CFD9BFB0F350D040C9A8704000000050F878CFB000000020780010000000005128A7D010780010600000005128A7CFD000000030000000600000000000000020F34D1040000000200000009000000010F350CF8000000010CFD9BFB0F350D040C9A86F80F878D030C9A87040F8750FB0780010000000005128A7D0100000006000000000000000200000006000000010F8751030000000100000006000000020F34D1040000000200000006135D81090CFD9C030F34D0F80CFD9BFB0F350D040C9A87040F8750FB0780010000000005128A7D010780010600000005128A7CFD000000030780010800000005000000090000000000000002000000090000000200000009000000010F350CF8000000010CFD9BFB0F350D040C9A86F80F878D030C9A87040F8750FB0780010000000009128A7D0107800106128A40FD07800108128A410900000004000000060000000900000003128A7CFD0000000307800108128A4109000000040000000600000009000000000000000200000009000000010F875103000000010C9A87040F8750FB07800100128A41010000000000000009128A7D010780010600000006128A7CFD000000030000000600000000000000020F878CFB0000000200000006000000020F34D10400000002000000090000000400000000000000021207010400000002000000091152250908A91303120700F808A912FB12073D0408A91309120701080000000405000100000000090000000712073D080500010000000009135D810105000106135D44FD04548A03138670F800000009000000010000000900000003135D80FD0000000304548A03138670F80CFD9BFB0F350D040CFD9C0900000007000000090000000200000009000000011386ACF8000000010CFD9BFB0F350D040CFD9C090F34D10800000004000000070000000900000002000000090000000000000004000000021207010400000002000000090000000112073CF80000000108A912FB12073D0408A9130912070108000000040500010000000009135D810105000106135D44FD0CFD9C030F34D0F800000009000000010000000900000003135D80FD000000030CFD9C030F34D0F800000009000000010F350CF8000000010CFD9BFB0F350D0404548A09000000080000000800000002000000080000000012073D0805000100135D45010000000005000106135D44FD0000000900000003135D80FD000000030CFD9C030F34D0F8000000090000000100000009135D810105000106135D44FD0CFD9C030F34D0F800000009000000010F350CF8000000010CFD9BFB0F350D040CFD9C090F34D108000000040000000800000009000000020000000900000003135D80FD000000030CFD9C030F34D0F80CFD9BFB0F350D040CFD9C090F34D1080000000400000009000000090000000200000009000000010F350CF8000000010CFD9BFB0F350D040CFD9C090F34D10800000004000000090F350D080C9A86F8000000090F875103000000010C9A87040F8750FB00000009000000020000000900000004000000020F34D10400000002000000090000000000000004000000021207010400000002000000090000000400000003"
theorem small_8831948_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8831948_left_root small_8831948_left_fuel small_8831948_left_count small_8831948_left_encoded = true := by
  decide +kernel
theorem small_8831948_left_covered : CoveredBy scale carrier boxes small_8831948_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8831948_left_root small_8831948_left_fuel small_8831948_left_count small_8831948_left_encoded small_8831948_left_checked

theorem cover_8831948 : CoveredBy scale carrier boxes root_8831948 := by
  apply coveredBy_split_literal root_8831948 small_8831948_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3303.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8831948_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3303.covered
#print axioms cover_8831948

def root_8831942 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8831942_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8831942_left_fuel : Nat := 1
def small_8831942_left_count : Nat := 1
def small_8831942_left_encoded : String := "00000002"
theorem small_8831942_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8831942_left_root small_8831942_left_fuel small_8831942_left_count small_8831942_left_encoded = true := by
  decide +kernel
theorem small_8831942_left_covered : CoveredBy scale carrier boxes small_8831942_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8831942_left_root small_8831942_left_fuel small_8831942_left_count small_8831942_left_encoded small_8831942_left_checked

theorem cover_8831942 : CoveredBy scale carrier boxes root_8831942 := by
  apply coveredBy_split_literal root_8831942 small_8831942_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8831948 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8831942_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8831948
#print axioms cover_8831942

def root_8826414 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8826414 : CoveredBy scale carrier boxes root_8826414 := by
  apply coveredBy_split_literal root_8826414 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8826415 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8831942 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8826415
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8831942
#print axioms cover_8826414

def root_8826409 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8826409_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8826409_right_fuel : Nat := 1
def small_8826409_right_count : Nat := 1
def small_8826409_right_encoded : String := "00000001"
theorem small_8826409_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8826409_right_root small_8826409_right_fuel small_8826409_right_count small_8826409_right_encoded = true := by
  decide +kernel
theorem small_8826409_right_covered : CoveredBy scale carrier boxes small_8826409_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8826409_right_root small_8826409_right_fuel small_8826409_right_count small_8826409_right_encoded small_8826409_right_checked

theorem cover_8826409 : CoveredBy scale carrier boxes root_8826409 := by
  apply coveredBy_split_literal root_8826409 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8826414 small_8826409_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8826414
  · exact small_8826409_right_covered
#print axioms cover_8826409

def root_8826408 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8826408 : CoveredBy scale carrier boxes root_8826408 := by
  apply coveredBy_split_literal root_8826408 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8826409 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3304.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8826409
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3304.covered
#print axioms cover_8826408

def root_8826402 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8826402_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8826402_left_fuel : Nat := 1
def small_8826402_left_count : Nat := 1
def small_8826402_left_encoded : String := "00000000"
theorem small_8826402_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8826402_left_root small_8826402_left_fuel small_8826402_left_count small_8826402_left_encoded = true := by
  decide +kernel
theorem small_8826402_left_covered : CoveredBy scale carrier boxes small_8826402_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8826402_left_root small_8826402_left_fuel small_8826402_left_count small_8826402_left_encoded small_8826402_left_checked

theorem cover_8826402 : CoveredBy scale carrier boxes root_8826402 := by
  apply coveredBy_split_literal root_8826402 small_8826402_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8826408 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8826402_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8826408
#print axioms cover_8826402

def root_8847173 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8847173_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8847173_left_fuel : Nat := 18
def small_8847173_left_count : Nat := 109
def small_8847173_left_encoded : String := "13D7B0FB07800106128A40FD0DE7CA000E5FD901000000000B4D43F80000000510801103000000010DE7CA08000000050E601509014001040000000513F614FB00000002064001060000000512FFACFD000000030DAED889000000060E9661080000000600000004000000040E6015010B4D43F810804D030DE7CA08000000050E601509014001040000000513F614FB00000002064001060000000500000006000000040000000110801103000000010DE7CA08000000090E601509014001040000000913F614FB000000020640010612FF70FD0DAED8810E96250000000000000000090E9661000DAED889000000050E9661080000000500000004000000000000000312FFACFD0000000300000009000000040000000000000003128A7CFD000000030DE7CA000E5FD901000000000B4D43F810804D030DE7CA08000000080E60150900000006000000040000000110801103000000010DE7CA080E5FD90900000004000000080E601509014001040000000613F614FB0000000208C0010611FBE8FD000000060000000300000006000000040E6015010B4D43F810804D030000000900000001000000090000000000000002"
theorem small_8847173_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8847173_left_root small_8847173_left_fuel small_8847173_left_count small_8847173_left_encoded = true := by
  decide +kernel
theorem small_8847173_left_covered : CoveredBy scale carrier boxes small_8847173_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8847173_left_root small_8847173_left_fuel small_8847173_left_count small_8847173_left_encoded small_8847173_left_checked

theorem cover_8847173 : CoveredBy scale carrier boxes root_8847173 := by
  apply coveredBy_split_literal root_8847173 small_8847173_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3308.root coord2 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_8847173_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3308.covered
#print axioms cover_8847173

def root_8847168 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8847168_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8847168_right_fuel : Nat := 1
def small_8847168_right_count : Nat := 1
def small_8847168_right_encoded : String := "00000004"
theorem small_8847168_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8847168_right_root small_8847168_right_fuel small_8847168_right_count small_8847168_right_encoded = true := by
  decide +kernel
theorem small_8847168_right_covered : CoveredBy scale carrier boxes small_8847168_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8847168_right_root small_8847168_right_fuel small_8847168_right_count small_8847168_right_encoded small_8847168_right_checked

theorem cover_8847168 : CoveredBy scale carrier boxes root_8847168 := by
  apply coveredBy_split_literal root_8847168 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8847173 small_8847168_right_root coord4 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8847173
  · exact small_8847168_right_covered
#print axioms cover_8847168

def root_8846994 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8846994_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8846994_left_fuel : Nat := 16
def small_8846994_left_count : Nat := 81
def small_8846994_left_encoded : String := "0F875109000000040280010413D7B0FB07800106128A40FD0DE7CA00000000050E601501000000050000000000000003000000080000000213D7ECFB0000000207800106128A40FD0DE7CA000E5FD901000000000B4D43F810804D030B4D44080000000510804D0900000005000000040000000110801103000000010B4D440810801109000000040000000710804D0903C0010413A510FB0640010600000005000000080000000213A54CFB000000020640010612FF70FD000000070000000300000008000000040E6015010B4D43F810804D030B4D440800000005000000080000000110801103000000010B4D44080000000810804D0903C001040000000813A54CFB000000020640010612FF70FD000000080000000300000008000000040000000000000003128A7CFD000000030DE7CA000E5FD901000000000000000800000008"
theorem small_8846994_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8846994_left_root small_8846994_left_fuel small_8846994_left_count small_8846994_left_encoded = true := by
  decide +kernel
theorem small_8846994_left_covered : CoveredBy scale carrier boxes small_8846994_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8846994_left_root small_8846994_left_fuel small_8846994_left_count small_8846994_left_encoded small_8846994_left_checked

theorem cover_8846994 : CoveredBy scale carrier boxes root_8846994 := by
  apply coveredBy_split_literal root_8846994 small_8846994_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8847168 coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8846994_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8847168
#print axioms cover_8846994

def root_8846988 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8846988_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8846988_left_fuel : Nat := 1
def small_8846988_left_count : Nat := 1
def small_8846988_left_encoded : String := "00000001"
theorem small_8846988_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8846988_left_root small_8846988_left_fuel small_8846988_left_count small_8846988_left_encoded = true := by
  decide +kernel
theorem small_8846988_left_covered : CoveredBy scale carrier boxes small_8846988_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8846988_left_root small_8846988_left_fuel small_8846988_left_count small_8846988_left_encoded small_8846988_left_checked

theorem cover_8846988 : CoveredBy scale carrier boxes root_8846988 := by
  apply coveredBy_split_literal root_8846988 small_8846988_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8846994 coord1 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_8846988_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8846994
#print axioms cover_8846988

def root_8846688 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8846688_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8846688_left_fuel : Nat := 20
def small_8846688_left_count : Nat := 143
def small_8846688_left_encoded : String := "0F878D030C9A87080F875109000000040280010413D7B0FB0780010600000005000000080000000213D7ECFB0000000207800106128A40FD0000000500000003128A7CFD00000003000000080F878D090280010413D7B0FB0780010600000005128A7CFD000000030DE7CA000E5FD901000000000DE7C9F8000000050E5FD903000000010DE7CA0800000005000000060E6015010DE7C9F80E601503000000060000000100000009000000000000000213D7ECFB0000000207800106128A40FD0DE7CA000E5FD901000000000DE7C9F8000000050E5FD903000000010DE7CA08000000050E60150903C001040000000513A54CFB00000002064001060000000512FFACFD000000030DAED889000000060E9661080000000500000004000000040E6015010DE7C9F80E6015030DE7CA080000000500000007000000010E5FD903000000010DE7CA080E5FD9090000000403C001040000000513A54CFB00000002064001060000000512FFACFD000000030DAED88100000007000000080E60150903C0010413A510FB0640010600000005000000060000000200000007000000040000000000000003128A7CFD000000030DE7CA000E5FD901000000000DE7C9F80E6015030DE7CA080E5FD90900000004000000080E6015090000000600000004000000010E5FD903000000010DE7CA080E5FD90900000004000000080E60150903C001040000000600000007000000040E6015010DE7C9F8000000070E5FD903000000010DE7CA080000000800000007000000000000000400000001"
theorem small_8846688_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8846688_left_root small_8846688_left_fuel small_8846688_left_count small_8846688_left_encoded = true := by
  decide +kernel
theorem small_8846688_left_covered : CoveredBy scale carrier boxes small_8846688_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8846688_left_root small_8846688_left_fuel small_8846688_left_count small_8846688_left_encoded small_8846688_left_checked

theorem cover_8846688 : CoveredBy scale carrier boxes root_8846688 := by
  apply coveredBy_split_literal root_8846688 small_8846688_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8846988 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8846688_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8846988
#print axioms cover_8846688

def root_8846683 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8846683_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8846683_right_fuel : Nat := 1
def small_8846683_right_count : Nat := 1
def small_8846683_right_encoded : String := "00000000"
theorem small_8846683_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8846683_right_root small_8846683_right_fuel small_8846683_right_count small_8846683_right_encoded = true := by
  decide +kernel
theorem small_8846683_right_covered : CoveredBy scale carrier boxes small_8846683_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8846683_right_root small_8846683_right_fuel small_8846683_right_count small_8846683_right_encoded small_8846683_right_checked

theorem cover_8846683 : CoveredBy scale carrier boxes root_8846683 := by
  apply coveredBy_split_literal root_8846683 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8846688 small_8846683_right_root coord0 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8846688
  · exact small_8846683_right_covered
#print axioms cover_8846683

def root_8845617 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8845617 : CoveredBy scale carrier boxes root_8845617 := by
  apply coveredBy_split_literal root_8845617 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3307.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8846683 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3307.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8846683
#print axioms cover_8845617

def root_8845612 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8845612_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8845612_right_fuel : Nat := 1
def small_8845612_right_count : Nat := 1
def small_8845612_right_encoded : String := "00000004"
theorem small_8845612_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8845612_right_root small_8845612_right_fuel small_8845612_right_count small_8845612_right_encoded = true := by
  decide +kernel
theorem small_8845612_right_covered : CoveredBy scale carrier boxes small_8845612_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8845612_right_root small_8845612_right_fuel small_8845612_right_count small_8845612_right_encoded small_8845612_right_checked

theorem cover_8845612 : CoveredBy scale carrier boxes root_8845612 := by
  apply coveredBy_split_literal root_8845612 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8845617 small_8845612_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8845617
  · exact small_8845612_right_covered
#print axioms cover_8845612

def root_8844680 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8844680_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8844680_left_fuel : Nat := 30
def small_8844680_left_count : Nat := 435
def small_8844680_left_encoded : String := "0F34D108000000040C9A87000F875101000000000C9A86F80F878D03028001040000000613D7ECFB0000000207800106128A40FD0AD357890000000610D13D080B4D44000000000500000006000000040000000300000006000000010F875103000000010280010413D7B0FB07800106128A40FD0AD357890000000610D13D08000000060000000400000003000000060000000213D7ECFB0000000207800106128A40FD0AD3578910D10108000000040000000610D13D080B4D440010801101000000000B4D43F810804D0303C001040000000513A54CFB000000020000000600000001108011030000000103C0010413A510FB000000060000000213A54CFB000000020640010612FF70FD00000008000000030000000A10804D010B4D43F810804D0303C001040000000613A54CFB0000000206400106000000060000000600000001108011030000000103C0010413A510FB0640010600000006000000060000000213A54CFB000000020640010612FF70FD0BE879C9000000061011AD080BF3E5801008ED010000000000000009100929010AA6A2780000000610ED71030000000104600104000000060000000900000000000000040000000312FFACFD000000030BE879C9000000061011AD080BF3E5800000000A0000000A00000004000000000000000400000003128A7CFD000000030AD3578910D10108000000040000000610D13D080B4D440010801101000000000B4D43F810804D0300000006000000010000000A10804D010B4D43F810804D030000000600000001108011030000000103C001040000000A13A54CFB0000000208C0010611FBE8FD0000000A000000030000000A00000000000000040F878D010C9A86F80F878D030280010413D7B0FB0780010600000006000000060000000213D7ECFB0000000207800106128A40FD0AD357890000000610D13D080DE7CA000E5FD901000000000DE7C9F8000000060E5FD903000000010000000600000007000000040000000300000007000000010F875103000000010280010413D7B0FB07800106128A40FD0AD357890000000610D13D080DE7CA000E5FD90100000000000000060E6015010B4D43F800000006108011030000000100000006000000000000000400000003128A7CFD000000030AD357890000000610D13D080DE7CA000E5FD90100000000000000060E6015010B4D43F80000000610801103000000010000000600000000000000040000000213D7ECFB0000000207800106128A40FD0AD3578910D10108000000040DE7CA000E5FD90100000000000000060000000710D13D080DE7CA000E5FD901000000000B4D43F810804D0303C001040000000613A54CFB000000020640010612FF70FD00000006000000030000000600000001108011030000000103C0010413A510FB0640010612FF70FD0000000600000003000000060000000213A54CFB000000020640010612FF70FD0BE879C91011710800000004000000061011AD080D4128800EFA1101000000000AA6A2780000000610ED7103000000010460010400000006138418FB0000000205A0010600000006000000060EFA4D010AA6A2780000000610ED7103000000010460010400000006138418FB0000000205A00106133134FD00000006000000030000000600000000000000040000000312FFACFD000000030BE879C9000000061011AD080D4128800EFA1101000000000AA6A2780000000610ED710300000001000000060EFA4D010AA6A2780000000610ED7103000000010460010400000006138418FB000000020000000700000000000000040E6015010B4D43F810804D0303C00104000000060000000700000001108011030000000103C0010413A510FB0640010612FF70FD0BE879C9000000061011AD080DAED8810E962500000000000000000600000006000000040000000312FFACFD000000030BE879C9000000061011AD0800000006000000040000000213A54CFB000000020640010612FF70FD0BE879C9000000071011AD080DAED881000000070E9661000AA6A2780000000710ED7103000000010460010400000006138418FB000000020000000700000000000000040000000312FFACFD0000000300000007000000000000000400000003128A7CFD000000030AD3578910D10108000000040000000710D13D080DE7CA000E5FD901000000000B4D43F810804D0303C00104000000060000000700000001108011030000000103C0010413A510FB08C0010611FBE8FD0000000600000003000000060000000213A54CFB0000000208C0010611FBE8FD0BE879C9000000061011AD080D4128800EFA1101000000000000000A0EFA4D0100000007000000000000000400000003000000050E60150100000007000000000000000400000000"
theorem small_8844680_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8844680_left_root small_8844680_left_fuel small_8844680_left_count small_8844680_left_encoded = true := by
  decide +kernel
theorem small_8844680_left_covered : CoveredBy scale carrier boxes small_8844680_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8844680_left_root small_8844680_left_fuel small_8844680_left_count small_8844680_left_encoded small_8844680_left_checked

theorem cover_8844680 : CoveredBy scale carrier boxes root_8844680 := by
  apply coveredBy_split_literal root_8844680 small_8844680_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8845612 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8844680_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8845612
#print axioms cover_8844680

def root_8844674 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8844674_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8844674_left_fuel : Nat := 1
def small_8844674_left_count : Nat := 1
def small_8844674_left_encoded : String := "00000001"
theorem small_8844674_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8844674_left_root small_8844674_left_fuel small_8844674_left_count small_8844674_left_encoded = true := by
  decide +kernel
theorem small_8844674_left_covered : CoveredBy scale carrier boxes small_8844674_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8844674_left_root small_8844674_left_fuel small_8844674_left_count small_8844674_left_encoded small_8844674_left_checked

theorem cover_8844674 : CoveredBy scale carrier boxes root_8844674 := by
  apply coveredBy_split_literal root_8844674 small_8844674_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8844680 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_8844674_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8844680
#print axioms cover_8844674

def root_8844606 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8844606_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8844606_left_fuel : Nat := 12
def small_8844606_left_count : Nat := 31
def small_8844606_left_encoded : String := "0F34D0F80CFD9C090F34D108000000040C9A87000F87510100000000000000060F878D0100000007000000000F350D080C9A8700000000050F878D010C9A8708000000050F878D09028001040000000513D7ECFB000000020780010600000005128A7CFD000000030000000700000004000000000000000400000001"
theorem small_8844606_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8844606_left_root small_8844606_left_fuel small_8844606_left_count small_8844606_left_encoded = true := by
  decide +kernel
theorem small_8844606_left_covered : CoveredBy scale carrier boxes small_8844606_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8844606_left_root small_8844606_left_fuel small_8844606_left_count small_8844606_left_encoded small_8844606_left_checked

theorem cover_8844606 : CoveredBy scale carrier boxes root_8844606 := by
  apply coveredBy_split_literal root_8844606 small_8844606_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8844674 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8844606_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8844674
#print axioms cover_8844606

def root_8844601 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8844601_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8844601_right_fuel : Nat := 1
def small_8844601_right_count : Nat := 1
def small_8844601_right_encoded : String := "00000000"
theorem small_8844601_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8844601_right_root small_8844601_right_fuel small_8844601_right_count small_8844601_right_encoded = true := by
  decide +kernel
theorem small_8844601_right_covered : CoveredBy scale carrier boxes small_8844601_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8844601_right_root small_8844601_right_fuel small_8844601_right_count small_8844601_right_encoded small_8844601_right_checked

theorem cover_8844601 : CoveredBy scale carrier boxes root_8844601 := by
  apply coveredBy_split_literal root_8844601 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8844606 small_8844601_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8844606
  · exact small_8844601_right_covered
#print axioms cover_8844601

def root_8844029 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8844029_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8844029_left_fuel : Nat := 29
def small_8844029_left_count : Nat := 279
def small_8844029_left_encoded : String := "0F34D100000000000CFD9C030F34D0F80CFD9C09000000070F350D080C9A87080F87510900000004028001040000000513D7ECFB000000020780010600000005000000070F878D09000000070000000400000004000000010F350CF8000000010CFD9C090F34D108000000040C9A86F8000000070F875103000000010280010413D7B0FB07800106128A40FD0AD357810000000710D13D000AD357890000000610D13D080B4D43F8000000061080110300000001014001040000000613F614FB0000000200000007000000040000000000000003128A7CFD00000003000000070000000213D7ECFB0000000207800106128A40FD0AD35781000000070000000700000003000000070F350D080C9A86F80F878D030C9A87080F87510900000004028001040000000913D7ECFB0000000207800106128A40FD0AD357810000000910D13D000DE7C9F800000005000000090000000000000003000000080F878D090280010413D7B0FB07800106128A40FD0AD357810000000710D13D000DE7C9F800000005000000090000000000000003128A7CFD00000003000000090000000213D7ECFB0000000207800106128A40FD0AD357810000000710D13D000DE7C9F8000000070E5FD903000000010DE7CA080E5FD9090000000403C0010400000009000000070000000700000000000000030000000700000004000000010F875103000000010C9A87080F87510900000004028001040000000913D7ECFB0000000207800106128A40FD0AD357810000000910D13D000B4D43F800000008000000090000000000000003000000080F878D090280010413D7B0FB07800106128A40FD0AD357810000000910D13D000B4D43F810804D030000000900000001000000090000000000000003000000090000000213D7ECFB0000000207800106128A40FD0AD3578110D10100000000000B4D43F8000000070000000910D13D000B4D43F810804D030DE7CA080E5FD9090000000403C001040000000913A54CFB000000020640010612FF70FD0BE879C1000000071011AD000BF3E57800000008000000090000000000000003000000080E60150903C001040000000700000007000000040000000110801103000000010DE7CA080E5FD9090000000403C001040000000913A54CFB000000020640010612FF70FD0BE879C1000000091011AD000AA6A27800000008000000090000000000000003000000080E60150903C0010413A510FB0640010612FF70FD0BE879C1000000091011AD000DAED88900000009000000090000000000000003000000090000000213A54CFB000000020640010612FF70FD0BE879C1000000071011AD000DAED889000000070E9661080AA6A278000000070000000900000004000000000000000312FFACFD0000000300000007000000040000000000000003128A7CFD000000030AD357810000000910D13D000B4D43F810804D030DE7CA0800000008000000070000000110801103000000010DE7CA08000000080E6015090000000700000004000000000000000400000004"
theorem small_8844029_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8844029_left_root small_8844029_left_fuel small_8844029_left_count small_8844029_left_encoded = true := by
  decide +kernel
theorem small_8844029_left_covered : CoveredBy scale carrier boxes small_8844029_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8844029_left_root small_8844029_left_fuel small_8844029_left_count small_8844029_left_encoded small_8844029_left_checked

theorem cover_8844029 : CoveredBy scale carrier boxes root_8844029 := by
  apply coveredBy_split_literal root_8844029 small_8844029_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8844601 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8844029_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8844601
#print axioms cover_8844029

def root_8844023 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8844023_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8844023_left_fuel : Nat := 1
def small_8844023_left_count : Nat := 1
def small_8844023_left_encoded : String := "00000003"
theorem small_8844023_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8844023_left_root small_8844023_left_fuel small_8844023_left_count small_8844023_left_encoded = true := by
  decide +kernel
theorem small_8844023_left_covered : CoveredBy scale carrier boxes small_8844023_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8844023_left_root small_8844023_left_fuel small_8844023_left_count small_8844023_left_encoded small_8844023_left_checked

theorem cover_8844023 : CoveredBy scale carrier boxes root_8844023 := by
  apply coveredBy_split_literal root_8844023 small_8844023_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8844029 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_8844023_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8844029
#print axioms cover_8844023

def root_8841527 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8841527 : CoveredBy scale carrier boxes root_8841527 := by
  apply coveredBy_split_literal root_8841527 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3306.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8844023 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3306.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8844023
#print axioms cover_8841527

def root_8841522 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8841522_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8841522_right_fuel : Nat := 1
def small_8841522_right_count : Nat := 1
def small_8841522_right_encoded : String := "00000002"
theorem small_8841522_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8841522_right_root small_8841522_right_fuel small_8841522_right_count small_8841522_right_encoded = true := by
  decide +kernel
theorem small_8841522_right_covered : CoveredBy scale carrier boxes small_8841522_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8841522_right_root small_8841522_right_fuel small_8841522_right_count small_8841522_right_encoded small_8841522_right_checked

theorem cover_8841522 : CoveredBy scale carrier boxes root_8841522 := by
  apply coveredBy_split_literal root_8841522 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8841527 small_8841522_right_root coord2 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8841527
  · exact small_8841522_right_covered
#print axioms cover_8841522

def root_8853557 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8853557_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8853557_right_fuel : Nat := 20
def small_8853557_right_count : Nat := 203
def small_8853557_right_encoded : String := "128A7CFB000000020280010613D7B0FD0DE7CA000E5FD901000000000B4D43F800000009000000080E6015010B4D43F810804D030DE7CA080E5FD909000000040000000A0E60150900000008000000040000000110801103000000010DE7CA080E5FD9090000000408C0010411FBE8FB0000000A000000020000000900000008000000000000000313D7ECFD000000030DE7CA000E5FD901000000000B4D43F810804D030DE7CA080E5FD9090000000400000009000000090000000110801103000000010DE7CA080E5FD9090000000408C0010411FBE8FB03C001060000000913A54CFD000000030D41288000000009000000090000000200000009000000090E6015010B4D43F810804D030DE7CA080E5FD9090000000408C0010411FBE8FB03C0010613A510FD0000000A0000000313A54CFD000000030DAED8810E96250000000000000000070E9661000BF3E578100929030D4128880EFA1109000000040000000900000007000000011008ED03000000010D4128880EFA1109000000040000000900000009000000000000000211FC24FB0000000203C0010613A510FD000000090000000313A54CFD000000030DAED88100000007000000090E60150908C0010411FBE8FB03C0010600000007000000070000000200000007000000040000000110801103000000010DE7CA080E5FD9090000000408C0010411FBE8FB03C0010613A510FD0DAED8810E962500000000000AA6A2780000000A000000060E9661000AA6A2780000000900000006000000000000000313A54CFD000000030DAED8810E962500000000000AA6A27810EDAD030D412888000000060EFA4D09000000070000000400000001000000060E9661000AA6A27810EDAD030D4128880EFA11090000000400000006000000090000000110ED71030000000100000006000000000000000211FC24FB0000000203C001060000000613A54CFD000000030DAED881000000060E96610000000006000000000E60150908C0010411FBE8FB03C0010613A510FD0DAED88100000008000000090000000313A54CFD000000030DAED8810E96250000000000000000070E966100000000090000000000000002000000090000000400000000"
theorem small_8853557_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8853557_right_root small_8853557_right_fuel small_8853557_right_count small_8853557_right_encoded = true := by
  decide +kernel
theorem small_8853557_right_covered : CoveredBy scale carrier boxes small_8853557_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8853557_right_root small_8853557_right_fuel small_8853557_right_count small_8853557_right_encoded small_8853557_right_checked

theorem cover_8853557 : CoveredBy scale carrier boxes root_8853557 := by
  apply coveredBy_split_literal root_8853557 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3309.root small_8853557_right_root coord2 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3309.covered
  · exact small_8853557_right_covered
#print axioms cover_8853557

def root_8853552 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8853552_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8853552_right_fuel : Nat := 1
def small_8853552_right_count : Nat := 1
def small_8853552_right_encoded : String := "00000004"
theorem small_8853552_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8853552_right_root small_8853552_right_fuel small_8853552_right_count small_8853552_right_encoded = true := by
  decide +kernel
theorem small_8853552_right_covered : CoveredBy scale carrier boxes small_8853552_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8853552_right_root small_8853552_right_fuel small_8853552_right_count small_8853552_right_encoded small_8853552_right_checked

theorem cover_8853552 : CoveredBy scale carrier boxes root_8853552 := by
  apply coveredBy_split_literal root_8853552 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8853557 small_8853552_right_root coord4 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8853557
  · exact small_8853552_right_covered
#print axioms cover_8853552

def root_8852846 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8852846_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8852846_left_fuel : Nat := 25
def small_8852846_left_count : Nat := 333
def small_8852846_left_encoded : String := "0F8751090000000407800104128A40FB0280010613D7B0FD0DE7CA00000000050E60150100000005000000000000000313D7ECFD000000030DE7CA000E5FD901000000000B4D43F810804D030B4D44080000000510804D0900000005000000040000000110801103000000010B4D440810801109000000040000000710804D090640010412FF70FB000000070000000212FFACFB0000000203C0010613A510FD0D412880000000050EFA4D0100000005000000000000000313A54CFD000000030D4128800EFA110100000000000000070EFA4D010AA6A27810EDAD030BF3E5880000000500000006000000010000000600000000000000040E6015010B4D43F810804D030B4D44080000000510804D09064001040000000512FFACFB0000000203C001060000000513A54CFD000000030DAED8810E962500000000000000000A0E9661000BF3E578000000051008ED03000000010BF3E588000000051009290906E0010400000005000000060000000400000000000000040000000110801103000000010B4D440810801109000000040640010412FF70FB000000050000000212FFACFB000000020000000610804D090640010412FF70FB03C001060000000513A54CFD000000030DAED8810E962500000000000AA6A27810EDAD030BF3E588000000051009290905A00104000000050000000A000000040000000110ED7103000000010BF3E588000000061009290905A00104133134FB0460010600000005000000060000000200000006000000040E9661000AA6A2780000000510ED7103000000010BF3E588000000051009290905A00104000000050000000600000004000000000000000212FFACFB0000000203C0010613A510FD0DAED881000000060E9661000AA6A2780000000500000006000000000000000313A54CFD000000030DAED8810E962500000000000AA6A27810EDAD030000000600000001000000060E9661000AA6A27810EDAD030BF3E5880000000600000006000000010000000600000000000000040000000000000002128A7CFB000000020280010613D7B0FD0DE7CA000E5FD901000000000B4D43F810804D030B4D440800000005000000090000000110801103000000010B4D440800000006000000060E6015010B4D43F810804D030000000A0000000110801103000000010B4D44080000000610804D0908C0010411FBE8FB00000006000000020000000600000004000000000000000313D7ECFD000000030DE7CA000E5FD901000000000B4D43F810804D030B4D4408108011090000000408C0010411FBE8FB00000006000000020000000610804D0908C0010411FBE8FB03C0010613A510FD000000050000000313A54CFD000000030D4128800EFA110100000000000000090EFA4D010BF3E578100929030BF3E58800000005000000060000000100000006000000000000000200000009000000040000000110801103000000010B4D440810801109000000040000000610804D0908C0010411FBE8FB03C0010600000006000000060000000200000006000000040E6015010B4D43F810804D030B4D4408108011090000000408C0010411FBE8FB00000006000000020000000610804D0908C0010411FBE8FB03C001060000000A13A54CFD000000030DAED8810E962500000000000000000A0E9661000BF3E578100929030000000A0000000100000006000000000000000211FC24FB0000000203C001060000000600000006000000040000000110801103000000010B4D440810801109000000040000000610804D0908C0010411FBE8FB03C00106000000060000000600000002000000060000000400000000"
theorem small_8852846_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8852846_left_root small_8852846_left_fuel small_8852846_left_count small_8852846_left_encoded = true := by
  decide +kernel
theorem small_8852846_left_covered : CoveredBy scale carrier boxes small_8852846_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8852846_left_root small_8852846_left_fuel small_8852846_left_count small_8852846_left_encoded small_8852846_left_checked

theorem cover_8852846 : CoveredBy scale carrier boxes root_8852846 := by
  apply coveredBy_split_literal root_8852846 small_8852846_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8853552 coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8852846_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8853552
#print axioms cover_8852846

def root_8852840 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8852840_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8852840_left_fuel : Nat := 1
def small_8852840_left_count : Nat := 1
def small_8852840_left_encoded : String := "00000001"
theorem small_8852840_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8852840_left_root small_8852840_left_fuel small_8852840_left_count small_8852840_left_encoded = true := by
  decide +kernel
theorem small_8852840_left_covered : CoveredBy scale carrier boxes small_8852840_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8852840_left_root small_8852840_left_fuel small_8852840_left_count small_8852840_left_encoded small_8852840_left_checked

theorem cover_8852840 : CoveredBy scale carrier boxes root_8852840 := by
  apply coveredBy_split_literal root_8852840 small_8852840_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8852846 coord1 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_8852840_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8852846
#print axioms cover_8852840

def root_8852448 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8852448_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8852448_left_fuel : Nat := 20
def small_8852448_left_count : Nat := 187
def small_8852448_left_encoded : String := "0F878D030C9A87080F8751090000000407800104128A40FB0000000500000002128A7CFB000000020280010613D7B0FD0DE7CA00000000050000000A0000000313D7ECFD000000030DE7CA000E5FD901000000000DE7C9F80E60150300000005000000010E5FD903000000010B4D4408108011090000000408C001040000000511FC24FB0000000203C00106000000050000000610804D0908C001040000000500000009000000040E6015010DE7C9F80E6015030000000A000000010E5FD903000000010B4D4408108011090000000408C00104000000050000000A10804D0908C0010411FBE8FB0000000A000000020000000A00000004000000000F878D0907800104128A40FB028001060000000513D7ECFD000000030DE7CA000E5FD901000000000DE7C9F8000000050E5FD903000000010DE7CA08000000050E601509064001040000000512FFACFB0000000203C001060000000513A54CFD000000030DAED8890000000700000009000000040E6015010DE7C9F80E6015030DE7CA080000000500000007000000010E5FD903000000010DE7CA080E5FD90900000004064001040000000512FFACFB0000000203C001060000000513A54CFD000000030DAED881000000070E96610000000005000000000E6015090640010412FF70FB03C0010600000005000000070000000200000007000000040000000000000002128A7CFB000000020280010613D7B0FD0DE7CA000E5FD901000000000DE7C9F8000000050E5FD90300000001000000090E6015010DE7C9F80000000A0E5FD903000000010000000A000000000000000313D7ECFD000000030DE7CA000E5FD901000000000DE7C9F80E6015030DE7CA080E5FD909000000040000000900000009000000010E5FD903000000010DE7CA080E5FD9090000000400000009000000090E6015010DE7C9F8000000070E5FD903000000010DE7CA080E5FD9090000000408C0010411FBE8FB03C001060000000A00000007000000020000000700000007000000000000000400000001"
theorem small_8852448_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8852448_left_root small_8852448_left_fuel small_8852448_left_count small_8852448_left_encoded = true := by
  decide +kernel
theorem small_8852448_left_covered : CoveredBy scale carrier boxes small_8852448_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8852448_left_root small_8852448_left_fuel small_8852448_left_count small_8852448_left_encoded small_8852448_left_checked

theorem cover_8852448 : CoveredBy scale carrier boxes root_8852448 := by
  apply coveredBy_split_literal root_8852448 small_8852448_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8852840 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8852448_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8852840
#print axioms cover_8852448

def root_8852443 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8852443_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8852443_right_fuel : Nat := 1
def small_8852443_right_count : Nat := 1
def small_8852443_right_encoded : String := "00000000"
theorem small_8852443_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8852443_right_root small_8852443_right_fuel small_8852443_right_count small_8852443_right_encoded = true := by
  decide +kernel
theorem small_8852443_right_covered : CoveredBy scale carrier boxes small_8852443_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8852443_right_root small_8852443_right_fuel small_8852443_right_count small_8852443_right_encoded small_8852443_right_checked

theorem cover_8852443 : CoveredBy scale carrier boxes root_8852443 := by
  apply coveredBy_split_literal root_8852443 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8852448 small_8852443_right_root coord0 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8852448
  · exact small_8852443_right_covered
#print axioms cover_8852443

def root_8852095 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8852095_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8852095_left_fuel : Nat := 18
def small_8852095_left_count : Nat := 167
def small_8852095_left_encoded : String := "0F875101000000000C9A86F80F878D030C9A87080F875109000000040780010400000005128A7CFB00000002028001060000000513D7ECFD000000030B4D44000000000510804D010DE7C9F8000000050E5FD903000000010B4D44080000000500000009000000000F878D0907800104128A40FB0000000500000002128A7CFB000000020000000900000004000000010F875103000000010C9A87080F8751090000000407800104128A40FB028001060000000513D7ECFD000000030B4D44000000000510804D010B4D43F800000005000000070000000000000002128A7CFB000000020280010613D7B0FD0B4D44000000000510804D010B4D43F800000005108011030000000100000007000000000000000313D7ECFD000000030B4D440010801101000000000B4D43F8000000090000000910804D010B4D43F810804D030B4D4408108011090000000408C001040000000500000006000000090000000110801103000000010B4D44080000000600000009000000000F878D0907800104128A40FB0280010613D7B0FD0B4D44000000000510804D010B4D43F80000000510801103000000010DE7CA080000000500000008000000000000000313D7ECFD000000030B4D440010801101000000000B4D43F80000000910801103000000010DE7CA080E5FD90900000004000000070000000910804D010B4D43F810804D030DE7CA08000000050E60150900000009000000040000000110801103000000010DE7CA080E5FD909000000040640010412FF70FB0000000700000002000000090E6015090640010412FF70FB000000090000000200000009000000040000000000000002128A7CFB00000002028001060000000913D7ECFD000000030B4D44000000000910804D010B4D43F800000009000000090000000000000004"
theorem small_8852095_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8852095_left_root small_8852095_left_fuel small_8852095_left_count small_8852095_left_encoded = true := by
  decide +kernel
theorem small_8852095_left_covered : CoveredBy scale carrier boxes small_8852095_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8852095_left_root small_8852095_left_fuel small_8852095_left_count small_8852095_left_encoded small_8852095_left_checked

theorem cover_8852095 : CoveredBy scale carrier boxes root_8852095 := by
  apply coveredBy_split_literal root_8852095 small_8852095_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8852443 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8852095_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8852443
#print axioms cover_8852095

def root_8852090 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8852090_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8852090_right_fuel : Nat := 1
def small_8852090_right_count : Nat := 1
def small_8852090_right_encoded : String := "00000004"
theorem small_8852090_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8852090_right_root small_8852090_right_fuel small_8852090_right_count small_8852090_right_encoded = true := by
  decide +kernel
theorem small_8852090_right_covered : CoveredBy scale carrier boxes small_8852090_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8852090_right_root small_8852090_right_fuel small_8852090_right_count small_8852090_right_encoded small_8852090_right_checked

theorem cover_8852090 : CoveredBy scale carrier boxes root_8852090 := by
  apply coveredBy_split_literal root_8852090 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8852095 small_8852090_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8852095
  · exact small_8852090_right_covered
#print axioms cover_8852090

def root_8851636 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8851636_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8851636_left_fuel : Nat := 25
def small_8851636_left_count : Nat := 221
def small_8851636_left_encoded : String := "0F34D108000000040C9A87000F875101000000000C9A86F80F878D0307800104128A40FB028001060000000513D7ECFD000000030AD357890000000810D13D080B4D44000000000510804D010DE7C9F8000000050000000800000000000000040000000200000009000000010F8751030000000107800104128A40FB028001060000000813D7ECFD000000030AD357890000000810D13D080B4D44000000000810804D010B4D43F80000000800000008000000000000000400000002000000080F878D010C9A86F80F878D0307800104128A40FB0280010613D7B0FD0AD357890000000710D13D080DE7CA00000000050E6015010000000700000000000000040000000313D7ECFD000000030AD357890000000710D13D080DE7CA000E5FD901000000000DE7C9F8000000070E5FD903000000010640010412FF70FB03C0010600000005000000070000000200000007000000070000000400000002128A7CFB00000002028001060000000800000007000000010F8751030000000107800104128A40FB0280010613D7B0FD0AD357890000000810D13D080DE7CA00000000080E6015010000000800000000000000040000000313D7ECFD000000030AD3578910D10108000000040DE7CA00000000080000000710D13D080DE7CA000E5FD901000000000B4D43F810804D030640010412FF70FB03C001060000000813A54CFD000000030BE879C9000000071011AD080D412880000000080EFA4D0100000007000000000000000400000002000000090000000110801103000000010640010412FF70FB03C001060000000813A54CFD000000030BE879C9000000081011AD080D412880000000080EFA4D0100000008000000000000000400000002000000080E6015010B4D43F810804D030640010400000007000000070000000110801103000000010640010412FF70FB03C0010613A510FD0BE879C9000000081011AD080DAED8810000000800000008000000040000000313A54CFD000000030BE879C9000000071011AD080DAED881000000070E9661000AA6A278000000070000000800000000000000040000000212FFACFB0000000203C001060000000800000007000000000000000400000002128A7CFB00000002028001060000000813D7ECFD000000030AD357890000000810D13D080DE7CA000E5FD90100000000000000080E60150100000007000000000000000400000000"
theorem small_8851636_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8851636_left_root small_8851636_left_fuel small_8851636_left_count small_8851636_left_encoded = true := by
  decide +kernel
theorem small_8851636_left_covered : CoveredBy scale carrier boxes small_8851636_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8851636_left_root small_8851636_left_fuel small_8851636_left_count small_8851636_left_encoded small_8851636_left_checked

theorem cover_8851636 : CoveredBy scale carrier boxes root_8851636 := by
  apply coveredBy_split_literal root_8851636 small_8851636_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8852090 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8851636_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8852090
#print axioms cover_8851636

def root_8851630 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8851630_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8851630_left_fuel : Nat := 1
def small_8851630_left_count : Nat := 1
def small_8851630_left_encoded : String := "00000001"
theorem small_8851630_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8851630_left_root small_8851630_left_fuel small_8851630_left_count small_8851630_left_encoded = true := by
  decide +kernel
theorem small_8851630_left_covered : CoveredBy scale carrier boxes small_8851630_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8851630_left_root small_8851630_left_fuel small_8851630_left_count small_8851630_left_encoded small_8851630_left_checked

theorem cover_8851630 : CoveredBy scale carrier boxes root_8851630 := by
  apply coveredBy_split_literal root_8851630 small_8851630_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8851636 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_8851630_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8851636
#print axioms cover_8851630

def root_8851558 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8851558_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8851558_left_fuel : Nat := 11
def small_8851558_left_count : Nat := 35
def small_8851558_left_encoded : String := "0F34D0F80CFD9C090F34D108000000040C9A87000F875101000000000780010400000005128A7CFB000000020280010600000005000000070F878D0100000007000000000F350D080C9A8700000000050F878D010C9A8708000000050F878D090780010400000005128A7CFB0000000202800106000000050000000700000004000000000000000400000001"
theorem small_8851558_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8851558_left_root small_8851558_left_fuel small_8851558_left_count small_8851558_left_encoded = true := by
  decide +kernel
theorem small_8851558_left_covered : CoveredBy scale carrier boxes small_8851558_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8851558_left_root small_8851558_left_fuel small_8851558_left_count small_8851558_left_encoded small_8851558_left_checked

theorem cover_8851558 : CoveredBy scale carrier boxes root_8851558 := by
  apply coveredBy_split_literal root_8851558 small_8851558_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8851630 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8851558_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8851630
#print axioms cover_8851558

def root_8851553 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8851553_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8851553_right_fuel : Nat := 1
def small_8851553_right_count : Nat := 1
def small_8851553_right_encoded : String := "00000000"
theorem small_8851553_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8851553_right_root small_8851553_right_fuel small_8851553_right_count small_8851553_right_encoded = true := by
  decide +kernel
theorem small_8851553_right_covered : CoveredBy scale carrier boxes small_8851553_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8851553_right_root small_8851553_right_fuel small_8851553_right_count small_8851553_right_encoded small_8851553_right_checked

theorem cover_8851553 : CoveredBy scale carrier boxes root_8851553 := by
  apply coveredBy_split_literal root_8851553 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8851558 small_8851553_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8851558
  · exact small_8851553_right_covered
#print axioms cover_8851553

def root_8850555 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8850555_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8850555_left_fuel : Nat := 33
def small_8850555_left_count : Nat := 473
def small_8850555_left_encoded : String := "0F34D100000000000CFD9C030F34D0F80CFD9C09000000070F350D080C9A87080F875109000000040000000A0F878D09000000070000000400000004000000010F350CF8000000010CFD9C090F34D108000000040C9A86F8000000070F8751030000000107800104128A40FB0280010613D7B0FD0AD357810000000710D13D000AD357890000000710D13D080B4D43F80000000710801103000000010640010412FF70FB0000000A000000020000000A00000004000000000000000313D7ECFD000000030AD35781000000070000000700000002128A7CFB000000020280010600000007000000070F350D080C9A86F80F878D030C9A87080F8751090000000407800104128A40FB028001060000000513D7ECFD000000030AD357810000000A10D13D000DE7C9F8000000050E5FD903000000010000000A00000000000000020000000A0F878D0907800104128A40FB028001060000000A13D7ECFD000000030AD357810000000710D13D000DE7C9F8000000070E5FD903000000010DE7CA080E5FD909000000040000000A000000070000000000000002128A7CFB00000002028001060000000A0000000700000004000000010F875103000000010C9A87080F8751090000000407800104128A40FB0280010613D7B0FD0AD357810000000A10D13D000000000A000000000000000313D7ECFD000000030AD3578110D10100000000000000000A10D13D000B4D43F810804D030B4D4408108011090000000406400104000000050000000A10804D090640010412FF70FB0000000A000000020000000A000000040000000110801103000000010B4D440810801109000000040640010412FF70FB03C001060000000A000000080000000212FFACFB0000000203C00106000000060000000610804D090640010412FF70FB03C001060000000A13A54CFD000000030BE879C10000000A1011AD000AA6A2780000000A10ED7103000000010BF3E588000000081009290905A00104000000080000000600000004000000000000000212FFACFB0000000203C001060000000A13A54CFD000000030BE879C1000000061011AD000AA6A2780000000A0000000600000000000000040000000000000002128A7CFB000000020280010613D7B0FD0000000A0000000313D7ECFD000000030AD3578110D10100000000000000000A10D13D000B4D43F810804D030B4D440810801109000000040000000A0000000A0000000110801103000000010B4D440810801109000000040000000610804D0908C0010411FBE8FB03C001060000000600000006000000020000000600000004000000000F878D0907800104128A40FB0280010613D7B0FD0AD357810000000A10D13D000B4D43F80000000A10801103000000010DE7CA080E5FD909000000040000000A0000000A000000000000000313D7ECFD000000030AD3578110D10100000000000B4D43F80000000710801103000000010DE7CA080E5FD909000000040000000A0000000710D13D000B4D43F810804D030DE7CA080E5FD909000000040640010412FF70FB0000000A000000020000000A0E601509064001040000000700000007000000040000000110801103000000010DE7CA080E5FD909000000040640010412FF70FB03C001060000000A13A54CFD000000030BE879C110117100000000000000000A1011AD000AA6A27810EDAD030D4128880EFA1109000000040000000A0000000A0000000110ED7103000000010D4128880EFA11090000000405A001040000000A0000000A0EFA4D0905A00104133134FB0000000A000000020000000A00000004000000000000000212FFACFB0000000203C001060000000A13A54CFD000000030BE879C10000000A1011AD000AA6A27810EDAD030000000A0000000110ED7103000000010D4128880EFA110900000004000000060EFA4D0906E001040000000A0000000A00000004000000000E6015090640010412FF70FB03C0010613A510FD0BE879C10000000A1011AD000DAED8890E96250800000004000000070000000A000000000000000313A54CFD000000030BE879C1000000071011AD000DAED889000000070E9661080AA6A2780000000710ED71030000000105A00104133134FB046001060000000A0000000700000002133170FB000000020000000700000004000000000000000212FFACFB0000000203C0010613A510FD0BE879C1000000071011AD000000000A000000000000000300000007000000040000000000000002128A7CFB000000020280010613D7B0FD0AD357810000000A10D13D000B4D43F80000000A10801103000000010DE7CA080E5FD909000000040000000A0000000A000000000000000313D7ECFD000000030AD3578110D10100000000000000000710D13D000B4D43F810804D030DE7CA080E5FD9090000000408C001040000000700000007000000070000000110801103000000010DE7CA080E5FD9090000000408C0010411FBE8FB03C001060000000A13A54CFD000000030BE879C1000000071011AD000AA6A2780000000700000006000000000000000211FC24FB0000000203C0010600000006000000050E6015090000000700000004000000000000000400000004"
theorem small_8850555_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8850555_left_root small_8850555_left_fuel small_8850555_left_count small_8850555_left_encoded = true := by
  decide +kernel
theorem small_8850555_left_covered : CoveredBy scale carrier boxes small_8850555_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8850555_left_root small_8850555_left_fuel small_8850555_left_count small_8850555_left_encoded small_8850555_left_checked

theorem cover_8850555 : CoveredBy scale carrier boxes root_8850555 := by
  apply coveredBy_split_literal root_8850555 small_8850555_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8851553 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8850555_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8851553
#print axioms cover_8850555

def root_8850550 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8850550_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8850550_right_fuel : Nat := 1
def small_8850550_right_count : Nat := 1
def small_8850550_right_encoded : String := "00000003"
theorem small_8850550_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8850550_right_root small_8850550_right_fuel small_8850550_right_count small_8850550_right_encoded = true := by
  decide +kernel
theorem small_8850550_right_covered : CoveredBy scale carrier boxes small_8850550_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8850550_right_root small_8850550_right_fuel small_8850550_right_count small_8850550_right_encoded small_8850550_right_checked

theorem cover_8850550 : CoveredBy scale carrier boxes root_8850550 := by
  apply coveredBy_split_literal root_8850550 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8850555 small_8850550_right_root coord3 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8850555
  · exact small_8850550_right_covered
#print axioms cover_8850550

def root_8858822 : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8858822 : CoveredBy scale carrier boxes root_8858822 := by
  apply coveredBy_split_literal root_8858822 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3310.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3311.root coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3310.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3311.covered
#print axioms cover_8858822

def root_8858816 : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8858816_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8858816_left_fuel : Nat := 1
def small_8858816_left_count : Nat := 1
def small_8858816_left_encoded : String := "00000000"
theorem small_8858816_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8858816_left_root small_8858816_left_fuel small_8858816_left_count small_8858816_left_encoded = true := by
  decide +kernel
theorem small_8858816_left_covered : CoveredBy scale carrier boxes small_8858816_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8858816_left_root small_8858816_left_fuel small_8858816_left_count small_8858816_left_encoded small_8858816_left_checked

theorem cover_8858816 : CoveredBy scale carrier boxes root_8858816 := by
  apply coveredBy_split_literal root_8858816 small_8858816_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8858822 coord0 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_8858816_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8858822
#print axioms cover_8858816

def root_8867450 : ZRayBox := fun j => (#[⟨⟨(10572672), (11664704)⟩, ⟨(12058112), (13027072)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8867450 : CoveredBy scale carrier boxes root_8867450 := by
  apply coveredBy_split_literal root_8867450 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3315.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3316.root coord4 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3315.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3316.covered
#print axioms cover_8867450

def root_8867444 : ZRayBox := fun j => (#[⟨⟨(10572672), (11664704)⟩, ⟨(12058112), (13027072)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8867444_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (11664704)⟩, ⟨(12058112), (13027072)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (13841408)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8867444_left_fuel : Nat := 1
def small_8867444_left_count : Nat := 1
def small_8867444_left_encoded : String := "00000001"
theorem small_8867444_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8867444_left_root small_8867444_left_fuel small_8867444_left_count small_8867444_left_encoded = true := by
  decide +kernel
theorem small_8867444_left_covered : CoveredBy scale carrier boxes small_8867444_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8867444_left_root small_8867444_left_fuel small_8867444_left_count small_8867444_left_encoded small_8867444_left_checked

theorem cover_8867444 : CoveredBy scale carrier boxes root_8867444 := by
  apply coveredBy_split_literal root_8867444 small_8867444_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8867450 coord1 true (13841408)
  · decide +kernel
  · decide +kernel
  · exact small_8867444_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8867450
#print axioms cover_8867444

def root_8865324 : ZRayBox := fun j => (#[⟨⟨(10572672), (11664704)⟩, ⟨(12058112), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8865324 : CoveredBy scale carrier boxes root_8865324 := by
  apply coveredBy_split_literal root_8865324 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3314.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8867444 coord1 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3314.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8867444
#print axioms cover_8865324

def root_8865318 : ZRayBox := fun j => (#[⟨⟨(10572672), (11664704)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8865318_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (11664704)⟩, ⟨(10897344), (12058112)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8865318_left_fuel : Nat := 1
def small_8865318_left_count : Nat := 1
def small_8865318_left_encoded : String := "00000000"
theorem small_8865318_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8865318_left_root small_8865318_left_fuel small_8865318_left_count small_8865318_left_encoded = true := by
  decide +kernel
theorem small_8865318_left_covered : CoveredBy scale carrier boxes small_8865318_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8865318_left_root small_8865318_left_fuel small_8865318_left_count small_8865318_left_encoded small_8865318_left_checked

theorem cover_8865318 : CoveredBy scale carrier boxes root_8865318 := by
  apply coveredBy_split_literal root_8865318 small_8865318_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8865324 coord0 true (12058112)
  · decide +kernel
  · decide +kernel
  · exact small_8865318_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8865324
#print axioms cover_8865318

def root_8865317 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8865317 : CoveredBy scale carrier boxes root_8865317 := by
  apply coveredBy_split_literal root_8865317 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8865318 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3317.root coord0 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8865318
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3317.covered
#print axioms cover_8865317

def root_8865312 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8865312_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-15552512), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8865312_right_fuel : Nat := 1
def small_8865312_right_count : Nat := 1
def small_8865312_right_encoded : String := "00000003"
theorem small_8865312_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8865312_right_root small_8865312_right_fuel small_8865312_right_count small_8865312_right_encoded = true := by
  decide +kernel
theorem small_8865312_right_covered : CoveredBy scale carrier boxes small_8865312_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8865312_right_root small_8865312_right_fuel small_8865312_right_count small_8865312_right_encoded small_8865312_right_checked

theorem cover_8865312 : CoveredBy scale carrier boxes root_8865312 := by
  apply coveredBy_split_literal root_8865312 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8865317 small_8865312_right_root coord3 true (-15552512)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8865317
  · exact small_8865312_right_covered
#print axioms cover_8865312

def root_8865311 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8865311_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8865311_right_fuel : Nat := 20
def small_8865311_right_count : Nat := 207
def small_8865311_right_encoded : String := "128A7CFD000000030DE7CA000E5FD901000000000B4D43F810804D030DE7CA080E5FD909000000040640010412FF70FB08C0010611FBE8FD0D4128800EFA1101000000000BF3E578000000081008ED0300000001000000080000000800000003000000080000000212FFACFB0000000208C0010611FBE8FD0D4128800EFA1101000000000BF3E578100929030D412888000000080EFA4D090000000700000004000000011008ED03000000010D412888000000080EFA4D0906E001040000000A12C820FB0000000200000007000000040EFA4D010BF3E578000000071008ED03000000010D4128880000000800000008000000000000000311FC24FD00000003000000080E6015090640010412FF70FB08C0010611FBE8FD0DAED889000000070E9661080D4128800EFA1101000000000BF3E578000000071008ED030000000105A001040000000A0000000700000007000000040000000311FC24FD00000003000000070000000212FFACFB0000000200000007000000040000000110801103000000010DE7CA080E5FD909000000040640010412FF70FB08C0010611FBE8FD0D4128800EFA1101000000000AA6A278000000080000000A0EFA4D01000000080000000000000003000000080000000212FFACFB0000000208C0010611FBE8FD0D4128800EFA1101000000000AA6A27810EDAD030D4128880000000A0000000500000001000000050EFA4D010AA6A27810EDAD030D412888000000080000000500000001000000050000000000000003000000050E6015090640010412FF70FB08C0010611FBE8FD0DAED8890E962508000000040D4128800EFA1101000000000000000A000000050E9661080D4128800EFA1101000000000000000A0EFA4D010AA6A27810EDAD0305A0010400000007000000050000000100000005000000000000000400000003000000050000000200000005000000040E6015010B4D43F810804D030DE7CA080E5FD909000000040640010412FF70FB000000080000000212FFACFB00000002000000070E60150900000007000000040000000110801103000000010DE7CA080E5FD909000000040640010412FF70FB08C0010611FBE8FD00000008000000030000000500000002000000050000000500000000"
theorem small_8865311_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8865311_right_root small_8865311_right_fuel small_8865311_right_count small_8865311_right_encoded = true := by
  decide +kernel
theorem small_8865311_right_covered : CoveredBy scale carrier boxes small_8865311_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8865311_right_root small_8865311_right_fuel small_8865311_right_count small_8865311_right_encoded small_8865311_right_checked

theorem cover_8865311 : CoveredBy scale carrier boxes root_8865311 := by
  apply coveredBy_split_literal root_8865311 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8865312 small_8865311_right_root coord3 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8865312
  · exact small_8865311_right_covered
#print axioms cover_8865311

def root_8865306 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8865306_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-15552512), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8865306_right_fuel : Nat := 1
def small_8865306_right_count : Nat := 1
def small_8865306_right_encoded : String := "00000002"
theorem small_8865306_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8865306_right_root small_8865306_right_fuel small_8865306_right_count small_8865306_right_encoded = true := by
  decide +kernel
theorem small_8865306_right_covered : CoveredBy scale carrier boxes small_8865306_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8865306_right_root small_8865306_right_fuel small_8865306_right_count small_8865306_right_encoded small_8865306_right_checked

theorem cover_8865306 : CoveredBy scale carrier boxes root_8865306 := by
  apply coveredBy_split_literal root_8865306 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8865311 small_8865306_right_root coord2 true (-15552512)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8865311
  · exact small_8865306_right_covered
#print axioms cover_8865306

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212
