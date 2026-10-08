import TaoBundleAssembly0074
import TaoBundleAssembly0075
import TaoBundleChunkBatch0308
import TaoBundleChunkBatch0309
import TaoBundleChunkBatch0310
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076
def root_3203631 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3203631_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3203631_left_fuel : Nat := 15
def small_3203631_left_count : Nat := 93
def small_3203631_left_encoded : String := "120700F608A91303120700F808A91307120700FC08A913091207010800000004050000FA135D810504548A01000000061386ACF60000000004548A03000000061386ACF800000001000000060000000200000006000000060000000312073CFC00000003000000060000000112073CF80000000108A91307120700FC08A913091207010800000004050000FA135D810504548A01000000071386ACF6000000000CFD9C030F34D0F8000000070000000100000007000000020000000712073D08050000FA135D810504548A01138670F60CFD9C03000000060F350CF80000000104548A070000000700000006000000001386ACF6000000000CFD9C03000000060F350CF80000000104548A07000000060000000500000002135D45050000000204548A01000000071386ACF6000000000CFD9C030000000600000007000000040000000312073CFC0000000308A9130912070108000000040000000612073D08050000FA00000006000000060000000400000000"
theorem small_3203631_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3203631_left_root small_3203631_left_fuel small_3203631_left_count small_3203631_left_encoded = true := by
  decide +kernel
theorem small_3203631_left_covered : CoveredBy scale carrier boxes small_3203631_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3203631_left_root small_3203631_left_fuel small_3203631_left_count small_3203631_left_encoded small_3203631_left_checked

theorem cover_3203631 : CoveredBy scale carrier boxes root_3203631 := by
  apply coveredBy_split_literal root_3203631 small_3203631_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3203825 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3203631_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3203825
#print axioms cover_3203631

def root_3203626 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3203626_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3203626_right_fuel : Nat := 1
def small_3203626_right_count : Nat := 1
def small_3203626_right_encoded : String := "00000004"
theorem small_3203626_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3203626_right_root small_3203626_right_fuel small_3203626_right_count small_3203626_right_encoded = true := by
  decide +kernel
theorem small_3203626_right_covered : CoveredBy scale carrier boxes small_3203626_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3203626_right_root small_3203626_right_fuel small_3203626_right_count small_3203626_right_encoded small_3203626_right_checked

theorem cover_3203626 : CoveredBy scale carrier boxes root_3203626 := by
  apply coveredBy_split_literal root_3203626 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3203631 small_3203626_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3203631
  · exact small_3203626_right_covered
#print axioms cover_3203626

def root_3203520 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3203520_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3203520_left_fuel : Nat := 15
def small_3203520_left_count : Nat := 53
def small_3203520_left_encoded : String := "1151E9090000000408A91301120700F608A91303120700F808A9130700000006000000060000000112073CF80000000108A91307120700FC050000FA135D81050500010800000005135D810904548A01138670F60CFD9C03000000060000000500000000000000050000000400000002135D4505000000020500010800000005135D810904548A0100000007000000050000000400000003000000050000000012073CF60000000008A91303120700F808A91307120700FC050000FA000000060000000600000003000000050000000100000005"
theorem small_3203520_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3203520_left_root small_3203520_left_fuel small_3203520_left_count small_3203520_left_encoded = true := by
  decide +kernel
theorem small_3203520_left_covered : CoveredBy scale carrier boxes small_3203520_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3203520_left_root small_3203520_left_fuel small_3203520_left_count small_3203520_left_encoded small_3203520_left_checked

theorem cover_3203520 : CoveredBy scale carrier boxes root_3203520 := by
  apply coveredBy_split_literal root_3203520 small_3203520_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3203626 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3203520_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3203626
#print axioms cover_3203520

def root_3203515 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3203515_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3203515_right_fuel : Nat := 1
def small_3203515_right_count : Nat := 1
def small_3203515_right_encoded : String := "00000003"
theorem small_3203515_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3203515_right_root small_3203515_right_fuel small_3203515_right_count small_3203515_right_encoded = true := by
  decide +kernel
theorem small_3203515_right_covered : CoveredBy scale carrier boxes small_3203515_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3203515_right_root small_3203515_right_fuel small_3203515_right_count small_3203515_right_encoded small_3203515_right_checked

theorem cover_3203515 : CoveredBy scale carrier boxes root_3203515 := by
  apply coveredBy_split_literal root_3203515 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3203520 small_3203515_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3203520
  · exact small_3203515_right_covered
#print axioms cover_3203515

def root_3203514 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3203514_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3203514_right_fuel : Nat := 17
def small_3203514_right_count : Nat := 41
def small_3203514_right_encoded : String := "1151E907000000030A0001081151E90900000004000000051152250908A91301120700F6000000060000000012073CF60000000008A91303120700F808A913091207010800000004050000FA135D8105050000FC135D81070CFD9C01000000060F350CF60000000004548A03000000060000000500000003135D4507000000030CFD9C010000000600000005000000020000000600000005000000010000000500000004"
theorem small_3203514_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3203514_right_root small_3203514_right_fuel small_3203514_right_count small_3203514_right_encoded = true := by
  decide +kernel
theorem small_3203514_right_covered : CoveredBy scale carrier boxes small_3203514_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3203514_right_root small_3203514_right_fuel small_3203514_right_count small_3203514_right_encoded small_3203514_right_checked

theorem cover_3203514 : CoveredBy scale carrier boxes root_3203514 := by
  apply coveredBy_split_literal root_3203514 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3203515 small_3203514_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3203515
  · exact small_3203514_right_covered
#print axioms cover_3203514

def root_3203508 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3203508_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3203508_left_fuel : Nat := 1
def small_3203508_left_count : Nat := 1
def small_3203508_left_encoded : String := "00000002"
theorem small_3203508_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3203508_left_root small_3203508_left_fuel small_3203508_left_count small_3203508_left_encoded = true := by
  decide +kernel
theorem small_3203508_left_covered : CoveredBy scale carrier boxes small_3203508_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3203508_left_root small_3203508_left_fuel small_3203508_left_count small_3203508_left_encoded small_3203508_left_checked

theorem cover_3203508 : CoveredBy scale carrier boxes root_3203508 := by
  apply coveredBy_split_literal root_3203508 small_3203508_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3203514 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3203508_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3203514
#print axioms cover_3203508

def root_3187754 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3187754 : CoveredBy scale carrier boxes root_3187754 := by
  apply coveredBy_split_literal root_3187754 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3187755 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3203508 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3187755
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3203508
#print axioms cover_3187754

def root_3187749 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3187749_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3187749_right_fuel : Nat := 1
def small_3187749_right_count : Nat := 1
def small_3187749_right_encoded : String := "00000001"
theorem small_3187749_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3187749_right_root small_3187749_right_fuel small_3187749_right_count small_3187749_right_encoded = true := by
  decide +kernel
theorem small_3187749_right_covered : CoveredBy scale carrier boxes small_3187749_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3187749_right_root small_3187749_right_fuel small_3187749_right_count small_3187749_right_encoded small_3187749_right_checked

theorem cover_3187749 : CoveredBy scale carrier boxes root_3187749 := by
  apply coveredBy_split_literal root_3187749 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3187754 small_3187749_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3187754
  · exact small_3187749_right_covered
#print axioms cover_3187749

def root_3187748 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3187748_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3187748_right_fuel : Nat := 31
def small_3187748_right_count : Nat := 393
def small_3187748_right_encoded : String := "1151E903000000010A0000FA115225050A0000FC115225070A0001081151E9090000000408A91301120700F608A913050000000812073CFA0000000208A91307120700FC0000000800000003000000050000000012073CF60000000008A9130500000008000000051152250908A91301120700F608A913050000000A12073CFA0000000208A91307120700FC08A9130912070108000000040000000A12073D08050000F8135D810304548A010000000A1386ACF6000000000CFD9C05000000060F350CFA0000000204548A07000000060000000500000001135D45030000000104548A010000000A1386ACF6000000000CFD9C05000000060F350CFA0000000204548A07000000060000000500000004000000030000000A0000000012073CF60000000008A91305120700FA08A91307120700FC08A9130912070108000000040000000A00000008000000030000000A0000000212073CFA0000000208A91307120700FC08A913091207010800000004050000F8135D81030CFD9C010F34D0F60000000A000000000F350CF6000000000CFD9C050F34D0FA00000008000000020F350CFA0000000204548A07138670FC04548A0913867108000000040C9A86F60000000A0F875101000000000C9A86FA000000080F87510500000002078000F800000008000000081386AD080C9A86F60F878D0100000008000000000000000800000004000000031386ACFC0000000304548A090000000A0000000500000001135D4503000000010CFD9C010F34D0F60000000A000000000F350CF6000000000CFD9C050F34D0FA0000000A000000020F350CFA0000000204548A07138670FC04548A0913867108000000040C9A86F60000000A0F875101000000000C9A86FA0000000A0F875105000000020000000500000005000000030000000512073D08050000F8135D81030CFD9C010F34D0F60CFD9C05000000060F350CFA0000000204548A07138670FC000000050000000300000005000000000F350CF6000000000000000800000001135D4503000000010CFD9C010F34D0F60CFD9C0500000006000000050000000000000005000000040000000312073CFC0000000308A913091207010800000004050000F8135D81030CFD9C010000000A0F350CF6000000000CFD9C050000000A0000000500000001135D4503000000010CFD9C010000000A000000050000000500000004000000031151E907000000030A0001081151E90900000004000000051152250908A91301120700F6000000060000000012073CF60000000008A91305120700FA00000008000000020000000500000004000000021151E905000000020A0000FC115225070A0001081151E90900000004000000051152250908A91301120700F608A91307120700FC08A913091207010800000004050000F800000007135D4503000000010000000712073D08050000F8135D8103050000FA135D810504548A01138670F604548A07138670FC0000000A0000000300000007000000001386ACF60000000004548A07138670FC0CFD9C090F34D108000000040000000600000005000000030000000500000002135D45050000000204548A01000000070000000500000001135D450300000001050000FA135D810504548A01138670F604548A07138670FC0CFD9C0900000007000000050000000300000005000000000000000500000002135D45050000000204548A010000000700000005000000040000000312073CFC0000000308A9130900000007000000050000000012073CF60000000008A91307120700FC08A913091207010800000004050000F8135D8103050000FA135D81050CFD9C010F34D0F604548A070000000700000006000000000F350CF60000000004548A07138670FC04548A0913867108000000040C9A86F60F878D0100000007000000000F875101000000000000000500000005000000030000000500000002135D4505000000020CFD9C01000000070000000500000001135D450300000001050000FA135D81050CFD9C010F34D0F604548A07138670FC04548A0900000007000000050000000300000005000000000000000500000002135D4505000000020CFD9C010F34D0F600000007000000000000000500000005000000030000000500000004000000031151E9070000000300000005"
theorem small_3187748_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3187748_right_root small_3187748_right_fuel small_3187748_right_count small_3187748_right_encoded = true := by
  decide +kernel
