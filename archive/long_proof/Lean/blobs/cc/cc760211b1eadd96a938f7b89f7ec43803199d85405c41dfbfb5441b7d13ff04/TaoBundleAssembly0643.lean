import TaoBundleAssembly0642
import TaoBundleChunkBatch0883
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643
def root_9427066 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9427066_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9427066_left_fuel : Nat := 20
def small_9427066_left_count : Nat := 287
def small_9427066_left_encoded : String := "12073D0208A91305120700FA050000FC00000005135D4507000000030500010800000005135D80FF000000040CFD9C010F34D10000000000000000090F350D000CFD9BF9000000050F34D1020000000104548A05000000051386ACFA000000020C9A87000000000500000009000000000000000212073CFA00000002050000FC135D810705000108135D44FF0CFD9C010F34D100000000000CFD9BF90F350D0200000005000000010F34D102000000010CFD9C05000000090F350CFA000000020C9A86FA000000050F87510500000002078000FC00000005128A410700000003028001080000000513D7ECFF00000004000000060F350D000CFD9BF9000000050F34D102000000010CFD9C05000000050F350CFA000000020C9A8700000000050F878D010C9A86FA000000050F87510500000002078000FC00000005128A41070000000300000006000000000000000000000004135D80FF000000040CFD9C010F34D100000000000CFD9BF9000000070F34D102000000010CFD9C050F34D0FA00000007000000020F350CFA000000020C9A86FA000000070F87510500000002000000070F350D000CFD9BF90F350D020CFD9C050F34D0FA000000050000000200000007000000010F34D102000000010CFD9C050F34D0FA0C9A87000000000500000007000000020F350CFA000000020C9A87000F875101000000000C9A86FA00000007000000060F878D010C9A86FA000000070F8751050000000200000006000000000000000000000003135D45070000000305000108135D44FF0CFD9C010F34D100000000000CFD9BF90F350D020CFD9C050F34D0FA00000005000000020F350CFA000000020C9A87020F8750F900000005000000010F878CF9000000010C9A86FA0000000900000006000000010F34D102000000010CFD9C05000000090F350CFA000000020C9A86FA000000090F87510500000002028000FC00000006000000060F350D000CFD9BF90F350D020CFD9C05000000050F350CFA000000020C9A8700000000050F878D010C9A8702000000050F878CF9000000010C9A86FA000000050000000600000000000000010F34D102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020C9A8700000000060F878D010C9A86FA0F878D05000000060000000200000006000000000000000000000004135D80FF000000040CFD9C010F34D100000000000CFD9BF90F350D020CFD9C050F34D0FA000000070000000200000007000000010F34D102000000010CFD9C050F34D0FA00000009000000020F350CFA000000020C9A86FA0F878D05028000FC000000060000000600000002000000060F350D000CFD9BF90F350D020CFD9C050F34D0FA00000007000000020F350CFA000000020C9A87000F875101000000000C9A87020F8750F900000007000000010000000600000007000000010F34D102000000010CFD9C050F34D0FA0C9A8700000000060F878D01028000FC000000060000000600000000000000020F350CFA000000020C9A8700000000060F878D010C9A86FA0F878D05000000060000000200000006000000000000000000000001"
theorem small_9427066_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9427066_left_root small_9427066_left_fuel small_9427066_left_count small_9427066_left_encoded = true := by
  decide +kernel
theorem small_9427066_left_covered : CoveredBy scale carrier boxes small_9427066_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9427066_left_root small_9427066_left_fuel small_9427066_left_count small_9427066_left_encoded small_9427066_left_checked

theorem cover_9427066 : CoveredBy scale carrier boxes root_9427066 := by
  apply coveredBy_split_literal root_9427066 small_9427066_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0642.root_9427674 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9427066_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0642.cover_9427674
#print axioms cover_9427066

def root_9427061 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9427061_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9427061_right_fuel : Nat := 1
def small_9427061_right_count : Nat := 1
def small_9427061_right_encoded : String := "00000000"
theorem small_9427061_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9427061_right_root small_9427061_right_fuel small_9427061_right_count small_9427061_right_encoded = true := by
  decide +kernel
theorem small_9427061_right_covered : CoveredBy scale carrier boxes small_9427061_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9427061_right_root small_9427061_right_fuel small_9427061_right_count small_9427061_right_encoded small_9427061_right_checked

