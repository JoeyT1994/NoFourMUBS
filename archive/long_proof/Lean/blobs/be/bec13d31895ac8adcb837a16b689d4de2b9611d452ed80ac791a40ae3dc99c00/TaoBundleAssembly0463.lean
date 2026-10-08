import TaoBundleAssembly0460
import TaoBundleAssembly0462
import TaoBundleChunkBatch0629
import TaoBundleChunkBatch0630
import TaoBundleChunkBatch0633
import TaoBundleChunkBatch0634
import TaoBundleChunkBatch0635
import TaoBundleChunkBatch0636
import TaoBundleChunkBatch0637
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463
def root_6695211 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6695211_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6695211_right_fuel : Nat := 25
def small_6695211_right_count : Nat := 401
def small_6695211_right_encoded : String := "120701020000000108A912FB12073D0408A912FD12073CFC0000000308A912FF12073CFE00000004045489F71386AD00045489F91386AD020CFD9BFB000000050F34D10400000002000000050000000113867102000000010CFD9BFB000000080F34D104000000020CFD9BFD000000050F34D0FC0000000A00000003000000001386710000000000045489F91386AD020CFD9BFB0F350D040CFD9BFD000000050F34D0FC0CFD9BFF000000050000000800000003000000020F34D104000000020CFD9BFD000000050F34D0FC0CFD9BFF000000050F34D0FE022A45770000000513E1C50000000000067ECE79000000050000000800000004000000030000000113867102000000010CFD9BFB0F350D0400000008000000020F34D104000000020CFD9BFD000000080F34D0FC0000000A00000003120700FE045489F7000000081386710000000000045489F91386AD020CFD9BFB0F350D04000000080000000200000008000000010000000800000004120700FC08A912FF12073CFE00000004045489F71386AD00045489F91386AD020CFD9BFB0F350D040000000A000000020F34D10400000002045489FD1386ACFC000000030CFD9BFF0000000A0F34D0FE0000000600000004000000070000000113867102000000010000000A000000001386710000000000045489F91386AD020CFD9BFB0F350D040000000A000000020F34D10400000002045489FD1386ACFC000000030CFD9BFF0000000A0F34D0FE022A45770000000A0000000A000000040000000A000000010000000A120700FE045489F71386AD00045489F91386AD020CFD9BFB0F350D04045489FD00000008138670FC045489FF0000000A0000000800000003000000020F34D10400000002045489FD00000006000000060000000113867102000000010CFD9BFB0F350D04000000080000000200000006000000001386710000000000045489F91386AD020CFD9BFB0F350D04045489FD1386ACFC00000003045489FF1386ACFE000000040C9A8704000000080F878CFB000000020000000800000008138670FC045489FF0000000A138670FE0C9A8704000000080F878CFB00000002022A45770000000613E1C50000000000067ECE7912EA9502022A457D000000060000000500000001000000050000000400000003000000020F34D10400000002045489FD1386ACFC00000003045489FF1386ACFE00000004022A45770000000613E1C500000000000000000600000008138670FC045489FF0000000600000006000000030000000113867102000000010CFD9BFB0F350D04045489FD000000080000000A000000020F34D1040000000200000006000000040000000300000002120701040000000208A912FD12073CFC0000000308A912FF12073CFE00000004045489F71386AD00045489F91386AD02045489FB1386AD040CFD9BFD000000050F34D0FC0CFD9BFF000000050F34D0FE0000000600000004000000030000000213867104000000020CFD9BFD000000050F34D0FC0000000600000003000000011386710200000001045489FB1386AD040CFD9BFD000000050F34D0FC000000060000000300000002138671040000000200000006000000001386710000000000045489F91386AD02045489FB1386AD040CFD9BFD000000050F34D0FC0CFD9BFF000000050F34D0FE0000000600000004000000030000000213867104000000020CFD9BFD0F350CFC00000003000000050F34D0FC0000000700000003000000011386710200000001045489FB1386AD040CFD9BFD0F350CFC00000003000000050F34D0FC0CFD9BFF0000000600000006000000030000000213867104000000020CFD9BFD000000060F34D0FC0000000600000003120700FE045489F71386AD00045489F91386AD02045489FB00000008000000060000000100000006000000001386710000000000045489F91386AD02045489FB1386AD040CFD9BFD000000080F34D0FC00000006000000030000000200000009000000010000000800000004120700FC08A912FF12073CFE00000004045489F71386AD00045489F90000000700000006000000001386710000000000045489F91386AD02045489FB1386AD04045489FD1386ACFC000000030CFD9BFF0000000700000007000000070000000200000007000000011386710200000001045489FB0000000A00000006120700FE000000060000000400000003"
theorem small_6695211_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6695211_right_root small_6695211_right_fuel small_6695211_right_count small_6695211_right_encoded = true := by
  decide +kernel
