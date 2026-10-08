import TaoBundleAssembly0362
import TaoBundleAssembly0363
import TaoBundleAssembly0364
import TaoBundleChunkBatch0483
import TaoBundleChunkBatch0485
import TaoBundleChunkBatch0486
import TaoBundleChunkBatch0487
import TaoBundleChunkBatch0488
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365
def root_5177583 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177583_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177583_left_fuel : Nat := 18
def small_5177583_left_count : Nat := 157
def small_5177583_left_encoded : String := "12073D0008A912F912073CF80000000108A91307120700FC050000FA135D80FB0000000205000108135D44FF0CFD9BF7000000050000000700000004135D80FF000000040CFD9BF70F350D000000000A000000000F34D100000000000CFD9BF90F350CF80000000104548A07000000050000000A0000000A135D44FB0500010800000007135D80FF000000040CFD9BF7000000050F34D100000000000CFD9BF90000000500000007000000020000000312073CFC00000003050000FA135D80FB0000000205000108135D44FF0CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9C0700000005000000060F34D0F80000000A00000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9C070F34D0FC0C9A86F80F878CF900000001000000070F8750F90000000600000001000000030F350CFC00000003000000060F34D0F80CFD9C070F34D0FC00000007000000030000000A0000000100000004135D80FF000000040CFD9BF70F350D000000000A000000000F34D100000000000CFD9BF90F350CF8000000010CFD9C070F34D0FC0000000A000000030000000A0F34D0F80000000A00000001135D44FB05000108135D44FF0CFD9BF70F350D000CFD9BF90000000600000006000000000F34D100000000000CFD9BF90F350CF800000001000000060F34D0F80CFD9C0700000007000000060000000100000004135D80FF000000040CFD9BF70F350D000000000A000000000F34D100000000000CFD9BF90F350CF800000001000000060000000A00000002120700F808A91307120700FC050000FA0000000A000000070000000312073CFC00000003050000FA0000000A0000000A0000000100000000"
theorem small_5177583_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5177583_left_root small_5177583_left_fuel small_5177583_left_count small_5177583_left_encoded = true := by
  decide +kernel
theorem small_5177583_left_covered : CoveredBy scale carrier boxes small_5177583_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5177583_left_root small_5177583_left_fuel small_5177583_left_count small_5177583_left_encoded small_5177583_left_checked

theorem cover_5177583 : CoveredBy scale carrier boxes root_5177583 := by
  apply coveredBy_split_literal root_5177583 small_5177583_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5177921 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5177583_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5177921
#print axioms cover_5177583

def root_5177578 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177578_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177578_right_fuel : Nat := 1
def small_5177578_right_count : Nat := 1
def small_5177578_right_encoded : String := "00000004"
theorem small_5177578_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5177578_right_root small_5177578_right_fuel small_5177578_right_count small_5177578_right_encoded = true := by
  decide +kernel
theorem small_5177578_right_covered : CoveredBy scale carrier boxes small_5177578_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5177578_right_root small_5177578_right_fuel small_5177578_right_count small_5177578_right_encoded small_5177578_right_checked

theorem cover_5177578 : CoveredBy scale carrier boxes root_5177578 := by
  apply coveredBy_split_literal root_5177578 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5177583 small_5177578_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5177583
  · exact small_5177578_right_covered
#print axioms cover_5177578

