import TaoBundleAssembly0288
import TaoBundleAssembly0293
import TaoBundleAssembly0306
import TaoBundleAssembly0309
import TaoBundleAssembly0312
import TaoBundleAssembly0313
import TaoBundleChunkBatch0400
import TaoBundleChunkBatch0401
import TaoBundleChunkBatch0402
import TaoBundleChunkBatch0403
import TaoBundleChunkBatch0404
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314
def root_4282733 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4282733_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4282733_left_fuel : Nat := 20
def small_4282733_left_count : Nat := 143
def small_4282733_left_encoded : String := "120700FA08A91307120701060000000308A9130912070108000000040CFD9C010F34D0F60CFD9BF90F350D02000000080000000100000008000000000F350CF600000000000000080000000812073D0608A9130912070108000000040CFD9C010F34D0F60CFD9BF90F350D0204548A05138670FA0CFD9C07000000050F350D060000000500000003000000021386ACFA000000020CFD9C070F34D1060000000304548A0900000005000000080F350D0604548A09000000051386AD080C9A8702000000050F878CF900000001000000080000000400000003000000010F34D1020000000104548A05138670FA0000000A000000021386ACFA000000020CFD9C070F34D10600000003000000080000000A000000000F350CF6000000000CFD9BF90F350D0204548A05138670FA0CFD9C070000000800000008000000021386ACFA000000020CFD9C070F34D10600000003000000080F350D0604548A0913867108000000040C9A86F60F878D010C9A87020F8750F900000005000000010000000A000000000F875101000000000C9A870200000008000000080000000800000003000000010F34D1020000000104548A05000000081386ACFA000000020CFD9C07000000080F350D0604548A090000000A000000080000000312073D080CFD9C010F34D0F60CFD9BF90F350D0204548A05000000081386ACFA000000020CFD9C0700000008000000080000000100000008000000000F350CF6000000000CFD9BF90F350D02000000080000000100000008000000040000000300000002"
theorem small_4282733_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4282733_left_root small_4282733_left_fuel small_4282733_left_count small_4282733_left_encoded = true := by
  decide +kernel
theorem small_4282733_left_covered : CoveredBy scale carrier boxes small_4282733_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4282733_left_root small_4282733_left_fuel small_4282733_left_count small_4282733_left_encoded small_4282733_left_checked

theorem cover_4282733 : CoveredBy scale carrier boxes root_4282733 := by
  apply coveredBy_split_literal root_4282733 small_4282733_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0313.root_4283037 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4282733_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0313.cover_4283037
#print axioms cover_4282733

def root_4282728 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4282728_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4282728_right_fuel : Nat := 1
def small_4282728_right_count : Nat := 1
def small_4282728_right_encoded : String := "00000001"
theorem small_4282728_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4282728_right_root small_4282728_right_fuel small_4282728_right_count small_4282728_right_encoded = true := by
  decide +kernel
theorem small_4282728_right_covered : CoveredBy scale carrier boxes small_4282728_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4282728_right_root small_4282728_right_fuel small_4282728_right_count small_4282728_right_encoded small_4282728_right_checked

theorem cover_4282728 : CoveredBy scale carrier boxes root_4282728 := by
  apply coveredBy_split_literal root_4282728 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4282733 small_4282728_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4282733
  · exact small_4282728_right_covered
#print axioms cover_4282728

