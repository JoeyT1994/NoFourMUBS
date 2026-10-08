import TaoBundleAssembly0070
import TaoBundleAssembly0080
import TaoBundleAssembly0090
import TaoBundleAssembly0092
import TaoBundleAssembly0094
import TaoBundleAssembly0096
import TaoBundleAssembly0097
import TaoBundleChunkBatch0363
import TaoBundleChunkBatch0364
import TaoBundleChunkBatch0365
import TaoBundleChunkBatch0366
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098
def root_3847693 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3847693_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3847693_left_fuel : Nat := 24
def small_3847693_left_count : Nat := 399
def small_3847693_left_encoded : String := "120700F608A91303120700F808A91305120701040000000208A91307120701060000000308A912FF12073D0804548A01000000051386ACF60000000004548A03000000051386ACF80000000104548A05000000051386AD0400000005000000020000000412070108000000040000000912073D0608A912FF12073D0804548A01138670F604548A030000000500000006000000000000000800000004120701080000000404548A01138670F604548A03138670F804548A0513867104000000020CFD9C07000000050F350D060000000500000003000000060000000100000006000000001386ACF60000000004548A03138670F804548A0513867104000000020CFD9C0700000009000000081386AD040CFD9C07000000060000000800000002000000011386ACF80000000104548A0513867104000000020CFD9C070000000600000006000000060000000312073D0408A91307120701060000000308A912FF12073D0804548A01138670F604548A03000000051386ACF8000000010CFD9C05000000050F350D040000000500000002000000001386ACF60000000004548A03138670F80CFD9C05000000050F350D040000000500000002000000011386ACF8000000010CFD9C050F34D1040000000204548A07000000051386AD060CFD9BFF0000000500000006000000030F350D0404548A07000000051386AD060CFD9BFF000000050000000900000003000000020000000412070108000000040000000912073D0608A912FF12073D0804548A01138670F604548A03138670F80CFD9C050000000500000006000000011386ACF80000000100000006000000001386ACF60000000004548A03138670F80CFD9C050F34D10400000002000000060F350D040CFD9C07000000050000000600000002000000011386ACF8000000010CFD9C050F34D10400000002000000060F350D040CFD9C070F34D106000000030CFD9BFF0F350D08000000050000000400000006000000060000000200000004120701080000000404548A01138670F604548A03138670F8000000060000000100000006000000001386ACF60000000004548A03138670F80CFD9C050F34D104000000020000000600000006000000011386ACF8000000010000000600000003000000020000000112073CF80000000108A91305120701040000000208A91307120701060000000308A912FF12073D0804548A01000000061386ACF6000000000CFD9C030F34D0F804548A0513867104000000020000000600000006000000010F350CF8000000010000000600000004120701080000000404548A01000000060000000912073D0608A912FF00000006000000060000000312073D0408A91307120701060000000308A912FF12073D0804548A01138670F60CFD9C030F34D0F80CFD9C050F34D10400000002000000060F350D0404548A07000000090000000600000002000000010F350CF8000000010CFD9C050F34D10400000002000000060F350D0404548A0713867106000000030CFD9BFF0F350D080000000600000004000000060000000600000002000000001386ACF6000000000CFD9C030F34D0F80CFD9C050F34D1040000000204548A0700000009000000060F350D0404548A071386710600000003000000091386AD060CFD9BFF0F350D080C9A8704000000050000000600000004000000060000000300000002000000010F350CF8000000010CFD9C050F34D1040000000204548A07138671060000000300000006000000060F350D0404548A0713867106000000030CFD9BFF0F350D080C9A86F80F878D030C9A87040F875105000000020000000900000006000000010F875103000000010C9A87040F875105000000020000000600000006000000040F34D10800000004000000061386AD060CFD9BFF0F350D08000000060000000400000006000000030000000200000004120701080000000404548A01000000061386ACF6000000000CFD9C030F34D0F800000009000000010000000912073D0608A912FF12073D0804548A01138670F60CFD9C030000000600000006000000001386ACF6000000000CFD9C030F34D0F80CFD9C050F34D10400000002000000060F350D040CFD9C070F34D10600000003000000060000000600000002000000010F350CF8000000010CFD9C0500000006000000060000000400000006000000030000000200000000"
theorem small_3847693_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3847693_left_root small_3847693_left_fuel small_3847693_left_count small_3847693_left_encoded = true := by
  decide +kernel
theorem small_3847693_left_covered : CoveredBy scale carrier boxes small_3847693_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3847693_left_root small_3847693_left_fuel small_3847693_left_count small_3847693_left_encoded small_3847693_left_checked

theorem cover_3847693 : CoveredBy scale carrier boxes root_3847693 := by
  apply coveredBy_split_literal root_3847693 small_3847693_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0097.root_3848545 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3847693_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0097.cover_3848545
#print axioms cover_3847693

def root_3847687 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3847687_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3847687_left_fuel : Nat := 1
def small_3847687_left_count : Nat := 1
def small_3847687_left_encoded : String := "00000004"
theorem small_3847687_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3847687_left_root small_3847687_left_fuel small_3847687_left_count small_3847687_left_encoded = true := by
  decide +kernel
theorem small_3847687_left_covered : CoveredBy scale carrier boxes small_3847687_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3847687_left_root small_3847687_left_fuel small_3847687_left_count small_3847687_left_encoded small_3847687_left_checked

theorem cover_3847687 : CoveredBy scale carrier boxes root_3847687 := by
  apply coveredBy_split_literal root_3847687 small_3847687_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3847693 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3847687_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3847693
#print axioms cover_3847687

def root_3830865 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3830865 : CoveredBy scale carrier boxes root_3830865 := by
  apply coveredBy_split_literal root_3830865 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0097.root_3830866 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3847687 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0097.cover_3830866
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3847687
#print axioms cover_3830865

def root_3830860 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3830860_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3830860_right_fuel : Nat := 1
def small_3830860_right_count : Nat := 1
def small_3830860_right_encoded : String := "00000003"
theorem small_3830860_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3830860_right_root small_3830860_right_fuel small_3830860_right_count small_3830860_right_encoded = true := by
  decide +kernel
theorem small_3830860_right_covered : CoveredBy scale carrier boxes small_3830860_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3830860_right_root small_3830860_right_fuel small_3830860_right_count small_3830860_right_encoded small_3830860_right_checked

theorem cover_3830860 : CoveredBy scale carrier boxes root_3830860 := by
  apply coveredBy_split_literal root_3830860 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3830865 small_3830860_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3830865
  · exact small_3830860_right_covered
#print axioms cover_3830860

def root_3830688 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3830688_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3830688_left_fuel : Nat := 19
def small_3830688_left_count : Nat := 79
def small_3830688_left_encoded : String := "1151E907000000030A0001081151E8FF08A91301120700F600000008000000000000000800000004115224FF0000000408A91301120700F608A91303120700F808A91305120701040000000208A912FF0000000600000006000000060000000112073CF800000001000000060000000012073CF60000000008A91303120700F808A9130512070104000000020000000812073D0408A912FF00000008120701080000000400000006000000020000000112073CF80000000108A9130512070104000000020000000612073D0408A912FF12073D0805000106135D4507000000030CFD9C010000000600000008135D81070CFD9C010F34D0F600000006000000000F350CF6000000000CFD9C030F34D0F800000008000000010F350CF8000000010CFD9C05000000060000000600000003000000040000000600000002"
theorem small_3830688_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3830688_left_root small_3830688_left_fuel small_3830688_left_count small_3830688_left_encoded = true := by
  decide +kernel
theorem small_3830688_left_covered : CoveredBy scale carrier boxes small_3830688_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3830688_left_root small_3830688_left_fuel small_3830688_left_count small_3830688_left_encoded small_3830688_left_checked

theorem cover_3830688 : CoveredBy scale carrier boxes root_3830688 := by
  apply coveredBy_split_literal root_3830688 small_3830688_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3830860 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3830688_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3830860
#print axioms cover_3830688

def root_3830683 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3830683_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3830683_right_fuel : Nat := 1
def small_3830683_right_count : Nat := 1
def small_3830683_right_encoded : String := "00000002"
theorem small_3830683_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3830683_right_root small_3830683_right_fuel small_3830683_right_count small_3830683_right_encoded = true := by
  decide +kernel
theorem small_3830683_right_covered : CoveredBy scale carrier boxes small_3830683_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3830683_right_root small_3830683_right_fuel small_3830683_right_count small_3830683_right_encoded small_3830683_right_checked

theorem cover_3830683 : CoveredBy scale carrier boxes root_3830683 := by
  apply coveredBy_split_literal root_3830683 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3830688 small_3830683_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3830688
  · exact small_3830683_right_covered
#print axioms cover_3830683

def root_3822439 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3822439 : CoveredBy scale carrier boxes root_3822439 := by
  apply coveredBy_split_literal root_3822439 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0096.root_3822440 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3830683 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0096.cover_3822440
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3830683
#print axioms cover_3822439

def root_3822434 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3822434_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3822434_right_fuel : Nat := 1
def small_3822434_right_count : Nat := 1
def small_3822434_right_encoded : String := "00000001"
theorem small_3822434_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3822434_right_root small_3822434_right_fuel small_3822434_right_count small_3822434_right_encoded = true := by
  decide +kernel
theorem small_3822434_right_covered : CoveredBy scale carrier boxes small_3822434_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3822434_right_root small_3822434_right_fuel small_3822434_right_count small_3822434_right_encoded small_3822434_right_checked

theorem cover_3822434 : CoveredBy scale carrier boxes root_3822434 := by
  apply coveredBy_split_literal root_3822434 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3822439 small_3822434_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3822439
  · exact small_3822434_right_covered
#print axioms cover_3822434

def root_3856287 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856287_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856287_right_fuel : Nat := 12
def small_3856287_right_count : Nat := 59
def small_3856287_right_encoded : String := "135D45030000000105000108135D44FF0CFD9C010F34D0F60CFD9C05000000060F350D040000000A00000002000000000F350CF6000000000CFD9C050F34D1040000000204548A07138671060000000300000006000000060F350D0404548A0713867106000000030000000A0000000A0000000200000004135D80FF000000040CFD9C010F34D0F60CFD9C050000000600000006000000000F350CF6000000000CFD9C050F34D1040000000204548A07138671060000000300000006000000060F350D0404548A0713867106000000030C9A86F60000000A0F875101000000000000000A0000000A00000002"
theorem small_3856287_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3856287_right_root small_3856287_right_fuel small_3856287_right_count small_3856287_right_encoded = true := by
  decide +kernel
