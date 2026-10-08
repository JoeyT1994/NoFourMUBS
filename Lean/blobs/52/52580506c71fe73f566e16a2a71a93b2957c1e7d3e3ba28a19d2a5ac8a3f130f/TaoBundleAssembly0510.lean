import TaoBundleAssembly0499
import TaoBundleAssembly0500
import TaoBundleAssembly0505
import TaoBundleAssembly0509
import TaoBundleChunkBatch0697
import TaoBundleChunkBatch0698
import TaoBundleChunkBatch0699
import TaoBundleChunkBatch0700
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510
def root_7409993 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7409993_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7409993_right_fuel : Nat := 21
def small_7409993_right_count : Nat := 497
def small_7409993_right_encoded : String := "120701000000000008A91303120701020000000108A91305120700FA08A91307120700FC08A91309120701080000000400000007000000070000000312073CFC0000000308A913091207010800000004045489F71386AD0004548A03000000071386AD0204548A05138670FA0CFD9C070000000700000007000000020000000700000001000000000000000712073D08045489F71386AD0004548A03000000071386AD0204548A05138670FA0CFD9C070000000700000007000000021386ACFA000000020CFD9C070F34D0FC0000000700000003000000070000000100000000138671000000000000000007000000040000000212073CFA0000000208A91307120700FC08A913091207010800000004045489F7000000090000000712073D08045489F71386AD0004548A0300000007000000090000000000000009000000040000000312073CFC0000000308A913091207010800000004045489F71386AD0004548A0313867102000000010CFD9C050F34D0FA0000000700000002000000071386AD020CFD9C050F34D0FA0CFD9C070000000900000007000000020F350CFA00000002000000090000000100000000138671000000000004548A03000000071386AD020CFD9C050F34D0FA0000000700000002000000070000000112073D08045489F71386AD0004548A0313867102000000010CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C070F34D0FC0000000700000003000000071386AD020CFD9C050F34D0FA0CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090F34D108000000040000000700000007000000020F350CFA000000020CFD9C070F34D0FC00000009000000030F350CFC000000030CFD9C090F34D1080000000400000005000000050000000100000000138671000000000004548A03000000071386AD020CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C070000000900000007000000010000000412073D0208A91305120700FA08A91307120700FC08A913091207010800000004045489F71386AD000CFD9C030F34D1020000000104548A05138670FA04548A07000000050000000700000002000000090F350D0200000009000000010000000013867100000000000CFD9C03000000070F350D0204548A05138670FA04548A07000000090000000700000002000000090000000112073D08045489F71386AD000CFD9C030F34D1020000000104548A05138670FA000000070000000200000009000000090000000013867100000000000CFD9C03000000070F350D020000000900000001000000040000000312073CFC0000000308A913091207010800000004045489F71386AD000CFD9C030F34D1020000000104548A05138670FA0000000A000000021386ACFA000000020CFD9C070F34D0FC00000007000000030F350CFC0000000304548A0900000008000000070F350D020000000A000000010000000013867100000000000CFD9C030F34D1020000000104548A05000000081386ACFA000000020CFD9C070F34D0FC0000000700000003000000070F350D0204548A05000000081386ACFA000000020CFD9C0700000009000000080000000112073D08045489F71386AD000CFD9C030F34D1020000000104548A05138670FA0CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C09000000080F350D080000000800000004000000021386ACFA000000020CFD9C070F34D0FC0CFD9C090F34D108000000040000000700000007000000030F350CFC000000030CFD9C09000000080F350D0800000008000000040F350D0204548A05138670FA0CFD9C07000000090000000A000000021386ACFA000000020CFD9C07000000090F350CFC000000030CFD9C090000000800000009000000010000000013867100000000000CFD9C030F34D1020000000104548A05138670FA0CFD9C070F34D0FC000000070000000300000007000000021386ACFA000000020CFD9C0700000009000000070F350D0204548A05138670FA0CFD9C070000000900000008000000021386ACFA000000020CFD9C07000000090000000800000001000000040000000212073CFA0000000208A91307120700FC08A91309120701080000000400000009000000090000000312073CFC0000000308A913091207010800000004045489F71386AD000CFD9C030F34D102000000010CFD9C050F34D0FA0CFD9C07000000090F350CFC000000030000000900000002000000090F350D0200000009000000010000000013867100000000000CFD9C030F34D102000000010CFD9C050F34D0FA0CFD9C07000000090000000700000002000000090F350D02000000090000000112073D08045489F71386AD000CFD9C030F34D102000000010CFD9C050F34D0FA0CFD9C070F34D0FC00000009000000030F350CFC000000030CFD9C090F34D10800000004000000090F350D080C9A86FC000000070000000800000004000000020F350CFA000000020CFD9C07000000090F350CFC000000030CFD9C0900000009000000050F350D020CFD9C050F34D0FA0CFD9C07000000090F350CFC000000030CFD9C0900000009000000090000000200000009000000010000000013867100000000000CFD9C030F34D102000000010CFD9C050F34D0FA0CFD9C07000000090F350CFC0000000300000008000000020F350CFA00000002000000090F350D0200000009000000010000000400000001"
theorem small_7409993_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7409993_right_root small_7409993_right_fuel small_7409993_right_count small_7409993_right_encoded = true := by
  decide +kernel
