import TaoBundleAssembly0375
import TaoBundleChunkBatch0500
import TaoBundleChunkBatch0501
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376
def root_5331482 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331482_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331482_right_fuel : Nat := 20
def small_5331482_right_count : Nat := 151
def small_5331482_right_encoded : String := "120700FA08A91307120701060000000308A912FF12073D08045489F70000000800000006000000041207010800000004045489F7000000080000000612073D0608A912FF12073D08045489F71386AD000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9C07000000080F350D060CFD9BFF000000080000000800000003000000080F34D0F8045489FB1386ACFA000000020CFD9C070F34D106000000030CFD9BFF00000006000000080F350D060CFD9BFF0F350D080C9A8706000000050F878D070000000800000003000000040F34D108000000040000000800000003138670FA0CFD9C07000000080F350D06000000050000000300000002000000010000000013867100000000000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9C070F34D10600000003000000060F350D060CFD9BFF0F350D080C9A86F80F878CF9000000010C9A87060F8751070000000300000005000000060F8750F90C9A8706000000080000000800000001000000040F34D108000000040000000800000003138670FA0CFD9C07000000080F350D060CFD9BFF000000080000000800000003000000020F34D0F8045489FB1386ACFA000000020CFD9C070F34D10600000003000000060F350D060CFD9BFF000000060000000500000003138670FA0CFD9C0700000006000000050000000200000001000000041207010800000004045489F70000000813867100000000000CFD9BF90F350CF800000001000000080F34D0F8045489FB1386ACFA000000020CFD9C07000000060F350D06000000050000000300000008000000010000000300000002"
theorem small_5331482_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5331482_right_root small_5331482_right_fuel small_5331482_right_count small_5331482_right_encoded = true := by
  decide +kernel
theorem small_5331482_right_covered : CoveredBy scale carrier boxes small_5331482_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5331482_right_root small_5331482_right_fuel small_5331482_right_count small_5331482_right_encoded small_5331482_right_checked

theorem cover_5331482 : CoveredBy scale carrier boxes root_5331482 := by
  apply coveredBy_split_literal root_5331482 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5331483 small_5331482_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5331483
  · exact small_5331482_right_covered
#print axioms cover_5331482

def root_5331476 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331476_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331476_left_fuel : Nat := 1
def small_5331476_left_count : Nat := 1
def small_5331476_left_encoded : String := "00000001"
theorem small_5331476_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5331476_left_root small_5331476_left_fuel small_5331476_left_count small_5331476_left_encoded = true := by
  decide +kernel
theorem small_5331476_left_covered : CoveredBy scale carrier boxes small_5331476_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5331476_left_root small_5331476_left_fuel small_5331476_left_count small_5331476_left_encoded small_5331476_left_checked

theorem cover_5331476 : CoveredBy scale carrier boxes root_5331476 := by
  apply coveredBy_split_literal root_5331476 small_5331476_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.root_5331482 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5331476_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.cover_5331482
#print axioms cover_5331476

