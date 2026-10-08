import TaoBundleAssembly0326
import TaoBundleAssembly0330
import TaoBundleChunkBatch0434
import TaoBundleChunkBatch0435
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331
def root_4626646 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4626646_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4626646_right_fuel : Nat := 1
def small_4626646_right_count : Nat := 1
def small_4626646_right_encoded : String := "00000000"
theorem small_4626646_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4626646_right_root small_4626646_right_fuel small_4626646_right_count small_4626646_right_encoded = true := by
  decide +kernel
theorem small_4626646_right_covered : CoveredBy scale carrier boxes small_4626646_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4626646_right_root small_4626646_right_fuel small_4626646_right_count small_4626646_right_encoded small_4626646_right_checked

theorem cover_4626646 : CoveredBy scale carrier boxes root_4626646 := by
  apply coveredBy_split_literal root_4626646 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4626651 small_4626646_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4626651
  · exact small_4626646_right_covered
#print axioms cover_4626646

def root_4626645 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4626645_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4626645_right_fuel : Nat := 29
def small_4626645_right_count : Nat := 305
def small_4626645_right_encoded : String := "1151E901000000000A0001021151E903000000010A0000FA115225050A0000FC115225070A0001081151E90900000004000000051152250908A91305120700FA08A91307120700FC08A91309000000080000000800000003000000080000000212073CFA0000000208A91307120700FC08A913091207010800000004050000F6135D810105000102135D4503000000010CFD9C050000000800000005135D81030CFD9C050F34D0FA04548A07138670FC04548A0900000009000000070000000300000008000000020F350CFA0000000204548A07138670FC04548A0913867108000000040C9A86FA0F878D05078000F60000000900000009000000020F87510500000002000000050000000500000003000000050000000100000000135D4501000000000500010200000008135D81030CFD9C0500000008000000050000000100000005000000030000000500000004000000031151E9070000000300000005000000021151E9050000000200000005115225030A0000FA115225050A0000FC115225070A0001081151E9090000000408A91303120701020000000100000009000000091152250908A91303120701020000000108A91305120700FA08A913070000000900000006000000020000000912073D0208A91305120700FA08A91307120700FC08A913091207010800000004050000F60000000700000007000000070000000312073CFC0000000308A91309120701080000000400000009000000060000000212073CFA0000000208A91307120700FC08A913091207010800000004050000F6135D81010CFD9C030F34D10200000001000000060F350D020CFD9C050F34D0FA00000009000000020F350CFA0000000204548A07138670FC04548A09000000090000000600000003000000060000000100000000135D4501000000000CFD9C03000000090F350D020CFD9C050F34D0FA00000007000000020F350CFA0000000204548A07138670FC04548A09000000090000000500000003000000050000000112073D08050000F6135D81010CFD9C03000000090F350D020CFD9C0500000009000000050000000100000000135D4501000000000CFD9C030000000700000005000000040000000312073CFC0000000308A9130900000009000000050000000100000004000000031151E907000000030A0001081151E90900000004000000051152250908A9130312070102000000010000000612073D02000000090000000100000004000000021151E905000000020A0000FC115225070A0001081151E90900000004000000051152250908A91303120701020000000108A91307120700FC08A9130912070108000000040000000600000009000000030000000912073D0208A91307120700FC08A913091207010800000004050000F6135D8101050000FA135D81050CFD9C03000000060F350D0204548A07138670FC04548A0913867108000000040C9A870200000006000000050000000500000003000000050000000100000002135D4505000000020CFD9C030F34D10200000001000000060000000500000000135D450100000000050000FA135D81050CFD9C030F34D10200000001000000090000000500000002135D450500000002000000050000000500000003000000050000000100000004000000031151E907000000030000000500000001"
theorem small_4626645_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4626645_right_root small_4626645_right_fuel small_4626645_right_count small_4626645_right_encoded = true := by
  decide +kernel
theorem small_4626645_right_covered : CoveredBy scale carrier boxes small_4626645_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4626645_right_root small_4626645_right_fuel small_4626645_right_count small_4626645_right_encoded small_4626645_right_checked

theorem cover_4626645 : CoveredBy scale carrier boxes root_4626645 := by
  apply coveredBy_split_literal root_4626645 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.root_4626646 small_4626645_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.cover_4626646
  · exact small_4626645_right_covered