theorem small_3187748_right_covered : CoveredBy scale carrier boxes small_3187748_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3187748_right_root small_3187748_right_fuel small_3187748_right_count small_3187748_right_encoded small_3187748_right_checked

theorem cover_3187748 : CoveredBy scale carrier boxes root_3187748 := by
  apply coveredBy_split_literal root_3187748 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3187749 small_3187748_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3187749
  · exact small_3187748_right_covered
#print axioms cover_3187748

def root_3187743 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3187743_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3187743_right_fuel : Nat := 1
def small_3187743_right_count : Nat := 1
def small_3187743_right_encoded : String := "00000000"
theorem small_3187743_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3187743_right_root small_3187743_right_fuel small_3187743_right_count small_3187743_right_encoded = true := by
  decide +kernel
theorem small_3187743_right_covered : CoveredBy scale carrier boxes small_3187743_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3187743_right_root small_3187743_right_fuel small_3187743_right_count small_3187743_right_encoded small_3187743_right_checked

theorem cover_3187743 : CoveredBy scale carrier boxes root_3187743 := by
  apply coveredBy_split_literal root_3187743 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3187748 small_3187743_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3187748
  · exact small_3187743_right_covered
#print axioms cover_3187743

def root_3209175 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3209175_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3209175_right_fuel : Nat := 28
def small_3209175_right_count : Nat := 325
def small_3209175_right_encoded : String := "12073CFC0000000308A913091207010800000004050000F6135D810104548A03138670F80CFD9C050F34D0FA0CFD9C070F34D0FC04548A09000000091386AD08078000F6128A7D0100000008000000000000000700000004000000030F350CFC0000000304548A09000000091386AD080000000900000004000000020F350CFA000000020CFD9C070F34D0FC04548A0913867108000000040C9A86FA0F878D05078000F6128A7D01022A458300000007000000090000000000000007000000020F87510500000002078000F6128A7D01022A458313E1C4F80AD3578710D100FC0000000700000003000000070000000113E200F8000000010AD3578710D100FC022A458913E1C508000000040B4D43FA00000007108011050000000208C000F611FC250100000009000000000000000713E201080B4D43FA00000007108011050000000200000007000000040000000310D13CFC00000003022A4589000000090000000500000000128A410100000000000000071386AD080C9A86FA0F878D05078000F6128A7D01022A45830000000713E200F8000000010AD3578700000008000000050000000000000007000000020F87510500000002078000F6128A7D01022A45830000000700000005000000000000000700000004000000030F350CFC0000000304548A0913867108000000040C9A86FA0F878D0500000009000000020F875105000000020C9A86FC0F878D07078000F6128A7D01022A458300000009000000090000000000000009000000030F87510700000003000000091386AD080C9A86FA0F878D050C9A86FC0F878D07078000F60000000500000007000000030F8751070000000300000005000000020F875105000000020000000500000004000000011386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D0FC04548A0900000009000000080000000300000009000000020F350CFA000000020CFD9C070F34D0FC04548A0913867108000000040C9A86FA0F878D05078000F6128A7D01067ECE8300000009000000090000000000000009000000020F87510500000002078000F6128A7D01067ECE8312EA58F80AD3578710D100FC022A458913E1C508000000040B4D43FA00000009108011050000000208C000F60000000500000009000000050000000300000005000000010000000500000000128A410100000000067ECE8312EA58F80AD3578710D100FC00000009000000030000000500000001000000051386AD080C9A86FA0F878D0500000008000000020F875105000000020000000500000004000000030F350CFC0000000304548A0913867108000000040C9A86FA0F878D0500000009000000020F87510500000002000000050000000500000000135D45010000000004548A03138670F80CFD9C050F34D0FA00000009000000020F350CFA000000020CFD9C070F34D0FC00000007000000030F350CFC0000000304548A090000000900000005000000011386ACF8000000010CFD9C050F34D0FA00000009000000020F350CFA000000020CFD9C070F34D0FC04548A090000000900000005000000030000000512073D08050000F6135D810104548A03138670F80CFD9C050F34D0FA0CFD9C070000000800000005000000020F350CFA000000020CFD9C070F34D0FC000000050000000300000005000000011386ACF8000000010CFD9C050F34D0FA00000008000000020000000500000000135D45010000000004548A03138670F80CFD9C050F34D0FA0CFD9C0700000008000000050000000200000005000000010000000500000004"
theorem small_3209175_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3209175_right_root small_3209175_right_fuel small_3209175_right_count small_3209175_right_encoded = true := by
  decide +kernel
theorem small_3209175_right_covered : CoveredBy scale carrier boxes small_3209175_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3209175_right_root small_3209175_right_fuel small_3209175_right_count small_3209175_right_encoded small_3209175_right_checked

theorem cover_3209175 : CoveredBy scale carrier boxes root_3209175 := by
  apply coveredBy_split_literal root_3209175 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1230.root small_3209175_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1230.covered
  · exact small_3209175_right_covered
#print axioms cover_3209175

def root_3209169 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3209169_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3209169_left_fuel : Nat := 1
def small_3209169_left_count : Nat := 1
def small_3209169_left_encoded : String := "00000002"
theorem small_3209169_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3209169_left_root small_3209169_left_fuel small_3209169_left_count small_3209169_left_encoded = true := by
  decide +kernel
theorem small_3209169_left_covered : CoveredBy scale carrier boxes small_3209169_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3209169_left_root small_3209169_left_fuel small_3209169_left_count small_3209169_left_encoded small_3209169_left_checked

theorem cover_3209169 : CoveredBy scale carrier boxes root_3209169 := by
  apply coveredBy_split_literal root_3209169 small_3209169_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3209175 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3209169_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3209175
#print axioms cover_3209169

def root_3209003 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3209003_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3209003_left_fuel : Nat := 14
def small_3209003_left_count : Nat := 81
def small_3209003_left_encoded : String := "120700FA08A91307120700FC08A913091207010800000004050000F6135D810104548A03138670F804548A05000000081386ACFA0000000204548A07000000080000000800000001000000080000000000000008000000080000000312073CFC0000000308A913091207010800000004050000F6135D810104548A030000000900000009000000000000000912073D08050000F6135D810104548A03138670F804548A05138670FA0CFD9C070000000800000009000000021386ACFA000000020CFD9C07000000080F350CFC0000000300000008000000011386ACF80000000104548A05138670FA00000008000000020000000800000000135D45010000000004548A03138670F804548A05000000091386ACFA000000020CFD9C070000000800000009000000011386ACF80000000104548A0500000009000000080000000400000002"
theorem small_3209003_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3209003_left_root small_3209003_left_fuel small_3209003_left_count small_3209003_left_encoded = true := by
  decide +kernel
theorem small_3209003_left_covered : CoveredBy scale carrier boxes small_3209003_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3209003_left_root small_3209003_left_fuel small_3209003_left_count small_3209003_left_encoded small_3209003_left_checked

theorem cover_3209003 : CoveredBy scale carrier boxes root_3209003 := by
  apply coveredBy_split_literal root_3209003 small_3209003_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3209169 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3209003_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3209169
#print axioms cover_3209003

def root_3208998 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3208998_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3208998_right_fuel : Nat := 1
def small_3208998_right_count : Nat := 1
def small_3208998_right_encoded : String := "00000001"
theorem small_3208998_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3208998_right_root small_3208998_right_fuel small_3208998_right_count small_3208998_right_encoded = true := by
  decide +kernel
theorem small_3208998_right_covered : CoveredBy scale carrier boxes small_3208998_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3208998_right_root small_3208998_right_fuel small_3208998_right_count small_3208998_right_encoded small_3208998_right_checked

theorem cover_3208998 : CoveredBy scale carrier boxes root_3208998 := by
  apply coveredBy_split_literal root_3208998 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3209003 small_3208998_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3209003
  · exact small_3208998_right_covered
#print axioms cover_3208998

