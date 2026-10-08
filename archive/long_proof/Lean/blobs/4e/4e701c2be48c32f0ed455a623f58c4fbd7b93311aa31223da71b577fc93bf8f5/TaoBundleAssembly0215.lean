import TaoBundleAssembly0214
import TaoBundleChunkBatch0835
import TaoBundleChunkBatch0837
import TaoBundleChunkBatch0838
import TaoBundleChunkBatch0839
import TaoBundleChunkBatch0840
import TaoBundleChunkBatch0841
import TaoBundleChunkBatch0842
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215
def root_8931202 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8931202_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8931202_right_fuel : Nat := 26
def small_8931202_right_count : Nat := 449
def small_8931202_right_encoded : String := "1151E8FD0A0000FE1152250908A91303120700F808A913050000000512073D0408A913090000000512073CFE0000000405000100135D450100000000050000FC135D80FD0000000304548A03000000051386ACF8000000010CFD9C05000000050F350D040CFD9C09000000050F350CFE00000004000000050000000200000005135D8101050000FC00000005135D44FD000000050000000300000000000000020000000112073CF80000000108A91305120701040000000208A913090000000512073CFE0000000405000100135D450100000000050000FC135D80FD000000030CFD9C03000000050F350CF80000000104548A05000000051386AD040CFD9C09000000050F350CFE000000040C9A86F8000000090F875103000000010000000900000002135D44FD0CFD9C03000000050F350CF80000000104548A05000000051386AD040CFD9C09000000050F350CFE00000004000000090000000200000003135D8101050000FC135D80FD000000030CFD9C03000000050F350CF80000000104548A05000000051386AD040CFD9C09000000050F350CFE000000040C9A86F80F878D0300000005000000010F875103000000010C9A86FE0F878D0900000005000000040F875109000000040780010000000008128A7D01000000080000000000000002135D44FD0CFD9C030F34D0F800000005000000010F350CF80000000104548A0513867104000000020CFD9C09000000050F350CFE000000040C9A86F8000000050F875103000000010C9A86FE000000050F87510900000004000000091386AD040CFD9C09000000050F350CFE000000040C9A86F80F878D030C9A86FE0000000500000009000000010F875103000000010C9A86FE0F878D09078001000000000500000006000000040000000900000002000000030000000012073D0408A91309120700FE05000100135D450100000000050000FC0000000600000005000000060000000412073CFE0000000405000100135D450100000000050000FC135D80FD000000030CFD9C030F34D0F80CFD9C05000000050F350D040CFD9C09000000050F350CFE000000040000000900000002000000010F350CF8000000010CFD9C050F34D104000000020CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86F8000000090F87510300000001000000080F350D040CFD9C09000000060F350CFE000000040000000800000002135D44FD0CFD9C030F34D0F80CFD9C05000000050F350D040CFD9C09000000050000000900000002000000010F350CF8000000010CFD9C050F34D104000000020CFD9C090F34D0FE00000005000000040F350CFE00000004000000090F350D040CFD9C09000000060F350CFE00000004000000080000000200000003135D8101050000FC135D80FD000000030CFD9C030F34D0F80CFD9C050000000500000006000000010F350CF8000000010CFD9C050F34D104000000020CFD9C09000000060F350CFE000000040C9A86F80F878D030C9A86FE000000060F8751090000000400000008000000010F875103000000010000000600000006135D44FD0CFD9C030F34D0F80CFD9C050000000500000006000000010F350CF8000000010CFD9C050F34D104000000020CFD9C09000000060F350CFE000000040C9A86F80F878D030C9A86FE0000000600000009000000010F875103000000010C9A86FE000000060000000800000006000000030000000000000002000000041151E9090000000408A91303120700F808A9130512070104000000020500010000000005135D8101050000FC00000005135D44FD00000009000000030000000012073D040500010000000009135D8101050000FC135D80FD00000003050000FE135D810904548A03000000051386ACF8000000010CFD9C0500000005000000070000000400000009135D44FD050000FE00000009000000090000000300000000000000020000000112073CF80000000108A9130512070104000000020500010000000009135D8101050000FC135D80FD00000003050000FE135D81090CFD9C030F34D0F800000009000000010F350CF80000000104548A05138671040000000200000009000000090000000400000009135D44FD050000FE135D81090CFD9C030F34D0F80000000900000001000000090000000400000009000000030000000012073D0405000100135D450100000000050000FC135D80FD00000003050000FE135D81090CFD9C030F34D0F80000000900000001000000080000000400000008135D44FD0000000900000003135D8101050000FC135D80FD00000003050000FE135D81090CFD9C030F34D0F80CFD9C050F34D104000000020000000900000007000000010F350CF800000001000000080000000400000008135D44FD050000FE135D81090CFD9C030F34D0F800000009000000010F350CF80000000100000008000000040000000800000003000000000000000200000003"
theorem small_8931202_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8931202_right_root small_8931202_right_fuel small_8931202_right_count small_8931202_right_encoded = true := by
  decide +kernel
theorem small_8931202_right_covered : CoveredBy scale carrier boxes small_8931202_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8931202_right_root small_8931202_right_fuel small_8931202_right_count small_8931202_right_encoded small_8931202_right_checked

theorem cover_8931202 : CoveredBy scale carrier boxes root_8931202 := by
  apply coveredBy_split_literal root_8931202 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8931203 small_8931202_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8931203
  · exact small_8931202_right_covered
#print axioms cover_8931202

def root_8931197 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8931197_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8931197_right_fuel : Nat := 1
def small_8931197_right_count : Nat := 1
def small_8931197_right_encoded : String := "00000002"
theorem small_8931197_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8931197_right_root small_8931197_right_fuel small_8931197_right_count small_8931197_right_encoded = true := by
  decide +kernel
theorem small_8931197_right_covered : CoveredBy scale carrier boxes small_8931197_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8931197_right_root small_8931197_right_fuel small_8931197_right_count small_8931197_right_encoded small_8931197_right_checked

theorem cover_8931197 : CoveredBy scale carrier boxes root_8931197 := by
  apply coveredBy_split_literal root_8931197 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8931202 small_8931197_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8931202
  · exact small_8931197_right_covered
#print axioms cover_8931197

def root_8929317 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8929317 : CoveredBy scale carrier boxes root_8929317 := by
  apply coveredBy_split_literal root_8929317 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3340.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8931197 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3340.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8931197
#print axioms cover_8929317

def root_8929312 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8929312_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8929312_right_fuel : Nat := 1
def small_8929312_right_count : Nat := 1
def small_8929312_right_encoded : String := "00000001"
theorem small_8929312_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8929312_right_root small_8929312_right_fuel small_8929312_right_count small_8929312_right_encoded = true := by
  decide +kernel
theorem small_8929312_right_covered : CoveredBy scale carrier boxes small_8929312_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8929312_right_root small_8929312_right_fuel small_8929312_right_count small_8929312_right_encoded small_8929312_right_checked

theorem cover_8929312 : CoveredBy scale carrier boxes root_8929312 := by
  apply coveredBy_split_literal root_8929312 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8929317 small_8929312_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8929317
  · exact small_8929312_right_covered
#print axioms cover_8929312

def root_8954456 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8954456 : CoveredBy scale carrier boxes root_8954456 := by
  apply coveredBy_split_literal root_8954456 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3348.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3349.root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3348.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3349.covered
#print axioms cover_8954456

def root_8954450 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954450_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954450_left_fuel : Nat := 1
def small_8954450_left_count : Nat := 1
def small_8954450_left_encoded : String := "00000002"
theorem small_8954450_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8954450_left_root small_8954450_left_fuel small_8954450_left_count small_8954450_left_encoded = true := by
  decide +kernel
theorem small_8954450_left_covered : CoveredBy scale carrier boxes small_8954450_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8954450_left_root small_8954450_left_fuel small_8954450_left_count small_8954450_left_encoded small_8954450_left_checked

theorem cover_8954450 : CoveredBy scale carrier boxes root_8954450 := by
  apply coveredBy_split_literal root_8954450 small_8954450_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8954456 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8954450_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8954456
#print axioms cover_8954450

