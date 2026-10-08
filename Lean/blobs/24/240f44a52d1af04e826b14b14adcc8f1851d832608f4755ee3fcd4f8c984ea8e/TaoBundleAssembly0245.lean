import TaoBundleAssembly0241
import TaoBundleAssembly0242
import TaoBundleAssembly0243
import TaoBundleAssembly0244
import TaoBundleChunkBatch0329
import TaoBundleChunkBatch0335
import TaoBundleChunkBatch0336
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245
def root_3519476 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3519476_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3519476_right_fuel : Nat := 24
def small_3519476_right_count : Nat := 269
def small_3519476_right_encoded : String := "115224FB000000020A0001061151E8FD0A0001081151E9090000000408A912FB12073D04050000F600000006135D450100000000050000F8135D81030500010600000006000000060000000100000006000000021207010400000002000000061152250908A912FB12073D0408A9130912070108000000040000000812073D08050000F600000008135D450100000000050000F8000000090000000800000004000000021207010400000002000000090000000400000003115224FD000000030A0001081151E9090000000408A912FB12073D0408A912FD12073D06050000F6135D8101050000F8000000060000000600000000135D450100000000050000F8135D81030500010800000006135D81090000000A000000040000000100000006000000031207010600000003050000F60000000A0000000A000000021207010400000002000000061152250908A912FB12073D0408A912FD12073D0608A913091207010800000004050000F6135D8101050000F8000000090000000800000000135D450100000000050000F8135D81030CFD9BFB0F350D040CFD9BFD000000080000000A0000000200000009000000010000000812073D08050000F6135D8101050000F8135D81030CFD9BFB0F350D040CFD9BFD000000090F34D106000000030000000A000000020000000900000001135D4503000000010CFD9BFB0F350D040CFD9BFD0000000A0F34D106000000030000000A000000020000000800000000135D450100000000050000F8135D81030CFD9BFB0F350D040CFD9BFD0F350D060CFD9C090000000A00000009000000030F34D106000000030000000A000000020F34D104000000020000000900000001135D4503000000010000000A0000000400000003120701060000000308A913091207010800000004050000F6135D8101050000F8135D81030CFD9BFB0F350D04045489FD1386AD0604548A091386710800000004000000081386AD080C9A870400000008000000050000000400000003138671060000000300000005000000020F34D10400000002000000050000000100000005000000000000000512073D08050000F6135D8101050000F8135D81030CFD9BFB0F350D04045489FD1386AD060CFD9C090F34D108000000040C9A87040F8750FB0000000A00000002000000050F350D080000000A000000040000000313867106000000030CFD9C090F34D10800000004000000050F350D080000000A00000004000000020F34D104000000020000000A00000001135D4503000000010CFD9BFB0F350D04045489FD1386AD060CFD9C090F34D1080000000400000005000000050000000300000005000000020000000500000000135D450100000000050000F8135D81030CFD9BFB0F350D04045489FD0000000A00000005000000020000000500000001000000050000000400000002120701040000000208A912FD0000000A12070106000000030000000500000004"
theorem small_3519476_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3519476_right_root small_3519476_right_fuel small_3519476_right_count small_3519476_right_encoded = true := by
  decide +kernel
theorem small_3519476_right_covered : CoveredBy scale carrier boxes small_3519476_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3519476_right_root small_3519476_right_fuel small_3519476_right_count small_3519476_right_encoded small_3519476_right_checked

theorem cover_3519476 : CoveredBy scale carrier boxes root_3519476 := by
  apply coveredBy_split_literal root_3519476 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0244.root_3519477 small_3519476_right_root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0244.cover_3519477
  · exact small_3519476_right_covered
#print axioms cover_3519476

def root_3519470 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3519470_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3519470_left_fuel : Nat := 1
def small_3519470_left_count : Nat := 1
def small_3519470_left_encoded : String := "00000001"
theorem small_3519470_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3519470_left_root small_3519470_left_fuel small_3519470_left_count small_3519470_left_encoded = true := by
  decide +kernel