def root_4282727 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4282727_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4282727_right_fuel : Nat := 19
def small_4282727_right_count : Nat := 213
def small_4282727_right_encoded : String := "120701020000000108A91305120700FA08A91307120701060000000308A9130912070108000000040CFD9C010F34D0F600000008000000000000000812073D08000000080000000412073D0608A9130912070108000000040CFD9C010F34D0F60000000A000000000F350CF6000000000000000800000008000000030000000212073CFA0000000208A91307120701060000000308A9130912070108000000040CFD9C010F34D0F6045489F91386AD020CFD9C050F34D0FA0000000A000000020000000A000000010000000A000000000F350CF600000000045489F91386AD020CFD9C05000000080F350CFA0000000204548A071386710600000003000000080000000A0000000113867102000000010000000A12073D080CFD9C010F34D0F6045489F91386AD020CFD9C05000000080F350CFA0000000204548A07138671060000000300000008000000080000000113867102000000010CFD9C05000000080F350CFA0000000204548A070000000600000006000000000F350CF600000000000000080000000412073D0608A9130912070108000000040CFD9C010F34D0F6045489F91386AD020CFD9C050F34D0FA0000000A000000020F350CFA000000020CFD9C070F34D106000000030000000A0000000A000000010000000A000000000F350CF600000000045489F91386AD020CFD9C050F34D0FA0CFD9C070F34D10600000003000000080000000A000000020F350CFA000000020CFD9C070F34D106000000030000000A0F350D0604548A090000000A00000005000000030000000113867102000000010CFD9C050F34D0FA00000008000000020000000A12073D080CFD9C010F34D0F6045489F91386AD020CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9C070F34D10600000003000000080F350D060CFD9C090F34D108000000040C9A86FA00000006000000060F350D080000000800000004000000030000000113867102000000010CFD9C05000000080F350CFA000000020CFD9C07000000060F350D060000000600000003000000000F350CF600000000045489F91386AD020CFD9C05000000080F350CFA000000020CFD9C070F34D10600000003000000080F350D060CFD9C090F34D1080000000400000005000000050000000300000001000000080000000400000003"
theorem small_4282727_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4282727_right_root small_4282727_right_fuel small_4282727_right_count small_4282727_right_encoded = true := by
  decide +kernel
theorem small_4282727_right_covered : CoveredBy scale carrier boxes small_4282727_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4282727_right_root small_4282727_right_fuel small_4282727_right_count small_4282727_right_encoded small_4282727_right_checked

theorem cover_4282727 : CoveredBy scale carrier boxes root_4282727 := by
  apply coveredBy_split_literal root_4282727 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4282728 small_4282727_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4282728
  · exact small_4282727_right_covered
#print axioms cover_4282727

def root_4282721 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4282721_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4282721_left_fuel : Nat := 1
def small_4282721_left_count : Nat := 1
def small_4282721_left_encoded : String := "00000000"
theorem small_4282721_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4282721_left_root small_4282721_left_fuel small_4282721_left_count small_4282721_left_encoded = true := by
  decide +kernel
theorem small_4282721_left_covered : CoveredBy scale carrier boxes small_4282721_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4282721_left_root small_4282721_left_fuel small_4282721_left_count small_4282721_left_encoded small_4282721_left_checked

theorem cover_4282721 : CoveredBy scale carrier boxes root_4282721 := by
  apply coveredBy_split_literal root_4282721 small_4282721_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4282727 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4282721_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4282727
#print axioms cover_4282721

def root_4281181 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4281181 : CoveredBy scale carrier boxes root_4281181 := by
  apply coveredBy_split_literal root_4281181 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1599.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4282721 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1599.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4282721
#print axioms cover_4281181

def root_4281176 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4281176_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4281176_right_fuel : Nat := 1
def small_4281176_right_count : Nat := 1
def small_4281176_right_encoded : String := "00000004"
theorem small_4281176_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4281176_right_root small_4281176_right_fuel small_4281176_right_count small_4281176_right_encoded = true := by
  decide +kernel
theorem small_4281176_right_covered : CoveredBy scale carrier boxes small_4281176_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4281176_right_root small_4281176_right_fuel small_4281176_right_count small_4281176_right_encoded small_4281176_right_checked

theorem cover_4281176 : CoveredBy scale carrier boxes root_4281176 := by
  apply coveredBy_split_literal root_4281176 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4281181 small_4281176_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4281181
  · exact small_4281176_right_covered
#print axioms cover_4281176

def root_4280992 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4280992_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4280992_left_fuel : Nat := 16
def small_4280992_left_count : Nat := 83
def small_4280992_left_encoded : String := "1151E9090000000408A91301120700F608A912F912073D0208A91305120700FA00000008000000020000000900000001120701020000000108A91305120700FA08A91307120701060000000300000008000000080000000212073CFA0000000208A9130712070106000000030000000912073D0600000008000000030000000012073CF60000000008A912F912073D0208A91305120700FA000000080000000212073CFA0000000208A9130712070106000000030000000812073D0605000108135D4509000000040CFD9C01000000080F350CF60000000000000008135D81090CFD9C010F34D0F60CFD9BF90000000900000008000000000F350CF6000000000CFD9BF90F350D02000000080000000100000008000000040000000300000001120701020000000108A913050000000812073CFA0000000208A9130712070106000000030000000800000008"
theorem small_4280992_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4280992_left_root small_4280992_left_fuel small_4280992_left_count small_4280992_left_encoded = true := by
  decide +kernel