theorem small_6695211_right_covered : CoveredBy scale carrier boxes small_6695211_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6695211_right_root small_6695211_right_fuel small_6695211_right_count small_6695211_right_encoded small_6695211_right_checked

theorem cover_6695211 : CoveredBy scale carrier boxes root_6695211 := by
  apply coveredBy_split_literal root_6695211 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.root_6695212 small_6695211_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.cover_6695212
  · exact small_6695211_right_covered
#print axioms cover_6695211

def root_6695205 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6695205_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6695205_left_fuel : Nat := 1
def small_6695205_left_count : Nat := 1
def small_6695205_left_encoded : String := "00000000"
theorem small_6695205_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6695205_left_root small_6695205_left_fuel small_6695205_left_count small_6695205_left_encoded = true := by
  decide +kernel
theorem small_6695205_left_covered : CoveredBy scale carrier boxes small_6695205_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6695205_left_root small_6695205_left_fuel small_6695205_left_count small_6695205_left_encoded small_6695205_left_checked

theorem cover_6695205 : CoveredBy scale carrier boxes root_6695205 := by
  apply coveredBy_split_literal root_6695205 small_6695205_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6695211 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6695205_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6695211
#print axioms cover_6695205

def root_6693095 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6693095 : CoveredBy scale carrier boxes root_6693095 := by
  apply coveredBy_split_literal root_6693095 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2520.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6695205 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2520.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6695205
#print axioms cover_6693095

def root_6693089 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6693089_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6693089_left_fuel : Nat := 1
def small_6693089_left_count : Nat := 1
def small_6693089_left_encoded : String := "00000004"
theorem small_6693089_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6693089_left_root small_6693089_left_fuel small_6693089_left_count small_6693089_left_encoded = true := by
  decide +kernel
theorem small_6693089_left_covered : CoveredBy scale carrier boxes small_6693089_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6693089_left_root small_6693089_left_fuel small_6693089_left_count small_6693089_left_encoded small_6693089_left_checked

theorem cover_6693089 : CoveredBy scale carrier boxes root_6693089 := by
  apply coveredBy_split_literal root_6693089 small_6693089_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6693095 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6693089_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6693095
#print axioms cover_6693089

def root_6693088 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6693088_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6693088_right_fuel : Nat := 17
def small_6693088_right_count : Nat := 107
def small_6693088_right_encoded : String := "1151E8FF08A912F712073D0008A912F912073D0208A912FB12073D0408A912FD00000005120700FC050000FE00000007000000050000000300000002120701040000000208A912FD000000050000000700000001120701020000000108A912FB12073D0408A912FD00000005120700FC050000FE135D80FF000000040CFD9BF70F350D00045489F90000000513867102000000010CFD9BFB0000000500000007000000000F34D10000000000045489F9000000050000000A135D44FF00000005000000040000000300000002120701040000000208A912FD000000050000000A00000000120701000000000008A912F912073D0208A912FB12073D0408A912FD00000005120700FC050000FE135D80FF00000004045489F70000000713867100000000000CFD9BF90F350D020CFD9BFB0000000500000007000000010F34D1020000000100000005135D44FF00000005000000040000000300000002120701040000000208A912FD000000050000000700000001120701020000000108A912FB12073D0408A912FD000000050000000A00000002120701040000000208A912FD000000050000000700000004"
theorem small_6693088_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6693088_right_root small_6693088_right_fuel small_6693088_right_count small_6693088_right_encoded = true := by
  decide +kernel
theorem small_6693088_right_covered : CoveredBy scale carrier boxes small_6693088_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6693088_right_root small_6693088_right_fuel small_6693088_right_count small_6693088_right_encoded small_6693088_right_checked

theorem cover_6693088 : CoveredBy scale carrier boxes root_6693088 := by
  apply coveredBy_split_literal root_6693088 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6693089 small_6693088_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6693089
  · exact small_6693088_right_covered