def root_3208997 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3208997_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3208997_right_fuel : Nat := 25
def small_3208997_right_count : Nat := 191
def small_3208997_right_encoded : String := "12073CF80000000108A91305120700FA08A913070000000812073CFC0000000308A9130912070108000000040000000812073D08050000F60000000800000008000000040000000212073CFA0000000208A91307120700FC08A913091207010800000004050000F6135D81010CFD9C030F34D0F80CFD9C050F34D0FA00000008000000020F350CFA0000000204548A07138670FC04548A0913867108000000040C9A86FA000000080F87510500000002078000F6128A7D010AD3578310D100F8022A458700000008000000080000000100000008000000000000000800000008000000031386ACFC0000000304548A0913867108000000040C9A86FA0F878D0500000008000000020F87510500000002078000F6128A7D010AD3578310D100F8067ECE870000000800000005000000010000000500000000128A4101000000000AD3578310D100F800000008000000010000000500000008000000010F350CF8000000010CFD9C05000000080F350CFA0000000204548A07138670FC04548A0913867108000000040000000800000008000000031386ACFC0000000304548A0913867108000000040C9A86F800000008000000080000000500000000135D4501000000000CFD9C030F34D0F80CFD9C05000000080F350CFA0000000204548A070000000800000008000000010000000812073D08050000F6135D81010CFD9C030F34D0F80000000800000001000000080000000000000008000000040000000312073CFC0000000308A913091207010800000004050000F6135D81010CFD9C030F34D0F80CFD9C050F34D0FA0CFD9C070000000800000008000000020F350CFA000000020CFD9C070F34D0FC04548A0913867108000000040C9A86FA0F878D05078000F60000000A00000008000000020F8751050000000200000005000000050000000300000005000000010F350CF8000000010CFD9C050F34D0FA00000008000000020000000500000000135D4501000000000CFD9C030F34D0F80CFD9C050F34D0FA000000080000000200000005000000010000000500000005"
theorem small_3208997_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3208997_right_root small_3208997_right_fuel small_3208997_right_count small_3208997_right_encoded = true := by
  decide +kernel
theorem small_3208997_right_covered : CoveredBy scale carrier boxes small_3208997_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3208997_right_root small_3208997_right_fuel small_3208997_right_count small_3208997_right_encoded small_3208997_right_checked

theorem cover_3208997 : CoveredBy scale carrier boxes root_3208997 := by
  apply coveredBy_split_literal root_3208997 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3208998 small_3208997_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3208998
  · exact small_3208997_right_covered
#print axioms cover_3208997

def root_3208992 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3208992_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3208992_right_fuel : Nat := 1
def small_3208992_right_count : Nat := 1
def small_3208992_right_encoded : String := "00000004"
theorem small_3208992_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3208992_right_root small_3208992_right_fuel small_3208992_right_count small_3208992_right_encoded = true := by
  decide +kernel
theorem small_3208992_right_covered : CoveredBy scale carrier boxes small_3208992_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3208992_right_root small_3208992_right_fuel small_3208992_right_count small_3208992_right_encoded small_3208992_right_checked

theorem cover_3208992 : CoveredBy scale carrier boxes root_3208992 := by
  apply coveredBy_split_literal root_3208992 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3208997 small_3208992_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3208997
  · exact small_3208992_right_covered
#print axioms cover_3208992

def root_3208872 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3208872_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3208872_left_fuel : Nat := 15
def small_3208872_left_count : Nat := 59
def small_3208872_left_encoded : String := "1151E9090000000408A91303120700F808A91305120700FA08A91307120700FC000000080000000312073CFC00000003050000F6135D81010500010800000005135D810904548A03138670F804548A05000000060000000500000001000000050000000400000000135D4501000000000500010800000005135D810904548A03138670F804548A0500000009000000050000000100000005000000040000000212073CFA0000000208A91307120700FC050000F6000000080000000800000003000000050000000112073CF80000000108A91305120700FA08A9130700000008000000050000000200000005"
theorem small_3208872_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3208872_left_root small_3208872_left_fuel small_3208872_left_count small_3208872_left_encoded = true := by
  decide +kernel
theorem small_3208872_left_covered : CoveredBy scale carrier boxes small_3208872_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3208872_left_root small_3208872_left_fuel small_3208872_left_count small_3208872_left_encoded small_3208872_left_checked

theorem cover_3208872 : CoveredBy scale carrier boxes root_3208872 := by
  apply coveredBy_split_literal root_3208872 small_3208872_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3208992 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3208872_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3208992
#print axioms cover_3208872

def root_3208867 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3208867_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3208867_right_fuel : Nat := 1
def small_3208867_right_count : Nat := 1
def small_3208867_right_encoded : String := "00000003"
theorem small_3208867_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3208867_right_root small_3208867_right_fuel small_3208867_right_count small_3208867_right_encoded = true := by
  decide +kernel
theorem small_3208867_right_covered : CoveredBy scale carrier boxes small_3208867_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3208867_right_root small_3208867_right_fuel small_3208867_right_count small_3208867_right_encoded small_3208867_right_checked

theorem cover_3208867 : CoveredBy scale carrier boxes root_3208867 := by
  apply coveredBy_split_literal root_3208867 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3208872 small_3208867_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3208872
  · exact small_3208867_right_covered
#print axioms cover_3208867

def root_3208866 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3208866_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3208866_right_fuel : Nat := 22
def small_3208866_right_count : Nat := 161
def small_3208866_right_encoded : String := "1151E907000000030A0001081151E90900000004000000051152250908A91303120700F808A91305120700FA08A913091207010800000004050000F6135D810100000009000000000000000912073D08050000F6135D8101050000FC135D810704548A03138670F804548A05138670FA0000000A000000021386ACFA000000020CFD9C090F34D108000000040000000800000005000000011386ACF80000000104548A05000000090000000500000003135D45070000000304548A03138670F804548A05138670FA0CFD9C0900000009000000050000000200000005000000010000000500000000135D450100000000050000FC135D810704548A03000000090000000500000003135D45070000000304548A03138670F804548A0500000009000000050000000100000005000000040000000212073CFA0000000208A913091207010800000004050000F6135D8101050000FC135D810704548A03138670F80CFD9C050F34D0FA00000009000000020F350CFA0000000204548A0913867108000000040C9A86FA0F878D0500000009000000020F875105000000020000000500000005000000011386ACF8000000010CFD9C050F34D0FA00000008000000020000000500000003135D45070000000304548A03138670F80CFD9C050F34D0FA04548A0900000009000000050000000200000005000000010000000500000000135D450100000000050000FC135D810704548A03138670F80CFD9C050000000900000005000000010000000500000003135D45070000000304548A03138670F80CFD9C0500000009000000050000000100000005000000050000000112073CF80000000108A91305120700FA08A913090000000900000005000000020000000500000004"
theorem small_3208866_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3208866_right_root small_3208866_right_fuel small_3208866_right_count small_3208866_right_encoded = true := by
  decide +kernel
theorem small_3208866_right_covered : CoveredBy scale carrier boxes small_3208866_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3208866_right_root small_3208866_right_fuel small_3208866_right_count small_3208866_right_encoded small_3208866_right_checked

theorem cover_3208866 : CoveredBy scale carrier boxes root_3208866 := by
  apply coveredBy_split_literal root_3208866 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3208867 small_3208866_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3208867
  · exact small_3208866_right_covered
#print axioms cover_3208866

def root_3208861 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3208861_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3208861_right_fuel : Nat := 1
def small_3208861_right_count : Nat := 1
def small_3208861_right_encoded : String := "00000002"
theorem small_3208861_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3208861_right_root small_3208861_right_fuel small_3208861_right_count small_3208861_right_encoded = true := by
  decide +kernel
theorem small_3208861_right_covered : CoveredBy scale carrier boxes small_3208861_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3208861_right_root small_3208861_right_fuel small_3208861_right_count small_3208861_right_encoded small_3208861_right_checked

theorem cover_3208861 : CoveredBy scale carrier boxes root_3208861 := by
  apply coveredBy_split_literal root_3208861 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3208866 small_3208861_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3208866
  · exact small_3208861_right_covered
#print axioms cover_3208861

def root_3213677 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3213677_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3213677_right_fuel : Nat := 15
def small_3213677_right_count : Nat := 95
def small_3213677_right_encoded : String := "12073D08050000F6135D8101050000FA135D810504548A03138670F804548A07138670FC0CFD9C090F34D10800000004078000F6128A7D01078000FA0000000A0000000A00000000128A4101000000000000000A0F350D080000000500000004000000031386ACFC000000030CFD9C090F34D10800000004078000F600000005128A4101000000000000000500000005000000011386ACF80000000104548A07138670FC0CFD9C090F34D10800000004078000F6000000050000000800000005000000030000000500000002135D45050000000204548A03138670F804548A07138670FC0CFD9C090000000A000000050000000300000005000000010000000500000000135D450100000000050000FA135D810504548A03138670F804548A07138670FC0CFD9C090000000A000000050000000300000005000000010000000500000002135D45050000000204548A03138670F804548A07138670FC0CFD9C090000000A000000050000000300000005000000010000000500000004"
theorem small_3213677_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3213677_right_root small_3213677_right_fuel small_3213677_right_count small_3213677_right_encoded = true := by
  decide +kernel
theorem small_3213677_right_covered : CoveredBy scale carrier boxes small_3213677_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3213677_right_root small_3213677_right_fuel small_3213677_right_count small_3213677_right_encoded small_3213677_right_checked

theorem cover_3213677 : CoveredBy scale carrier boxes root_3213677 := by
  apply coveredBy_split_literal root_3213677 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1231.root small_3213677_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1231.covered
  · exact small_3213677_right_covered
#print axioms cover_3213677

def root_3213672 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3213672_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3213672_right_fuel : Nat := 1
def small_3213672_right_count : Nat := 1
def small_3213672_right_encoded : String := "00000003"
theorem small_3213672_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3213672_right_root small_3213672_right_fuel small_3213672_right_count small_3213672_right_encoded = true := by
  decide +kernel