def root_5331475 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331475_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331475_right_fuel : Nat := 24
def small_5331475_right_count : Nat := 357
def small_5331475_right_encoded : String := "120700F808A912FB12073CFA0000000208A91307120701060000000308A912FF12073D08045489F71386AD00045489F91386ACF8000000010CFD9BFB000000060F34D0FA0000000600000002138670F80CFD9BFB0000000600000006000000010000000000000006000000041207010800000004045489F71386AD00045489F900000006138670F80CFD9BFB000000060000000600000001000000000000000612073D0608A912FF12073D08045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9BFF0F350D080C9A86FA000000060F8750FB0000000600000002000000040F34D10800000004000000060F350D060CFD9BFF0F350D080C9A86FA0F878CFB000000020C9A87060F875107000000030000000A0F878D070C9A87080F8750FF000000060000000400000006000000030F8750FB0C9A87060F875107000000030000000A0F878D070C9A87080F8750FF00000007000000040000000A0000000300000002000000040F34D108000000040000000A000000030F34D0FA0CFD9C070F34D106000000030CFD9BFF000000060F34D10800000004000000060F350D060CFD9BFF0F350D080C9A8706000000050F878D070C9A8708000000050000000600000003000000040F34D108000000040000000A0000000300000002138670F80CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9BFF0F350D080C9A86FA0000000600000009000000040F34D10800000004000000060F350D060000000A000000030F34D0FA0CFD9C070F34D10600000003000000060F350D0600000005000000030000000200000001000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D10600000003000000060F350D060CFD9BFF0F350D080C9A86FA0F878CFB000000020C9A87060F8751070000000300000005000000060F8750FB0C9A87060F875107000000030C9A87080F8750FF0000000600000004000000060F878D07000000060000000300000002000000040F34D108000000040C9A86FA0000000600000009000000030F34D0FA0CFD9C070F34D10600000003000000060F350D060CFD9BFF00000006000000050000000300000002138670F80CFD9BFB0F350CFA000000020CFD9C070F34D10600000003000000060F350D060CFD9BFF0F350D080C9A86FA0000000500000009000000040F34D1080000000400000009000000030F34D0FA0CFD9C0700000006000000050000000200000001000000041207010800000004045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D10600000003045489FF1386AD080C9A86FA00000006000000090000000413867108000000040000000A0000000A0F34D0FA0CFD9C070F34D10600000003000000060000000A00000002138670F80000000A00000001000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9C07000000090F350D060000000A000000030F34D0FA0CFD9C07000000060F350D06000000050000000300000002138670F80CFD9BFB0F350CFA00000002000000090F34D0FA00000005000000020000000100000003120700FA08A91307120701060000000308A912FF0000000612070108000000040000000612073D0608A912FF12073D08045489F71386AD00045489F91386ACF800000001045489FB1386ACFA000000020CFD9C070F34D10600000003000000060F350D060000000500000003138670FA0000000500000002138670F80000000500000001000000001386710000000000045489F91386ACF800000001045489FB1386ACFA000000020CFD9C0700000006000000050000000500000005000000041207010800000004045489F71386AD00000000050000000000000005000000030000000200000001"
theorem small_5331475_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5331475_right_root small_5331475_right_fuel small_5331475_right_count small_5331475_right_encoded = true := by
  decide +kernel
theorem small_5331475_right_covered : CoveredBy scale carrier boxes small_5331475_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5331475_right_root small_5331475_right_fuel small_5331475_right_count small_5331475_right_encoded small_5331475_right_checked

theorem cover_5331475 : CoveredBy scale carrier boxes root_5331475 := by
  apply coveredBy_split_literal root_5331475 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.root_5331476 small_5331475_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.cover_5331476
  · exact small_5331475_right_covered
#print axioms cover_5331475

def root_5331469 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331469_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331469_left_fuel : Nat := 1
def small_5331469_left_count : Nat := 1
def small_5331469_left_encoded : String := "00000000"
theorem small_5331469_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5331469_left_root small_5331469_left_fuel small_5331469_left_count small_5331469_left_encoded = true := by
  decide +kernel
theorem small_5331469_left_covered : CoveredBy scale carrier boxes small_5331469_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5331469_left_root small_5331469_left_fuel small_5331469_left_count small_5331469_left_encoded small_5331469_left_checked

theorem cover_5331469 : CoveredBy scale carrier boxes root_5331469 := by
  apply coveredBy_split_literal root_5331469 small_5331469_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.root_5331475 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5331469_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.cover_5331475
#print axioms cover_5331469

def root_5329507 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5329507 : CoveredBy scale carrier boxes root_5329507 := by
  apply coveredBy_split_literal root_5329507 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1998.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.root_5331469 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1998.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.cover_5331469
#print axioms cover_5329507

def root_5329501 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5329501_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5329501_left_fuel : Nat := 1
def small_5329501_left_count : Nat := 1
def small_5329501_left_encoded : String := "00000004"
theorem small_5329501_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5329501_left_root small_5329501_left_fuel small_5329501_left_count small_5329501_left_encoded = true := by
  decide +kernel
theorem small_5329501_left_covered : CoveredBy scale carrier boxes small_5329501_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5329501_left_root small_5329501_left_fuel small_5329501_left_count small_5329501_left_encoded small_5329501_left_checked

theorem cover_5329501 : CoveredBy scale carrier boxes root_5329501 := by
  apply coveredBy_split_literal root_5329501 small_5329501_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.root_5329507 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5329501_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.cover_5329507
#print axioms cover_5329501