#print axioms cover_6693088

def root_6693082 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6693082_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6693082_left_fuel : Nat := 1
def small_6693082_left_count : Nat := 1
def small_6693082_left_encoded : String := "00000003"
theorem small_6693082_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6693082_left_root small_6693082_left_fuel small_6693082_left_count small_6693082_left_encoded = true := by
  decide +kernel
theorem small_6693082_left_covered : CoveredBy scale carrier boxes small_6693082_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6693082_left_root small_6693082_left_fuel small_6693082_left_count small_6693082_left_encoded small_6693082_left_checked

theorem cover_6693082 : CoveredBy scale carrier boxes root_6693082 := by
  apply coveredBy_split_literal root_6693082 small_6693082_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6693088 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6693082_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6693088
#print axioms cover_6693082

def root_6693081 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6693081_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6693081_right_fuel : Nat := 19
def small_6693081_right_count : Nat := 113
def small_6693081_right_encoded : String := "1151E8FD0A0000FE115224FF0000000408A912F712073D0008A912F912073D0208A912FB12073D0408A912FF00000005120700FE050000FC00000008000000050000000400000002120701040000000208A912FF00000005120700FE050000FC135D80FD000000030CFD9BF70F350D000CFD9BF90000000500000008000000000F34D100000000000CFD9BF90000000500000008135D44FD00000005000000030000000400000001120701020000000108A912FB12073D0408A912FF000000050000000800000002120701040000000208A912FF000000050000000900000000120701000000000008A912F912073D0208A912FB12073D0408A912FF00000005120700FE050000FC135D80FD00000003045489F70000000813867100000000000CFD9BF90F350D020CFD9BFB0000000500000009000000010F34D1020000000100000005135D44FD00000005000000030000000400000002120701040000000208A912FF000000050000000900000001120701020000000108A912FB12073D0408A912FF000000050000000800000002120701040000000208A912FF00000005000000081151E8FF08A912F7000000051207010000000000000000050000000400000003"
theorem small_6693081_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6693081_right_root small_6693081_right_fuel small_6693081_right_count small_6693081_right_encoded = true := by
  decide +kernel
theorem small_6693081_right_covered : CoveredBy scale carrier boxes small_6693081_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6693081_right_root small_6693081_right_fuel small_6693081_right_count small_6693081_right_encoded small_6693081_right_checked

theorem cover_6693081 : CoveredBy scale carrier boxes root_6693081 := by
  apply coveredBy_split_literal root_6693081 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6693082 small_6693081_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6693082
  · exact small_6693081_right_covered
#print axioms cover_6693081

def root_6693075 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6693075_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6693075_left_fuel : Nat := 1
def small_6693075_left_count : Nat := 1
def small_6693075_left_encoded : String := "00000002"
theorem small_6693075_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6693075_left_root small_6693075_left_fuel small_6693075_left_count small_6693075_left_encoded = true := by
  decide +kernel
theorem small_6693075_left_covered : CoveredBy scale carrier boxes small_6693075_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6693075_left_root small_6693075_left_fuel small_6693075_left_count small_6693075_left_encoded small_6693075_left_checked

theorem cover_6693075 : CoveredBy scale carrier boxes root_6693075 := by
  apply coveredBy_split_literal root_6693075 small_6693075_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6693081 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6693075_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6693081
#print axioms cover_6693075

def root_6690619 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6690619 : CoveredBy scale carrier boxes root_6690619 := by
  apply coveredBy_split_literal root_6690619 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2519.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6693075 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2519.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6693075
#print axioms cover_6690619

def root_6690613 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6690613_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6690613_left_fuel : Nat := 1
def small_6690613_left_count : Nat := 1
def small_6690613_left_encoded : String := "00000001"
theorem small_6690613_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6690613_left_root small_6690613_left_fuel small_6690613_left_count small_6690613_left_encoded = true := by
  decide +kernel
theorem small_6690613_left_covered : CoveredBy scale carrier boxes small_6690613_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6690613_left_root small_6690613_left_fuel small_6690613_left_count small_6690613_left_encoded small_6690613_left_checked

theorem cover_6690613 : CoveredBy scale carrier boxes root_6690613 := by
  apply coveredBy_split_literal root_6690613 small_6690613_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6690619 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6690613_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6690619