#print axioms cover_4626645

def root_4617693 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4617693 : CoveredBy scale carrier boxes root_4617693 := by
  apply coveredBy_split_literal root_4617693 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4617694 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.root_4626645 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4617694
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.cover_4626645
#print axioms cover_4617693

def root_4568947 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4568947 : CoveredBy scale carrier boxes root_4568947 := by
  apply coveredBy_split_literal root_4568947 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4568948 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.root_4617693 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4568948
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.cover_4617693
#print axioms cover_4568947

def root_4493203 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4493203 : CoveredBy scale carrier boxes root_4493203 := by
  apply coveredBy_split_literal root_4493203 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4493204 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.root_4568947 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4493204
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.cover_4568947
#print axioms cover_4493203

def root_4632588 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4632588 : CoveredBy scale carrier boxes root_4632588 := by
  apply coveredBy_split_literal root_4632588 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1735.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1736.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1735.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1736.covered
#print axioms cover_4632588

def root_4631422 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4631422 : CoveredBy scale carrier boxes root_4631422 := by
  apply coveredBy_split_literal root_4631422 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1734.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.root_4632588 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1734.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.cover_4632588
#print axioms cover_4631422

def root_4638751 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638751_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638751_left_fuel : Nat := 24
def small_4638751_left_count : Nat := 167
def small_4638751_left_encoded : String := "120701020000000108A91305120700FA08A912FF00000009000000050000000212073CFA0000000208A912FF12073D080500010600000005135D80FD000000030CFD9C010F34D0F600000005000000000F350CF60000000004548A03000000090000000900000004120701080000000405000106135D44FD0CFD9C010F34D0F600000005000000000F350CF60000000004548A0313867102000000010CFD9C05000000050F350CFA00000002045489FF000000051386710800000004000000081386AD020CFD9C05000000050F350CFA00000002045489FF0000000513867108000000040C9A86F6000000050F875101000000000C9A86FA00000005000000090000000100000003135D80FD000000030CFD9C010F34D0F604548A03000000051386AD020CFD9C05000000050F350CFA00000002045489FF0000000513867108000000040C9A86FA000000050F875105000000020000000600000001000000000F350CF60000000004548A0313867102000000010CFD9C050F34D0FA00000005000000020F350CFA00000002045489FF1386AD08000000090000000413867108000000040C9A86F60F878D010C9A86FA0F878D0500000005000000020F8751050000000200000008000000000F87510100000000000000091386AD020CFD9C050F34D0FA00000009000000020F350CFA00000002045489FF1386AD080C9A86F60000000A000000090000000413867108000000040C9A86F60F878D010C9A86FA0F878D0507800106000000050000000A000000020F875105000000020780010600000008128A7CFD00000003067ECE8312EA590200000001000000060000000A000000000F875101000000000C9A86FA000000090F875105000000020780010600000009128A7CFD00000003067ECE83000000090000000900000001"
theorem small_4638751_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4638751_left_root small_4638751_left_fuel small_4638751_left_count small_4638751_left_encoded = true := by
  decide +kernel
theorem small_4638751_left_covered : CoveredBy scale carrier boxes small_4638751_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4638751_left_root small_4638751_left_fuel small_4638751_left_count small_4638751_left_encoded small_4638751_left_checked

theorem cover_4638751 : CoveredBy scale carrier boxes root_4638751 := by
  apply coveredBy_split_literal root_4638751 small_4638751_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1738.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4638751_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1738.covered
#print axioms cover_4638751

def root_4638745 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638745_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638745_left_fuel : Nat := 1
def small_4638745_left_count : Nat := 1
def small_4638745_left_encoded : String := "00000000"
theorem small_4638745_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4638745_left_root small_4638745_left_fuel small_4638745_left_count small_4638745_left_encoded = true := by
  decide +kernel
theorem small_4638745_left_covered : CoveredBy scale carrier boxes small_4638745_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4638745_left_root small_4638745_left_fuel small_4638745_left_count small_4638745_left_encoded small_4638745_left_checked

theorem cover_4638745 : CoveredBy scale carrier boxes root_4638745 := by
  apply coveredBy_split_literal root_4638745 small_4638745_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.root_4638751 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4638745_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.cover_4638751
#print axioms cover_4638745