theorem small_7409993_right_covered : CoveredBy scale carrier boxes small_7409993_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7409993_right_root small_7409993_right_fuel small_7409993_right_count small_7409993_right_encoded small_7409993_right_checked

theorem cover_7409993 : CoveredBy scale carrier boxes root_7409993 := by
  apply coveredBy_split_literal root_7409993 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0509.root_7409994 small_7409993_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0509.cover_7409994
  · exact small_7409993_right_covered
#print axioms cover_7409993

def root_7409988 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7409988_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7409988_right_fuel : Nat := 1
def small_7409988_right_count : Nat := 1
def small_7409988_right_encoded : String := "00000004"
theorem small_7409988_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7409988_right_root small_7409988_right_fuel small_7409988_right_count small_7409988_right_encoded = true := by
  decide +kernel
theorem small_7409988_right_covered : CoveredBy scale carrier boxes small_7409988_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7409988_right_root small_7409988_right_fuel small_7409988_right_count small_7409988_right_encoded small_7409988_right_checked

theorem cover_7409988 : CoveredBy scale carrier boxes root_7409988 := by
  apply coveredBy_split_literal root_7409988 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7409993 small_7409988_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7409993
  · exact small_7409988_right_covered
#print axioms cover_7409988

def root_7404884 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7404884 : CoveredBy scale carrier boxes root_7404884 := by
  apply coveredBy_split_literal root_7404884 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0509.root_7404885 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7409988 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0509.cover_7404885
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7409988
#print axioms cover_7404884

def root_7404879 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7404879_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7404879_right_fuel : Nat := 1
def small_7404879_right_count : Nat := 1
def small_7404879_right_encoded : String := "00000003"
theorem small_7404879_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7404879_right_root small_7404879_right_fuel small_7404879_right_count small_7404879_right_encoded = true := by
  decide +kernel
theorem small_7404879_right_covered : CoveredBy scale carrier boxes small_7404879_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7404879_right_root small_7404879_right_fuel small_7404879_right_count small_7404879_right_encoded small_7404879_right_checked

theorem cover_7404879 : CoveredBy scale carrier boxes root_7404879 := by
  apply coveredBy_split_literal root_7404879 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7404884 small_7404879_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7404884
  · exact small_7404879_right_covered
#print axioms cover_7404879

def root_7417304 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7417304 : CoveredBy scale carrier boxes root_7417304 := by
  apply coveredBy_split_literal root_7417304 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2791.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2792.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2791.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2792.covered
#print axioms cover_7417304

def root_7417298 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7417298_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7417298_left_fuel : Nat := 1
def small_7417298_left_count : Nat := 1
def small_7417298_left_encoded : String := "00000003"
theorem small_7417298_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7417298_left_root small_7417298_left_fuel small_7417298_left_count small_7417298_left_encoded = true := by
  decide +kernel