#print axioms cover_6690613

def root_6686457 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6686457 : CoveredBy scale carrier boxes root_6686457 := by
  apply coveredBy_split_literal root_6686457 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6686458 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6690613 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6686458
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6690613
#print axioms cover_6686457

def root_6686451 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6686451_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6686451_left_fuel : Nat := 1
def small_6686451_left_count : Nat := 1
def small_6686451_left_encoded : String := "00000000"
theorem small_6686451_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6686451_left_root small_6686451_left_fuel small_6686451_left_count small_6686451_left_encoded = true := by
  decide +kernel
theorem small_6686451_left_covered : CoveredBy scale carrier boxes small_6686451_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6686451_left_root small_6686451_left_fuel small_6686451_left_count small_6686451_left_encoded small_6686451_left_checked

theorem cover_6686451 : CoveredBy scale carrier boxes root_6686451 := by
  apply coveredBy_split_literal root_6686451 small_6686451_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6686457 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6686451_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6686457
#print axioms cover_6686451

def root_6684595 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6684595 : CoveredBy scale carrier boxes root_6684595 := by
  apply coveredBy_split_literal root_6684595 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2516.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6686451 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2516.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6686451
#print axioms cover_6684595

def root_6729462 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6729462_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6729462_left_fuel : Nat := 36
def small_6729462_left_count : Nat := 337
def small_6729462_left_encoded : String := "1151E8FB0A0000FC115224FD000000030A0000FE1152250908A912F712073D0008A912F912073D0208A912FD12073CFC0000000308A913090000000800000008120700FC08A91309120700FE0500010400000008135D80FB000000020CFD9BF7000000080F34D100000000000CFD9BF90F350D02045489FD00000008138670FC04548A0900000008000000080000000300000001000000080000000412073CFE0000000400000008000000030000000112070102000000010000000800000000120701000000000008A912F912073D0208A912FD12073CFC0000000308A91309120700FE05000104135D44FB045489F7000000080000000700000002135D80FB00000002045489F71386AD00000000080000000013867100000000000CFD9BF90F350D020CFD9BFD000000070F34D0FC0000000700000003000000010F34D10200000001000000070000000412073CFE000000040500010400000007135D80FB0000000200000008120700FC08A91309120700FE05000104135D44FB045489F71386AD000CFD9BF90F350D02045489FD00000008138670FC000000080000000300000001000000080000000013867100000000000CFD9BF9000000070F34D102000000010000000700000002135D80FB00000002045489F71386AD000CFD9BF90F350D02045489FD1386ACFC0000000300000008138670FC04548A09138670FE0C9A87020F8750F907800104128A40FB067ECE770000000812EA5900000000000000000800000002128A7CFB00000002067ECE770000000812EA590000000000022A457D0000000813E1C4FC022A458913E1C4FE0B4D4402108010F9000000090000000100000009000000040000000500000003000000010F878CF90000000100000008000000041386ACFE000000040C9A87020F8750F900000008000000010000000800000003000000010F34D10200000001000000080000000013867100000000000CFD9BF90F350D02045489FD1386ACFC0000000304548A09138670FE0C9A87020F8750F90000000700000001000000070000000400000007138670FC04548A09138670FE0C9A87020F8750F907800104128A40FB0000000700000002128A7CFB00000002022A457713E20100022A457D13E200FC00000003022A458913E1C4FE0B4D440200000006000000070000000400000005000000050000000000000005000000010F878CF9000000010780010400000007128A7CFB00000002022A457713E20100022A457D00000007000000050000000000000005000000040000000700000003000000010F34D10200000001000000070000000412073CFE0000000405000104135D44FB045489F7000000080000000700000002135D80FB00000002045489F71386AD00000000080000000013867100000000000CFD9BF90F350D02045489FD0000000700000007000000010F34D10200000001000000070000000300000001120701020000000108A912FD00000008120700FC08A91309000000080000000700000003000000041151E9090000000408A912F712073D0008A912F90000000812070102000000010000000800000000120701000000000008A912F9000000081207010200000001000000071151E8FD0A0000FE1152250908A912F712073D0008A912F912073D020000000800000001120701020000000108A91309000000080000000700000000120701000000000008A912F912073D0208A91309000000080000000700000001120701020000000100000007000000041151E9090000000408A912F712073D0008A912F912073D020500010400000006000000080000000112070102000000010000000700000000000000070000000300000002"
theorem small_6729462_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6729462_left_root small_6729462_left_fuel small_6729462_left_count small_6729462_left_encoded = true := by
  decide +kernel