theorem small_3213672_right_covered : CoveredBy scale carrier boxes small_3213672_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3213672_right_root small_3213672_right_fuel small_3213672_right_count small_3213672_right_encoded small_3213672_right_checked

theorem cover_3213672 : CoveredBy scale carrier boxes root_3213672 := by
  apply coveredBy_split_literal root_3213672 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3213677 small_3213672_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3213677
  · exact small_3213672_right_covered
#print axioms cover_3213672

def root_3213671 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3213671_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3213671_right_fuel : Nat := 30
def small_3213671_right_count : Nat := 269
def small_3213671_right_encoded : String := "12073CFC0000000308A913091207010800000004050000F6135D8101050000FA135D810504548A03138670F80CFD9C070F34D0FC04548A091386710800000004078000F6128A7D01078000FA128A7D05022A458313E1C4F80AD3578710D100FC022A458913E1C5080000000400000007000000060000000310D13CFC00000003022A458913E1C5080000000400000006000000060000000113E200F8000000010AD3578710D100FC022A458913E1C5080000000408C000F611FC250108C000FA11FC2505033F67C30000000613BC30F8000000010000000600000002000000060000000011FBE9010000000008C000FA0000000711FBE90500000002033F67C3000000060000000513E2010800000006000000040000000310D13CFC00000003022A458913E1C5080000000408C000F60000000611FBE90100000000000000050000000500000002128A410500000002022A458313E1C4F80AD3578710D100FC0000000600000003000000060000000113E200F8000000010AD3578710D100FC00000006000000030000000500000000128A410100000000078000FA128A7D05022A45830000000713E200F8000000010AD3578710D100FC00000007000000030000000500000002128A410500000002022A45830000000A13E200F8000000010AD357870000000A000000051386AD08078000F6128A7D01078000FA128A7D0500000006000000020000000600000000128A4101000000000000000500000004000000030F350CFC0000000304548A0913867108000000040C9A86FC0F878D07078000F6128A7D01078000FA128A7D05022A45830000000600000005000000020000000600000000128A410100000000078000FA00000005128A41050000000200000005000000030F875107000000030000000500000005000000011386ACF8000000010CFD9C070F34D0FC04548A091386710800000004078000F6128A7D01078000FA128A7D05067ECE8312EA58F80AD3578710D100FC022A458913E1C5080000000408C000F60000000511FBE9010000000000000005000000050000000300000005000000010000000500000002128A4105000000020000000500000000128A410100000000078000FA00000005128A4105000000020000000500000005000000030000000500000002135D45050000000204548A03138670F80CFD9C070F34D0FC04548A091386710800000004078000F6128A7D010000000600000000128A4101000000000000000A000000050000000300000005000000010000000500000000135D450100000000050000FA135D810504548A03138670F80CFD9C070F34D0FC04548A091386710800000004028000F613D7ED01078000FA00000007128A410500000002000000070000000000000007000000050000000300000005000000010000000500000002135D45050000000204548A03138670F80CFD9C070000000A00000005000000010000000500000005"
theorem small_3213671_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3213671_right_root small_3213671_right_fuel small_3213671_right_count small_3213671_right_encoded = true := by
  decide +kernel
theorem small_3213671_right_covered : CoveredBy scale carrier boxes small_3213671_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3213671_right_root small_3213671_right_fuel small_3213671_right_count small_3213671_right_encoded small_3213671_right_checked

theorem cover_3213671 : CoveredBy scale carrier boxes root_3213671 := by
  apply coveredBy_split_literal root_3213671 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3213672 small_3213671_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3213672
  · exact small_3213671_right_covered
#print axioms cover_3213671

def root_3213666 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3213666_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3213666_right_fuel : Nat := 1
def small_3213666_right_count : Nat := 1
def small_3213666_right_encoded : String := "00000001"
theorem small_3213666_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3213666_right_root small_3213666_right_fuel small_3213666_right_count small_3213666_right_encoded = true := by
  decide +kernel
theorem small_3213666_right_covered : CoveredBy scale carrier boxes small_3213666_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3213666_right_root small_3213666_right_fuel small_3213666_right_count small_3213666_right_encoded small_3213666_right_checked

theorem cover_3213666 : CoveredBy scale carrier boxes root_3213666 := by
  apply coveredBy_split_literal root_3213666 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3213671 small_3213666_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3213671
  · exact small_3213666_right_covered
#print axioms cover_3213666

def root_3213665 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3213665_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3213665_right_fuel : Nat := 32
def small_3213665_right_count : Nat := 267
def small_3213665_right_encoded : String := "12073CF80000000108A91307120700FC08A913091207010800000004050000F6135D8101050000FA135D81050CFD9C030F34D0F804548A07138670FC04548A091386710800000004078000F6128A7D01078000FA128A7D050AD3578310D100F8022A458713E1C4FC022A458913E1C5080000000400000009000000080000000313E200FC00000003022A458913E1C5080000000408C000F611FC250108C000FA11FC250509BE3543117740F800000008000000010000000800000002000000090000000011FBE9010000000008C000FA0000000811FBE9050000000209BE3543117740F800000009000000010000000513E2010800000008000000040000000110D13CF800000001022A458713E1C4FC022A458913E1C5080000000400000008000000080000000313E200FC00000003022A458913E1C5080000000408C000F611FC25010000000700000000000000080000000500000002128A4105000000020AD3578310D100F800000009000000010000000900000000128A410100000000078000FA128A7D050AD3578310D100F8022A45870000000813E200FC0000000300000008000000010000000800000002128A4105000000020AD357830000000A10D13CF800000001022A458700000009000000051386AD08078000F6128A7D01078000FA128A7D050000000800000002128A4105000000020000000500000000128A4101000000000000000500000004000000031386ACFC0000000304548A091386710800000004078000F6128A7D01078000FA128A7D050AD3578310D100F8067ECE8712EA58FC022A458913E1C5080000000408C000F60000000511FBE9010000000000000005000000050000000300000005000000010000000500000002128A4105000000020000000500000000128A410100000000078000FA00000005128A4105000000020000000500000005000000010F350CF80000000104548A07138670FC04548A0913867108000000040C9A86F80F878D03078000F6128A7D01078000FA128A7D05022A4587000000080000000500000002128A4105000000020000000500000000128A410100000000078000FA00000005128A41050000000200000005000000010F875103000000010000000500000005000000030000000500000002135D4505000000020CFD9C030F34D0F804548A07138670FC04548A091386710800000004078000F600000009128A41010000000000000009000000050000000300000005000000010000000500000000135D450100000000050000FA135D81050CFD9C030F34D0F804548A07138670FC04548A091386710800000004028000F613D7ED01078000FA00000008128A4105000000020000000A0000000000000008000000050000000300000005000000010000000500000002135D4505000000020CFD9C030F34D0F804548A070000000A000000050000000100000005000000050000000300000005"
theorem small_3213665_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3213665_right_root small_3213665_right_fuel small_3213665_right_count small_3213665_right_encoded = true := by
  decide +kernel
theorem small_3213665_right_covered : CoveredBy scale carrier boxes small_3213665_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3213665_right_root small_3213665_right_fuel small_3213665_right_count small_3213665_right_encoded small_3213665_right_checked

theorem cover_3213665 : CoveredBy scale carrier boxes root_3213665 := by
  apply coveredBy_split_literal root_3213665 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3213666 small_3213665_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3213666
  · exact small_3213665_right_covered
#print axioms cover_3213665

def root_3213660 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3213660_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3213660_right_fuel : Nat := 1
def small_3213660_right_count : Nat := 1
def small_3213660_right_encoded : String := "00000004"
theorem small_3213660_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3213660_right_root small_3213660_right_fuel small_3213660_right_count small_3213660_right_encoded = true := by
  decide +kernel
theorem small_3213660_right_covered : CoveredBy scale carrier boxes small_3213660_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3213660_right_root small_3213660_right_fuel small_3213660_right_count small_3213660_right_encoded small_3213660_right_checked

theorem cover_3213660 : CoveredBy scale carrier boxes root_3213660 := by
  apply coveredBy_split_literal root_3213660 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3213665 small_3213660_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3213665
  · exact small_3213660_right_covered
#print axioms cover_3213660

def root_3213652 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3213652_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3213652_left_fuel : Nat := 2
def small_3213652_left_count : Nat := 3
def small_3213652_left_encoded : String := "1151E9090000000400000005"
theorem small_3213652_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3213652_left_root small_3213652_left_fuel small_3213652_left_count small_3213652_left_encoded = true := by
  decide +kernel
theorem small_3213652_left_covered : CoveredBy scale carrier boxes small_3213652_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3213652_left_root small_3213652_left_fuel small_3213652_left_count small_3213652_left_encoded small_3213652_left_checked

theorem cover_3213652 : CoveredBy scale carrier boxes root_3213652 := by
  apply coveredBy_split_literal root_3213652 small_3213652_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3213660 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3213652_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3213660
#print axioms cover_3213652

def root_3213647 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3213647_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3213647_right_fuel : Nat := 1
def small_3213647_right_count : Nat := 1
def small_3213647_right_encoded : String := "00000003"
theorem small_3213647_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3213647_right_root small_3213647_right_fuel small_3213647_right_count small_3213647_right_encoded = true := by
  decide +kernel
theorem small_3213647_right_covered : CoveredBy scale carrier boxes small_3213647_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3213647_right_root small_3213647_right_fuel small_3213647_right_count small_3213647_right_encoded small_3213647_right_checked