def root_4638683 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638683_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638683_left_fuel : Nat := 10
def small_4638683_left_count : Nat := 29
def small_4638683_left_encoded : String := "120700F608A91303120701020000000108A91305120700FA08A912FF00000009000000050000000212073CFA0000000208A912FF12073D080500010600000005135D80FD0000000300000005000000040000000512073D0208A91305120700FA0000000500000002000000050000000100000000"
theorem small_4638683_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4638683_left_root small_4638683_left_fuel small_4638683_left_count small_4638683_left_encoded = true := by
  decide +kernel
theorem small_4638683_left_covered : CoveredBy scale carrier boxes small_4638683_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4638683_left_root small_4638683_left_fuel small_4638683_left_count small_4638683_left_encoded small_4638683_left_checked

theorem cover_4638683 : CoveredBy scale carrier boxes root_4638683 := by
  apply coveredBy_split_literal root_4638683 small_4638683_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.root_4638745 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4638683_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.cover_4638745
#print axioms cover_4638683

def root_4638677 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638677_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638677_left_fuel : Nat := 1
def small_4638677_left_count : Nat := 1
def small_4638677_left_encoded : String := "00000004"
theorem small_4638677_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4638677_left_root small_4638677_left_fuel small_4638677_left_count small_4638677_left_encoded = true := by
  decide +kernel
theorem small_4638677_left_covered : CoveredBy scale carrier boxes small_4638677_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4638677_left_root small_4638677_left_fuel small_4638677_left_count small_4638677_left_encoded small_4638677_left_checked

theorem cover_4638677 : CoveredBy scale carrier boxes root_4638677 := by
  apply coveredBy_split_literal root_4638677 small_4638677_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.root_4638683 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4638677_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.cover_4638683
#print axioms cover_4638677

def root_4638637 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638637_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638637_left_fuel : Nat := 7
def small_4638637_left_count : Nat := 19
def small_4638637_left_encoded : String := "1151E8FF08A91301120700F608A91303120701020000000108A913050000000900000005000000050000000012073CF60000000008A913031207010200000001000000090000000500000004"
theorem small_4638637_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4638637_left_root small_4638637_left_fuel small_4638637_left_count small_4638637_left_encoded = true := by
  decide +kernel
theorem small_4638637_left_covered : CoveredBy scale carrier boxes small_4638637_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4638637_left_root small_4638637_left_fuel small_4638637_left_count small_4638637_left_encoded small_4638637_left_checked

theorem cover_4638637 : CoveredBy scale carrier boxes root_4638637 := by
  apply coveredBy_split_literal root_4638637 small_4638637_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.root_4638677 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4638637_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.cover_4638677
#print axioms cover_4638637

def root_4638632 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638632_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638632_right_fuel : Nat := 1
def small_4638632_right_count : Nat := 1
def small_4638632_right_encoded : String := "00000003"
theorem small_4638632_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4638632_right_root small_4638632_right_fuel small_4638632_right_count small_4638632_right_encoded = true := by
  decide +kernel
theorem small_4638632_right_covered : CoveredBy scale carrier boxes small_4638632_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4638632_right_root small_4638632_right_fuel small_4638632_right_count small_4638632_right_encoded small_4638632_right_checked

theorem cover_4638632 : CoveredBy scale carrier boxes root_4638632 := by
  apply coveredBy_split_literal root_4638632 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.root_4638637 small_4638632_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.cover_4638637
  · exact small_4638632_right_covered
#print axioms cover_4638632