theorem small_6729462_left_covered : CoveredBy scale carrier boxes small_6729462_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6729462_left_root small_6729462_left_fuel small_6729462_left_count small_6729462_left_encoded small_6729462_left_checked

theorem cover_6729462 : CoveredBy scale carrier boxes root_6729462 := by
  apply coveredBy_split_literal root_6729462 small_6729462_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2533.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6729462_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2533.covered
#print axioms cover_6729462

def root_6729456 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6729456_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6729456_left_fuel : Nat := 1
def small_6729456_left_count : Nat := 1
def small_6729456_left_encoded : String := "00000001"
theorem small_6729456_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6729456_left_root small_6729456_left_fuel small_6729456_left_count small_6729456_left_encoded = true := by
  decide +kernel
theorem small_6729456_left_covered : CoveredBy scale carrier boxes small_6729456_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6729456_left_root small_6729456_left_fuel small_6729456_left_count small_6729456_left_encoded small_6729456_left_checked

theorem cover_6729456 : CoveredBy scale carrier boxes root_6729456 := by
  apply coveredBy_split_literal root_6729456 small_6729456_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6729462 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6729456_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6729462
#print axioms cover_6729456

def root_6727574 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6727574 : CoveredBy scale carrier boxes root_6727574 := by
  apply coveredBy_split_literal root_6727574 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2532.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6729456 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2532.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6729456
#print axioms cover_6727574

def root_6727568 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6727568_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6727568_left_fuel : Nat := 1
def small_6727568_left_count : Nat := 1
def small_6727568_left_encoded : String := "00000000"
theorem small_6727568_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6727568_left_root small_6727568_left_fuel small_6727568_left_count small_6727568_left_encoded = true := by
  decide +kernel
theorem small_6727568_left_covered : CoveredBy scale carrier boxes small_6727568_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6727568_left_root small_6727568_left_fuel small_6727568_left_count small_6727568_left_encoded small_6727568_left_checked

theorem cover_6727568 : CoveredBy scale carrier boxes root_6727568 := by
  apply coveredBy_split_literal root_6727568 small_6727568_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6727574 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6727568_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6727574
#print axioms cover_6727568

def root_6725278 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6725278 : CoveredBy scale carrier boxes root_6725278 := by
  apply coveredBy_split_literal root_6725278 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2531.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6727568 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2531.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6727568
#print axioms cover_6725278

def root_6684594 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6684594 : CoveredBy scale carrier boxes root_6684594 := by
  apply coveredBy_split_literal root_6684594 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6684595 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6725278 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6684595
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6725278
#print axioms cover_6684594

def root_6684593 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6684593 : CoveredBy scale carrier boxes root_6684593 := by
  apply coveredBy_split_literal root_6684593 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6684594 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2534.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6684594
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2534.covered
#print axioms cover_6684593

def root_6739378 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6739378 : CoveredBy scale carrier boxes root_6739378 := by
  apply coveredBy_split_literal root_6739378 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2537.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2538.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2537.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2538.covered
#print axioms cover_6739378

def root_6739372 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6739372_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6739372_left_fuel : Nat := 1
def small_6739372_left_count : Nat := 1
def small_6739372_left_encoded : String := "00000001"
theorem small_6739372_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6739372_left_root small_6739372_left_fuel small_6739372_left_count small_6739372_left_encoded = true := by
  decide +kernel
theorem small_6739372_left_covered : CoveredBy scale carrier boxes small_6739372_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6739372_left_root small_6739372_left_fuel small_6739372_left_count small_6739372_left_encoded small_6739372_left_checked

theorem cover_6739372 : CoveredBy scale carrier boxes root_6739372 := by
  apply coveredBy_split_literal root_6739372 small_6739372_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6739378 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6739372_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6739378
#print axioms cover_6739372

def root_6737752 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6737752 : CoveredBy scale carrier boxes root_6737752 := by
  apply coveredBy_split_literal root_6737752 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2536.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6739372 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2536.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6739372
#print axioms cover_6737752