theorem small_7417298_left_covered : CoveredBy scale carrier boxes small_7417298_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7417298_left_root small_7417298_left_fuel small_7417298_left_count small_7417298_left_encoded small_7417298_left_checked

theorem cover_7417298 : CoveredBy scale carrier boxes root_7417298 := by
  apply coveredBy_split_literal root_7417298 small_7417298_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7417304 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7417298_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7417304
#print axioms cover_7417298

def root_7404878 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7404878 : CoveredBy scale carrier boxes root_7404878 := by
  apply coveredBy_split_literal root_7404878 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7404879 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7417298 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7404879
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7417298
#print axioms cover_7404878

def root_7404873 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7404873_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7404873_right_fuel : Nat := 1
def small_7404873_right_count : Nat := 1
def small_7404873_right_encoded : String := "00000002"
theorem small_7404873_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7404873_right_root small_7404873_right_fuel small_7404873_right_count small_7404873_right_encoded = true := by
  decide +kernel
theorem small_7404873_right_covered : CoveredBy scale carrier boxes small_7404873_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7404873_right_root small_7404873_right_fuel small_7404873_right_count small_7404873_right_encoded small_7404873_right_checked

theorem cover_7404873 : CoveredBy scale carrier boxes root_7404873 := by
  apply coveredBy_split_literal root_7404873 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7404878 small_7404873_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7404878
  · exact small_7404873_right_covered
#print axioms cover_7404873

def root_7404872 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7404872 : CoveredBy scale carrier boxes root_7404872 := by
  apply coveredBy_split_literal root_7404872 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7404873 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2793.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7404873
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2793.covered
#print axioms cover_7404872

def root_7404867 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7404867_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7404867_right_fuel : Nat := 1
def small_7404867_right_count : Nat := 1
def small_7404867_right_encoded : String := "00000001"
theorem small_7404867_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7404867_right_root small_7404867_right_fuel small_7404867_right_count small_7404867_right_encoded = true := by
  decide +kernel
theorem small_7404867_right_covered : CoveredBy scale carrier boxes small_7404867_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7404867_right_root small_7404867_right_fuel small_7404867_right_count small_7404867_right_encoded small_7404867_right_checked

theorem cover_7404867 : CoveredBy scale carrier boxes root_7404867 := by
  apply coveredBy_split_literal root_7404867 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7404872 small_7404867_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7404872
  · exact small_7404867_right_covered
#print axioms cover_7404867

def root_7403213 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7403213 : CoveredBy scale carrier boxes root_7403213 := by
  apply coveredBy_split_literal root_7403213 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2786.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7404867 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2786.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7404867
#print axioms cover_7403213

def root_7403207 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7403207_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7403207_left_fuel : Nat := 1
def small_7403207_left_count : Nat := 1
def small_7403207_left_encoded : String := "00000000"
theorem small_7403207_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7403207_left_root small_7403207_left_fuel small_7403207_left_count small_7403207_left_encoded = true := by
  decide +kernel
theorem small_7403207_left_covered : CoveredBy scale carrier boxes small_7403207_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7403207_left_root small_7403207_left_fuel small_7403207_left_count small_7403207_left_encoded small_7403207_left_checked

theorem cover_7403207 : CoveredBy scale carrier boxes root_7403207 := by
  apply coveredBy_split_literal root_7403207 small_7403207_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7403213 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7403207_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7403213
#print axioms cover_7403207

def root_7366267 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7366267 : CoveredBy scale carrier boxes root_7366267 := by
  apply coveredBy_split_literal root_7366267 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0509.root_7366268 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7403207 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0509.cover_7366268
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7403207
#print axioms cover_7366267

def root_7321329 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7321329 : CoveredBy scale carrier boxes root_7321329 := by
  apply coveredBy_split_literal root_7321329 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7321330 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7366267 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7321330
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7366267
#print axioms cover_7321329

def root_7311061 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7311061 : CoveredBy scale carrier boxes root_7311061 := by
  apply coveredBy_split_literal root_7311061 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7311062 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7321329 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7311062
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7321329
#print axioms cover_7311061

