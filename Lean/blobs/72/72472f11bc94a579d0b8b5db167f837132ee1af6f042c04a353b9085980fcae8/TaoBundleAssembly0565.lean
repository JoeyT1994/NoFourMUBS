import TaoBundleAssembly0564
import TaoBundleChunkBatch0767
import TaoBundleChunkBatch0768
import TaoBundleChunkBatch0769
import TaoBundleChunkBatch0770
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565
def root_8191209 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8191209_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8191209_left_fuel : Nat := 15
def small_8191209_left_count : Nat := 95
def small_8191209_left_encoded : String := "1151E8FD0A0000FE1152250908A912FB12073D0408A91309120700FE05000100135D450100000000050000F80000000500000006000000090000000412073CFE0000000405000100135D450100000000050000F80000000500000006135D8101050000F8135D80F9000000010500010600000005135D80FD0000000300000006000000060000000000000002120701040000000208A91309120700FE000000060000000400000006000000041151E9090000000408A912FB12073D0405000100135D450100000000050000F8135D80F9000000010500010600000005135D80FD00000003050000FE00000005135D4509000000040000000700000007135D8101050000F8135D80F9000000010500010600000006135D80FD00000003050000FE00000006135D4509000000040CFD9BFB0000000700000006135D44F90500010600000006135D80FD00000003050000FE00000006135D4509000000040000000600000001000000000000000212070104000000020000000600000003"
theorem small_8191209_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8191209_left_root small_8191209_left_fuel small_8191209_left_count small_8191209_left_encoded = true := by
  decide +kernel
theorem small_8191209_left_covered : CoveredBy scale carrier boxes small_8191209_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8191209_left_root small_8191209_left_fuel small_8191209_left_count small_8191209_left_encoded small_8191209_left_checked

theorem cover_8191209 : CoveredBy scale carrier boxes root_8191209 := by
  apply coveredBy_split_literal root_8191209 small_8191209_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8191409 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8191209_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8191409
#print axioms cover_8191209

def root_8191203 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8191203_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8191203_left_fuel : Nat := 1
def small_8191203_left_count : Nat := 1
def small_8191203_left_encoded : String := "00000002"
theorem small_8191203_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8191203_left_root small_8191203_left_fuel small_8191203_left_count small_8191203_left_encoded = true := by
  decide +kernel
theorem small_8191203_left_covered : CoveredBy scale carrier boxes small_8191203_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8191203_left_root small_8191203_left_fuel small_8191203_left_count small_8191203_left_encoded small_8191203_left_checked

theorem cover_8191203 : CoveredBy scale carrier boxes root_8191203 := by
  apply coveredBy_split_literal root_8191203 small_8191203_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.root_8191209 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8191203_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.cover_8191209
#print axioms cover_8191203