def root_6737746 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6737746_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6737746_left_fuel : Nat := 1
def small_6737746_left_count : Nat := 1
def small_6737746_left_encoded : String := "00000000"
theorem small_6737746_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6737746_left_root small_6737746_left_fuel small_6737746_left_count small_6737746_left_encoded = true := by
  decide +kernel
theorem small_6737746_left_covered : CoveredBy scale carrier boxes small_6737746_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6737746_left_root small_6737746_left_fuel small_6737746_left_count small_6737746_left_encoded small_6737746_left_checked

theorem cover_6737746 : CoveredBy scale carrier boxes root_6737746 := by
  apply coveredBy_split_literal root_6737746 small_6737746_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6737752 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6737746_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6737752
#print axioms cover_6737746

def root_6735418 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6735418 : CoveredBy scale carrier boxes root_6735418 := by
  apply coveredBy_split_literal root_6735418 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2535.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6737746 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2535.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6737746
#print axioms cover_6735418

def root_6749081 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6749081 : CoveredBy scale carrier boxes root_6749081 := by
  apply coveredBy_split_literal root_6749081 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2541.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2542.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2541.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2542.covered
#print axioms cover_6749081

def root_6749075 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6749075_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6749075_left_fuel : Nat := 1
def small_6749075_left_count : Nat := 1
def small_6749075_left_encoded : String := "00000002"
theorem small_6749075_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6749075_left_root small_6749075_left_fuel small_6749075_left_count small_6749075_left_encoded = true := by
  decide +kernel
theorem small_6749075_left_covered : CoveredBy scale carrier boxes small_6749075_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6749075_left_root small_6749075_left_fuel small_6749075_left_count small_6749075_left_encoded small_6749075_left_checked

theorem cover_6749075 : CoveredBy scale carrier boxes root_6749075 := by
  apply coveredBy_split_literal root_6749075 small_6749075_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6749081 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6749075_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6749081
#print axioms cover_6749075

def root_6746361 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6746361 : CoveredBy scale carrier boxes root_6746361 := by
  apply coveredBy_split_literal root_6746361 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2540.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6749075 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2540.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6749075
#print axioms cover_6746361

def root_6746356 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6746356_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6746356_right_fuel : Nat := 1
def small_6746356_right_count : Nat := 1
def small_6746356_right_encoded : String := "00000001"
theorem small_6746356_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6746356_right_root small_6746356_right_fuel small_6746356_right_count small_6746356_right_encoded = true := by
  decide +kernel
theorem small_6746356_right_covered : CoveredBy scale carrier boxes small_6746356_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6746356_right_root small_6746356_right_fuel small_6746356_right_count small_6746356_right_encoded small_6746356_right_checked

theorem cover_6746356 : CoveredBy scale carrier boxes root_6746356 := by
  apply coveredBy_split_literal root_6746356 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6746361 small_6746356_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6746361
  · exact small_6746356_right_covered
#print axioms cover_6746356

def root_6753969 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6753969 : CoveredBy scale carrier boxes root_6753969 := by
  apply coveredBy_split_literal root_6753969 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2543.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2544.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2543.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2544.covered
#print axioms cover_6753969

def root_6753964 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6753964_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6753964_right_fuel : Nat := 1
def small_6753964_right_count : Nat := 1
def small_6753964_right_encoded : String := "00000002"
theorem small_6753964_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6753964_right_root small_6753964_right_fuel small_6753964_right_count small_6753964_right_encoded = true := by
  decide +kernel
theorem small_6753964_right_covered : CoveredBy scale carrier boxes small_6753964_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6753964_right_root small_6753964_right_fuel small_6753964_right_count small_6753964_right_encoded small_6753964_right_checked

theorem cover_6753964 : CoveredBy scale carrier boxes root_6753964 := by
  apply coveredBy_split_literal root_6753964 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6753969 small_6753964_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6753969
  · exact small_6753964_right_covered
#print axioms cover_6753964

def root_6762663 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6762663 : CoveredBy scale carrier boxes root_6762663 := by
  apply coveredBy_split_literal root_6762663 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2546.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2547.root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2546.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2547.covered
#print axioms cover_6762663

def root_6762658 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6762658_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6762658_right_fuel : Nat := 1
def small_6762658_right_count : Nat := 1
def small_6762658_right_encoded : String := "00000001"
theorem small_6762658_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6762658_right_root small_6762658_right_fuel small_6762658_right_count small_6762658_right_encoded = true := by
  decide +kernel