def root_5177577 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177577_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177577_right_fuel : Nat := 27
def small_5177577_right_count : Nat := 235
def small_5177577_right_encoded : String := "115224FF0000000408A912F712073D0008A912F912073CF80000000108A91307120700FC08A912FF12073D08050000FA0000000A135D44FB0000000A00000002000000040000000A0000000312073CFC0000000308A912FF12073D08050000FA0000000A135D44FB0000000A00000002000000040000000A120700F80000000A0000000100000000120701000000000008A912F912073CF80000000108A91307120700FC08A912FF12073D08050000FA135D80FB00000002045489F71386AD000CFD9BF90F350CF80000000104548A070000000A0000000A0000000A0000000013867100000000000CFD9BF90F350CF80000000104548A07138670FC0CFD9BFF0F350D080C9A86F80000000A0F8750F90C9A87080F8750FF078000FA0000000800000009000000040000000A000000010000000400000009000000031386ACFC000000030CFD9BFF0F350D080C9A86F80000000A0F8750F90C9A87080F8750FF078000FA0000000A0000000A000000040000000A00000001000000040000000A0F34D0F80000000A00000001135D44FB045489F70000000A13867100000000000CFD9BF90F350CF80000000104548A070000000A0000000A0000000A000000020000000412070108000000040000000A0000000312073CFC0000000308A912FF12073D08050000FA135D80FB00000002045489F71386AD000CFD9BF90F350CF8000000010CFD9C070F34D0FC0000000A000000030000000A0000000A0000000013867100000000000CFD9BF90F350CF8000000010CFD9C070F34D0FC0CFD9BFF0F350D080C9A86F80000000A0F8750F90C9A87080F8750FF078000FA0000000A0000000A000000040000000A00000001000000040000000A000000030F350CFC000000030CFD9BFF0F350D080C9A86F80F878CF9000000010000000A0F8750F90C9A86FC0F878D070C9A87080F8750FF078000FA0000000A00000006000000040000000A000000030F875107000000030C9A8708000000060000000A00000001000000040F34D108000000040000000A0F34D0F80000000A00000001135D44FB045489F71386AD000CFD9BF90F350CF8000000010CFD9C070000000A0000000A0000000A0000000013867100000000000CFD9BF90F350CF8000000010CFD9C070F34D0FC0000000A000000030F350CFC000000030CFD9BFF0F350D080C9A86F80000000A00000006000000040000000A0F34D0F80000000A00000001000000020000000412070108000000040000000A120700F808A91307120700FC0000000A000000030000000A00000001"
theorem small_5177577_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5177577_right_root small_5177577_right_fuel small_5177577_right_count small_5177577_right_encoded = true := by
  decide +kernel
theorem small_5177577_right_covered : CoveredBy scale carrier boxes small_5177577_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5177577_right_root small_5177577_right_fuel small_5177577_right_count small_5177577_right_encoded small_5177577_right_checked

theorem cover_5177577 : CoveredBy scale carrier boxes root_5177577 := by
  apply coveredBy_split_literal root_5177577 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5177578 small_5177577_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5177578
  · exact small_5177577_right_covered
#print axioms cover_5177577

def root_5177572 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177572_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177572_right_fuel : Nat := 1
def small_5177572_right_count : Nat := 1
def small_5177572_right_encoded : String := "00000003"
theorem small_5177572_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5177572_right_root small_5177572_right_fuel small_5177572_right_count small_5177572_right_encoded = true := by
  decide +kernel
theorem small_5177572_right_covered : CoveredBy scale carrier boxes small_5177572_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5177572_right_root small_5177572_right_fuel small_5177572_right_count small_5177572_right_encoded small_5177572_right_checked

theorem cover_5177572 : CoveredBy scale carrier boxes root_5177572 := by
  apply coveredBy_split_literal root_5177572 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5177577 small_5177572_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5177577
  · exact small_5177572_right_covered
#print axioms cover_5177572

def root_5177571 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5177571 : CoveredBy scale carrier boxes root_5177571 := by
  apply coveredBy_split_literal root_5177571 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5177572 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1940.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5177572
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1940.covered
#print axioms cover_5177571

def root_5177566 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177566_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177566_right_fuel : Nat := 1
def small_5177566_right_count : Nat := 1
def small_5177566_right_encoded : String := "00000002"
theorem small_5177566_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5177566_right_root small_5177566_right_fuel small_5177566_right_count small_5177566_right_encoded = true := by
  decide +kernel