def root_8190633 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8190633_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8190633_left_fuel : Nat := 23
def small_8190633_left_count : Nat := 273
def small_8190633_left_encoded : String := "1151E8FB0A0001061151E8FD0A0000FE1152250908A913090000000900000007000000041151E909000000040000000700000003115224FD000000030A0000FE1152250908A912FD12073D0608A91309120700FE05000100135D450100000000050000F800000005135D44F905000104000000050000000900000001135D8101050000F8135D80F90000000105000104135D44FB000000080000000200000008135D44F905000104135D44FB0CFD9BFD000000070F34D1060000000300000008000000020000000900000001000000000000000412073CFE0000000405000100135D450100000000050000F80000000500000007135D8101050000F8135D80F9000000010500010400000005135D80FB000000020CFD9BFD0F350D060CFD9C090000000900000005000000030F34D1060000000300000008135D44F905000104135D44FB0000000700000002135D80FB000000020CFD9BFD000000070F34D106000000030CFD9C090000000900000007000000010000000000000003120701060000000308A91309120700FE000000080000000412073CFE0000000405000100135D450100000000050000F800000005135D44F905000104000000050000000800000001135D8101050000F800000008135D44F905000104135D44FB0000000800000002000000080000000100000000000000041151E9090000000408A912FD12073D0605000100135D450100000000050000F8135D80F9000000010500010400000005135D80FB00000002050000FE00000005135D4509000000040000000700000007135D8101050000F8135D80F90000000105000104135D44FB050000FE00000005135D4509000000040000000700000002135D80FB00000002050000FE135D81090CFD9BFD000000070F34D1060000000307800100000000050000000800000004135D4509000000040CFD9BFD000000070F34D1060000000307800100128A410100000000078000F8128A7CF90000000107800104000000050000000800000007128A7D01078000F8128A7CF9000000010780010400000009000000080000000900000000135D44F90500010400000007135D80FB00000002050000FE00000007135D45090000000400000007000000010000000000000003120701060000000305000100135D450100000000050000F8135D80F9000000010500010400000005135D80FB00000002050000FE000000050000000A135D44F9050001040000000A135D80FB00000002050000FE135D8109045489FD0000000700000008000000040000000A00000001135D8101050000F8135D80F90000000105000104135D44FB050000FE000000050000000A00000002135D80FB00000002050000FE00000008135D45090000000400000008135D44F905000104135D44FB050000FE135D81090000000A000000040000000900000002135D80FB00000002050000FE135D8109045489FD00000009000000080000000400000009000000010000000000000002"
theorem small_8190633_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8190633_left_root small_8190633_left_fuel small_8190633_left_count small_8190633_left_encoded = true := by
  decide +kernel
theorem small_8190633_left_covered : CoveredBy scale carrier boxes small_8190633_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8190633_left_root small_8190633_left_fuel small_8190633_left_count small_8190633_left_encoded small_8190633_left_checked

theorem cover_8190633 : CoveredBy scale carrier boxes root_8190633 := by
  apply coveredBy_split_literal root_8190633 small_8190633_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.root_8191203 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8190633_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.cover_8191203
#print axioms cover_8190633

def root_8190628 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8190628_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8190628_right_fuel : Nat := 1
def small_8190628_right_count : Nat := 1
def small_8190628_right_encoded : String := "00000001"
theorem small_8190628_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8190628_right_root small_8190628_right_fuel small_8190628_right_count small_8190628_right_encoded = true := by
  decide +kernel
theorem small_8190628_right_covered : CoveredBy scale carrier boxes small_8190628_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8190628_right_root small_8190628_right_fuel small_8190628_right_count small_8190628_right_encoded small_8190628_right_checked

theorem cover_8190628 : CoveredBy scale carrier boxes root_8190628 := by
  apply coveredBy_split_literal root_8190628 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.root_8190633 small_8190628_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.cover_8190633
  · exact small_8190628_right_covered
#print axioms cover_8190628

def root_8188976 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8188976 : CoveredBy scale carrier boxes root_8188976 := by
  apply coveredBy_split_literal root_8188976 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3068.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.root_8190628 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3068.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.cover_8190628
#print axioms cover_8188976

def root_8188970 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8188970_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8188970_left_fuel : Nat := 1
def small_8188970_left_count : Nat := 1
def small_8188970_left_encoded : String := "00000000"
theorem small_8188970_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8188970_left_root small_8188970_left_fuel small_8188970_left_count small_8188970_left_encoded = true := by
  decide +kernel
theorem small_8188970_left_covered : CoveredBy scale carrier boxes small_8188970_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8188970_left_root small_8188970_left_fuel small_8188970_left_count small_8188970_left_encoded small_8188970_left_checked

theorem cover_8188970 : CoveredBy scale carrier boxes root_8188970 := by
  apply coveredBy_split_literal root_8188970 small_8188970_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.root_8188976 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8188970_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.cover_8188976
#print axioms cover_8188970

def root_8195163 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8195163 : CoveredBy scale carrier boxes root_8195163 := by
  apply coveredBy_split_literal root_8195163 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3070.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3071.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3070.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3071.covered