def root_5324445 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5324445 : CoveredBy scale carrier boxes root_5324445 := by
  apply coveredBy_split_literal root_5324445 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5324446 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.root_5329501 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5324446
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.cover_5329501
#print axioms cover_5324445

def root_5324440 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5324440_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5324440_right_fuel : Nat := 1
def small_5324440_right_count : Nat := 1
def small_5324440_right_encoded : String := "00000003"
theorem small_5324440_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5324440_right_root small_5324440_right_fuel small_5324440_right_count small_5324440_right_encoded = true := by
  decide +kernel
theorem small_5324440_right_covered : CoveredBy scale carrier boxes small_5324440_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5324440_right_root small_5324440_right_fuel small_5324440_right_count small_5324440_right_encoded small_5324440_right_checked

theorem cover_5324440 : CoveredBy scale carrier boxes root_5324440 := by
  apply coveredBy_split_literal root_5324440 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.root_5324445 small_5324440_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.cover_5324445
  · exact small_5324440_right_covered
#print axioms cover_5324440

def root_5307104 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5307104 : CoveredBy scale carrier boxes root_5307104 := by
  apply coveredBy_split_literal root_5307104 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5307105 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.root_5324440 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5307105
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.cover_5324440
#print axioms cover_5307104

def root_5307098 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5307098_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5307098_left_fuel : Nat := 1
def small_5307098_left_count : Nat := 1
def small_5307098_left_encoded : String := "00000002"
theorem small_5307098_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5307098_left_root small_5307098_left_fuel small_5307098_left_count small_5307098_left_encoded = true := by
  decide +kernel
theorem small_5307098_left_covered : CoveredBy scale carrier boxes small_5307098_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5307098_left_root small_5307098_left_fuel small_5307098_left_count small_5307098_left_encoded small_5307098_left_checked

theorem cover_5307098 : CoveredBy scale carrier boxes root_5307098 := by
  apply coveredBy_split_literal root_5307098 small_5307098_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.root_5307104 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5307098_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.cover_5307104
#print axioms cover_5307098

def root_5341227 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5341227_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5341227_right_fuel : Nat := 28
def small_5341227_right_count : Nat := 231
def small_5341227_right_encoded : String := "0F34D108000000040C9A86F80F878CF900000001078000FA128A7CFB0000000207800106128A4107000000030000000A128A7D07022A457713E201000AD3577F10D13D080DE7C9F8000000090E5FD8F90000000A00000001000000040000000A000000000000000900000003000000090F8750F9078000FA128A7CFB0000000207800106128A410700000003022A457713E201000AD3577F10D13D080B4D43F80000000A108010F908C000FA0000000A11FBE8FB0000000A00000002000000010000000410D10108000000040000000A0000000013E1C500000000000AD3577F10D13D080B4D43F810804CF90000000108C000FA11FC24FB000000020000000900000009108010F908C000FA11FC24FB000000020640010612FF710700000003011523370000000A13F85900000000000BE879BF1011AD080AA6A2780000000910ED70F9096000FA11AABCFB0000000205A00106000000091331710700000009000000030000000900000001000000040000000912FFAD070115233713F895000BE879BF1011AD080AA6A27810EDACF900000001096000FA0000000A0000000500000005000000041011710800000004000000090000000013F85900000000000BE879BF1011AD080AA6A2780000000910ED70F9000000050000000100000004000000090000000311FBE8FB0640010612FF710700000003011523370000000A0000000912FFAD070115233700000005000000090000000300000002000000010000000410D101080000000400000009128A7D07022A457713E201000AD3577F10D13D080B4D43F810804CF90000000108C000FA11FC24FB0000000208C0010611FBE907000000030000000A0000000500000005000000050000000410D10108000000040B4D43F810804CF90000000100000009000000050000000013E1C500000000000AD3577F10D13D080B4D43F810804CF90000000108C000FA11FC24FB000000020000000900000009108010F908C000FA11FC24FB0000000208C0010611FBE90700000003011523370000000513F85900000000000BE879BF00000005000000090000000500000005000000010000000410D10108000000040000000900000003128A40FB07800106128A410700000003022A457713E201000AD3577F10D13D080B4D43F80000000A00000005000000040000000A0000000013E1C500000000000AD3577F0000000900000009128A7D07022A45770000000513E1C500000000000AD3577F0000000500000009000000030000000200000001"
theorem small_5341227_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5341227_right_root small_5341227_right_fuel small_5341227_right_count small_5341227_right_encoded = true := by
  decide +kernel