theorem small_3519470_left_covered : CoveredBy scale carrier boxes small_3519470_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3519470_left_root small_3519470_left_fuel small_3519470_left_count small_3519470_left_encoded small_3519470_left_checked

theorem cover_3519470 : CoveredBy scale carrier boxes root_3519470 := by
  apply coveredBy_split_literal root_3519470 small_3519470_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.root_3519476 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3519470_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.cover_3519476
#print axioms cover_3519470

def root_3510120 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3510120 : CoveredBy scale carrier boxes root_3510120 := by
  apply coveredBy_split_literal root_3510120 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_3510121 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.root_3519470 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_3510121
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.cover_3519470
#print axioms cover_3510120

def root_3510114 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3510114_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3510114_left_fuel : Nat := 1
def small_3510114_left_count : Nat := 1
def small_3510114_left_encoded : String := "00000000"
theorem small_3510114_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3510114_left_root small_3510114_left_fuel small_3510114_left_count small_3510114_left_encoded = true := by
  decide +kernel
theorem small_3510114_left_covered : CoveredBy scale carrier boxes small_3510114_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3510114_left_root small_3510114_left_fuel small_3510114_left_count small_3510114_left_encoded small_3510114_left_checked

theorem cover_3510114 : CoveredBy scale carrier boxes root_3510114 := by
  apply coveredBy_split_literal root_3510114 small_3510114_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.root_3510120 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3510114_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.cover_3510120
#print axioms cover_3510114

def root_3499868 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3499868 : CoveredBy scale carrier boxes root_3499868 := by
  apply coveredBy_split_literal root_3499868 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0242.root_3499869 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.root_3510114 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0242.cover_3499869
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.cover_3510114
#print axioms cover_3499868

def root_3450832 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3450832 : CoveredBy scale carrier boxes root_3450832 := by
  apply coveredBy_split_literal root_3450832 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0241.root_3450833 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.root_3499868 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0241.cover_3450833
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.cover_3499868
#print axioms cover_3450832

def root_3447770 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3447770 : CoveredBy scale carrier boxes root_3447770 := by
  apply coveredBy_split_literal root_3447770 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1315.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.root_3450832 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1315.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.cover_3450832
#print axioms cover_3447770

def root_3533090 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3533090 : CoveredBy scale carrier boxes root_3533090 := by
  apply coveredBy_split_literal root_3533090 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1340.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1341.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1340.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1341.covered
#print axioms cover_3533090

def root_3533084 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3533084_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3533084_left_fuel : Nat := 1
def small_3533084_left_count : Nat := 1
def small_3533084_left_encoded : String := "00000002"
theorem small_3533084_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3533084_left_root small_3533084_left_fuel small_3533084_left_count small_3533084_left_encoded = true := by
  decide +kernel
theorem small_3533084_left_covered : CoveredBy scale carrier boxes small_3533084_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3533084_left_root small_3533084_left_fuel small_3533084_left_count small_3533084_left_encoded small_3533084_left_checked

theorem cover_3533084 : CoveredBy scale carrier boxes root_3533084 := by
  apply coveredBy_split_literal root_3533084 small_3533084_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.root_3533090 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3533084_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.cover_3533090
#print axioms cover_3533084