def root_8954449 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954449_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954449_right_fuel : Nat := 18
def small_8954449_right_count : Nat := 155
def small_8954449_right_encoded : String := "12073D0408A912FD12073CFC0000000308A91309120700FE05000100135D450100000000050000F80000000600000006000000060000000412073CFE0000000405000100135D450100000000050000F8135D81030CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE00000004000000080F34D0FC0CFD9C090000000A0F350CFE000000040C9A86FE0F878D090000000A000000040F8751090000000400000008000000030F350D040CFD9BFD0F350CFC000000030CFD9C0900000006000000080F34D0FC0000000A000000030000000200000001135D4503000000010CFD9C050F34D104000000020CFD9BFD0F350CFC00000003000000080000000A0F350D040CFD9BFD000000080000000A00000002135D8101050000F8135D81030CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9C0900000006000000060F34D0FC00000006000000030F350D04000000060000000200000001135D4503000000010CFD9C050F34D104000000020CFD9BFD000000060F34D0FC00000006000000030F350D04000000060000000200000000120700FC08A91309120700FE050001000000000A000000060000000412073CFE0000000405000100135D450100000000050000F8135D81030CFD9C050000000A00000005000000010000000A135D8101050000F8135D81030CFD9C050F34D10400000002045489FD00000006138670FC0CFD9C090000000600000005000000030F350D04000000060000000200000001135D4503000000010CFD9C050F34D10400000002045489FD000000060000000500000005000000000000000300000002"
theorem small_8954449_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8954449_right_root small_8954449_right_fuel small_8954449_right_count small_8954449_right_encoded = true := by
  decide +kernel
theorem small_8954449_right_covered : CoveredBy scale carrier boxes small_8954449_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8954449_right_root small_8954449_right_fuel small_8954449_right_count small_8954449_right_encoded small_8954449_right_checked

theorem cover_8954449 : CoveredBy scale carrier boxes root_8954449 := by
  apply coveredBy_split_literal root_8954449 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8954450 small_8954449_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8954450
  · exact small_8954449_right_covered
#print axioms cover_8954449

def root_8954444 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954444_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954444_right_fuel : Nat := 1
def small_8954444_right_count : Nat := 1
def small_8954444_right_encoded : String := "00000004"
theorem small_8954444_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8954444_right_root small_8954444_right_fuel small_8954444_right_count small_8954444_right_encoded = true := by
  decide +kernel
theorem small_8954444_right_covered : CoveredBy scale carrier boxes small_8954444_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8954444_right_root small_8954444_right_fuel small_8954444_right_count small_8954444_right_encoded small_8954444_right_checked

theorem cover_8954444 : CoveredBy scale carrier boxes root_8954444 := by
  apply coveredBy_split_literal root_8954444 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8954449 small_8954444_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8954449
  · exact small_8954444_right_covered
#print axioms cover_8954444

def root_8954443 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8954443 : CoveredBy scale carrier boxes root_8954443 := by
  apply coveredBy_split_literal root_8954443 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8954444 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3350.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8954444
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3350.covered
#print axioms cover_8954443

def root_8954437 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954437_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954437_left_fuel : Nat := 1
def small_8954437_left_count : Nat := 1
def small_8954437_left_encoded : String := "00000003"
theorem small_8954437_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8954437_left_root small_8954437_left_fuel small_8954437_left_count small_8954437_left_encoded = true := by
  decide +kernel
theorem small_8954437_left_covered : CoveredBy scale carrier boxes small_8954437_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8954437_left_root small_8954437_left_fuel small_8954437_left_count small_8954437_left_encoded small_8954437_left_checked

theorem cover_8954437 : CoveredBy scale carrier boxes root_8954437 := by
  apply coveredBy_split_literal root_8954437 small_8954437_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8954443 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8954437_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8954443
#print axioms cover_8954437

def root_8954436 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954436_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954436_right_fuel : Nat := 27
def small_8954436_right_count : Nat := 363
def small_8954436_right_encoded : String := "1151E8FD0A0000FE1152250908A91305120701040000000208A91309120700FE0500010000000005135D8101050000F800000005135D450300000001050000FC00000005135D44FD0000000600000003000000000000000412073CFE0000000405000100135D450100000000050000F8135D8103050000FC135D80FD0000000304548A0513867104000000020CFD9C09000000050F350CFE000000040C9A86FE000000070F87510900000004000000071386AD040CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE0F878D09028001000000000800000008000000040000000800000002135D44FD04548A0513867104000000020CFD9C0900000005000000071386AD040CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE0F878D090280010000000007000000080000000400000008000000020000000300000001135D450300000001050000FC135D80FD0000000304548A05000000071386AD040CFD9C09000000080000000800000002135D44FD04548A05000000071386AD040CFD9C0900000008000000070000000200000003135D8101050000F8135D8103050000FC135D80FD0000000304548A0513867104000000020CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE0F878D090780010000000005128A7D010000000500000000000000040F8751090000000407800100128A410100000000078000F80000000900000007128A7D01078000F8128A7D03078000FC00000005000000080000000100000008000000001386AD040CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FE0F878D09078001000000000800000006000000040000000800000002135D44FD04548A0513867104000000020CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE0F878D0907800100128A41010000000000000007128A7D01078000F800000005128A4103000000010000000700000000000000040F8751090000000407800100128A410100000000078000F80000000900000007128A7D01078000F8128A7D03028000FC0000000813D7B0FD022A45850000000700000008000000030000000100000008000000001386AD040CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FE0F878D090780010000000008128A7D0100000006000000000000000400000008000000020000000300000001135D450300000001050000FC135D80FD0000000304548A0513867104000000020CFD9C090F34D0FE00000007000000040F350CFE000000040C9A86FE00000007000000081386AD040CFD9C09000000080000000800000002135D44FD04548A0513867104000000020CFD9C090F34D0FE0000000700000004000000071386AD040CFD9C09000000080000000800000002000000030000000012073D0408A91309120700FE000000060000000412073CFE0000000405000100135D450100000000050000F8135D8103050000FC135D80FD000000030CFD9C050F34D104000000020CFD9C090F34D0FE00000006000000040000000800000008135D44FD0CFD9C050F34D104000000020CFD9C090000000800000008000000080000000300000001135D45030000000100000008135D8101050000F8135D8103050000FC135D80FD000000030CFD9C050F34D104000000020CFD9C09000000060000000600000006135D44FD0CFD9C050F34D104000000020CFD9C09000000060F350CFE0000000400000008000000060000000300000001135D450300000001050000FC00000008000000080000000000000002000000041151E9090000000408A91305120701040000000205000100135D450100000000050000F80000000900000008135D8101050000F8135D8103050000FC00000008135D44FD050000FE135D810904548A05138671040000000200000009000000080000000400000008000000030000000100000008000000000000000800000003"
theorem small_8954436_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8954436_right_root small_8954436_right_fuel small_8954436_right_count small_8954436_right_encoded = true := by
  decide +kernel
theorem small_8954436_right_covered : CoveredBy scale carrier boxes small_8954436_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8954436_right_root small_8954436_right_fuel small_8954436_right_count small_8954436_right_encoded small_8954436_right_checked

theorem cover_8954436 : CoveredBy scale carrier boxes root_8954436 := by
  apply coveredBy_split_literal root_8954436 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8954437 small_8954436_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8954437
  · exact small_8954436_right_covered
#print axioms cover_8954436

def root_8954431 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954431_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954431_right_fuel : Nat := 1
def small_8954431_right_count : Nat := 1
def small_8954431_right_encoded : String := "00000002"
theorem small_8954431_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8954431_right_root small_8954431_right_fuel small_8954431_right_count small_8954431_right_encoded = true := by
  decide +kernel
theorem small_8954431_right_covered : CoveredBy scale carrier boxes small_8954431_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8954431_right_root small_8954431_right_fuel small_8954431_right_count small_8954431_right_encoded small_8954431_right_checked

theorem cover_8954431 : CoveredBy scale carrier boxes root_8954431 := by
  apply coveredBy_split_literal root_8954431 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8954436 small_8954431_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8954436
  · exact small_8954431_right_covered
#print axioms cover_8954431

def root_8954363 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954363_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954363_left_fuel : Nat := 11
def small_8954363_left_count : Nat := 31
def small_8954363_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0000FE1152250908A912FD12073CFC0000000308A913090000000612073CFE00000004050001000000000800000006120700FC0000000A00000003000000041151E90900000004000000051151E8FD0A0000FE1152250900000006000000040000000800000003"
theorem small_8954363_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8954363_left_root small_8954363_left_fuel small_8954363_left_count small_8954363_left_encoded = true := by
  decide +kernel