theorem cover_9427061 : CoveredBy scale carrier boxes root_9427061 := by
  apply coveredBy_split_literal root_9427061 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.root_9427066 small_9427061_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.cover_9427066
  · exact small_9427061_right_covered
#print axioms cover_9427061

def root_9426519 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9426519_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9426519_left_fuel : Nat := 25
def small_9426519_left_count : Nat := 253
def small_9426519_left_encoded : String := "120701000000000008A912F912073D0208A91305120700FA000000090000000212073CFA00000002050000FC135D810705000108135D44FF04548A01000000091386AD000CFD9BF9000000090F34D10200000001000000090000000000000004135D80FF0000000404548A0113867100000000000CFD9BF9000000070F34D10200000001000000091386AD000CFD9BF9000000070F34D102000000010CFD9C050F34D0FA0000000700000002000000070000000000000003135D45070000000305000108135D44FF04548A01000000091386AD000CFD9BF9000000090F34D10200000001000000090000000000000004135D80FF0000000404548A0113867100000000000CFD9BF9000000090F34D10200000001000000091386AD000CFD9BF90F350D020CFD9C050F34D0FA000000070000000200000007000000010F34D102000000010CFD9C05000000090F350CFA000000020C9A86FA00000009000000060000000000000001120701020000000108A91305120700FA000000090000000212073CFA00000002050000FC135D810705000108135D44FF0000000900000004135D80FF0000000404548A011386710000000000045489F90000000913867102000000010CFD9C05000000080F350CFA000000020C9A86FA000000090F87510500000002078000FC128A7D070780010800000009128A7CFF00000004022A4581000000080000000800000003000000081386AD00045489F91386AD020CFD9C050F34D0FA00000009000000020F350CFA000000020C9A86FA0F878D0500000009000000020F87510500000002078000FC128A7D070000000A00000003128A4107000000030780010800000009128A7CFF00000004000000070000000113867102000000010CFD9C050F34D0FA00000008000000020F350CFA000000020C9A86FA0F878D05078000FC128A7D070780010800000008128A7CFF00000004000000080000000300000008000000020F87510500000002078000FC128A7D0707800108128A40FF067ECE810000000912EA9500022A457900000009000000080000000000000004128A7CFF00000004067ECE8112EA590000000000022A4579000000070000000812EA9500022A457900000007000000080000000000000003128A41070000000307800108128A40FF0000000900000004128A7CFF00000004067ECE8100000008000000080000000000000003135D4507000000030500010800000009135D80FF0000000404548A011386710000000000000000091386AD00045489F91386AD020CFD9C05000000090F350CFA000000020C9A86FA000000090F87510500000002028000FC13D7ED0707800108000000090000000600000003000000060000000113867102000000010000000800000000"
theorem small_9426519_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9426519_left_root small_9426519_left_fuel small_9426519_left_count small_9426519_left_encoded = true := by
  decide +kernel
theorem small_9426519_left_covered : CoveredBy scale carrier boxes small_9426519_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9426519_left_root small_9426519_left_fuel small_9426519_left_count small_9426519_left_encoded small_9426519_left_checked

theorem cover_9426519 : CoveredBy scale carrier boxes root_9426519 := by
  apply coveredBy_split_literal root_9426519 small_9426519_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.root_9427061 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9426519_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.cover_9427061
#print axioms cover_9426519

def root_9426514 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9426514_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9426514_right_fuel : Nat := 1
def small_9426514_right_count : Nat := 1
def small_9426514_right_encoded : String := "00000004"
theorem small_9426514_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9426514_right_root small_9426514_right_fuel small_9426514_right_count small_9426514_right_encoded = true := by
  decide +kernel
theorem small_9426514_right_covered : CoveredBy scale carrier boxes small_9426514_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9426514_right_root small_9426514_right_fuel small_9426514_right_count small_9426514_right_encoded small_9426514_right_checked

theorem cover_9426514 : CoveredBy scale carrier boxes root_9426514 := by
  apply coveredBy_split_literal root_9426514 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.root_9426519 small_9426514_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.cover_9426519
  · exact small_9426514_right_covered
#print axioms cover_9426514

def root_9426513 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9426513 : CoveredBy scale carrier boxes root_9426513 := by
  apply coveredBy_split_literal root_9426513 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.root_9426514 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3529.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.cover_9426514
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3529.covered
#print axioms cover_9426513

