import TaoBundleAssembly0022
import TaoBundleAssembly0041
import TaoBundleAssembly0047
import TaoBundleAssembly0053
import TaoBundleAssembly0056
import TaoBundleAssembly0059
import TaoBundleChunkBatch0236
import TaoBundleChunkBatch0237
import TaoBundleChunkBatch0238
import TaoBundleChunkBatch0239
import TaoBundleChunkBatch0240
import TaoBundleChunkBatch0241
import TaoBundleChunkBatch0242
import TaoBundleChunkBatch0243
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060
def root_2481093 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2481093_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2481093_left_fuel : Nat := 17
def small_2481093_left_count : Nat := 71
def small_2481093_left_encoded : String := "120701060000000308A912FF12073CFE00000004050000F6135D80F70000000004548A0313867102000000010CFD9C050F34D1040000000204548A071386710600000003000000081386AD060CFD9BFF0F350CFE000000040C9A86FE000000080000000500000008000000030F350D0404548A0713867106000000030CFD9BFF0F350CFE0000000400000008000000081386AD060CFD9BFF0F350CFE000000040C9A8704000000080F878D050C9A86FE0000000800000008000000020000000800000003000000021386AD020CFD9C05000000080F350D0404548A0700000008000000080000000200000001135D44F704548A0313867102000000010CFD9C05000000080F350D040000000800000002000000080000000000000008"
theorem small_2481093_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2481093_left_root small_2481093_left_fuel small_2481093_left_count small_2481093_left_encoded = true := by
  decide +kernel
theorem small_2481093_left_covered : CoveredBy scale carrier boxes small_2481093_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2481093_left_root small_2481093_left_fuel small_2481093_left_count small_2481093_left_encoded small_2481093_left_checked

theorem cover_2481093 : CoveredBy scale carrier boxes root_2481093 := by
  apply coveredBy_split_literal root_2481093 small_2481093_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0059.root_2481241 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2481093_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0059.cover_2481241
#print axioms cover_2481093

def root_2481088 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2481088_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2481088_right_fuel : Nat := 1
def small_2481088_right_count : Nat := 1
def small_2481088_right_encoded : String := "00000002"
theorem small_2481088_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2481088_right_root small_2481088_right_fuel small_2481088_right_count small_2481088_right_encoded = true := by
  decide +kernel
theorem small_2481088_right_covered : CoveredBy scale carrier boxes small_2481088_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2481088_right_root small_2481088_right_fuel small_2481088_right_count small_2481088_right_encoded small_2481088_right_checked

theorem cover_2481088 : CoveredBy scale carrier boxes root_2481088 := by
  apply coveredBy_split_literal root_2481088 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2481093 small_2481088_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2481093
  · exact small_2481088_right_covered
#print axioms cover_2481088

def root_2480600 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2480600_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2480600_left_fuel : Nat := 25
def small_2480600_left_count : Nat := 231
def small_2480600_left_encoded : String := "120701040000000208A91307120701060000000308A912FF12073CFE00000004050000F6135D80F70000000004548A03138671020000000104548A05000000071386AD0404548A07000000071386AD060000000A000000030000000200000007000000050000000812073D0608A912FF12073CFE00000004050000F6135D80F70000000004548A03138671020000000104548A0513867104000000020CFD9C070F34D106000000030000000A0F350D060CFD9BFF0F350CFE000000040C9A87060F875107000000030C9A86FE000000060F8750FF078000F6128A7CF7000000000000000A00000005000000040F878D070000000A000000030000000A000000031386AD040CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040000000A000000050000000A0F350D060CFD9BFF0F350CFE000000040C9A87060F875107000000030C9A86FE000000060F8750FF078000F6128A7CF700000000022A45830000000A000000060000000A000000040F878D070C9A86FE0F878CFF000000040000000A0F8750FF078000F6128A7CF700000000022A45830000000A13E20102067ECE850000000700000007000000010000000500000004000000030000000A00000003000000021386AD0204548A0513867104000000020CFD9C070F34D10600000003000000070F350D060CFD9BFF0F350CFE000000040C9A87060F875107000000030C9A86FE000000060F8750FF078000F6000000070000000700000004000000070F34D0FE0000000600000004000000031386AD040CFD9C070F34D106000000030CFD9BFF00000007000000080F350D060CFD9BFF0F350CFE000000040C9A87060F87510700000003000000060F878D070C9A86FE000000070F8750FF078000F6000000070000000700000004000000030F34D0FE0000000600000004000000030000000200000001135D44F704548A03138671020000000104548A0513867104000000020000000A1386AD040CFD9C070000000A0F350D060000000A00000003000000021386AD0204548A0513867104000000020CFD9C07000000080F350D060CFD9BFF0F350CFE000000040C9A8706000000060000000500000006000000031386AD040CFD9C070F34D10600000003000000080F350D060CFD9BFF0F350CFE000000040C9A870600000006000000080000000600000003000000020000000100000000120700FE050000F6135D80F70000000004548A030000000A000000060000000A0000000400000003"
theorem small_2480600_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2480600_left_root small_2480600_left_fuel small_2480600_left_count small_2480600_left_encoded = true := by
  decide +kernel
theorem small_2480600_left_covered : CoveredBy scale carrier boxes small_2480600_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2480600_left_root small_2480600_left_fuel small_2480600_left_count small_2480600_left_encoded small_2480600_left_checked

theorem cover_2480600 : CoveredBy scale carrier boxes root_2480600 := by
  apply coveredBy_split_literal root_2480600 small_2480600_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2481088 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2480600_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2481088
#print axioms cover_2480600

def root_2480594 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2480594_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2480594_left_fuel : Nat := 1
def small_2480594_left_count : Nat := 1
def small_2480594_left_encoded : String := "00000001"
theorem small_2480594_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2480594_left_root small_2480594_left_fuel small_2480594_left_count small_2480594_left_encoded = true := by
  decide +kernel
theorem small_2480594_left_covered : CoveredBy scale carrier boxes small_2480594_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2480594_left_root small_2480594_left_fuel small_2480594_left_count small_2480594_left_encoded small_2480594_left_checked

theorem cover_2480594 : CoveredBy scale carrier boxes root_2480594 := by
  apply coveredBy_split_literal root_2480594 small_2480594_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2480600 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_2480594_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2480600
#print axioms cover_2480594

def root_2480593 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2480593_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2480593_right_fuel : Nat := 22
def small_2480593_right_count : Nat := 215
def small_2480593_right_encoded : String := "12073D0208A91305120701040000000208A91307120701060000000308A912FF000000070000000812073D0608A912FF12073CFE00000004050000F6135D80F7000000000CFD9C030F34D1020000000104548A051386710400000002000000071386AD040CFD9C070F34D10600000003000000070F350D060CFD9BFF0F350CFE000000040C9A87060F8751070000000300000006000000070F34D0FE0000000600000004000000030000000200000007135D44F70CFD9C030F34D1020000000104548A05000000081386AD040CFD9C070000000800000008000000020F350D0204548A0500000007000000080000000100000000120700FE050000F6135D80F7000000000CFD9C030F34D102000000010000000600000007135D44F70CFD9C030000000A0000000600000000000000040000000312073D0408A91307120701060000000308A912FF12073CFE00000004050000F6135D80F7000000000CFD9C030F34D102000000010000000800000007000000080000000812073D0608A912FF12073CFE00000004050000F6135D80F7000000000CFD9C030F34D102000000010CFD9C050F34D104000000020CFD9C070F34D10600000003000000080F350D060CFD9BFF0F350CFE000000040C9A87060F87510700000003000000060F878D070C9A86FE0000000700000008000000030F34D0FE0000000600000004000000030F350D040CFD9C070F34D10600000003000000080F350D060CFD9BFF0F350CFE000000040C9A87040F875105000000020C9A87060F8751070000000300000006000000080F878D050C9A87060F87510700000003000000060F878D070000000800000003000000020F34D0FE000000060000000400000003000000020F350D020CFD9C050F34D104000000020CFD9C07000000080F350D060CFD9BFF0F350CFE000000040C9A8702000000070000000800000008000000030F350D040CFD9C07000000080F350D060CFD9BFF0F350CFE000000040C9A8702000000080000000800000008000000030000000200000001135D44F70CFD9C030F34D102000000010CFD9C050F34D104000000020CFD9C0700000008000000080F350D040CFD9C070000000800000008000000020F350D02000000080000000100000000120700FE050000F6000000080000000800000004000000030000000200000001"
theorem small_2480593_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2480593_right_root small_2480593_right_fuel small_2480593_right_count small_2480593_right_encoded = true := by
  decide +kernel
theorem small_2480593_right_covered : CoveredBy scale carrier boxes small_2480593_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2480593_right_root small_2480593_right_fuel small_2480593_right_count small_2480593_right_encoded small_2480593_right_checked

theorem cover_2480593 : CoveredBy scale carrier boxes root_2480593 := by
  apply coveredBy_split_literal root_2480593 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2480594 small_2480593_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2480594
  · exact small_2480593_right_covered
#print axioms cover_2480593

def root_2480587 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2480587_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2480587_left_fuel : Nat := 1
def small_2480587_left_count : Nat := 1
def small_2480587_left_encoded : String := "00000004"
theorem small_2480587_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2480587_left_root small_2480587_left_fuel small_2480587_left_count small_2480587_left_encoded = true := by
  decide +kernel
theorem small_2480587_left_covered : CoveredBy scale carrier boxes small_2480587_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2480587_left_root small_2480587_left_fuel small_2480587_left_count small_2480587_left_encoded small_2480587_left_checked

theorem cover_2480587 : CoveredBy scale carrier boxes root_2480587 := by
  apply coveredBy_split_literal root_2480587 small_2480587_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2480593 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2480587_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2480593
#print axioms cover_2480587

def root_2488912 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2488912 : CoveredBy scale carrier boxes root_2488912 := by
  apply coveredBy_split_literal root_2488912 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0945.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0946.root coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0945.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0946.covered
#print axioms cover_2488912