theorem small_5177566_right_covered : CoveredBy scale carrier boxes small_5177566_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5177566_right_root small_5177566_right_fuel small_5177566_right_count small_5177566_right_encoded small_5177566_right_checked

theorem cover_5177566 : CoveredBy scale carrier boxes root_5177566 := by
  apply coveredBy_split_literal root_5177566 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5177571 small_5177566_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5177571
  · exact small_5177566_right_covered
#print axioms cover_5177566

def root_5162198 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5162198 : CoveredBy scale carrier boxes root_5162198 := by
  apply coveredBy_split_literal root_5162198 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5162199 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5177566 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5162199
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5177566
#print axioms cover_5162198

def root_5162192 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5162192_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5162192_left_fuel : Nat := 1
def small_5162192_left_count : Nat := 1
def small_5162192_left_encoded : String := "00000001"
theorem small_5162192_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5162192_left_root small_5162192_left_fuel small_5162192_left_count small_5162192_left_encoded = true := by
  decide +kernel
theorem small_5162192_left_covered : CoveredBy scale carrier boxes small_5162192_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5162192_left_root small_5162192_left_fuel small_5162192_left_count small_5162192_left_encoded small_5162192_left_checked

theorem cover_5162192 : CoveredBy scale carrier boxes root_5162192 := by
  apply coveredBy_split_literal root_5162192 small_5162192_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5162198 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5162192_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5162198
#print axioms cover_5162192

def root_5185071 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5185071 : CoveredBy scale carrier boxes root_5185071 := by
  apply coveredBy_split_literal root_5185071 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1942.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1943.root coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1942.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1943.covered
#print axioms cover_5185071

def root_5185065 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185065_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185065_left_fuel : Nat := 1
def small_5185065_left_count : Nat := 1
def small_5185065_left_encoded : String := "00000001"
theorem small_5185065_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5185065_left_root small_5185065_left_fuel small_5185065_left_count small_5185065_left_encoded = true := by
  decide +kernel
theorem small_5185065_left_covered : CoveredBy scale carrier boxes small_5185065_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5185065_left_root small_5185065_left_fuel small_5185065_left_count small_5185065_left_encoded small_5185065_left_checked

theorem cover_5185065 : CoveredBy scale carrier boxes root_5185065 := by
  apply coveredBy_split_literal root_5185065 small_5185065_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5185071 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5185065_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5185071
#print axioms cover_5185065

def root_5185064 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185064_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185064_right_fuel : Nat := 21
def small_5185064_right_count : Nat := 141
def small_5185064_right_encoded : String := "135D44F905000108135D44FF045489F71386AD000CFD9BFB0F350CFA0000000204548A07000000051386ACFC000000030C9A86FA000000090F8750FB00000005000000020F34D0FA04548A070000000800000009000000020000000013867100000000000CFD9BFB0F350CFA0000000204548A07138670FC0C9A86FA0F878CFB000000020000000A0F8750FB0000000500000002000000031386ACFC000000030C9A86FA000000090F8750FB00000009000000020F34D0FA04548A070000000A000000090000000200000004135D80FF00000004045489F71386AD000CFD9BFB0F350CFA0000000204548A07000000051386ACFC000000030C9A86FA0F878CFB00000002028000F800000008000000080F8750FB00000006000000020F34D0FA04548A070000000800000007000000020000000013867100000000000CFD9BFB0F350CFA0000000204548A07138670FC0C9A86FA000000080F8750FB028000F813D7ECF90000000107800108128A40FF00000005000000040000000813D7B0F9000000050000000100000002000000031386ACFC000000030C9A86FA0F878CFB00000002000000070F8750FB028000F813D7ECF90000000107800108128A40FF022A457713E20100067ECE8700000005000000060000000013E1C50000000000067ECE8712EA58FC0B4D43FA0000000700000006000000030000000600000004128A7CFF000000040000000713D7B0F907800108000000060000000600000001000000020F34D0FA000000070000000200000001"
theorem small_5185064_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5185064_right_root small_5185064_right_fuel small_5185064_right_count small_5185064_right_encoded = true := by
  decide +kernel