#print axioms cover_8195163

def root_8195157 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8195157_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8195157_left_fuel : Nat := 1
def small_8195157_left_count : Nat := 1
def small_8195157_left_encoded : String := "00000001"
theorem small_8195157_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8195157_left_root small_8195157_left_fuel small_8195157_left_count small_8195157_left_encoded = true := by
  decide +kernel
theorem small_8195157_left_covered : CoveredBy scale carrier boxes small_8195157_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8195157_left_root small_8195157_left_fuel small_8195157_left_count small_8195157_left_encoded small_8195157_left_checked

theorem cover_8195157 : CoveredBy scale carrier boxes root_8195157 := by
  apply coveredBy_split_literal root_8195157 small_8195157_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.root_8195163 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8195157_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.cover_8195163
#print axioms cover_8195157

def root_8200015 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8200015 : CoveredBy scale carrier boxes root_8200015 := by
  apply coveredBy_split_literal root_8200015 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3072.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3073.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3072.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3073.covered
#print axioms cover_8200015

def root_8200010 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8200010_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8200010_right_fuel : Nat := 1
def small_8200010_right_count : Nat := 1
def small_8200010_right_encoded : String := "00000001"
theorem small_8200010_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8200010_right_root small_8200010_right_fuel small_8200010_right_count small_8200010_right_encoded = true := by
  decide +kernel
theorem small_8200010_right_covered : CoveredBy scale carrier boxes small_8200010_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8200010_right_root small_8200010_right_fuel small_8200010_right_count small_8200010_right_encoded small_8200010_right_checked

theorem cover_8200010 : CoveredBy scale carrier boxes root_8200010 := by
  apply coveredBy_split_literal root_8200010 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.root_8200015 small_8200010_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.cover_8200015
  · exact small_8200010_right_covered
#print axioms cover_8200010

def root_8195156 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8195156 : CoveredBy scale carrier boxes root_8195156 := by
  apply coveredBy_split_literal root_8195156 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.root_8195157 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.root_8200010 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.cover_8195157
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.cover_8200010
#print axioms cover_8195156

def root_8195151 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8195151_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8195151_right_fuel : Nat := 1
def small_8195151_right_count : Nat := 1
def small_8195151_right_encoded : String := "00000000"
theorem small_8195151_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8195151_right_root small_8195151_right_fuel small_8195151_right_count small_8195151_right_encoded = true := by
  decide +kernel
theorem small_8195151_right_covered : CoveredBy scale carrier boxes small_8195151_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8195151_right_root small_8195151_right_fuel small_8195151_right_count small_8195151_right_encoded small_8195151_right_checked

theorem cover_8195151 : CoveredBy scale carrier boxes root_8195151 := by
  apply coveredBy_split_literal root_8195151 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.root_8195156 small_8195151_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.cover_8195156
  · exact small_8195151_right_covered
#print axioms cover_8195151

def root_8188969 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8188969 : CoveredBy scale carrier boxes root_8188969 := by
  apply coveredBy_split_literal root_8188969 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.root_8188970 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.root_8195151 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.cover_8188970
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.cover_8195151
#print axioms cover_8188969

def root_8185213 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8185213 : CoveredBy scale carrier boxes root_8185213 := by
  apply coveredBy_split_literal root_8185213 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8185214 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.root_8188969 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8185214
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.cover_8188969
#print axioms cover_8185213

def root_8208276 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8208276 : CoveredBy scale carrier boxes root_8208276 := by
  apply coveredBy_split_literal root_8208276 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3076.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3077.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3076.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3077.covered
#print axioms cover_8208276

def root_8208271 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8208271_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8208271_right_fuel : Nat := 1
def small_8208271_right_count : Nat := 1
def small_8208271_right_encoded : String := "00000003"
theorem small_8208271_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8208271_right_root small_8208271_right_fuel small_8208271_right_count small_8208271_right_encoded = true := by
  decide +kernel