theorem cover_3213647 : CoveredBy scale carrier boxes root_3213647 := by
  apply coveredBy_split_literal root_3213647 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3213652 small_3213647_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3213652
  · exact small_3213647_right_covered
#print axioms cover_3213647

def root_3213646 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3213646_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3213646_right_fuel : Nat := 2
def small_3213646_right_count : Nat := 3
def small_3213646_right_encoded : String := "1151E9070000000300000005"
theorem small_3213646_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3213646_right_root small_3213646_right_fuel small_3213646_right_count small_3213646_right_encoded = true := by
  decide +kernel
theorem small_3213646_right_covered : CoveredBy scale carrier boxes small_3213646_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3213646_right_root small_3213646_right_fuel small_3213646_right_count small_3213646_right_encoded small_3213646_right_checked

theorem cover_3213646 : CoveredBy scale carrier boxes root_3213646 := by
  apply coveredBy_split_literal root_3213646 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3213647 small_3213646_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3213647
  · exact small_3213646_right_covered
#print axioms cover_3213646

def root_3213640 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3213640_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3213640_left_fuel : Nat := 1
def small_3213640_left_count : Nat := 1
def small_3213640_left_encoded : String := "00000002"
theorem small_3213640_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3213640_left_root small_3213640_left_fuel small_3213640_left_count small_3213640_left_encoded = true := by
  decide +kernel
theorem small_3213640_left_covered : CoveredBy scale carrier boxes small_3213640_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3213640_left_root small_3213640_left_fuel small_3213640_left_count small_3213640_left_encoded small_3213640_left_checked

theorem cover_3213640 : CoveredBy scale carrier boxes root_3213640 := by
  apply coveredBy_split_literal root_3213640 small_3213640_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3213646 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3213640_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3213646
#print axioms cover_3213640

def root_3208860 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3208860 : CoveredBy scale carrier boxes root_3208860 := by
  apply coveredBy_split_literal root_3208860 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3208861 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3213640 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3208861
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3213640
#print axioms cover_3208860

def root_3208855 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3208855_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3208855_right_fuel : Nat := 1
def small_3208855_right_count : Nat := 1
def small_3208855_right_encoded : String := "00000001"
theorem small_3208855_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3208855_right_root small_3208855_right_fuel small_3208855_right_count small_3208855_right_encoded = true := by
  decide +kernel
theorem small_3208855_right_covered : CoveredBy scale carrier boxes small_3208855_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3208855_right_root small_3208855_right_fuel small_3208855_right_count small_3208855_right_encoded small_3208855_right_checked

theorem cover_3208855 : CoveredBy scale carrier boxes root_3208855 := by
  apply coveredBy_split_literal root_3208855 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3208860 small_3208855_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3208860
  · exact small_3208855_right_covered
#print axioms cover_3208855

def root_3208854 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3208854_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3208854_right_fuel : Nat := 21
def small_3208854_right_count : Nat := 53
def small_3208854_right_encoded : String := "1151E903000000010A0000FA115225050A0000FC115225070A0001081151E90900000004000000051152250908A91305120700FA000000080000000212073CFA0000000208A91307120700FC08A913091207010800000004050000F6135D8101050000F8135D81030CFD9C05000000080F350CFA0000000204548A07000000080000000500000001135D4503000000010CFD9C050000000800000005000000000000000800000005000000030000000500000004000000031151E9070000000300000005000000021151E9050000000200000005"
theorem small_3208854_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3208854_right_root small_3208854_right_fuel small_3208854_right_count small_3208854_right_encoded = true := by
  decide +kernel
theorem small_3208854_right_covered : CoveredBy scale carrier boxes small_3208854_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3208854_right_root small_3208854_right_fuel small_3208854_right_count small_3208854_right_encoded small_3208854_right_checked

theorem cover_3208854 : CoveredBy scale carrier boxes root_3208854 := by
  apply coveredBy_split_literal root_3208854 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3208855 small_3208854_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3208855
  · exact small_3208854_right_covered
#print axioms cover_3208854

def root_3208848 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3208848_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3208848_left_fuel : Nat := 1
def small_3208848_left_count : Nat := 1
def small_3208848_left_encoded : String := "00000000"
theorem small_3208848_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3208848_left_root small_3208848_left_fuel small_3208848_left_count small_3208848_left_encoded = true := by
  decide +kernel
theorem small_3208848_left_covered : CoveredBy scale carrier boxes small_3208848_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3208848_left_root small_3208848_left_fuel small_3208848_left_count small_3208848_left_encoded small_3208848_left_checked

theorem cover_3208848 : CoveredBy scale carrier boxes root_3208848 := by
  apply coveredBy_split_literal root_3208848 small_3208848_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3208854 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3208848_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3208854
#print axioms cover_3208848

def root_3187742 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3187742 : CoveredBy scale carrier boxes root_3187742 := by
  apply coveredBy_split_literal root_3187742 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3187743 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3208848 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3187743
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3208848
#print axioms cover_3187742

def root_3152430 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3152430 : CoveredBy scale carrier boxes root_3152430 := by
  apply coveredBy_split_literal root_3152430 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3152431 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3187742 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3152431
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3187742
#print axioms cover_3152430

def root_3148690 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3148690 : CoveredBy scale carrier boxes root_3148690 := by
  apply coveredBy_split_literal root_3148690 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3148691 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3152430 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3148691
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3152430
#print axioms cover_3148690

def root_3120466 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3120466 : CoveredBy scale carrier boxes root_3120466 := by
  apply coveredBy_split_literal root_3120466 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3120467 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3148690 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3120467
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3148690
#print axioms cover_3120466

def root_3218234 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3218234 : CoveredBy scale carrier boxes root_3218234 := by
  apply coveredBy_split_literal root_3218234 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1232.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1233.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1232.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1233.covered
#print axioms cover_3218234

def root_3218229 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3218229_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3218229_right_fuel : Nat := 1
def small_3218229_right_count : Nat := 1
def small_3218229_right_encoded : String := "00000001"
theorem small_3218229_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3218229_right_root small_3218229_right_fuel small_3218229_right_count small_3218229_right_encoded = true := by
  decide +kernel
theorem small_3218229_right_covered : CoveredBy scale carrier boxes small_3218229_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3218229_right_root small_3218229_right_fuel small_3218229_right_count small_3218229_right_encoded small_3218229_right_checked

theorem cover_3218229 : CoveredBy scale carrier boxes root_3218229 := by
  apply coveredBy_split_literal root_3218229 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3218234 small_3218229_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3218234
  · exact small_3218229_right_covered
#print axioms cover_3218229

def root_3218228 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3218228_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3218228_right_fuel : Nat := 33
def small_3218228_right_count : Nat := 375
def small_3218228_right_encoded : String := "1151E903000000010A0000FA115225050A0001061151E8FD0A0000FE115224FF0000000408A913010000000812073CF60000000008A91305120700FA0000000800000002000000081151E8FF000000050000000400000003115224FD000000030A0000FE115224FF0000000408A91301120700F608A91305120700FA08A912FD00000008120701060000000308A912FF00000005000000080000000212073CFA0000000208A912FD000000081207010600000003000000080000000012073CF60000000008A91305120700FA08A912FD12073D0608A912FF00000005120700FE050000F8135D81030CFD9C01000000080F350CF60000000004548A05000000050000000800000001000000080000000400000003120701060000000308A912FF00000005120700FE050000F8135D81030CFD9C010F34D0F604548A050000000500000008000000000F350CF60000000004548A05138670FA045489FD00000005138671060000000300000005000000021386ACFA00000002045489FD000000051386710600000003045489FF00000005138670FE0C9A86F60000000A0F87510100000000078000F8128A7D03067ECE85000000050000000A000000010000000A0000000400000001135D4503000000010CFD9C01000000050F350CF60000000004548A050000000500000008000000040000000212073CFA0000000208A912FD12073D0608A912FF12073CFE00000004000000080000000800000003120701060000000308A912FF12073CFE00000004050000F8135D81030CFD9C01000000050F350CF6000000000CFD9C05000000050000000A000000010000000A120700FE050000F8135D81030CFD9C010F34D0F600000008000000000F350CF6000000000CFD9C050F34D0FA045489FD000000081386710600000003045489FF0000000A138670FE0C9A86F6000000080000000800000004000000020F350CFA00000002045489FD000000081386710600000003045489FF000000080000000800000001135D4503000000010CFD9C01000000080F350CF60000000000000008000000041151E8FF0000000500000004000000021151E905000000020A0001061151E8FD0A0000FE115224FF0000000408A91301120700F608A912FF00000005000000080000000012073CF60000000008A912FF00000006000000081151E8FF000000050000000400000003115224FD000000030A0000FE115224FF0000000408A91301120700F608A912FD12073D0608A912FF000000050000000800000003120701060000000308A912FF00000005000000080000000012073CF60000000008A912FD12073D0608A912FF00000005120700FE050000F8135D81030000000800000001000000080000000400000003120701060000000308A912FF12073CFE00000004050000F8135D8103050000FA135D81050CFD9C01000000050F350CF600000000045489FD000000050000000A00000002135D4505000000020CFD9C01000000050F350CF600000000045489FD0000000513867106000000030CFD9BFF000000050F34D0FE0C9A86F6000000050F875101000000000000000A0000000400000001135D450300000001050000FA00000008135D4505000000020CFD9C01000000050000000A120700FE050000F8135D8103050000FA135D81050CFD9C01000000080F350CF600000000045489FD000000081386710600000003045489FF000000080000000800000002135D4505000000020CFD9C010F34D0F600000008000000000F350CF600000000045489FD000000081386710600000003045489FF1386ACFE000000040C9A86F60F878D0100000008000000000F87510100000000078000F8128A7D03028000FA0000000813D7B10500000002022A457D0000000813E1C50600000003067ECE7F00000008000000080000000100000008138670FE0C9A86F600000008000000080000000400000001135D450300000001050000FA00000008135D45050000000200000008000000041151E8FF08A913010000000512073CF60000000008A912FD0000000512070106000000030000000A00000004"
theorem small_3218228_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3218228_right_root small_3218228_right_fuel small_3218228_right_count small_3218228_right_encoded = true := by
  decide +kernel