def root_7302291 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7302291 : CoveredBy scale carrier boxes root_7302291 := by
  apply coveredBy_split_literal root_7302291 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7302292 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7311061 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7302292
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7311061
#print axioms cover_7302291

def root_7423326 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7423326_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7423326_right_fuel : Nat := 23
def small_7423326_right_count : Nat := 391
def small_7423326_right_encoded : String := "1151E905000000020A0001061151E8FD0A0000FE115224FF0000000408A91303120701020000000108A912FF00000006120700FE000000060000000412073D0200000006000000011151E8FF000000060000000400000003115224FD000000030A0000FE115224FF0000000408A91303120701020000000108A912FD12073D0608A912FF12073CFE0000000405000100135D44F7050000FA135D810504548A0313867102000000010CFD9BFD0F350D060CFD9BFF000000060F34D0FE0000000600000004000000030F34D106000000030CFD9BFF00000008000000091386AD020CFD9BFD0F350D0600000006000000030F34D106000000030CFD9BFF000000080F34D0FE00000005000000040000000100000002135D45050000000204548A0313867102000000010CFD9BFD0F350D060CFD9BFF000000060F34D0FE0000000600000004000000030F34D10600000003000000081386AD020CFD9BFD000000060F34D10600000003000000080000000100000000135D80F700000000050000FA135D810504548A0313867102000000010CFD9BFD0F350D060000000600000003000000071386AD020CFD9BFD00000006000000060000000100000002135D45050000000204548A0313867102000000010CFD9BFD0F350D0600000006000000030F34D106000000030000000700000006120700FE05000100135D44F7050000FA135D810504548A03000000090000000500000002135D45050000000204548A03000000091386AD020CFD9BFD00000006000000050000000100000000135D80F700000000050000FA135D810504548A03000000090000000600000002135D45050000000204548A0300000008000000060000000400000003120701060000000308A912FF12073CFE00000004050001000000000800000008120700FE000000080000000412073D0208A912FD12073D0608A912FF12073CFE0000000405000100135D44F7050000FA135D81050CFD9C030F34D102000000010CFD9BFD00000006000000060000000600000002135D4505000000020CFD9C030F34D1020000000100000006000000060000000000000006120700FE0500010000000005000000060000000400000003120701060000000308A912FF12073CFE0000000405000100135D44F7050000FA135D81050000000800000002000000080000000000000008120700FE0000000800000004000000011151E8FF08A91303120701020000000108A912FD12073D0605000100135D44F7050000FA135D8105050000FE135D80FF0000000404548A03000000071386AD020CFD9BFD0000000600000007000000010000000700000002135D450500000002050000FE135D80FF0000000404548A0313867102000000010CFD9BFD00000007000000071386AD020CFD9BFD000000060000000600000001135D44FF04548A03000000071386AD020CFD9BFD0000000600000007000000010000000400000000135D80F700000000050000FA00000007135D450500000002050000FE135D80FF0000000404548A0300000007000000060000000700000003120701060000000305000100135D44F7050000FA135D8105050000FE135D80FF0000000404548A0300000007000000080000000700000002135D450500000002050000FE00000008135D44FF04548A03000000071386AD02045489FD1386AD06000000080000000300000008000000010000000400000000135D80F700000000050000FA00000007135D450500000002050000FE000000080000000512073D0208A912FD12073D0605000100135D44F7050000FA00000006135D450500000002050000FE00000006135D44FF0000000600000004000000000000000600000003120701060000000305000100135D44F7050000FA135D8105050000FE00000008135D44FF0CFD9C030F34D10200000001045489FD1386AD060280010013D7B0F7078000FA0000000700000008000000000000000600000003000000080F350D0200000008000000010000000400000002135D450500000002050000FE00000008135D44FF0CFD9C0300000008000000080000000400000000135D80F700000000050000FA135D8105050000FE00000008135D44FF0CFD9C0300000008000000060000000400000002000000080000000100000004"
theorem small_7423326_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7423326_right_root small_7423326_right_fuel small_7423326_right_count small_7423326_right_encoded = true := by
  decide +kernel