theorem small_4280992_left_covered : CoveredBy scale carrier boxes small_4280992_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4280992_left_root small_4280992_left_fuel small_4280992_left_count small_4280992_left_encoded small_4280992_left_checked

theorem cover_4280992 : CoveredBy scale carrier boxes root_4280992 := by
  apply coveredBy_split_literal root_4280992 small_4280992_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4281176 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4280992_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4281176
#print axioms cover_4280992

def root_4280987 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4280987_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4280987_right_fuel : Nat := 1
def small_4280987_right_count : Nat := 1
def small_4280987_right_encoded : String := "00000003"
theorem small_4280987_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4280987_right_root small_4280987_right_fuel small_4280987_right_count small_4280987_right_encoded = true := by
  decide +kernel
theorem small_4280987_right_covered : CoveredBy scale carrier boxes small_4280987_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4280987_right_root small_4280987_right_fuel small_4280987_right_count small_4280987_right_encoded small_4280987_right_checked

theorem cover_4280987 : CoveredBy scale carrier boxes root_4280987 := by
  apply coveredBy_split_literal root_4280987 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4280992 small_4280987_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4280992
  · exact small_4280987_right_covered
#print axioms cover_4280987

def root_4275247 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4275247 : CoveredBy scale carrier boxes root_4275247 := by
  apply coveredBy_split_literal root_4275247 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0313.root_4275248 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4280987 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0313.cover_4275248
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4280987
#print axioms cover_4275247

def root_4275242 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4275242_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4275242_right_fuel : Nat := 1
def small_4275242_right_count : Nat := 1
def small_4275242_right_encoded : String := "00000002"
theorem small_4275242_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4275242_right_root small_4275242_right_fuel small_4275242_right_count small_4275242_right_encoded = true := by
  decide +kernel
theorem small_4275242_right_covered : CoveredBy scale carrier boxes small_4275242_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4275242_right_root small_4275242_right_fuel small_4275242_right_count small_4275242_right_encoded small_4275242_right_checked

theorem cover_4275242 : CoveredBy scale carrier boxes root_4275242 := by
  apply coveredBy_split_literal root_4275242 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4275247 small_4275242_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4275247
  · exact small_4275242_right_covered
#print axioms cover_4275242

def root_4288321 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4288321 : CoveredBy scale carrier boxes root_4288321 := by
  apply coveredBy_split_literal root_4288321 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1601.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1602.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1601.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1602.covered
#print axioms cover_4288321

def root_4288315 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4288315_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4288315_left_fuel : Nat := 1
def small_4288315_left_count : Nat := 1
def small_4288315_left_encoded : String := "00000002"
theorem small_4288315_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4288315_left_root small_4288315_left_fuel small_4288315_left_count small_4288315_left_encoded = true := by
  decide +kernel
theorem small_4288315_left_covered : CoveredBy scale carrier boxes small_4288315_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4288315_left_root small_4288315_left_fuel small_4288315_left_count small_4288315_left_encoded small_4288315_left_checked

theorem cover_4288315 : CoveredBy scale carrier boxes root_4288315 := by
  apply coveredBy_split_literal root_4288315 small_4288315_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4288321 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4288315_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4288321
#print axioms cover_4288315

def root_4275241 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4275241 : CoveredBy scale carrier boxes root_4275241 := by
  apply coveredBy_split_literal root_4275241 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4275242 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4288315 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4275242
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4288315
#print axioms cover_4275241

def root_4275235 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4275235_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4275235_left_fuel : Nat := 1
def small_4275235_left_count : Nat := 1
def small_4275235_left_encoded : String := "00000001"
theorem small_4275235_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4275235_left_root small_4275235_left_fuel small_4275235_left_count small_4275235_left_encoded = true := by
  decide +kernel
theorem small_4275235_left_covered : CoveredBy scale carrier boxes small_4275235_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4275235_left_root small_4275235_left_fuel small_4275235_left_count small_4275235_left_encoded small_4275235_left_checked

theorem cover_4275235 : CoveredBy scale carrier boxes root_4275235 := by
  apply coveredBy_split_literal root_4275235 small_4275235_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4275241 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4275235_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4275241