def root_9426507 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9426507_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9426507_left_fuel : Nat := 1
def small_9426507_left_count : Nat := 1
def small_9426507_left_encoded : String := "00000003"
theorem small_9426507_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9426507_left_root small_9426507_left_fuel small_9426507_left_count small_9426507_left_encoded = true := by
  decide +kernel
theorem small_9426507_left_covered : CoveredBy scale carrier boxes small_9426507_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9426507_left_root small_9426507_left_fuel small_9426507_left_count small_9426507_left_encoded small_9426507_left_checked

theorem cover_9426507 : CoveredBy scale carrier boxes root_9426507 := by
  apply coveredBy_split_literal root_9426507 small_9426507_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.root_9426513 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9426507_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.cover_9426513
#print axioms cover_9426507

def root_9421955 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9421955 : CoveredBy scale carrier boxes root_9421955 := by
  apply coveredBy_split_literal root_9421955 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0642.root_9421956 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.root_9426507 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0642.cover_9421956
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.cover_9426507
#print axioms cover_9421955

def root_9421950 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9421950_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9421950_right_fuel : Nat := 1
def small_9421950_right_count : Nat := 1
def small_9421950_right_encoded : String := "00000002"
theorem small_9421950_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9421950_right_root small_9421950_right_fuel small_9421950_right_count small_9421950_right_encoded = true := by
  decide +kernel
theorem small_9421950_right_covered : CoveredBy scale carrier boxes small_9421950_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9421950_right_root small_9421950_right_fuel small_9421950_right_count small_9421950_right_encoded small_9421950_right_checked

theorem cover_9421950 : CoveredBy scale carrier boxes root_9421950 := by
  apply coveredBy_split_literal root_9421950 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.root_9421955 small_9421950_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.cover_9421955
  · exact small_9421950_right_covered
#print axioms cover_9421950

def root_9434854 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434854_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434854_left_fuel : Nat := 18
def small_9434854_left_count : Nat := 105
def small_9434854_left_encoded : String := "12073D0208A91307120700FC050000FA00000005135D45050000000205000108000000050000000A0000000312073CFC00000003050000FA135D810505000108135D44FF0CFD9C010F34D100000000000CFD9BF90000000A0000000A0F350D000CFD9BF9000000050F34D102000000010CFD9C07000000050F350CFC000000030C9A8700000000050F878D010C9A86FC000000050F8751070000000300000008000000000000000000000004135D80FF000000040CFD9C010F34D100000000000000000A0F350D000CFD9BF90F350D020CFD9C070000000A00000007000000010F34D102000000010CFD9C070F34D0FC00000008000000030F350CFC000000030C9A87000F87510100000000000000080F878D010000000A000000000000000000000002135D45050000000205000108135D44FF0CFD9C010F34D100000000000000000A0F350D000CFD9BF9000000080F34D10200000001000000080000000000000004135D80FF000000040CFD9C010F34D100000000000000000A0F350D000CFD9BF9000000080F34D102000000010CFD9C0700000008000000080000000000000001"
theorem small_9434854_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9434854_left_root small_9434854_left_fuel small_9434854_left_count small_9434854_left_encoded = true := by
  decide +kernel
theorem small_9434854_left_covered : CoveredBy scale carrier boxes small_9434854_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9434854_left_root small_9434854_left_fuel small_9434854_left_count small_9434854_left_encoded small_9434854_left_checked

theorem cover_9434854 : CoveredBy scale carrier boxes root_9434854 := by
  apply coveredBy_split_literal root_9434854 small_9434854_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3530.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9434854_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3530.covered
#print axioms cover_9434854

def root_9434849 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434849_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434849_right_fuel : Nat := 1
def small_9434849_right_count : Nat := 1
def small_9434849_right_encoded : String := "00000000"
theorem small_9434849_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9434849_right_root small_9434849_right_fuel small_9434849_right_count small_9434849_right_encoded = true := by
  decide +kernel
theorem small_9434849_right_covered : CoveredBy scale carrier boxes small_9434849_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9434849_right_root small_9434849_right_fuel small_9434849_right_count small_9434849_right_encoded small_9434849_right_checked

theorem cover_9434849 : CoveredBy scale carrier boxes root_9434849 := by
  apply coveredBy_split_literal root_9434849 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.root_9434854 small_9434849_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.cover_9434854
  · exact small_9434849_right_covered
#print axioms cover_9434849