theorem small_8208271_right_covered : CoveredBy scale carrier boxes small_8208271_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8208271_right_root small_8208271_right_fuel small_8208271_right_count small_8208271_right_encoded small_8208271_right_checked

theorem cover_8208271 : CoveredBy scale carrier boxes root_8208271 := by
  apply coveredBy_split_literal root_8208271 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.root_8208276 small_8208271_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.cover_8208276
  · exact small_8208271_right_covered
#print axioms cover_8208271

def root_8215906 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215906_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215906_left_fuel : Nat := 25
def small_8215906_left_count : Nat := 341
def small_8215906_left_encoded : String := "0F8750FD0280010013D7B1010000000007800108128A4109000000040B4D43F800000005108010F90DE7CA04000000050E6014FB000000020000000500000001128A7D090B4D43F810804CF9000000010DE7CA040E5FD8FB0B4D44060000000500000006000000020E6014FB0000000200000009108010F90DE7CA040E5FD8FB0B4D44060000000800000008000000020E6014FB000000020B4D44060000000810804CFD00000003014001000000000800000008000000010000000413D7ED0107800108128A4109000000040B4D43F810804CF9000000010DE7CA040E5FD8FB0B4D44060000000510804CFD0000000300000005000000020E6014FB000000020B4D44060000000510804CFD0000000303C001000000000513A54D01064001080000000512FFAD090DAED87B0E9661040BF3E578000000051008ECF90BF3E58600000005100928FD0000000304600100000000051384190106E0010800000005000000080000000000000001000000020E96250400000002000000090000000400000000108010F90DE7CA040E5FD8FB0B4D4406108010FD000000070000000310804CFD0000000303C0010013A5110100000000064001080000000512FFAD090AA6A27800000005000000070000000413A54D010640010812FF7109000000040000000712FFAD090AA6A27810EDACF9000000010D412884000000050EFA4CFB000000020BF3E586000000050000000810ED70F900000008000000010000000400000000000000020E6014FB000000020B4D4406108010FD03C0010013A51101000000000000000513A54D010640010812FF7109000000040000000500000008000000000000000310804CFD0000000303C0010013A5110100000000064001080000000512FFAD090DAED87B0E9661040AA6A278000000050000000800000002000000080000000413A54D010640010812FF7109000000040DAED87B0E9661040AA6A2780000000510ED70F90BF3E58600000005100928FD00000003046001000000000513841901000000080000000000000001000000020E962504000000020AA6A27810EDACF9000000010BF3E58600000005100928FD0000000304600100000000050000000A10ED70F90BF3E58600000008100928FD000000030460010000000008000000080000000112FFAD090DAED87B0E9661040AA6A27810EDACF9000000010BF3E586000000080000000800000008000000020E962504000000020AA6A27810EDACF9000000010000000800000008000000040000000000000001128A7D090B4D43F810804CF9000000010DE7CA040E5FD8FB0B4D4406108010FD03C0010000000008000000080000000310804CFD0000000303C0010013A511010000000008C0010811FBE90900000004000000050000000613A54D0108C0010811FBE909000000040BF3E578100928F9000000010D412884000000050EFA4CFB000000020BF3E58600000005000000061008ECF900000008000000010000000600000000000000020E6014FB000000020B4D4406108010FD03C0010000000008000000080000000310804CFD0000000303C0010013A511010000000008C0010811FBE90900000004000000090000000813A54D0108C0010811FBE909000000040DAED87B0E9661040BF3E578100928F9000000010000000900000008000000020E96250400000002000000090000000800000000108010F90DE7CA040E5FD8FB0B4D4406108010FD000000080000000310804CFD0000000303C001000000000813A54D010000000800000000000000020E6014FB000000020B4D4406108010FD000000080000000310804CFD0000000303C001000000000813A54D01000000080000000000000001000000040000000000000003"
theorem small_8215906_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8215906_left_root small_8215906_left_fuel small_8215906_left_count small_8215906_left_encoded = true := by
  decide +kernel
