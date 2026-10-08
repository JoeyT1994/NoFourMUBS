import TaoBundleAssembly0175
import TaoBundleAssembly0177
import TaoBundleAssembly0178
import TaoBundleChunkBatch0697
import TaoBundleChunkBatch0698
import TaoBundleChunkBatch0699
import TaoBundleChunkBatch0700
import TaoBundleChunkBatch0701
import TaoBundleChunkBatch0702
import TaoBundleChunkBatch0703
import TaoBundleChunkBatch0704
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179
def root_7410006 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7410006_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7410006_left_fuel : Nat := 22
def small_7410006_left_count : Nat := 293
def small_7410006_left_encoded : String := "120700FA08A91307120700FC08A9130912070108000000040CFD9BF7000000050F34D1000000000004548A03000000051386AD02000000050000000112073D080CFD9BF70F350D0000000005000000000F34D1000000000004548A03000000071386AD0204548A05138670FA00000005000000021386ACFA0000000204548A07000000070000000700000001000000040000000312073CFC0000000308A9130912070108000000040CFD9BF70F350D0004548A03138671020000000104548A050000000A1386ACFA000000020CFD9C070F34D0FC00000005000000030000000A0000000A000000000F34D1000000000004548A03138671020000000104548A05138670FA0CFD9C070000000600000006000000021386ACFA000000020CFD9C070F34D0FC0000000700000003000000071386AD0204548A05138670FA0000000A000000021386ACFA000000020CFD9C070F34D0FC00000007000000030F350CFC0000000304548A0913867108000000040000000A1386AD080C9A86FC0000000700000006000000040000000112073D080CFD9BF70F350D0004548A03138671020000000104548A05138670FA0CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9C090F34D10800000004000000060F350D080C9A8700000000050F878CF7000000000000000600000004000000021386ACFA000000020CFD9C070F34D0FC0CFD9C090000000500000007000000030F350CFC000000030CFD9C090F34D108000000040C9A8700000000060F878CF700000000000000060F350D080C9A87000F8750F70C9A86FC0F878D0700000005000000030F875107000000030C9A87080F875109000000040000000600000006000000000F878CF7000000000C9A86FC000000070F8751070000000300000007000000041386AD0204548A05138670FA0CFD9C070F34D0FC00000005000000030000000A000000021386ACFA000000020CFD9C070F34D0FC0CFD9C090F34D108000000040000000A0F350D080C9A8700000000050F878CF7000000000C9A8708000000050000000700000004000000030F350CFC000000030CFD9C090F34D108000000040000000A0F350D080C9A87000F8750F70C9A86FC0000000A0F875107000000030000000A000000000F878CF7000000000C9A86FC0F878D070C9A87080F875109000000040000000700000007000000030F875107000000030C9A87080F87510900000004000000080000000A0000000400000001000000000F34D1000000000004548A03138671020000000104548A05138670FA0CFD9C070F34D0FC000000070000000300000007000000021386ACFA000000020CFD9C070F34D0FC0000000700000003000000071386AD0204548A05138670FA0CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090F34D10800000004000000060F350D080C9A86FC000000070000000600000004000000021386ACFA000000020CFD9C070F34D0FC0CFD9C090F34D108000000040000000700000007000000030F350CFC000000030CFD9C090F34D10800000004000000070F350D080C9A86FC000000070F875107000000030000000700000004000000010000000400000002"
theorem small_7410006_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7410006_left_root small_7410006_left_fuel small_7410006_left_count small_7410006_left_encoded = true := by
  decide +kernel
theorem small_7410006_left_covered : CoveredBy scale carrier boxes small_7410006_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7410006_left_root small_7410006_left_fuel small_7410006_left_count small_7410006_left_encoded small_7410006_left_checked

theorem cover_7410006 : CoveredBy scale carrier boxes root_7410006 := by
  apply coveredBy_split_literal root_7410006 small_7410006_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7410648 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7410006_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7410648
#print axioms cover_7410006

def root_7410000 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7410000_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7410000_left_fuel : Nat := 1
def small_7410000_left_count : Nat := 1
def small_7410000_left_encoded : String := "00000001"
theorem small_7410000_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7410000_left_root small_7410000_left_fuel small_7410000_left_count small_7410000_left_encoded = true := by
  decide +kernel
theorem small_7410000_left_covered : CoveredBy scale carrier boxes small_7410000_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7410000_left_root small_7410000_left_fuel small_7410000_left_count small_7410000_left_encoded small_7410000_left_checked

theorem cover_7410000 : CoveredBy scale carrier boxes root_7410000 := by
  apply coveredBy_split_literal root_7410000 small_7410000_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7410006 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7410000_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7410006
#print axioms cover_7410000

def root_7409999 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7409999 : CoveredBy scale carrier boxes root_7409999 := by
  apply coveredBy_split_literal root_7409999 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7410000 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2790.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7410000
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2790.covered
#print axioms cover_7409999