theorem small_5185064_right_covered : CoveredBy scale carrier boxes small_5185064_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5185064_right_root small_5185064_right_fuel small_5185064_right_count small_5185064_right_encoded small_5185064_right_checked

theorem cover_5185064 : CoveredBy scale carrier boxes root_5185064 := by
  apply coveredBy_split_literal root_5185064 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5185065 small_5185064_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5185065
  · exact small_5185064_right_covered
#print axioms cover_5185064

def root_5185059 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185059_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185059_right_fuel : Nat := 1
def small_5185059_right_count : Nat := 1
def small_5185059_right_encoded : String := "00000003"
theorem small_5185059_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5185059_right_root small_5185059_right_fuel small_5185059_right_count small_5185059_right_encoded = true := by
  decide +kernel
theorem small_5185059_right_covered : CoveredBy scale carrier boxes small_5185059_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5185059_right_root small_5185059_right_fuel small_5185059_right_count small_5185059_right_encoded small_5185059_right_checked

theorem cover_5185059 : CoveredBy scale carrier boxes root_5185059 := by
  apply coveredBy_split_literal root_5185059 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5185064 small_5185059_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5185064
  · exact small_5185059_right_covered
#print axioms cover_5185059

def root_5185058 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185058_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185058_right_fuel : Nat := 30
def small_5185058_right_count : Nat := 497
def small_5185058_right_encoded : String := "12073CFC00000003050000F8135D80F90000000105000108135D44FF045489F71386AD000CFD9BFB0F350CFA000000020CFD9C070F34D0FC0C9A86FA000000090F8750FB078000F8128A7CF900000001028001080000000913D7ECFF00000004067ECE770000000612EA59000000000000000009000000060000000200000003000000090F34D0FA00000009000000020000000013867100000000000CFD9BFB0F350CFA000000020CFD9C070F34D0FC0C9A86FA0F878CFB00000002078000F8128A7CF900000001028001080000000913D7ECFF00000004022A45770000000900000005000000090F8750FB078000F8128A7CF900000001028001080000000913D7ECFF00000004022A457713E201000AD3578710D100FC0B4D43FA000000090000000900000003000000090000000013E1C500000000000AD3578710D100FC0B4D43FA00000009108010FB00000009000000020000000300000005000000090000000200000003000000090F34D0FA0CFD9C070F34D0FC0000000500000003000000050000000200000004135D80FF00000004045489F71386AD000CFD9BFB0F350CFA000000020CFD9C070F34D0FC0C9A86FA0F878CFB00000002078000F8128A7CF90000000107800108128A40FF067ECE7712EA95000AD3578700000008000000090000000012EA5900000000000AD35787000000080000000900000004128A7CFF00000004067ECE770000000812EA59000000000000000008128A40F907800108128A40FF0000000900000004128A7CFF0000000400000008000000010F8750FB078000F8128A7CF90000000107800108128A40FF067ECE770000000612EA5900000000000AD3578710D100FC00000006000000030000000600000004128A7CFF00000004067ECE770000000612EA5900000000000AD3578710D100FC000000060000000300000006128A40F9000000060000000100000002000000030F350CFC000000030C9A86FA0F878CFB000000020C9A86FC0F878D07078000F8128A7CF9000000010780010800000009128A7CFF00000004067ECE770000000612EA5900000000000DE7C9FA000000050000000600000006000000030F87510700000003000000090F8750FB0C9A86FC0000000600000006000000020F34D0FA0CFD9C070F34D0FC078000F8128A7CF900000001078001080000000800000007128A40F907800108000000080000000700000001000000030F350CFC000000030C9A86FC0F878D07078000F8128A7CF9000000010000000500000009000000030F8751070000000300000005000000020000000013867100000000000CFD9BFB0F350CFA000000020CFD9C070F34D0FC0C9A86FA0F878CFB00000002078000F8128A7CF90000000107800108128A40FF022A457713E201000AD3578710D100FC0DE7C9FA000000070E5FD8FB08C000F811FC24F9000000010640010800000009000000070000000900000002000000030000000500000000000000050000000400000007128A40F907800108128A40FF022A457700000009000000070000000400000007000000010F8750FB078000F8128A7CF90000000107800108128A40FF022A457713E201000AD3578710D100FC0B4D43FA10804CFB0000000208C000F811FC24F9000000010640010812FF70FF000000090000000412FFACFF00000004033F67B70000000613BBF500000000000000000711FBE8F90000000600000001108010FB00000006000000020000000310D13CFC00000003000000060000000013E1C500000000000AD3578710D100FC0B4D43FA10804CFB0000000208C000F811FC24F9000000010000000511FBE8F90000000700000001108010FB08C000F811FC24F9000000010640010812FF70FF0115233700000006000000050000000412FFACFF000000040115233700000006000000050000000600000002000000030000000500000004128A7CFF00000004022A457713E201000AD3578710D100FC0B4D43FA00000007000000060000000310D13CFC00000003000000060000000013E1C500000000000AD3578710D100FC000000070000000300000005128A40F907800108128A40FF022A45770000000613E1C500000000000AD3578710D100FC0B4D43FA0000000700000006000000030000000600000004128A7CFF00000004022A457700000006000000070000000100000002000000030F350CFC000000030C9A86FA0F878CFB000000020C9A86FC0F878D07078000F80000000500000009000000030F87510700000003000000050F8750FB0C9A86FC0F878D07078000F8128A7CF90000000107800108128A40FF0000000900000004128A7CFF00000004022A4577000000060000000500000006000000030F87510700000003078000F8128A7CF90000000107800108000000050000000600000006000000020F34D0FA0CFD9C070F34D0FC00000007000000030000000500000002135D44F905000108135D44FF045489F70000000913867100000000000000000900000004135D80FF00000004045489F71386AD000CFD9BFB0F350CFA000000020CFD9C070F34D0FC0C9A86FA000000090000000600000003000000060F34D0FA00000009000000020000000013867100000000000CFD9BFB0F350CFA000000020CFD9C070F34D0FC0C9A86FA0F878CFB00000002000000070F8750FB000000060000000200000003000000090F34D0FA0CFD9C070F34D0FC0000000700000003000000070000000200000001"
theorem small_5185058_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5185058_right_root small_5185058_right_fuel small_5185058_right_count small_5185058_right_encoded = true := by
  decide +kernel