theorem small_3856287_right_covered : CoveredBy scale carrier boxes small_3856287_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3856287_right_root small_3856287_right_fuel small_3856287_right_count small_3856287_right_encoded small_3856287_right_checked

theorem cover_3856287 : CoveredBy scale carrier boxes root_3856287 := by
  apply coveredBy_split_literal root_3856287 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1449.root small_3856287_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1449.covered
  · exact small_3856287_right_covered
#print axioms cover_3856287

def root_3856281 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856281_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856281_left_fuel : Nat := 1
def small_3856281_left_count : Nat := 1
def small_3856281_left_encoded : String := "00000003"
theorem small_3856281_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3856281_left_root small_3856281_left_fuel small_3856281_left_count small_3856281_left_encoded = true := by
  decide +kernel
theorem small_3856281_left_covered : CoveredBy scale carrier boxes small_3856281_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3856281_left_root small_3856281_left_fuel small_3856281_left_count small_3856281_left_encoded small_3856281_left_checked

theorem cover_3856281 : CoveredBy scale carrier boxes root_3856281 := by
  apply coveredBy_split_literal root_3856281 small_3856281_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3856287 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3856281_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3856287
#print axioms cover_3856281

def root_3856280 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856280_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856280_right_fuel : Nat := 16
def small_3856280_right_count : Nat := 91
def small_3856280_right_encoded : String := "12073D06050000F8135D810305000108135D44FF0CFD9C010F34D0F600000006000000000F350CF6000000000CFD9C050F34D10400000002000000060F350D040CFD9C070F34D106000000030C9A86F60F878D01000000060000000000000009000000090000000200000004135D80FF000000040CFD9C010F34D0F600000006000000000F350CF6000000000CFD9C050F34D10400000002000000060F350D040CFD9C070F34D106000000030C9A86F60F878D0100000006000000000F875101000000000C9A87040F875105000000020000000A0F878D0500000006000000020F350D0600000006000000030000000200000001135D45030000000105000108135D44FF0CFD9C010F34D0F600000006000000000F350CF6000000000CFD9C05000000060000000900000004135D80FF000000040CFD9C01000000060F350CF6000000000CFD9C05000000060F350D040CFD9C070F34D1060000000300000006000000060000000200000003"
theorem small_3856280_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3856280_right_root small_3856280_right_fuel small_3856280_right_count small_3856280_right_encoded = true := by
  decide +kernel
theorem small_3856280_right_covered : CoveredBy scale carrier boxes small_3856280_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3856280_right_root small_3856280_right_fuel small_3856280_right_count small_3856280_right_encoded small_3856280_right_checked

theorem cover_3856280 : CoveredBy scale carrier boxes root_3856280 := by
  apply coveredBy_split_literal root_3856280 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3856281 small_3856280_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3856281
  · exact small_3856280_right_covered
#print axioms cover_3856280

def root_3856275 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856275_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856275_right_fuel : Nat := 1
def small_3856275_right_count : Nat := 1
def small_3856275_right_encoded : String := "00000002"
theorem small_3856275_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3856275_right_root small_3856275_right_fuel small_3856275_right_count small_3856275_right_encoded = true := by
  decide +kernel
theorem small_3856275_right_covered : CoveredBy scale carrier boxes small_3856275_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3856275_right_root small_3856275_right_fuel small_3856275_right_count small_3856275_right_encoded small_3856275_right_checked

theorem cover_3856275 : CoveredBy scale carrier boxes root_3856275 := by
  apply coveredBy_split_literal root_3856275 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3856280 small_3856275_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3856280
  · exact small_3856275_right_covered
#print axioms cover_3856275

def root_3856151 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856151_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856151_left_fuel : Nat := 18
def small_3856151_left_count : Nat := 59
def small_3856151_left_encoded : String := "120701040000000208A913071207010600000003050000F8135D810305000108135D44FF0CFD9C01000000060F350CF60000000004548A05000000061386AD0404548A0713867106000000030C9A86F6000000060F87510100000000078000F80000000700000006000000060000000200000004135D80FF000000040CFD9C01000000060F350CF60000000004548A051386710400000002000000061386AD0404548A0713867106000000030C9A86F6000000060F87510100000000078000F8128A7D03000000060000000100000006000000060000000200000001135D4503000000010000000600000006"
theorem small_3856151_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3856151_left_root small_3856151_left_fuel small_3856151_left_count small_3856151_left_encoded = true := by
  decide +kernel
theorem small_3856151_left_covered : CoveredBy scale carrier boxes small_3856151_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3856151_left_root small_3856151_left_fuel small_3856151_left_count small_3856151_left_encoded small_3856151_left_checked

theorem cover_3856151 : CoveredBy scale carrier boxes root_3856151 := by
  apply coveredBy_split_literal root_3856151 small_3856151_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3856275 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3856151_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3856275
#print axioms cover_3856151

def root_3856145 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856145_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856145_left_fuel : Nat := 1
def small_3856145_left_count : Nat := 1
def small_3856145_left_encoded : String := "00000000"
theorem small_3856145_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3856145_left_root small_3856145_left_fuel small_3856145_left_count small_3856145_left_encoded = true := by
  decide +kernel
theorem small_3856145_left_covered : CoveredBy scale carrier boxes small_3856145_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3856145_left_root small_3856145_left_fuel small_3856145_left_count small_3856145_left_encoded small_3856145_left_checked

theorem cover_3856145 : CoveredBy scale carrier boxes root_3856145 := by
  apply coveredBy_split_literal root_3856145 small_3856145_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3856151 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3856145_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3856151
#print axioms cover_3856145

def root_3856065 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856065_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856065_left_fuel : Nat := 15
def small_3856065_left_count : Nat := 39
def small_3856065_left_encoded : String := "120700F608A9130512070104000000020000000612073D0408A913071207010600000003050000F8135D810305000108135D44FF04548A01000000061386ACF6000000000CFD9C05000000060F350D0404548A0700000005000000060000000200000004135D80FF0000000404548A01000000061386ACF6000000000CFD9C0500000006000000060000000100000006000000060000000200000000"
theorem small_3856065_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3856065_left_root small_3856065_left_fuel small_3856065_left_count small_3856065_left_encoded = true := by
  decide +kernel
theorem small_3856065_left_covered : CoveredBy scale carrier boxes small_3856065_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3856065_left_root small_3856065_left_fuel small_3856065_left_count small_3856065_left_encoded small_3856065_left_checked

theorem cover_3856065 : CoveredBy scale carrier boxes root_3856065 := by
  apply coveredBy_split_literal root_3856065 small_3856065_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3856145 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3856065_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3856145
#print axioms cover_3856065

def root_3856060 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856060_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856060_right_fuel : Nat := 1
def small_3856060_right_count : Nat := 1
def small_3856060_right_encoded : String := "00000004"
theorem small_3856060_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3856060_right_root small_3856060_right_fuel small_3856060_right_count small_3856060_right_encoded = true := by
  decide +kernel
theorem small_3856060_right_covered : CoveredBy scale carrier boxes small_3856060_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3856060_right_root small_3856060_right_fuel small_3856060_right_count small_3856060_right_encoded small_3856060_right_checked

theorem cover_3856060 : CoveredBy scale carrier boxes root_3856060 := by
  apply coveredBy_split_literal root_3856060 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3856065 small_3856060_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3856065
  · exact small_3856060_right_covered
#print axioms cover_3856060

def root_3856059 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856059_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856059_right_fuel : Nat := 31
def small_3856059_right_count : Nat := 397
def small_3856059_right_encoded : String := "115224FF0000000408A91301120700F608A9130512070104000000020000000612073D0408A91307120701060000000308A912FF12073D08050000F8135D810304548A01000000061386ACF6000000000CFD9C05000000060F350D0404548A0713867106000000030000000600000006000000020000000100000006000000040000000600000006000000020000000012073CF60000000008A91305120701040000000208A91307120701060000000308A912FF12073D08050000F8135D81030CFD9C010F34D0F600000006000000000F350CF60000000004548A05138671040000000204548A0713867106000000030CFD9BFF0F350D08000000060000000400000006000000061386AD0404548A0713867106000000030CFD9BFF0F350D080C9A86F6000000060F8751010000000000000005000000040000000600000006000000020000000100000006000000040000000612073D06000000060000000312073D0408A91307120701060000000308A912FF12073D08050000F8135D81030CFD9C010F34D0F60CFD9C050F34D10400000002000000060F350D0404548A0713867106000000030CFD9BFF0F350D080C9A87040F875105000000020C9A87080F8750FF078000F8128A7D030AD35781000000060000000A0000000100000006000000040F878CFF00000004000000060F878D050000000600000002000000040F34D10800000004000000061386AD060CFD9BFF0F350D080000000600000004000000060000000300000002000000000F350CF6000000000CFD9C050F34D1040000000204548A0713867106000000030CFD9BFF0F350D080C9A86F60F878D010C9A87080000000600000006000000000F875101000000000C9A87080F8750FF078000F8128A7D030AD3578510D1010400000002000000050000000500000001000000050000000400000005000000040F34D10800000004000000051386AD060CFD9BFF0F350D08000000060000000400000006000000030F350D0404548A0713867106000000030CFD9BFF0F350D080C9A86F60F878D010C9A87040F875105000000020C9A87080F8750FF078000F8128A7D03022A458700000008000000080000000100000008000000040F878CFF00000004000000080F878D050C9A87080F8750FF078000F8128A7D03022A458713E1C506000000030DE7C9F60000000900000008000000060000000100000006000000040F878CFF00000004078000F8000000080000000500000002000000000F875101000000000C9A87040F875105000000020C9A870800000008000000050F878D050C9A87080F8750FF078000F8128A7D03022A458713E1C5060000000300000005000000050000000100000005000000040000000500000002000000040F34D10800000004000000051386AD060CFD9BFF0F350D080C9A86F60F878D010C9A87040F875105000000020C9A87080F8750FF0000000A000000040F878CFF00000004000000050F878D050000000600000002000000000F875101000000000C9A87040F875105000000020000000500000005000000040F34D1080000000400000005000000030000000200000001135D4503000000010CFD9C010F34D0F60CFD9C05000000060F350D0404548A071386710600000003000000060000000600000002000000000F350CF6000000000CFD9C050F34D10400000002000000050F350D0404548A0713867106000000030CFD9BFF0F350D080C9A86F60F878D010C9A87040000000800000005000000000000000500000004000000050000000500000002000000041207010800000004050000F8135D81030CFD9C010F34D0F600000006000000000F350CF60000000000000005000000010000000512073D0608A912FF12073D08050000F8135D81030CFD9C010F34D0F60CFD9C050000000600000006000000000F350CF6000000000CFD9C050F34D10400000002000000060F350D040CFD9C070F34D106000000030CFD9BFF0F350D080C9A86F60F878D0100000006000000000F875101000000000000000500000004000000050F350D0600000006000000030000000200000001135D4503000000010CFD9C01000000060F350CF6000000000CFD9C05000000060F350D040CFD9C070F34D10600000003000000050000000500000002000000041207010800000004000000060000000300000002"
theorem small_3856059_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3856059_right_root small_3856059_right_fuel small_3856059_right_count small_3856059_right_encoded = true := by
  decide +kernel