def root_7409994 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7409994_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7409994_right_fuel : Nat := 1
def small_7409994_right_count : Nat := 1
def small_7409994_right_encoded : String := "00000000"
theorem small_7409994_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7409994_right_root small_7409994_right_fuel small_7409994_right_count small_7409994_right_encoded = true := by
  decide +kernel
theorem small_7409994_right_covered : CoveredBy scale carrier boxes small_7409994_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7409994_right_root small_7409994_right_fuel small_7409994_right_count small_7409994_right_encoded small_7409994_right_checked

theorem cover_7409994 : CoveredBy scale carrier boxes root_7409994 := by
  apply coveredBy_split_literal root_7409994 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7409999 small_7409994_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7409999
  · exact small_7409994_right_covered
#print axioms cover_7409994

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
  apply coveredBy_split_literal root_7409993 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7409994 small_7409993_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7409994
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
  apply coveredBy_split_literal root_7409988 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7409993 small_7409988_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7409993
  · exact small_7409988_right_covered
#print axioms cover_7409988

def root_7404884 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7404884 : CoveredBy scale carrier boxes root_7404884 := by
  apply coveredBy_split_literal root_7404884 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7404885 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7409988 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7404885
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7409988
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
  apply coveredBy_split_literal root_7404879 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7404884 small_7404879_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7404884
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
  apply coveredBy_split_literal root_7417298 small_7417298_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7417304 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7417298_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7417304
#print axioms cover_7417298

def root_7404878 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7404878 : CoveredBy scale carrier boxes root_7404878 := by
  apply coveredBy_split_literal root_7404878 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7404879 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7417298 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7404879
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7417298
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
  apply coveredBy_split_literal root_7404873 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7404878 small_7404873_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7404878
  · exact small_7404873_right_covered
#print axioms cover_7404873

def root_7404872 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7404872 : CoveredBy scale carrier boxes root_7404872 := by
  apply coveredBy_split_literal root_7404872 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7404873 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2793.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7404873
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
  apply coveredBy_split_literal root_7404867 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7404872 small_7404867_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7404872
  · exact small_7404867_right_covered
#print axioms cover_7404867

def root_7403213 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7403213 : CoveredBy scale carrier boxes root_7403213 := by
  apply coveredBy_split_literal root_7403213 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2786.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7404867 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2786.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7404867
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
  apply coveredBy_split_literal root_7403207 small_7403207_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7403213 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7403207_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7403213
#print axioms cover_7403207

def root_7366267 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7366267 : CoveredBy scale carrier boxes root_7366267 := by
  apply coveredBy_split_literal root_7366267 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7366268 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7403207 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7366268
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7403207
#print axioms cover_7366267

def root_7321329 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7321329 : CoveredBy scale carrier boxes root_7321329 := by
  apply coveredBy_split_literal root_7321329 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0177.root_7321330 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7366267 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0177.cover_7321330
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7366267
#print axioms cover_7321329

def root_7311061 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7311061 : CoveredBy scale carrier boxes root_7311061 := by
  apply coveredBy_split_literal root_7311061 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0175.root_7311062 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7321329 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0175.cover_7311062
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7321329
#print axioms cover_7311061

def root_7302291 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7302291 : CoveredBy scale carrier boxes root_7302291 := by
  apply coveredBy_split_literal root_7302291 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0175.root_7302292 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7311061 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0175.cover_7302292
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7311061
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
  apply coveredBy_split_literal root_7423321 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7423326 small_7423321_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7423326
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
  apply coveredBy_split_literal root_7423119 small_7423119_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7423321 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7423119_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7423321
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
  apply coveredBy_split_literal root_7423114 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7423119 small_7423114_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7423119
  · exact small_7423114_right_covered
#print axioms cover_7423114

def root_7423113 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7423113 : CoveredBy scale carrier boxes root_7423113 := by
  apply coveredBy_split_literal root_7423113 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7423114 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2795.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7423114
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
  apply coveredBy_split_literal root_7430116 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7430121 small_7430116_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7430121
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
  apply coveredBy_split_literal root_7429716 small_7429716_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7430116 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7429716_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7430116
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
  apply coveredBy_split_literal root_7429710 small_7429710_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7429716 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7429710_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7429716
#print axioms cover_7429710