#print axioms cover_4275235

def root_4245845 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4245845 : CoveredBy scale carrier boxes root_4245845 := by
  apply coveredBy_split_literal root_4245845 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4245846 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4275235 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4245846
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4275235
#print axioms cover_4245845

def root_4245840 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4245840_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4245840_right_fuel : Nat := 1
def small_4245840_right_count : Nat := 1
def small_4245840_right_encoded : String := "00000000"
theorem small_4245840_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4245840_right_root small_4245840_right_fuel small_4245840_right_count small_4245840_right_encoded = true := by
  decide +kernel
theorem small_4245840_right_covered : CoveredBy scale carrier boxes small_4245840_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4245840_right_root small_4245840_right_fuel small_4245840_right_count small_4245840_right_encoded small_4245840_right_checked

theorem cover_4245840 : CoveredBy scale carrier boxes root_4245840 := by
  apply coveredBy_split_literal root_4245840 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4245845 small_4245840_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4245845
  · exact small_4245840_right_covered
#print axioms cover_4245840

def root_4293681 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293681_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293681_right_fuel : Nat := 12
def small_4293681_right_count : Nat := 59
def small_4293681_right_encoded : String := "135D45010000000005000102135D44F90CFD9C050F34D0FA0CFD9C07000000080F350D060000000700000003000000020F350CFA000000020CFD9C070F34D1060000000304548A09138671080000000400000008000000080F350D0604548A09138671080000000400000007000000070000000300000001135D80F9000000010CFD9C050F34D0FA0CFD9C070000000800000008000000020F350CFA000000020CFD9C070F34D1060000000304548A09138671080000000400000008000000080F350D0604548A0913867108000000040C9A86FA000000070F87510500000002000000070000000700000003"
theorem small_4293681_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4293681_right_root small_4293681_right_fuel small_4293681_right_count small_4293681_right_encoded = true := by
  decide +kernel
theorem small_4293681_right_covered : CoveredBy scale carrier boxes small_4293681_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4293681_right_root small_4293681_right_fuel small_4293681_right_count small_4293681_right_encoded small_4293681_right_checked

theorem cover_4293681 : CoveredBy scale carrier boxes root_4293681 := by
  apply coveredBy_split_literal root_4293681 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1603.root small_4293681_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1603.covered
  · exact small_4293681_right_covered
#print axioms cover_4293681

def root_4293675 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293675_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293675_left_fuel : Nat := 1
def small_4293675_left_count : Nat := 1
def small_4293675_left_encoded : String := "00000004"
theorem small_4293675_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4293675_left_root small_4293675_left_fuel small_4293675_left_count small_4293675_left_encoded = true := by
  decide +kernel
theorem small_4293675_left_covered : CoveredBy scale carrier boxes small_4293675_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4293675_left_root small_4293675_left_fuel small_4293675_left_count small_4293675_left_encoded small_4293675_left_checked

theorem cover_4293675 : CoveredBy scale carrier boxes root_4293675 := by
  apply coveredBy_split_literal root_4293675 small_4293675_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4293681 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4293675_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4293681
#print axioms cover_4293675

def root_4293674 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293674_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293674_right_fuel : Nat := 16
def small_4293674_right_count : Nat := 91
def small_4293674_right_encoded : String := "12073D08050000F6135D810105000102135D44F90CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9C070F34D10600000003000000080F350D060CFD9C090F34D108000000040C9A86FA0F878D0500000008000000020000000A0000000A0000000300000001135D80F9000000010CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9C070F34D10600000003000000080F350D060CFD9C090F34D108000000040C9A86FA0F878D0500000008000000020F875105000000020C9A87060F87510700000003000000070F878D0700000008000000030F350D0800000008000000040000000300000000135D45010000000005000102135D44F90CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9C07000000080000000A00000001135D80F9000000010CFD9C05000000080F350CFA000000020CFD9C07000000080F350D060CFD9C090F34D1080000000400000007000000080000000300000004"
theorem small_4293674_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4293674_right_root small_4293674_right_fuel small_4293674_right_count small_4293674_right_encoded = true := by
  decide +kernel
theorem small_4293674_right_covered : CoveredBy scale carrier boxes small_4293674_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4293674_right_root small_4293674_right_fuel small_4293674_right_count small_4293674_right_encoded small_4293674_right_checked