theorem small_8954363_left_covered : CoveredBy scale carrier boxes small_8954363_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8954363_left_root small_8954363_left_fuel small_8954363_left_count small_8954363_left_encoded small_8954363_left_checked

theorem cover_8954363 : CoveredBy scale carrier boxes root_8954363 := by
  apply coveredBy_split_literal root_8954363 small_8954363_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8954431 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8954363_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8954431
#print axioms cover_8954363

def root_8954357 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954357_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954357_left_fuel : Nat := 1
def small_8954357_left_count : Nat := 1
def small_8954357_left_encoded : String := "00000001"
theorem small_8954357_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8954357_left_root small_8954357_left_fuel small_8954357_left_count small_8954357_left_encoded = true := by
  decide +kernel
theorem small_8954357_left_covered : CoveredBy scale carrier boxes small_8954357_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8954357_left_root small_8954357_left_fuel small_8954357_left_count small_8954357_left_encoded small_8954357_left_checked

theorem cover_8954357 : CoveredBy scale carrier boxes root_8954357 := by
  apply coveredBy_split_literal root_8954357 small_8954357_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8954363 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8954357_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8954363
#print axioms cover_8954357

def root_8929311 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8929311 : CoveredBy scale carrier boxes root_8929311 := by
  apply coveredBy_split_literal root_8929311 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8929312 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8954357 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8929312
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8954357
#print axioms cover_8929311

def root_8929305 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8929305_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8929305_left_fuel : Nat := 1
def small_8929305_left_count : Nat := 1
def small_8929305_left_encoded : String := "00000000"
theorem small_8929305_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8929305_left_root small_8929305_left_fuel small_8929305_left_count small_8929305_left_encoded = true := by
  decide +kernel
theorem small_8929305_left_covered : CoveredBy scale carrier boxes small_8929305_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8929305_left_root small_8929305_left_fuel small_8929305_left_count small_8929305_left_encoded small_8929305_left_checked

theorem cover_8929305 : CoveredBy scale carrier boxes root_8929305 := by
  apply coveredBy_split_literal root_8929305 small_8929305_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8929311 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8929305_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8929311
#print axioms cover_8929305

def root_8962310 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8962310 : CoveredBy scale carrier boxes root_8962310 := by
  apply coveredBy_split_literal root_8962310 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3351.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3352.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3351.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3352.covered
#print axioms cover_8962310

def root_8962305 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8962305_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8962305_right_fuel : Nat := 1
def small_8962305_right_count : Nat := 1
def small_8962305_right_encoded : String := "00000002"
theorem small_8962305_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8962305_right_root small_8962305_right_fuel small_8962305_right_count small_8962305_right_encoded = true := by
  decide +kernel
theorem small_8962305_right_covered : CoveredBy scale carrier boxes small_8962305_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8962305_right_root small_8962305_right_fuel small_8962305_right_count small_8962305_right_encoded small_8962305_right_checked

theorem cover_8962305 : CoveredBy scale carrier boxes root_8962305 := by
  apply coveredBy_split_literal root_8962305 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8962310 small_8962305_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8962310
  · exact small_8962305_right_covered
#print axioms cover_8962305

def root_8961675 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8961675_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8961675_left_fuel : Nat := 31
def small_8961675_left_count : Nat := 293
def small_8961675_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0000FE1152250908A91301120701000000000008A91303120700F800000006000000010000000612073D0008A91303120700F808A912FD00000006120700FC08A913090000000612073CFE000000040500010400000006135D81050CFD9C010F34D10000000000000000060F350D0004548A03138670F8045489FD000000060000000600000001000000060000000000000002000000030000000112073CF80000000108A912FD00000006120700FC000000060000000300000000000000041151E9090000000408A91301120701000000000008A91303120700F808A912FD00000006120700FC00000008000000030000000112073CF8000000010000000812073D0008A91303120700F808A912FD12073CFC0000000305000104135D45050000000200000008135D8105050000FE135D81090CFD9C010F34D10000000000000000060F350D0004548A03138670F80CFD9BFD000000060F34D0FC000000060000000300000001000000060000000000000004135D4509000000040000000800000002120700FC05000104135D450500000002050000FE135D81090CFD9C010F34D10000000000000000060F350D0004548A03138670F8045489FD00000006138670FC000000060000000300000001000000060000000000000004135D45090000000400000008135D8105050000FE135D81090CFD9C010F34D10000000000000000060F350D0004548A03138670F8045489FD1386ACFC000000030C9A87000F875101000000000780010400000006128A7D05078000FE00000006128A410900000004000000080000000200000006138670FC0C9A87000F8751010000000007800104128A410500000002078000FE00000006128A410900000004022A45830000000800000005128A7D05078000FE128A7D09022A458313E1C4F8022A457D0000000600000007000000010000000600000004128A410900000004022A458313E1C4F8022A457D0000000A000000050000000100000005000000020F878D010780010400000006128A7D050000000A000000020000000000000003000000011386ACF800000001045489FD00000006138670FC00000006000000030000000000000004135D4509000000040CFD9C01000000080F350D0004548A03138670F8045489FD00000008138670FC0C9A87000F875101000000000780010400000008128A7D05028000FE13D7ED09022A45830000000A000000050000000400000008000000020F878D0100000008000000000000000300000001000000080000000000000002000000030000000112073CF80000000108A912FD12073CFC000000030500010400000006135D8105050000FE000000060000000800000002120700FC05000104135D45050000000200000008135D8105050000FE135D81090CFD9C01000000060F350D000CFD9C030F34D0F80000000600000001000000050000000000000004135D450900000004000000080000000200000003000000001151E8FD0A0000FE1152250900000006000000041151E9090000000408A9130112070100000000000000000612073D0008A9130300000008000000060000000000000003"
theorem small_8961675_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8961675_left_root small_8961675_left_fuel small_8961675_left_count small_8961675_left_encoded = true := by
  decide +kernel
theorem small_8961675_left_covered : CoveredBy scale carrier boxes small_8961675_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8961675_left_root small_8961675_left_fuel small_8961675_left_count small_8961675_left_encoded small_8961675_left_checked

theorem cover_8961675 : CoveredBy scale carrier boxes root_8961675 := by
  apply coveredBy_split_literal root_8961675 small_8961675_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8962305 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8961675_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8962305
#print axioms cover_8961675

def root_8961670 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8961670_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8961670_right_fuel : Nat := 1
def small_8961670_right_count : Nat := 1
def small_8961670_right_encoded : String := "00000001"
theorem small_8961670_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8961670_right_root small_8961670_right_fuel small_8961670_right_count small_8961670_right_encoded = true := by
  decide +kernel
theorem small_8961670_right_covered : CoveredBy scale carrier boxes small_8961670_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8961670_right_root small_8961670_right_fuel small_8961670_right_count small_8961670_right_encoded small_8961670_right_checked

theorem cover_8961670 : CoveredBy scale carrier boxes root_8961670 := by
  apply coveredBy_split_literal root_8961670 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8961675 small_8961670_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8961675
  · exact small_8961670_right_covered
#print axioms cover_8961670

def root_8961669 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8961669 : CoveredBy scale carrier boxes root_8961669 := by
  apply coveredBy_split_literal root_8961669 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8961670 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3353.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8961670
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3353.covered
#print axioms cover_8961669

def root_8961664 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8961664_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8961664_right_fuel : Nat := 1
def small_8961664_right_count : Nat := 1
def small_8961664_right_encoded : String := "00000000"
theorem small_8961664_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8961664_right_root small_8961664_right_fuel small_8961664_right_count small_8961664_right_encoded = true := by
  decide +kernel
theorem small_8961664_right_covered : CoveredBy scale carrier boxes small_8961664_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8961664_right_root small_8961664_right_fuel small_8961664_right_count small_8961664_right_encoded small_8961664_right_checked

theorem cover_8961664 : CoveredBy scale carrier boxes root_8961664 := by
  apply coveredBy_split_literal root_8961664 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8961669 small_8961664_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8961669
  · exact small_8961664_right_covered