def root_9434771 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434771_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434771_left_fuel : Nat := 14
def small_9434771_left_count : Nat := 37
def small_9434771_left_encoded : String := "120701000000000008A912F912073D0208A913070000000A0000000A00000001120701020000000108A913070000000A12073CFC00000003050000FA135D810505000108135D44FF04548A010000000A0000000A00000004135D80FF0000000404548A0113867100000000000000000A1386AD00045489F90000000A13867102000000010000000A00000000000000020000000A"
theorem small_9434771_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9434771_left_root small_9434771_left_fuel small_9434771_left_count small_9434771_left_encoded = true := by
  decide +kernel
theorem small_9434771_left_covered : CoveredBy scale carrier boxes small_9434771_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9434771_left_root small_9434771_left_fuel small_9434771_left_count small_9434771_left_encoded small_9434771_left_checked

theorem cover_9434771 : CoveredBy scale carrier boxes root_9434771 := by
  apply coveredBy_split_literal root_9434771 small_9434771_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.root_9434849 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9434771_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.cover_9434849
#print axioms cover_9434771

def root_9434766 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434766_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434766_right_fuel : Nat := 1
def small_9434766_right_count : Nat := 1
def small_9434766_right_encoded : String := "00000004"
theorem small_9434766_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9434766_right_root small_9434766_right_fuel small_9434766_right_count small_9434766_right_encoded = true := by
  decide +kernel
theorem small_9434766_right_covered : CoveredBy scale carrier boxes small_9434766_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9434766_right_root small_9434766_right_fuel small_9434766_right_count small_9434766_right_encoded small_9434766_right_checked

theorem cover_9434766 : CoveredBy scale carrier boxes root_9434766 := by
  apply coveredBy_split_literal root_9434766 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.root_9434771 small_9434766_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.cover_9434771
  · exact small_9434766_right_covered
#print axioms cover_9434766

def root_9434765 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434765_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434765_right_fuel : Nat := 28
def small_9434765_right_count : Nat := 267
def small_9434765_right_encoded : String := "115224FF0000000408A91301120701000000000008A912F912073D0208A913070000000A12073CFC000000030000000A00000001120701020000000108A913070000000A12073CFC0000000308A912FF12073D08050000FA135D810504548A011386710000000000045489F90000000A13867102000000010CFD9C070000000A0F350CFC000000030CFD9BFF0F350D080000000A000000040000000A1386AD00045489F90000000A13867102000000010CFD9C070000000A0F350CFC000000030CFD9BFF0F350D080000000A000000040000000A0000000000000002135D4505000000020000000A000000041207010800000004050000FA000000070000000512073D0008A912F912073D0208A91307120700FC0000000A0000000312073CFC0000000308A912FF12073D08050000FA135D81050CFD9C010F34D10000000000000000070000000700000002135D4505000000020000000A000000040000000A00000001120701020000000108A91307120700FC08A912FF12073D080000000A000000040000000A0000000312073CFC0000000308A912FF12073D08050000FA135D81050CFD9C010F34D10000000000045489F91386AD020CFD9C070000000A000000070000000113867102000000010CFD9C070F34D0FC0000000A000000030F350CFC000000030CFD9BFF0F350D080C9A86FC0F878D070000000A000000030F875107000000030C9A87080F8750FF078000FA000000070000000A0000000400000007000000040F34D10800000004000000050F350D00045489F91386AD020CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9BFF0F350D080C9A87000F875101000000000C9A86FC00000007000000060000000700000004000000070000000113867102000000010CFD9C070F34D0FC0CFD9BFF0F350D080C9A87000F875101000000000C9A870800000009000000070000000A000000040000000A000000030F350CFC000000030CFD9BFF0F350D080C9A87000F875101000000000C9A86FC0F878D070C9A87080000000900000007000000030F87510700000003000000060F878D010C9A86FC0F878D070C9A87080F8750FF078000FA000000070000000A0000000400000007000000030F875107000000030C9A87080F8750FF078000FA00000007128A41050000000200000005000000040000000700000000000000040F34D10800000004000000070000000000000002135D4505000000020CFD9C010F34D100000000000000000A0F350D00045489F91386AD020CFD9C070000000A0F350CFC000000030CFD9BFF0F350D080000000A00000004000000090000000113867102000000010CFD9C070F34D0FC0000000A000000030F350CFC000000030CFD9BFF0F350D080C9A8700000000090F878D010000000A00000000000000040000000900000000000000041207010800000004050000FA000000070000000900000000"
theorem small_9434765_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9434765_right_root small_9434765_right_fuel small_9434765_right_count small_9434765_right_encoded = true := by
  decide +kernel