def root_2488907 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2488907_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2488907_right_fuel : Nat := 1
def small_2488907_right_count : Nat := 1
def small_2488907_right_encoded : String := "00000002"
theorem small_2488907_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2488907_right_root small_2488907_right_fuel small_2488907_right_count small_2488907_right_encoded = true := by
  decide +kernel
theorem small_2488907_right_covered : CoveredBy scale carrier boxes small_2488907_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2488907_right_root small_2488907_right_fuel small_2488907_right_count small_2488907_right_encoded small_2488907_right_checked

theorem cover_2488907 : CoveredBy scale carrier boxes root_2488907 := by
  apply coveredBy_split_literal root_2488907 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2488912 small_2488907_right_root coord2 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2488912
  · exact small_2488907_right_covered
#print axioms cover_2488907

def root_2486405 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2486405 : CoveredBy scale carrier boxes root_2486405 := by
  apply coveredBy_split_literal root_2486405 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0944.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2488907 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0944.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2488907
#print axioms cover_2486405

def root_2486400 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2486400_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2486400_right_fuel : Nat := 1
def small_2486400_right_count : Nat := 1
def small_2486400_right_encoded : String := "00000003"
theorem small_2486400_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2486400_right_root small_2486400_right_fuel small_2486400_right_count small_2486400_right_encoded = true := by
  decide +kernel
theorem small_2486400_right_covered : CoveredBy scale carrier boxes small_2486400_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2486400_right_root small_2486400_right_fuel small_2486400_right_count small_2486400_right_encoded small_2486400_right_checked

theorem cover_2486400 : CoveredBy scale carrier boxes root_2486400 := by
  apply coveredBy_split_literal root_2486400 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2486405 small_2486400_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2486405
  · exact small_2486400_right_covered
#print axioms cover_2486400

def root_2485864 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2485864_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2485864_left_fuel : Nat := 33
def small_2485864_left_count : Nat := 251
def small_2485864_left_encoded : String := "0F34D106000000030C9A87040F87510500000002078000F6128A7CF700000000078000FE128A7CFF00000004022A458313E1C502000000010AD3578710D10106000000030B4D440410801105000000020000000A10804D0508C000F611FC24F70000000008C000FE0000000800000005000000050000000210D13D060B4D4404108011050000000208C000F60000000A11FBE8F708C000FE11FC24FF000000040000000811FBE8FF0000000A000000040000000010804D0508C000F611FC24F70000000008C000FE11FC24FF000000040115234313F85902000000010BE879C71011710600000003000000080000000A0000000A11FBE8FF0000000A0000000411FBE8F708C000FE11FC24FF00000004000000080000000500000000000000020000000313E201020AD3578710D10106000000030000000810D13D060B4D44040000000A10804D0508C000F60000000A00000008000000020000000300000001128A40FF022A458313E1C502000000010AD3578710D10106000000030000000510D13D060B4D44040000000A000000050000000313E201020AD3578710D10106000000030000000A0000000A0000000100000004128A40F7078000FE128A7CFF00000004022A458313E1C502000000010AD3578710D10106000000030000000510D13D060B4D44040000000800000005000000030000000800000005000000000F878D05078000F6128A7CF700000000078000FE128A7CFF00000004022A458313E1C502000000010AD3578710D10106000000030000000510D13D060DE7CA040E5FD9050000000208C000F611FC24F70000000008C000FE11FC24FF000000040115234313F85902000000010BE879C71011710600000003000000051011AD060D4128840EFA110500000002096000F611AABCF7000000000000000A11AA80F7096000FE0000000800000005000000000EFA4D05096000F611AABCF700000000096000FE11AABCFF00000004008A922313FDF902000000010C730AE7000000060FA745060D947944000000060000000500000003000000080000000500000005000000020000000313F895020BE879C7000000081011AD060D412884000000080EFA4D05000000080000000200000003000000010000000500000005000000050000000313E201020AD3578710D10106000000030000000510D13D060DE7CA040E5FD9050000000208C000F611FC24F70000000008C000FE11FC24FF000000040000000811FBE8FF033F67C313BBF502000000010BE879C7000000050000000A0000000800000004000000080E60150508C000F611FC24F70000000008C000FE11FC24FF00000004000000080000000500000005000000020000000300000001000000050000000500000002"
theorem small_2485864_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2485864_left_root small_2485864_left_fuel small_2485864_left_count small_2485864_left_encoded = true := by
  decide +kernel
theorem small_2485864_left_covered : CoveredBy scale carrier boxes small_2485864_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2485864_left_root small_2485864_left_fuel small_2485864_left_count small_2485864_left_encoded small_2485864_left_checked

theorem cover_2485864 : CoveredBy scale carrier boxes root_2485864 := by
  apply coveredBy_split_literal root_2485864 small_2485864_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2486400 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_2485864_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2486400
#print axioms cover_2485864

def root_2485859 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2485859_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2485859_right_fuel : Nat := 1
def small_2485859_right_count : Nat := 1
def small_2485859_right_encoded : String := "00000002"
theorem small_2485859_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2485859_right_root small_2485859_right_fuel small_2485859_right_count small_2485859_right_encoded = true := by
  decide +kernel
theorem small_2485859_right_covered : CoveredBy scale carrier boxes small_2485859_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2485859_right_root small_2485859_right_fuel small_2485859_right_count small_2485859_right_encoded small_2485859_right_checked

theorem cover_2485859 : CoveredBy scale carrier boxes root_2485859 := by
  apply coveredBy_split_literal root_2485859 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2485864 small_2485859_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2485864
  · exact small_2485859_right_covered
#print axioms cover_2485859

def root_2485295 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2485295_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2485295_left_fuel : Nat := 35
def small_2485295_left_count : Nat := 263
def small_2485295_left_encoded : String := "0F34D104000000020CFD9C070F34D10600000003000000050F350D060C9A87060F87510700000003078000F6128A7CF700000000078000FE128A7CFF00000004022A458313E1C502000000010AD3578510D10104000000020B4D440610801107000000030000000610804D0708C000F600000009000000050000000310D13D040B4D4406108011070000000308C000F611FC24F70000000008C000FE0000000611FBE8FF000000090000000411FBE8F7000000060000000010804D0708C000F611FC24F70000000008C000FE11FC24FF000000040115234313F85902000000010BE879C5101171040000000200000006000000060000000611FBE8FF000000090000000411FBE8F708C000FE11FC24FF00000004000000060000000500000000000000030000000213E201020AD3578510D10104000000020000000910D13D040B4D44060000000610804D0708C000F611FC24F7000000000000000911FBE8F708C000FE000000060000000900000000000000030000000200000001128A40FF022A458313E1C502000000010AD3578510D10104000000020000000510D13D040B4D44060000000900000005000000020000000900000004128A40F7078000FE128A7CFF00000004022A458313E1C502000000010AD3578510D10104000000020000000510D13D040B4D440600000006000000050000000213E201020AD3578510D101040000000200000006000000060000000100000005000000000F878D07078000F6128A7CF700000000078000FE128A7CFF00000004022A458313E1C502000000010AD3578510D10104000000020000000510D13D040DE7CA060E5FD9070000000308C000F611FC24F70000000008C000FE11FC24FF000000040115234313F85902000000010BE879C51011710400000002000000051011AD040D4128860EFA110700000003096000F611AABCF700000000096000FE11AABCFF00000004000000060000000911AA80F7096000FE0000000600000005000000000EFA4D07096000F611AABCF700000000096000FE11AABCFF00000004008A922313FDF902000000010C730AE5000000090FA745040D947946000000090000000500000002000000090000000500000005000000030000000213F895020BE879C5000000091011AD040D412886000000090EFA4D07000000090000000300000002000000010000000500000005000000050000000213E201020AD3578510D10104000000020000000510D13D040DE7CA060E5FD9070000000308C000F611FC24F7000000000000000911FBE8F708C000FE11FC24FF00000004033F67C313BBF502000000010BE879C500000005000000060000000600000005000000000E60150708C000F611FC24F70000000008C000FE11FC24FF0000000400000009000000050000000500000003000000020000000100000005000000050000000300000003"
theorem small_2485295_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2485295_left_root small_2485295_left_fuel small_2485295_left_count small_2485295_left_encoded = true := by
  decide +kernel
theorem small_2485295_left_covered : CoveredBy scale carrier boxes small_2485295_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2485295_left_root small_2485295_left_fuel small_2485295_left_count small_2485295_left_encoded small_2485295_left_checked

theorem cover_2485295 : CoveredBy scale carrier boxes root_2485295 := by
  apply coveredBy_split_literal root_2485295 small_2485295_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2485859 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_2485295_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2485859
#print axioms cover_2485295

def root_2485289 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2485289_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2485289_left_fuel : Nat := 1
def small_2485289_left_count : Nat := 1
def small_2485289_left_encoded : String := "00000001"
theorem small_2485289_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2485289_left_root small_2485289_left_fuel small_2485289_left_count small_2485289_left_encoded = true := by
  decide +kernel
theorem small_2485289_left_covered : CoveredBy scale carrier boxes small_2485289_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2485289_left_root small_2485289_left_fuel small_2485289_left_count small_2485289_left_encoded small_2485289_left_checked

theorem cover_2485289 : CoveredBy scale carrier boxes root_2485289 := by
  apply coveredBy_split_literal root_2485289 small_2485289_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2485295 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_2485289_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2485295
#print axioms cover_2485289

def root_2485288 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2485288 : CoveredBy scale carrier boxes root_2485288 := by
  apply coveredBy_split_literal root_2485288 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2485289 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0947.root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2485289
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0947.covered
#print axioms cover_2485288

def root_2485282 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2485282_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2485282_left_fuel : Nat := 1
def small_2485282_left_count : Nat := 1
def small_2485282_left_encoded : String := "00000004"
theorem small_2485282_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2485282_left_root small_2485282_left_fuel small_2485282_left_count small_2485282_left_encoded = true := by
  decide +kernel
theorem small_2485282_left_covered : CoveredBy scale carrier boxes small_2485282_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2485282_left_root small_2485282_left_fuel small_2485282_left_count small_2485282_left_encoded small_2485282_left_checked