def root_7428988 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7428988_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7428988_left_fuel : Nat := 22
def small_7428988_left_count : Nat := 333
def small_7428988_left_encoded : String := "1151E8F70A0001021151E903000000010A0000FA115225050A0001061151E8FD0000000500000003115224FD000000030A0000FE1152250908A91305120700FA000000050000000212073CFA0000000208A912FD12073D060000000500000003120701060000000308A91309120700FE000000050000000400000009000000041151E9090000000408A91305120700FA08A912FD000000051207010600000003000000090000000212073CFA0000000208A912FD12073D0605000100135D44F700000009000000000000000A00000003120701060000000300000009000000021151E905000000020A0001061151E8FD0000000A00000003115224FD000000030A0000FE1152250908A912FD0000000A120701060000000308A91309120700FE000000090000000400000009000000041151E909000000040000000A115225030A0000FA115225050A0001061151E8FD0A0000FE1152250908A91303120701020000000108A913050000000A12073CFA0000000208A91309120700FE00000005000000040000000512073D0208A91305120700FA00000005000000020000000500000001000000041151E9090000000408A913030000000A12073D0208A91305120700FA00000005000000020000000A0000000100000003115224FD000000030A0000FE1152250908A91303120701020000000108A91305120700FA08A912FD12073D0608A91309120700FE050001000000000500000009000000040000000A000000031207010600000003000000090000000212073CFA0000000208A912FD12073D0608A91309120700FE0500010000000005135D80F700000000000000050000000412073CFE0000000405000100000000050000000A0000000312070106000000030000000912073D0208A91305120700FA08A912FD12073D060000000500000003000000050000000212073CFA0000000208A912FD12073D0608A91309120700FE000000050000000412073CFE0000000405000100000000050000000A00000003120701060000000308A91309120700FE00000005000000040000000900000001000000041151E9090000000408A91303120701020000000108A91305120700FA08A912FD0000000A120701060000000300000006000000020000000912073D0208A91305120700FA08A912FD12073D060500010000000005000000080000000312070106000000030500010000000009135D80F700000000050000FE00000009000000080000000212073CFA0000000208A912FD12073D0605000100135D44F70000000A000000000000000A0000000312070106000000030000000900000001000000021151E905000000020A0001061151E8FD0A0000FE1152250908A91303120701020000000108A91309120700FE00000005000000040000000A0000000A000000040000000A00000003115224FD000000030A0000FE1152250908A91303120701020000000108A912FD12073D0608A91309120700FE0500010000000009135D80F700000000050000FA00000009135D45050000000204548A03000000091386AD02000000090000000100000004000000090000000312070106000000030000000912073D0208A912FD12073D0608A91309120700FE0500010000000005135D80F700000000050000FA00000005135D4505000000020CFD9C030000000A000000060000000412073CFE000000040000000A00000003120701060000000308A91309120700FE0500010000000009135D80F700000000050000FA00000009135D45050000000200000009000000040000000900000001000000041151E909000000040000000A0000000100000000"
theorem small_7428988_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7428988_left_root small_7428988_left_fuel small_7428988_left_count small_7428988_left_encoded = true := by
  decide +kernel
theorem small_7428988_left_covered : CoveredBy scale carrier boxes small_7428988_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7428988_left_root small_7428988_left_fuel small_7428988_left_count small_7428988_left_encoded small_7428988_left_checked

theorem cover_7428988 : CoveredBy scale carrier boxes root_7428988 := by
  apply coveredBy_split_literal root_7428988 small_7428988_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7429710 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7428988_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7429710
#print axioms cover_7428988

def root_7423112 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7423112 : CoveredBy scale carrier boxes root_7423112 := by
  apply coveredBy_split_literal root_7423112 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7423113 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7428988 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7423113
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7428988
#print axioms cover_7423112