theorem small_6762658_right_covered : CoveredBy scale carrier boxes small_6762658_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6762658_right_root small_6762658_right_fuel small_6762658_right_count small_6762658_right_encoded small_6762658_right_checked

theorem cover_6762658 : CoveredBy scale carrier boxes root_6762658 := by
  apply coveredBy_split_literal root_6762658 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6762663 small_6762658_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6762663
  · exact small_6762658_right_covered
#print axioms cover_6762658

def root_6762657 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6762657 : CoveredBy scale carrier boxes root_6762657 := by
  apply coveredBy_split_literal root_6762657 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6762658 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2548.root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6762658
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2548.covered
#print axioms cover_6762657

def root_6762651 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6762651_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6762651_left_fuel : Nat := 1
def small_6762651_left_count : Nat := 1
def small_6762651_left_encoded : String := "00000000"
theorem small_6762651_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6762651_left_root small_6762651_left_fuel small_6762651_left_count small_6762651_left_encoded = true := by
  decide +kernel
theorem small_6762651_left_covered : CoveredBy scale carrier boxes small_6762651_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6762651_left_root small_6762651_left_fuel small_6762651_left_count small_6762651_left_encoded small_6762651_left_checked

theorem cover_6762651 : CoveredBy scale carrier boxes root_6762651 := by
  apply coveredBy_split_literal root_6762651 small_6762651_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6762657 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6762651_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6762657
#print axioms cover_6762651

def root_6761899 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6761899_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6761899_left_fuel : Nat := 26
def small_6761899_left_count : Nat := 355
def small_6761899_left_encoded : String := "1386AD000CFD9BF90F350D020CFD9BFB0F350D040CFD9C070F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8702000000050F878CF90000000100000005000000030F350CFC000000030CFD9C090F34D0FE0C9A8702000000050F878CF90000000100000005000000040F350CFE000000040C9A87020F8750F90C9A8704000000050F878CFB000000020C9A86FC000000050F875107000000030C9A86FE000000050F8751090000000400000005000000010F878CF9000000010C9A87040F8750FB0C9A86FC000000050F875107000000030C9A86FE000000050F8751090000000400000005000000020F878CFB000000020C9A86FC0F878D070C9A86FE000000050F8751090000000400000005000000030F875107000000030C9A86FE000000050F87510900000004067ECE7712EA95000DE7CA02000000050E6014F9000000010DE7CA0400000005000000060000000012EA5900000000000DE7CA020E5FD8F90DE7CA04000000050E6014FB0000000200000005000000010E6014F9000000010DE7CA04000000050E6014FB000000020B4D43FC00000005108011070000000300000006000000020F34D104000000020CFD9C070F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8702000000050F878CF9000000010C9A86FE000000050F875109000000040000000A000000030F350CFC000000030CFD9C090F34D0FE0C9A8702000000050F878CF9000000010C9A86FC0000000500000007000000040F350CFE000000040C9A87020F8750F90C9A86FC0F878D070C9A86FE000000050F8751090000000400000005000000030F875107000000030C9A86FE000000050F87510900000004067ECE770000000712EA5900000000000AD3577B0000000A10D101040000000200000007000000010F878CF9000000010C9A86FC0F878D070C9A86FE000000050F87510900000004067ECE770000000612EA5900000000000AD3577B0000000A00000006000000030F875107000000030C9A86FE0F878D09067ECE770000000612EA5900000000000AD3577B0000000700000006000000040F87510900000004067ECE770000000612EA5900000000000AD3577B10D13D040DE7CA020E5FD8F90B4D43FC000000060000000700000001000000060000000210D101040000000200000006000000010F34D102000000010CFD9BFB0F350D040CFD9C070F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8704000000050F878CFB000000020C9A86FE0000000500000008000000030F350CFC000000030CFD9C090F34D0FE0C9A8704000000050F878CFB000000020C9A86FC000000050F8751070000000300000009000000040F350CFE000000040C9A87040F8750FB0C9A86FC0F878D070C9A86FE000000050F8751090000000400000005000000030F875107000000030C9A86FE000000050F87510900000004067ECE770000000812EA5900000000000AD357790000000910D101020000000100000008000000020F878CFB000000020C9A86FC0F878D070C9A86FE000000050F87510900000004067ECE770000000612EA5900000000000AD357790000000800000006000000030F875107000000030C9A86FE0F878D09067ECE770000000612EA5900000000000AD357790000000900000006000000040F87510900000004067ECE770000000612EA5900000000000AD3577910D13D020DE7CA040E5FD8FB0B4D43FC0000000610801107000000030B4D43FE000000060000000600000002000000060000000110D101020000000100000006000000020F34D104000000020CFD9C070F34D0FC0CFD9C090F34D0FE000000050000000400000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FC000000060F875107000000030000000600000000"
theorem small_6761899_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6761899_left_root small_6761899_left_fuel small_6761899_left_count small_6761899_left_encoded = true := by
  decide +kernel