theorem cover_2485282 : CoveredBy scale carrier boxes root_2485282 := by
  apply coveredBy_split_literal root_2485282 small_2485282_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2485288 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_2485282_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2485288
#print axioms cover_2485282

def root_2485281 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2485281_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2485281_right_fuel : Nat := 23
def small_2485281_right_count : Nat := 225
def small_2485281_right_encoded : String := "135D44FF04548A0313867102000000010CFD9C050F34D10400000002000000050F350D040CFD9C070F34D10600000003000000050F350D060C9A87040F875105000000020C9A87060F87510700000003078000F6128A7CF700000000028000FE13D7ECFF00000004022A458313E1C502000000010B4D44040000000A10804D050B4D440610801107000000030000000A0000000A000000020000000A13D7B0FF022A458313E1C502000000010000000A0000000900000004128A40F7028000FE13D7ECFF00000004022A458313E1C502000000010B4D440410801105000000020B4D44060000000710804D07000000070000000310804D050B4D4406108011070000000300000007000000050000000213E201020B4D440410801105000000020B4D440610801107000000030000000A0000000A10804D050B4D44061080110700000003064000F6000000090000000500000005000000020000000100000005000000000F878D07078000F6128A7CF700000000028000FE13D7ECFF00000004022A458313E1C502000000010B4D44040000000A10804D050DE7CA060E5FD907000000030000000A00000005000000020000000A0000000500000005000000030F878D050C9A87060F87510700000003078000F6128A7CF700000000028000FE13D7ECFF00000004022A458313E1C502000000010DE7CA040E5FD905000000020B4D44060000000910804D0708C000F600000009000000050000000300000009000000090000000500000005000000050000000200000003000000021386AD020CFD9C050F34D104000000020CFD9C07000000090F350D0600000009000000030F350D040CFD9C070F34D106000000030C9A87040F87510500000002078000F6128A7CF700000000028000FE13D7ECFF00000004067ECE8312EA59020000000100000005000000090000000500000005000000050F350D060C9A87040F875105000000020C9A87060F87510700000003078000F60000000A128A40F7028000FE13D7ECFF00000004067ECE8312EA5902000000010B4D44040000000A000000090000000900000009000000000F878D07078000F60000000A128A40F7028000FE13D7ECFF00000004067ECE8312EA5902000000010000000512EA950200000009000000010000000500000000000000030F878D050C9A8706000000090F878D07078000F60000000900000005000000030000000200000003000000020000000100000004"
theorem small_2485281_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2485281_right_root small_2485281_right_fuel small_2485281_right_count small_2485281_right_encoded = true := by
  decide +kernel
theorem small_2485281_right_covered : CoveredBy scale carrier boxes small_2485281_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2485281_right_root small_2485281_right_fuel small_2485281_right_count small_2485281_right_encoded small_2485281_right_checked

theorem cover_2485281 : CoveredBy scale carrier boxes root_2485281 := by
  apply coveredBy_split_literal root_2485281 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2485282 small_2485281_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2485282
  · exact small_2485281_right_covered
#print axioms cover_2485281

def root_2485275 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2485275_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2485275_left_fuel : Nat := 1
def small_2485275_left_count : Nat := 1
def small_2485275_left_encoded : String := "00000000"
theorem small_2485275_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2485275_left_root small_2485275_left_fuel small_2485275_left_count small_2485275_left_encoded = true := by
  decide +kernel
theorem small_2485275_left_covered : CoveredBy scale carrier boxes small_2485275_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2485275_left_root small_2485275_left_fuel small_2485275_left_count small_2485275_left_encoded small_2485275_left_checked

theorem cover_2485275 : CoveredBy scale carrier boxes root_2485275 := by
  apply coveredBy_split_literal root_2485275 small_2485275_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2485281 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_2485275_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2485281
#print axioms cover_2485275

def root_2485274 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2485274_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2485274_right_fuel : Nat := 27
def small_2485274_right_count : Nat := 315
def small_2485274_right_encoded : String := "135D44F7050000FE135D80FF0000000404548A0313867102000000010CFD9C050F34D10400000002000000050F350D040CFD9C070F34D10600000003000000050F350D060C9A87040F875105000000020C9A87060F87510700000003028000F613D7ECF700000000078000FE128A7CFF00000004022A458313E1C502000000010B4D440410801105000000020B4D44060000000610804D0700000006000000030000000600000006128A40FF022A458313E1C502000000010B4D440410801105000000020B4D44060000000710804D07000000070000000310804D050B4D4406108011070000000300000007000000050000000213E201020B4D440410801105000000020B4D440610801107000000030000000610804D0703C000F613A54CF700000000064000FE0000000800000005000000050000000310804D050B4D4406000000060000000500000002000000010000000413D7B0F7078000FE128A7CFF00000004022A458313E1C50200000001000000060000000600000005000000000F878D07028000F613D7ECF700000000078000FE128A7CFF00000004022A458313E1C502000000010B4D440410801105000000020DE7CA060E5FD90700000003000000080000000810804D050DE7CA060E5FD9070000000303C000F613A54CF70000000008C000FE0000000800000005000000050000000500000002000000080000000500000005000000030F878D050C9A87060F87510700000003028000F613D7ECF700000000078000FE128A7CFF00000004022A458313E1C502000000010DE7CA040E5FD905000000020000000600000006000000060000000500000005000000050000000200000003000000021386AD020CFD9C050F34D104000000020CFD9C070F34D10600000003000000050F350D060C9A87060F87510700000003028000F613D7ECF700000000078000FE128A7CFF00000004067ECE8312EA5902000000010000000500000006000000050000000500000005000000030F350D040CFD9C070F34D10600000003000000080F350D060C9A87040F875105000000020C9A87060F87510700000003028000F613D7ECF700000000078000FE00000006128A40FF067ECE8312EA5902000000010B4D440410801105000000020B4D4406000000060000000810804D050B4D4406000000060000000500000002000000080000000413D7B0F700000008000000000F878D0700000008000000030F878D050C9A87060F87510700000003028000F613D7ECF700000000078000FE00000006128A40FF067ECE8312EA5902000000010000000512EA950200000008000000010000000413D7B0F7078000FE0000000600000005000000000F878D07028000F613D7ECF700000000078000FE0000000800000005000000050000000300000002000000030000000200000001135D44FF04548A031386710200000001000000051386AD020CFD9C050F34D10400000002000000050F350D040CFD9C070F34D10600000003000000050F350D060C9A87040F875105000000020C9A87060F87510700000003028000F613D7ECF700000000028000FE13D7ECFF00000004067ECE8312EA5902000000010B4D440410801105000000020B4D4406108011070000000303C000F60000000A00000005000000050000000512EA95020B4D4404000000080000000500000001000000050000000500000005000000050000000300000002000000010000000400000000"
theorem small_2485274_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2485274_right_root small_2485274_right_fuel small_2485274_right_count small_2485274_right_encoded = true := by
  decide +kernel
theorem small_2485274_right_covered : CoveredBy scale carrier boxes small_2485274_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2485274_right_root small_2485274_right_fuel small_2485274_right_count small_2485274_right_encoded small_2485274_right_checked

theorem cover_2485274 : CoveredBy scale carrier boxes root_2485274 := by
  apply coveredBy_split_literal root_2485274 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2485275 small_2485274_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2485275
  · exact small_2485274_right_covered
#print axioms cover_2485274

def root_2485269 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2485269_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2485269_right_fuel : Nat := 1
def small_2485269_right_count : Nat := 1
def small_2485269_right_encoded : String := "00000003"
theorem small_2485269_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2485269_right_root small_2485269_right_fuel small_2485269_right_count small_2485269_right_encoded = true := by
  decide +kernel
theorem small_2485269_right_covered : CoveredBy scale carrier boxes small_2485269_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2485269_right_root small_2485269_right_fuel small_2485269_right_count small_2485269_right_encoded small_2485269_right_checked

theorem cover_2485269 : CoveredBy scale carrier boxes root_2485269 := by
  apply coveredBy_split_literal root_2485269 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2485274 small_2485269_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2485274
  · exact small_2485269_right_covered
#print axioms cover_2485269

def root_2485133 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2485133_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2485133_left_fuel : Nat := 21
def small_2485133_left_count : Nat := 63
def small_2485133_left_encoded : String := "1207010600000003050000F6135D80F700000000050000FE135D80FF0000000404548A0313867102000000010CFD9C050F34D10400000002000000050F350D0404548A071386710600000003000000051386AD060C9A87040F87510500000002078000F6128A7CF700000000078000FE128A7CFF00000004022A458313E1C50200000001067ECE8700000008000000080000000800000005000000050000000500000003000000021386AD020CFD9C050F34D10400000002000000050F350D0404548A071386710600000003000000081386AD060C9A8704000000080F878D0500000008000000020000000300000002000000010000000500000005"
theorem small_2485133_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2485133_left_root small_2485133_left_fuel small_2485133_left_count small_2485133_left_encoded = true := by
  decide +kernel
theorem small_2485133_left_covered : CoveredBy scale carrier boxes small_2485133_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2485133_left_root small_2485133_left_fuel small_2485133_left_count small_2485133_left_encoded small_2485133_left_checked

theorem cover_2485133 : CoveredBy scale carrier boxes root_2485133 := by
  apply coveredBy_split_literal root_2485133 small_2485133_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2485269 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2485133_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2485269
#print axioms cover_2485133

def root_2485128 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2485128_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2485128_right_fuel : Nat := 1
def small_2485128_right_count : Nat := 1
def small_2485128_right_encoded : String := "00000002"
theorem small_2485128_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2485128_right_root small_2485128_right_fuel small_2485128_right_count small_2485128_right_encoded = true := by
  decide +kernel
theorem small_2485128_right_covered : CoveredBy scale carrier boxes small_2485128_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2485128_right_root small_2485128_right_fuel small_2485128_right_count small_2485128_right_encoded small_2485128_right_checked

theorem cover_2485128 : CoveredBy scale carrier boxes root_2485128 := by
  apply coveredBy_split_literal root_2485128 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2485133 small_2485128_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2485133
  · exact small_2485128_right_covered