def root_4638631 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638631_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638631_right_fuel : Nat := 30
def small_4638631_right_count : Nat := 421
def small_4638631_right_encoded : String := "115224FD000000030A0001081151E8FF08A91301120700F60000000A0000000012073CF60000000008A9130312070102000000010000000A0000000A00000004115224FF0000000408A91301120700F608A91303120701020000000108A91305120700FA08A912FD12073D0608A912FF0000000A120701080000000404548A01138670F6000000050000000000000005000000030000000A0000000212073CFA0000000208A912FD12073D0608A912FF0000000A120701080000000404548A01138670F604548A0313867102000000010CFD9C050F34D0FA00000005000000020F350CFA00000002000000061386AD020CFD9C050F34D0FA00000005000000020000000A00000001000000001386ACF60000000004548A0313867102000000010CFD9C050F34D0FA00000005000000020000000A1386AD020CFD9C050F34D0FA0000000A000000020000000A000000010000000312070106000000030000000A12073D0208A91305120700FA08A912FD12073D0600000005000000030000000A0000000212073CFA0000000208A912FD12073D0608A912FF0000000A120701080000000404548A01138670F60CFD9C030F34D102000000010CFD9C050F34D0FA00000005000000020000000A0F350D020CFD9C050F34D0FA00000005000000020000000A00000001000000001386ACF6000000000CFD9C030F34D102000000010CFD9C050F34D0FA0000000A000000020000000A0F350D020CFD9C050F34D0FA0000000A000000020F350CFA000000020CFD9BFD0F350D060000000A000000030000000A000000010000000312070106000000030000000A000000010000000012073CF60000000008A91303120701020000000108A91305120700FA08A912FD12073D0608A912FF0000000912070108000000040CFD9C010F34D0F604548A03000000050000000A000000000F350CF600000000000000090000000312070106000000030000000A0000000212073CFA0000000208A912FD12073D0608A912FF0000000A12070108000000040CFD9C010F34D0F604548A0313867102000000010CFD9C050F34D0FA0000000A000000020000000A1386AD020CFD9C050F34D0FA0000000A000000020000000A00000001000000000F350CF60000000004548A0313867102000000010CFD9C050F34D0FA0000000A000000020F350CFA000000020CFD9BFD0F350D06045489FF0000000A13867108000000040C9A86F60000000A0F875101000000000C9A86FA000000090F875105000000020000000A000000030000000A1386AD020CFD9C050F34D0FA0000000A000000020F350CFA000000020CFD9BFD0F350D06045489FF0000000A13867108000000040C9A86F60000000A0F875101000000000000000A000000030000000A000000010000000312070106000000030000000A12073D0208A91305120700FA08A912FD12073D0608A912FF0000000A12070108000000040CFD9C010F34D0F60CFD9C030F34D102000000010000000A0000000A000000000F350CF6000000000CFD9C030F34D10200000001000000090F350D0204548A05000000091386ACFA000000020CFD9BFD0F350D060000000A0000000300000009000000010000000312070106000000030000000A0000000212073CFA0000000208A912FD12073D0608A912FF12073D080CFD9C010F34D0F60000000A000000000000000A0000000412070108000000040CFD9C010F34D0F60CFD9C030F34D102000000010CFD9C050F34D0FA0000000A000000020000000A0F350D020CFD9C050F34D0FA0000000A000000020F350CFA000000020CFD9BFD0F350D06045489FF0000000A13867108000000040C9A87020F875103000000010000000A0000000A000000030000000A00000001000000000F350CF6000000000CFD9C030F34D102000000010CFD9C050F34D0FA0000000A000000020F350CFA000000020CFD9BFD0F350D06045489FF0000000A13867108000000040C9A86F60000000A0F875101000000000000000A000000030000000A0F350D020CFD9C050F34D0FA0CFD9BFD0F350D06045489FF0000000A13867108000000040C9A86F60000000A0F875101000000000000000A000000030000000A000000020F350CFA000000020CFD9BFD0F350D06045489FF0000000A13867108000000040C9A86F60F878D010C9A87020F875103000000010000000A0000000A000000000F875101000000000C9A87020F875103000000010C9A86FA0000000A0F87510500000002000000070000000A000000030F34D106000000030000000A000000010000000312070106000000030000000A00000001"
theorem small_4638631_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4638631_right_root small_4638631_right_fuel small_4638631_right_count small_4638631_right_encoded = true := by
  decide +kernel
theorem small_4638631_right_covered : CoveredBy scale carrier boxes small_4638631_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4638631_right_root small_4638631_right_fuel small_4638631_right_count small_4638631_right_encoded small_4638631_right_checked

theorem cover_4638631 : CoveredBy scale carrier boxes root_4638631 := by
  apply coveredBy_split_literal root_4638631 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.root_4638632 small_4638631_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.cover_4638632
  · exact small_4638631_right_covered
#print axioms cover_4638631

def root_4638626 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638626_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638626_right_fuel : Nat := 1
def small_4638626_right_count : Nat := 1
def small_4638626_right_encoded : String := "00000002"
theorem small_4638626_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4638626_right_root small_4638626_right_fuel small_4638626_right_count small_4638626_right_encoded = true := by
  decide +kernel