theorem small_3218228_right_covered : CoveredBy scale carrier boxes small_3218228_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3218228_right_root small_3218228_right_fuel small_3218228_right_count small_3218228_right_encoded small_3218228_right_checked

theorem cover_3218228 : CoveredBy scale carrier boxes root_3218228 := by
  apply coveredBy_split_literal root_3218228 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3218229 small_3218228_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3218229
  · exact small_3218228_right_covered
#print axioms cover_3218228

def root_3218223 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3218223_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3218223_right_fuel : Nat := 1
def small_3218223_right_count : Nat := 1
def small_3218223_right_encoded : String := "00000000"
theorem small_3218223_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3218223_right_root small_3218223_right_fuel small_3218223_right_count small_3218223_right_encoded = true := by
  decide +kernel
theorem small_3218223_right_covered : CoveredBy scale carrier boxes small_3218223_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3218223_right_root small_3218223_right_fuel small_3218223_right_count small_3218223_right_encoded small_3218223_right_checked

theorem cover_3218223 : CoveredBy scale carrier boxes root_3218223 := by
  apply coveredBy_split_literal root_3218223 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3218228 small_3218223_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3218228
  · exact small_3218223_right_covered
#print axioms cover_3218223

def root_3218222 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3218222 : CoveredBy scale carrier boxes root_3218222 := by
  apply coveredBy_split_literal root_3218222 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3218223 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1234.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3218223
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1234.covered
#print axioms cover_3218222

def root_3229339 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3229339 : CoveredBy scale carrier boxes root_3229339 := by
  apply coveredBy_split_literal root_3229339 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1236.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1237.root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1236.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1237.covered
#print axioms cover_3229339

def root_3229333 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3229333_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3229333_left_fuel : Nat := 1
def small_3229333_left_count : Nat := 1
def small_3229333_left_encoded : String := "00000003"
theorem small_3229333_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3229333_left_root small_3229333_left_fuel small_3229333_left_count small_3229333_left_encoded = true := by
  decide +kernel
theorem small_3229333_left_covered : CoveredBy scale carrier boxes small_3229333_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3229333_left_root small_3229333_left_fuel small_3229333_left_count small_3229333_left_encoded small_3229333_left_checked

theorem cover_3229333 : CoveredBy scale carrier boxes root_3229333 := by
  apply coveredBy_split_literal root_3229333 small_3229333_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3229339 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_3229333_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3229339
#print axioms cover_3229333

def root_3229083 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3229083_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3229083_left_fuel : Nat := 18
def small_3229083_left_count : Nat := 117
def small_3229083_left_encoded : String := "1386AD0604548A09138670FE0C9A86F60F878D010C9A86F80F878D03067ECE8512EA58FA067ECE7D0000000512EA5906000000030000000500000002000000080000000100000008000000000F875101000000000C9A86F80F878D03067ECE8512EA58FA067ECE7D0000000512EA590600000003000000050000000212EA94FA00000002067ECE7D0000000512EA59060000000300000006000000010F87510300000001067ECE8512EA58FA067ECE7D0000000512EA590600000003000000050000000212EA94FA00000002067ECE7D0000000512EA590600000003022A45890000000500000008000000041386ACFE000000040C9A86F60F878D010C9A86F80F878D0300000009000000010F8751030000000100000008000000000F875101000000000C9A86F80F878D030000000A000000010F87510300000001067ECE8512EA58FA067ECE7D12EA9506067ECE89000000050000000A0000000312EA590600000003067ECE8912EA58FE0B4D43F610804D010B4D43F810804D030000000500000001000000050000000010801101000000000B4D43F80000000A00000005000000040000000A0000000212EA94FA00000002067ECE7D0000000812EA590600000003067ECE89000000080000000900000003"
theorem small_3229083_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3229083_left_root small_3229083_left_fuel small_3229083_left_count small_3229083_left_encoded = true := by
  decide +kernel
theorem small_3229083_left_covered : CoveredBy scale carrier boxes small_3229083_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3229083_left_root small_3229083_left_fuel small_3229083_left_count small_3229083_left_encoded small_3229083_left_checked

theorem cover_3229083 : CoveredBy scale carrier boxes root_3229083 := by
  apply coveredBy_split_literal root_3229083 small_3229083_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3229333 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_3229083_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3229333
#print axioms cover_3229083

def root_3229077 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3229077_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3229077_left_fuel : Nat := 1
def small_3229077_left_count : Nat := 1
def small_3229077_left_encoded : String := "00000002"
theorem small_3229077_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3229077_left_root small_3229077_left_fuel small_3229077_left_count small_3229077_left_encoded = true := by
  decide +kernel
theorem small_3229077_left_covered : CoveredBy scale carrier boxes small_3229077_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3229077_left_root small_3229077_left_fuel small_3229077_left_count small_3229077_left_encoded small_3229077_left_checked

theorem cover_3229077 : CoveredBy scale carrier boxes root_3229077 := by
  apply coveredBy_split_literal root_3229077 small_3229077_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3229083 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_3229077_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3229083
#print axioms cover_3229077

def root_3227203 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3227203 : CoveredBy scale carrier boxes root_3227203 := by
  apply coveredBy_split_literal root_3227203 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1235.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3229077 coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1235.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3229077
#print axioms cover_3227203

def root_3227197 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3227197_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3227197_left_fuel : Nat := 1
def small_3227197_left_count : Nat := 1
def small_3227197_left_encoded : String := "00000001"
theorem small_3227197_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3227197_left_root small_3227197_left_fuel small_3227197_left_count small_3227197_left_encoded = true := by
  decide +kernel
theorem small_3227197_left_covered : CoveredBy scale carrier boxes small_3227197_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3227197_left_root small_3227197_left_fuel small_3227197_left_count small_3227197_left_encoded small_3227197_left_checked

theorem cover_3227197 : CoveredBy scale carrier boxes root_3227197 := by
  apply coveredBy_split_literal root_3227197 small_3227197_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3227203 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3227197_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3227203
#print axioms cover_3227197

def root_3226995 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3226995_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3226995_left_fuel : Nat := 16
def small_3226995_left_count : Nat := 97
def small_3226995_left_encoded : String := "0F34D0F804548A05138670FA045489FD1386AD0604548A09138670FE0C9A86F60F878D01000000050000000000000005000000040000000A00000003138671060000000304548A09138670FE0C9A86F60F878D010AD357830000000510D13CF800000001022A45850000000500000009000000000F875101000000000AD357830000000510D13CF800000001022A45850000000513E200FA00000002022A457D0000000513E1C5060000000300000005000000041386ACFE000000040C9A86F6000000090000000A000000021386ACFA00000002045489FD1386AD0604548A09138670FE0C9A86F60F878D0100000009000000000F875101000000000AD357830000000510D13CF800000001067ECE850000000500000006000000040000000900000003138671060000000304548A09138670FE0C9A86F6000000090F875101000000000AD357830000000910D13CF800000001067ECE8512EA58FA022A457D0000000513E1C50600000003000000090000000200000009000000040000000900000001"
theorem small_3226995_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3226995_left_root small_3226995_left_fuel small_3226995_left_count small_3226995_left_encoded = true := by
  decide +kernel
theorem small_3226995_left_covered : CoveredBy scale carrier boxes small_3226995_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3226995_left_root small_3226995_left_fuel small_3226995_left_count small_3226995_left_encoded small_3226995_left_checked

theorem cover_3226995 : CoveredBy scale carrier boxes root_3226995 := by
  apply coveredBy_split_literal root_3226995 small_3226995_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3227197 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3226995_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3227197
#print axioms cover_3226995

def root_3226989 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3226989_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3226989_left_fuel : Nat := 1
def small_3226989_left_count : Nat := 1
def small_3226989_left_encoded : String := "00000000"
theorem small_3226989_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3226989_left_root small_3226989_left_fuel small_3226989_left_count small_3226989_left_encoded = true := by
  decide +kernel
theorem small_3226989_left_covered : CoveredBy scale carrier boxes small_3226989_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3226989_left_root small_3226989_left_fuel small_3226989_left_count small_3226989_left_encoded small_3226989_left_checked

theorem cover_3226989 : CoveredBy scale carrier boxes root_3226989 := by
  apply coveredBy_split_literal root_3226989 small_3226989_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3226995 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3226989_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3226995
#print axioms cover_3226989