theorem small_5341227_right_covered : CoveredBy scale carrier boxes small_5341227_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5341227_right_root small_5341227_right_fuel small_5341227_right_count small_5341227_right_encoded small_5341227_right_checked

theorem cover_5341227 : CoveredBy scale carrier boxes root_5341227 := by
  apply coveredBy_split_literal root_5341227 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2003.root small_5341227_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2003.covered
  · exact small_5341227_right_covered
#print axioms cover_5341227

def root_5341221 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5341221_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5341221_left_fuel : Nat := 1
def small_5341221_left_count : Nat := 1
def small_5341221_left_encoded : String := "00000001"
theorem small_5341221_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5341221_left_root small_5341221_left_fuel small_5341221_left_count small_5341221_left_encoded = true := by
  decide +kernel
theorem small_5341221_left_covered : CoveredBy scale carrier boxes small_5341221_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5341221_left_root small_5341221_left_fuel small_5341221_left_count small_5341221_left_encoded small_5341221_left_checked

theorem cover_5341221 : CoveredBy scale carrier boxes root_5341221 := by
  apply coveredBy_split_literal root_5341221 small_5341221_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.root_5341227 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5341221_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.cover_5341227
#print axioms cover_5341221

def root_5341220 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5341220_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5341220_right_fuel : Nat := 15
def small_5341220_right_count : Nat := 69
def small_5341220_right_encoded : String := "0F34D0F80CFD9BFF0F350D080C9A87080F8750FF078000FA128A7CFB0000000207800106128A410700000003022A45770000000A13E1C500000000000AD3577910D13CF8000000010B4D4408000000050000000900000005128A7D07022A457713E201000AD3577910D13CF80000000100000007000000070000000013E1C500000000000AD3577910D13CF800000001000000070000000700000003128A40FB07800106128A410700000003022A45770000000A00000007128A7D07000000070000000300000002000000040F878CFF00000004078000FA128A7CFB00000002078001060000000A128A7D07022A45770000000A000000090000000300000009000000040F34D108000000040000000900000001"
theorem small_5341220_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5341220_right_root small_5341220_right_fuel small_5341220_right_count small_5341220_right_encoded = true := by
  decide +kernel
theorem small_5341220_right_covered : CoveredBy scale carrier boxes small_5341220_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5341220_right_root small_5341220_right_fuel small_5341220_right_count small_5341220_right_encoded small_5341220_right_checked

theorem cover_5341220 : CoveredBy scale carrier boxes root_5341220 := by
  apply coveredBy_split_literal root_5341220 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.root_5341221 small_5341220_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.cover_5341221
  · exact small_5341220_right_covered
#print axioms cover_5341220

def root_5341214 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5341214_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5341214_left_fuel : Nat := 1
def small_5341214_left_count : Nat := 1
def small_5341214_left_encoded : String := "00000000"
theorem small_5341214_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5341214_left_root small_5341214_left_fuel small_5341214_left_count small_5341214_left_encoded = true := by
  decide +kernel
theorem small_5341214_left_covered : CoveredBy scale carrier boxes small_5341214_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5341214_left_root small_5341214_left_fuel small_5341214_left_count small_5341214_left_encoded small_5341214_left_checked

theorem cover_5341214 : CoveredBy scale carrier boxes root_5341214 := by
  apply coveredBy_split_literal root_5341214 small_5341214_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.root_5341220 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5341214_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.cover_5341220
#print axioms cover_5341214