theorem small_4638626_right_covered : CoveredBy scale carrier boxes small_4638626_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4638626_right_root small_4638626_right_fuel small_4638626_right_count small_4638626_right_encoded small_4638626_right_checked

theorem cover_4638626 : CoveredBy scale carrier boxes root_4638626 := by
  apply coveredBy_split_literal root_4638626 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.root_4638631 small_4638626_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.cover_4638631
  · exact small_4638626_right_covered
#print axioms cover_4638626

def root_4644392 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4644392 : CoveredBy scale carrier boxes root_4644392 := by
  apply coveredBy_split_literal root_4644392 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1739.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1740.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1739.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1740.covered
#print axioms cover_4644392

def root_4644387 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4644387_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4644387_right_fuel : Nat := 1
def small_4644387_right_count : Nat := 1
def small_4644387_right_encoded : String := "00000002"
theorem small_4644387_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4644387_right_root small_4644387_right_fuel small_4644387_right_count small_4644387_right_encoded = true := by
  decide +kernel
theorem small_4644387_right_covered : CoveredBy scale carrier boxes small_4644387_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4644387_right_root small_4644387_right_fuel small_4644387_right_count small_4644387_right_encoded small_4644387_right_checked

theorem cover_4644387 : CoveredBy scale carrier boxes root_4644387 := by
  apply coveredBy_split_literal root_4644387 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.root_4644392 small_4644387_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.cover_4644392
  · exact small_4644387_right_covered
#print axioms cover_4644387

def root_4644386 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4644386_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4644386_right_fuel : Nat := 19
def small_4644386_right_count : Nat := 179
def small_4644386_right_encoded : String := "135D45050000000205000106135D44FD0CFD9C010F34D0F60CFD9C03000000080F350D02045489FF0000000813867108000000040000000900000001000000000F350CF6000000000CFD9C030F34D10200000001045489FF0000000813867108000000040C9A86F6000000080F87510100000000028000FA13D7ED05028001060000000813D7ECFD000000030AD357830000000810D13D02022A457F0000000700000006000000010000000213D7B10500000002028001060000000813D7ECFD000000030AD3578300000006000000060F350D02045489FF1386AD080C9A86F60F878D010C9A8702000000070F878D03028000FA000000070000000700000001000000000F87510100000000000000070000000413867108000000040C9A86F6000000090F87510100000000000000090000000100000003135D80FD000000030CFD9C010F34D0F60CFD9C030F34D10200000001045489FF00000008000000060F350D02045489FF1386AD080C9A8702000000070F878D03028000FA0000000700000007000000010000000413867108000000040C9A8702000000070F878D03000000060000000100000001000000000F350CF6000000000CFD9C030F34D10200000001045489FF1386AD080C9A86F60F878D01028000FA000000070000000700000000000000070000000413867108000000040C9A86F60F878D01028000FA13D7ED050780010600000006000000060000000200000006000000000F87510100000000028000FA13D7ED0507800106128A40FD0AD3578310D10102000000010000000610D13D02000000070000000100000003000000070000000213D7B10500000002000000050F350D02045489FF1386AD080C9A86F60F878D010000000700000000000000070000000413867108000000040C9A86F60F878D010C9A8702000000070F878D03028000FA000000070000000700000001000000000F875101000000000000000700000001"
theorem small_4644386_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4644386_right_root small_4644386_right_fuel small_4644386_right_count small_4644386_right_encoded = true := by
  decide +kernel
theorem small_4644386_right_covered : CoveredBy scale carrier boxes small_4644386_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4644386_right_root small_4644386_right_fuel small_4644386_right_count small_4644386_right_encoded small_4644386_right_checked

theorem cover_4644386 : CoveredBy scale carrier boxes root_4644386 := by
  apply coveredBy_split_literal root_4644386 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.root_4644387 small_4644386_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.cover_4644387
  · exact small_4644386_right_covered
#print axioms cover_4644386

def root_4644380 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4644380_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4644380_left_fuel : Nat := 1
def small_4644380_left_count : Nat := 1
def small_4644380_left_encoded : String := "00000004"
theorem small_4644380_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4644380_left_root small_4644380_left_fuel small_4644380_left_count small_4644380_left_encoded = true := by
  decide +kernel
