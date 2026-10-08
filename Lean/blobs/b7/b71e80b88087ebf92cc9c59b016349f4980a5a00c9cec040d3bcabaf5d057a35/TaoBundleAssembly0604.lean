import TaoBundleAssembly0602
import TaoBundleAssembly0603
import TaoBundleChunkBatch0823
import TaoBundleChunkBatch0825
import TaoBundleChunkBatch0826
import TaoBundleChunkBatch0827
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604
def root_8804871 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804871_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804871_left_fuel : Nat := 1
def small_8804871_left_count : Nat := 1
def small_8804871_left_encoded : String := "00000002"
theorem small_8804871_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8804871_left_root small_8804871_left_fuel small_8804871_left_count small_8804871_left_encoded = true := by
  decide +kernel
theorem small_8804871_left_covered : CoveredBy scale carrier boxes small_8804871_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8804871_left_root small_8804871_left_fuel small_8804871_left_count small_8804871_left_encoded small_8804871_left_checked

theorem cover_8804871 : CoveredBy scale carrier boxes root_8804871 := by
  apply coveredBy_split_literal root_8804871 small_8804871_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0603.root_8804877 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8804871_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0603.cover_8804877
#print axioms cover_8804871

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
  apply coveredBy_split_literal root_8804681 small_8804681_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8804871 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8804681_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8804871
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
  apply coveredBy_split_literal root_8804675 small_8804675_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8804681 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8804675_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8804681
#print axioms cover_8804675

def root_8791595 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8791595 : CoveredBy scale carrier boxes root_8791595 := by
  apply coveredBy_split_literal root_8791595 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.root_8791596 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8804675 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.cover_8791596
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8804675
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
  apply coveredBy_split_literal root_8791590 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8791595 small_8791590_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8791595
  · exact small_8791590_right_covered
#print axioms cover_8791590

def root_8788722 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8788722 : CoveredBy scale carrier boxes root_8788722 := by
  apply coveredBy_split_literal root_8788722 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3290.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8791590 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3290.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8791590
#print axioms cover_8788722

def root_8786594 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8786594 : CoveredBy scale carrier boxes root_8786594 := by
  apply coveredBy_split_literal root_8786594 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3289.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8788722 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3289.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8788722
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
  apply coveredBy_split_literal root_8828444 small_8828444_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8828450 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8828444_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8828450
#print axioms cover_8828444

def root_8826420 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8826420 : CoveredBy scale carrier boxes root_8826420 := by
  apply coveredBy_split_literal root_8826420 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3301.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8828444 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3301.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8828444
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
  apply coveredBy_split_literal root_8826415 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8826420 small_8826415_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8826420
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
  apply coveredBy_split_literal root_8831942 small_8831942_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8831948 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8831942_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8831948
#print axioms cover_8831942

def root_8826414 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8826414 : CoveredBy scale carrier boxes root_8826414 := by
  apply coveredBy_split_literal root_8826414 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8826415 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8831942 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8826415
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8831942
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
  apply coveredBy_split_literal root_8826409 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8826414 small_8826409_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8826414
  · exact small_8826409_right_covered
#print axioms cover_8826409

def root_8826408 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8826408 : CoveredBy scale carrier boxes root_8826408 := by
  apply coveredBy_split_literal root_8826408 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8826409 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3304.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8826409
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
  apply coveredBy_split_literal root_8826402 small_8826402_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8826408 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8826402_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8826408
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
  apply coveredBy_split_literal root_8847168 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8847173 small_8847168_right_root coord4 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8847173
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
  apply coveredBy_split_literal root_8846994 small_8846994_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8847168 coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8846994_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8847168
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
  apply coveredBy_split_literal root_8846988 small_8846988_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8846994 coord1 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_8846988_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8846994
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
  apply coveredBy_split_literal root_8846688 small_8846688_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8846988 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8846688_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8846988
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
  apply coveredBy_split_literal root_8846683 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8846688 small_8846683_right_root coord0 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8846688
  · exact small_8846683_right_covered
#print axioms cover_8846683

def root_8845617 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8845617 : CoveredBy scale carrier boxes root_8845617 := by
  apply coveredBy_split_literal root_8845617 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3307.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8846683 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3307.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8846683
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
  apply coveredBy_split_literal root_8845612 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8845617 small_8845612_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8845617
  · exact small_8845612_right_covered
#print axioms cover_8845612

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604