def root_3532268 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3532268_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3532268_left_fuel : Nat := 22
def small_3532268_left_count : Nat := 391
def small_3532268_left_encoded : String := "1151E8FB0A0001061151E907000000030A0000FE1152250908A91301120700F608A91303120700F808A913090000000612073CFE000000040500010400000006000000080000000112073CF80000000108A913090000000612073CFE0000000405000104135D44FB05000106000000060000000600000002135D80FB0000000205000106135D45070000000304548A01138670F60CFD9C0300000005000000090000000000000008135D810704548A010000000500000006000000030000000012073CF60000000008A91303120700F8000000080000000112073CF80000000108A913090000000600000006000000041151E9090000000408A91301120700F608A91303120700F805000104135D44FB0000000500000002000000050000000112073CF80000000105000104135D44FB050001060000000A135D8107050000FE000000060000000A0000000300000002135D80FB0000000205000106135D450700000003050000FE135D810904548A010000000A00000009000000040000000A135D8107050000FE135D810904548A01000000051386ACF60000000000000006000000040000000A000000030000000012073CF60000000008A91303120700F805000104135D44FB05000106000000080000000800000002000000080000000112073CF80000000105000104135D44FB05000106135D45070000000300000009135D8107050000FE00000008135D4509000000040CFD9C010F34D0F60CFD9C03000000050000000600000000000000080000000300000002135D80FB0000000205000106135D45070000000300000006135D8107050000FE00000006135D4509000000040CFD9C010F34D0F60CFD9C030000000800000006000000000000000800000003115225070A0000FE1152250908A91301120700F608A913030000000512073CF80000000108A913070000000512073D0608A913090000000512073CFE0000000405000104135D44FB000000050000000200000005000000030000000012073CF60000000008A91303120700F808A913070000000512073D0608A913090000000500000008000000030000000112073CF80000000108A9130712070106000000030000000512073D0608A91309120700FE000000060000000412073CFE0000000405000104135D44FB0CFD9C010F34D0F60CFD9C030000000500000006000000000000000800000002135D80FB000000020CFD9C010F34D0F60CFD9C030000000500000006000000000000000800000003000000041151E9090000000408A91301120700F608A913030000000512073CF80000000108A913070000000512073D0605000104135D44FB0000000500000002135D80FB00000002050000FE00000005135D45090000000404548A01000000051386ACF6000000000CFD9C03000000050F350CF8000000010CFD9C07000000050F350D060000000600000003000000030000000012073CF60000000008A91303120700F808A913070000000512073D0605000104135D44FB0000000500000002135D80FB00000002050000FE00000005135D4509000000040CFD9C010000000500000008000000030000000112073CF80000000108A91307120701060000000305000104135D44FB050000FE00000005135D4509000000040CFD9C01000000050F350CF6000000000000000800000002135D80FB00000002050000FE135D81090CFD9C01000000050000000800000004135D4509000000040CFD9C010F34D0F600000005000000000F350CF6000000000000000812073D0605000104135D44FB050000FE135D81090CFD9C010F34D0F60CFD9C030000000500000008000000000000000800000004135D4509000000040CFD9C010F34D0F60CFD9C03000000050F350CF8000000010CFD9C070000000500000008000000000F350CF6000000000CFD9C03000000080000000800000002135D80FB00000002050000FE135D81090CFD9C010F34D0F60CFD9C030000000500000008000000000000000800000004135D4509000000040CFD9C010F34D0F60CFD9C030F34D0F800000008000000010F350CF8000000010CFD9C070F34D10600000003000000080F350D060000000600000003000000000F350CF6000000000CFD9C030000000800000008000000030000000300000002"
theorem small_3532268_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3532268_left_root small_3532268_left_fuel small_3532268_left_count small_3532268_left_encoded = true := by
  decide +kernel
theorem small_3532268_left_covered : CoveredBy scale carrier boxes small_3532268_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3532268_left_root small_3532268_left_fuel small_3532268_left_count small_3532268_left_encoded small_3532268_left_checked

theorem cover_3532268 : CoveredBy scale carrier boxes root_3532268 := by
  apply coveredBy_split_literal root_3532268 small_3532268_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.root_3533084 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3532268_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.cover_3533084
#print axioms cover_3532268

def root_3532263 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3532263_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3532263_right_fuel : Nat := 1
def small_3532263_right_count : Nat := 1
def small_3532263_right_encoded : String := "00000001"
theorem small_3532263_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3532263_right_root small_3532263_right_fuel small_3532263_right_count small_3532263_right_encoded = true := by
  decide +kernel
theorem small_3532263_right_covered : CoveredBy scale carrier boxes small_3532263_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3532263_right_root small_3532263_right_fuel small_3532263_right_count small_3532263_right_encoded small_3532263_right_checked