theorem small_4644380_left_covered : CoveredBy scale carrier boxes small_4644380_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4644380_left_root small_4644380_left_fuel small_4644380_left_count small_4644380_left_encoded small_4644380_left_checked

theorem cover_4644380 : CoveredBy scale carrier boxes root_4644380 := by
  apply coveredBy_split_literal root_4644380 small_4644380_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.root_4644386 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4644380_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.cover_4644386
#print axioms cover_4644380

def root_4643884 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4643884_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4643884_left_fuel : Nat := 18
def small_4643884_left_count : Nat := 235
def small_4643884_left_encoded : String := "12073D08050000FA135D810505000106135D44FD0CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C030F34D102000000010CFD9BFF0F350D0800000005000000040F34D108000000040C9A86F6000000050F87510100000000078000FA00000005128A410500000002028001060000000513D7ECFD00000003000000070F350D020CFD9BFF000000050F34D108000000040C9A86F6000000050F875101000000000C9A8702000000050F878D03078000FA00000005128A41050000000200000007000000010000000100000003135D80FD000000030CFD9C010F34D0F60CFD9C030F34D102000000010000000A0F350D020CFD9BFF000000050F34D108000000040C9A8702000000050000000A00000001000000000F350CF6000000000CFD9C030F34D102000000010CFD9BFF0000000A0F34D108000000040C9A86F60000000A0F875101000000000000000A0F350D020CFD9BFF0000000A0F34D108000000040C9A86F60F878D010C9A8702000000070000000A000000000F875101000000000C9A8702000000070000000A0000000100000002135D45050000000205000106135D44FD0CFD9C010F34D0F60CFD9C030F34D10200000001000000080F350D020000000500000001000000000F350CF6000000000CFD9C030F34D102000000010CFD9BFF0F350D080C9A86F60F878D0100000005000000000F875101000000000C9A87080F8750FF000000050000000400000007000000040F34D108000000040C9A86F6000000080F87510100000000028000FA00000007000000070F350D020CFD9BFF0F350D080C9A86F6000000050F875101000000000C9A8702000000050F878D030C9A8708000000050000000700000001000000040F34D108000000040C9A86F60F878D010C9A8702000000070F878D03000000070000000100000000000000070000000100000003135D80FD000000030CFD9C010F34D0F60CFD9C030F34D102000000010CFD9BFF0000000A0F34D10800000004000000080F350D020CFD9BFF0000000A0F34D108000000040C9A8702000000070F878D03028000FA00000007000000070000000100000001000000000F350CF6000000000CFD9C030F34D102000000010CFD9BFF0000000A0F34D108000000040C9A86F60F878D01028000FA000000070000000700000000000000070F350D020CFD9BFF0F350D080C9A86F60000000A0F875101000000000C9A8702000000070000000A000000040F34D108000000040C9A86F60F878D010000000700000000000000070000000100000004"
theorem small_4643884_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4643884_left_root small_4643884_left_fuel small_4643884_left_count small_4643884_left_encoded = true := by
  decide +kernel
theorem small_4643884_left_covered : CoveredBy scale carrier boxes small_4643884_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4643884_left_root small_4643884_left_fuel small_4643884_left_count small_4643884_left_encoded small_4643884_left_checked

theorem cover_4643884 : CoveredBy scale carrier boxes root_4643884 := by
  apply coveredBy_split_literal root_4643884 small_4643884_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.root_4644380 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4643884_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.cover_4644380
#print axioms cover_4643884

def root_4643879 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4643879_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4643879_right_fuel : Nat := 1
def small_4643879_right_count : Nat := 1
def small_4643879_right_encoded : String := "00000001"
theorem small_4643879_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4643879_right_root small_4643879_right_fuel small_4643879_right_count small_4643879_right_encoded = true := by
  decide +kernel
theorem small_4643879_right_covered : CoveredBy scale carrier boxes small_4643879_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4643879_right_root small_4643879_right_fuel small_4643879_right_count small_4643879_right_encoded small_4643879_right_checked

theorem cover_4643879 : CoveredBy scale carrier boxes root_4643879 := by
  apply coveredBy_split_literal root_4643879 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.root_4643884 small_4643879_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.cover_4643884
  · exact small_4643879_right_covered
#print axioms cover_4643879

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331