theorem small_3856059_right_covered : CoveredBy scale carrier boxes small_3856059_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3856059_right_root small_3856059_right_fuel small_3856059_right_count small_3856059_right_encoded small_3856059_right_checked

theorem cover_3856059 : CoveredBy scale carrier boxes root_3856059 := by
  apply coveredBy_split_literal root_3856059 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3856060 small_3856059_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3856060
  · exact small_3856059_right_covered
#print axioms cover_3856059

def root_3856054 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856054_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856054_right_fuel : Nat := 1
def small_3856054_right_count : Nat := 1
def small_3856054_right_encoded : String := "00000003"
theorem small_3856054_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3856054_right_root small_3856054_right_fuel small_3856054_right_count small_3856054_right_encoded = true := by
  decide +kernel
theorem small_3856054_right_covered : CoveredBy scale carrier boxes small_3856054_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3856054_right_root small_3856054_right_fuel small_3856054_right_count small_3856054_right_encoded small_3856054_right_checked

theorem cover_3856054 : CoveredBy scale carrier boxes root_3856054 := by
  apply coveredBy_split_literal root_3856054 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3856059 small_3856054_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3856059
  · exact small_3856054_right_covered
#print axioms cover_3856054

def root_3855960 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3855960_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3855960_left_fuel : Nat := 12
def small_3855960_left_count : Nat := 45
def small_3855960_left_encoded : String := "1151E907000000030A0001081151E8FF08A91301120700F608A913050000000612073D04050000F80000000600000009000000020000000012073CF60000000008A913050000000612073D04050000F8135D810305000106000000080000000600000001135D45030000000105000106135D45070000000300000006000000060000000200000004115224FF0000000408A91301120700F6000000060000000012073CF60000000008A913050000000600000006"
theorem small_3855960_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3855960_left_root small_3855960_left_fuel small_3855960_left_count small_3855960_left_encoded = true := by
  decide +kernel
theorem small_3855960_left_covered : CoveredBy scale carrier boxes small_3855960_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3855960_left_root small_3855960_left_fuel small_3855960_left_count small_3855960_left_encoded small_3855960_left_checked

theorem cover_3855960 : CoveredBy scale carrier boxes root_3855960 := by
  apply coveredBy_split_literal root_3855960 small_3855960_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3856054 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3855960_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3856054
#print axioms cover_3855960

def root_3855955 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3855955_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3855955_right_fuel : Nat := 1
def small_3855955_right_count : Nat := 1
def small_3855955_right_encoded : String := "00000002"
theorem small_3855955_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3855955_right_root small_3855955_right_fuel small_3855955_right_count small_3855955_right_encoded = true := by
  decide +kernel
theorem small_3855955_right_covered : CoveredBy scale carrier boxes small_3855955_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3855955_right_root small_3855955_right_fuel small_3855955_right_count small_3855955_right_encoded small_3855955_right_checked

theorem cover_3855955 : CoveredBy scale carrier boxes root_3855955 := by
  apply coveredBy_split_literal root_3855955 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3855960 small_3855955_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3855960
  · exact small_3855955_right_covered
#print axioms cover_3855955

def root_3855035 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3855035_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3855035_left_fuel : Nat := 26
def small_3855035_left_count : Nat := 431
def small_3855035_left_encoded : String := "1151E905000000020A0001061151E907000000030A0001081151E8FF08A91301120700F6050000F80000000A000000090000000012073CF600000000050000F8135D8103050001040000000900000009000000010000000900000004115224FF0000000408A91301120700F6000000060000000012073CF60000000008A912FF12073D08050000F8135D810305000104135D4505000000020500010600000007135D81070CFD9C010000000A0000000500000003135D81050500010600000006000000060000000200000001135D4503000000010500010400000007000000060000000400000005115225070A0001081151E8FF08A91301120700F608A913071207010600000003050000F80000000A0000000A12073D06050000F8135D8103050001040000000A135D810505000108000000060000000600000002000000010000000A000000030000000012073CF60000000008A913071207010600000003050000F8135D8103050001040000000A135D810505000108135D44FF0CFD9C010F34D0F60000000A000000000000000A00000004135D80FF000000040CFD9C010F34D0F60000000A000000000F350CF60000000004548A0713867106000000030000000A0000000A00000002000000010000000A12073D06050000F8135D810305000104135D4505000000020000000A135D810505000108135D44FF0CFD9C010F34D0F60000000A000000000F350CF6000000000CFD9C070F34D106000000030000000A0000000900000004135D80FF000000040CFD9C010F34D0F60000000A000000000F350CF6000000000CFD9C070F34D106000000030000000A0000000A0000000200000001135D450300000001050001040000000A135D810505000108135D44FF00000009000000040000000A000000020000000300000004115224FF0000000408A91301120700F608A91307120701060000000308A912FF12073D08050000F8135D810305000104135D4505000000020000000A135D810504548A01138670F604548A0713867106000000030000000800000006000000001386ACF60000000004548A0713867106000000030CFD9BFF0000000A000000081386AD060000000A000000030000000200000001135D450300000001050001040000000A135D810500000006000000020000000412070108000000040000000812073D0608A912FF12073D08050000F8135D8103050001040000000A0000000600000001000000060000000400000006000000030000000012073CF60000000008A91307120701060000000308A912FF12073D08050000F8135D810305000104135D4505000000020CFD9C010F34D0F60000000A000000000F350CF60000000004548A07000000081386AD060CFD9BFF0000000A0000000700000003135D81050CFD9C010F34D0F604548A0713867106000000030CFD9BFF0F350D080C9A8708000000080000000800000004000000081386AD060CFD9BFF0000000A0F34D108000000040000000600000003000000000F350CF60000000004548A0713867106000000030CFD9BFF0F350D080C9A86F60F878D0100000008000000000000000800000004000000081386AD060CFD9BFF0F350D080C9A86F60000000A0F875101000000000C9A87080F8750FF0000000A0000000400000005000000040F34D1080000000400000005000000030000000200000001135D45030000000105000104135D4505000000020CFD9C010000000A0000000A135D81050CFD9C010F34D0F604548A0713867106000000030000000A0000000A000000000F350CF60000000004548A071386710600000003000000080000000500000002000000041207010800000004050000F8000000080000000712073D0608A912FF12073D08050000F8135D810305000104135D4505000000020CFD9C010F34D0F60000000A000000000F350CF6000000000CFD9C070F34D106000000030000000A0F350D060000000700000003135D81050CFD9C010F34D0F60CFD9C070F34D106000000030CFD9BFF0000000A0000000600000006000000000F350CF6000000000CFD9C070F34D106000000030CFD9BFF0F350D080C9A86F60000000A0F875101000000000000000500000004000000050F350D060CFD9BFF0F350D080C9A86F60000000A0F87510100000000000000050000000400000005000000030000000200000001135D45030000000105000104135D4505000000020CFD9C010000000A0000000A135D81050CFD9C010F34D0F600000006000000000F350CF6000000000CFD9C070F34D10600000003000000050000000500000002000000041207010800000004050000F8135D810305000104000000070000000500000001000000050000000300000003"
theorem small_3855035_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3855035_left_root small_3855035_left_fuel small_3855035_left_count small_3855035_left_encoded = true := by
  decide +kernel
theorem small_3855035_left_covered : CoveredBy scale carrier boxes small_3855035_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3855035_left_root small_3855035_left_fuel small_3855035_left_count small_3855035_left_encoded small_3855035_left_checked

theorem cover_3855035 : CoveredBy scale carrier boxes root_3855035 := by
  apply coveredBy_split_literal root_3855035 small_3855035_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3855955 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3855035_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3855955
#print axioms cover_3855035

def root_3855029 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3855029_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3855029_left_fuel : Nat := 1
def small_3855029_left_count : Nat := 1
def small_3855029_left_encoded : String := "00000001"
theorem small_3855029_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3855029_left_root small_3855029_left_fuel small_3855029_left_count small_3855029_left_encoded = true := by
  decide +kernel
theorem small_3855029_left_covered : CoveredBy scale carrier boxes small_3855029_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3855029_left_root small_3855029_left_fuel small_3855029_left_count small_3855029_left_encoded small_3855029_left_checked

theorem cover_3855029 : CoveredBy scale carrier boxes root_3855029 := by
  apply coveredBy_split_literal root_3855029 small_3855029_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3855035 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3855029_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3855035
#print axioms cover_3855029

def root_3822433 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3822433 : CoveredBy scale carrier boxes root_3822433 := by
  apply coveredBy_split_literal root_3822433 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3822434 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3855029 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3822434
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3855029
#print axioms cover_3822433

def root_3822428 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3822428_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3822428_right_fuel : Nat := 1
def small_3822428_right_count : Nat := 1
def small_3822428_right_encoded : String := "00000000"
theorem small_3822428_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3822428_right_root small_3822428_right_fuel small_3822428_right_count small_3822428_right_encoded = true := by
  decide +kernel
theorem small_3822428_right_covered : CoveredBy scale carrier boxes small_3822428_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3822428_right_root small_3822428_right_fuel small_3822428_right_count small_3822428_right_encoded small_3822428_right_checked