def root_7433872 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7433872_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7433872_right_fuel : Nat := 25
def small_7433872_right_count : Nat := 439
def small_7433872_right_encoded : String := "115224F7000000000A0001021151E903000000010A0000FA115225050A0001061151E8FD0A00010800000006115224FF0000000408A912F712073D0008A9130500000009000000060000000012070100000000000000000600000003115224FD000000030A0001081151E8FF08A912F712073D0008A91305120700FA0000000600000002000000060000000012070100000000000000000600000004115224FF0000000408A912F712073D0008A91305120700FA000000070000000212073CFA0000000208A912FD12073D0608A912FF12073D0800000006000000040000000700000003120701060000000308A912FF12073D0805000102135D4503000000010CFD9BF70F350D000CFD9C050F34D0FA000000070000000200000006000000000F34D1000000000000000006135D81030CFD9BF70F350D000CFD9C05000000070F350CFA00000002045489FD0000000700000007000000000000000700000001000000040000000700000000120701000000000008A913050000000712073CFA0000000208A912FD00000007120701060000000308A912FF0000000700000007000000021151E905000000020A0001061151E8FD0000000600000003115224FD000000030A0001081151E8FF0000000600000004115224FF0000000408A912F712073D0008A912FD12073D0608A912FF0000000612070108000000040000000700000003120701060000000308A912FF12073D0805000102135D450300000001050000FA0000000600000005000000050000000412070108000000040000000500000000120701000000000008A912FD00000006120701060000000300000005115225030A0000FA115225050A0001061151E8FD0A0001081151E8FF08A912F712073D0008A91303120701020000000108A91305120700FA000000060000000200000006000000060000000012070100000000000000000600000004115224FF0000000408A912F712073D0008A91303120701020000000108A91305120700FA08A912FF12073D0805000106135D44FD0CFD9BF70F350D0000000007000000000000000900000003135D80FD000000030CFD9BF7000000070F34D10000000000000000050000000412070108000000040500010600000009000000050000000212073CFA0000000208A912FF12073D0805000106135D44FD0CFD9BF70000000700000009000000030000000700000004120701080000000405000106000000090000000512073D0208A91305120700FA08A912FF000000091207010800000004000000090000000212073CFA0000000208A912FF000000071207010800000004000000090000000100000000120701000000000008A91303120701020000000108A91305120700FA08A912FF00000009000000090000000212073CFA0000000208A912FF000000090000000912073D02000000090000000100000003115224FD000000030A0001081151E8FF08A912F712073D0008A9130312070102000000010000000712073D0208A91305120700FA000000070000000212073CFA0000000208A912FD12073D060000000600000003120701060000000305000108135D44FF0CFD9BF70F350D0000000007000000000000000700000004000000070000000100000000120701000000000008A91303120701020000000108A91305000000070000000712073D02000000070000000100000004115224FF0000000408A912F712073D0008A91303120701020000000108A91305120700FA08A912FD12073D0608A912FF00000007120701080000000400000005000000031207010600000003000000050000000212073CFA000000020000000512073D0208A91305120700FA08A912FD12073D0608A912FF0000000712070108000000040000000700000003000000070000000212073CFA0000000208A912FD000000071207010600000003000000050000000100000000120701000000000008A9130312070102000000010000000512073D0208A91305120700FA08A912FD12073D0608A912FF00000007120701080000000400000005000000031207010600000003000000050000000212073CFA000000020000000500000001000000021151E905000000020A0001061151E8FD0A0001081151E8FF0000000600000004115224FF0000000408A912F712073D000000000700000000120701000000000008A913031207010200000001000000050000000600000003115224FD000000030A0001081151E8FF08A912F712073D0008A91303120701020000000108A912FD000000070000000712073D0208A912FD000000061207010600000003050000FA135D810505000108135D44FF00000006000000040000000500000002000000050000000100000000120701000000000008A913030000000700000006000000040000000500000001"
theorem small_7433872_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7433872_right_root small_7433872_right_fuel small_7433872_right_count small_7433872_right_encoded = true := by
  decide +kernel
theorem small_7433872_right_covered : CoveredBy scale carrier boxes small_7433872_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7433872_right_root small_7433872_right_fuel small_7433872_right_count small_7433872_right_encoded small_7433872_right_checked

theorem cover_7433872 : CoveredBy scale carrier boxes root_7433872 := by
  apply coveredBy_split_literal root_7433872 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2798.root small_7433872_right_root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2798.covered
  · exact small_7433872_right_covered
#print axioms cover_7433872

def root_7433871 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7433871 : CoveredBy scale carrier boxes root_7433871 := by
  apply coveredBy_split_literal root_7433871 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7433872 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2799.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7433872
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2799.covered
#print axioms cover_7433871

def root_7423111 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7423111 : CoveredBy scale carrier boxes root_7423111 := by
  apply coveredBy_split_literal root_7423111 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7423112 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7433871 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7423112
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7433871
#print axioms cover_7423111