theorem cover_4293674 : CoveredBy scale carrier boxes root_4293674 := by
  apply coveredBy_split_literal root_4293674 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4293675 small_4293674_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4293675
  · exact small_4293674_right_covered
#print axioms cover_4293674

def root_4293669 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293669_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293669_right_fuel : Nat := 1
def small_4293669_right_count : Nat := 1
def small_4293669_right_encoded : String := "00000003"
theorem small_4293669_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4293669_right_root small_4293669_right_fuel small_4293669_right_count small_4293669_right_encoded = true := by
  decide +kernel
theorem small_4293669_right_covered : CoveredBy scale carrier boxes small_4293669_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4293669_right_root small_4293669_right_fuel small_4293669_right_count small_4293669_right_encoded small_4293669_right_checked

theorem cover_4293669 : CoveredBy scale carrier boxes root_4293669 := by
  apply coveredBy_split_literal root_4293669 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4293674 small_4293669_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4293674
  · exact small_4293669_right_covered
#print axioms cover_4293669

def root_4293545 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293545_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293545_left_fuel : Nat := 18
def small_4293545_left_count : Nat := 59
def small_4293545_left_encoded : String := "120701060000000308A913091207010800000004050000F6135D810105000102135D44F90CFD9C05000000080F350CFA0000000204548A07000000081386AD0604548A0913867108000000040C9A86FA000000060F87510500000002078000F60000000600000008000000080000000300000001135D80F9000000010CFD9C05000000080F350CFA0000000204548A071386710600000003000000081386AD0604548A0913867108000000040C9A86FA000000080F87510500000002078000F6128A7D01000000080000000000000008000000080000000300000000135D4501000000000000000800000008"
theorem small_4293545_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4293545_left_root small_4293545_left_fuel small_4293545_left_count small_4293545_left_encoded = true := by
  decide +kernel
theorem small_4293545_left_covered : CoveredBy scale carrier boxes small_4293545_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4293545_left_root small_4293545_left_fuel small_4293545_left_count small_4293545_left_encoded small_4293545_left_checked

theorem cover_4293545 : CoveredBy scale carrier boxes root_4293545 := by
  apply coveredBy_split_literal root_4293545 small_4293545_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4293669 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4293545_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4293669
#print axioms cover_4293545

def root_4293539 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293539_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293539_left_fuel : Nat := 1
def small_4293539_left_count : Nat := 1
def small_4293539_left_encoded : String := "00000002"
theorem small_4293539_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4293539_left_root small_4293539_left_fuel small_4293539_left_count small_4293539_left_encoded = true := by
  decide +kernel
theorem small_4293539_left_covered : CoveredBy scale carrier boxes small_4293539_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4293539_left_root small_4293539_left_fuel small_4293539_left_count small_4293539_left_encoded small_4293539_left_checked

theorem cover_4293539 : CoveredBy scale carrier boxes root_4293539 := by
  apply coveredBy_split_literal root_4293539 small_4293539_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4293545 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4293539_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4293545
#print axioms cover_4293539

def root_4293459 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293459_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293459_left_fuel : Nat := 15
def small_4293459_left_count : Nat := 39
def small_4293459_left_encoded : String := "120700FA08A9130712070106000000030000000812073D0608A913091207010800000004050000F6135D810105000102135D44F904548A05000000081386ACFA000000020CFD9C07000000080F350D0604548A0900000005000000070000000300000001135D80F90000000104548A05000000081386ACFA000000020CFD9C0700000008000000080000000000000008000000080000000300000002"
theorem small_4293459_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4293459_left_root small_4293459_left_fuel small_4293459_left_count small_4293459_left_encoded = true := by
  decide +kernel
theorem small_4293459_left_covered : CoveredBy scale carrier boxes small_4293459_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4293459_left_root small_4293459_left_fuel small_4293459_left_count small_4293459_left_encoded small_4293459_left_checked

theorem cover_4293459 : CoveredBy scale carrier boxes root_4293459 := by
  apply coveredBy_split_literal root_4293459 small_4293459_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4293539 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4293459_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4293539
#print axioms cover_4293459

def root_4293454 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293454_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293454_right_fuel : Nat := 1
def small_4293454_right_count : Nat := 1
def small_4293454_right_encoded : String := "00000004"
theorem small_4293454_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4293454_right_root small_4293454_right_fuel small_4293454_right_count small_4293454_right_encoded = true := by
  decide +kernel