def root_5340554 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5340554_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5340554_left_fuel : Nat := 23
def small_5340554_left_count : Nat := 311
def small_5340554_left_encoded : String := "1386AD000CFD9BF90F350CF8000000010CFD9BFF0F350D080C9A86F80F878CF9000000010C9A87080F8750FF078000FA128A7CFB0000000207800106128A410700000003067ECE770000000A12EA5900000000000DE7C9F80E6014F9000000010000000A0E5FD8F90B4D4408108010FF00000007000000040000000A00000001128A7D07067ECE7712EA95000DE7C9F80E6014F90000000100000007000000070000000012EA5900000000000DE7C9F80E6014F900000001000000070000000700000003128A40FB07800106128A410700000003067ECE770000000A12EA5900000000000DE7C9F80E6014F9000000010000000700000007128A7D07067ECE7700000007000000070000000300000002000000040F878CFF00000004078000FA128A7CFB00000002078001060000000A128A7D07067ECE770000000A12EA5900000000000DE7C9F80E6014F9000000010000000A0E5FD8F90DE7CA080E5FD8FF08C000FA11FC24FB0000000208C00106000000070000000700000007000000040000000A0000000100000003128A40FB078001060000000A128A7D07067ECE770000000A12EA5900000000000DE7C9F80000000A0E5FD8F9000000050000000100000003000000020F8750F90C9A87080F8750FF078000FA128A7CFB0000000207800106128A410700000003067ECE7712EA95000B4D43F810804CF9000000010B4D4408000000060000000A000000060000000012EA5900000000000B4D43F810804CF9000000010B4D4408108010FF000000070000000410804CFF0000000408C000FA11FC24FB00000002064001060000000A0000000711FBE8FB0000000700000002108010F90B4D4408108010FF000000070000000410804CFF0000000408C000FA000000090000000500000001128A7D07067ECE770000000512EA5900000000000B4D43F810804CF900000001000000070000000500000003128A40FB07800106128A410700000003067ECE770000000512EA5900000000000B4D43F810804CF90000000100000007000000050000000500000002000000040F878CFF00000004078000FA128A7CFB0000000207800106128A410700000003067ECE770000000A12EA5900000000000B4D43F810804CF9000000010000000A108010F90DE7CA080E5FD8FF08C000FA11FC24FB0000000206400106000000060000000500000005000000040000000A00000001128A7D07067ECE770000000512EA5900000000000B4D43F810804CF9000000010DE7CA080E5FD8FF0000000500000004000000050000000500000003128A40FB07800106128A410700000003067ECE770000000512EA5900000000000B4D43F810804CF9000000010000000A00000005000000050000000200000001000000040F34D108000000040C9A86F80F878CF9000000010000000A0F8750F9078000FA128A7CFB00000002078001060000000A128A7D07067ECE770000000A12EA5900000000000AD3577F10D13D080B4D43F810804CF9000000010000000A000000050000000410D10108000000040000000A00000003128A40FB078001060000000A0000000500000002000000010F34D0F80CFD9BFF0F350D080C9A87080F8750FF078000FA0000000A128A40FB078001060000000A128A7D07067ECE770000000A000000070000000300000002000000040000000A000000040F34D108000000040000000A0000000100000000"
theorem small_5340554_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5340554_left_root small_5340554_left_fuel small_5340554_left_count small_5340554_left_encoded = true := by
  decide +kernel
theorem small_5340554_left_covered : CoveredBy scale carrier boxes small_5340554_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5340554_left_root small_5340554_left_fuel small_5340554_left_count small_5340554_left_encoded small_5340554_left_checked

theorem cover_5340554 : CoveredBy scale carrier boxes root_5340554 := by
  apply coveredBy_split_literal root_5340554 small_5340554_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.root_5341214 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5340554_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.cover_5341214
#print axioms cover_5340554

def root_5340549 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5340549_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5340549_right_fuel : Nat := 1
def small_5340549_right_count : Nat := 1
def small_5340549_right_encoded : String := "00000003"
theorem small_5340549_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5340549_right_root small_5340549_right_fuel small_5340549_right_count small_5340549_right_encoded = true := by
  decide +kernel
theorem small_5340549_right_covered : CoveredBy scale carrier boxes small_5340549_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5340549_right_root small_5340549_right_fuel small_5340549_right_count small_5340549_right_encoded small_5340549_right_checked

theorem cover_5340549 : CoveredBy scale carrier boxes root_5340549 := by
  apply coveredBy_split_literal root_5340549 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.root_5340554 small_5340549_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.cover_5340554
  · exact small_5340549_right_covered
#print axioms cover_5340549

def root_5338537 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5338537 : CoveredBy scale carrier boxes root_5338537 := by
  apply coveredBy_split_literal root_5338537 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2002.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.root_5340549 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2002.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.cover_5340549