#print axioms cover_2485128

def root_2484976 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2484976_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2484976_left_fuel : Nat := 23
def small_2484976_left_count : Nat := 71
def small_2484976_left_encoded : String := "120701040000000208A9130712070106000000030000000512073D06050000F6135D80F700000000050000FE135D80FF0000000404548A03138671020000000104548A051386710400000002000000051386AD040CFD9C070F34D10600000003000000050F350D060C9A87060F87510700000003078000F6128A7CF700000000078000FE128A7CFF00000004022A458313E1C50200000001067ECE8500000009000000090000000900000005000000050000000500000003000000021386AD0204548A0513867104000000020CFD9C07000000090F350D0600000009000000031386AD040CFD9C07000000090F350D060C9A8706000000090F878D070000000900000003000000030000000200000001000000050000000500000003"
theorem small_2484976_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2484976_left_root small_2484976_left_fuel small_2484976_left_count small_2484976_left_encoded = true := by
  decide +kernel
theorem small_2484976_left_covered : CoveredBy scale carrier boxes small_2484976_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2484976_left_root small_2484976_left_fuel small_2484976_left_count small_2484976_left_encoded small_2484976_left_checked

theorem cover_2484976 : CoveredBy scale carrier boxes root_2484976 := by
  apply coveredBy_split_literal root_2484976 small_2484976_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2485128 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2484976_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2485128
#print axioms cover_2484976

def root_2484970 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2484970_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2484970_left_fuel : Nat := 1
def small_2484970_left_count : Nat := 1
def small_2484970_left_encoded : String := "00000001"
theorem small_2484970_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2484970_left_root small_2484970_left_fuel small_2484970_left_count small_2484970_left_encoded = true := by
  decide +kernel
theorem small_2484970_left_covered : CoveredBy scale carrier boxes small_2484970_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2484970_left_root small_2484970_left_fuel small_2484970_left_count small_2484970_left_encoded small_2484970_left_checked

theorem cover_2484970 : CoveredBy scale carrier boxes root_2484970 := by
  apply coveredBy_split_literal root_2484970 small_2484970_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2484976 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_2484970_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2484976
#print axioms cover_2484970

def root_2484969 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2484969_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2484969_right_fuel : Nat := 27
def small_2484969_right_count : Nat := 315
def small_2484969_right_encoded : String := "12073D0208A91305120701040000000208A913071207010600000003050000F6000000070000000512073D06050000F6135D80F700000000050000FE135D80FF000000040CFD9C030F34D1020000000104548A0500000009000000090000000700000009135D44F7050000FE135D80FF000000040CFD9C030F34D1020000000104548A05000000081386AD040CFD9C070000000800000008000000020000000800000009000000000000000312073D0408A913071207010600000003050000F6135D80F700000000050000FE135D80FF000000040CFD9C030F34D102000000010CFD9C05000000080F350D04000000080000000200000007135D44FF0CFD9C030F34D102000000010CFD9C0500000008000000090000000900000004135D44F7050000FE00000008000000080000000012073D06050000F6135D80F700000000050000FE135D80FF000000040CFD9C030F34D102000000010CFD9C050F34D104000000020CFD9C07000000090F350D060C9A8706000000090F878D070000000900000003000000030F350D040CFD9C070F34D106000000030C9A8704000000080F878D0500000008000000020F350D060C9A87040F875105000000020C9A87060F87510700000003078000F6128A7CF700000000078000FE128A7CFF000000040AD3578310D10102000000010B4D440400000005000000060000000800000009128A40F7078000FE00000008128A40FF0AD3578310D1010200000001000000080000000800000004000000000F878D07078000F6128A7CF700000000078000FE00000008128A40FF000000090000000400000008000000030F878D050C9A87060F87510700000003078000F600000009128A40F7078000FE128A7CFF000000040000000600000009000000000F878D07078000F6128A7CF7000000000000000900000008000000030000000200000003000000020F350D020CFD9C050F34D10400000002000000090F350D040CFD9C070F34D10600000003000000080F350D060C9A87020F87510300000001000000080F878D030C9A87040F875105000000020C9A870600000009000000080000000900000001000000030000000200000001135D44FF0CFD9C030F34D102000000010CFD9C050F34D10400000002000000090F350D040CFD9C070F34D106000000030C9A87040F8751050000000200000009000000090F350D060C9A87040F875105000000020C9A8706000000090F878D0700000009000000030000000900000003000000020F350D020CFD9C0500000009000000090000000100000004135D44F7050000FE135D80FF000000040CFD9C030F34D102000000010CFD9C050F34D104000000020CFD9C07000000080F350D060C9A87060F875107000000030000000800000008000000030F350D040CFD9C07000000080F350D060C9A8704000000080F878D05000000080000000200000003000000020F350D020CFD9C05000000080F350D04000000080000000200000001135D44FF0CFD9C030F34D102000000010CFD9C050F34D10400000002000000050F350D040CFD9C070F34D10600000003000000050F350D060C9A87040F875105000000020C9A87060F87510700000003028000F60000000900000008000000080F878D05000000090000000200000003000000020F350D020CFD9C05000000080F350D040CFD9C07000000080000000800000002000000010000000400000000000000030000000200000001"
theorem small_2484969_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2484969_right_root small_2484969_right_fuel small_2484969_right_count small_2484969_right_encoded = true := by
  decide +kernel
theorem small_2484969_right_covered : CoveredBy scale carrier boxes small_2484969_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2484969_right_root small_2484969_right_fuel small_2484969_right_count small_2484969_right_encoded small_2484969_right_checked

theorem cover_2484969 : CoveredBy scale carrier boxes root_2484969 := by
  apply coveredBy_split_literal root_2484969 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2484970 small_2484969_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2484970
  · exact small_2484969_right_covered
#print axioms cover_2484969

def root_2484964 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2484964_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2484964_right_fuel : Nat := 1
def small_2484964_right_count : Nat := 1
def small_2484964_right_encoded : String := "00000004"
theorem small_2484964_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2484964_right_root small_2484964_right_fuel small_2484964_right_count small_2484964_right_encoded = true := by
  decide +kernel
theorem small_2484964_right_covered : CoveredBy scale carrier boxes small_2484964_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2484964_right_root small_2484964_right_fuel small_2484964_right_count small_2484964_right_encoded small_2484964_right_checked

theorem cover_2484964 : CoveredBy scale carrier boxes root_2484964 := by
  apply coveredBy_split_literal root_2484964 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2484969 small_2484964_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2484969
  · exact small_2484964_right_covered
#print axioms cover_2484964

def root_2480586 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2480586 : CoveredBy scale carrier boxes root_2480586 := by
  apply coveredBy_split_literal root_2480586 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2480587 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2484964 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2480587
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2484964
#print axioms cover_2480586

def root_2480581 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2480581_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2480581_right_fuel : Nat := 1
def small_2480581_right_count : Nat := 1
def small_2480581_right_encoded : String := "00000003"
theorem small_2480581_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2480581_right_root small_2480581_right_fuel small_2480581_right_count small_2480581_right_encoded = true := by
  decide +kernel
theorem small_2480581_right_covered : CoveredBy scale carrier boxes small_2480581_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2480581_right_root small_2480581_right_fuel small_2480581_right_count small_2480581_right_encoded small_2480581_right_checked

theorem cover_2480581 : CoveredBy scale carrier boxes root_2480581 := by
  apply coveredBy_split_literal root_2480581 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2480586 small_2480581_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2480586
  · exact small_2480581_right_covered
#print axioms cover_2480581

def root_2477969 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2477969 : CoveredBy scale carrier boxes root_2477969 := by
  apply coveredBy_split_literal root_2477969 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0942.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2480581 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0942.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2480581
#print axioms cover_2477969

def root_2477964 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2477964_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2477964_right_fuel : Nat := 1
def small_2477964_right_count : Nat := 1
def small_2477964_right_encoded : String := "00000002"
theorem small_2477964_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2477964_right_root small_2477964_right_fuel small_2477964_right_count small_2477964_right_encoded = true := by
  decide +kernel
theorem small_2477964_right_covered : CoveredBy scale carrier boxes small_2477964_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2477964_right_root small_2477964_right_fuel small_2477964_right_count small_2477964_right_encoded small_2477964_right_checked

theorem cover_2477964 : CoveredBy scale carrier boxes root_2477964 := by
  apply coveredBy_split_literal root_2477964 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2477969 small_2477964_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2477969
  · exact small_2477964_right_covered
#print axioms cover_2477964

def root_2473748 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2473748 : CoveredBy scale carrier boxes root_2473748 := by
  apply coveredBy_split_literal root_2473748 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0059.root_2473749 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2477964 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0059.cover_2473749
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2477964
#print axioms cover_2473748

def root_2473743 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2473743_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2473743_right_fuel : Nat := 1
def small_2473743_right_count : Nat := 1
def small_2473743_right_encoded : String := "00000001"
theorem small_2473743_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2473743_right_root small_2473743_right_fuel small_2473743_right_count small_2473743_right_encoded = true := by
  decide +kernel
theorem small_2473743_right_covered : CoveredBy scale carrier boxes small_2473743_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2473743_right_root small_2473743_right_fuel small_2473743_right_count small_2473743_right_encoded small_2473743_right_checked

theorem cover_2473743 : CoveredBy scale carrier boxes root_2473743 := by
  apply coveredBy_split_literal root_2473743 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2473748 small_2473743_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2473748
  · exact small_2473743_right_covered
#print axioms cover_2473743