#print axioms cover_8961664

def root_8929304 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8929304 : CoveredBy scale carrier boxes root_8929304 := by
  apply coveredBy_split_literal root_8929304 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8929305 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8961664 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8929305
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8961664
#print axioms cover_8929304

def root_8928762 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8928762_left_root : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8928762_left_fuel : Nat := 20
def small_8928762_left_count : Nat := 249
def small_8928762_left_encoded : String := "0A0001001151E901000000000A0000F8115225030A0001041151E905000000020A0000FC115224FD000000030A0000FE115224FF0000000408A91303120700F80000000600000001000000061151E8FF00000006000000041151E8FD0000000600000003115225050A0000FC115224FD000000030A0000FE115224FF0000000408A91303120700F808A913050000000512073D0408A912FD0000000500000007000000020000000112073CF80000000108A91305120701040000000208A912FD00000005120700FC08A912FF00000005120700FE050001000000000800000005000000040000000312073D0408A912FD12073CFC0000000308A912FF00000005120700FE0000000600000004120700FC08A912FF00000006120700FE000000060000000400000003000000021151E8FF00000005000000041151E8FD0A0000FE000000051151E8FF00000005000000040000000300000002000000011151E903000000010A0001041151E905000000020A0000FC000000061151E8FD0000000600000003115225050A0000FC115224FD000000030A0000FE115224FF0000000408A91305120701040000000208A912FD12073CFC0000000308A912FF00000005120700FE00000005000000040000000A12073D0408A912FD000000060000000A000000021151E8FF0000000A000000041151E8FD0A0000FE115224FF0000000408A91305120701040000000208A912FF00000005120700FE0000000500000004000000061151E8FF00000006000000040000000300000002115225010A0000F8115225030A0001041151E905000000020A0000FC000000061151E8FD0000000600000003115225050A0000FC115224FD000000030A0000FE115224FF0000000408A91301120701000000000008A91303000000050000000612073D0008A91303120700F8000000050000000112073CF80000000108A91305120701040000000208A912FD00000005120700FC000000050000000300000006000000001151E8FF08A9130112070100000000000000000612073D0008A91303000000050000000600000000000000041151E8FD0A0000FE115224FF0000000408A9130112070100000000000000000612073D0008A913030000000500000006000000001151E8FF00000006000000040000000300000002000000011151E903000000010A0001041151E9050000000200000006115225050A0000FC115224FD000000030A0000FE115224FF0000000408A9130112070100000000000000000612073D0008A91305120701040000000208A912FD00000006120700FC000000060000000300000006000000001151E8FF00000006000000041151E8FD00000006000000030000000200000000"
theorem small_8928762_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8928762_left_root small_8928762_left_fuel small_8928762_left_count small_8928762_left_encoded = true := by
  decide +kernel
theorem small_8928762_left_covered : CoveredBy scale carrier boxes small_8928762_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8928762_left_root small_8928762_left_fuel small_8928762_left_count small_8928762_left_encoded small_8928762_left_checked

theorem cover_8928762 : CoveredBy scale carrier boxes root_8928762 := by
  apply coveredBy_split_literal root_8928762 small_8928762_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8929304 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact small_8928762_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8929304
#print axioms cover_8928762

def root_8970638 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8970638_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8970638_right_fuel : Nat := 21
def small_8970638_right_count : Nat := 195
def small_8970638_right_encoded : String := "1151E903000000010A0001041151E905000000020A0000FC115224FD000000030A0001081151E90900000004000000051152250908A912FD12073CFC0000000308A913090000000A00000008120700FC08A91309120701080000000405000100135D4501000000000000000A135D8101050000F8000000080000000A000000000000000500000003000000041151E8FD0000000A00000003115225050A0000FC115224FD000000030A0001081151E9090000000408A91305120701040000000208A912FD00000008120700FC05000100135D450100000000050000F8135D810305000108135D45090000000400000008000000080000000100000008135D8101050000F8135D810305000108135D45090000000400000008000000080000000100000008000000000000000312073D0408A912FD0000000800000005000000021152250908A91305120701040000000208A912FD12073CFC0000000308A9130912070108000000040000000900000008120700FC08A91309120701080000000405000100000000090000000912073D0805000100135D450100000000050000F8000000080000000800000008000000040000000312073D0408A912FD12073CFC0000000308A9130912070108000000040500010000000009135D8101050000F800000008135D450300000001000000080000000012073D0805000100135D450100000000000000080000000800000004120700FC08A91309120701080000000405000100135D450100000000050000F800000009135D4503000000010CFD9C050000000900000009135D8101050000F8135D81030CFD9C050F34D10400000002000000070F350D04045489FD00000007000000050000000200000001135D4503000000010CFD9C0500000008000000050000000012073D0805000100135D450100000000050000F8135D81030CFD9C05000000080000000500000001135D45030000000100000005135D8101050000F8000000080000000800000000000000040000000300000002000000041151E8FD0A0001081151E9090000000400000008000000080000000300000002"
theorem small_8970638_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8970638_right_root small_8970638_right_fuel small_8970638_right_count small_8970638_right_encoded = true := by
  decide +kernel
theorem small_8970638_right_covered : CoveredBy scale carrier boxes small_8970638_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8970638_right_root small_8970638_right_fuel small_8970638_right_count small_8970638_right_encoded small_8970638_right_checked

theorem cover_8970638 : CoveredBy scale carrier boxes root_8970638 := by
  apply coveredBy_split_literal root_8970638 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3355.root small_8970638_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3355.covered
  · exact small_8970638_right_covered
#print axioms cover_8970638

def root_8970632 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8970632_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8970632_left_fuel : Nat := 1
def small_8970632_left_count : Nat := 1
def small_8970632_left_encoded : String := "00000000"
theorem small_8970632_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8970632_left_root small_8970632_left_fuel small_8970632_left_count small_8970632_left_encoded = true := by
  decide +kernel
theorem small_8970632_left_covered : CoveredBy scale carrier boxes small_8970632_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8970632_left_root small_8970632_left_fuel small_8970632_left_count small_8970632_left_encoded small_8970632_left_checked

theorem cover_8970632 : CoveredBy scale carrier boxes root_8970632 := by
  apply coveredBy_split_literal root_8970632 small_8970632_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8970638 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8970632_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8970638
#print axioms cover_8970632

def root_8974539 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8974539_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8974539_right_fuel : Nat := 17
def small_8974539_right_count : Nat := 119
def small_8974539_right_encoded : String := "1151E8FD0A0001081151E9090000000408A91301120701000000000008A91303120700F808A913050000000A000000070000000112073CF80000000108A913051207010400000002000000070000000712073D0008A91303120700F808A913051207010400000002050000FC0000000A0000000712073D04050000FC00000008135D44FD0000000800000003000000020000000112073CF80000000108A913051207010400000002050000FC135D80FD0000000305000108135D4509000000040CFD9C01000000080F350D000CFD9C0300000008000000080000000000000008135D44FD05000108135D4509000000040CFD9C010F34D10000000000000000070F350D000000000900000000000000080000000312073D040000000800000002000000001152250908A91301120701000000000008A913030000000812073CF80000000108A913051207010400000002000000070000000712073D0008A91303120700F808A91305120701040000000208A91309000000070000000912073D0408A9130912070108000000040000000800000008000000020000000112073CF80000000108A91305120701040000000208A913090000000712073D08050000FC00000008000000070000000400000008000000000000000400000003"
theorem small_8974539_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8974539_right_root small_8974539_right_fuel small_8974539_right_count small_8974539_right_encoded = true := by
  decide +kernel
theorem small_8974539_right_covered : CoveredBy scale carrier boxes small_8974539_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8974539_right_root small_8974539_right_fuel small_8974539_right_count small_8974539_right_encoded small_8974539_right_checked

theorem cover_8974539 : CoveredBy scale carrier boxes root_8974539 := by
  apply coveredBy_split_literal root_8974539 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3356.root small_8974539_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3356.covered
  · exact small_8974539_right_covered
#print axioms cover_8974539

def root_8974534 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8974534_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8974534_right_fuel : Nat := 1
def small_8974534_right_count : Nat := 1
def small_8974534_right_encoded : String := "00000002"
theorem small_8974534_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8974534_right_root small_8974534_right_fuel small_8974534_right_count small_8974534_right_encoded = true := by
  decide +kernel