theorem small_9434765_right_covered : CoveredBy scale carrier boxes small_9434765_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9434765_right_root small_9434765_right_fuel small_9434765_right_count small_9434765_right_encoded small_9434765_right_checked

theorem cover_9434765 : CoveredBy scale carrier boxes root_9434765 := by
  apply coveredBy_split_literal root_9434765 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.root_9434766 small_9434765_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.cover_9434766
  · exact small_9434765_right_covered
#print axioms cover_9434765

def root_9434760 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434760_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434760_right_fuel : Nat := 1
def small_9434760_right_count : Nat := 1
def small_9434760_right_encoded : String := "00000003"
theorem small_9434760_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9434760_right_root small_9434760_right_fuel small_9434760_right_count small_9434760_right_encoded = true := by
  decide +kernel
theorem small_9434760_right_covered : CoveredBy scale carrier boxes small_9434760_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9434760_right_root small_9434760_right_fuel small_9434760_right_count small_9434760_right_encoded small_9434760_right_checked

theorem cover_9434760 : CoveredBy scale carrier boxes root_9434760 := by
  apply coveredBy_split_literal root_9434760 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.root_9434765 small_9434760_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.cover_9434765
  · exact small_9434760_right_covered
#print axioms cover_9434760

def root_9443218 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9443218_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9443218_left_fuel : Nat := 19
def small_9443218_left_count : Nat := 179
def small_9443218_left_encoded : String := "13E201020DE7CA000E5FD9010000000008C000FA11FC250508C000FC11FC250703C00108000000080000000600000003000000060000000211FBE9050000000208C000FC00000008000000060E60150108C000FA11FC250508C000FC11FC250703C0010813A510FF033F67B913BC31020DAED8810E962500000000000000000A000000080000000113BBF502000000010DAED8810E96250000000000096000FA11AABD05096000FC0000000511AA81070000000300000009000000020000000A0E966100096000FA11AABD05096000FC0000000511AA8107000000030320010800000005000000060000000200000008000000000000000413A54CFF00000004033F67B913BC31020DAED8810E962500000000000000000A0E96610000000006000000000000000113BBF502000000010DAED8810E96250000000000096000FA11AABD05096000FC0000000A11AA81070000000300000006000000020000000A0E966100096000FA11AABD05000000060000000200000008000000000000000311FBE9070000000303C0010813A510FF033F67B90000000613BBF502000000010DAED8810E96250000000000096000FA11AABD05000000090000000211AA810500000002082000FC1246990703200108000000090000000600000003000000060E96610000000006000000000000000413A54CFF00000004000000060000000211FBE9050000000208C000FC11FC250703C0010813A510FF033F67B90000000813BBF50200000001000000080000000413A54CFF00000004033F67B90000000813BBF502000000010DAED88100000008000000080000000311FBE9070000000303C0010813A510FF033F67B90000000613BBF502000000010DAED8810E96250000000000082000FA12469905082000FC0000000812465D07000000030000000600000002000000080E96610000000008000000000000000413A54CFF00000004000000060000000000000001"
theorem small_9443218_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9443218_left_root small_9443218_left_fuel small_9443218_left_count small_9443218_left_encoded = true := by
  decide +kernel
theorem small_9443218_left_covered : CoveredBy scale carrier boxes small_9443218_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9443218_left_root small_9443218_left_fuel small_9443218_left_count small_9443218_left_encoded small_9443218_left_checked

theorem cover_9443218 : CoveredBy scale carrier boxes root_9443218 := by
  apply coveredBy_split_literal root_9443218 small_9443218_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3532.root coord1 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_9443218_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3532.covered
#print axioms cover_9443218

def root_9443212 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9443212_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9443212_left_fuel : Nat := 1
def small_9443212_left_count : Nat := 1
def small_9443212_left_encoded : String := "00000004"
theorem small_9443212_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9443212_left_root small_9443212_left_fuel small_9443212_left_count small_9443212_left_encoded = true := by
  decide +kernel
theorem small_9443212_left_covered : CoveredBy scale carrier boxes small_9443212_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9443212_left_root small_9443212_left_fuel small_9443212_left_count small_9443212_left_encoded small_9443212_left_checked