def root_7441829 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7441829_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7441829_left_fuel : Nat := 22
def small_7441829_left_count : Nat := 365
def small_7441829_left_encoded : String := "1151E8F70A0001021151E903000000010A0000FA115225050A0001061151E907000000030A0000FE1152250908A91305120700FA0000000700000002000000070000000400000007115225070A0000FE1152250908A91305120700FA08A91307120701060000000308A913090000000512073CFE0000000405000100000000050000000912073D0608A913090000000512073CFE0000000405000100135D44F70500010200000005000000090000000000000007000000030000000212073CFA0000000208A91307120701060000000308A91309120700FE050001000000000500000009000000040000000912073D0608A91309120700FE05000100135D44F705000102000000050000000900000000135D80F700000000000000070000000412073CFE000000040000000700000003000000041151E9090000000408A91305120700FA08A9130712070106000000030000000900000007000000020000000700000003000000021151E905000000020A0001061151E907000000030A0000FE1152250908A913090000000800000007000000041151E9090000000400000005115225070A0000FE1152250908A91307120701060000000308A91309120700FE00000009000000040000000912073D0608A91309120700FE0500010000000008135D80F70000000005000102135D450300000001050000FA0000000900000008000000080000000412073CFE0000000405000100135D44F70000000900000000135D80F70000000005000102135D450300000001050000FA00000007135D450500000002000000070000000700000003000000041151E909000000040000000700000003115225030A0000FA115225050A0001061151E907000000030A0000FE1152250908A91303120701020000000108A91305120700FA00000009000000020000000812073D0208A91305120700FA08A913090000000512073CFE0000000400000007000000020000000700000001000000041151E9090000000408A91303120701020000000108A91305120700FA000000090000000212073CFA0000000205000100000000090000000912073D0208A91305120700FA05000100135D44F70000000700000000135D80F70000000005000106135D45070000000300000007000000070000000212073CFA000000020000000700000001115225070A0000FE1152250908A91303120701020000000108A91305120700FA08A91307120701060000000300000009000000090000000212073CFA0000000208A913071207010600000003000000090000000912073D0208A91305120700FA08A91307120701060000000308A91309000000050000000912073D0608A91309120700FE000000050000000412073CFE00000004050001000000000900000009000000030000000212073CFA0000000208A91307120701060000000308A91309120700FE00000009000000040000000912073D0608A91309120700FE0500010000000009000000070000000412073CFE0000000405000100135D44F70CFD9C03000000070F350D02000000070000000100000000000000070000000300000001000000041151E9090000000408A91303120701020000000108A91305120700FA00000009000000020000000912073D0208A91305120700FA08A9130712070106000000030000000912073D0600000007000000030000000212073CFA0000000208A91307120701060000000300000009000000070000000100000003000000021151E905000000020A0001061151E907000000030A0000FE000000071151E9090000000400000007115225070A0000FE1152250908A91303120701020000000108A913071207010600000003000000090000000712073D0208A91307120701060000000308A91309120700FE00000009000000040000000912073D0608A91309120700FE000000080000000412073CFE00000004000000070000000300000001000000041151E9090000000400000007000000030000000100000000"
theorem small_7441829_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7441829_left_root small_7441829_left_fuel small_7441829_left_count small_7441829_left_encoded = true := by
  decide +kernel
theorem small_7441829_left_covered : CoveredBy scale carrier boxes small_7441829_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7441829_left_root small_7441829_left_fuel small_7441829_left_count small_7441829_left_encoded small_7441829_left_checked

theorem cover_7441829 : CoveredBy scale carrier boxes root_7441829 := by
  apply coveredBy_split_literal root_7441829 small_7441829_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2801.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7441829_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2801.covered
#print axioms cover_7441829

def root_7439689 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7439689 : CoveredBy scale carrier boxes root_7439689 := by
  apply coveredBy_split_literal root_7439689 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2800.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7441829 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2800.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7441829
#print axioms cover_7439689

def root_7445647 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7445647 : CoveredBy scale carrier boxes root_7445647 := by
  apply coveredBy_split_literal root_7445647 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2802.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2803.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2802.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2803.covered
#print axioms cover_7445647

def root_7451720 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7451720 : CoveredBy scale carrier boxes root_7451720 := by
  apply coveredBy_split_literal root_7451720 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2804.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2805.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2804.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2805.covered
#print axioms cover_7451720

def root_7445646 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7445646 : CoveredBy scale carrier boxes root_7445646 := by
  apply coveredBy_split_literal root_7445646 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7445647 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7451720 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7445647
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7451720
#print axioms cover_7445646

def root_7439688 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7439688 : CoveredBy scale carrier boxes root_7439688 := by
  apply coveredBy_split_literal root_7439688 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7439689 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7445646 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7439689
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7445646
#print axioms cover_7439688

def root_7423110 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7423110 : CoveredBy scale carrier boxes root_7423110 := by
  apply coveredBy_split_literal root_7423110 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7423111 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7439688 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7423111
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7439688
#print axioms cover_7423110

def root_7302290 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7302290 : CoveredBy scale carrier boxes root_7302290 := by
  apply coveredBy_split_literal root_7302290 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7302291 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7423110 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7302291
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7423110
#print axioms cover_7302290

def root_7075994 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7075994 : CoveredBy scale carrier boxes root_7075994 := by
  apply coveredBy_split_literal root_7075994 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0175.root_7075995 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7302290 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0175.cover_7075995
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7302290
#print axioms cover_7075994

def root_7456056 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7456056 : CoveredBy scale carrier boxes root_7456056 := by
  apply coveredBy_split_literal root_7456056 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2806.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2807.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2806.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2807.covered
#print axioms cover_7456056

def root_7456055 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7456055 : CoveredBy scale carrier boxes root_7456055 := by
  apply coveredBy_split_literal root_7456055 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7456056 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2808.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7456056
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2808.covered
#print axioms cover_7456055

def root_7462119 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7462119 : CoveredBy scale carrier boxes root_7462119 := by
  apply coveredBy_split_literal root_7462119 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2809.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2810.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2809.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2810.covered
#print axioms cover_7462119

def root_7468830 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7468830 : CoveredBy scale carrier boxes root_7468830 := by
  apply coveredBy_split_literal root_7468830 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2812.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2813.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2812.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2813.covered
#print axioms cover_7468830

def root_7468824 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7468824_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7468824_left_fuel : Nat := 1
def small_7468824_left_count : Nat := 1
def small_7468824_left_encoded : String := "00000000"
theorem small_7468824_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7468824_left_root small_7468824_left_fuel small_7468824_left_count small_7468824_left_encoded = true := by
  decide +kernel