theorem cover_3822428 : CoveredBy scale carrier boxes root_3822428 := by
  apply coveredBy_split_literal root_3822428 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3822433 small_3822428_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3822433
  · exact small_3822428_right_covered
#print axioms cover_3822428

def root_3861052 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3861052_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3861052_right_fuel : Nat := 1
def small_3861052_right_count : Nat := 1
def small_3861052_right_encoded : String := "00000003"
theorem small_3861052_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3861052_right_root small_3861052_right_fuel small_3861052_right_count small_3861052_right_encoded = true := by
  decide +kernel
theorem small_3861052_right_covered : CoveredBy scale carrier boxes small_3861052_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3861052_right_root small_3861052_right_fuel small_3861052_right_count small_3861052_right_encoded small_3861052_right_checked

theorem cover_3861052 : CoveredBy scale carrier boxes root_3861052 := by
  apply coveredBy_split_literal root_3861052 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1450.root small_3861052_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1450.covered
  · exact small_3861052_right_covered
#print axioms cover_3861052

def root_3860562 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3860562_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3860562_left_fuel : Nat := 24
def small_3860562_left_count : Nat := 237
def small_3860562_left_encoded : String := "1151E907000000030A0001081151E8FF08A913030000000812073CF800000001050000F6135D8101050001040000000900000008000000000000000900000004115224FF0000000408A91303120700F808A912FF12073D08050000F6135D810105000104135D4505000000020500010600000008135D810704548A03000000081386ACF8000000010CFD9BFF000000080F34D10800000004078000F6128A7D0102800104000000070000000700000000128A4101000000000280010413D7B1050000000207800106000000070000000500000005000000030000000800000000135D45010000000005000104135D4505000000020500010600000008135D810704548A03000000081386ACF8000000010CFD9BFF000000080F34D10800000004000000050000000300000008000000041207010800000004050000F6135D810105000104135D45050000000205000106135D45070000000304548A03138670F8045489FF00000008000000050000000100000005135D810704548A03138670F8045489FF1386AD08078000F6128A7D010280010413D7B105000000020780010600000008128A7D0700000007000000030000000800000000128A410100000000000000050000000400000005000000010000000500000003135D810505000106135D45070000000304548A030000000600000005135D810704548A03138670F8045489FF00000008000000050000000100000005000000030000000200000000135D45010000000005000104135D45050000000200000005135D810505000106135D4507000000030000000500000005000000020000000112073CF80000000108A912FF12073D08050000F6135D810105000104135D45050000000205000106135D4507000000030CFD9C030F34D0F80CFD9BFF00000008000000050000000100000005135D81070CFD9C030F34D0F80CFD9BFF0F350D08000000070000000400000005000000010000000500000003135D810505000106135D4507000000030CFD9C030000000800000005135D81070CFD9C030F34D0F80CFD9BFF00000008000000050000000100000005000000030000000200000000135D45010000000005000104135D45050000000205000106135D45070000000300000005135D81070CFD9C030F34D0F80CFD9BFF0000000900000005000000010000000500000003135D810505000106135D4507000000030CFD9C030F34D0F8000000080000000100000005135D81070CFD9C030F34D0F80CFD9BFF0000000800000005000000010000000500000003000000020000000400000005"
theorem small_3860562_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3860562_left_root small_3860562_left_fuel small_3860562_left_count small_3860562_left_encoded = true := by
  decide +kernel
theorem small_3860562_left_covered : CoveredBy scale carrier boxes small_3860562_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3860562_left_root small_3860562_left_fuel small_3860562_left_count small_3860562_left_encoded small_3860562_left_checked

theorem cover_3860562 : CoveredBy scale carrier boxes root_3860562 := by
  apply coveredBy_split_literal root_3860562 small_3860562_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3861052 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3860562_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3861052
#print axioms cover_3860562

def root_3860556 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3860556_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3860556_left_fuel : Nat := 1
def small_3860556_left_count : Nat := 1
def small_3860556_left_encoded : String := "00000002"
theorem small_3860556_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3860556_left_root small_3860556_left_fuel small_3860556_left_count small_3860556_left_encoded = true := by
  decide +kernel
theorem small_3860556_left_covered : CoveredBy scale carrier boxes small_3860556_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3860556_left_root small_3860556_left_fuel small_3860556_left_count small_3860556_left_encoded small_3860556_left_checked

theorem cover_3860556 : CoveredBy scale carrier boxes root_3860556 := by
  apply coveredBy_split_literal root_3860556 small_3860556_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3860562 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3860556_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3860562
#print axioms cover_3860556

def root_3867899 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867899_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867899_left_fuel : Nat := 23
def small_3867899_left_count : Nat := 313
def small_3867899_left_encoded : String := "0F878D030C9A87040F87510500000002078000F6128A7D0107800108128A40FF022A458713E1C506000000030DE7C9F80E6015030B4D44040000000610804D0508C000F611FC2501064001080000000500000006000000000000000600000002000000010E5FD903000000010B4D440410801105000000020000000610804D0508C000F611FC25010640010812FF70FF01152347000000060000000700000004000000070000000011FBE90100000000000000060000000213E201060DE7C9F80E6015030B4D440410801105000000020000000710804D0508C000F6000000080000000800000002000000010E5FD903000000010B4D440410801105000000020000000710804D0508C000F611FC25010640010812FF70FF0000000800000004000000070000000011FBE9010000000000000007000000020000000300000004128A7CFF00000004022A458713E1C506000000030DE7C9F80E60150300000007000000010000000713E201060DE7C9F80E6015030000000700000001000000070000000300000000128A41010000000007800108128A40FF022A45870000000613E201060DE7C9F80E6015030000000700000001000000070000000300000004128A7CFF00000004000000070F878D05078000F6128A7D0107800108128A40FF022A458713E1C506000000030DE7C9F80E6015030DE7CA040E5FD905000000020000000A00000008000000010E5FD903000000010DE7CA040E5FD9050000000208C000F611FC25010640010812FF70FF0115234713F85906000000030D4128780000000A0EFA1103000000010D4128840000000600000008000000080000000412FFACFF000000040115234713F85906000000030D4128780000000A0000000713F895060D4128780EFA4D03000000070000000100000007000000030000000011FBE901000000000640010812FF70FF01152347000000060000000800000004000000070E60150508C000F611FC25010000000A000000000000000A0000000213E201060DE7C9F8000000080E5FD903000000010DE7CA040E5FD9050000000208C000F60000000811FBE9010000000000000008000000080000000300000004128A7CFF00000004022A458713E1C506000000030DE7C9F80E6015030DE7CA040E5FD905000000020000000A0000000A000000010E5FD903000000010DE7CA040E5FD9050000000208C000F611FC250108C00108000000070000000700000000000000070E6015050000000A0000000213E201060DE7C9F80E6015030DE7CA040E5FD9050000000208C000F611FC250108C001080000000700000007000000000000000700000008000000010E5FD903000000010DE7CA040E5FD9050000000208C000F611FC250108C00108000000070000000700000000000000070E60150508C000F611FC250108C0010811FBE8FF000000080000000411FC24FF00000004033F67C700000007000000070000000011FBE9010000000008C001080000000800000005000000020000000300000000128A41010000000007800108128A40FF022A45870000000A13E201060DE7C9F8000000080E5FD903000000010DE7CA040E5FD90500000002064000F60000000700000007000000080000000300000004128A7CFF00000004022A45870000000A13E201060DE7C9F80E6015030000000A000000010E5FD903000000010DE7CA040000000700000005000000030000000200000001"
theorem small_3867899_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3867899_left_root small_3867899_left_fuel small_3867899_left_count small_3867899_left_encoded = true := by
  decide +kernel
theorem small_3867899_left_covered : CoveredBy scale carrier boxes small_3867899_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3867899_left_root small_3867899_left_fuel small_3867899_left_count small_3867899_left_encoded small_3867899_left_checked

theorem cover_3867899 : CoveredBy scale carrier boxes root_3867899 := by
  apply coveredBy_split_literal root_3867899 small_3867899_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1452.root coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_3867899_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1452.covered
#print axioms cover_3867899

def root_3867893 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867893_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867893_left_fuel : Nat := 1
def small_3867893_left_count : Nat := 1
def small_3867893_left_encoded : String := "00000003"
theorem small_3867893_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3867893_left_root small_3867893_left_fuel small_3867893_left_count small_3867893_left_encoded = true := by
  decide +kernel
theorem small_3867893_left_covered : CoveredBy scale carrier boxes small_3867893_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3867893_left_root small_3867893_left_fuel small_3867893_left_count small_3867893_left_encoded small_3867893_left_checked

theorem cover_3867893 : CoveredBy scale carrier boxes root_3867893 := by
  apply coveredBy_split_literal root_3867893 small_3867893_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3867899 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_3867893_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3867899
#print axioms cover_3867893

def root_3867892 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867892_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867892_right_fuel : Nat := 19
def small_3867892_right_count : Nat := 247
def small_3867892_right_encoded : String := "1386AD060C9A86F80F878D030C9A87040F87510500000002078000F6128A7D0107800108128A40FF067ECE8712EA5906000000030DE7C9F80E60150300000008000000010E5FD903000000010B4D4404108011050000000200000007000000080000000800000004128A7CFF00000004067ECE8712EA5906000000030DE7C9F80E60150300000007000000010000000712EA95060DE7C9F80E6015030000000700000001000000070000000300000000128A41010000000007800108128A40FF067ECE8712EA5906000000030DE7C9F80E6015030000000700000001000000070000000800000004128A7CFF00000004067ECE8700000007000000070F878D05078000F6128A7D010780010800000008128A7CFF00000004067ECE8712EA5906000000030DE7C9F80E60150300000008000000010E5FD903000000010DE7CA040E5FD9050000000208C000F611FC250108C0010800000007000000070000000000000007000000080000000800000000128A4101000000000780010800000008128A7CFF00000004067ECE8712EA5906000000030DE7C9F8000000080E5FD90300000001000000050000000800000002000000010F875103000000010C9A87040F87510500000002078000F6128A7D0107800108128A40FF067ECE8712EA5906000000030B4D43F810804D030B4D440410801105000000020000000710804D0508C000F611FC25010640010800000008000000070000000011FBE9010000000000000007000000020000000110801103000000010B4D440410801105000000020000000710804D0508C000F60000000A000000050000000212EA95060B4D43F810804D030B4D4404000000070000000800000001000000090000000300000004128A7CFF00000004067ECE8712EA5906000000030B4D43F810804D030000000700000001000000050000000500000000128A41010000000007800108128A40FF067ECE8712EA5906000000030B4D43F810804D030000000700000001000000050000000500000004000000050F878D05078000F6128A7D0107800108128A40FF067ECE8712EA5906000000030B4D43F810804D03000000080000000110801103000000010DE7CA040E5FD9050000000208C000F611FC25010640010800000008000000050000000000000005000000080000000800000004128A7CFF00000004067ECE8712EA5906000000030B4D43F810804D030DE7CA040E5FD90500000002000000050000000500000001000000050000000500000000128A41010000000007800108128A40FF067ECE8712EA5906000000030B4D43F810804D030000000800000001000000050000000500000004000000050000000200000003"
theorem small_3867892_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3867892_right_root small_3867892_right_fuel small_3867892_right_count small_3867892_right_encoded = true := by
  decide +kernel