theorem small_5185058_right_covered : CoveredBy scale carrier boxes small_5185058_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5185058_right_root small_5185058_right_fuel small_5185058_right_count small_5185058_right_encoded small_5185058_right_checked

theorem cover_5185058 : CoveredBy scale carrier boxes root_5185058 := by
  apply coveredBy_split_literal root_5185058 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5185059 small_5185058_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5185059
  · exact small_5185058_right_covered
#print axioms cover_5185058

def root_5185052 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185052_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185052_left_fuel : Nat := 1
def small_5185052_left_count : Nat := 1
def small_5185052_left_encoded : String := "00000002"
theorem small_5185052_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5185052_left_root small_5185052_left_fuel small_5185052_left_count small_5185052_left_encoded = true := by
  decide +kernel
theorem small_5185052_left_covered : CoveredBy scale carrier boxes small_5185052_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5185052_left_root small_5185052_left_fuel small_5185052_left_count small_5185052_left_encoded small_5185052_left_checked

theorem cover_5185052 : CoveredBy scale carrier boxes root_5185052 := by
  apply coveredBy_split_literal root_5185052 small_5185052_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5185058 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5185052_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5185058
#print axioms cover_5185052

def root_5185051 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185051_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185051_right_fuel : Nat := 15
def small_5185051_right_count : Nat := 91
def small_5185051_right_encoded : String := "120700FA08A91307120700FC050000F8135D80F90000000105000108135D44FF045489F71386AD00045489FB1386ACFA0000000204548A07000000081386ACFC00000003078000F80000000800000008138670FA04548A07000000060000000700000002000000001386710000000000045489FB1386ACFA0000000204548A070000000600000007000000070000000400000007135D44F905000108135D44FF045489F71386AD00045489FB1386ACFA0000000204548A0700000008000000070000000700000000000000070000000400000007000000010000000312073CFC00000003050000F8135D80F90000000105000108135D44FF045489F71386AD00045489FB0000000900000005000000000000000500000004135D80FF00000004045489F71386AD00045489FB1386ACFA000000020CFD9C070F34D0FC000000050000000300000005000000050000000000000005135D44F90500010800000009000000070000000100000002"
theorem small_5185051_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5185051_right_root small_5185051_right_fuel small_5185051_right_count small_5185051_right_encoded = true := by
  decide +kernel