theorem small_8974534_right_covered : CoveredBy scale carrier boxes small_8974534_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8974534_right_root small_8974534_right_fuel small_8974534_right_count small_8974534_right_encoded small_8974534_right_checked

theorem cover_8974534 : CoveredBy scale carrier boxes root_8974534 := by
  apply coveredBy_split_literal root_8974534 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8974539 small_8974534_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8974539
  · exact small_8974534_right_covered
#print axioms cover_8974534

def root_8973822 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8973822_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8973822_left_fuel : Nat := 36
def small_8973822_left_count : Nat := 339
def small_8973822_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0001081151E9090000000408A9130112070100000000000000000812073D0008A91303120700F808A912FD00000008120700FC0500010400000008135D810505000108135D450900000004000000080000000800000002000000030000000112073CF80000000100000008000000001152250908A91301120701000000000008A91303120700F808A912FD00000008120700FC08A9130912070108000000040000000800000008000000030000000112073CF80000000108A912FD12073CFC00000003000000080000000812073D0008A91303120700F808A912FD12073CFC0000000308A91309120701080000000405000104135D4505000000020CFD9C010000000800000006135D81050CFD9C010F34D10000000000000000060F350D0004548A03138670F80CFD9BFD000000060F34D0FC04548A090000000500000008000000030000000100000008000000000000000200000008120700FC08A91309120701080000000405000104135D4505000000020CFD9C010F34D10000000000000000060F350D0004548A03138670F8045489FD00000006138670FC04548A09000000060000000800000003000000011386ACF800000001045489FD000000060000000800000000135D81050CFD9C010F34D1000000000004548A03138670F8045489FD00000006138670FC04548A0900000006000000080000000300000001000000060F350D0004548A03138670F8045489FD1386ACFC0000000304548A09000000061386AD080C9A87000F87510100000000000000080000000800000004138670FC04548A0913867108000000040C9A87000F8751010000000007800104128A41050000000200000006128A7D05022A45830000000513E200F800000001022A457D0000000513E1C4FC022A45890000000513E201080B4D440000000009000000060000000400000003000000020F878D010780010400000006128A7D05022A4583000000050000000600000002000000001386AD080C9A87000F8751010000000007800104128A410500000002022A45830000000700000008128A7D05022A458313E1C4F8022A457D0000000913E1C4FC067ECE8912EA5908000000040B4D44001080110100000000000000070000000700000007000000030000000100000008000000020F878D0100000008000000000000000400000003000000011386ACF800000001045489FD1386ACFC0000000304548A090000000600000008138670FC04548A0913867108000000040C9A87000F8751010000000000000006000000060000000800000003000000000000000212073D080500010400000008135D81050CFD9C010F34D10000000000000000080F350D0004548A03138670F8045489FD00000008138670FC0CFD9C090F34D108000000040000000800000008000000030000000100000008000000000000000200000004000000030000000112073CF80000000108A912FD12073CFC0000000308A9130912070108000000040500010400000006135D8105000000080000000200000008120700FC08A91309120701080000000405000104135D4505000000020CFD9C010000000800000008135D81050CFD9C010F34D10000000000000000060F350D000CFD9C030F34D0F8045489FD000000060000000800000001000000080000000000000002000000080000000300000000000000041151E8FD0A0001081151E9090000000408A91301120701000000000008A913030000000800000006000000081152250908A91301120701000000000008A91303000000080000000612073D0008A91303120700F8000000080000000100000008000000000000000400000003"
theorem small_8973822_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8973822_left_root small_8973822_left_fuel small_8973822_left_count small_8973822_left_encoded = true := by
  decide +kernel
theorem small_8973822_left_covered : CoveredBy scale carrier boxes small_8973822_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8973822_left_root small_8973822_left_fuel small_8973822_left_count small_8973822_left_encoded small_8973822_left_checked

theorem cover_8973822 : CoveredBy scale carrier boxes root_8973822 := by
  apply coveredBy_split_literal root_8973822 small_8973822_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8974534 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8973822_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8974534
#print axioms cover_8973822

def root_8973817 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8973817_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8973817_right_fuel : Nat := 1
def small_8973817_right_count : Nat := 1
def small_8973817_right_encoded : String := "00000001"
theorem small_8973817_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8973817_right_root small_8973817_right_fuel small_8973817_right_count small_8973817_right_encoded = true := by
  decide +kernel
theorem small_8973817_right_covered : CoveredBy scale carrier boxes small_8973817_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8973817_right_root small_8973817_right_fuel small_8973817_right_count small_8973817_right_encoded small_8973817_right_checked

theorem cover_8973817 : CoveredBy scale carrier boxes root_8973817 := by
  apply coveredBy_split_literal root_8973817 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8973822 small_8973817_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8973822
  · exact small_8973817_right_covered
#print axioms cover_8973817

def root_8973816 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8973816_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8973816_right_fuel : Nat := 20
def small_8973816_right_count : Nat := 193
def small_8973816_right_encoded : String := "1151E903000000010A0001041151E905000000020A0000FC115224FD000000030A0001081151E90900000004000000081152250908A91301120701000000000008A912FD00000006120700FC000000080000000312073D0008A912FD12073CFC0000000308A913090000000612073D080000000800000004120700FC08A91309120701080000000400000008000000080000000300000000000000041151E8FD0A0001081151E9090000000408A91301120701000000000000000006000000081152250908A9130112070100000000000000000612073D0008A913090000000612073D08050000F8000000080000000A00000004000000000000000400000003115225050A0000FC115224FD000000030A0001081151E9090000000408A91301120701000000000008A913051207010400000002000000080000000812073D0008A91305120701040000000208A912FD00000008120700FC050000F8135D810305000108135D4509000000040CFD9C01000000080F350D0000000008000000000000000800000001000000080000000312073D040000000800000002000000001152250908A91301120701000000000008A913050000000812073D04000000080000000212073D0008A91305120701040000000208A912FD00000008120700FC08A91309120701080000000400000008000000080000000312073D0408A912FD12073CFC0000000308A9130912070108000000040000000800000008120700FC08A913091207010800000004050000F8135D81030CFD9C01000000080000000800000001135D4503000000010000000800000008000000030000000200000000000000041151E8FD0A0001081151E9090000000408A91301120701000000000008A913051207010400000002050000F8135D810300000008000000010000000812073D04050000F800000007000000080000000212073D0008A9130512070104000000020000000800000008000000001152250908A91301120701000000000008A913051207010400000002000000070000000700000008000000040000000300000002"
theorem small_8973816_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8973816_right_root small_8973816_right_fuel small_8973816_right_count small_8973816_right_encoded = true := by
  decide +kernel
theorem small_8973816_right_covered : CoveredBy scale carrier boxes small_8973816_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8973816_right_root small_8973816_right_fuel small_8973816_right_count small_8973816_right_encoded small_8973816_right_checked

theorem cover_8973816 : CoveredBy scale carrier boxes root_8973816 := by
  apply coveredBy_split_literal root_8973816 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8973817 small_8973816_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8973817
  · exact small_8973816_right_covered
#print axioms cover_8973816

def root_8973811 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8973811_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8973811_right_fuel : Nat := 1
def small_8973811_right_count : Nat := 1
def small_8973811_right_encoded : String := "00000000"
theorem small_8973811_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8973811_right_root small_8973811_right_fuel small_8973811_right_count small_8973811_right_encoded = true := by
  decide +kernel
theorem small_8973811_right_covered : CoveredBy scale carrier boxes small_8973811_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8973811_right_root small_8973811_right_fuel small_8973811_right_count small_8973811_right_encoded small_8973811_right_checked

theorem cover_8973811 : CoveredBy scale carrier boxes root_8973811 := by
  apply coveredBy_split_literal root_8973811 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8973816 small_8973811_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8973816
  · exact small_8973811_right_covered
#print axioms cover_8973811

def root_8970631 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8970631 : CoveredBy scale carrier boxes root_8970631 := by
  apply coveredBy_split_literal root_8970631 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8970632 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8973811 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8970632
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8973811
#print axioms cover_8970631

def root_8968299 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8968299 : CoveredBy scale carrier boxes root_8968299 := by
  apply coveredBy_split_literal root_8968299 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3354.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8970631 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3354.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8970631