def root_2473089 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2473089_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2473089_left_fuel : Nat := 21
def small_2473089_left_count : Nat := 309
def small_2473089_left_encoded : String := "1151E903000000010A0001041151E905000000020A0001061151E907000000030A0000FE115224FF0000000408A912FF12073CFE00000004050000F600000005135D44F705000102000000050000000800000000000000081151E8FF050000F6135D80F7000000000500010200000005135D81030500010400000005135D81050500010600000005135D8107050000FE0000000500000009000000030000000200000001135D44F705000102135D450300000001050001040000000500000009135D81030500010400000008135D810505000106000000060000000800000002000000010000000000000004115225070A0000FE115224FF0000000408A9130700000008000000081151E8FF08A9130712070106000000030000000812073D06050000F6135D80F7000000000500010200000008135D81030500010400000008135D8105050000FE0000000800000008000000020000000100000008000000030000000400000003115225050A0001061151E907000000030A0000FE115224FF0000000408A91305120701040000000208A912FF12073CFE00000004050000F6135D80F700000000050001020000000500000009135D44F70500010200000009135D81030500010600000006135D810704548A050000000900000006000000030000000100000000120700FE000000060000000412073D0408A912FF12073CFE00000004050000F6135D80F70000000005000102135D4503000000010500010600000005135D81070000000500000003135D81030500010600000005135D81070CFD9C050F34D104000000020CFD9BFF00000005000000060F350D040CFD9BFF0000000500000006000000020000000300000001135D44F705000102135D4503000000010500010600000005135D81070CFD9C050F34D10400000002000000060000000600000003135D81030500010600000006000000080000000100000000120700FE0000000600000004000000021151E8FF08A9130512070104000000020000000912073D04050000F600000009135D44F7050001020000000900000009000000000000000200000004115225070A0000FE115224FF0000000408A91305120701040000000208A913070000000712073D0608A912FF00000007120700FE00000007000000040000000312073D0408A9130712070106000000030000000812073D0608A912FF12073CFE00000004050000F6135D80F70000000005000102135D4503000000010CFD9C050F34D10400000002000000070F350D040000000800000002135D81030CFD9C05000000080F350D04000000080000000200000001135D44F705000102135D4503000000010CFD9C050F34D1040000000200000007000000080000000800000000120700FE050000F6135D80F70000000005000102135D4503000000010000000800000008135D44F705000102135D4503000000010000000800000008000000000000000400000003000000021151E8FF08A9130512070104000000020000000912073D0408A9130712070106000000030000000812073D06050000F6135D80F70000000005000102135D45030000000100000009135D8103050000FE135D80FF000000040CFD9C05000000080F350D0400000008000000020000000900000001135D44F7050001020000000800000008000000000000000300000002000000040000000300000002"
theorem small_2473089_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2473089_left_root small_2473089_left_fuel small_2473089_left_count small_2473089_left_encoded = true := by
  decide +kernel
theorem small_2473089_left_covered : CoveredBy scale carrier boxes small_2473089_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2473089_left_root small_2473089_left_fuel small_2473089_left_count small_2473089_left_encoded small_2473089_left_checked

theorem cover_2473089 : CoveredBy scale carrier boxes root_2473089 := by
  apply coveredBy_split_literal root_2473089 small_2473089_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2473743 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2473089_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2473743
#print axioms cover_2473089

def root_2473084 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2473084_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2473084_right_fuel : Nat := 1
def small_2473084_right_count : Nat := 1
def small_2473084_right_encoded : String := "00000000"
theorem small_2473084_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2473084_right_root small_2473084_right_fuel small_2473084_right_count small_2473084_right_encoded = true := by
  decide +kernel
theorem small_2473084_right_covered : CoveredBy scale carrier boxes small_2473084_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2473084_right_root small_2473084_right_fuel small_2473084_right_count small_2473084_right_encoded small_2473084_right_checked

theorem cover_2473084 : CoveredBy scale carrier boxes root_2473084 := by
  apply coveredBy_split_literal root_2473084 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2473089 small_2473084_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2473089
  · exact small_2473084_right_covered
#print axioms cover_2473084

def root_2449812 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2449812 : CoveredBy scale carrier boxes root_2449812 := by
  apply coveredBy_split_literal root_2449812 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0059.root_2449813 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2473084 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0059.cover_2449813
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2473084
#print axioms cover_2449812

def root_2499994 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2499994 : CoveredBy scale carrier boxes root_2499994 := by
  apply coveredBy_split_literal root_2499994 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0950.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0951.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0950.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0951.covered
#print axioms cover_2499994

def root_2499989 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2499989_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2499989_right_fuel : Nat := 1
def small_2499989_right_count : Nat := 1
def small_2499989_right_encoded : String := "00000002"
theorem small_2499989_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2499989_right_root small_2499989_right_fuel small_2499989_right_count small_2499989_right_encoded = true := by
  decide +kernel
theorem small_2499989_right_covered : CoveredBy scale carrier boxes small_2499989_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2499989_right_root small_2499989_right_fuel small_2499989_right_count small_2499989_right_encoded small_2499989_right_checked

theorem cover_2499989 : CoveredBy scale carrier boxes root_2499989 := by
  apply coveredBy_split_literal root_2499989 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2499994 small_2499989_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2499994
  · exact small_2499989_right_covered
#print axioms cover_2499989

def root_2498425 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2498425 : CoveredBy scale carrier boxes root_2498425 := by
  apply coveredBy_split_literal root_2498425 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0949.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2499989 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0949.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2499989
#print axioms cover_2498425

def root_2498420 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2498420_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2498420_right_fuel : Nat := 1
def small_2498420_right_count : Nat := 1
def small_2498420_right_encoded : String := "00000001"
theorem small_2498420_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2498420_right_root small_2498420_right_fuel small_2498420_right_count small_2498420_right_encoded = true := by
  decide +kernel
theorem small_2498420_right_covered : CoveredBy scale carrier boxes small_2498420_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2498420_right_root small_2498420_right_fuel small_2498420_right_count small_2498420_right_encoded small_2498420_right_checked

theorem cover_2498420 : CoveredBy scale carrier boxes root_2498420 := by
  apply coveredBy_split_literal root_2498420 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2498425 small_2498420_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2498425
  · exact small_2498420_right_covered
#print axioms cover_2498420

def root_2496396 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2496396 : CoveredBy scale carrier boxes root_2496396 := by
  apply coveredBy_split_literal root_2496396 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0948.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2498420 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0948.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2498420
#print axioms cover_2496396

def root_2496390 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2496390_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2496390_left_fuel : Nat := 1
def small_2496390_left_count : Nat := 1
def small_2496390_left_encoded : String := "00000000"
theorem small_2496390_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2496390_left_root small_2496390_left_fuel small_2496390_left_count small_2496390_left_encoded = true := by
  decide +kernel
theorem small_2496390_left_covered : CoveredBy scale carrier boxes small_2496390_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2496390_left_root small_2496390_left_fuel small_2496390_left_count small_2496390_left_encoded small_2496390_left_checked

theorem cover_2496390 : CoveredBy scale carrier boxes root_2496390 := by
  apply coveredBy_split_literal root_2496390 small_2496390_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2496396 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2496390_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2496396
#print axioms cover_2496390

def root_2496389 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2496389_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2496389_right_fuel : Nat := 24
def small_2496389_right_count : Nat := 289
def small_2496389_right_encoded : String := "1151E8F70A0001021151E903000000010A0001041151E905000000020A0001061151E9070000000300000008115225070A0000FE1152250908A91307120701060000000308A91309000000080000000900000008000000041151E9090000000408A913071207010600000003000000090000000800000003115225050A0001061151E907000000030A0000FE1152250908A9130512070104000000020000000612073D0408A91309120700FE00000006000000040000000600000002000000041151E9090000000400000008115225070A0000FE1152250908A91305120701040000000208A9130712070106000000030000000A12073D0608A91309120700FE050000F6000000070000000A0000000412073CFE00000004050000F6135D80F70000000005000102135D45030000000104548A0513867104000000020CFD9C07000000070F350D0600000006000000030000000800000008135D44F705000102135D45030000000104548A0513867104000000020CFD9C070000000A000000060000000A00000006000000000000000312073D0408A91307120701060000000308A91309000000080000000A12073D0608A91309120700FE050000F600000008135D44F700000008000000000000000412073CFE00000004000000080000000300000002000000041151E9090000000408A91305120701040000000208A913071207010600000003050000F600000008135D44F70500010200000008000000080000000012073D06000000080000000312073D0408A913071207010600000003050000F6000000080000000A00000008000000020000000300000002115225030A0001041151E905000000020A0001061151E907000000030A0000FE1152250908A9130312070102000000010000000600000008000000041151E9090000000400000007115225070A0000FE1152250908A91303120701020000000108A913071207010600000003000000080000000812073D0208A913071207010600000003000000080000000800000001000000041151E9090000000408A913030000000912073D0208A9130712070106000000030000000912073D06050000F60000000800000007000000030000000100000003115225050A0001061151E907000000030A0000FE1152250908A9130312070102000000010000000612073D0208A913051207010400000002000000060000000600000001000000041151E9090000000400000008115225070A0000FE1152250908A91303120701020000000108A9130512070104000000020000000A12073D0408A913070000000812073D0608A91309120700FE000000060000000400000008000000030000000212073D0208A91305120701040000000208A9130712070106000000030000000812073D0608A91309120700FE000000060000000412073CFE00000004050000F600000008000000080000000312073D0408A913070000000812073D0600000008000000030000000200000001000000041151E9090000000408A913030000000812073D0208A91305120701040000000200000008000000080000000100000003000000020000000100000000"
theorem small_2496389_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2496389_right_root small_2496389_right_fuel small_2496389_right_count small_2496389_right_encoded = true := by
  decide +kernel
theorem small_2496389_right_covered : CoveredBy scale carrier boxes small_2496389_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2496389_right_root small_2496389_right_fuel small_2496389_right_count small_2496389_right_encoded small_2496389_right_checked

theorem cover_2496389 : CoveredBy scale carrier boxes root_2496389 := by
  apply coveredBy_split_literal root_2496389 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2496390 small_2496389_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2496390
  · exact small_2496389_right_covered
#print axioms cover_2496389

def root_2449811 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2449811 : CoveredBy scale carrier boxes root_2449811 := by
  apply coveredBy_split_literal root_2449811 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2449812 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2496389 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2449812
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2496389
#print axioms cover_2449811

def root_2504646 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2504646 : CoveredBy scale carrier boxes root_2504646 := by
  apply coveredBy_split_literal root_2504646 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0952.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0953.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0952.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0953.covered