theorem small_3867892_right_covered : CoveredBy scale carrier boxes small_3867892_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3867892_right_root small_3867892_right_fuel small_3867892_right_count small_3867892_right_encoded small_3867892_right_checked

theorem cover_3867892 : CoveredBy scale carrier boxes root_3867892 := by
  apply coveredBy_split_literal root_3867892 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3867893 small_3867892_right_root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3867893
  · exact small_3867892_right_covered
#print axioms cover_3867892

def root_3867887 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867887_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867887_right_fuel : Nat := 1
def small_3867887_right_count : Nat := 1
def small_3867887_right_encoded : String := "00000002"
theorem small_3867887_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3867887_right_root small_3867887_right_fuel small_3867887_right_count small_3867887_right_encoded = true := by
  decide +kernel
theorem small_3867887_right_covered : CoveredBy scale carrier boxes small_3867887_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3867887_right_root small_3867887_right_fuel small_3867887_right_count small_3867887_right_encoded small_3867887_right_checked

theorem cover_3867887 : CoveredBy scale carrier boxes root_3867887 := by
  apply coveredBy_split_literal root_3867887 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3867892 small_3867887_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3867892
  · exact small_3867887_right_covered
#print axioms cover_3867887

def root_3867337 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867337_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867337_left_fuel : Nat := 30
def small_3867337_left_count : Nat := 257
def small_3867337_left_encoded : String := "0F34D1040000000204548A0713867106000000030C9A86F80F878D03078000F6128A7D0107800108128A40FF0000000800000004128A7CFF000000040AD3578510D10104000000020000000A10D13D04022A45870000000A13E201060DE7C9F8000000080E5FD90300000001000000080000000300000002000000000000000A000000010F87510300000001078000F6128A7D0107800108128A40FF0AD3578510D1010400000002022A45870000000A0000000810D13D04022A458713E1C506000000030B4D43F810804D0308C000F611FC25010000000A000000000000000A00000001108011030000000108C000F611FC25010640010812FF70FF0BE879C51011710400000002000000081011AD040115234713F85906000000030AA6A2780000000A10ED710300000001096000F611AABD0105A0010800000008133170FF000000040000000A000000000000000A00000008000000020000000412FFACFF000000040BE879C510117104000000020000000A1011AD040115234713F85906000000030AA6A2780000000A10ED7103000000010000000513F895060AA6A27810EDAD03096000F60000000800000005000000010000000500000003000000020000000011FBE901000000000640010812FF70FF0BE879C50000000A0000000A0000000412FFACFF000000040BE879C50000000A0000000513E201060B4D43F800000008108011030000000108C000F60000000811FBE9010000000000000008000000030000000200000004128A7CFF000000040AD3578510D1010400000002022A45870000000A13E201060B4D43F810804D030000000800000001000000050000000310D13D04022A458713E1C506000000030B4D43F810804D0308C000F611FC25010000000A000000000000000A00000001108011030000000108C000F611FC250108C0010811FBE8FF0BE879C5101171040000000200000005000000050000000400000005000000000000000513E201060B4D43F810804D0308C000F611FC250108C0010811FBE8FF00000008000000040000000500000000000000050000000100000005000000030000000200000000128A41010000000007800108128A40FF0AD3578510D10104000000020000000A10D13D04022A45870000000A13E201060B4D43F80000000800000005000000030000000200000004128A7CFF000000040AD3578510D101040000000200000005000000051386AD060C9A86F80F878D0300000008000000010F87510300000001078000F6128A7D010780010800000008128A7CFF000000040AD3578510D10104000000020000000810D13D04067ECE8712EA5906000000030B4D43F810804D03000000080000000100000005000000050000000200000000128A41010000000007800108000000080000000500000003"
theorem small_3867337_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3867337_left_root small_3867337_left_fuel small_3867337_left_count small_3867337_left_encoded = true := by
  decide +kernel
theorem small_3867337_left_covered : CoveredBy scale carrier boxes small_3867337_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3867337_left_root small_3867337_left_fuel small_3867337_left_count small_3867337_left_encoded small_3867337_left_checked

theorem cover_3867337 : CoveredBy scale carrier boxes root_3867337 := by
  apply coveredBy_split_literal root_3867337 small_3867337_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3867887 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3867337_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3867887
#print axioms cover_3867337

def root_3867331 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867331_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867331_left_fuel : Nat := 1
def small_3867331_left_count : Nat := 1
def small_3867331_left_encoded : String := "00000001"
theorem small_3867331_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3867331_left_root small_3867331_left_fuel small_3867331_left_count small_3867331_left_encoded = true := by
  decide +kernel
theorem small_3867331_left_covered : CoveredBy scale carrier boxes small_3867331_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3867331_left_root small_3867331_left_fuel small_3867331_left_count small_3867331_left_encoded small_3867331_left_checked

theorem cover_3867331 : CoveredBy scale carrier boxes root_3867331 := by
  apply coveredBy_split_literal root_3867331 small_3867331_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3867337 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3867331_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3867337
#print axioms cover_3867331

def root_3867139 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867139_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867139_left_fuel : Nat := 17
def small_3867139_left_count : Nat := 91
def small_3867139_left_encoded : String := "0F34D0F80CFD9C050F34D10400000002000000080F350D0404548A0713867106000000030C9A87040F87510500000002078000F6128A7D0107800108128A40FF0AD357830000000810D13CF800000001022A458713E1C506000000030B4D4404000000050000000A0000000800000004128A7CFF000000040AD3578310D100F80000000A0000000110D13CF800000001022A45870000000713E20106000000070000000300000000128A41010000000007800108128A40FF0AD357830000000710D13CF800000001022A4587000000060000000700000004128A7CFF00000004000000070F878D05078000F6128A7D010780010800000008128A7CFF000000040AD357830000000810D13CF8000000010000000A000000000000000A000000021386AD060C9A87040F87510500000002078000F600000008128A4101000000000780010800000008128A7CFF000000040AD35783000000070000000800000008000000030000000200000001"
theorem small_3867139_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3867139_left_root small_3867139_left_fuel small_3867139_left_count small_3867139_left_encoded = true := by
  decide +kernel
theorem small_3867139_left_covered : CoveredBy scale carrier boxes small_3867139_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3867139_left_root small_3867139_left_fuel small_3867139_left_count small_3867139_left_encoded small_3867139_left_checked

theorem cover_3867139 : CoveredBy scale carrier boxes root_3867139 := by
  apply coveredBy_split_literal root_3867139 small_3867139_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3867331 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3867139_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3867331
#print axioms cover_3867139

def root_3867133 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867133_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867133_left_fuel : Nat := 1
def small_3867133_left_count : Nat := 1
def small_3867133_left_encoded : String := "00000004"
theorem small_3867133_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3867133_left_root small_3867133_left_fuel small_3867133_left_count small_3867133_left_encoded = true := by
  decide +kernel
theorem small_3867133_left_covered : CoveredBy scale carrier boxes small_3867133_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3867133_left_root small_3867133_left_fuel small_3867133_left_count small_3867133_left_encoded small_3867133_left_checked

theorem cover_3867133 : CoveredBy scale carrier boxes root_3867133 := by
  apply coveredBy_split_literal root_3867133 small_3867133_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3867139 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_3867133_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3867139
#print axioms cover_3867133

def root_3864689 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3864689 : CoveredBy scale carrier boxes root_3864689 := by
  apply coveredBy_split_literal root_3864689 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1451.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3867133 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1451.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3867133
#print axioms cover_3864689

def root_3864684 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864684_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864684_right_fuel : Nat := 1
def small_3864684_right_count : Nat := 1
def small_3864684_right_encoded : String := "00000000"
theorem small_3864684_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3864684_right_root small_3864684_right_fuel small_3864684_right_count small_3864684_right_encoded = true := by
  decide +kernel
theorem small_3864684_right_covered : CoveredBy scale carrier boxes small_3864684_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3864684_right_root small_3864684_right_fuel small_3864684_right_count small_3864684_right_encoded small_3864684_right_checked

theorem cover_3864684 : CoveredBy scale carrier boxes root_3864684 := by
  apply coveredBy_split_literal root_3864684 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3864689 small_3864684_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3864689
  · exact small_3864684_right_covered
#print axioms cover_3864684