#print axioms cover_8968299

def root_8928761 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8928761 : CoveredBy scale carrier boxes root_8928761 := by
  apply coveredBy_split_literal root_8928761 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8928762 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8968299 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8928762
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8968299
#print axioms cover_8928761

def root_8981126 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8981126_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8981126_right_fuel : Nat := 25
def small_8981126_right_count : Nat := 217
def small_8981126_right_encoded : String := "1151E903000000010A0001041151E905000000020A0000FC115225070A0000FE1152250908A9130112070100000000000000000900000009000000041151E9090000000400000005000000031151E9070000000300000005115225050A0000FC115225070A0000FE1152250908A91301120701000000000008A91305120701040000000208A91307120700FC08A91309000000060000000600000003000000070000000912073D0008A91305120701040000000208A91307120700FC08A91309120700FE050000F800000006000000060000000412073CFE00000004050000F8135D81030CFD9C010F34D10000000000000000070F350D0004548A05138671040000000204548A07138670FC0CFD9C0900000007000000090000000300000007000000070000000000000001135D4503000000010CFD9C01000000090F350D0004548A05138671040000000204548A07138670FC0CFD9C09000000060000000600000003000000091386AD040000000900000002000000000000000312073CFC0000000308A91309120700FE00000009000000040000000912073D0408A91307120700FC08A91309120700FE000000060000000412073CFE00000004050000F8135D81030CFD9C01000000090F350D000CFD9C0500000009000000050000000000000001135D4503000000010CFD9C0100000006000000050000000312073CFC0000000308A9130900000007000000050000000200000000000000041151E9090000000408A91301120701000000000008A91305120701040000000208A91307000000070000000712073D04000000090000000212073D0008A91305120701040000000208A91307120700FC050000F8135D8103050000FE135D81090CFD9C01000000070F350D0004548A05138671040000000204548A07138670FC0C9A870000000007000000050000000300000005000000050000000000000004135D4509000000040CFD9C010F34D10000000000000000070000000500000001135D450300000001050000FE135D81090CFD9C010F34D10000000000000000090000000500000004135D4509000000040000000500000003000000050000000500000000000000031151E907000000030A0000FE1152250908A9130112070100000000000000000712073D000000000900000000000000041151E909000000040000000500000002"
theorem small_8981126_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8981126_right_root small_8981126_right_fuel small_8981126_right_count small_8981126_right_encoded = true := by
  decide +kernel
theorem small_8981126_right_covered : CoveredBy scale carrier boxes small_8981126_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8981126_right_root small_8981126_right_fuel small_8981126_right_count small_8981126_right_encoded small_8981126_right_checked

theorem cover_8981126 : CoveredBy scale carrier boxes root_8981126 := by
  apply coveredBy_split_literal root_8981126 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3359.root small_8981126_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3359.covered
  · exact small_8981126_right_covered
#print axioms cover_8981126

def root_8981121 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8981121_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8981121_right_fuel : Nat := 1
def small_8981121_right_count : Nat := 1
def small_8981121_right_encoded : String := "00000000"
theorem small_8981121_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8981121_right_root small_8981121_right_fuel small_8981121_right_count small_8981121_right_encoded = true := by
  decide +kernel
theorem small_8981121_right_covered : CoveredBy scale carrier boxes small_8981121_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8981121_right_root small_8981121_right_fuel small_8981121_right_count small_8981121_right_encoded small_8981121_right_checked

theorem cover_8981121 : CoveredBy scale carrier boxes root_8981121 := by
  apply coveredBy_split_literal root_8981121 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8981126 small_8981121_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8981126
  · exact small_8981121_right_covered
#print axioms cover_8981121

def root_8979727 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8979727 : CoveredBy scale carrier boxes root_8979727 := by
  apply coveredBy_split_literal root_8979727 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3358.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8981121 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3358.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8981121
#print axioms cover_8979727

def root_8978393 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8978393 : CoveredBy scale carrier boxes root_8978393 := by
  apply coveredBy_split_literal root_8978393 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3357.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8979727 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3357.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8979727
#print axioms cover_8978393

def root_8984482 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8984482 : CoveredBy scale carrier boxes root_8984482 := by
  apply coveredBy_split_literal root_8984482 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3360.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3361.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3360.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3361.covered
#print axioms cover_8984482

def root_8984477 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8984477_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8984477_right_fuel : Nat := 1
def small_8984477_right_count : Nat := 1
def small_8984477_right_encoded : String := "00000001"
theorem small_8984477_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8984477_right_root small_8984477_right_fuel small_8984477_right_count small_8984477_right_encoded = true := by
  decide +kernel
theorem small_8984477_right_covered : CoveredBy scale carrier boxes small_8984477_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8984477_right_root small_8984477_right_fuel small_8984477_right_count small_8984477_right_encoded small_8984477_right_checked

theorem cover_8984477 : CoveredBy scale carrier boxes root_8984477 := by
  apply coveredBy_split_literal root_8984477 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8984482 small_8984477_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8984482
  · exact small_8984477_right_covered
#print axioms cover_8984477

def root_8984476 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8984476_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8984476_right_fuel : Nat := 23
def small_8984476_right_count : Nat := 211
def small_8984476_right_encoded : String := "1151E903000000010A0001041151E905000000020A0000FC115225070A0001081151E8FF08A913070000000612073CFC0000000305000100000000070000000600000004115224FF0000000408A91307120700FC08A912FF12073D0805000100000000070000000600000004120701080000000405000100135D450100000000050000F8135D810305000104135D450500000002000000070000000700000001135D45030000000100000005135D8101050000F8135D810305000104135D4505000000020000000A0000000A00000001135D45030000000105000104135D4505000000020000000500000005000000000000000312073CFC0000000308A912FF12073D0805000100135D450100000000050000F8135D810305000104135D4505000000020CFD9C070000000700000005135D81050CFD9C0700000007000000050000000200000001135D45030000000100000007135D8101050000F8135D810305000104135D4505000000020CFD9C070000000600000005135D81050CFD9C070F34D0FC0CFD9BFF000000060000000500000003000000050000000200000001135D45030000000105000104135D4505000000020CFD9C070F34D0FC000000060000000300000005135D81050CFD9C07000000070000000500000002000000000000000400000005000000031151E9070000000300000005115225050A0000FC115225070A0001081151E8FF0000000700000004115224FF0000000408A9130512070104000000020000000712073D0408A91307120700FC08A912FF000000071207010800000004000000070000000312073CFC0000000308A912FF12073D080500010000000007135D8101050000F8135D81030CFD9C05000000070F350D040CFD9C07000000070F350CFC000000030CFD9BFF00000007000000050000000200000001135D450300000001000000070000000000000004120701080000000405000100000000070000000500000002000000031151E907000000030A0001081151E8FF08A913050000000712073D040500010000000007000000070000000200000004115224FF0000000408A9130512070104000000020000000712073D0408A912FF12073D0805000100135D450100000000000000050000000500000004000000050000000200000002"
theorem small_8984476_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8984476_right_root small_8984476_right_fuel small_8984476_right_count small_8984476_right_encoded = true := by
  decide +kernel
theorem small_8984476_right_covered : CoveredBy scale carrier boxes small_8984476_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8984476_right_root small_8984476_right_fuel small_8984476_right_count small_8984476_right_encoded small_8984476_right_checked

theorem cover_8984476 : CoveredBy scale carrier boxes root_8984476 := by
  apply coveredBy_split_literal root_8984476 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8984477 small_8984476_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8984477
  · exact small_8984476_right_covered
#print axioms cover_8984476

def root_8984470 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8984470_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8984470_left_fuel : Nat := 1
def small_8984470_left_count : Nat := 1
def small_8984470_left_encoded : String := "00000000"
theorem small_8984470_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8984470_left_root small_8984470_left_fuel small_8984470_left_count small_8984470_left_encoded = true := by
  decide +kernel
theorem small_8984470_left_covered : CoveredBy scale carrier boxes small_8984470_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8984470_left_root small_8984470_left_fuel small_8984470_left_count small_8984470_left_encoded small_8984470_left_checked

theorem cover_8984470 : CoveredBy scale carrier boxes root_8984470 := by
  apply coveredBy_split_literal root_8984470 small_8984470_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8984476 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8984470_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8984476