#print axioms cover_5338537

def root_5338531 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338531_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338531_left_fuel : Nat := 1
def small_5338531_left_count : Nat := 1
def small_5338531_left_encoded : String := "00000002"
theorem small_5338531_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5338531_left_root small_5338531_left_fuel small_5338531_left_count small_5338531_left_encoded = true := by
  decide +kernel
theorem small_5338531_left_covered : CoveredBy scale carrier boxes small_5338531_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5338531_left_root small_5338531_left_fuel small_5338531_left_count small_5338531_left_encoded small_5338531_left_checked

theorem cover_5338531 : CoveredBy scale carrier boxes root_5338531 := by
  apply coveredBy_split_literal root_5338531 small_5338531_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.root_5338537 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5338531_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.cover_5338537
#print axioms cover_5338531

def root_5338530 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338530_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338530_right_fuel : Nat := 21
def small_5338530_right_count : Nat := 253
def small_5338530_right_encoded : String := "135D44FB05000106135D450700000003045489F71386AD000CFD9BF90F350CF8000000010CFD9BFF0F350D080C9A86F80F878CF9000000010C9A8708000000060000000A00000006000000040F34D108000000040000000A0F34D0F80000000A000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFF0F350D080C9A86F80F878CF9000000010C9A87080F8750FF028000FA13D7ECFB0000000202800106000000080000000800000008000000040F878CFF00000004000000090F8750F90C9A87080F8750FF028000FA13D7ECFB00000002028001060000000613D7ED07022A457700000006000000070000000300000006000000040F878CFF00000004028000FA13D7ECFB00000002028001060000000613D7ED07022A45770000000613E1C500000000000B4D43F80000000900000006000000030000000600000001000000040F34D10800000004000000090F34D0F80CFD9BFF0F350D080C9A87080F8750FF028000FA00000009000000080000000400000009000000040000000900000001135D8107045489F71386AD000CFD9BF90F350CF8000000010CFD9BFF0F350D080C9A86F80F878CF9000000010C9A87080F8750FF028000FA13D7ECFB0000000207800106128A410700000003067ECE7700000006000000070000000713D7B0FB07800106000000060000000500000002000000040F878CFF00000004028000FA13D7ECFB00000002078001060000000A128A7D07000000050000000313D7B0FB078001060000000600000005000000020F8750F90C9A87080F8750FF00000005000000040000000500000001000000040F34D108000000040C9A86F80F878CF9000000010000000A0F8750F900000005000000010F34D0F80CFD9BFF0F350D080C9A87080F8750FF028000FA13D7ECFB00000002078001060000000A128A7D07000000070000000300000009000000040000000A000000040F34D1080000000400000009000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFF0F350D080C9A86F80F878CF9000000010C9A87080F8750FF028000FA13D7ECFB0000000207800106000000070000000700000007000000040F878CFF00000004000000090F8750F90C9A87080F8750FF028000FA13D7ECFB0000000207800106000000070000000500000005000000040F878CFF00000004028000FA13D7ECFB0000000207800106128A410700000003022A45770000000513E1C5000000000000000005000000050000000500000001000000040F34D108000000040C9A86F8000000090F8750F9028000FA13D7ECFB0000000207800106000000090000000500000005000000010F34D0F80CFD9BFF0000000900000009000000010000000300000002"
theorem small_5338530_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5338530_right_root small_5338530_right_fuel small_5338530_right_count small_5338530_right_encoded = true := by
  decide +kernel
theorem small_5338530_right_covered : CoveredBy scale carrier boxes small_5338530_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5338530_right_root small_5338530_right_fuel small_5338530_right_count small_5338530_right_encoded small_5338530_right_checked

theorem cover_5338530 : CoveredBy scale carrier boxes root_5338530 := by
  apply coveredBy_split_literal root_5338530 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.root_5338531 small_5338530_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.cover_5338531
  · exact small_5338530_right_covered
#print axioms cover_5338530

def root_5338525 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338525_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338525_right_fuel : Nat := 1
def small_5338525_right_count : Nat := 1
def small_5338525_right_encoded : String := "00000004"
theorem small_5338525_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5338525_right_root small_5338525_right_fuel small_5338525_right_count small_5338525_right_encoded = true := by
  decide +kernel