def root_3864683 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864683_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864683_right_fuel : Nat := 21
def small_3864683_right_count : Nat := 245
def small_3864683_right_encoded : String := "135D45010000000005000108135D44FF0CFD9C030F34D0F80CFD9C050F34D10400000002000000080F350D0404548A0713867106000000030C9A87040F87510500000002028000F60000000800000006000000080000000800000002000000010F350CF8000000010CFD9C050F34D1040000000204548A070000000A000000080F350D0404548A0713867106000000030C9A86F80F878D030C9A87040F87510500000002028000F613D7ED0102800108000000060000000600000000000000060F878D050000000A00000002000000010F875103000000010C9A87040F87510500000002028000F613D7ED01028001080000000913D7ECFF00000004022A4587000000060000000700000000000000060F878D05028000F613D7ED01028001080000000913D7ECFF00000004022A458713E1C506000000030B4D43F80000000A00000009000000090000000000000009000000021386AD060C9A86F80F878D030C9A870400000009000000080000000100000009000000030000000200000004135D80FF000000040CFD9C030F34D0F80CFD9C050F34D104000000020000000A0F350D0404548A070000000A1386AD060C9A87040F87510500000002028000F613D7ED010780010800000008128A7CFF0000000400000007000000000000000A000000080000000300000002000000010F350CF8000000010CFD9C050F34D1040000000204548A0713867106000000030C9A86F80000000A0F87510300000001028000F613D7ED01078001080000000A0000000500000000000000051386AD060C9A86F80F878D0300000008000000010F8751030000000100000005000000030F350D0404548A0713867106000000030C9A86F80F878D030C9A87040F87510500000002028000F613D7ED0107800108000000070000000700000000000000060F878D050000000A00000002000000010F875103000000010C9A87040F87510500000002028000F613D7ED0107800108000000070000000500000000000000050F878D05028000F613D7ED0107800108128A40FF022A458713E1C50600000003000000050000000500000004000000050000000000000005000000021386AD060C9A86F80F878D030C9A87040F87510500000002028000F613D7ED0107800108128A40FF067ECE87000000070000000700000004000000070000000013D7B101000000000780010800000007000000050F878D05028000F613D7ED010780010800000008128A7CFF00000004000000050000000013D7B1010000000007800108000000080000000500000002000000010F875103000000010C9A87040F8751050000000200000005000000050000000300000002"
theorem small_3864683_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3864683_right_root small_3864683_right_fuel small_3864683_right_count small_3864683_right_encoded = true := by
  decide +kernel
theorem small_3864683_right_covered : CoveredBy scale carrier boxes small_3864683_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3864683_right_root small_3864683_right_fuel small_3864683_right_count small_3864683_right_encoded small_3864683_right_checked

theorem cover_3864683 : CoveredBy scale carrier boxes root_3864683 := by
  apply coveredBy_split_literal root_3864683 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3864684 small_3864683_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3864684
  · exact small_3864683_right_covered
#print axioms cover_3864683

def root_3864677 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864677_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864677_left_fuel : Nat := 1
def small_3864677_left_count : Nat := 1
def small_3864677_left_encoded : String := "00000003"
theorem small_3864677_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3864677_left_root small_3864677_left_fuel small_3864677_left_count small_3864677_left_encoded = true := by
  decide +kernel
theorem small_3864677_left_covered : CoveredBy scale carrier boxes small_3864677_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3864677_left_root small_3864677_left_fuel small_3864677_left_count small_3864677_left_encoded small_3864677_left_checked

theorem cover_3864677 : CoveredBy scale carrier boxes root_3864677 := by
  apply coveredBy_split_literal root_3864677 small_3864677_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3864683 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3864677_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3864683
#print axioms cover_3864677

def root_3864676 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864676_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864676_right_fuel : Nat := 21
def small_3864676_right_count : Nat := 87
def small_3864676_right_encoded : String := "12073D06050000F6135D810105000108135D44FF0000000800000004135D80FF000000040CFD9C03000000080F350CF8000000010CFD9C050F34D10400000002000000080F350D040CFD9C070F34D106000000030C9A86F80F878D030C9A87040F87510500000002078000F600000008128A4101000000000000000800000008000000010F875103000000010C9A87040F87510500000002078000F6128A7D010780010800000009128A7CFF000000040AD35787000000070000000500000000000000090F878D05078000F6000000080000000900000002000000080000000200000000135D45010000000005000108135D44FF0000000800000004135D80FF000000040CFD9C03000000080F350CF8000000010CFD9C050F34D10400000002000000080F350D040CFD9C070F34D106000000030C9A86F80F878D030C9A870400000009000000080000000100000009000000080000000200000003"
theorem small_3864676_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3864676_right_root small_3864676_right_fuel small_3864676_right_count small_3864676_right_encoded = true := by
  decide +kernel
theorem small_3864676_right_covered : CoveredBy scale carrier boxes small_3864676_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3864676_right_root small_3864676_right_fuel small_3864676_right_count small_3864676_right_encoded small_3864676_right_checked

theorem cover_3864676 : CoveredBy scale carrier boxes root_3864676 := by
  apply coveredBy_split_literal root_3864676 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3864677 small_3864676_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3864677
  · exact small_3864676_right_covered
#print axioms cover_3864676

def root_3864671 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864671_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864671_right_fuel : Nat := 1
def small_3864671_right_count : Nat := 1
def small_3864671_right_encoded : String := "00000002"
theorem small_3864671_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3864671_right_root small_3864671_right_fuel small_3864671_right_count small_3864671_right_encoded = true := by
  decide +kernel
theorem small_3864671_right_covered : CoveredBy scale carrier boxes small_3864671_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3864671_right_root small_3864671_right_fuel small_3864671_right_count small_3864671_right_encoded small_3864671_right_checked

theorem cover_3864671 : CoveredBy scale carrier boxes root_3864671 := by
  apply coveredBy_split_literal root_3864671 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3864676 small_3864671_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3864676
  · exact small_3864671_right_covered
#print axioms cover_3864671

def root_3864489 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864489_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864489_left_fuel : Nat := 23
def small_3864489_left_count : Nat := 85
def small_3864489_left_encoded : String := "120701040000000208A913071207010600000003050000F6135D810105000108135D44FF0000000800000004135D80FF000000040CFD9C03000000080F350CF80000000104548A05138671040000000204548A0713867106000000030C9A86F8000000080F87510300000001078000F6000000080000000A000000081386AD0404548A0713867106000000030C9A86F80F878D030000000A000000010F87510300000001078000F6128A7D0107800108128A40FF0000000800000004128A7CFF00000004067ECE8512EA5904000000020000000A12EA9504022A45870000000A0000000800000002000000000000000A000000080000000200000000135D45010000000005000108135D44FF0000000800000004135D80FF000000040CFD9C03000000080F350CF80000000104548A0513867104000000020000000A1386AD0404548A070000000A000000080000000200000008"
theorem small_3864489_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3864489_left_root small_3864489_left_fuel small_3864489_left_count small_3864489_left_encoded = true := by
  decide +kernel
theorem small_3864489_left_covered : CoveredBy scale carrier boxes small_3864489_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3864489_left_root small_3864489_left_fuel small_3864489_left_count small_3864489_left_encoded small_3864489_left_checked

theorem cover_3864489 : CoveredBy scale carrier boxes root_3864489 := by
  apply coveredBy_split_literal root_3864489 small_3864489_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3864671 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3864489_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3864671
#print axioms cover_3864489

def root_3864483 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864483_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864483_left_fuel : Nat := 1
def small_3864483_left_count : Nat := 1
def small_3864483_left_encoded : String := "00000001"
theorem small_3864483_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3864483_left_root small_3864483_left_fuel small_3864483_left_count small_3864483_left_encoded = true := by
  decide +kernel
theorem small_3864483_left_covered : CoveredBy scale carrier boxes small_3864483_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3864483_left_root small_3864483_left_fuel small_3864483_left_count small_3864483_left_encoded small_3864483_left_checked

theorem cover_3864483 : CoveredBy scale carrier boxes root_3864483 := by
  apply coveredBy_split_literal root_3864483 small_3864483_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3864489 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3864483_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3864489
#print axioms cover_3864483

def root_3864443 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864443_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864443_left_fuel : Nat := 9
def small_3864443_left_count : Nat := 19
def small_3864443_left_encoded : String := "120700F808A9130512070104000000020000000812073D0408A913071207010600000003050000F600000008135D45010000000005000108000000080000000A000000080000000200000001"
theorem small_3864443_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3864443_left_root small_3864443_left_fuel small_3864443_left_count small_3864443_left_encoded = true := by
  decide +kernel
theorem small_3864443_left_covered : CoveredBy scale carrier boxes small_3864443_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3864443_left_root small_3864443_left_fuel small_3864443_left_count small_3864443_left_encoded small_3864443_left_checked

theorem cover_3864443 : CoveredBy scale carrier boxes root_3864443 := by
  apply coveredBy_split_literal root_3864443 small_3864443_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3864483 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3864443_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3864483
#print axioms cover_3864443

def root_3864438 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864438_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864438_right_fuel : Nat := 1
def small_3864438_right_count : Nat := 1
def small_3864438_right_encoded : String := "00000004"
theorem small_3864438_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3864438_right_root small_3864438_right_fuel small_3864438_right_count small_3864438_right_encoded = true := by
  decide +kernel
theorem small_3864438_right_covered : CoveredBy scale carrier boxes small_3864438_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3864438_right_root small_3864438_right_fuel small_3864438_right_count small_3864438_right_encoded small_3864438_right_checked

theorem cover_3864438 : CoveredBy scale carrier boxes root_3864438 := by
  apply coveredBy_split_literal root_3864438 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3864443 small_3864438_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3864443
  · exact small_3864438_right_covered
#print axioms cover_3864438

def root_3864437 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3864437 : CoveredBy scale carrier boxes root_3864437 := by
  apply coveredBy_split_literal root_3864437 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3864438 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1453.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3864438
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1453.covered
#print axioms cover_3864437

def root_3864432 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864432_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864432_right_fuel : Nat := 1
def small_3864432_right_count : Nat := 1
def small_3864432_right_encoded : String := "00000003"
theorem small_3864432_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3864432_right_root small_3864432_right_fuel small_3864432_right_count small_3864432_right_encoded = true := by
  decide +kernel
theorem small_3864432_right_covered : CoveredBy scale carrier boxes small_3864432_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3864432_right_root small_3864432_right_fuel small_3864432_right_count small_3864432_right_encoded small_3864432_right_checked

theorem cover_3864432 : CoveredBy scale carrier boxes root_3864432 := by
  apply coveredBy_split_literal root_3864432 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3864437 small_3864432_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3864437
  · exact small_3864432_right_covered
#print axioms cover_3864432