theorem cover_9443212 : CoveredBy scale carrier boxes root_9443212 := by
  apply coveredBy_split_literal root_9443212 small_9443212_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.root_9443218 coord4 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_9443212_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.cover_9443218
#print axioms cover_9443212

def root_9442596 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9442596_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9442596_left_fuel : Nat := 20
def small_9442596_left_count : Nat := 291
def small_9442596_left_encoded : String := "13D7B0FF022A457913E201020DE7CA000E5FD9010000000008C000FA11FC250508C000FC11FC2507000000050000000311FBE907000000030140010813F5D8FF000000080000000413F614FF00000004033F67B90000000613BBF502000000010D412880000000060EFA4D0100000008000000000000000211FBE90500000002000000080E60150108C000FA11FC250508C000FC11FC2507014001080000000513F614FF00000004033F67B90000000513BBF502000000010DAED881000000050E96610000000005000000000000000311FBE907000000030140010813F5D8FF000000090000000413F614FF00000004033F67B913BC31020DAED8810E96250000000000000000090E96610000000006000000000000000113BBF502000000010DAED8810E96250000000000000000090E966100096000FA0000000911AA810500000002082000FC0000000812465D070000000300000006000000000000000211FBE9050000000208C000FC11FC25070140010800000008000000080000000311FBE907000000030140010813F5D8FF033F67B900000008000000070000000413F614FF00000004033F67B90000000813BBF502000000010DAED8810E96250000000000082000FA12469905082000FC000000080000000700000002000000070E9661000000000800000000000000000000000113E1C502000000010DE7CA000E5FD9010000000008C000FA11FC250508C000FC11FC25070140010813F5D8FF0115233900000005000000070000000413F614FF000000040115233913F895020D412880000000050EFA4D01096000FA0000000500000008000000000000000113F85902000000010D412880000000070EFA4D0100000007000000000000000311FBE90700000003014001080000000713F614FF000000040115233913F895020D412880000000070EFA4D01000000070000000000000001000000070000000211FBE9050000000208C000FC11FC2507014001080000000713F614FF0000000401152339000000080000000700000003000000070E60150108C000FA11FC250508C000FC11FC25070140010813F5D8FF0115233900000005000000070000000413F614FF000000040115233913F895020DAED8810E96250000000000096000FA0000000511AA810500000002096000FC00000005000000070E966100096000FA0000000511AA810500000002096000FC0000000500000007000000000000000113F85902000000010DAED8810E96250000000000096000FA00000009000000070E966100096000FA11AABD05000000070000000200000007000000000000000311FBE90700000003014001080000000713F614FF000000040115233913F895020DAED8810E96250000000000000000090E966100096000FA11AABD050000000900000002000000070000000000000001000000070000000211FBE9050000000208C000FC11FC2507014001080000000713F614FF000000040115233913F895020DAED8810E96250000000000082000FA12469905096000FC0000000A0000000700000002000000070E9661000000000800000000000000010000000700000003000000070000000000000004"
theorem small_9442596_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9442596_left_root small_9442596_left_fuel small_9442596_left_count small_9442596_left_encoded = true := by
  decide +kernel
theorem small_9442596_left_covered : CoveredBy scale carrier boxes small_9442596_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9442596_left_root small_9442596_left_fuel small_9442596_left_count small_9442596_left_encoded small_9442596_left_checked

theorem cover_9442596 : CoveredBy scale carrier boxes root_9442596 := by
  apply coveredBy_split_literal root_9442596 small_9442596_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.root_9443212 coord4 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_9442596_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.cover_9443212
#print axioms cover_9442596

def root_9442591 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9442591_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9442591_right_fuel : Nat := 1
def small_9442591_right_count : Nat := 1
def small_9442591_right_encoded : String := "00000003"
theorem small_9442591_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9442591_right_root small_9442591_right_fuel small_9442591_right_count small_9442591_right_encoded = true := by
  decide +kernel
theorem small_9442591_right_covered : CoveredBy scale carrier boxes small_9442591_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9442591_right_root small_9442591_right_fuel small_9442591_right_count small_9442591_right_encoded small_9442591_right_checked

theorem cover_9442591 : CoveredBy scale carrier boxes root_9442591 := by
  apply coveredBy_split_literal root_9442591 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.root_9442596 small_9442591_right_root coord3 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.cover_9442596
  · exact small_9442591_right_covered
#print axioms cover_9442591

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643