#print axioms cover_2504646

def root_2504640 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2504640_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2504640_left_fuel : Nat := 1
def small_2504640_left_count : Nat := 1
def small_2504640_left_encoded : String := "00000000"
theorem small_2504640_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2504640_left_root small_2504640_left_fuel small_2504640_left_count small_2504640_left_encoded = true := by
  decide +kernel
theorem small_2504640_left_covered : CoveredBy scale carrier boxes small_2504640_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2504640_left_root small_2504640_left_fuel small_2504640_left_count small_2504640_left_encoded small_2504640_left_checked

theorem cover_2504640 : CoveredBy scale carrier boxes root_2504640 := by
  apply coveredBy_split_literal root_2504640 small_2504640_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2504646 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2504640_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2504646
#print axioms cover_2504640

def root_2504639 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2504639 : CoveredBy scale carrier boxes root_2504639 := by
  apply coveredBy_split_literal root_2504639 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2504640 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0954.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2504640
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0954.covered
#print axioms cover_2504639

def root_2504638 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2504638 : CoveredBy scale carrier boxes root_2504638 := by
  apply coveredBy_split_literal root_2504638 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2504639 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0955.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2504639
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0955.covered
#print axioms cover_2504638

def root_2449810 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2449810 : CoveredBy scale carrier boxes root_2449810 := by
  apply coveredBy_split_literal root_2449810 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2449811 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2504638 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2449811
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2504638
#print axioms cover_2449810

def root_2325262 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2325262 : CoveredBy scale carrier boxes root_2325262 := by
  apply coveredBy_split_literal root_2325262 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0059.root_2325263 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2449810 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0059.cover_2325263
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2449810
#print axioms cover_2325262

def root_2231372 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2231372 : CoveredBy scale carrier boxes root_2231372 := by
  apply coveredBy_split_literal root_2231372 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2231373 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2325262 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2231373
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2325262
#print axioms cover_2231372

def root_2023934 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2023934 : CoveredBy scale carrier boxes root_2023934 := by
  apply coveredBy_split_literal root_2023934 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2023935 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2231372 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2023935
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2231372
#print axioms cover_2023934

def root_1740104 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1740104 : CoveredBy scale carrier boxes root_1740104 := by
  apply coveredBy_split_literal root_1740104 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1740105 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2023934 coord2 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1740105
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2023934
#print axioms cover_1740104

def root_948354 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_948354 : CoveredBy scale carrier boxes root_948354 := by
  apply coveredBy_split_literal root_948354 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_948355 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_1740104 coord1 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_948355
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_1740104
#print axioms cover_948354

def root_2 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2 : CoveredBy scale carrier boxes root_2 := by
  apply coveredBy_split_literal root_2 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_3 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_948354 coord1 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_3
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_948354
#print axioms cover_2

def root_2513328 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2513328 : CoveredBy scale carrier boxes root_2513328 := by
  apply coveredBy_split_literal root_2513328 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0956.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0957.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0956.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0957.covered
#print axioms cover_2513328

def root_2517483 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2517483_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2517483_right_fuel : Nat := 20
def small_2517483_right_count : Nat := 417
def small_2517483_right_encoded : String := "120700F808A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073D0804548A01138670F6045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350CFC000000030CFD9BFF000000070F34D108000000040C9A86FA0000000A00000007000000090F34D0FA0CFD9BFD0F350CFC000000030CFD9BFF000000070F34D108000000040C9A86FC0000000A000000060000000900000002138670F80CFD9BFB0F350CFA000000020CFD9BFD0F350CFC000000030CFD9BFF000000070F34D1080000000400000007000000070F34D0FA0CFD9BFD0F350CFC0000000300000007000000070000000200000001000000001386ACF600000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000009000000040F34D108000000040C9A86FA000000060F8750FB0000000600000002000000090F34D0FA0CFD9BFD0F350CFC000000030CFD9BFF000000060F34D10800000004000000060000000900000002138670F80CFD9BFB0F350CFA000000020CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000007000000040F34D108000000040C9A86FA000000060F8750FB00000006000000020F34D0FC0000000A000000030F34D0FA0CFD9BFD0F350CFC000000030CFD9BFF000000060F34D10800000004000000060F34D0FC0000000900000003000000020000000100000004120701080000000404548A01138670F6045489F91386ACF8000000010CFD9BFB0000000A0F34D0FA0000000A000000020000000A000000001386ACF600000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FA000000060F8750FB000000060000000200000004000000080000000A0F34D0FA0CFD9BFD0F350CFC00000003045489FF00000006000000080000000A00000002138670F80CFD9BFB0000000A0F34D0FA0000000A0000000200000001120700FC08A912FF12073D0804548A01000000091386ACF600000000045489F9000000090000000A0000000412070108000000040000000A00000003120700FA08A912FD12073CFC0000000308A912FF12073D0804548A01138670F6045489F91386ACF800000001045489FB1386ACFA000000020CFD9BFD0F350CFC000000030CFD9BFF000000060F34D10800000004000000060F34D0FC0000000900000003138670FA0CFD9BFD0F350CFC000000030CFD9BFF000000060F34D10800000004000000060F34D0FC0CFD9BFF000000070F34D10800000004000000070000000300000002138670F8045489FB1386ACFA000000020CFD9BFD0F350CFC000000030000000700000007138670FA0CFD9BFD00000007000000070000000200000001000000001386ACF600000000045489F91386ACF800000001045489FB1386ACFA000000020CFD9BFD0F350CFC00000003000000060F34D0FC0000000900000003138670FA0CFD9BFD0F350CFC00000003000000060F34D0FC0CFD9BFF000000060F34D10800000004000000060000000300000002138670F8045489FB1386ACFA000000020CFD9BFD0F350CFC00000003000000060F34D0FC0000000900000003138670FA0CFD9BFD000000060F34D0FC0CFD9BFF000000060F34D108000000040000000600000003000000020000000100000004120701080000000404548A01138670F6045489F91386ACF800000001045489FB1386ACFA000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FC0000000A00000006000000041386710800000004000000080000000A138670FA0CFD9BFD0F350CFC00000003045489FF0000000613867108000000040C9A86FC0F878CFD0000000300000005000000050000000A00000002138670F80000000A00000001000000001386ACF600000000045489F91386ACF800000001045489FB1386ACFA000000020CFD9BFD0F350CFC00000003000000060F34D0FC0000000A00000003138670FA0CFD9BFD0F350CFC00000003000000060F34D0FC045489FF1386AD08067ECE810000000A0000000500000004000000050000000300000002138670F8045489FB1386ACFA000000020CFD9BFD0F350CFC00000003000000060000000A138670FA0CFD9BFD0F350CFC0000000300000005000000050000000200000001120700FC08A912FF12073D0804548A01138670F6045489F90000000900000009000000001386ACF600000000000000090000000412070108000000040000000A000000030000000200000001"
theorem small_2517483_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2517483_right_root small_2517483_right_fuel small_2517483_right_count small_2517483_right_encoded = true := by
  decide +kernel
theorem small_2517483_right_covered : CoveredBy scale carrier boxes small_2517483_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2517483_right_root small_2517483_right_fuel small_2517483_right_count small_2517483_right_encoded small_2517483_right_checked

theorem cover_2517483 : CoveredBy scale carrier boxes root_2517483 := by
  apply coveredBy_split_literal root_2517483 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0958.root small_2517483_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0958.covered
  · exact small_2517483_right_covered
#print axioms cover_2517483

def root_2517478 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2517478_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2517478_right_fuel : Nat := 1
def small_2517478_right_count : Nat := 1
def small_2517478_right_encoded : String := "00000000"
theorem small_2517478_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2517478_right_root small_2517478_right_fuel small_2517478_right_count small_2517478_right_encoded = true := by
  decide +kernel
theorem small_2517478_right_covered : CoveredBy scale carrier boxes small_2517478_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2517478_right_root small_2517478_right_fuel small_2517478_right_count small_2517478_right_encoded small_2517478_right_checked

theorem cover_2517478 : CoveredBy scale carrier boxes root_2517478 := by
  apply coveredBy_split_literal root_2517478 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2517483 small_2517478_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2517483
  · exact small_2517478_right_covered
#print axioms cover_2517478

def root_2517477 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2517477 : CoveredBy scale carrier boxes root_2517477 := by
  apply coveredBy_split_literal root_2517477 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2517478 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0959.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2517478
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0959.covered
#print axioms cover_2517477

def root_2517471 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2517471_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2517471_left_fuel : Nat := 1
def small_2517471_left_count : Nat := 1
def small_2517471_left_encoded : String := "00000004"
theorem small_2517471_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2517471_left_root small_2517471_left_fuel small_2517471_left_count small_2517471_left_encoded = true := by
  decide +kernel
theorem small_2517471_left_covered : CoveredBy scale carrier boxes small_2517471_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2517471_left_root small_2517471_left_fuel small_2517471_left_count small_2517471_left_encoded small_2517471_left_checked

theorem cover_2517471 : CoveredBy scale carrier boxes root_2517471 := by
  apply coveredBy_split_literal root_2517471 small_2517471_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2517477 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2517471_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2517477
#print axioms cover_2517471

def root_2517217 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2517217_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2517217_left_fuel : Nat := 17
def small_2517217_left_count : Nat := 121
def small_2517217_left_encoded : String := "1151E8FF08A91301120700F608A912F912073CF80000000108A912FB00000009120700FA08A912FD12073CFC0000000305000108135D44FF0000000900000004135D80FF0000000404548A0100000009000000090000000900000002120700F808A912FB12073CFA0000000208A912FD12073CFC0000000305000108000000090000000900000009120700FA08A912FD12073CFC000000030500010800000009135D80FF0000000404548A0100000007000000090000000900000002000000010000000012073CF60000000008A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073CFC000000030000000900000009120700FA0000000900000002120700F808A912FB12073CFA0000000208A912FD12073CFC0000000305000108135D44FF0CFD9C01000000090F350CF6000000000000000900000004135D80FF000000040CFD9C010F34D0F6045489F900000009138670F80CFD9BFB000000090000000900000001000000000F350CF600000000045489F900000006138670F80000000600000001120700FC0500010800000009135D80FF000000040CFD9C01000000090F350CF6000000000000000900000003120700FA08A912FD12073CFC0000000305000108000000090000000600000009000000020000000100000004"
theorem small_2517217_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2517217_left_root small_2517217_left_fuel small_2517217_left_count small_2517217_left_encoded = true := by
  decide +kernel