theorem small_8215906_left_covered : CoveredBy scale carrier boxes small_8215906_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8215906_left_root small_8215906_left_fuel small_8215906_left_count small_8215906_left_encoded small_8215906_left_checked

theorem cover_8215906 : CoveredBy scale carrier boxes root_8215906 := by
  apply coveredBy_split_literal root_8215906 small_8215906_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3079.root coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8215906_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3079.covered
#print axioms cover_8215906

def root_8215900 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215900_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215900_left_fuel : Nat := 1
def small_8215900_left_count : Nat := 1
def small_8215900_left_encoded : String := "00000002"
theorem small_8215900_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8215900_left_root small_8215900_left_fuel small_8215900_left_count small_8215900_left_encoded = true := by
  decide +kernel
theorem small_8215900_left_covered : CoveredBy scale carrier boxes small_8215900_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8215900_left_root small_8215900_left_fuel small_8215900_left_count small_8215900_left_encoded small_8215900_left_checked

theorem cover_8215900 : CoveredBy scale carrier boxes root_8215900 := by
  apply coveredBy_split_literal root_8215900 small_8215900_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.root_8215906 coord2 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_8215900_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.cover_8215906
#print axioms cover_8215900

def root_8215616 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215616_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215616_left_fuel : Nat := 18
def small_8215616_left_count : Nat := 135
def small_8215616_left_encoded : String := "0F8750FB0C9A87060F8750FD0280010013D7B101000000000780010800000005128A7D090B4D43F800000005108010F900000006000000010000000413D7ED0107800108128A4109000000040B4D43F80000000500000007128A7D090B4D43F810804CF9000000010B4D44040000000610804CFB000000020B4D4406108010FD03C0010000000005000000080000000300000006108010F90B4D44040000000610804CFB000000020B4D44060000000800000006000000010000000400000000000000030F878CFD000000030280010013D7B1010000000007800108128A4109000000040B4D43F800000005108010F90B4D44040000000510804CFB000000020DE7CA060000000500000006000000010000000613D7ED0107800108128A4109000000040B4D43F810804CF9000000010B4D4404108010FB000000060000000210804CFB000000020DE7CA06000000050E6014FD0000000300000006108010F90B4D4404108010FB0DE7CA060E5FD8FD0000000600000003000000060000000210804CFB000000020DE7CA060E5FD8FD03C0010013A511010000000006400108000000050000000613A54D010640010812FF710900000004000000070000000600000000000000030E6014FD0000000303C001000000000613A54D010640010812FF71090000000400000006000000060000000000000001128A7D090B4D43F800000006108010F90000000600000001000000040000000000000002"
theorem small_8215616_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8215616_left_root small_8215616_left_fuel small_8215616_left_count small_8215616_left_encoded = true := by
  decide +kernel
theorem small_8215616_left_covered : CoveredBy scale carrier boxes small_8215616_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8215616_left_root small_8215616_left_fuel small_8215616_left_count small_8215616_left_encoded small_8215616_left_checked

theorem cover_8215616 : CoveredBy scale carrier boxes root_8215616 := by
  apply coveredBy_split_literal root_8215616 small_8215616_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.root_8215900 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8215616_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.cover_8215900
#print axioms cover_8215616

def root_8215611 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215611_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215611_right_fuel : Nat := 1
def small_8215611_right_count : Nat := 1
def small_8215611_right_encoded : String := "00000001"
theorem small_8215611_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8215611_right_root small_8215611_right_fuel small_8215611_right_count small_8215611_right_encoded = true := by
  decide +kernel
theorem small_8215611_right_covered : CoveredBy scale carrier boxes small_8215611_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8215611_right_root small_8215611_right_fuel small_8215611_right_count small_8215611_right_encoded small_8215611_right_checked