theorem small_4293454_right_covered : CoveredBy scale carrier boxes small_4293454_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4293454_right_root small_4293454_right_fuel small_4293454_right_count small_4293454_right_encoded small_4293454_right_checked

theorem cover_4293454 : CoveredBy scale carrier boxes root_4293454 := by
  apply coveredBy_split_literal root_4293454 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4293459 small_4293454_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4293459
  · exact small_4293454_right_covered
#print axioms cover_4293454

def root_4293390 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293390_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293390_left_fuel : Nat := 10
def small_4293390_left_count : Nat := 31
def small_4293390_left_encoded : String := "1151E9090000000408A91305120700FA08A913070000000812073D06050000F6000000080000000A000000030000000212073CFA0000000208A913070000000812073D06050000F6135D810105000102000000090000000800000000135D45010000000005000102135D44F900000009000000010000000800000003"
theorem small_4293390_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4293390_left_root small_4293390_left_fuel small_4293390_left_count small_4293390_left_encoded = true := by
  decide +kernel
theorem small_4293390_left_covered : CoveredBy scale carrier boxes small_4293390_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4293390_left_root small_4293390_left_fuel small_4293390_left_count small_4293390_left_encoded small_4293390_left_checked

theorem cover_4293390 : CoveredBy scale carrier boxes root_4293390 := by
  apply coveredBy_split_literal root_4293390 small_4293390_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4293454 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4293390_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4293454
#print axioms cover_4293390

def root_4293385 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293385_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293385_right_fuel : Nat := 1
def small_4293385_right_count : Nat := 1
def small_4293385_right_encoded : String := "00000003"
theorem small_4293385_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4293385_right_root small_4293385_right_fuel small_4293385_right_count small_4293385_right_encoded = true := by
  decide +kernel
theorem small_4293385_right_covered : CoveredBy scale carrier boxes small_4293385_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4293385_right_root small_4293385_right_fuel small_4293385_right_count small_4293385_right_encoded small_4293385_right_checked

theorem cover_4293385 : CoveredBy scale carrier boxes root_4293385 := by
  apply coveredBy_split_literal root_4293385 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4293390 small_4293385_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4293390
  · exact small_4293385_right_covered
#print axioms cover_4293385

def root_4293107 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293107_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293107_left_fuel : Nat := 18
def small_4293107_left_count : Nat := 129
def small_4293107_left_encoded : String := "1151E907000000030A0001081151E9090000000408A91305120700FA050000F600000007000000070000000212073CFA00000002050000F6135D8101050001020000000A0000000A000000000000000A1152250908A91305120700FA08A913091207010800000004050000F6000000070000000712073D08050000F6135D810105000102135D44F90000000700000001000000070000000000000007000000040000000212073CFA0000000208A913091207010800000004050000F6135D810105000102135D44F90500010600000007135D81070CFD9C050F34D0FA0000000700000002000000070000000300000001135D80F9000000010500010600000007135D81070CFD9C050F34D0FA00000007000000020F350CFA0000000204548A091386710800000004000000070000000700000003000000000000000712073D08050000F6135D810105000102135D44F90500010600000007135D81070CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C090F34D1080000000400000007000000070000000300000001135D80F90000000105000106135D45070000000300000007135D81070CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C090F34D1080000000400000007000000070000000300000000135D45010000000005000102135D44F90000000700000001000000070000000400000004"
theorem small_4293107_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4293107_left_root small_4293107_left_fuel small_4293107_left_count small_4293107_left_encoded = true := by
  decide +kernel
theorem small_4293107_left_covered : CoveredBy scale carrier boxes small_4293107_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4293107_left_root small_4293107_left_fuel small_4293107_left_count small_4293107_left_encoded small_4293107_left_checked

theorem cover_4293107 : CoveredBy scale carrier boxes root_4293107 := by
  apply coveredBy_split_literal root_4293107 small_4293107_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4293385 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4293107_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4293385
#print axioms cover_4293107

def root_4293102 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293102_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293102_right_fuel : Nat := 1
def small_4293102_right_count : Nat := 1
def small_4293102_right_encoded : String := "00000002"
theorem small_4293102_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4293102_right_root small_4293102_right_fuel small_4293102_right_count small_4293102_right_encoded = true := by
  decide +kernel