theorem small_2517217_left_covered : CoveredBy scale carrier boxes small_2517217_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2517217_left_root small_2517217_left_fuel small_2517217_left_count small_2517217_left_encoded small_2517217_left_checked

theorem cover_2517217 : CoveredBy scale carrier boxes root_2517217 := by
  apply coveredBy_split_literal root_2517217 small_2517217_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2517471 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2517217_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2517471
#print axioms cover_2517217

def root_2517211 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2517211_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2517211_left_fuel : Nat := 1
def small_2517211_left_count : Nat := 1
def small_2517211_left_encoded : String := "00000003"
theorem small_2517211_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2517211_left_root small_2517211_left_fuel small_2517211_left_count small_2517211_left_encoded = true := by
  decide +kernel
theorem small_2517211_left_covered : CoveredBy scale carrier boxes small_2517211_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2517211_left_root small_2517211_left_fuel small_2517211_left_count small_2517211_left_encoded small_2517211_left_checked

theorem cover_2517211 : CoveredBy scale carrier boxes root_2517211 := by
  apply coveredBy_split_literal root_2517211 small_2517211_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2517217 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2517211_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2517217
#print axioms cover_2517211

def root_2517210 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2517210 : CoveredBy scale carrier boxes root_2517210 := by
  apply coveredBy_split_literal root_2517210 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2517211 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0960.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2517211
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0960.covered
#print axioms cover_2517210

def root_2517204 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2517204_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2517204_left_fuel : Nat := 1
def small_2517204_left_count : Nat := 1
def small_2517204_left_encoded : String := "00000002"
theorem small_2517204_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2517204_left_root small_2517204_left_fuel small_2517204_left_count small_2517204_left_encoded = true := by
  decide +kernel
theorem small_2517204_left_covered : CoveredBy scale carrier boxes small_2517204_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2517204_left_root small_2517204_left_fuel small_2517204_left_count small_2517204_left_encoded small_2517204_left_checked

theorem cover_2517204 : CoveredBy scale carrier boxes root_2517204 := by
  apply coveredBy_split_literal root_2517204 small_2517204_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2517210 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2517204_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2517210
#print axioms cover_2517204

def root_2524517 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2524517 : CoveredBy scale carrier boxes root_2524517 := by
  apply coveredBy_split_literal root_2524517 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0961.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0962.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0961.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0962.covered
#print axioms cover_2524517

def root_2524511 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2524511_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2524511_left_fuel : Nat := 1
def small_2524511_left_count : Nat := 1
def small_2524511_left_encoded : String := "00000004"
theorem small_2524511_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2524511_left_root small_2524511_left_fuel small_2524511_left_count small_2524511_left_encoded = true := by
  decide +kernel
theorem small_2524511_left_covered : CoveredBy scale carrier boxes small_2524511_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2524511_left_root small_2524511_left_fuel small_2524511_left_count small_2524511_left_encoded small_2524511_left_checked

theorem cover_2524511 : CoveredBy scale carrier boxes root_2524511 := by
  apply coveredBy_split_literal root_2524511 small_2524511_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2524517 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2524511_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2524517
#print axioms cover_2524511

def root_2523811 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2523811_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2523811_left_fuel : Nat := 23
def small_2523811_left_count : Nat := 331
def small_2523811_left_encoded : String := "1151E8FF08A91301120700F608A912F912073CF80000000100000009120700F808A912FD12073CFC00000003050000FA135D80FB000000020500010800000009135D80FF0000000404548A01000000091386ACF60000000000000009135D44FB0500010800000009135D80FF0000000404548A01138670F6045489F900000009138670F80CFD9BFD000000050000000700000001000000001386ACF600000000045489F91386ACF8000000010CFD9BFD0F350CFC000000030000000900000007138670F80CFD9BFD0F350CFC000000030C9A86FC0F878CFD00000003028000FA00000007000000070F8750FD028000FA0000000913D7B0FB07800108000000090000000700000002000000030F34D0FC0000000700000003000000010000000200000009000000010000000012073CF60000000008A912F912073CF80000000108A912FD12073CFC00000003050000FA135D80FB000000020500010800000009135D80FF000000040CFD9C01000000090F350CF60000000000000009135D44FB05000108135D44FF0CFD9C01000000090F350CF6000000000000000900000004135D80FF000000040CFD9C010F34D0F60CFD9BF9000000090F34D0F80000000900000001000000000F350CF6000000000CFD9BF90F350CF800000001000000090F34D0F80CFD9BFD0F350CFC000000030C9A86F60000000A00000009000000080000000100000002120700FC050000FA000000090000000800000003120700F808A912FD12073CFC00000003050000FA135D80FB0000000205000108135D44FF0CFD9C01000000090F350CF600000000045489F900000009138670F80CFD9BFD00000006000000090000000100000004135D80FF000000040CFD9C010F34D0F6045489F900000009138670F80CFD9BFD0F350CFC00000003000000060000000900000001000000000F350CF600000000045489F91386ACF8000000010CFD9BFD0000000600000009138670F80CFD9BFD000000060F34D0FC000000060000000300000001135D44FB05000108135D44FF0CFD9C010F34D0F6045489F900000009138670F80CFD9BFD0F350CFC000000030C9A86FC0F878CFD0000000300000009000000090000000900000001000000000F350CF600000000045489F91386ACF8000000010CFD9BFD0F350CFC000000030000000900000008138670F80CFD9BFD0F350CFC000000030C9A86F60F878D010C9A86FC00000006000000060000000000000006000000080000000100000004135D80FF000000040CFD9C010F34D0F6045489F91386ACF8000000010CFD9BFD0F350CFC000000030C9A86FC0F878CFD00000003028000FA00000007000000070F8750FD028000FA0000000613D7B0FB078001080000000900000006000000020000000300000009138670F80CFD9BFD0F350CFC000000030C9A86FC0F878CFD00000003028000FA13D7ECFB0000000200000007000000070F8750FD028000FA0000000613D7B0FB0000000600000002000000030F34D0FC000000070000000300000001000000000F350CF600000000045489F91386ACF8000000010CFD9BFD0F350CFC00000003000000060F34D0FC0000000800000003138670F80CFD9BFD0F350CFC00000003000000060F34D0FC00000007000000030000000100000002120700FC050000FA135D80FB000000020500010800000009135D80FF000000040CFD9C01000000090F350CF600000000045489F900000008138670F8045489FD000000070000000700000001135D44FB0500010800000008135D80FF000000040CFD9C01000000070000000800000002000000030000000100000004"
theorem small_2523811_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2523811_left_root small_2523811_left_fuel small_2523811_left_count small_2523811_left_encoded = true := by
  decide +kernel
theorem small_2523811_left_covered : CoveredBy scale carrier boxes small_2523811_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2523811_left_root small_2523811_left_fuel small_2523811_left_count small_2523811_left_encoded small_2523811_left_checked

theorem cover_2523811 : CoveredBy scale carrier boxes root_2523811 := by
  apply coveredBy_split_literal root_2523811 small_2523811_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2524511 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2523811_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2524511
#print axioms cover_2523811

def root_2523805 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2523805_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2523805_left_fuel : Nat := 1
def small_2523805_left_count : Nat := 1
def small_2523805_left_encoded : String := "00000003"
theorem small_2523805_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2523805_left_root small_2523805_left_fuel small_2523805_left_count small_2523805_left_encoded = true := by
  decide +kernel
theorem small_2523805_left_covered : CoveredBy scale carrier boxes small_2523805_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2523805_left_root small_2523805_left_fuel small_2523805_left_count small_2523805_left_encoded small_2523805_left_checked

theorem cover_2523805 : CoveredBy scale carrier boxes root_2523805 := by
  apply coveredBy_split_literal root_2523805 small_2523805_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2523811 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2523805_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2523811
#print axioms cover_2523805

def root_2523804 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2523804 : CoveredBy scale carrier boxes root_2523804 := by
  apply coveredBy_split_literal root_2523804 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2523805 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0963.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2523805
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0963.covered
#print axioms cover_2523804

def root_2523799 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2523799_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2523799_right_fuel : Nat := 1
def small_2523799_right_count : Nat := 1
def small_2523799_right_encoded : String := "00000002"
theorem small_2523799_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2523799_right_root small_2523799_right_fuel small_2523799_right_count small_2523799_right_encoded = true := by
  decide +kernel
theorem small_2523799_right_covered : CoveredBy scale carrier boxes small_2523799_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2523799_right_root small_2523799_right_fuel small_2523799_right_count small_2523799_right_encoded small_2523799_right_checked

theorem cover_2523799 : CoveredBy scale carrier boxes root_2523799 := by
  apply coveredBy_split_literal root_2523799 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2523804 small_2523799_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2523804
  · exact small_2523799_right_covered
#print axioms cover_2523799

def root_2517203 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2517203 : CoveredBy scale carrier boxes root_2517203 := by
  apply coveredBy_split_literal root_2517203 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2517204 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2523799 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2517204
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2523799
#print axioms cover_2517203

def root_2517197 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2517197_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2517197_left_fuel : Nat := 1
def small_2517197_left_count : Nat := 1
def small_2517197_left_encoded : String := "00000001"
theorem small_2517197_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2517197_left_root small_2517197_left_fuel small_2517197_left_count small_2517197_left_encoded = true := by
  decide +kernel
theorem small_2517197_left_covered : CoveredBy scale carrier boxes small_2517197_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2517197_left_root small_2517197_left_fuel small_2517197_left_count small_2517197_left_encoded small_2517197_left_checked

theorem cover_2517197 : CoveredBy scale carrier boxes root_2517197 := by
  apply coveredBy_split_literal root_2517197 small_2517197_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2517203 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2517197_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2517203