def root_3864234 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864234_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864234_left_fuel : Nat := 19
def small_3864234_left_count : Nat := 93
def small_3864234_left_encoded : String := "1151E907000000030A0001081151E8FF0000000800000004115224FF0000000408A91303120700F808A9130512070104000000020000000812073D0408A912FF000000081207010800000004050000F600000008135D4501000000000500010600000008135D810704548A03000000080000000500000003000000020000000112073CF80000000108A91305120701040000000208A912FF000000080000000612073D0408A912FF12073D08050000F6135D810105000106135D45070000000300000008135D81070CFD9C03000000080F350CF8000000010CFD9C050F34D10400000002000000060F350D040CFD9BFF0000000800000005000000020000000300000000135D45010000000005000106135D45070000000300000008135D81070CFD9C03000000080F350CF8000000010CFD9C050F34D10400000002000000050000000500000003000000041207010800000004050000F6135D8101050001060000000600000005000000000000000500000002"
theorem small_3864234_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3864234_left_root small_3864234_left_fuel small_3864234_left_count small_3864234_left_encoded = true := by
  decide +kernel
theorem small_3864234_left_covered : CoveredBy scale carrier boxes small_3864234_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3864234_left_root small_3864234_left_fuel small_3864234_left_count small_3864234_left_encoded small_3864234_left_checked

theorem cover_3864234 : CoveredBy scale carrier boxes root_3864234 := by
  apply coveredBy_split_literal root_3864234 small_3864234_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3864432 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3864234_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3864432
#print axioms cover_3864234

def root_3864229 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864229_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864229_right_fuel : Nat := 1
def small_3864229_right_count : Nat := 1
def small_3864229_right_encoded : String := "00000002"
theorem small_3864229_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3864229_right_root small_3864229_right_fuel small_3864229_right_count small_3864229_right_encoded = true := by
  decide +kernel
theorem small_3864229_right_covered : CoveredBy scale carrier boxes small_3864229_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3864229_right_root small_3864229_right_fuel small_3864229_right_count small_3864229_right_encoded small_3864229_right_checked

theorem cover_3864229 : CoveredBy scale carrier boxes root_3864229 := by
  apply coveredBy_split_literal root_3864229 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3864234 small_3864229_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3864234
  · exact small_3864229_right_covered
#print axioms cover_3864229

def root_3860555 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3860555 : CoveredBy scale carrier boxes root_3860555 := by
  apply coveredBy_split_literal root_3860555 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3860556 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3864229 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3860556
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3864229
#print axioms cover_3860555

def root_3860550 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3860550_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3860550_right_fuel : Nat := 1
def small_3860550_right_count : Nat := 1
def small_3860550_right_encoded : String := "00000001"
theorem small_3860550_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3860550_right_root small_3860550_right_fuel small_3860550_right_count small_3860550_right_encoded = true := by
  decide +kernel
theorem small_3860550_right_covered : CoveredBy scale carrier boxes small_3860550_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3860550_right_root small_3860550_right_fuel small_3860550_right_count small_3860550_right_encoded small_3860550_right_checked

theorem cover_3860550 : CoveredBy scale carrier boxes root_3860550 := by
  apply coveredBy_split_literal root_3860550 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3860555 small_3860550_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3860555
  · exact small_3860550_right_covered
#print axioms cover_3860550

def root_3875704 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3875704_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3875704_left_fuel : Nat := 13
def small_3875704_left_count : Nat := 39
def small_3875704_left_encoded : String := "1151E907000000030A0001081151E8FF08A9130512070104000000020000000612073D04050000F600000008135D450100000000000000080000000200000004115224FF0000000408A9130512070104000000020000000612073D0408A912FF12073D08050000F6135D8101050000F8135D810305000106000000070000000500000001000000050000000000000005000000040000000500000002"
theorem small_3875704_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3875704_left_root small_3875704_left_fuel small_3875704_left_count small_3875704_left_encoded = true := by
  decide +kernel
theorem small_3875704_left_covered : CoveredBy scale carrier boxes small_3875704_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3875704_left_root small_3875704_left_fuel small_3875704_left_count small_3875704_left_encoded small_3875704_left_checked

theorem cover_3875704 : CoveredBy scale carrier boxes root_3875704 := by
  apply coveredBy_split_literal root_3875704 small_3875704_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1454.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3875704_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1454.covered
#print axioms cover_3875704

def root_3875699 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3875699_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3875699_right_fuel : Nat := 1
def small_3875699_right_count : Nat := 1
def small_3875699_right_encoded : String := "00000002"
theorem small_3875699_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3875699_right_root small_3875699_right_fuel small_3875699_right_count small_3875699_right_encoded = true := by
  decide +kernel
theorem small_3875699_right_covered : CoveredBy scale carrier boxes small_3875699_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3875699_right_root small_3875699_right_fuel small_3875699_right_count small_3875699_right_encoded small_3875699_right_checked

theorem cover_3875699 : CoveredBy scale carrier boxes root_3875699 := by
  apply coveredBy_split_literal root_3875699 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3875704 small_3875699_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3875704
  · exact small_3875699_right_covered
#print axioms cover_3875699

def root_3875415 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3875415_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3875415_left_fuel : Nat := 20
def small_3875415_left_count : Nat := 135
def small_3875415_left_encoded : String := "1151E905000000020A0001061151E9070000000300000005115225070A0001081151E8FF08A913071207010600000003050000F6135D8101050000F8135D8103050001040000000A135D810505000108135D44FF04548A0713867106000000030000000A0000000900000004135D80FF0000000404548A071386710600000003078000F60000000A128A410100000000000000071386AD06078000F60000000A128A410100000000000000070000000300000002000000010000000A00000000135D450100000000050000F8135D810305000104135D45050000000200000007135D810505000108135D44FF0000000900000004135D80FF0000000404548A0700000007000000050000000200000001135D45030000000105000104000000070000000912073D06050000F6135D8101050000F8135D81030500010400000009135D810505000108000000090000000900000002000000010000000900000000000000090000000300000004115224FF0000000408A91307120701060000000308A912FF12073D08050000F6135D8101050000F8135D81030500010400000007135D810504548A07000000070000000500000002000000010000000700000000135D45010000000000000005000000040000000512073D0608A912FF12073D08050000F6135D8101050000F8135D81030500010400000007000000050000000100000005000000000000000500000004000000050000000300000003"
theorem small_3875415_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3875415_left_root small_3875415_left_fuel small_3875415_left_count small_3875415_left_encoded = true := by
  decide +kernel
theorem small_3875415_left_covered : CoveredBy scale carrier boxes small_3875415_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3875415_left_root small_3875415_left_fuel small_3875415_left_count small_3875415_left_encoded small_3875415_left_checked

theorem cover_3875415 : CoveredBy scale carrier boxes root_3875415 := by
  apply coveredBy_split_literal root_3875415 small_3875415_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3875699 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3875415_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3875699
#print axioms cover_3875415

def root_3875409 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3875409_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3875409_left_fuel : Nat := 1
def small_3875409_left_count : Nat := 1
def small_3875409_left_encoded : String := "00000001"
theorem small_3875409_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3875409_left_root small_3875409_left_fuel small_3875409_left_count small_3875409_left_encoded = true := by
  decide +kernel
theorem small_3875409_left_covered : CoveredBy scale carrier boxes small_3875409_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3875409_left_root small_3875409_left_fuel small_3875409_left_count small_3875409_left_encoded small_3875409_left_checked

theorem cover_3875409 : CoveredBy scale carrier boxes root_3875409 := by
  apply coveredBy_split_literal root_3875409 small_3875409_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3875415 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3875409_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3875415
#print axioms cover_3875409

def root_3860549 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3860549 : CoveredBy scale carrier boxes root_3860549 := by
  apply coveredBy_split_literal root_3860549 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3860550 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3875409 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3860550
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3875409
#print axioms cover_3860549

def root_3860543 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3860543_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3860543_left_fuel : Nat := 1
def small_3860543_left_count : Nat := 1
def small_3860543_left_encoded : String := "00000000"
theorem small_3860543_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3860543_left_root small_3860543_left_fuel small_3860543_left_count small_3860543_left_encoded = true := by
  decide +kernel
theorem small_3860543_left_covered : CoveredBy scale carrier boxes small_3860543_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3860543_left_root small_3860543_left_fuel small_3860543_left_count small_3860543_left_encoded small_3860543_left_checked

theorem cover_3860543 : CoveredBy scale carrier boxes root_3860543 := by
  apply coveredBy_split_literal root_3860543 small_3860543_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3860549 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3860543_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3860549
#print axioms cover_3860543

def root_3822427 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3822427 : CoveredBy scale carrier boxes root_3822427 := by
  apply coveredBy_split_literal root_3822427 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3822428 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3860543 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3822428
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3860543
#print axioms cover_3822427

def root_3822426 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3822426 : CoveredBy scale carrier boxes root_3822426 := by
  apply coveredBy_split_literal root_3822426 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3822427 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1455.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3822427
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1455.covered
#print axioms cover_3822426

def root_3779326 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3779326 : CoveredBy scale carrier boxes root_3779326 := by
  apply coveredBy_split_literal root_3779326 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0096.root_3779327 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3822426 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0096.cover_3779327
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3822426
#print axioms cover_3779326

def root_3704604 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3704604 : CoveredBy scale carrier boxes root_3704604 := by
  apply coveredBy_split_literal root_3704604 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.root_3704605 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3779326 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0094.cover_3704605
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3779326
#print axioms cover_3704604

def root_3642262 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3642262 : CoveredBy scale carrier boxes root_3642262 := by
  apply coveredBy_split_literal root_3642262 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3642263 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3704604 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3642263
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3704604
#print axioms cover_3642262

def root_3334846 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3334846 : CoveredBy scale carrier boxes root_3334846 := by
  apply coveredBy_split_literal root_3334846 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3334847 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3642262 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3334847
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3642262
#print axioms cover_3334846

def root_2966716 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2966716 : CoveredBy scale carrier boxes root_2966716 := by
  apply coveredBy_split_literal root_2966716 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_2966717 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3334846 coord2 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_2966717
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3334846
#print axioms cover_2966716

def root_2513322 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2513322 : CoveredBy scale carrier boxes root_2513322 := by
  apply coveredBy_split_literal root_2513322 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0070.root_2513323 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_2966716 coord1 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0070.cover_2513323
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_2966716
#print axioms cover_2513322

def root_3880872 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3880872 : CoveredBy scale carrier boxes root_3880872 := by
  apply coveredBy_split_literal root_3880872 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1456.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1457.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1456.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1457.covered
#print axioms cover_3880872