theorem small_6761899_left_covered : CoveredBy scale carrier boxes small_6761899_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6761899_left_root small_6761899_left_fuel small_6761899_left_count small_6761899_left_encoded small_6761899_left_checked

theorem cover_6761899 : CoveredBy scale carrier boxes root_6761899 := by
  apply coveredBy_split_literal root_6761899 small_6761899_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6762651 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_6761899_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6762651
#print axioms cover_6761899

def root_6761893 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6761893_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6761893_left_fuel : Nat := 1
def small_6761893_left_count : Nat := 1
def small_6761893_left_encoded : String := "00000004"
theorem small_6761893_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6761893_left_root small_6761893_left_fuel small_6761893_left_count small_6761893_left_encoded = true := by
  decide +kernel
theorem small_6761893_left_covered : CoveredBy scale carrier boxes small_6761893_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6761893_left_root small_6761893_left_fuel small_6761893_left_count small_6761893_left_encoded small_6761893_left_checked

theorem cover_6761893 : CoveredBy scale carrier boxes root_6761893 := by
  apply coveredBy_split_literal root_6761893 small_6761893_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6761899 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6761893_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6761899
#print axioms cover_6761893

def root_6761669 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6761669_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6761669_left_fuel : Nat := 14
def small_6761669_left_count : Nat := 103
def small_6761669_left_encoded : String := "120700FE045489F71386AD000CFD9BF90F350D020CFD9BFB0F350D040CFD9C070F34D0FC04548A09138670FE0000000900000004000000050000000300000009000000020F34D104000000020CFD9C070F34D0FC04548A090000000700000005000000030F350CFC0000000300000007000000010F34D102000000010CFD9BFB0F350D040CFD9C070F34D0FC04548A0900000009000000050000000300000009000000020F34D104000000020CFD9C070F34D0FC00000006000000030F350CFC00000003000000070000000013867100000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9C070F34D0FC000000050000000300000009000000020F34D104000000020CFD9C070F34D0FC00000005000000030F350CFC0000000304548A090000000700000005000000010F34D102000000010CFD9BFB0F350D040CFD9C070F34D0FC000000050000000300000009000000020F34D104000000020CFD9C070F34D0FC00000005000000030F350CFC0000000304548A09000000071386ACFE000000040C9A86FC000000050F875107000000030000000700000004"
theorem small_6761669_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6761669_left_root small_6761669_left_fuel small_6761669_left_count small_6761669_left_encoded = true := by
  decide +kernel
theorem small_6761669_left_covered : CoveredBy scale carrier boxes small_6761669_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6761669_left_root small_6761669_left_fuel small_6761669_left_count small_6761669_left_encoded small_6761669_left_checked

theorem cover_6761669 : CoveredBy scale carrier boxes root_6761669 := by
  apply coveredBy_split_literal root_6761669 small_6761669_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6761893 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6761669_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6761893
#print axioms cover_6761669

def root_6761663 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6761663_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6761663_left_fuel : Nat := 1
def small_6761663_left_count : Nat := 1
def small_6761663_left_encoded : String := "00000003"
theorem small_6761663_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6761663_left_root small_6761663_left_fuel small_6761663_left_count small_6761663_left_encoded = true := by
  decide +kernel
theorem small_6761663_left_covered : CoveredBy scale carrier boxes small_6761663_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6761663_left_root small_6761663_left_fuel small_6761663_left_count small_6761663_left_encoded small_6761663_left_checked

theorem cover_6761663 : CoveredBy scale carrier boxes root_6761663 := by
  apply coveredBy_split_literal root_6761663 small_6761663_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.root_6761669 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6761663_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463.cover_6761669
#print axioms cover_6761663

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0463