theorem small_7423326_right_covered : CoveredBy scale carrier boxes small_7423326_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7423326_right_root small_7423326_right_fuel small_7423326_right_count small_7423326_right_encoded small_7423326_right_checked

theorem cover_7423326 : CoveredBy scale carrier boxes root_7423326 := by
  apply coveredBy_split_literal root_7423326 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2794.root small_7423326_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2794.covered
  · exact small_7423326_right_covered
#print axioms cover_7423326

def root_7423321 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7423321_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7423321_right_fuel : Nat := 1
def small_7423321_right_count : Nat := 1
def small_7423321_right_encoded : String := "00000001"
theorem small_7423321_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7423321_right_root small_7423321_right_fuel small_7423321_right_count small_7423321_right_encoded = true := by
  decide +kernel
theorem small_7423321_right_covered : CoveredBy scale carrier boxes small_7423321_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7423321_right_root small_7423321_right_fuel small_7423321_right_count small_7423321_right_encoded small_7423321_right_checked

theorem cover_7423321 : CoveredBy scale carrier boxes root_7423321 := by
  apply coveredBy_split_literal root_7423321 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7423326 small_7423321_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7423326
  · exact small_7423321_right_covered
#print axioms cover_7423321

def root_7423119 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7423119_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7423119_left_fuel : Nat := 18
def small_7423119_left_count : Nat := 93
def small_7423119_left_encoded : String := "1151E903000000010A0000FA115225050A0001061151E8FD0A0000FE000000061151E8FF000000060000000400000003115224FD000000030A0000FE115224FF0000000408A91305120700FA08A912FD12073D060000000500000003000000050000000212073CFA0000000208A912FD12073D060000000500000003000000051151E8FF08A91305120700FA08A912FD0000000612070106000000030500010000000005000000060000000212073CFA0000000208A912FD00000006120701060000000305000100135D44F70500010200000005135D8103050000FE00000005135D44FF000000060000000400000001000000000000000600000004000000021151E905000000020A0001061151E8FD0000000600000003115224FD000000030A0000FE115224FF0000000408A912FD12073D0608A912FF00000006120700FE000000050000000400000003120701060000000308A912FF00000008120700FE00000005000000041151E8FF0000000600000004"
theorem small_7423119_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7423119_left_root small_7423119_left_fuel small_7423119_left_count small_7423119_left_encoded = true := by
  decide +kernel
theorem small_7423119_left_covered : CoveredBy scale carrier boxes small_7423119_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7423119_left_root small_7423119_left_fuel small_7423119_left_count small_7423119_left_encoded small_7423119_left_checked

theorem cover_7423119 : CoveredBy scale carrier boxes root_7423119 := by
  apply coveredBy_split_literal root_7423119 small_7423119_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7423321 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7423119_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7423321
#print axioms cover_7423119

def root_7423114 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7423114_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7423114_right_fuel : Nat := 1
def small_7423114_right_count : Nat := 1
def small_7423114_right_encoded : String := "00000000"
theorem small_7423114_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7423114_right_root small_7423114_right_fuel small_7423114_right_count small_7423114_right_encoded = true := by
  decide +kernel
theorem small_7423114_right_covered : CoveredBy scale carrier boxes small_7423114_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7423114_right_root small_7423114_right_fuel small_7423114_right_count small_7423114_right_encoded small_7423114_right_checked

theorem cover_7423114 : CoveredBy scale carrier boxes root_7423114 := by
  apply coveredBy_split_literal root_7423114 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7423119 small_7423114_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7423119
  · exact small_7423114_right_covered
#print axioms cover_7423114

def root_7423113 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7423113 : CoveredBy scale carrier boxes root_7423113 := by
  apply coveredBy_split_literal root_7423113 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7423114 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2795.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7423114
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2795.covered
#print axioms cover_7423113