#print axioms cover_8984470

def root_8991748 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8991748 : CoveredBy scale carrier boxes root_8991748 := by
  apply coveredBy_split_literal root_8991748 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3364.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3365.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3364.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3365.covered
#print axioms cover_8991748

def root_8991742 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8991742_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8991742_left_fuel : Nat := 1
def small_8991742_left_count : Nat := 1
def small_8991742_left_encoded : String := "00000001"
theorem small_8991742_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8991742_left_root small_8991742_left_fuel small_8991742_left_count small_8991742_left_encoded = true := by
  decide +kernel
theorem small_8991742_left_covered : CoveredBy scale carrier boxes small_8991742_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8991742_left_root small_8991742_left_fuel small_8991742_left_count small_8991742_left_encoded small_8991742_left_checked

theorem cover_8991742 : CoveredBy scale carrier boxes root_8991742 := by
  apply coveredBy_split_literal root_8991742 small_8991742_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8991748 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8991742_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8991748
#print axioms cover_8991742

def root_8990226 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8990226 : CoveredBy scale carrier boxes root_8990226 := by
  apply coveredBy_split_literal root_8990226 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3363.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8991742 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3363.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8991742
#print axioms cover_8990226

def root_8990220 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8990220_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8990220_left_fuel : Nat := 1
def small_8990220_left_count : Nat := 1
def small_8990220_left_encoded : String := "00000000"
theorem small_8990220_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8990220_left_root small_8990220_left_fuel small_8990220_left_count small_8990220_left_encoded = true := by
  decide +kernel
theorem small_8990220_left_covered : CoveredBy scale carrier boxes small_8990220_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8990220_left_root small_8990220_left_fuel small_8990220_left_count small_8990220_left_encoded small_8990220_left_checked

theorem cover_8990220 : CoveredBy scale carrier boxes root_8990220 := by
  apply coveredBy_split_literal root_8990220 small_8990220_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8990226 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8990220_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8990226
#print axioms cover_8990220