theorem small_4293102_right_covered : CoveredBy scale carrier boxes small_4293102_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4293102_right_root small_4293102_right_fuel small_4293102_right_count small_4293102_right_encoded small_4293102_right_checked

theorem cover_4293102 : CoveredBy scale carrier boxes root_4293102 := by
  apply coveredBy_split_literal root_4293102 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4293107 small_4293102_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4293107
  · exact small_4293102_right_covered
#print axioms cover_4293102

def root_4297085 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4297085_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4297085_left_fuel : Nat := 21
def small_4297085_left_count : Nat := 113
def small_4297085_left_encoded : String := "1151E907000000030A0001081151E90900000004000000051152250908A913091207010800000004050000F6135D810105000102135D44F9050000FA135D81050500010600000007135D810704548A09138671080000000400000007000000070000000300000002135D4505000000020000000A00000001135D80F900000001050000FA135D81050500010600000007135D810704548A091386710800000004078000F6128A7D0107800102128A40F9078000FA000000070000000600000001128A7CF9000000010000000600000000000000071386AD08078000F6128A7D0107800102128A40F90000000700000001128A7CF900000001000000060000000000000007000000040000000300000002135D4505000000020500010600000006135D810704548A0900000006000000050000000300000000135D45010000000005000102135D44F9050000FA000000070000000A00000001135D80F900000001050000FA00000007135D4505000000020000000512073D08050000F6135D8101050001020000000A135D80F900000001050000FA135D8105050001060000000A135D81070000000A00000003000000020000000A000000000000000A0000000400000004"
theorem small_4297085_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4297085_left_root small_4297085_left_fuel small_4297085_left_count small_4297085_left_encoded = true := by
  decide +kernel
theorem small_4297085_left_covered : CoveredBy scale carrier boxes small_4297085_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4297085_left_root small_4297085_left_fuel small_4297085_left_count small_4297085_left_encoded small_4297085_left_checked

theorem cover_4297085 : CoveredBy scale carrier boxes root_4297085 := by
  apply coveredBy_split_literal root_4297085 small_4297085_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1604.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4297085_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1604.covered
#print axioms cover_4297085

def root_4297079 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4297079_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4297079_left_fuel : Nat := 1
def small_4297079_left_count : Nat := 1
def small_4297079_left_encoded : String := "00000002"
theorem small_4297079_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4297079_left_root small_4297079_left_fuel small_4297079_left_count small_4297079_left_encoded = true := by
  decide +kernel
theorem small_4297079_left_covered : CoveredBy scale carrier boxes small_4297079_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4297079_left_root small_4297079_left_fuel small_4297079_left_count small_4297079_left_encoded small_4297079_left_checked

theorem cover_4297079 : CoveredBy scale carrier boxes root_4297079 := by
  apply coveredBy_split_literal root_4297079 small_4297079_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4297085 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4297079_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4297085
#print axioms cover_4297079

def root_4293101 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4293101 : CoveredBy scale carrier boxes root_4293101 := by
  apply coveredBy_split_literal root_4293101 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4293102 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4297079 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4293102
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4297079
#print axioms cover_4293101

def root_4293096 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293096_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293096_right_fuel : Nat := 1
def small_4293096_right_count : Nat := 1
def small_4293096_right_encoded : String := "00000001"
theorem small_4293096_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4293096_right_root small_4293096_right_fuel small_4293096_right_count small_4293096_right_encoded = true := by
  decide +kernel
theorem small_4293096_right_covered : CoveredBy scale carrier boxes small_4293096_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4293096_right_root small_4293096_right_fuel small_4293096_right_count small_4293096_right_encoded small_4293096_right_checked

theorem cover_4293096 : CoveredBy scale carrier boxes root_4293096 := by
  apply coveredBy_split_literal root_4293096 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4293101 small_4293096_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4293101
  · exact small_4293096_right_covered
#print axioms cover_4293096

def root_4293095 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4293095 : CoveredBy scale carrier boxes root_4293095 := by
  apply coveredBy_split_literal root_4293095 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4293096 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1605.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4293096
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1605.covered
#print axioms cover_4293095