def root_7430121 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7430121 : CoveredBy scale carrier boxes root_7430121 := by
  apply coveredBy_split_literal root_7430121 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2796.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2797.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2796.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2797.covered
#print axioms cover_7430121

def root_7430116 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7430116_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7430116_right_fuel : Nat := 1
def small_7430116_right_count : Nat := 1
def small_7430116_right_encoded : String := "00000001"
theorem small_7430116_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7430116_right_root small_7430116_right_fuel small_7430116_right_count small_7430116_right_encoded = true := by
  decide +kernel
theorem small_7430116_right_covered : CoveredBy scale carrier boxes small_7430116_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7430116_right_root small_7430116_right_fuel small_7430116_right_count small_7430116_right_encoded small_7430116_right_checked

theorem cover_7430116 : CoveredBy scale carrier boxes root_7430116 := by
  apply coveredBy_split_literal root_7430116 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7430121 small_7430116_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7430121
  · exact small_7430116_right_covered
#print axioms cover_7430116

def root_7429716 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7429716_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7429716_left_fuel : Nat := 20
def small_7429716_left_count : Nat := 187
def small_7429716_left_encoded : String := "1151E903000000010A0000FA115225050A0001061151E8FD0A0000FE115225090000000A000000041151E9090000000408A912F712073D0008A91305120700FA00000005000000020000000A000000000000000A00000003115224FD000000030A0000FE1152250908A912F712073D0008A91305120700FA08A912FD12073D060000000500000003120701060000000308A91309120700FE000000050000000412073CFE0000000405000102135D4503000000010CFD9BF7000000050000000A135D81030CFD9BF70000000A0000000A000000010000000212073CFA0000000208A912FD12073D060000000A00000003120701060000000308A91309120700FE050001020000000A135D81030CFD9BF70000000A0F34D100000000000000000600000001000000040000000A00000000120701000000000008A91305120700FA08A912FD0000000A120701060000000308A91309120700FE0000000A000000040000000A0000000212073CFA0000000208A912FD12073D060000000600000003120701060000000308A91309120700FE00000006000000040000000A000000041151E9090000000408A912F712073D0008A91305120700FA08A912FD12073D0605000102135D450300000001000000080000000800000003120701060000000305000102135D45030000000100000008135D8103050000FE0000000800000008000000010000000212073CFA0000000208A912FD0000000A120701060000000305000102000000070000000A00000000120701000000000008A913050000000A0000000A000000021151E905000000020A0001061151E8FD0A0000FE000000060000000A00000003115224FD000000030A0000FE1152250908A912F712073D0008A912FD12073D060000000A00000003120701060000000308A91309120700FE050001020000000600000006000000040000000A00000000120701000000000008A912FD00000006120701060000000308A913090000000600000007000000041151E909000000040000000A"
theorem small_7429716_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7429716_left_root small_7429716_left_fuel small_7429716_left_count small_7429716_left_encoded = true := by
  decide +kernel
theorem small_7429716_left_covered : CoveredBy scale carrier boxes small_7429716_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7429716_left_root small_7429716_left_fuel small_7429716_left_count small_7429716_left_encoded small_7429716_left_checked

theorem cover_7429716 : CoveredBy scale carrier boxes root_7429716 := by
  apply coveredBy_split_literal root_7429716 small_7429716_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7430116 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7429716_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7430116
#print axioms cover_7429716

def root_7429710 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7429710_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7429710_left_fuel : Nat := 1
def small_7429710_left_count : Nat := 1
def small_7429710_left_encoded : String := "00000000"
theorem small_7429710_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7429710_left_root small_7429710_left_fuel small_7429710_left_count small_7429710_left_encoded = true := by
  decide +kernel
theorem small_7429710_left_covered : CoveredBy scale carrier boxes small_7429710_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7429710_left_root small_7429710_left_fuel small_7429710_left_count small_7429710_left_encoded small_7429710_left_checked

theorem cover_7429710 : CoveredBy scale carrier boxes root_7429710 := by
  apply coveredBy_split_literal root_7429710 small_7429710_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7429716 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7429710_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7429716
#print axioms cover_7429710

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510