theorem small_5338525_right_covered : CoveredBy scale carrier boxes small_5338525_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5338525_right_root small_5338525_right_fuel small_5338525_right_count small_5338525_right_encoded small_5338525_right_checked

theorem cover_5338525 : CoveredBy scale carrier boxes root_5338525 := by
  apply coveredBy_split_literal root_5338525 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.root_5338530 small_5338525_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.cover_5338530
  · exact small_5338525_right_covered
#print axioms cover_5338525

def root_5338524 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338524_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338524_right_fuel : Nat := 19
def small_5338524_right_count : Nat := 63
def small_5338524_right_encoded : String := "1207010800000004050000FA135D80FB0000000205000106135D4507000000030000000A135D8107045489F70000000A13867100000000000CFD9BF90F350CF800000001045489FF1386AD080C9A86F80F878CF900000001000000090F8750F9078000FA128A7CFB0000000207800106128A4107000000030000000A128A7D07022A45770000000A000000090000000300000009000000010000000413867108000000040C9A86F8000000090F8750F9078000FA0000000A00000009000000010000000A00000003135D44FB05000106135D4507000000030000000A135D8107045489F70000000A1386710000000000000000090000000300000002"
theorem small_5338524_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5338524_right_root small_5338524_right_fuel small_5338524_right_count small_5338524_right_encoded = true := by
  decide +kernel
theorem small_5338524_right_covered : CoveredBy scale carrier boxes small_5338524_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5338524_right_root small_5338524_right_fuel small_5338524_right_count small_5338524_right_encoded small_5338524_right_checked

theorem cover_5338524 : CoveredBy scale carrier boxes root_5338524 := by
  apply coveredBy_split_literal root_5338524 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.root_5338525 small_5338524_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.cover_5338525
  · exact small_5338524_right_covered
#print axioms cover_5338524

def root_5338518 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338518_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338518_left_fuel : Nat := 1
def small_5338518_left_count : Nat := 1
def small_5338518_left_encoded : String := "00000001"
theorem small_5338518_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5338518_left_root small_5338518_left_fuel small_5338518_left_count small_5338518_left_encoded = true := by
  decide +kernel
theorem small_5338518_left_covered : CoveredBy scale carrier boxes small_5338518_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5338518_left_root small_5338518_left_fuel small_5338518_left_count small_5338518_left_encoded small_5338518_left_checked

theorem cover_5338518 : CoveredBy scale carrier boxes root_5338518 := by
  apply coveredBy_split_literal root_5338518 small_5338518_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.root_5338524 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5338518_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.cover_5338524
#print axioms cover_5338518

def root_5338517 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338517_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338517_right_fuel : Nat := 7
def small_5338517_right_count : Nat := 15
def small_5338517_right_encoded : String := "120700F808A912FF12073D08050000FA0000000A135D44FB050001060000000A00000009000000020000000412070108000000040000000900000001"
theorem small_5338517_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5338517_right_root small_5338517_right_fuel small_5338517_right_count small_5338517_right_encoded = true := by
  decide +kernel
theorem small_5338517_right_covered : CoveredBy scale carrier boxes small_5338517_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5338517_right_root small_5338517_right_fuel small_5338517_right_count small_5338517_right_encoded small_5338517_right_checked

theorem cover_5338517 : CoveredBy scale carrier boxes root_5338517 := by
  apply coveredBy_split_literal root_5338517 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.root_5338518 small_5338517_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.cover_5338518
  · exact small_5338517_right_covered
#print axioms cover_5338517

def root_5338511 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338511_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338511_left_fuel : Nat := 1
def small_5338511_left_count : Nat := 1
def small_5338511_left_encoded : String := "00000000"
theorem small_5338511_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5338511_left_root small_5338511_left_fuel small_5338511_left_count small_5338511_left_encoded = true := by
  decide +kernel
theorem small_5338511_left_covered : CoveredBy scale carrier boxes small_5338511_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5338511_left_root small_5338511_left_fuel small_5338511_left_count small_5338511_left_encoded small_5338511_left_checked

theorem cover_5338511 : CoveredBy scale carrier boxes root_5338511 := by
  apply coveredBy_split_literal root_5338511 small_5338511_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.root_5338517 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5338511_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.cover_5338517
#print axioms cover_5338511

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376