def root_4293089 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293089_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4293089_left_fuel : Nat := 1
def small_4293089_left_count : Nat := 1
def small_4293089_left_encoded : String := "00000000"
theorem small_4293089_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4293089_left_root small_4293089_left_fuel small_4293089_left_count small_4293089_left_encoded = true := by
  decide +kernel
theorem small_4293089_left_covered : CoveredBy scale carrier boxes small_4293089_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4293089_left_root small_4293089_left_fuel small_4293089_left_count small_4293089_left_encoded small_4293089_left_checked

theorem cover_4293089 : CoveredBy scale carrier boxes root_4293089 := by
  apply coveredBy_split_literal root_4293089 small_4293089_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4293095 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4293089_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4293095
#print axioms cover_4293089

def root_4245839 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4245839 : CoveredBy scale carrier boxes root_4245839 := by
  apply coveredBy_split_literal root_4245839 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4245840 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4293089 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4245840
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4293089
#print axioms cover_4245839

def root_4214495 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4214495 : CoveredBy scale carrier boxes root_4214495 := by
  apply coveredBy_split_literal root_4214495 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.root_4214496 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4245839 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.cover_4214496
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4245839
#print axioms cover_4214495

def root_4209359 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4209359 : CoveredBy scale carrier boxes root_4209359 := by
  apply coveredBy_split_literal root_4209359 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4209360 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4214495 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4209360
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4214495
#print axioms cover_4209359

def root_4066155 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4066155 : CoveredBy scale carrier boxes root_4066155 := by
  apply coveredBy_split_literal root_4066155 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4066156 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4209359 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4066156
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4209359
#print axioms cover_4066155

def root_3996247 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3996247 : CoveredBy scale carrier boxes root_3996247 := by
  apply coveredBy_split_literal root_3996247 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0293.root_3996248 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4066155 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0293.cover_3996248
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4066155
#print axioms cover_3996247

def root_3880869 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3880869 : CoveredBy scale carrier boxes root_3880869 := by
  apply coveredBy_split_literal root_3880869 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.root_3880870 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_3996247 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0288.cover_3880870
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_3996247
#print axioms cover_3880869

def root_4307139 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4307139 : CoveredBy scale carrier boxes root_4307139 := by
  apply coveredBy_split_literal root_4307139 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1608.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1609.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1608.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1609.covered
#print axioms cover_4307139

def root_4307134 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4307134_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4307134_right_fuel : Nat := 1
def small_4307134_right_count : Nat := 1
def small_4307134_right_encoded : String := "00000000"
theorem small_4307134_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4307134_right_root small_4307134_right_fuel small_4307134_right_count small_4307134_right_encoded = true := by
  decide +kernel
theorem small_4307134_right_covered : CoveredBy scale carrier boxes small_4307134_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4307134_right_root small_4307134_right_fuel small_4307134_right_count small_4307134_right_encoded small_4307134_right_checked

theorem cover_4307134 : CoveredBy scale carrier boxes root_4307134 := by
  apply coveredBy_split_literal root_4307134 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4307139 small_4307134_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4307139
  · exact small_4307134_right_covered
#print axioms cover_4307134

def root_4307133 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4307133 : CoveredBy scale carrier boxes root_4307133 := by
  apply coveredBy_split_literal root_4307133 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4307134 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1610.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4307134
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1610.covered
#print axioms cover_4307133

def root_4304061 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4304061 : CoveredBy scale carrier boxes root_4304061 := by
  apply coveredBy_split_literal root_4304061 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1607.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4307133 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1607.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4307133
#print axioms cover_4304061

def root_4302209 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4302209 : CoveredBy scale carrier boxes root_4302209 := by
  apply coveredBy_split_literal root_4302209 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1606.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4304061 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1606.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4304061
#print axioms cover_4302209

def root_4313867 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4313867 : CoveredBy scale carrier boxes root_4313867 := by
  apply coveredBy_split_literal root_4313867 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1612.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1613.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1612.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1613.covered
#print axioms cover_4313867

def root_4319480 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4319480 : CoveredBy scale carrier boxes root_4319480 := by
  apply coveredBy_split_literal root_4319480 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1614.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1615.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1614.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1615.covered
#print axioms cover_4319480

def root_4313866 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4313866 : CoveredBy scale carrier boxes root_4313866 := by
  apply coveredBy_split_literal root_4313866 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4313867 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_4319480 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4313867
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_4319480
#print axioms cover_4313866

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314