def root_3226765 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3226765_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3226765_left_fuel : Nat := 18
def small_3226765_left_count : Nat := 107
def small_3226765_left_encoded : String := "0F34D0F60CFD9C030F34D0F804548A05138670FA000000090000000200000009000000010F350CF80000000104548A05138670FA045489FD1386AD0604548A09138670FE0C9A86F80F878D03000000050000000100000005000000041386ACFE000000040C9A86F80F878D0300000009000000010F875103000000010AD357810000000510D13CF600000000022A4585000000050000000800000003138671060000000304548A09138670FE0C9A86F80F878D030AD357810000000510D13CF600000000022A45850000000500000009000000010F875103000000010AD357810000000510D13CF600000000022A45850000000513E200FA00000002022A457D0000000513E1C5060000000300000005000000041386ACFE000000040C9A86F8000000090F875103000000010AD357810000000910D13CF600000000022A458513E1C4FA022A457D0000000513E1C50600000003000000090000000200000009000000021386ACFA00000002045489FD1386AD0604548A09000000080000000800000003138671060000000304548A09138670FE0C9A86F80000000900000008000000040000000900000000"
theorem small_3226765_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3226765_left_root small_3226765_left_fuel small_3226765_left_count small_3226765_left_encoded = true := by
  decide +kernel
theorem small_3226765_left_covered : CoveredBy scale carrier boxes small_3226765_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3226765_left_root small_3226765_left_fuel small_3226765_left_count small_3226765_left_encoded small_3226765_left_checked

theorem cover_3226765 : CoveredBy scale carrier boxes root_3226765 := by
  apply coveredBy_split_literal root_3226765 small_3226765_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3226989 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3226765_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3226989
#print axioms cover_3226765

def root_3226760 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3226760_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3226760_right_fuel : Nat := 1
def small_3226760_right_count : Nat := 1
def small_3226760_right_encoded : String := "00000004"
theorem small_3226760_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3226760_right_root small_3226760_right_fuel small_3226760_right_count small_3226760_right_encoded = true := by
  decide +kernel
theorem small_3226760_right_covered : CoveredBy scale carrier boxes small_3226760_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3226760_right_root small_3226760_right_fuel small_3226760_right_count small_3226760_right_encoded small_3226760_right_checked

theorem cover_3226760 : CoveredBy scale carrier boxes root_3226760 := by
  apply coveredBy_split_literal root_3226760 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3226765 small_3226760_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3226765
  · exact small_3226760_right_covered
#print axioms cover_3226760

def root_3226759 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3226759_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3226759_right_fuel : Nat := 26
def small_3226759_right_count : Nat := 247
def small_3226759_right_encoded : String := "12073CFE000000040CFD9C010F34D0F60CFD9C03000000090F350CF80000000104548A05138670FA045489FD1386AD060CFD9C090F34D0FE0000000900000004000000090000000313867106000000030CFD9C090F34D0FE0000000900000004000000090000000200000009000000000F350CF6000000000CFD9C030F34D0F804548A05138670FA045489FD0000000A13867106000000030CFD9C090F34D0FE0000000900000004000000090000000200000009000000010F350CF80000000104548A05138670FA045489FD1386AD060CFD9C090F34D0FE0C9A86F60F878D010C9A86F80000000A0F87510300000001022A458513E1C4FA067ECE7D0000000712EA590600000003000000070000000213E200FA00000002067ECE7D0000000912EA59060000000300000009000000000F875101000000000000000A000000040F350CFE000000040C9A86F60F878D010C9A86F8000000090000000A000000000000000A0000000313867106000000030CFD9C090F34D0FE0C9A86F60F878D010C9A86F80F878D0300000009000000010F87510300000001022A458513E1C4FA022A457D13E201060AD3578910D100FE0000000700000004000000090000000313E1C506000000030AD3578910D100FE0DE7C9F6000000060E5FD901000000000B4D43F8000000090000000600000004000000060000000200000009000000000F875101000000000C9A86F80F878D030000000A000000010F87510300000001022A458513E1C4FA022A457D0000000A13E1C506000000030AD3578910D100FE0B4D43F610804D010B4D43F80000000A108011030000000100000007000000000000000A000000040000000A0000000213E200FA00000002022A457D13E201060000000A0000000313E1C506000000030AD3578910D100FE0B4D43F610804D0100000009000000000000000A000000040000000A000000040F350CFE000000040C9A86F60F878D0100000009000000000F875101000000000C9A86F80000000A0F875103000000010C9A86FE0000000A0F8751090000000400000009000000021386ACFA00000002045489FD1386AD060CFD9C090F34D0FE0C9A86F60F878D0100000009000000000F875101000000000000000A000000040F350CFE000000040C9A86F6000000090000000A0000000313867106000000030CFD9C090F34D0FE0C9A86F6000000090F875101000000000C9A86F8000000090F87510300000001067ECE8512EA58FA022A457D13E201060AD3578910D100FE0000000900000004000000090000000313E1C506000000030AD3578910D100FE0000000900000004000000090000000200000009000000040F350CFE0000000400000009"
theorem small_3226759_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3226759_right_root small_3226759_right_fuel small_3226759_right_count small_3226759_right_encoded = true := by
  decide +kernel
theorem small_3226759_right_covered : CoveredBy scale carrier boxes small_3226759_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3226759_right_root small_3226759_right_fuel small_3226759_right_count small_3226759_right_encoded small_3226759_right_checked

theorem cover_3226759 : CoveredBy scale carrier boxes root_3226759 := by
  apply coveredBy_split_literal root_3226759 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3226760 small_3226759_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3226760
  · exact small_3226759_right_covered
#print axioms cover_3226759

def root_3226753 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3226753_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3226753_left_fuel : Nat := 1
def small_3226753_left_count : Nat := 1
def small_3226753_left_encoded : String := "00000003"
theorem small_3226753_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3226753_left_root small_3226753_left_fuel small_3226753_left_count small_3226753_left_encoded = true := by
  decide +kernel
theorem small_3226753_left_covered : CoveredBy scale carrier boxes small_3226753_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3226753_left_root small_3226753_left_fuel small_3226753_left_count small_3226753_left_encoded small_3226753_left_checked

theorem cover_3226753 : CoveredBy scale carrier boxes root_3226753 := by
  apply coveredBy_split_literal root_3226753 small_3226753_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3226759 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3226753_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3226759
#print axioms cover_3226753

def root_3226329 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3226329_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3226329_left_fuel : Nat := 17
def small_3226329_left_count : Nat := 199
def small_3226329_left_encoded : String := "12073D0608A91309120700FE0CFD9C010F34D0F60CFD9C030F34D0F804548A05138670FA0CFD9BFD000000080F34D1060000000304548A0900000005000000090000000200000008000000010F350CF80000000104548A05138670FA0CFD9BFD0F350D0600000008000000030F34D1060000000304548A09000000051386ACFE000000040C9A86F80F878D030000000800000001000000070000000200000008000000000F350CF6000000000CFD9C030F34D0F804548A050000000A1386ACFA000000020CFD9BFD0000000A0F34D1060000000304548A09138670FE0C9A86F60F878D010000000A0000000000000006000000040000000A000000010F350CF80000000104548A05138670FA0CFD9BFD0F350D0604548A09138670FE0C9A86F60000000700000005000000040000000A000000030F34D1060000000304548A09138670FE0C9A86F60F878D01000000050000000000000005000000041386ACFE000000040C9A86F60F878D010C9A86F80000000A00000007000000000000000A000000021386ACFA000000020CFD9BFD0F350D0600000008000000030F34D1060000000304548A09138670FE0C9A86F6000000080F875101000000000C9A86F80000000600000005000000041386ACFE000000040C9A86F60F878D0100000008000000000F875101000000000C9A86F80000000A000000080000000412073CFE000000040CFD9C010F34D0F60CFD9C030F34D0F804548A050000000A00000009000000010F350CF80000000104548A05138670FA0CFD9BFD0F350D060000000A000000030F34D106000000030CFD9C090F34D0FE0C9A86F8000000090F87510300000001000000070000000400000009000000021386ACFA000000020CFD9BFD0F350D060000000A000000030F34D1060000000300000009000000000F350CF6000000000CFD9C030F34D0F80000000A000000010F350CF80000000104548A05138670FA0CFD9BFD0000000A0F34D106000000030CFD9C090F34D0FE0000000A000000040000000A000000021386ACFA000000020CFD9BFD0000000A0F34D106000000030CFD9C090F34D0FE0000000A000000040000000A00000003"
theorem small_3226329_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3226329_left_root small_3226329_left_fuel small_3226329_left_count small_3226329_left_encoded = true := by
  decide +kernel
theorem small_3226329_left_covered : CoveredBy scale carrier boxes small_3226329_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3226329_left_root small_3226329_left_fuel small_3226329_left_count small_3226329_left_encoded small_3226329_left_checked

theorem cover_3226329 : CoveredBy scale carrier boxes root_3226329 := by
  apply coveredBy_split_literal root_3226329 small_3226329_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3226753 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3226329_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3226753
#print axioms cover_3226329

def root_3226324 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3226324_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3226324_right_fuel : Nat := 1
def small_3226324_right_count : Nat := 1
def small_3226324_right_encoded : String := "00000002"
theorem small_3226324_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3226324_right_root small_3226324_right_fuel small_3226324_right_count small_3226324_right_encoded = true := by
  decide +kernel
theorem small_3226324_right_covered : CoveredBy scale carrier boxes small_3226324_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3226324_right_root small_3226324_right_fuel small_3226324_right_count small_3226324_right_encoded small_3226324_right_checked

theorem cover_3226324 : CoveredBy scale carrier boxes root_3226324 := by
  apply coveredBy_split_literal root_3226324 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3226329 small_3226324_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3226329
  · exact small_3226324_right_covered
#print axioms cover_3226324