theorem cover_3532263 : CoveredBy scale carrier boxes root_3532263 := by
  apply coveredBy_split_literal root_3532263 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.root_3532268 small_3532263_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.cover_3532268
  · exact small_3532263_right_covered
#print axioms cover_3532263

def root_3537176 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3537176 : CoveredBy scale carrier boxes root_3537176 := by
  apply coveredBy_split_literal root_3537176 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1342.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1343.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1342.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1343.covered
#print axioms cover_3537176

def root_3537170 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3537170_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3537170_left_fuel : Nat := 1
def small_3537170_left_count : Nat := 1
def small_3537170_left_encoded : String := "00000002"
theorem small_3537170_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3537170_left_root small_3537170_left_fuel small_3537170_left_count small_3537170_left_encoded = true := by
  decide +kernel
theorem small_3537170_left_covered : CoveredBy scale carrier boxes small_3537170_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3537170_left_root small_3537170_left_fuel small_3537170_left_count small_3537170_left_encoded small_3537170_left_checked

theorem cover_3537170 : CoveredBy scale carrier boxes root_3537170 := by
  apply coveredBy_split_literal root_3537170 small_3537170_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.root_3537176 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3537170_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.cover_3537176
#print axioms cover_3537170

def root_3536800 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3536800_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3536800_left_fuel : Nat := 19
def small_3536800_left_count : Nat := 177
def small_3536800_left_encoded : String := "1151E8FB0A0001061151E907000000030A0000FE1152250908A91301120700F6000000090000000000000009000000041151E9090000000408A91301120700F6050000F80000000A000000090000000000000009115225070A0000FE1152250908A91301120700F608A913070000000512073D0608A913090000000512073CFE00000004050000F8135D81030000000500000001135D450300000001050001040000000500000007000000030000000012073CF60000000008A913070000000612073D0608A91309000000060000000600000003000000041151E9090000000408A91301120700F608A913071207010600000003050000F8000000050000000612073D06050000F8135D81030500010400000006135D80FB00000002050000FE135D81090000000600000004135D45090000000404548A01138670F60CFD9C07000000050000000A000000000000000600000001135D45030000000105000104135D44FB050000FE000000060000000600000002135D80FB00000002050000FE135D810904548A01000000090000000700000004135D45090000000404548A01138670F60CFD9C070000000600000009000000001386ACF60000000000000009000000030000000012073CF60000000008A913071207010600000003050000F8135D810305000104135D44FB050000FE00000006135D4509000000040CFD9C01000000060F350CF6000000000000000600000002135D80FB000000020000000600000001135D45030000000105000104000000060000000612073D06050000F8135D810305000104135D44FB050000FE00000006135D4509000000040CFD9C01000000060000000900000002135D80FB00000002050000FE00000006135D4509000000040CFD9C01000000060F350CF6000000000000000600000001135D4503000000010500010400000009135D80FB0000000200000006000000030000000300000002"
theorem small_3536800_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3536800_left_root small_3536800_left_fuel small_3536800_left_count small_3536800_left_encoded = true := by
  decide +kernel
theorem small_3536800_left_covered : CoveredBy scale carrier boxes small_3536800_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3536800_left_root small_3536800_left_fuel small_3536800_left_count small_3536800_left_encoded small_3536800_left_checked

theorem cover_3536800 : CoveredBy scale carrier boxes root_3536800 := by
  apply coveredBy_split_literal root_3536800 small_3536800_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.root_3537170 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3536800_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.cover_3537170
#print axioms cover_3536800

def root_3536794 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3536794_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3536794_left_fuel : Nat := 1
def small_3536794_left_count : Nat := 1
def small_3536794_left_encoded : String := "00000001"
theorem small_3536794_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3536794_left_root small_3536794_left_fuel small_3536794_left_count small_3536794_left_encoded = true := by
  decide +kernel