theorem small_5185051_right_covered : CoveredBy scale carrier boxes small_5185051_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5185051_right_root small_5185051_right_fuel small_5185051_right_count small_5185051_right_encoded small_5185051_right_checked

theorem cover_5185051 : CoveredBy scale carrier boxes root_5185051 := by
  apply coveredBy_split_literal root_5185051 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5185052 small_5185051_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5185052
  · exact small_5185051_right_covered
#print axioms cover_5185051

def root_5185045 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185045_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185045_left_fuel : Nat := 1
def small_5185045_left_count : Nat := 1
def small_5185045_left_encoded : String := "00000000"
theorem small_5185045_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5185045_left_root small_5185045_left_fuel small_5185045_left_count small_5185045_left_encoded = true := by
  decide +kernel
theorem small_5185045_left_covered : CoveredBy scale carrier boxes small_5185045_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5185045_left_root small_5185045_left_fuel small_5185045_left_count small_5185045_left_encoded small_5185045_left_checked

theorem cover_5185045 : CoveredBy scale carrier boxes root_5185045 := by
  apply coveredBy_split_literal root_5185045 small_5185045_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5185051 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5185045_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5185051
#print axioms cover_5185045

def root_5183159 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5183159 : CoveredBy scale carrier boxes root_5183159 := by
  apply coveredBy_split_literal root_5183159 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1941.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5185045 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1941.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5185045
#print axioms cover_5183159

def root_5183154 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5183154_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5183154_right_fuel : Nat := 1
def small_5183154_right_count : Nat := 1
def small_5183154_right_encoded : String := "00000004"
theorem small_5183154_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5183154_right_root small_5183154_right_fuel small_5183154_right_count small_5183154_right_encoded = true := by
  decide +kernel
theorem small_5183154_right_covered : CoveredBy scale carrier boxes small_5183154_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5183154_right_root small_5183154_right_fuel small_5183154_right_count small_5183154_right_encoded small_5183154_right_checked

theorem cover_5183154 : CoveredBy scale carrier boxes root_5183154 := by
  apply coveredBy_split_literal root_5183154 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5183159 small_5183154_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5183159
  · exact small_5183154_right_covered
#print axioms cover_5183154

def root_5183153 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5183153 : CoveredBy scale carrier boxes root_5183153 := by
  apply coveredBy_split_literal root_5183153 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5183154 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1944.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5183154
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1944.covered
#print axioms cover_5183153

def root_5183148 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5183148_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5183148_right_fuel : Nat := 1
def small_5183148_right_count : Nat := 1
def small_5183148_right_encoded : String := "00000003"
theorem small_5183148_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5183148_right_root small_5183148_right_fuel small_5183148_right_count small_5183148_right_encoded = true := by
  decide +kernel