theorem small_7468824_left_covered : CoveredBy scale carrier boxes small_7468824_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7468824_left_root small_7468824_left_fuel small_7468824_left_count small_7468824_left_encoded small_7468824_left_checked

theorem cover_7468824 : CoveredBy scale carrier boxes root_7468824 := by
  apply coveredBy_split_literal root_7468824 small_7468824_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7468830 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7468824_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7468830
#print axioms cover_7468824

def root_7466382 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7466382 : CoveredBy scale carrier boxes root_7466382 := by
  apply coveredBy_split_literal root_7466382 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2811.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7468824 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2811.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7468824
#print axioms cover_7466382

def root_7462118 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7462118 : CoveredBy scale carrier boxes root_7462118 := by
  apply coveredBy_split_literal root_7462118 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7462119 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7466382 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7462119
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7466382
#print axioms cover_7462118

def root_7456054 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7456054 : CoveredBy scale carrier boxes root_7456054 := by
  apply coveredBy_split_literal root_7456054 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7456055 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7462118 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7456055
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7462118
#print axioms cover_7456054

def root_7473220 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7473220_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7473220_left_fuel : Nat := 24
def small_7473220_left_count : Nat := 477
def small_7473220_left_encoded : String := "1151E8FB0A0000FC115225070A0000FE115224FF0000000408A91303120701020000000108A91307120700FC08A912FF12073CFE0000000405000100135D44F705000104135D44FB0000000800000002135D80FB0000000204548A03138671020000000104548A07138670FC0CFD9BFF0F350CFE000000040000000800000006000000031386ACFC000000030CFD9BFF00000006000000060000000800000000135D80F7000000000500010400000008135D80FB0000000204548A03138671020000000104548A07000000080000000800000008000000080000000312073CFC0000000308A912FF12073CFE0000000405000100135D44F705000104135D44FB04548A03000000090000000800000002135D80FB0000000204548A0313867102000000010CFD9C070F34D0FC0CFD9BFF0F350CFE00000004000000090000000600000003000000091386AD020CFD9C07000000080F350CFC000000030CFD9BFF00000009000000060000000100000000135D80F7000000000500010400000009135D80FB0000000204548A031386710200000001000000091386AD020CFD9C07000000080000000900000001120700FE0500010000000005135D80F7000000000500010400000005000000060000000412073D0208A91307120700FC08A912FF12073CFE0000000400000008000000080000000312073CFC0000000308A912FF12073CFE0000000405000100135D44F70500010400000005135D80FB000000020CFD9C030F34D102000000010CFD9C0700000008000000050000000500000000135D80F70000000005000104135D44FB0CFD9C030F34D10200000001000000080000000500000002135D80FB000000020CFD9C030F34D102000000010CFD9C07000000080F350CFC000000030CFD9BFF0F350CFE0000000400000008000000050F350D020CFD9C070F34D0FC00000005000000030000000500000001120700FE0000000500000004000000011151E8FF08A91303120701020000000108A91307120700FC05000100135D44F705000104135D44FB050000FE135D80FF0000000404548A0313867102000000010000000800000008135D44FF000000070000000400000002135D80FB00000002050000FE135D80FF0000000404548A03138671020000000104548A07138670FC0280010013D7B0F70780010400000007128A7CFB0000000200000007000000000000000700000003000000071386AD0204548A07000000080000000800000001135D44FF000000070000000400000000135D80F70000000005000104135D44FB050000FE000000080000000700000002135D80FB00000002050000FE135D80FF0000000404548A030000000700000008000000070000000312073CFC0000000305000100135D44F705000104135D44FB050000FE135D80FF0000000404548A0300000007000000080000000700000002135D80FB00000002050000FE135D80FF0000000404548A03000000071386AD020CFD9C070000000800000007000000010000000700000000135D80F70000000005000104000000070000000712073D0208A91307120700FC05000100135D44F70500010400000008135D80FB00000002050000FE00000008135D44FF0CFD9C030F34D1020000000100000008000000080000000400000000000000080000000312073CFC0000000305000100135D44F705000104135D44FB0000000800000002135D80FB00000002050000FE135D80FF000000040CFD9C030F34D1020000000100000008000000080000000A00000000135D80F7000000000500010400000008135D80FB00000002050000FE135D80FF000000040CFD9C030000000800000008000000070000000100000004000000031151E907000000030A0000FE115224FF0000000408A91303120701020000000108A912FF00000009120700FE000000090000000412073D0208A912FF12073CFE0000000405000100135D44F705000104135D44FB050000FC00000005135D4507000000030000000500000002135D80FB00000002050000FC00000005135D4507000000030CFD9C030F34D102000000010CFD9BFF00000009000000080F350D02000000050000000100000000135D80F70000000005000104135D44FB050000FC00000005135D4507000000030000000900000002135D80FB00000002050000FC135D81070CFD9C030F34D10200000001000000090F350D02000000050000000100000003135D4507000000030CFD9C030F34D10200000001000000090F350D020CFD9BFF0F350CFE000000040C9A870200000005000000090F34D0FE000000050000000400000001120700FE0000000500000004000000011151E8FF08A91303120701020000000105000100135D44F70500010400000007135D80FB00000002050000FC0000000700000008000000000000000712073D0205000100135D44F70500010400000008135D80FB00000002050000FC0000000A135D4507000000030000000A00000000135D80F70000000005000104135D44FB050000FC000000070000000800000002135D80FB00000002050000FC00000007135D450700000003050000FE135D80FF000000040CFD9C03000000070000000800000007000000010000000400000002"
theorem small_7473220_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7473220_left_root small_7473220_left_fuel small_7473220_left_count small_7473220_left_encoded = true := by
  decide +kernel