theorem cover_8215611 : CoveredBy scale carrier boxes root_8215611 := by
  apply coveredBy_split_literal root_8215611 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.root_8215616 small_8215611_right_root coord1 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.cover_8215616
  · exact small_8215611_right_covered
#print axioms cover_8215611

def root_8215095 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215095_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215095_left_fuel : Nat := 22
def small_8215095_left_count : Nat := 247
def small_8215095_left_encoded : String := "0F878CF9000000010C9A87040F8750FB0C9A87060F8750FD028001000000000513D7ED010780010800000005128A7D090DE7C9F8000000050E5FD8F90B4D44040000000510804CFB000000020B4D44060000000500000006000000010000000400000000000000030F878CFD000000030280010013D7B1010000000007800108000000050000000613D7ED0107800108128A41090000000400000005128A7D09000000060000000400000000000000020F878CFB000000020C9A87060F8750FD0280010013D7B101000000000780010800000005128A7D090DE7C9F8000000050E5FD8F90DE7CA040000000500000009000000010000000413D7ED0107800108128A41090000000400000005128A7D090DE7C9F80E6014F9000000010DE7CA04000000050E6014FB00000002000000090E5FD8F90DE7CA040E5FD8FB0B4D4406108010FD03C001000000000513A54D0108C001080000000500000008000000000000000310804CFD0000000303C001000000000513A54D0108C00108000000050000000600000000000000020E6014FB000000020B4D4406108010FD03C001000000000513A54D0108C001080000000500000008000000000000000310804CFD0000000303C001000000000913A54D0108C0010811FBE90900000004000000090000000900000000000000010000000400000000000000030F878CFD000000030280010013D7B101000000000780010800000005128A7D090DE7C9F80E6014F9000000010DE7CA0400000005000000090E5FD8F90DE7CA040E5FD8FB00000006000000020E6014FB0000000200000009000000010000000413D7ED0107800108128A4109000000040DE7C9F80E6014F9000000010DE7CA04000000050E6014FB000000020DE7CA0600000005000000070E5FD8F90DE7CA040E5FD8FB0DE7CA06000000050E6014FD0000000303C001000000000513A54D01064001080000000512FFAD090DAED87D00000006000000070000000400000000000000020E6014FB000000020DE7CA060E5FD8FD03C001000000000513A54D01064001080000000512FFAD090DAED87B0E9661040000000500000002000000070000000400000000000000030E6014FD0000000303C0010013A51101000000000640010800000005000000070000000700000001128A7D090DE7C9F80E6014F9000000010DE7CA040E5FD8FB0DE7CA060E5FD8FD000000060000000300000006000000020E6014FB00000002000000070E5FD8F90DE7CA040E5FD8FB0DE7CA060E5FD8FD000000060000000300000006000000020E6014FB000000020DE7CA060E5FD8FD03C0010000000009000000070000000300000007000000010000000400000000"
theorem small_8215095_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8215095_left_root small_8215095_left_fuel small_8215095_left_count small_8215095_left_encoded = true := by
  decide +kernel
theorem small_8215095_left_covered : CoveredBy scale carrier boxes small_8215095_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8215095_left_root small_8215095_left_fuel small_8215095_left_count small_8215095_left_encoded small_8215095_left_checked

theorem cover_8215095 : CoveredBy scale carrier boxes root_8215095 := by
  apply coveredBy_split_literal root_8215095 small_8215095_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.root_8215611 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8215095_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.cover_8215611
#print axioms cover_8215095

def root_8215090 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215090_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215090_right_fuel : Nat := 1
def small_8215090_right_count : Nat := 1
def small_8215090_right_encoded : String := "00000003"
theorem small_8215090_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8215090_right_root small_8215090_right_fuel small_8215090_right_count small_8215090_right_encoded = true := by
  decide +kernel
theorem small_8215090_right_covered : CoveredBy scale carrier boxes small_8215090_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8215090_right_root small_8215090_right_fuel small_8215090_right_count small_8215090_right_encoded small_8215090_right_checked