theorem small_5183148_right_covered : CoveredBy scale carrier boxes small_5183148_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5183148_right_root small_5183148_right_fuel small_5183148_right_count small_5183148_right_encoded small_5183148_right_checked

theorem cover_5183148 : CoveredBy scale carrier boxes root_5183148 := by
  apply coveredBy_split_literal root_5183148 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5183153 small_5183148_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5183153
  · exact small_5183148_right_covered
#print axioms cover_5183148

def root_5183147 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5183147 : CoveredBy scale carrier boxes root_5183147 := by
  apply coveredBy_split_literal root_5183147 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5183148 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1945.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5183148
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1945.covered
#print axioms cover_5183147

def root_5183141 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5183141_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5183141_left_fuel : Nat := 1
def small_5183141_left_count : Nat := 1
def small_5183141_left_encoded : String := "00000002"
theorem small_5183141_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5183141_left_root small_5183141_left_fuel small_5183141_left_count small_5183141_left_encoded = true := by
  decide +kernel
theorem small_5183141_left_covered : CoveredBy scale carrier boxes small_5183141_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5183141_left_root small_5183141_left_fuel small_5183141_left_count small_5183141_left_encoded small_5183141_left_checked

theorem cover_5183141 : CoveredBy scale carrier boxes root_5183141 := by
  apply coveredBy_split_literal root_5183141 small_5183141_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5183147 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5183141_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5183147
#print axioms cover_5183141

def root_5193183 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5193183_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5193183_right_fuel : Nat := 24
def small_5193183_right_count : Nat := 179
def small_5193183_right_encoded : String := "1151E907000000030A0001081151E8FF08A912F7000000061207010000000000050000F8135D80F900000001050000FA135D80FB00000002050000FC135D81070500010800000006135D80FF000000040000000600000003135D4507000000030500010800000006135D80FF00000004045489F700000006138671000000000000000009135D44FB0000000600000002135D44F9000000060000000100000004115224FF0000000408A912F712073D0008A912FF12073D08050000F8135D80F90000000100000006000000060000000412070108000000040000000A00000000120701000000000008A912FF12073D08050000F8135D80F900000001050000FA135D80FB00000002050000FC135D8107045489F70000000613867100000000000CFD9BFF0F350D080C9A8708000000060F878CFF0000000400000006000000040000000600000003135D450700000003045489F71386AD000CFD9BFF0F350D080000000600000004000000060000000013867100000000000CFD9BFF0F350D080C9A87080F8750FF078000F8128A7CF9000000010000000600000006000000040F878CFF00000004078000F8128A7CF900000001078000FA128A7CFB00000002000000060000000600000006000000040F34D10800000004078000F8128A7CF900000001078000FA0000000A0000000600000006135D44FB050000FC00000006135D4507000000030000000600000002135D44F9050000FA135D80FB00000002050000FC00000006135D450700000003000000060000000600000001000000041207010800000004050000F8135D80F900000001050000FA135D80FB00000002050000FC00000006135D4507000000030000000A135D44FB050000FC00000006135D4507000000030000000A00000002135D44F9050000FA135D80FB00000002050000FC00000006135D450700000003045489F7000000061386710000000000000000060000000600000001"
theorem small_5193183_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5193183_right_root small_5193183_right_fuel small_5193183_right_count small_5193183_right_encoded = true := by
  decide +kernel
theorem small_5193183_right_covered : CoveredBy scale carrier boxes small_5193183_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5193183_right_root small_5193183_right_fuel small_5193183_right_count small_5193183_right_encoded small_5193183_right_checked

theorem cover_5193183 : CoveredBy scale carrier boxes root_5193183 := by
  apply coveredBy_split_literal root_5193183 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1946.root small_5193183_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1946.covered
  · exact small_5193183_right_covered
#print axioms cover_5193183