theorem small_7473220_left_covered : CoveredBy scale carrier boxes small_7473220_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7473220_left_root small_7473220_left_fuel small_7473220_left_count small_7473220_left_encoded small_7473220_left_checked

theorem cover_7473220 : CoveredBy scale carrier boxes root_7473220 := by
  apply coveredBy_split_literal root_7473220 small_7473220_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2814.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7473220_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2814.covered
#print axioms cover_7473220

def root_7473215 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7473215_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7473215_right_fuel : Nat := 1
def small_7473215_right_count : Nat := 1
def small_7473215_right_encoded : String := "00000001"
theorem small_7473215_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7473215_right_root small_7473215_right_fuel small_7473215_right_count small_7473215_right_encoded = true := by
  decide +kernel
theorem small_7473215_right_covered : CoveredBy scale carrier boxes small_7473215_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7473215_right_root small_7473215_right_fuel small_7473215_right_count small_7473215_right_encoded small_7473215_right_checked

theorem cover_7473215 : CoveredBy scale carrier boxes root_7473215 := by
  apply coveredBy_split_literal root_7473215 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7473220 small_7473215_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7473220
  · exact small_7473215_right_covered
#print axioms cover_7473215

def root_7472481 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7472481_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7472481_left_fuel : Nat := 27
def small_7472481_left_count : Nat := 349
def small_7472481_left_encoded : String := "1151E903000000010A0001041151E8FB0A0000FC115225070A0000FE115224FF0000000408A91307120700FC0000000500000003000000051151E8FF08A91307000000080000000A00000004000000031151E907000000030A0000FE000000050000000A00000002115224FB000000020A0000FC115225070A0000FE115224FF0000000408A912FB12073D0408A91307120700FC00000005000000030000000500000002120701040000000208A91307120700FC0000000500000003000000051151E8FF08A912FB12073D0408A91307120700FC05000100135D44F705000102135D45030000000100000005135D8103050000FE00000006135D44FF0CFD9BFB000000080F34D1040000000200000006000000040000000100000000135D80F70000000005000102135D45030000000100000008135D8103050000FE0000000600000008000000010000000312073CFC0000000305000100135D44F705000102135D45030000000100000005135D8103050000FE135D80FF00000004000000050000000A0000000100000000135D80F70000000005000102135D450300000001050000FE000000050000000A135D8103050000FE135D80FF000000040CFD9BFB0F350D040CFD9C070000000800000005000000020F34D1040000000200000006135D44FF0CFD9BFB0000000A0F34D104000000020CFD9C07000000080000000A000000040000000100000002120701040000000208A91307120700FC000000060000000312073CFC0000000305000100135D44F705000102000000050000000600000000135D80F70000000005000102135D450300000001000000060000000600000004000000031151E907000000030A0000FE115224FF0000000408A912FB12073D0408A912FF12073CFE000000040500010000000005135D80F7000000000500010200000005135D8103050000FC00000005135D4507000000030CFD9BFB0F350D0400000005000000020F34D104000000020CFD9BFF0F350CFE000000040C9A86FE000000050F8750FF00000006000000040000000500000001120700FE000000050000000400000002120701040000000208A912FF12073CFE000000040500010000000005135D80F700000000050001020000000500000006000000061151E8FF08A912FB12073D0405000100135D44F7050001020000000A135D8103050000FC0000000A135D4507000000030000000A0000000100000000135D80F70000000005000102135D450300000001050000FC0000000A135D4507000000030000000A135D8103050000FC135D8107050000FE135D80FF000000040CFD9BFB0000000A0F34D104000000020780010000000005000000060000000A00000003135D450700000003050000FE135D80FF000000040CFD9BFB0000000A0F34D1040000000207800100128A40F707800102128A4103000000010000000A0000000800000000128A7CF70000000007800102128A410300000001028000FC13D7ED07078000FE00000005000000080000000313D7B10700000003078000FE0000000600000008128A7D03028000FC0000000600000008000000010000000A0000000100000002120701040000000205000100135D44F70500010200000009135D8103050000FC135D8107050000FE000000050000000900000003135D450700000003050000FE00000006000000080000000100000000135D80F70000000005000102135D450300000001050000FC135D8107050000FE00000005135D44FF045489FB0000000A000000060000000400000003135D450700000003050000FE0000000900000009135D8103050000FC135D8107050000FE00000006135D44FF045489FB00000008000000060000000400000003135D450700000003050000FE135D80FF0000000400000006000000080000000100000004"
theorem small_7472481_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7472481_left_root small_7472481_left_fuel small_7472481_left_count small_7472481_left_encoded = true := by
  decide +kernel