theorem small_3536794_left_covered : CoveredBy scale carrier boxes small_3536794_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3536794_left_root small_3536794_left_fuel small_3536794_left_count small_3536794_left_encoded small_3536794_left_checked

theorem cover_3536794 : CoveredBy scale carrier boxes root_3536794 := by
  apply coveredBy_split_literal root_3536794 small_3536794_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.root_3536800 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3536794_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.cover_3536800
#print axioms cover_3536794

def root_3532262 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3532262 : CoveredBy scale carrier boxes root_3532262 := by
  apply coveredBy_split_literal root_3532262 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.root_3532263 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.root_3536794 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.cover_3532263
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.cover_3536794
#print axioms cover_3532262

def root_3532257 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3532257_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3532257_right_fuel : Nat := 1
def small_3532257_right_count : Nat := 1
def small_3532257_right_encoded : String := "00000000"
theorem small_3532257_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3532257_right_root small_3532257_right_fuel small_3532257_right_count small_3532257_right_encoded = true := by
  decide +kernel
theorem small_3532257_right_covered : CoveredBy scale carrier boxes small_3532257_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3532257_right_root small_3532257_right_fuel small_3532257_right_count small_3532257_right_encoded small_3532257_right_checked

theorem cover_3532257 : CoveredBy scale carrier boxes root_3532257 := by
  apply coveredBy_split_literal root_3532257 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.root_3532262 small_3532257_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.cover_3532262
  · exact small_3532257_right_covered
#print axioms cover_3532257

def root_3532256 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3532256_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3532256_right_fuel : Nat := 21
def small_3532256_right_count : Nat := 215
def small_3532256_right_encoded : String := "1151E901000000000A0000F8115225030A0001041151E8FB0A0001061151E907000000030A0000FE1152250900000008000000041151E9090000000408A913030000000800000008115225070A0000FE1152250908A91303120700F8000000080000000112073CF80000000108A9130712070106000000030000000800000008000000041151E9090000000408A91303120700F8000000080000000112073CF80000000108A91307120701060000000300000008000000080000000300000002115224FB000000020A0001061151E907000000030A0000FE1152250908A913030000000812073CF80000000108A912FB00000006120701040000000200000006000000041151E9090000000408A91303120700F8000000080000000112073CF80000000108A912FB0000000600000005115225070A0000FE1152250908A91303120700F808A912FB000000081207010400000002000000060000000112073CF80000000108A912FB12073D0408A9130712070106000000030000000A12073D0600000008000000030000000212070104000000020000000A000000041151E9090000000408A91303120700F808A912FB12073D0408A913071207010600000003000000080000000800000002120701040000000208A9130700000006000000080000000112073CF80000000108A912FB12073D0408A913071207010600000003050000F6135D8101050000FE00000006135D4509000000040CFD9C030000000A00000006000000000000000812073D06050000F6135D8101050000FE00000008135D4509000000040CFD9C0300000008000000080000000000000008000000030000000212070104000000020000000600000003000000011151E903000000010A0001041151E8FB0A0001061151E9070000000300000006115225070A0000FE1152250900000009000000041151E9090000000408A91307120701060000000300000008000000090000000300000002115224FB000000020A0001061151E907000000030A0000FE1152250908A912FB0000000900000009000000041151E9090000000400000005115225070A0000FE1152250908A912FB00000006120701040000000208A913070000000A00000006000000041151E9090000000408A912FB12073D0408A913070000000600000006000000020000000600000003"
theorem small_3532256_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3532256_right_root small_3532256_right_fuel small_3532256_right_count small_3532256_right_encoded = true := by
  decide +kernel
theorem small_3532256_right_covered : CoveredBy scale carrier boxes small_3532256_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3532256_right_root small_3532256_right_fuel small_3532256_right_count small_3532256_right_encoded small_3532256_right_checked

theorem cover_3532256 : CoveredBy scale carrier boxes root_3532256 := by
  apply coveredBy_split_literal root_3532256 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.root_3532257 small_3532256_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.cover_3532257
  · exact small_3532256_right_covered
#print axioms cover_3532256

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245