def root_5193178 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5193178_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5193178_right_fuel : Nat := 1
def small_5193178_right_count : Nat := 1
def small_5193178_right_encoded : String := "00000002"
theorem small_5193178_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5193178_right_root small_5193178_right_fuel small_5193178_right_count small_5193178_right_encoded = true := by
  decide +kernel
theorem small_5193178_right_covered : CoveredBy scale carrier boxes small_5193178_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5193178_right_root small_5193178_right_fuel small_5193178_right_count small_5193178_right_encoded small_5193178_right_checked

theorem cover_5193178 : CoveredBy scale carrier boxes root_5193178 := by
  apply coveredBy_split_literal root_5193178 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5193183 small_5193178_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5193183
  · exact small_5193178_right_covered
#print axioms cover_5193178

def root_5183140 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5183140 : CoveredBy scale carrier boxes root_5183140 := by
  apply coveredBy_split_literal root_5183140 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5183141 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5193178 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5183141
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5193178
#print axioms cover_5183140

def root_5183135 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5183135_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5183135_right_fuel : Nat := 1
def small_5183135_right_count : Nat := 1
def small_5183135_right_encoded : String := "00000001"
theorem small_5183135_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5183135_right_root small_5183135_right_fuel small_5183135_right_count small_5183135_right_encoded = true := by
  decide +kernel
theorem small_5183135_right_covered : CoveredBy scale carrier boxes small_5183135_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5183135_right_root small_5183135_right_fuel small_5183135_right_count small_5183135_right_encoded small_5183135_right_checked

theorem cover_5183135 : CoveredBy scale carrier boxes root_5183135 := by
  apply coveredBy_split_literal root_5183135 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5183140 small_5183135_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5183140
  · exact small_5183135_right_covered
#print axioms cover_5183135

def root_5162191 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5162191 : CoveredBy scale carrier boxes root_5162191 := by
  apply coveredBy_split_literal root_5162191 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5162192 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5183135 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5162192
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5183135
#print axioms cover_5162191

def root_5162185 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5162185_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5162185_left_fuel : Nat := 1
def small_5162185_left_count : Nat := 1
def small_5162185_left_encoded : String := "00000000"
theorem small_5162185_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5162185_left_root small_5162185_left_fuel small_5162185_left_count small_5162185_left_encoded = true := by
  decide +kernel
theorem small_5162185_left_covered : CoveredBy scale carrier boxes small_5162185_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5162185_left_root small_5162185_left_fuel small_5162185_left_count small_5162185_left_encoded small_5162185_left_checked

theorem cover_5162185 : CoveredBy scale carrier boxes root_5162185 := by
  apply coveredBy_split_literal root_5162185 small_5162185_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5162191 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5162185_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5162191
#print axioms cover_5162185

def root_5159597 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5159597 : CoveredBy scale carrier boxes root_5159597 := by
  apply coveredBy_split_literal root_5159597 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1932.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5162185 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1932.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5162185
#print axioms cover_5159597

def root_5159596 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5159596 : CoveredBy scale carrier boxes root_5159596 := by
  apply coveredBy_split_literal root_5159596 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5159597 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1947.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5159597
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1947.covered
#print axioms cover_5159596

def root_5136704 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5136704 : CoveredBy scale carrier boxes root_5136704 := by
  apply coveredBy_split_literal root_5136704 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0363.root_5136705 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5159596 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0363.cover_5136705
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5159596
#print axioms cover_5136704

def root_5076042 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5076042 : CoveredBy scale carrier boxes root_5076042 := by
  apply coveredBy_split_literal root_5076042 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5076043 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5136704 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5076043
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5136704
#print axioms cover_5076042

def root_5197648 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5197648 : CoveredBy scale carrier boxes root_5197648 := by
  apply coveredBy_split_literal root_5197648 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1948.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1949.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1948.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1949.covered
#print axioms cover_5197648

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365