theorem small_7472481_left_covered : CoveredBy scale carrier boxes small_7472481_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7472481_left_root small_7472481_left_fuel small_7472481_left_count small_7472481_left_encoded small_7472481_left_checked

theorem cover_7472481 : CoveredBy scale carrier boxes root_7472481 := by
  apply coveredBy_split_literal root_7472481 small_7472481_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7473215 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7472481_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7473215
#print axioms cover_7472481

def root_7472476 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7472476_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7472476_right_fuel : Nat := 1
def small_7472476_right_count : Nat := 1
def small_7472476_right_encoded : String := "00000000"
theorem small_7472476_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7472476_right_root small_7472476_right_fuel small_7472476_right_count small_7472476_right_encoded = true := by
  decide +kernel
theorem small_7472476_right_covered : CoveredBy scale carrier boxes small_7472476_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7472476_right_root small_7472476_right_fuel small_7472476_right_count small_7472476_right_encoded small_7472476_right_checked

theorem cover_7472476 : CoveredBy scale carrier boxes root_7472476 := by
  apply coveredBy_split_literal root_7472476 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7472481 small_7472476_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7472481
  · exact small_7472476_right_covered
#print axioms cover_7472476

def root_7479061 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7479061_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7479061_right_fuel : Nat := 23
def small_7479061_right_count : Nat := 161
def small_7479061_right_encoded : String := "120701000000000008A912FB12073D0405000102135D450300000001050000FC135D8107050000FE000000070000000700000003135D450700000003050000FE135D80FF00000004045489F71386AD000CFD9BFB0F350D0400000007000000020F34D104000000020280010213D7B10300000001028000FC0000000713D7B10700000003078000FE0000000700000007000000070000000000000007135D44FF045489F71386AD000CFD9BFB0000000700000007000000000000000700000004135D8103050000FC00000007135D450700000003050000FE00000007000000070000000100000002120701040000000205000102135D450300000001050000FC135D8107050000FE135D80FF00000004045489F70000000600000007135D44FF045489F71386AD00045489FB000000070000000600000000000000070000000400000003135D450700000003050000FE135D80FF00000004045489F71386AD00045489FB1386AD040280010213D7B10300000001028000FC000000060000000A0000000A0000000200000006000000000000000A135D44FF045489F71386AD00045489FB1386AD040280010213D7B10300000001028000FC0000000713D7B10700000003028000FE13D7ECFF00000004067ECE7712EA9500067ECE7B000000070000000600000000000000070000000513D7ED03028000FC0000000700000005000000010000000213867104000000020280010213D7B10300000001028000FC000000060000000500000005000000001386710000000000045489FB000000070000000700000004135D8103050000FC135D8107050000FE000000070000000700000003135D450700000003050000FE135D80FF000000040000000A0000000500000001"
theorem small_7479061_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7479061_right_root small_7479061_right_fuel small_7479061_right_count small_7479061_right_encoded = true := by
  decide +kernel
theorem small_7479061_right_covered : CoveredBy scale carrier boxes small_7479061_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7479061_right_root small_7479061_right_fuel small_7479061_right_count small_7479061_right_encoded small_7479061_right_checked

theorem cover_7479061 : CoveredBy scale carrier boxes root_7479061 := by
  apply coveredBy_split_literal root_7479061 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2815.root small_7479061_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2815.covered
  · exact small_7479061_right_covered
#print axioms cover_7479061

def root_7479056 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7479056_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7479056_right_fuel : Nat := 1
def small_7479056_right_count : Nat := 1
def small_7479056_right_encoded : String := "00000004"
theorem small_7479056_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7479056_right_root small_7479056_right_fuel small_7479056_right_count small_7479056_right_encoded = true := by
  decide +kernel
theorem small_7479056_right_covered : CoveredBy scale carrier boxes small_7479056_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7479056_right_root small_7479056_right_fuel small_7479056_right_count small_7479056_right_encoded small_7479056_right_checked

theorem cover_7479056 : CoveredBy scale carrier boxes root_7479056 := by
  apply coveredBy_split_literal root_7479056 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7479061 small_7479056_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7479061
  · exact small_7479056_right_covered
#print axioms cover_7479056

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179