#print axioms cover_2517197

def root_2517196 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2517196 : CoveredBy scale carrier boxes root_2517196 := by
  apply coveredBy_split_literal root_2517196 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2517197 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0964.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2517197
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0964.covered
#print axioms cover_2517196

def root_2517191 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2517191_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2517191_right_fuel : Nat := 1
def small_2517191_right_count : Nat := 1
def small_2517191_right_encoded : String := "00000000"
theorem small_2517191_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2517191_right_root small_2517191_right_fuel small_2517191_right_count small_2517191_right_encoded = true := by
  decide +kernel
theorem small_2517191_right_covered : CoveredBy scale carrier boxes small_2517191_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2517191_right_root small_2517191_right_fuel small_2517191_right_count small_2517191_right_encoded small_2517191_right_checked

theorem cover_2517191 : CoveredBy scale carrier boxes root_2517191 := by
  apply coveredBy_split_literal root_2517191 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2517196 small_2517191_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2517196
  · exact small_2517191_right_covered
#print axioms cover_2517191

def root_2517190 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2517190 : CoveredBy scale carrier boxes root_2517190 := by
  apply coveredBy_split_literal root_2517190 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2517191 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0965.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2517191
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0965.covered
#print axioms cover_2517190

def root_2534509 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2534509_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2534509_right_fuel : Nat := 29
def small_2534509_right_count : Nat := 205
def small_2534509_right_encoded : String := "1151E8FD0A0001081151E9090000000408A913010000000812073CF60000000008A912F900000008000000081152250908A91301120700F608A912F912073CF80000000108A912FB12073CFA0000000208A913091207010800000004050000FC135D80FD0000000304548A01138670F60CFD9BF90F350CF8000000010CFD9BFB000000080F34D0FA04548A0913867108000000040C9A86F8000000060000000800000008000000020F34D0F80000000800000001000000001386ACF6000000000CFD9BF90F350CF8000000010CFD9BFB000000080F34D0FA04548A0900000006000000050000000200000008135D44FD04548A0100000008000000080000000312073D080000000800000004120700FA08A913091207010800000004050000FC135D80FD0000000304548A01138670F60CFD9BF90F350CF800000001045489FB1386ACFA0000000204548A0913867108000000040C9A86F8000000060F8750F9078000FC128A7CFD00000003022A458113E1C4F6067ECE7B00000006000000050000000000000005000000060000000100000005138670FA04548A0913867108000000040000000500000005000000020F34D0F8045489FB000000080000000500000001000000001386ACF6000000000CFD9BF90F350CF8000000010000000500000005135D44FD04548A01138670F60CFD9BF90F350CF800000001045489FB00000006000000050000000500000000000000050000000312073D08050000FC135D80FD0000000304548A01138670F60CFD9BF90F350CF800000001045489FB000000080000000500000008000000001386ACF60000000000000008000000080000000400000002120700F808A912FB00000008120700FA0000000800000002000000010000000012073CF60000000008A912F912073CF80000000108A912FB12073CFA0000000208A913091207010800000004050000FC135D80FD000000030CFD9C010F34D0F60CFD9BF90F350CF8000000010CFD9BFB00000006000000050000000500000000000000050000000612073D080000000800000004120700FA08A913091207010800000004000000050000000500000002120700F808A912FB0000000800000005000000010000000400000003"
theorem small_2534509_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2534509_right_root small_2534509_right_fuel small_2534509_right_count small_2534509_right_encoded = true := by
  decide +kernel
theorem small_2534509_right_covered : CoveredBy scale carrier boxes small_2534509_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2534509_right_root small_2534509_right_fuel small_2534509_right_count small_2534509_right_encoded small_2534509_right_checked

theorem cover_2534509 : CoveredBy scale carrier boxes root_2534509 := by
  apply coveredBy_split_literal root_2534509 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0966.root small_2534509_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0966.covered
  · exact small_2534509_right_covered
#print axioms cover_2534509

def root_2534503 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2534503_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2534503_left_fuel : Nat := 1
def small_2534503_left_count : Nat := 1
def small_2534503_left_encoded : String := "00000002"
theorem small_2534503_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2534503_left_root small_2534503_left_fuel small_2534503_left_count small_2534503_left_encoded = true := by
  decide +kernel
theorem small_2534503_left_covered : CoveredBy scale carrier boxes small_2534503_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2534503_left_root small_2534503_left_fuel small_2534503_left_count small_2534503_left_encoded small_2534503_left_checked

theorem cover_2534503 : CoveredBy scale carrier boxes root_2534503 := by
  apply coveredBy_split_literal root_2534503 small_2534503_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2534509 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2534503_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2534509
#print axioms cover_2534503

def root_2534502 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2534502 : CoveredBy scale carrier boxes root_2534502 := by
  apply coveredBy_split_literal root_2534502 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2534503 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0967.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2534503
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0967.covered
#print axioms cover_2534502

def root_2534496 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2534496_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2534496_left_fuel : Nat := 1
def small_2534496_left_count : Nat := 1
def small_2534496_left_encoded : String := "00000001"
theorem small_2534496_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2534496_left_root small_2534496_left_fuel small_2534496_left_count small_2534496_left_encoded = true := by
  decide +kernel
theorem small_2534496_left_covered : CoveredBy scale carrier boxes small_2534496_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2534496_left_root small_2534496_left_fuel small_2534496_left_count small_2534496_left_encoded small_2534496_left_checked

theorem cover_2534496 : CoveredBy scale carrier boxes root_2534496 := by
  apply coveredBy_split_literal root_2534496 small_2534496_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2534502 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2534496_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2534502
#print axioms cover_2534496

def root_2534495 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2534495 : CoveredBy scale carrier boxes root_2534495 := by
  apply coveredBy_split_literal root_2534495 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2534496 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0968.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2534496
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0968.covered
#print axioms cover_2534495

def root_2534490 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2534490_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2534490_right_fuel : Nat := 1
def small_2534490_right_count : Nat := 1
def small_2534490_right_encoded : String := "00000000"
theorem small_2534490_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2534490_right_root small_2534490_right_fuel small_2534490_right_count small_2534490_right_encoded = true := by
  decide +kernel
theorem small_2534490_right_covered : CoveredBy scale carrier boxes small_2534490_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2534490_right_root small_2534490_right_fuel small_2534490_right_count small_2534490_right_encoded small_2534490_right_checked

theorem cover_2534490 : CoveredBy scale carrier boxes root_2534490 := by
  apply coveredBy_split_literal root_2534490 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2534495 small_2534490_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2534495
  · exact small_2534490_right_covered
#print axioms cover_2534490

def root_2534489 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2534489_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2534489_right_fuel : Nat := 18
def small_2534489_right_count : Nat := 177
def small_2534489_right_encoded : String := "1151E901000000000A0000F8115224F9000000010A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E9090000000408A912F912073CF80000000108A912FB12073CFA0000000208A912FD0000000700000007120700FA0000000700000002120700F808A912FB12073CFA0000000208A912FD00000007120700FC0000000700000003120700FA08A912FD00000007120700FC000000070000000300000002000000011152250908A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073CFC00000003000000050000000500000005120700F808A912FB12073CFA0000000200000005120700FA08A912FD12073CFC0000000300000005120700FC08A9130912070108000000040000000500000008000000030000000200000001000000041151E8FD0A0001081151E909000000040000000500000005000000031151E8FB0A0000FC115224FD000000030A0001081151E9090000000400000005000000051151E8FD0A0001081151E90900000004000000051152250908A912F912073CF80000000108A9130912070108000000040000000600000005000000050000000400000003000000021151E8F90A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E9090000000400000005000000051151E8FD0A0001081151E90900000004000000051152250908A912FB12073CFA0000000208A91309120701080000000400000006000000050000000500000004000000031151E8FB0A0000FC115224FD000000030A0001081151E90900000004000000051152250908A912FD12073CFC0000000308A913091207010800000004050000F600000005000000070000000500000005000000041151E8FD0A000108000000071152250908A913091207010800000004050000F600000007135D450100000000000000070000000700000004000000030000000200000001"
theorem small_2534489_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2534489_right_root small_2534489_right_fuel small_2534489_right_count small_2534489_right_encoded = true := by
  decide +kernel
theorem small_2534489_right_covered : CoveredBy scale carrier boxes small_2534489_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2534489_right_root small_2534489_right_fuel small_2534489_right_count small_2534489_right_encoded small_2534489_right_checked

theorem cover_2534489 : CoveredBy scale carrier boxes root_2534489 := by
  apply coveredBy_split_literal root_2534489 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2534490 small_2534489_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2534490
  · exact small_2534489_right_covered
#print axioms cover_2534489

def root_2517189 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2517189 : CoveredBy scale carrier boxes root_2517189 := by
  apply coveredBy_split_literal root_2517189 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2517190 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2534489 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2517190
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2534489
#print axioms cover_2517189

def root_2513327 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2513327 : CoveredBy scale carrier boxes root_2513327 := by
  apply coveredBy_split_literal root_2513327 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2513328 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2517189 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2513328
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2517189
#print axioms cover_2513327

def root_2546125 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2546125 : CoveredBy scale carrier boxes root_2546125 := by
  apply coveredBy_split_literal root_2546125 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0971.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0972.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0971.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0972.covered
#print axioms cover_2546125

def root_2546119 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2546119_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2546119_left_fuel : Nat := 1
def small_2546119_left_count : Nat := 1
def small_2546119_left_encoded : String := "00000004"
theorem small_2546119_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2546119_left_root small_2546119_left_fuel small_2546119_left_count small_2546119_left_encoded = true := by
  decide +kernel
theorem small_2546119_left_covered : CoveredBy scale carrier boxes small_2546119_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2546119_left_root small_2546119_left_fuel small_2546119_left_count small_2546119_left_encoded small_2546119_left_checked

theorem cover_2546119 : CoveredBy scale carrier boxes root_2546119 := by
  apply coveredBy_split_literal root_2546119 small_2546119_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2546125 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2546119_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2546125
#print axioms cover_2546119

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060