theorem cover_8215090 : CoveredBy scale carrier boxes root_8215090 := by
  apply coveredBy_split_literal root_8215090 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.root_8215095 small_8215090_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.cover_8215095
  · exact small_8215090_right_covered
#print axioms cover_8215090

def root_8215089 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215089_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215089_right_fuel : Nat := 25
def small_8215089_right_count : Nat := 213
def small_8215089_right_encoded : String := "0F34D106000000030C9A86F80F878CF9000000010C9A87040F8750FB028001000000000A13D7ED0107800108128A4109000000040AD3577D10D13D060DE7C9F8000000050000000A000000030000000A0000000600000000000000020F878CFB000000020280010013D7B1010000000007800108128A4109000000040AD3577D10D13D060DE7C9F8000000050000000A0000000300000007128A7D090000000A0000000413D7ED0107800108128A4109000000040AD3577D10D13D060DE7C9F8000000070E5FD8F90DE7CA040E5FD8FB03C001000000000A00000007000000020000000700000001000000030000000700000007000000000F8750F90C9A87040F8750FB028001000000000A13D7ED0107800108128A4109000000040AD3577D10D13D060B4D43F8000000060000000A000000030000000A0000000600000000000000020F878CFB000000020280010013D7B1010000000007800108128A4109000000040AD3577D10D13D060B4D43F810804CF9000000010000000A0000000A000000030000000A0000000A13D7ED0107800108128A4109000000040AD3577D10D13D060B4D43F810804CF9000000010DE7CA040E5FD8FB03C001000000000A13A54D010640010812FF7109000000040BE879BD1011AD060BF3E578000000060000000A00000003000000070000000600000000000000020E6014FB0000000203C001000000000700000007108010F90DE7CA040E5FD8FB03C001000000000A13A54D010640010812FF7109000000040BE879BD1011AD060AA6A278000000060000000A000000030000000A0000000600000000000000020E6014FB0000000203C0010013A51101000000000640010812FF7109000000040BE879BD1011AD060DAED87B0000000A0000000A000000030000000A0000000A13A54D010640010812FF7109000000040BE879BD1011AD060DAED87B0E9661040AA6A278000000070000000A0000000200000007000000030000000712FFAD09000000070000000400000000000000010000000310D10106000000030B4D43F8000000070000000A128A7D090AD3577D10D13D060B4D43F810804CF9000000010DE7CA040000000600000007108010F90DE7CA04000000060E6014FB000000020000000700000001000000030000000A000000040000000000000001"
theorem small_8215089_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8215089_right_root small_8215089_right_fuel small_8215089_right_count small_8215089_right_encoded = true := by
  decide +kernel
theorem small_8215089_right_covered : CoveredBy scale carrier boxes small_8215089_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8215089_right_root small_8215089_right_fuel small_8215089_right_count small_8215089_right_encoded small_8215089_right_checked

theorem cover_8215089 : CoveredBy scale carrier boxes root_8215089 := by
  apply coveredBy_split_literal root_8215089 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.root_8215090 small_8215089_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.cover_8215090
  · exact small_8215089_right_covered
#print axioms cover_8215089

def root_8215084 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215084_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215084_right_fuel : Nat := 1
def small_8215084_right_count : Nat := 1
def small_8215084_right_encoded : String := "00000002"
theorem small_8215084_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8215084_right_root small_8215084_right_fuel small_8215084_right_count small_8215084_right_encoded = true := by
  decide +kernel
theorem small_8215084_right_covered : CoveredBy scale carrier boxes small_8215084_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8215084_right_root small_8215084_right_fuel small_8215084_right_count small_8215084_right_encoded small_8215084_right_checked

theorem cover_8215084 : CoveredBy scale carrier boxes root_8215084 := by
  apply coveredBy_split_literal root_8215084 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.root_8215089 small_8215084_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.cover_8215089
  · exact small_8215084_right_covered
#print axioms cover_8215084

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565