def root_3890464 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3890464_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3890464_left_fuel : Nat := 14
def small_3890464_left_count : Nat := 77
def small_3890464_left_encoded : String := "1151E8F90A0000FA115224FB000000020A0000FC115225070A0001081151E8FF08A912FB12073CFA00000002000000050000000500000004115224FF0000000400000005000000031151E90700000003000000051151E8FB0A0000FC115225070A0001081151E8FF0000000800000004115224FF0000000408A91307120700FC08A912FF12073D08050000F600000005135D4501000000000000000500000004000000050000000312073CFC0000000308A912FF12073D08050000F600000005135D450100000000000000050000000400000005000000031151E907000000030A00010800000005115224FF0000000408A912FF12073D08050000F600000005135D45010000000000000008000000041207010800000004050000F600000005135D450100000000000000090000000200000001"
theorem small_3890464_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3890464_left_root small_3890464_left_fuel small_3890464_left_count small_3890464_left_encoded = true := by
  decide +kernel
theorem small_3890464_left_covered : CoveredBy scale carrier boxes small_3890464_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3890464_left_root small_3890464_left_fuel small_3890464_left_count small_3890464_left_encoded small_3890464_left_checked

theorem cover_3890464 : CoveredBy scale carrier boxes root_3890464 := by
  apply coveredBy_split_literal root_3890464 small_3890464_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1460.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3890464_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1460.covered
#print axioms cover_3890464

def root_3890458 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3890458_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3890458_left_fuel : Nat := 1
def small_3890458_left_count : Nat := 1
def small_3890458_left_encoded : String := "00000000"
theorem small_3890458_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3890458_left_root small_3890458_left_fuel small_3890458_left_count small_3890458_left_encoded = true := by
  decide +kernel
theorem small_3890458_left_covered : CoveredBy scale carrier boxes small_3890458_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3890458_left_root small_3890458_left_fuel small_3890458_left_count small_3890458_left_encoded small_3890458_left_checked

theorem cover_3890458 : CoveredBy scale carrier boxes root_3890458 := by
  apply coveredBy_split_literal root_3890458 small_3890458_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3890464 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3890458_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3890464
#print axioms cover_3890458

def root_3888768 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3888768 : CoveredBy scale carrier boxes root_3888768 := by
  apply coveredBy_split_literal root_3888768 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1459.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3890458 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1459.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3890458
#print axioms cover_3888768

def root_3888767 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3888767 : CoveredBy scale carrier boxes root_3888767 := by
  apply coveredBy_split_literal root_3888767 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3888768 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1461.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3888768
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1461.covered
#print axioms cover_3888767

def root_3885777 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3885777 : CoveredBy scale carrier boxes root_3885777 := by
  apply coveredBy_split_literal root_3885777 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1458.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3888767 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1458.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3888767
#print axioms cover_3885777

def root_3880871 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3880871 : CoveredBy scale carrier boxes root_3880871 := by
  apply coveredBy_split_literal root_3880871 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3880872 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3885777 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3880872
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3885777
#print axioms cover_3880871

def root_3899763 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3899763 : CoveredBy scale carrier boxes root_3899763 := by
  apply coveredBy_split_literal root_3899763 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1463.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1464.root coord0 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1463.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1464.covered
#print axioms cover_3899763

def root_3899757 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3899757_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3899757_left_fuel : Nat := 1
def small_3899757_left_count : Nat := 1
def small_3899757_left_encoded : String := "00000001"
theorem small_3899757_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3899757_left_root small_3899757_left_fuel small_3899757_left_count small_3899757_left_encoded = true := by
  decide +kernel
theorem small_3899757_left_covered : CoveredBy scale carrier boxes small_3899757_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3899757_left_root small_3899757_left_fuel small_3899757_left_count small_3899757_left_encoded small_3899757_left_checked

theorem cover_3899757 : CoveredBy scale carrier boxes root_3899757 := by
  apply coveredBy_split_literal root_3899757 small_3899757_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3899763 coord1 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_3899757_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3899763
#print axioms cover_3899757

def root_3899297 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3899297_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3899297_left_fuel : Nat := 21
def small_3899297_left_count : Nat := 219
def small_3899297_left_encoded : String := "13D7B0F9067ECE8112EA58F6022A457D13E201060B4D43FA10804CFB000000020B4D43FE10804CFF000000040000000A108010FF014001020000000A13F614F9000000010569AC411340D4F6033F67BD0000000513BBF506000000030000000A00000000134110F600000000033F67BD0000000A13BBF506000000030BF3E57A000000060000000A000000040000000A0000000313E1C506000000030B4D43FA10804CFB000000020B4D43FE10804CFF00000004014001020000000A13F614F9000000010569AC4100000009134110F6000000000115233D0000000A00000005108010FF0140010213F5D8F90569AC411340D4F60115233D0000000A0000000700000000134110F6000000000115233D00000006000000070000000113F614F9000000010569AC411340D4F60115233D13F895060BF3E57A100928FB00000002000000091008ECFB0000000A000000020000000313F85906000000030BF3E57A000000091008ECFB000000090000000200000000134110F6000000000115233D13F895060BF3E57A100928FB000000020AA6A27E10EDACFF0000000401E001020000000600000009000000061008ECFB0AA6A27E0000000A00000006000000020000000313F85906000000030BF3E57A100928FB000000020AA6A27E00000009000000061008ECFB0AA6A27E10EDACFF0000000401E001020000000600000009000000060000000200000004108010FB0B4D43FE10804CFF000000040000000A108010FF014001020000000A13F614F9000000010569AC410000000A134110F6000000000000000A00000004000000020000000012EA94F600000000022A457D13E201060B4D43FA10804CFB000000020B4D43FE10804CFF000000040000000A108010FF014001020000000613F614F9000000010793F0C1128220F6000000060000000000000006000000040000000A0000000313E1C506000000030B4D43FA10804CFB000000020B4D43FE10804CFF0000000400000005108010FF014001020000000613F614F9000000010793F0C1128220F60115233D0000000600000005000000000000000500000004108010FB0B4D43FE10804CFF000000040000000A108010FF014001020000000613F614F9000000010793F0C1128220F60115233D0000000A13F85906000000030AA6A27A00000006000000080000000000000006000000040000000200000001"
theorem small_3899297_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3899297_left_root small_3899297_left_fuel small_3899297_left_count small_3899297_left_encoded = true := by
  decide +kernel
theorem small_3899297_left_covered : CoveredBy scale carrier boxes small_3899297_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3899297_left_root small_3899297_left_fuel small_3899297_left_count small_3899297_left_encoded small_3899297_left_checked

theorem cover_3899297 : CoveredBy scale carrier boxes root_3899297 := by
  apply coveredBy_split_literal root_3899297 small_3899297_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3899757 coord1 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_3899297_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3899757
#print axioms cover_3899297

def root_3899292 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3899292_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3899292_right_fuel : Nat := 1
def small_3899292_right_count : Nat := 1
def small_3899292_right_encoded : String := "00000004"
theorem small_3899292_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3899292_right_root small_3899292_right_fuel small_3899292_right_count small_3899292_right_encoded = true := by
  decide +kernel
theorem small_3899292_right_covered : CoveredBy scale carrier boxes small_3899292_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3899292_right_root small_3899292_right_fuel small_3899292_right_count small_3899292_right_encoded small_3899292_right_checked

theorem cover_3899292 : CoveredBy scale carrier boxes root_3899292 := by
  apply coveredBy_split_literal root_3899292 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3899297 small_3899292_right_root coord4 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3899297
  · exact small_3899292_right_covered
#print axioms cover_3899292

def root_3899046 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3899046_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3899046_left_fuel : Nat := 17
def small_3899046_left_count : Nat := 117
def small_3899046_left_encoded : String := "0F878CFF000000040280010213D7B0F9067ECE8112EA58F6022A457D0000000A13E1C506000000030B4D43FA10804CFB00000002000000090000000A0000000012EA94F600000000022A457D0000000A13E1C506000000030B4D43FA10804CFB0000000200000005000000050000000113D7ECF900000001067ECE8112EA58F6022A457D13E201060B4D43FA10804CFB000000020DE7C9FE0E6014FF00000004000000070E5FD8FF03C001020000000A13A54CF9000000010569AC410000000800000007000000040000000A0000000313E1C506000000030B4D43FA10804CFB000000020DE7C9FE000000090E5FD8FF0000000900000004108010FB0DE7C9FE0E6014FF00000004000000090E5FD8FF03C001020000000A13A54CF9000000010569AC4100000009134110F6000000000115233D000000070000000500000004000000020000000012EA94F600000000022A457D13E201060B4D43FA10804CFB000000020DE7C9FE0E6014FF00000004000000050E5FD8FF03C0010213A510F90793F0C10000000A000000050000000113A54CF9000000010793F0C1000000070000000500000004108010FB0DE7C9FE000000070E5FD8FF03C001020000000A0000000700000004000000020000000300000005"
theorem small_3899046_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3899046_left_root small_3899046_left_fuel small_3899046_left_count small_3899046_left_encoded = true := by
  decide +kernel
theorem small_3899046_left_covered : CoveredBy scale carrier boxes small_3899046_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3899046_left_root small_3899046_left_fuel small_3899046_left_count small_3899046_left_encoded small_3899046_left_checked

theorem cover_3899046 : CoveredBy scale carrier boxes root_3899046 := by
  apply coveredBy_split_literal root_3899046 small_3899046_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3899292 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_3899046_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3899292
#print axioms cover_3899046

def root_3899041 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3899041_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3899041_right_fuel : Nat := 1
def small_3899041_right_count : Nat := 1
def small_3899041_right_encoded : String := "00000002"
theorem small_3899041_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3899041_right_root small_3899041_right_fuel small_3899041_right_count small_3899041_right_encoded = true := by
  decide +kernel
theorem small_3899041_right_covered : CoveredBy scale carrier boxes small_3899041_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3899041_right_root small_3899041_right_fuel small_3899041_right_count small_3899041_right_encoded small_3899041_right_checked

theorem cover_3899041 : CoveredBy scale carrier boxes root_3899041 := by
  apply coveredBy_split_literal root_3899041 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3899046 small_3899041_right_root coord2 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3899046
  · exact small_3899041_right_covered
#print axioms cover_3899041

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098