def root_9000536 : ZRayBox := fun j => (#[⟨⟨(12755968), (14107392)⟩, ⟨(9081120), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9000536 : CoveredBy scale carrier boxes root_9000536 := by
  apply coveredBy_split_literal root_9000536 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3366.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3367.root coord1 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3366.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3367.covered
#print axioms cover_9000536

def root_9000531 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(9081120), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9000531_right_root : ZRayBox := fun j => (#[⟨⟨(14107392), (15123200)⟩, ⟨(9081120), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9000531_right_fuel : Nat := 1
def small_9000531_right_count : Nat := 1
def small_9000531_right_encoded : String := "00000000"
theorem small_9000531_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9000531_right_root small_9000531_right_fuel small_9000531_right_count small_9000531_right_encoded = true := by
  decide +kernel
theorem small_9000531_right_covered : CoveredBy scale carrier boxes small_9000531_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9000531_right_root small_9000531_right_fuel small_9000531_right_count small_9000531_right_encoded small_9000531_right_checked

theorem cover_9000531 : CoveredBy scale carrier boxes root_9000531 := by
  apply coveredBy_split_literal root_9000531 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_9000536 small_9000531_right_root coord0 false (14107392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_9000536
  · exact small_9000531_right_covered
#print axioms cover_9000531

def root_9000069 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9000069_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (9081120)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9000069_left_fuel : Nat := 18
def small_9000069_left_count : Nat := 213
def small_9000069_left_encoded : String := "10D1010000000000067ECE8312EA58F80AD3578510D1010400000002067ECE8712EA58FC0000000A000000030000000A10D13D04067ECE8712EA58FC022A457F13E2010809BE354111774100000000000569AC431340D4F80000000500000001134110F8000000010BE879C50000000A0000000611777D000569AC431340D4F80BE879C5000000051011AD04000000050000000200000001134110F8000000010BE879C510117104000000020000000A1011AD040000000600000002000000000000000413E1C5080000000409BE35410000000A11777D000000000A000000000000000312EA94FC00000003022A457F13E2010809BE35410000000911777D000569AC4300000009134110F80000000100000009000000000000000413E1C5080000000409BE35410000000911777D000569AC43000000090000000A00000000000000020000000112EA94F8000000010AD3578510D1010400000002067ECE8712EA58FC0000000A0000000312EA94FC00000003022A457F13E2010809BE35410000000A11777D000793F0C30000000A0000000A00000000000000040000000A10D13D04067ECE8712EA58FC022A457F13E2010809BE354111774100000000000793F0C3128220F800000006000000010000000611777D000793F0C3128220F80BE879C510117104000000020000000A000000060000000100000006000000000000000413E1C5080000000409BE35410000000811777D000793F0C3128220F80000000A0000000100000008000000000000000312EA94FC00000003022A457F13E2010809BE354111774100000000000793F0C30000000912825CF8000000010BE879C5000000090000000911777D000793F0C3128220F80BE879C510117104000000020793F0C7128220FC0000000A00000003000000091011AD0400000009000000020000000112825CF8000000010BE879C510117104000000020793F0C7128220FC0000000A0000000312825CFC00000003000000091011AD040793F0C7000000060000000900000002000000000000000413E1C5080000000409BE354111774100000000000000000A11777D000793F0C3128220F80BE879C50000000A1011AD0400000009000000020000000112825CF8000000010BE879C50000000A1011AD0400000008000000020000000000000002"
theorem small_9000069_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9000069_left_root small_9000069_left_fuel small_9000069_left_count small_9000069_left_encoded = true := by
  decide +kernel
theorem small_9000069_left_covered : CoveredBy scale carrier boxes small_9000069_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9000069_left_root small_9000069_left_fuel small_9000069_left_count small_9000069_left_encoded small_9000069_left_checked

theorem cover_9000069 : CoveredBy scale carrier boxes root_9000069 := by
  apply coveredBy_split_literal root_9000069 small_9000069_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_9000531 coord0 true (9081120)
  · decide +kernel
  · decide +kernel
  · exact small_9000069_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_9000531
#print axioms cover_9000069

def root_9000063 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9000063_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9000063_left_fuel : Nat := 1
def small_9000063_left_count : Nat := 1
def small_9000063_left_encoded : String := "00000004"
theorem small_9000063_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9000063_left_root small_9000063_left_fuel small_9000063_left_count small_9000063_left_encoded = true := by
  decide +kernel
theorem small_9000063_left_covered : CoveredBy scale carrier boxes small_9000063_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9000063_left_root small_9000063_left_fuel small_9000063_left_count small_9000063_left_encoded small_9000063_left_checked

theorem cover_9000063 : CoveredBy scale carrier boxes root_9000063 := by
  apply coveredBy_split_literal root_9000063 small_9000063_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_9000069 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9000063_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_9000069
#print axioms cover_9000063

def root_8999157 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8999157_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8999157_left_fuel : Nat := 24
def small_8999157_left_count : Nat := 421
def small_8999157_left_encoded : String := "1386AD080AD3578110D1010000000000067ECE8312EA58F80AD3578510D1010400000002067ECE8712EA58FC000000050000000312EA94FC00000003067ECE7F0000000812EA59080000000409BE354111774100000000000569AC43000000090000000A11777D000569AC4300000008134110F80000000109BE354511774104000000020000000811777D0400000009000000020000000010D13D04067ECE8712EA58FC000000050000000312EA94FC00000003067ECE7F12EA9508000000090000000412EA59080000000409BE35410000000911777D000000000900000000000000020000000112EA94F8000000010AD3578510D1010400000002067ECE8712EA58FC067ECE7F0000000612EA59080000000409BE354111774100000000000793F0C3128220F800000005000000010000000611777D000793F0C3128220F8000000050000000100000007000000000000000312EA94FC00000003067ECE7F12EA950809BE354111774100000000000793F0C3128220F800000005000000010000000611777D000793F0C30000000812825CF80000000109BE35450000000700000006000000000000000412EA59080000000409BE354111774100000000000793F0C3128220F809BE35450000000A11777D0400000009000000020000000112825CF80000000109BE35450000000A11777D040793F0C700000006000000090000000211777D000793F0C3128220F809BE354511774104000000020000000A11777D040793F0C7128220FC0569AC3F000000050000000A0000000312825CFC0000000300000009000000020000000112825CF80000000109BE354511774104000000020000000711777D040793F0C70000000712825CFC000000030569AC3F1341110800000007000000040000000A000000020000000010D13D04067ECE870000000612EA94FC00000003067ECE7F0000000612EA59080000000409BE354111774100000000000793F0C3000000090000000611777D000793F0C3128220F80BE879C510117104000000020793F0C70000000600000009000000060000000112825CF8000000010BE879C510117104000000020793F0C70000000612825CFC000000030000000900000006000000000000000210D13D00067ECE8312EA58F80AD3578510D1010400000002067ECE8712EA58FC00000005000000030000000810D13D04067ECE8712EA58FC067ECE7F0000000512EA5908000000040BE879C1000000051011AD0000000005000000000000000312EA94FC00000003067ECE7F0000000812EA5908000000040BE879C110117100000000000569AC4300000008134110F8000000010BE879C51011710400000002000000081011AD04000000090000000200000008000000020000000112EA94F8000000010AD3578510D1010400000002067ECE8712EA58FC067ECE7F12EA9508000000070000000412EA5908000000040BE879C100000007000000070000000312EA94FC00000003067ECE7F0000000812EA5908000000040BE879C110117100000000000793F0C3128220F8000000080000000112825CF80000000109BE35450000000711777D040793F0C70000000712825CFC0000000300000007000000021011AD00000000080000000010D13D04067ECE8712EA58FC067ECE7F0000000612EA5908000000040BE879C11011710000000000000000061011AD000793F0C3128220F80BE879C5101171040000000200000007000000060000000100000006000000000000000312EA94FC00000003067ECE7F12EA95080BE879C1101171000000000000000006000000080000000412EA5908000000040BE879C110117100000000000793F0C3128220F80BE879C510117104000000020793F0C7128220FC0569AC3F000000061340D508000000040B5DE8A11074950000000000000000060000000800000003000000081011AD040793F0C70000000600000009000000020000000112825CF8000000010BE879C510117104000000020793F0C70000000612825CFC000000030569AC3F000000061340D508000000040B5DE8A11074950000000000000000091074D1000000000700000000000000061011AD000793F0C3128220F80BE879C51011710400000002000000081011AD040793F0C7128220FC000000060000000300000008000000020000000112825CF8000000010BE879C510117104000000020793F0C700000007000000081011AD040793F0C70000000612825CFC000000030569AC3F000000061340D508000000040C730AE10FA709000000000000000006000000080000000200000000000000020000000000000004"
theorem small_8999157_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8999157_left_root small_8999157_left_fuel small_8999157_left_count small_8999157_left_encoded = true := by
  decide +kernel
theorem small_8999157_left_covered : CoveredBy scale carrier boxes small_8999157_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8999157_left_root small_8999157_left_fuel small_8999157_left_count small_8999157_left_encoded small_8999157_left_checked

theorem cover_8999157 : CoveredBy scale carrier boxes root_8999157 := by
  apply coveredBy_split_literal root_8999157 small_8999157_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_9000063 coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_8999157_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_9000063
#print axioms cover_8999157

def root_8999151 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8999151_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8999151_left_fuel : Nat := 1
def small_8999151_left_count : Nat := 1
def small_8999151_left_encoded : String := "00000003"
theorem small_8999151_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8999151_left_root small_8999151_left_fuel small_8999151_left_count small_8999151_left_encoded = true := by
  decide +kernel
theorem small_8999151_left_covered : CoveredBy scale carrier boxes small_8999151_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8999151_left_root small_8999151_left_fuel small_8999151_left_count small_8999151_left_encoded small_8999151_left_checked

theorem cover_8999151 : CoveredBy scale carrier boxes root_8999151 := by
  apply coveredBy_split_literal root_8999151 small_8999151_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8999157 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_8999151_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8999157
#print axioms cover_8999151

def root_8998685 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8998685_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8998685_left_fuel : Nat := 26
def small_8998685_left_count : Nat := 217
def small_8998685_left_encoded : String := "138670FC045489FF1386AD080AD3578110D1010000000000067ECE83000000050000000610D13D00067ECE8312EA58F8000000050000000112EA94F8000000010AD3578510D10104000000020000000700000006000000000000000413867108000000040AD3578110D1010000000000067ECE8312EA58F80AD3578510D10104000000020000000A10D13D04022A45870000000513E200FC00000003022A457F000000050000000A000000020000000112EA94F8000000010AD3578510D1010400000002022A4587000000070000000A10D13D04022A45870000000613E200FC00000003022A457F00000006000000080000000210D13D00067ECE8312EA58F80AD3578510D1010400000002022A45870000000513E200FC00000003022A457F000000050000000A10D13D04022A458713E1C4FC022A457F0000000513E1C508000000040BE879C1000000051011AD0000000005000000000000000313E200FC00000003022A457F13E201080BE879C1000000051011AD0000000005000000000000000413E1C508000000040BE879C110117100000000000569AC431340D4F80BE879C5000000051011AD04000000050000000200000001134110F8000000010BE879C50000000A1011AD04033F67C7000000050000000A000000021011AD000569AC431340D4F80BE879C5000000051011AD04000000050000000200000001134110F8000000010BE879C51011710400000002000000071011AD04033F67C713BBF4FC000000050000000313BC30FC000000030115233F13F895080C730AE1000000050FA7450000000005000000000000000413F85908000000040000000A0000000200000000000000020000000112EA94F8000000010AD3578510D10104000000020000000710D13D04022A458713E1C4FC022A457F00000006000000070000000313E200FC00000003022A457F13E201080BE879C11011710000000000000000061011AD000793F0C3128220F8000000060000000100000006000000000000000413E1C508000000040BE879C110117100000000000793F0C3128220F80BE879C50000000A1011AD04000000060000000200000001000000071011AD000793F0C3128220F80BE879C5000000071011AD04033F67C70000000613BC30FC000000030000000700000002000000010000000700000000000000020000000000000003"
theorem small_8998685_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8998685_left_root small_8998685_left_fuel small_8998685_left_count small_8998685_left_encoded = true := by
  decide +kernel
theorem small_8998685_left_covered : CoveredBy scale carrier boxes small_8998685_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8998685_left_root small_8998685_left_fuel small_8998685_left_count small_8998685_left_encoded small_8998685_left_checked

theorem cover_8998685 : CoveredBy scale carrier boxes root_8998685 := by
  apply coveredBy_split_literal root_8998685 small_8998685_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8999151 coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_8998685_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8999151
#print axioms cover_8998685

def root_8998679 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8998679_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8998679_left_fuel : Nat := 1
def small_8998679_left_count : Nat := 1
def small_8998679_left_encoded : String := "00000002"
theorem small_8998679_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8998679_left_root small_8998679_left_fuel small_8998679_left_count small_8998679_left_encoded = true := by
  decide +kernel
theorem small_8998679_left_covered : CoveredBy scale carrier boxes small_8998679_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8998679_left_root small_8998679_left_fuel small_8998679_left_count small_8998679_left_encoded small_8998679_left_checked

theorem cover_8998679 : CoveredBy scale carrier boxes root_8998679 := by
  apply coveredBy_split_literal root_8998679 small_8998679_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8998685 coord2 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_8998679_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8998685
#print axioms cover_8998679

def root_8998678 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8998678 : CoveredBy scale carrier boxes root_8998678 := by
  apply coveredBy_split_literal root_8998678 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8998679 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3368.root coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8998679
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3368.covered
#print axioms cover_8998678

def root_8998672 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8998672_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8998672_left_fuel : Nat := 1
def small_8998672_left_count : Nat := 1
def small_8998672_left_encoded : String := "00000001"
theorem small_8998672_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8998672_left_root small_8998672_left_fuel small_8998672_left_count small_8998672_left_encoded = true := by
  decide +kernel
theorem small_8998672_left_covered : CoveredBy scale carrier boxes small_8998672_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8998672_left_root small_8998672_left_fuel small_8998672_left_count small_8998672_left_encoded small_8998672_left_checked

theorem cover_8998672 : CoveredBy scale carrier boxes root_8998672 := by
  apply coveredBy_split_literal root_8998672 small_8998672_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8998678 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_8998672_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8998678
#print axioms cover_8998672

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215