def root_3226323 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3226323_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3226323_right_fuel : Nat := 30
def small_3226323_right_count : Nat := 389
def small_3226323_right_encoded : String := "12073CFA0000000208A912FD12073D0608A91309120700FE0CFD9C010F34D0F60CFD9C030F34D0F80CFD9C050F34D0FA000000080000000200000008000000010F350CF80000000100000008000000000F350CF6000000000CFD9C030F34D0F80CFD9C050F34D0FA0CFD9BFD0F350D0600000008000000030F34D1060000000304548A09138670FE0C9A86F6000000080F87510100000000000000060000000400000009000000020F350CFA000000020CFD9BFD000000080F34D1060000000300000009000000010F350CF8000000010CFD9C050F34D0FA0CFD9BFD000000080F34D1060000000304548A090000000800000008000000020F350CFA000000020CFD9BFD000000080F34D10600000003000000080000000412073CFE000000040CFD9C010F34D0F60CFD9C03000000080F350CF8000000010CFD9C050F34D0FA0CFD9BFD00000008000000080000000200000008000000000F350CF6000000000CFD9C030F34D0F80CFD9C050000000A00000009000000010F350CF8000000010CFD9C050F34D0FA0CFD9BFD0000000A0F34D106000000030CFD9C090F34D0FE0C9A86F6000000080000000A0000000400000009000000020F350CFA000000020CFD9BFD000000080000000800000003120701060000000308A91309120700FE0CFD9C010F34D0F60CFD9C03000000090F350CF8000000010CFD9C050F34D0FA045489FD000000081386710600000003000000090000000200000009000000000F350CF6000000000CFD9C030F34D0F80CFD9C050F34D0FA045489FD000000091386710600000003000000090000000200000009000000010F350CF8000000010CFD9C050F34D0FA045489FD1386AD0604548A09138670FE0C9A86F60F878D0100000008000000000F875101000000000C9A86F80F878D030AD3578510D100FA067ECE7D0000000612EA590600000003022A4589000000060000000900000002000000080000000100000008000000041386ACFE000000040C9A86F60F878D0100000008000000000F875101000000000C9A86F80F878D0300000009000000010F875103000000010000000800000003138671060000000304548A09138670FE0C9A86F60F878D010C9A86F80F878D0300000009000000010F8751030000000100000008000000000F875101000000000C9A86F80F878D030AD3578510D100FA022A457D13E20106022A458900000006000000090000000313E1C50600000003022A458913E1C4FE0B4D43F6000000090000000700000004000000090000000200000009000000010F875103000000010AD3578510D100FA022A457D13E20106022A458900000008000000080000000313E1C50600000003022A458913E1C4FE0B4D43F60000000810801101000000000B4D43F810804D030000000600000001000000080000000413E200FE000000040B4D43F610804D01000000080000000010801101000000000B4D43F810804D030000000900000001000000080000000210D13CFA00000002022A457D0000000813E1C50600000003022A45890000000800000008000000041386ACFE000000040C9A86F6000000090F875101000000000C9A86F8000000090F875103000000010AD3578510D100FA022A457D0000000913E1C50600000003000000090000000200000009000000020F350CFA00000002045489FD1386AD0604548A09138670FE0C9A86F6000000080F875101000000000C9A86F80F878D03000000080000000100000008000000041386ACFE000000040C9A86F6000000080F875101000000000000000900000003138671060000000304548A09138670FE0C9A86F60F878D0100000009000000000F875101000000000C9A86F80F878D0300000009000000010F875103000000010C9A86FA000000080F875105000000020000000800000004000000090000000412073CFE000000040CFD9C010F34D0F600000009000000000F350CF6000000000CFD9C030F34D0F800000009000000010F350CF8000000010CFD9C050F34D0FA045489FD1386AD060CFD9C090F34D0FE0000000900000004000000090000000313867106000000030CFD9C090F34D0FE000000090000000400000009000000020F350CFA00000002045489FD00000009138671060000000300000009"
theorem small_3226323_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3226323_right_root small_3226323_right_fuel small_3226323_right_count small_3226323_right_encoded = true := by
  decide +kernel
theorem small_3226323_right_covered : CoveredBy scale carrier boxes small_3226323_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3226323_right_root small_3226323_right_fuel small_3226323_right_count small_3226323_right_encoded small_3226323_right_checked

theorem cover_3226323 : CoveredBy scale carrier boxes root_3226323 := by
  apply coveredBy_split_literal root_3226323 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3226324 small_3226323_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3226324
  · exact small_3226323_right_covered
#print axioms cover_3226323

def root_3226317 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3226317_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3226317_left_fuel : Nat := 1
def small_3226317_left_count : Nat := 1
def small_3226317_left_encoded : String := "00000001"
theorem small_3226317_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3226317_left_root small_3226317_left_fuel small_3226317_left_count small_3226317_left_encoded = true := by
  decide +kernel
theorem small_3226317_left_covered : CoveredBy scale carrier boxes small_3226317_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3226317_left_root small_3226317_left_fuel small_3226317_left_count small_3226317_left_encoded small_3226317_left_checked

theorem cover_3226317 : CoveredBy scale carrier boxes root_3226317 := by
  apply coveredBy_split_literal root_3226317 small_3226317_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3226323 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3226317_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3226323
#print axioms cover_3226317

def root_3226147 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3226147_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3226147_left_fuel : Nat := 16
def small_3226147_left_count : Nat := 81
def small_3226147_left_encoded : String := "120700F808A91305120700FA08A912FD12073D0608A91309120700FE0CFD9C010000000A0F350CF60000000004548A030000000A0000000A000000040000000A00000003120701060000000308A91309120700FE0CFD9C01000000090F350CF60000000004548A03000000091386ACF80000000104548A05138670FA045489FD0000000A138671060000000300000009000000020000000900000004000000090000000212073CFA0000000208A912FD12073D0608A91309120700FE0CFD9C010F34D0F600000009000000000F350CF60000000004548A03138670F800000009000000011386ACF8000000010CFD9C050F34D0FA0CFD9BFD0000000A0000000A00000002000000090000000412073CFE000000040CFD9C01000000090000000900000003120701060000000308A91309120700FE00000009000000040000000900000001"
theorem small_3226147_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3226147_left_root small_3226147_left_fuel small_3226147_left_count small_3226147_left_encoded = true := by
  decide +kernel
theorem small_3226147_left_covered : CoveredBy scale carrier boxes small_3226147_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3226147_left_root small_3226147_left_fuel small_3226147_left_count small_3226147_left_encoded small_3226147_left_checked

theorem cover_3226147 : CoveredBy scale carrier boxes root_3226147 := by
  apply coveredBy_split_literal root_3226147 small_3226147_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3226317 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3226147_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3226317
#print axioms cover_3226147

def root_3226141 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3226141_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3226141_left_fuel : Nat := 1
def small_3226141_left_count : Nat := 1
def small_3226141_left_encoded : String := "00000000"
theorem small_3226141_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3226141_left_root small_3226141_left_fuel small_3226141_left_count small_3226141_left_encoded = true := by
  decide +kernel
theorem small_3226141_left_covered : CoveredBy scale carrier boxes small_3226141_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3226141_left_root small_3226141_left_fuel small_3226141_left_count small_3226141_left_encoded small_3226141_left_checked

theorem cover_3226141 : CoveredBy scale carrier boxes root_3226141 := by
  apply coveredBy_split_literal root_3226141 small_3226141_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3226147 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3226141_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3226147
#print axioms cover_3226141

def root_3225893 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3225893_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3225893_left_fuel : Nat := 19
def small_3225893_left_count : Nat := 115
def small_3225893_left_encoded : String := "120700F608A91303120700F808A91305120700FA08A912FD12073D0608A91309120700FE0000000900000004000000090000000312070106000000030000000900000002000000090000000112073CF80000000108A91305120700FA08A912FD12073D0608A91309120700FE04548A01138670F600000008000000001386ACF6000000000CFD9C03000000080F350CF800000001000000080000000412073CFE0000000404548A01138670F60CFD9C030000000900000009000000001386ACF6000000000CFD9C030F34D0F800000009000000010F350CF80000000104548A05138670FA0CFD9BFD0F350D060CFD9C090000000800000009000000030F34D1060000000300000009000000020000000900000003120701060000000308A91309120700FE04548A01000000091386ACF6000000000CFD9C03000000090F350CF80000000104548A05138670FA045489FD1386AD060000000800000003138671060000000300000009000000020000000800000004000000090000000212073CFA0000000208A912FD12073D0608A913090000000812073CFE0000000404548A01000000090000000900000003120701060000000308A91309120700FE00000009000000040000000900000000"
theorem small_3225893_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3225893_left_root small_3225893_left_fuel small_3225893_left_count small_3225893_left_encoded = true := by
  decide +kernel
theorem small_3225893_left_covered : CoveredBy scale carrier boxes small_3225893_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3225893_left_root small_3225893_left_fuel small_3225893_left_count small_3225893_left_encoded small_3225893_left_checked

theorem cover_3225893 : CoveredBy scale carrier boxes root_3225893 := by
  apply coveredBy_split_literal root_3225893 small_3225893_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3226141 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3225893_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3226141
#print axioms cover_3225893

def root_3225888 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3225888_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3225888_right_fuel : Nat := 1
def small_3225888_right_count : Nat := 1
def small_3225888_right_encoded : String := "00000004"
theorem small_3225888_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3225888_right_root small_3225888_right_fuel small_3225888_right_count small_3225888_right_encoded = true := by
  decide +kernel
theorem small_3225888_right_covered : CoveredBy scale carrier boxes small_3225888_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3225888_right_root small_3225888_right_fuel small_3225888_right_count small_3225888_right_encoded small_3225888_right_checked

theorem cover_3225888 : CoveredBy scale carrier boxes root_3225888 := by
  apply coveredBy_split_literal root_3225888 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3225893 small_3225888_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3225893
  · exact small_3225888_right_covered
#print axioms cover_3225888

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076
