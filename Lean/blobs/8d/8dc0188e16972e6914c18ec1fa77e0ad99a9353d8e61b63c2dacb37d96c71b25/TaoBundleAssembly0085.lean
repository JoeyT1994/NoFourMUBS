import TaoBundleAssembly0084
import TaoBundleChunkBatch0334
import TaoBundleChunkBatch0335
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085
def root_3505915 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3505915_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3505915_left_fuel : Nat := 17
def small_3505915_left_count : Nat := 101
def small_3505915_left_encoded : String := "12073D0608A9130912070108000000040000000812073D08050000F8135D810305000104135D44FB0CFD9C010F34D0F600000005000000000F350CF6000000000CFD9BFD0F350D0600000005000000030F34D106000000030CFD9C090F34D10800000004000000080F350D080C9A86F6000000050F87510100000000000000070000000400000002135D80FB000000020CFD9C010F34D0F600000008000000000F350CF6000000000CFD9BFD0F350D0600000008000000030F34D106000000030CFD9C090F34D10800000004000000080F350D080C9A86F6000000080F875101000000000C9A870800000007000000080000000400000001135D45030000000105000104135D44FB0CFD9C010F34D0F60CFD9BFD0000000700000008000000000F350CF6000000000CFD9BFD000000070F34D106000000030CFD9C09000000070000000700000002135D80FB000000020CFD9C010F34D0F600000008000000000F350CF6000000000CFD9BFD0F350D0600000007000000030F34D106000000030CFD9C0900000008000000070000000400000003"
theorem small_3505915_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3505915_left_root small_3505915_left_fuel small_3505915_left_count small_3505915_left_encoded = true := by
  decide +kernel
theorem small_3505915_left_covered : CoveredBy scale carrier boxes small_3505915_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3505915_left_root small_3505915_left_fuel small_3505915_left_count small_3505915_left_encoded small_3505915_left_checked

theorem cover_3505915 : CoveredBy scale carrier boxes root_3505915 := by
  apply coveredBy_split_literal root_3505915 small_3505915_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3506137 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3505915_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3506137
#print axioms cover_3505915

def root_3505909 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3505909_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3505909_left_fuel : Nat := 1
def small_3505909_left_count : Nat := 1
def small_3505909_left_encoded : String := "00000000"
theorem small_3505909_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3505909_left_root small_3505909_left_fuel small_3505909_left_count small_3505909_left_encoded = true := by
  decide +kernel
theorem small_3505909_left_covered : CoveredBy scale carrier boxes small_3505909_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3505909_left_root small_3505909_left_fuel small_3505909_left_count small_3505909_left_encoded small_3505909_left_checked

theorem cover_3505909 : CoveredBy scale carrier boxes root_3505909 := by
  apply coveredBy_split_literal root_3505909 small_3505909_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3505915 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3505909_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3505915
#print axioms cover_3505909

def root_3505829 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3505829_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3505829_left_fuel : Nat := 11
def small_3505829_left_count : Nat := 39
def small_3505829_left_encoded : String := "120700F608A912FD12073D0608A913090000000812073D08050000F800000005135D4503000000010500010400000005000000080000000400000003120701060000000308A913090000000812073D08050000F8135D81030500010400000005135D80FB000000020000000800000001135D45030000000105000104135D44FB04548A01000000080000000800000002000000080000000400000000"
theorem small_3505829_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3505829_left_root small_3505829_left_fuel small_3505829_left_count small_3505829_left_encoded = true := by
  decide +kernel
theorem small_3505829_left_covered : CoveredBy scale carrier boxes small_3505829_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3505829_left_root small_3505829_left_fuel small_3505829_left_count small_3505829_left_encoded small_3505829_left_checked

theorem cover_3505829 : CoveredBy scale carrier boxes root_3505829 := by
  apply coveredBy_split_literal root_3505829 small_3505829_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3505909 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3505829_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3505909
#print axioms cover_3505829

def root_3505824 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3505824_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3505824_right_fuel : Nat := 1
def small_3505824_right_count : Nat := 1
def small_3505824_right_encoded : String := "00000004"
theorem small_3505824_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3505824_right_root small_3505824_right_fuel small_3505824_right_count small_3505824_right_encoded = true := by
  decide +kernel
theorem small_3505824_right_covered : CoveredBy scale carrier boxes small_3505824_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3505824_right_root small_3505824_right_fuel small_3505824_right_count small_3505824_right_encoded small_3505824_right_checked

theorem cover_3505824 : CoveredBy scale carrier boxes root_3505824 := by
  apply coveredBy_split_literal root_3505824 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3505829 small_3505824_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3505829
  · exact small_3505824_right_covered
#print axioms cover_3505824

def root_3505588 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3505588_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3505588_left_fuel : Nat := 21
def small_3505588_left_count : Nat := 111
def small_3505588_left_encoded : String := "1151E9090000000408A91301120700F608A912FD000000051207010600000003050000F800000005135D450300000001000000070000000012073CF60000000008A912FD12073D06050000F8135D81030500010400000005135D80FB000000020500010800000005135D81090CFD9C010000000700000007000000040000000100000007000000031207010600000003050000F8135D810305000104135D44FB05000108135D45090000000400000007135D81090CFD9C010F34D0F600000005000000000F350CF600000000045489FD0000000713867106000000030C9A86F6000000070F87510100000000000000070000000400000002135D80FB0000000205000108135D4509000000040CFD9C010000000600000007135D81090CFD9C010F34D0F600000007000000000F350CF600000000045489FD0000000713867106000000030C9A86F60F878D0100000007000000000F87510100000000078000F8128A7D0307800104000000070000000600000001000000070000000400000001135D45030000000105000104135D44FB0000000700000002135D80FB000000020500010800000006135D81090CFD9C01000000070000000700000004"
theorem small_3505588_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3505588_left_root small_3505588_left_fuel small_3505588_left_count small_3505588_left_encoded = true := by
  decide +kernel
theorem small_3505588_left_covered : CoveredBy scale carrier boxes small_3505588_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3505588_left_root small_3505588_left_fuel small_3505588_left_count small_3505588_left_encoded small_3505588_left_checked

theorem cover_3505588 : CoveredBy scale carrier boxes root_3505588 := by
  apply coveredBy_split_literal root_3505588 small_3505588_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3505824 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3505588_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3505824
#print axioms cover_3505588

def root_3505582 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3505582_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3505582_left_fuel : Nat := 1
def small_3505582_left_count : Nat := 1
def small_3505582_left_encoded : String := "00000003"
theorem small_3505582_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3505582_left_root small_3505582_left_fuel small_3505582_left_count small_3505582_left_encoded = true := by
  decide +kernel
theorem small_3505582_left_covered : CoveredBy scale carrier boxes small_3505582_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3505582_left_root small_3505582_left_fuel small_3505582_left_count small_3505582_left_encoded small_3505582_left_checked

theorem cover_3505582 : CoveredBy scale carrier boxes root_3505582 := by
  apply coveredBy_split_literal root_3505582 small_3505582_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3505588 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3505582_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3505588
#print axioms cover_3505582

def root_3505542 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3505542_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3505542_left_fuel : Nat := 9
def small_3505542_left_count : Nat := 19
def small_3505542_left_encoded : String := "1151E8FD0A000108000000051152250908A91301120700F6000000050000000012073CF60000000008A913090000000812073D08050000F80000000500000008000000040000000400000003"
theorem small_3505542_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3505542_left_root small_3505542_left_fuel small_3505542_left_count small_3505542_left_encoded = true := by
  decide +kernel
theorem small_3505542_left_covered : CoveredBy scale carrier boxes small_3505542_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3505542_left_root small_3505542_left_fuel small_3505542_left_count small_3505542_left_encoded small_3505542_left_checked

theorem cover_3505542 : CoveredBy scale carrier boxes root_3505542 := by
  apply coveredBy_split_literal root_3505542 small_3505542_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3505582 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3505542_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3505582
#print axioms cover_3505542

def root_3505537 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3505537_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3505537_right_fuel : Nat := 1
def small_3505537_right_count : Nat := 1
def small_3505537_right_encoded : String := "00000002"
theorem small_3505537_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3505537_right_root small_3505537_right_fuel small_3505537_right_count small_3505537_right_encoded = true := by
  decide +kernel
theorem small_3505537_right_covered : CoveredBy scale carrier boxes small_3505537_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3505537_right_root small_3505537_right_fuel small_3505537_right_count small_3505537_right_encoded small_3505537_right_checked

theorem cover_3505537 : CoveredBy scale carrier boxes root_3505537 := by
  apply coveredBy_split_literal root_3505537 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3505542 small_3505537_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3505542
  · exact small_3505537_right_covered
#print axioms cover_3505537

def root_3505536 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3505536_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3505536_right_fuel : Nat := 32
def small_3505536_right_count : Nat := 365
def small_3505536_right_encoded : String := "115224FB000000020A0001061151E8FD0A0001081151E90900000004000000061152250908A913010000000812073CF60000000008A912FB12073D040000000800000002000000080000000400000003115224FD000000030A0001081151E9090000000408A91301120700F608A912FB12073D0408A912FD000000061207010600000003050000F8135D81030500010800000006135D81090000000600000004000000010000000600000002000000060000000012073CF60000000008A912FB12073D0408A912FD12073D06050000F8135D81030500010800000006135D81090CFD9C010000000600000009000000040000000100000006000000031207010600000003050000F8135D81030500010800000006135D81090CFD9C010F34D0F60CFD9BFB0F350D04045489FD00000006000000060000000200000006000000000F350CF6000000000CFD9BFB0F350D04045489FD000000060000000600000002000000060000000400000001135D4503000000010500010800000006135D81090CFD9C01000000060F350CF6000000000000000600000004000000021207010400000002000000061152250908A91301120700F608A912FB12073D0408A912FD00000008120701060000000308A913091207010800000004000000080000000800000002120701040000000208A912FD000000081207010600000003000000080000000012073CF60000000008A912FB12073D0408A912FD12073D0608A9130912070108000000040000000812073D08050000F8135D81030CFD9C010F34D0F600000008000000000000000900000001135D450300000001000000080000000400000003120701060000000308A913091207010800000004050000F8135D81030CFD9C010F34D0F600000008000000000F350CF6000000000CFD9BFB0F350D04045489FD00000008138671060000000304548A0913867108000000040000000800000008000000020F34D104000000020000000900000001135D4503000000010000000812073D08050000F8135D81030CFD9C010F34D0F60CFD9BFB0F350D04045489FD0000000813867106000000030CFD9C090F34D10800000004000000080F350D080C9A87040F8750FB0C9A87080F875109000000040000000600000008000000020F878CFB000000020000000800000004000000020F34D1040000000200000009000000000F350CF6000000000CFD9BFB0F350D04045489FD1386AD060CFD9C090F34D10800000004000000080F350D080C9A86F6000000090F875101000000000000000A000000040000000313867106000000030CFD9C090F34D108000000040C9A86F60F878D0100000008000000000F875101000000000C9A87040F8750FB078000F8000000090000000800000002000000090F350D080C9A86F60F878D010C9A87040F8750FB0C9A87080F87510900000004000000060F878D09078000F8000000090000000800000004000000020F878CFB000000020C9A87080000000600000009000000000F875101000000000C9A87040F8750FB0C9A87080F87510900000004000000060F878D09078000F800000009128A4103000000010000000500000004000000020F878CFB000000020000000A00000004000000020F34D10400000002045489FD0000000913867106000000030CFD9C090F34D10800000004000000050000000900000001135D4503000000010CFD9C010F34D0F600000008000000000F350CF6000000000CFD9BFB0F350D04045489FD1386AD060CFD9C0900000008000000080000000313867106000000030CFD9C090F34D10800000004000000080F350D080C9A86F60F878D0100000008000000000F875101000000000000000500000004000000020F34D10400000002045489FD00000006000000050000000400000002120701040000000208A912FD00000009120701060000000308A913091207010800000004050000F8000000090000000512073D08050000F800000009000000060000000400000004"
theorem small_3505536_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3505536_right_root small_3505536_right_fuel small_3505536_right_count small_3505536_right_encoded = true := by
  decide +kernel
theorem small_3505536_right_covered : CoveredBy scale carrier boxes small_3505536_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3505536_right_root small_3505536_right_fuel small_3505536_right_count small_3505536_right_encoded small_3505536_right_checked

theorem cover_3505536 : CoveredBy scale carrier boxes root_3505536 := by
  apply coveredBy_split_literal root_3505536 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3505537 small_3505536_right_root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3505537
  · exact small_3505536_right_covered
#print axioms cover_3505536

def root_3505530 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3505530_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3505530_left_fuel : Nat := 1
def small_3505530_left_count : Nat := 1
def small_3505530_left_encoded : String := "00000001"
theorem small_3505530_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3505530_left_root small_3505530_left_fuel small_3505530_left_count small_3505530_left_encoded = true := by
  decide +kernel
theorem small_3505530_left_covered : CoveredBy scale carrier boxes small_3505530_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3505530_left_root small_3505530_left_fuel small_3505530_left_count small_3505530_left_encoded small_3505530_left_checked

theorem cover_3505530 : CoveredBy scale carrier boxes root_3505530 := by
  apply coveredBy_split_literal root_3505530 small_3505530_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3505536 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3505530_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3505536
#print axioms cover_3505530

def root_3499874 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3499874 : CoveredBy scale carrier boxes root_3499874 := by
  apply coveredBy_split_literal root_3499874 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3499875 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3505530 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3499875
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3505530
#print axioms cover_3499874

def root_3499869 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3499869_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3499869_right_fuel : Nat := 1
def small_3499869_right_count : Nat := 1
def small_3499869_right_encoded : String := "00000000"
theorem small_3499869_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3499869_right_root small_3499869_right_fuel small_3499869_right_count small_3499869_right_encoded = true := by
  decide +kernel
theorem small_3499869_right_covered : CoveredBy scale carrier boxes small_3499869_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3499869_right_root small_3499869_right_fuel small_3499869_right_count small_3499869_right_encoded small_3499869_right_checked

theorem cover_3499869 : CoveredBy scale carrier boxes root_3499869 := by
  apply coveredBy_split_literal root_3499869 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3499874 small_3499869_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3499874
  · exact small_3499869_right_covered
#print axioms cover_3499869

def root_3511906 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3511906 : CoveredBy scale carrier boxes root_3511906 := by
  apply coveredBy_split_literal root_3511906 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1334.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1335.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1334.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1335.covered
#print axioms cover_3511906

def root_3511901 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3511901_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3511901_right_fuel : Nat := 1
def small_3511901_right_count : Nat := 1
def small_3511901_right_encoded : String := "00000000"
theorem small_3511901_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3511901_right_root small_3511901_right_fuel small_3511901_right_count small_3511901_right_encoded = true := by
  decide +kernel
theorem small_3511901_right_covered : CoveredBy scale carrier boxes small_3511901_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3511901_right_root small_3511901_right_fuel small_3511901_right_count small_3511901_right_encoded small_3511901_right_checked

theorem cover_3511901 : CoveredBy scale carrier boxes root_3511901 := by
  apply coveredBy_split_literal root_3511901 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3511906 small_3511901_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3511906
  · exact small_3511901_right_covered
#print axioms cover_3511901

def root_3511900 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3511900_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3511900_right_fuel : Nat := 19
def small_3511900_right_count : Nat := 185
def small_3511900_right_encoded : String := "135D45010000000005000104135D44FB0CFD9C030F34D0F8045489FD0000000613867106000000030CFD9C09000000060F350D080000000800000004000000010F350CF800000001045489FD1386AD060CFD9C090F34D10800000004000000060F350D080C9A86F80F878D030C9A87080000000A0F878D09028000F60000000A0000000A00000004000000010F875103000000010000000A000000040000000313867106000000030CFD9C090F34D108000000040C9A86F8000000060F87510300000001028000F613D7ED01028001040000000613D7ECFB00000002022A457D0000000613E1C506000000030AD3578900000006000000070000000013D7B10100000000028001040000000613D7ECFB00000002022A457D00000006000000070F350D080C9A86F8000000080F87510300000001000000080000000400000002135D80FB000000020CFD9C030F34D0F8045489FD1386AD060CFD9C090F34D10800000004000000060F350D080C9A87080000000A0F878D09028000F60000000A0000000A00000004000000040000000313867106000000030CFD9C090F34D10800000004000000060F350D080C9A8708000000080F878D09000000070000000400000004000000010F350CF800000001045489FD1386AD060CFD9C090F34D108000000040C9A86F80F878D03028000F60000000A0000000A000000010000000A0F350D080C9A86F80F878D030000000A000000010000000A000000040000000313867106000000030CFD9C090F34D108000000040C9A86F80F878D03028000F613D7ED010780010400000007000000070000000000000007000000010F87510300000001028000F613D7ED0107800104128A40FB022A457D0000000A13E1C506000000030AD357890000000700000007000000020000000A0000000013D7B10100000000000000050F350D080C9A86F80F878D030C9A8708000000080F878D09028000F60000000A0000000800000004000000010F875103000000010000000A00000004"
theorem small_3511900_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3511900_right_root small_3511900_right_fuel small_3511900_right_count small_3511900_right_encoded = true := by
  decide +kernel
theorem small_3511900_right_covered : CoveredBy scale carrier boxes small_3511900_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3511900_right_root small_3511900_right_fuel small_3511900_right_count small_3511900_right_encoded small_3511900_right_checked

theorem cover_3511900 : CoveredBy scale carrier boxes root_3511900 := by
  apply coveredBy_split_literal root_3511900 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3511901 small_3511900_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3511901
  · exact small_3511900_right_covered
#print axioms cover_3511900

def root_3511895 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3511895_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3511895_right_fuel : Nat := 1
def small_3511895_right_count : Nat := 1
def small_3511895_right_encoded : String := "00000004"
theorem small_3511895_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3511895_right_root small_3511895_right_fuel small_3511895_right_count small_3511895_right_encoded = true := by
  decide +kernel
theorem small_3511895_right_covered : CoveredBy scale carrier boxes small_3511895_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3511895_right_root small_3511895_right_fuel small_3511895_right_count small_3511895_right_encoded small_3511895_right_checked

theorem cover_3511895 : CoveredBy scale carrier boxes root_3511895 := by
  apply coveredBy_split_literal root_3511895 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3511900 small_3511895_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3511900
  · exact small_3511895_right_covered
#print axioms cover_3511895

def root_3511567 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3511567_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3511567_left_fuel : Nat := 21
def small_3511567_left_count : Nat := 155
def small_3511567_left_encoded : String := "1207010800000004050000F6135D810105000104135D44FB0000000600000002135D80FB000000020CFD9C030F34D0F800000006000000010F350CF800000001045489FD1386AD0604548A091386710800000004000000061386AD080C9A86F80F878D0300000006000000010F87510300000001078000F6128A7D010000000800000000128A4101000000000780010400000006128A7CFB00000002000000090000000400000003138671060000000304548A0913867108000000040C9A86F8000000060F87510300000001078000F6128A7D010780010400000006128A7CFB00000002022A457D000000060000000600000000000000071386AD080C9A86F80F878D03078000F6128A7D010780010400000006128A7CFB00000002000000070000000000000007000000010F87510300000001078000F6128A7D0107800104128A40FB022A457D0000000613E1C50600000003067ECE89000000060000000600000002128A7CFB00000002022A457D13E20106067ECE8900000008000000090000000313E1C50600000003067ECE89000000070000000700000000128A41010000000007800104128A40FB0000000600000002128A7CFB00000002022A457D13E20106067ECE89000000070000000700000003000000070000000400000000135D4501000000000500010400000006135D80FB000000020CFD9C030F34D0F800000006000000010F350CF800000001045489FD1386AD0604548A09000000061386AD080C9A86F8000000060F87510300000001028000F613D7ED0107800104000000060000000A000000000000000A0000000400000003138671060000000304548A090000000600000007"
theorem small_3511567_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3511567_left_root small_3511567_left_fuel small_3511567_left_count small_3511567_left_encoded = true := by
  decide +kernel
theorem small_3511567_left_covered : CoveredBy scale carrier boxes small_3511567_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3511567_left_root small_3511567_left_fuel small_3511567_left_count small_3511567_left_encoded small_3511567_left_checked

theorem cover_3511567 : CoveredBy scale carrier boxes root_3511567 := by
  apply coveredBy_split_literal root_3511567 small_3511567_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3511895 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3511567_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3511895
#print axioms cover_3511567

def root_3511561 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3511561_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3511561_left_fuel : Nat := 1
def small_3511561_left_count : Nat := 1
def small_3511561_left_encoded : String := "00000003"
theorem small_3511561_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3511561_left_root small_3511561_left_fuel small_3511561_left_count small_3511561_left_encoded = true := by
  decide +kernel
theorem small_3511561_left_covered : CoveredBy scale carrier boxes small_3511561_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3511561_left_root small_3511561_left_fuel small_3511561_left_count small_3511561_left_encoded small_3511561_left_checked

theorem cover_3511561 : CoveredBy scale carrier boxes root_3511561 := by
  apply coveredBy_split_literal root_3511561 small_3511561_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3511567 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3511561_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3511567
#print axioms cover_3511561

def root_3510885 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3510885_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3510885_left_fuel : Nat := 20
def small_3510885_left_count : Nat := 315
def small_3510885_left_encoded : String := "12073D0608A913091207010800000004050000F6135D810105000104135D44FB0CFD9C03000000060F350CF8000000010CFD9BFD000000060F34D106000000030000000600000002135D80FB000000020CFD9C030F34D0F800000009000000010F350CF8000000010CFD9BFD000000090F34D1060000000304548A091386710800000004000000060000000900000000135D45010000000005000104135D44FB0CFD9C03000000060F350CF8000000010CFD9BFD000000060F34D106000000030000000600000002135D80FB000000020CFD9C030F34D0F800000006000000010F350CF8000000010CFD9BFD0F350D0604548A0913867108000000040000000600000009000000030F34D1060000000304548A09000000061386AD080C9A86F8000000060000000A0000000412073D08050000F6135D810105000104135D44FB0CFD9C030F34D0F800000005000000010F350CF8000000010CFD9BFD0F350D0600000005000000030F34D106000000030CFD9C090F34D108000000040C9A86F8000000050F87510300000001078000F600000005128A410100000000028001040000000513D7ECFB000000020000000A0F350D080C9A86F8000000050F875103000000010C9A8708000000050F878D09078000F600000005128A4101000000000000000A000000040000000400000002135D80FB000000020CFD9C030F34D0F80CFD9BFD000000090F34D106000000030CFD9C090F34D10800000004000000090F350D080C9A8708000000050000000900000004000000010F350CF8000000010CFD9BFD0F350D060CFD9C090F34D108000000040000000900000009000000030F34D106000000030CFD9C090F34D108000000040C9A86F8000000090F87510300000001000000090F350D080C9A86F80F878D030C9A87080000000A00000009000000010F875103000000010C9A87080000000A000000090000000400000000135D45010000000005000104135D44FB0CFD9C030F34D0F80CFD9BFD0F350D0600000005000000030F34D106000000030CFD9C09000000060F350D080000000500000004000000010F350CF8000000010CFD9BFD0F350D060CFD9C090F34D108000000040C9A86F80F878D0300000005000000010F875103000000010C9A87060F8750FD00000005000000030000000A0F350D080C9A86F8000000050F875103000000010C9A8706000000050000000A00000004000000030F34D106000000030CFD9C090F34D108000000040C9A86F8000000060F87510300000001028000F60000000A0000000A0F350D080C9A86F80F878D030C9A87080000000A0F878D090000000A00000004000000010000000A0000000400000002135D80FB000000020CFD9C030F34D0F80CFD9BFD0F350D060CFD9C090F34D108000000040000000900000009000000030F34D106000000030CFD9C090F34D10800000004000000060F350D080C9A87080000000A0F878D09028000F6000000090000000A0000000400000004000000010F350CF8000000010CFD9BFD0F350D060CFD9C090F34D10800000004000000090F350D080C9A86F8000000090F875103000000010C9A87060F8750FD00000009000000030000000A00000004000000030F34D106000000030CFD9C090F34D108000000040C9A86F80F878D03028000F6000000090000000A000000010000000A0F350D080C9A86F80F878D030000000A000000010000000A000000040000000400000003"
theorem small_3510885_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3510885_left_root small_3510885_left_fuel small_3510885_left_count small_3510885_left_encoded = true := by
  decide +kernel
theorem small_3510885_left_covered : CoveredBy scale carrier boxes small_3510885_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3510885_left_root small_3510885_left_fuel small_3510885_left_count small_3510885_left_encoded small_3510885_left_checked

theorem cover_3510885 : CoveredBy scale carrier boxes root_3510885 := by
  apply coveredBy_split_literal root_3510885 small_3510885_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3511561 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3510885_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3511561
#print axioms cover_3510885

def root_3510879 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3510879_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3510879_left_fuel : Nat := 1
def small_3510879_left_count : Nat := 1
def small_3510879_left_encoded : String := "00000001"
theorem small_3510879_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3510879_left_root small_3510879_left_fuel small_3510879_left_count small_3510879_left_encoded = true := by
  decide +kernel
theorem small_3510879_left_covered : CoveredBy scale carrier boxes small_3510879_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3510879_left_root small_3510879_left_fuel small_3510879_left_count small_3510879_left_encoded small_3510879_left_checked

theorem cover_3510879 : CoveredBy scale carrier boxes root_3510879 := by
  apply coveredBy_split_literal root_3510879 small_3510879_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3510885 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3510879_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3510885
#print axioms cover_3510879

def root_3510633 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3510633_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3510633_left_fuel : Nat := 18
def small_3510633_left_count : Nat := 113
def small_3510633_left_encoded : String := "120700F808A912FD12073D0608A9130912070108000000040000000612073D08050000F600000005135D4501000000000500010400000005135D80FB0000000204548A03138670F80CFD9BFD000000050F34D1060000000300000006000000011386ACF8000000010CFD9BFD0F350D0600000005000000030F34D106000000030CFD9C09000000060F350D080C9A87080000000500000006000000040000000400000003120701060000000308A9130912070108000000040000000612073D08050000F6135D81010500010400000005135D80FB0000000204548A03138670F8045489FD00000005138671060000000300000006000000011386ACF800000001045489FD1386AD060CFD9C09000000050F350D0800000005000000040000000313867106000000030CFD9C090F34D10800000004000000060F350D080C9A8708000000050F878D0900000006000000040000000400000000135D4501000000000500010400000006135D80FB0000000204548A03138670F800000006000000011386ACF800000001045489FD1386AD060CFD9C09000000060F350D080C9A87080000000A0000000600000004000000031386710600000003000000070000000400000001"
theorem small_3510633_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3510633_left_root small_3510633_left_fuel small_3510633_left_count small_3510633_left_encoded = true := by
  decide +kernel
theorem small_3510633_left_covered : CoveredBy scale carrier boxes small_3510633_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3510633_left_root small_3510633_left_fuel small_3510633_left_count small_3510633_left_encoded small_3510633_left_checked

theorem cover_3510633 : CoveredBy scale carrier boxes root_3510633 := by
  apply coveredBy_split_literal root_3510633 small_3510633_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3510879 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3510633_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3510879
#print axioms cover_3510633

def root_3510628 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3510628_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3510628_right_fuel : Nat := 1
def small_3510628_right_count : Nat := 1
def small_3510628_right_encoded : String := "00000004"
theorem small_3510628_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3510628_right_root small_3510628_right_fuel small_3510628_right_count small_3510628_right_encoded = true := by
  decide +kernel
theorem small_3510628_right_covered : CoveredBy scale carrier boxes small_3510628_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3510628_right_root small_3510628_right_fuel small_3510628_right_count small_3510628_right_encoded small_3510628_right_checked

theorem cover_3510628 : CoveredBy scale carrier boxes root_3510628 := by
  apply coveredBy_split_literal root_3510628 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3510633 small_3510628_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3510633
  · exact small_3510628_right_covered
#print axioms cover_3510628

def root_3510224 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3510224_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3510224_left_fuel : Nat := 19
def small_3510224_left_count : Nat := 187
def small_3510224_left_encoded : String := "1151E9090000000408A91303120700F808A912FD000000051207010600000003050000F600000005135D450100000000000000080000000112073CF80000000108A912FD12073D06050000F6135D81010500010400000005135D80FB000000020500010800000005135D81090CFD9C030F34D0F800000005000000010F350CF8000000010CFD9BFD0F350D0600000005000000030F34D106000000030000000A0000000400000000135D45010000000005000104135D44FB0500010800000005135D81090CFD9C030F34D0F800000005000000010F350CF8000000010CFD9BFD000000070F34D106000000030000000A0000000400000002135D80FB0000000205000108135D4509000000040CFD9C030F34D0F800000005000000010F350CF8000000010CFD9BFD000000070000000A135D81090CFD9C030F34D0F80CFD9BFD000000050F34D106000000030000000A000000010F350CF8000000010CFD9BFD0F350D060C9A86F80F878D030C9A8706000000050000000A0000000100000007000000030F34D106000000030000000A00000004000000031207010600000003050000F6135D810105000104135D44FB05000108135D4509000000040CFD9C030000000500000008135D81090CFD9C030F34D0F800000005000000010F350CF800000001045489FD1386AD060C9A86F80F878D0300000005000000010000000A000000031386710600000003000000080000000400000002135D80FB0000000205000108135D4509000000040CFD9C030000000A00000008135D81090CFD9C030F34D0F8045489FD0000000A138671060000000300000008000000010F350CF800000001045489FD0000000A13867106000000030C9A86F8000000080000000A0000000400000000135D45010000000005000104135D44FB0500010800000008135D81090CFD9C030F34D0F80000000800000001000000080000000400000002135D80FB000000020500010800000008135D81090CFD9C030F34D0F800000008000000010000000800000004"
theorem small_3510224_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3510224_left_root small_3510224_left_fuel small_3510224_left_count small_3510224_left_encoded = true := by
  decide +kernel
theorem small_3510224_left_covered : CoveredBy scale carrier boxes small_3510224_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3510224_left_root small_3510224_left_fuel small_3510224_left_count small_3510224_left_encoded small_3510224_left_checked

theorem cover_3510224 : CoveredBy scale carrier boxes root_3510224 := by
  apply coveredBy_split_literal root_3510224 small_3510224_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3510628 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3510224_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3510628
#print axioms cover_3510224

def root_3510218 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3510218_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3510218_left_fuel : Nat := 1
def small_3510218_left_count : Nat := 1
def small_3510218_left_encoded : String := "00000003"
theorem small_3510218_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3510218_left_root small_3510218_left_fuel small_3510218_left_count small_3510218_left_encoded = true := by
  decide +kernel
theorem small_3510218_left_covered : CoveredBy scale carrier boxes small_3510218_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3510218_left_root small_3510218_left_fuel small_3510218_left_count small_3510218_left_encoded small_3510218_left_checked

theorem cover_3510218 : CoveredBy scale carrier boxes root_3510218 := by
  apply coveredBy_split_literal root_3510218 small_3510218_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3510224 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3510218_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3510224
#print axioms cover_3510218

def root_3510132 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3510132_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3510132_left_fuel : Nat := 16
def small_3510132_left_count : Nat := 41
def small_3510132_left_encoded : String := "1151E8FD0A000108000000051152250908A91303120700F8000000050000000112073CF80000000108A913091207010800000004050000F600000005135D45010000000005000104000000050000000912073D08050000F600000005135D4501000000000500010400000005135D80FB000000020500010600000005135D80FD000000030CFD9C030F34D0F8000000050000000100000009000000040000000400000003"
theorem small_3510132_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3510132_left_root small_3510132_left_fuel small_3510132_left_count small_3510132_left_encoded = true := by
  decide +kernel
theorem small_3510132_left_covered : CoveredBy scale carrier boxes small_3510132_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3510132_left_root small_3510132_left_fuel small_3510132_left_count small_3510132_left_encoded small_3510132_left_checked

theorem cover_3510132 : CoveredBy scale carrier boxes root_3510132 := by
  apply coveredBy_split_literal root_3510132 small_3510132_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3510218 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3510132_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3510218
#print axioms cover_3510132

def root_3510127 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3510127_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3510127_right_fuel : Nat := 1
def small_3510127_right_count : Nat := 1
def small_3510127_right_encoded : String := "00000002"
theorem small_3510127_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3510127_right_root small_3510127_right_fuel small_3510127_right_count small_3510127_right_encoded = true := by
  decide +kernel
theorem small_3510127_right_covered : CoveredBy scale carrier boxes small_3510127_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3510127_right_root small_3510127_right_fuel small_3510127_right_count small_3510127_right_encoded small_3510127_right_checked

theorem cover_3510127 : CoveredBy scale carrier boxes root_3510127 := by
  apply coveredBy_split_literal root_3510127 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3510132 small_3510127_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3510132
  · exact small_3510127_right_covered
#print axioms cover_3510127

def root_3510126 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3510126 : CoveredBy scale carrier boxes root_3510126 := by
  apply coveredBy_split_literal root_3510126 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3510127 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1336.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3510127
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1336.covered
#print axioms cover_3510126

def root_3510121 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3510121_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3510121_right_fuel : Nat := 1
def small_3510121_right_count : Nat := 1
def small_3510121_right_encoded : String := "00000001"
theorem small_3510121_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3510121_right_root small_3510121_right_fuel small_3510121_right_count small_3510121_right_encoded = true := by
  decide +kernel
theorem small_3510121_right_covered : CoveredBy scale carrier boxes small_3510121_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3510121_right_root small_3510121_right_fuel small_3510121_right_count small_3510121_right_encoded small_3510121_right_checked

theorem cover_3510121 : CoveredBy scale carrier boxes root_3510121 := by
  apply coveredBy_split_literal root_3510121 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3510126 small_3510121_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3510126
  · exact small_3510121_right_covered
#print axioms cover_3510121

def root_3524398 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3524398_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3524398_left_fuel : Nat := 19
def small_3524398_left_count : Nat := 179
def small_3524398_left_encoded : String := "13E201060DE7CA080E5FD9090000000408C000F611FC250108C000F811FC250303C00104000000070000000700000001000000070000000011FBE9010000000008C000F80000000A0000000A0E60150908C000F611FC250108C000F811FC250303C0010413A510FB033F67BD13BC31060DAED8890E9625080000000400000008000000070000000313BBF506000000030DAED8890E96250800000004096000F60000000811AA810100000000096000F811AABD030000000600000001000000080E966108096000F60000000711AA810100000000096000F811AABD030320010400000005000000070000000100000007000000040000000213A54CFB00000002033F67BD13BC31060DAED8890E96250800000004000000080E96610800000007000000040000000313BBF506000000030DAED8890E96250800000004096000F60000000811AA810100000000096000F811AABD030000000A00000001000000080E966108096000F6000000070000000A000000040000000111FBE9030000000103C0010413A510FB033F67BD0000000713BBF50600000003000000070000000213A54CFB00000002033F67BD0000000713BBF506000000030DAED88900000007000000070000000011FBE9010000000008C000F811FC250303C0010413A510FB033F67BD0000000A13BBF506000000030DAED8890E96250800000004082000F612469901096000F80000000611AA81030000000103200104000000060000000A0000000012465D0100000000096000F8000000060000000A0E9661080000000A000000040000000213A54CFB000000020000000A0000000111FBE9030000000103C0010413A510FB033F67BD0000000713BBF506000000030DAED8890E96250800000004082000F60000000712465D0100000000082000F8124699030000000A00000001000000070E96610800000007000000040000000213A54CFB000000020000000A0000000400000003"
theorem small_3524398_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3524398_left_root small_3524398_left_fuel small_3524398_left_count small_3524398_left_encoded = true := by
  decide +kernel
theorem small_3524398_left_covered : CoveredBy scale carrier boxes small_3524398_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3524398_left_root small_3524398_left_fuel small_3524398_left_count small_3524398_left_encoded small_3524398_left_checked

theorem cover_3524398 : CoveredBy scale carrier boxes root_3524398 := by
  apply coveredBy_split_literal root_3524398 small_3524398_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1338.root coord3 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_3524398_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1338.covered
#print axioms cover_3524398

def root_3524392 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3524392_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3524392_left_fuel : Nat := 1
def small_3524392_left_count : Nat := 1
def small_3524392_left_encoded : String := "00000002"
theorem small_3524392_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3524392_left_root small_3524392_left_fuel small_3524392_left_count small_3524392_left_encoded = true := by
  decide +kernel
theorem small_3524392_left_covered : CoveredBy scale carrier boxes small_3524392_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3524392_left_root small_3524392_left_fuel small_3524392_left_count small_3524392_left_encoded small_3524392_left_checked

theorem cover_3524392 : CoveredBy scale carrier boxes root_3524392 := by
  apply coveredBy_split_literal root_3524392 small_3524392_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3524398 coord2 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_3524392_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3524398
#print axioms cover_3524392

def root_3523784 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3523784_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3523784_left_fuel : Nat := 19
def small_3523784_left_count : Nat := 287
def small_3523784_left_encoded : String := "13D7B0FB022A457D13E201060DE7CA080E5FD9090000000408C000F611FC2501000000070000000011FBE9010000000008C000F811FC25030140010413F5D8FB000000070000000213F614FB00000002033F67BD0000000713BBF506000000030D412888000000070EFA4D09000000070000000400000001000000070E60150908C000F611FC250108C000F811FC2503014001040000000513F614FB00000002033F67BD0000000513BBF506000000030DAED889000000050E96610800000005000000040000000111FBE903000000010140010400000007000000070000000011FBE9010000000008C000F811FC25030140010413F5D8FB000000060000000213F614FB00000002033F67BD13BC31060DAED8890E96250800000004000000060E96610800000007000000040000000313BBF506000000030DAED8890E96250800000004000000060E966108082000F612469901096000F800000005000000070000000012465D0100000000096000F8000000060000000A000000040000000111FBE903000000010140010413F5D8FB033F67BD00000007000000090000000213F614FB00000002033F67BD0000000713BBF506000000030DAED8890E96250800000004082000F600000007000000090E9661080000000700000004000000040000000313E1C506000000030DE7CA080E5FD9090000000408C000F611FC250108C000F811FC25030140010413F5D8FB0115233D00000005000000090000000213F614FB000000020115233D13F895060D412888000000050EFA4D09096000F60000000511AA81010000000000000007000000040000000313F85906000000030D412888000000090EFA4D0900000009000000040000000111FBE90300000001014001040000000913F614FB000000020115233D00000007000000090000000011FBE9010000000008C000F811FC2503014001040000000913F614FB000000020115233D13F895060D412888000000080EFA4D090000000900000004000000030000000800000001000000090E60150908C000F611FC250108C000F811FC25030140010413F5D8FB0115233D00000005000000090000000213F614FB000000020115233D13F895060DAED8890E96250800000004096000F60000000511AA810100000000000000060E966108096000F60000000511AA810100000000096000F80000000500000009000000040000000313F85906000000030DAED8890E96250800000004096000F611AABD010000000900000000000000090E966108096000F611AABD01000000090000000000000009000000040000000111FBE90300000001014001040000000913F614FB000000020115233D13F895060DAED8890E96250800000004096000F600000008000000090E966108000000070000000400000003000000090000000011FBE9010000000008C000F811FC2503014001040000000913F614FB000000020115233D13F895060DAED8890E96250800000004000000060E966108082000F612469901096000F80000000600000009000000000000000900000004000000030000000900000001000000090000000400000002"
theorem small_3523784_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3523784_left_root small_3523784_left_fuel small_3523784_left_count small_3523784_left_encoded = true := by
  decide +kernel
theorem small_3523784_left_covered : CoveredBy scale carrier boxes small_3523784_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3523784_left_root small_3523784_left_fuel small_3523784_left_count small_3523784_left_encoded small_3523784_left_checked

theorem cover_3523784 : CoveredBy scale carrier boxes root_3523784 := by
  apply coveredBy_split_literal root_3523784 small_3523784_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3524392 coord2 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_3523784_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3524392
#print axioms cover_3523784

def root_3523779 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3523779_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3523779_right_fuel : Nat := 1
def small_3523779_right_count : Nat := 1
def small_3523779_right_encoded : String := "00000001"
theorem small_3523779_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3523779_right_root small_3523779_right_fuel small_3523779_right_count small_3523779_right_encoded = true := by
  decide +kernel
theorem small_3523779_right_covered : CoveredBy scale carrier boxes small_3523779_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3523779_right_root small_3523779_right_fuel small_3523779_right_count small_3523779_right_encoded small_3523779_right_checked

theorem cover_3523779 : CoveredBy scale carrier boxes root_3523779 := by
  apply coveredBy_split_literal root_3523779 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3523784 small_3523779_right_root coord1 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3523784
  · exact small_3523779_right_covered
#print axioms cover_3523779

def root_3523778 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3523778_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3523778_right_fuel : Nat := 16
def small_3523778_right_count : Nat := 101
def small_3523778_right_encoded : String := "128A4103000000010280010413D7B0FB022A457D13E201060DE7CA08000000070E60150908C000F60000000711FBE9010000000000000007000000040000000313E1C506000000030DE7CA08000000090E60150908C000F611FC2501000000090000000000000009000000040000000213D7ECFB00000002022A457D13E201060DE7CA08000000070E60150908C000F60000000711FBE90100000000064000F812FFAD0303C0010400000007000000070000000100000007000000040000000313E1C506000000030DE7CA080E5FD9090000000408C000F60000000711FBE90100000000064000F812FFAD0303C00104000000070000000500000001000000050E60150908C000F611FC2501064000F812FFAD0303C0010413A510FB0115233D00000007000000090000000213A54CFB000000020115233D0000000713F8590600000003000000050000000112FF71030000000103C0010400000007000000050000000011FBE90100000000064000F812FFAD0303C0010413A510FB000000090000000200000005000000010000000500000004"
theorem small_3523778_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3523778_right_root small_3523778_right_fuel small_3523778_right_count small_3523778_right_encoded = true := by
  decide +kernel
theorem small_3523778_right_covered : CoveredBy scale carrier boxes small_3523778_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3523778_right_root small_3523778_right_fuel small_3523778_right_count small_3523778_right_encoded small_3523778_right_checked

theorem cover_3523778 : CoveredBy scale carrier boxes root_3523778 := by
  apply coveredBy_split_literal root_3523778 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3523779 small_3523778_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3523779
  · exact small_3523778_right_covered
#print axioms cover_3523778

def root_3523773 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3523773_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3523773_right_fuel : Nat := 1
def small_3523773_right_count : Nat := 1
def small_3523773_right_encoded : String := "00000000"
theorem small_3523773_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3523773_right_root small_3523773_right_fuel small_3523773_right_count small_3523773_right_encoded = true := by
  decide +kernel
theorem small_3523773_right_covered : CoveredBy scale carrier boxes small_3523773_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3523773_right_root small_3523773_right_fuel small_3523773_right_count small_3523773_right_encoded small_3523773_right_checked

theorem cover_3523773 : CoveredBy scale carrier boxes root_3523773 := by
  apply coveredBy_split_literal root_3523773 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3523778 small_3523773_right_root coord0 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3523778
  · exact small_3523773_right_covered
#print axioms cover_3523773

def root_3523772 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3523772_right_root : ZRayBox := fun j => (#[⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3523772_right_fuel : Nat := 23
def small_3523772_right_count : Nat := 217
def small_3523772_right_encoded : String := "128A410100000000078000F8128A7D030280010413D7B0FB022A457D13E201060DE7CA080E5FD90900000004064000F612FFAD0108C000F811FC25030000000A000000010000000A000000000000000A0E601509064000F612FFAD0108C000F811FC2503014001040000000613F614FB00000002033F67BD0000000A13BBF506000000030DAED889000000060E9661080000000A000000040000000111FBE90300000001014001040000000913F614FB00000002033F67BD0000000A000000090000000012FF71010000000008C000F811FC250301400104000000060000000A0000000111FBE90300000001014001040000000900000009000000040000000313E1C506000000030DE7CA08000000090E601509064000F612FFAD0108C000F811FC25030000000900000001000000090000000000000009000000040000000213D7ECFB00000002022A457D13E201060DE7CA080000000A0E601509064000F612FFAD0108C000F811FC25030000000A000000010000000A000000000000000A000000040000000313E1C506000000030DE7CA080E5FD90900000004064000F612FFAD0108C000F80000000811FBE9030000000103C00104000000090000000500000000000000080E601509064000F612FFAD0108C000F811FC250303C0010413A510FB0115233D13F895060DAED8890E9625080000000406E000F612C82101096000F8000000060000000900000000000000090E966108000000080000000400000003000000090000000213A54CFB000000020115233D0000000A13F8590600000003000000050000000111FBE9030000000103C0010413A510FB0000000900000002000000050000000012FF71010000000008C000F800000008000000050000000400000001128A4103000000010280010413D7B0FB022A457D13E201060DE7CA080E5FD90900000004000000070E601509064000F612FFAD01064000F812FFAD03014001040000000713F614FB00000002033F67BD0000000700000009000000010000000700000000000000090000000400000003000000090000000213D7ECFB00000002022A457D13E201060DE7CA080000000A0E601509064000F612FFAD01064000F812FFAD030000000A00000001000000050000000000000005000000040000000313E1C506000000030DE7CA080E5FD909000000040000000500000005"
theorem small_3523772_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3523772_right_root small_3523772_right_fuel small_3523772_right_count small_3523772_right_encoded = true := by
  decide +kernel
theorem small_3523772_right_covered : CoveredBy scale carrier boxes small_3523772_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3523772_right_root small_3523772_right_fuel small_3523772_right_count small_3523772_right_encoded small_3523772_right_checked

theorem cover_3523772 : CoveredBy scale carrier boxes root_3523772 := by
  apply coveredBy_split_literal root_3523772 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3523773 small_3523772_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3523773
  · exact small_3523772_right_covered
#print axioms cover_3523772

def root_3523767 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3523767_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3523767_right_fuel : Nat := 1
def small_3523767_right_count : Nat := 1
def small_3523767_right_encoded : String := "00000004"
theorem small_3523767_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3523767_right_root small_3523767_right_fuel small_3523767_right_count small_3523767_right_encoded = true := by
  decide +kernel
theorem small_3523767_right_covered : CoveredBy scale carrier boxes small_3523767_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3523767_right_root small_3523767_right_fuel small_3523767_right_count small_3523767_right_encoded small_3523767_right_checked

theorem cover_3523767 : CoveredBy scale carrier boxes root_3523767 := by
  apply coveredBy_split_literal root_3523767 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3523772 small_3523767_right_root coord4 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3523772
  · exact small_3523767_right_covered
#print axioms cover_3523767

def root_3523595 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3523595_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3523595_left_fuel : Nat := 19
def small_3523595_left_count : Nat := 83
def small_3523595_left_encoded : String := "0F87510900000004078000F6128A7D01078000F8128A7D030280010413D7B0FB022A457D0000000713E1C506000000030B4D44080000000810804D0908C000F611FC250108C000F800000008000000070000000000000008000000040000000213D7ECFB00000002022A457D0000000A13E1C506000000030B4D440810801109000000040000000810804D0908C000F611FC250108C000F811FC250303C0010413A510FB000000070000000213A54CFB000000020115233D000000070000000800000001000000070000000011FBE9010000000008C000F8000000080000000A0000000400000001128A41030000000102800104000000070000000700000000128A410100000000078000F8128A7D030280010413D7B0FB00000008000000020000000A00000001128A4103000000010280010413D7B0FB022A457D0000000700000009000000020000000A"
theorem small_3523595_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3523595_left_root small_3523595_left_fuel small_3523595_left_count small_3523595_left_encoded = true := by
  decide +kernel
theorem small_3523595_left_covered : CoveredBy scale carrier boxes small_3523595_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3523595_left_root small_3523595_left_fuel small_3523595_left_count small_3523595_left_encoded small_3523595_left_checked

theorem cover_3523595 : CoveredBy scale carrier boxes root_3523595 := by
  apply coveredBy_split_literal root_3523595 small_3523595_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3523767 coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_3523595_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3523767
#print axioms cover_3523595

def root_3523590 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3523590_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3523590_right_fuel : Nat := 1
def small_3523590_right_count : Nat := 1
def small_3523590_right_encoded : String := "00000004"
theorem small_3523590_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3523590_right_root small_3523590_right_fuel small_3523590_right_count small_3523590_right_encoded = true := by
  decide +kernel
theorem small_3523590_right_covered : CoveredBy scale carrier boxes small_3523590_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3523590_right_root small_3523590_right_fuel small_3523590_right_count small_3523590_right_encoded small_3523590_right_checked

theorem cover_3523590 : CoveredBy scale carrier boxes root_3523590 := by
  apply coveredBy_split_literal root_3523590 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3523595 small_3523590_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3523595
  · exact small_3523590_right_covered
#print axioms cover_3523590

def root_3521286 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3521286 : CoveredBy scale carrier boxes root_3521286 := by
  apply coveredBy_split_literal root_3521286 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1337.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3523590 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1337.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3523590
#print axioms cover_3521286

def root_3521280 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3521280_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3521280_left_fuel : Nat := 1
def small_3521280_left_count : Nat := 1
def small_3521280_left_encoded : String := "00000003"
theorem small_3521280_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3521280_left_root small_3521280_left_fuel small_3521280_left_count small_3521280_left_encoded = true := by
  decide +kernel
theorem small_3521280_left_covered : CoveredBy scale carrier boxes small_3521280_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3521280_left_root small_3521280_left_fuel small_3521280_left_count small_3521280_left_encoded small_3521280_left_checked

theorem cover_3521280 : CoveredBy scale carrier boxes root_3521280 := by
  apply coveredBy_split_literal root_3521280 small_3521280_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3521286 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_3521280_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3521286
#print axioms cover_3521280

def root_3520702 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3520702_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3520702_left_fuel : Nat := 21
def small_3520702_left_count : Nat := 277
def small_3520702_left_encoded : String := "1386AD060CFD9C090F34D10800000004078000F6128A7D01078000F8128A7D030280010413D7B0FB067ECE7D0000000812EA5906000000030AD357890000000810D13D0808C000F60000000811FBE9010000000008C000F80000000600000008000000040000000213D7ECFB00000002067ECE7D0000000812EA5906000000030AD357890000000810D13D0808C000F60000000811FBE901000000000000000800000004000000010000000800000000128A410100000000078000F8128A7D030280010413D7B0FB067ECE7D0000000612EA5906000000030AD357890000000610D13D08064000F612FFAD0108C000F80000000611FBE90300000001014001040000000613F614FB000000020569AC3D00000006000000060000000012FF71010000000000000006000000040000000213D7ECFB00000002067ECE7D12EA95060AD35789000000080000000A0000000312EA5906000000030AD3578910D1010800000004064000F60000000812FF7101000000000000000610D13D08064000F612FFAD0108C000F811FC25030000000A000000010000000A000000000000000A0000000400000001128A4103000000010280010413D7B0FB067ECE7D12EA95060AD357890000000810D13D08064000F6000000070000000A000000040000000312EA5906000000030AD3578910D10108000000040000000810D13D08064000F612FFAD01064000F812FFAD030140010413F5D8FB0569AC3D0000000600000008000000020000000800000001000000080000000012FF710100000000064000F812FFAD0301400104000000060000000A0000000112FF7103000000010140010413F5D8FB00000007000000020000000A000000040000000213D7ECFB00000002067ECE7D12EA9506000000080000000312EA5906000000030AD357890000000810D13D08064000F6000000080000000A000000040F350D080C9A87080F87510900000004078000F6000000070000000A0F878D09078000F6128A7D01078000F8128A7D030280010413D7B0FB067ECE7D0000000712EA5906000000030DE7CA080E5FD90900000004000000070E60150908C000F60000000711FBE9010000000008C000F811FC2503000000050000000100000007000000040000000213D7ECFB00000002067ECE7D0000000A12EA5906000000030DE7CA080000000A0E60150908C000F611FC250108C000F811FC250303C00104000000050000000700000001000000070000000011FBE901000000000000000A0000000400000001128A41030000000102800104000000070000000700000000128A410100000000078000F8128A7D030280010413D7B0FB067ECE7D0000000A12EA5906000000030DE7CA080000000A0E601509064000F612FFAD0108C000F811FC25030000000A000000010000000A000000000000000A00000004000000020000000A00000001128A4103000000010280010413D7B0FB067ECE7D0000000712EA59060000000300000007000000020000000A000000040000000400000003"
theorem small_3520702_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3520702_left_root small_3520702_left_fuel small_3520702_left_count small_3520702_left_encoded = true := by
  decide +kernel
theorem small_3520702_left_covered : CoveredBy scale carrier boxes small_3520702_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3520702_left_root small_3520702_left_fuel small_3520702_left_count small_3520702_left_encoded small_3520702_left_checked

theorem cover_3520702 : CoveredBy scale carrier boxes root_3520702 := by
  apply coveredBy_split_literal root_3520702 small_3520702_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3521280 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_3520702_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3521280
#print axioms cover_3520702

def root_3520697 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3520697_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3520697_right_fuel : Nat := 1
def small_3520697_right_count : Nat := 1
def small_3520697_right_encoded : String := "00000002"
theorem small_3520697_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3520697_right_root small_3520697_right_fuel small_3520697_right_count small_3520697_right_encoded = true := by
  decide +kernel
theorem small_3520697_right_covered : CoveredBy scale carrier boxes small_3520697_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3520697_right_root small_3520697_right_fuel small_3520697_right_count small_3520697_right_encoded small_3520697_right_checked

theorem cover_3520697 : CoveredBy scale carrier boxes root_3520697 := by
  apply coveredBy_split_literal root_3520697 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3520702 small_3520697_right_root coord2 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3520702
  · exact small_3520697_right_covered
#print axioms cover_3520697

def root_3520696 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3520696 : CoveredBy scale carrier boxes root_3520696 := by
  apply coveredBy_split_literal root_3520696 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3520697 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1339.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3520697
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1339.covered
#print axioms cover_3520696

def root_3520691 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3520691_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3520691_right_fuel : Nat := 1
def small_3520691_right_count : Nat := 1
def small_3520691_right_encoded : String := "00000001"
theorem small_3520691_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3520691_right_root small_3520691_right_fuel small_3520691_right_count small_3520691_right_encoded = true := by
  decide +kernel
theorem small_3520691_right_covered : CoveredBy scale carrier boxes small_3520691_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3520691_right_root small_3520691_right_fuel small_3520691_right_count small_3520691_right_encoded small_3520691_right_checked

theorem cover_3520691 : CoveredBy scale carrier boxes root_3520691 := by
  apply coveredBy_split_literal root_3520691 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3520696 small_3520691_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3520696
  · exact small_3520691_right_covered
#print axioms cover_3520691

def root_3520690 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3520690_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3520690_right_fuel : Nat := 19
def small_3520690_right_count : Nat := 159
def small_3520690_right_encoded : String := "135D45030000000105000104135D44FB045489FD1386AD060CFD9C090F34D10800000004078000F600000008128A410100000000028000F813D7ED030280010413D7B0FB067ECE7D0000000812EA5906000000030AD357890000000810D13D0800000007000000040000000213D7ECFB00000002067ECE7D000000080000000800000001000000080F350D080C9A8708000000070F878D09078000F600000007128A4101000000000000000700000004000000040000000313867106000000030CFD9C090F34D10800000004078000F6128A7D01028000F813D7ED0300000008000000010000000800000000128A410100000000028000F813D7ED030280010413D7B0FB022A457D13E201060AD357890000000810D13D0800000009000000040000000300000009000000020000000500000001000000050F350D080C9A87080F87510900000004078000F600000007128A410100000000000000070F878D09078000F6128A7D01028000F813D7ED030280010413D7B0FB022A457D00000007000000090000000213D7ECFB00000002022A457D0000000713E1C506000000030DE7CA080000000700000005000000010000000700000000128A410100000000028000F813D7ED030280010400000009000000050000000100000005000000040000000400000002135D80FB00000002045489FD1386AD060CFD9C090F34D10800000004000000080F350D080C9A87080000000A0F878D09078000F6128A7D0100000007000000000000000A00000004000000040000000313867106000000030CFD9C090F34D10800000004000000050F350D080C9A87080F87510900000004078000F6128A7D010000000600000000000000050000000500000004"
theorem small_3520690_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3520690_right_root small_3520690_right_fuel small_3520690_right_count small_3520690_right_encoded = true := by
  decide +kernel
theorem small_3520690_right_covered : CoveredBy scale carrier boxes small_3520690_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3520690_right_root small_3520690_right_fuel small_3520690_right_count small_3520690_right_encoded small_3520690_right_checked

theorem cover_3520690 : CoveredBy scale carrier boxes root_3520690 := by
  apply coveredBy_split_literal root_3520690 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3520691 small_3520690_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3520691
  · exact small_3520690_right_covered
#print axioms cover_3520690

def root_3520685 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3520685_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3520685_right_fuel : Nat := 1
def small_3520685_right_count : Nat := 1
def small_3520685_right_encoded : String := "00000000"
theorem small_3520685_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3520685_right_root small_3520685_right_fuel small_3520685_right_count small_3520685_right_encoded = true := by
  decide +kernel
theorem small_3520685_right_covered : CoveredBy scale carrier boxes small_3520685_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3520685_right_root small_3520685_right_fuel small_3520685_right_count small_3520685_right_encoded small_3520685_right_checked

theorem cover_3520685 : CoveredBy scale carrier boxes root_3520685 := by
  apply coveredBy_split_literal root_3520685 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3520690 small_3520685_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3520690
  · exact small_3520685_right_covered
#print axioms cover_3520685

def root_3520684 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3520684_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3520684_right_fuel : Nat := 23
def small_3520684_right_count : Nat := 285
def small_3520684_right_encoded : String := "135D450100000000050000F8135D810305000104135D44FB045489FD1386AD060CFD9C090F34D10800000004028000F613D7ED01078000F8128A7D030280010413D7B0FB067ECE7D0000000612EA590600000003000000060000000213D7ECFB00000002067ECE7D0000000A12EA5906000000030000000A00000001128A4103000000010280010413D7B0FB067ECE7D12EA95060AD3578910D1010800000004000000060000000A0000000312EA5906000000030AD3578910D10108000000040000000610D13D0803C000F613A54D01064000F80000000A0000000A000000000000000A000000040000000213D7ECFB00000002067ECE7D0000000A12EA5906000000030AD3578910D101080000000400000005000000050000000013D7B10100000000078000F8128A7D0302800104000000060000000A00000001128A4103000000010280010413D7B0FB067ECE7D0000000A12EA5906000000030000000A00000002000000050F350D080000000A000000040000000313867106000000030CFD9C090F34D10800000004028000F613D7ED01078000F8128A7D030280010413D7B0FB022A457D0000000613E1C506000000030AD357890000000610D13D0800000009000000040000000213D7ECFB00000002022A457D13E201060AD3578910D10108000000040000000610D13D0803C000F613A54D0108C000F80000000A000000050000000000000005000000040000000313E1C506000000030AD3578910D1010800000004000000050000000500000001128A4103000000010280010413D7B0FB022A457D13E201060AD3578910D10108000000040000000510D13D080000000900000004000000030000000900000002000000050000000013D7B10100000000078000F8128A7D030280010413D7B0FB022A457D0000000600000009000000020000000500000001000000050F350D080C9A87080F87510900000004000000080F878D09028000F613D7ED01078000F8128A7D030280010413D7B0FB022A457D0000000A000000080000000213D7ECFB00000002022A457D0000000A0000000800000001128A4103000000010280010400000009000000050000000013D7B10100000000078000F80000000800000005000000040000000400000002135D80FB00000002045489FD1386AD060CFD9C090000000A0F350D080000000A000000040000000313867106000000030CFD9C090F34D10800000004000000050F350D080000000A0000000400000001135D45030000000105000104135D44FB045489FD1386AD060CFD9C090F34D10800000004028000F613D7ED01028000F813D7ED030280010413D7B0FB067ECE7D12EA95060AD3578910D101080000000400000008000000070000000312EA5906000000030AD3578910D101080000000400000005000000050000000200000005000000010000000500000000000000050F350D080000000A000000040000000313867106000000030CFD9C090F34D10800000004000000050F350D080C9A870800000009000000050000000400000002135D80FB00000002045489FD0000000A00000005"
theorem small_3520684_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3520684_right_root small_3520684_right_fuel small_3520684_right_count small_3520684_right_encoded = true := by
  decide +kernel
theorem small_3520684_right_covered : CoveredBy scale carrier boxes small_3520684_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3520684_right_root small_3520684_right_fuel small_3520684_right_count small_3520684_right_encoded small_3520684_right_checked

theorem cover_3520684 : CoveredBy scale carrier boxes root_3520684 := by
  apply coveredBy_split_literal root_3520684 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3520685 small_3520684_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3520685
  · exact small_3520684_right_covered
#print axioms cover_3520684

def root_3520679 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3520679_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3520679_right_fuel : Nat := 1
def small_3520679_right_count : Nat := 1
def small_3520679_right_encoded : String := "00000004"
theorem small_3520679_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3520679_right_root small_3520679_right_fuel small_3520679_right_count small_3520679_right_encoded = true := by
  decide +kernel
theorem small_3520679_right_covered : CoveredBy scale carrier boxes small_3520679_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3520679_right_root small_3520679_right_fuel small_3520679_right_count small_3520679_right_encoded small_3520679_right_checked

theorem cover_3520679 : CoveredBy scale carrier boxes root_3520679 := by
  apply coveredBy_split_literal root_3520679 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3520684 small_3520679_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3520684
  · exact small_3520679_right_covered
#print axioms cover_3520679

def root_3520223 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3520223_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3520223_left_fuel : Nat := 21
def small_3520223_left_count : Nat := 219
def small_3520223_left_encoded : String := "1207010800000004050000F6135D8101050000F8135D810305000104135D44FB045489FD1386AD0604548A09000000080000000800000003138671060000000304548A091386710800000004078000F600000008000000081386AD08078000F6128A7D01078000F8128A7D0300000008000000010000000800000000128A410100000000078000F8128A7D030000000600000001128A410300000001000000080000000400000002135D80FB00000002045489FD1386AD0604548A09000000081386AD08078000F600000008000000080000000400000003138671060000000304548A091386710800000004078000F600000008128A410100000000078000F8128A7D0307800104000000060000000500000001000000051386AD08078000F6128A7D01078000F8128A7D030780010400000008128A7CFB0000000200000008000000010000000800000000128A410100000000078000F8128A7D0307800104128A40FB022A457D13E20106067ECE8900000008000000080000000313E1C5060000000300000005000000020000000500000001000000050000000400000001135D4503000000010500010400000008135D80FB00000002045489FD0000000813867106000000030000000500000000135D450100000000050000F8135D810305000104135D44FB045489FD1386AD0604548A09000000061386AD08028000F613D7ED01078000F800000006000000080000000013D7B10100000000078000F800000006128A4103000000010280010400000006000000050000000400000003138671060000000304548A09000000061386AD08028000F613D7ED01078000F800000006128A4103000000010280010400000006000000050000000013D7B10100000000078000F800000006000000050000000400000002135D80FB00000002045489FD1386AD0604548A091386710800000004028000F600000008000000051386AD08028000F613D7ED01078000F8128A7D0307800104128A40FB067ECE7D0000000612EA59060000000300000005000000020000000500000001000000050000000000000005000000040000000313867106000000030000000500000001135D45030000000105000104135D44FB045489FD1386AD0604548A09000000081386AD08028000F6000000080000000500000004000000031386710600000003000000050000000200000005"
theorem small_3520223_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3520223_left_root small_3520223_left_fuel small_3520223_left_count small_3520223_left_encoded = true := by
  decide +kernel
theorem small_3520223_left_covered : CoveredBy scale carrier boxes small_3520223_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3520223_left_root small_3520223_left_fuel small_3520223_left_count small_3520223_left_encoded small_3520223_left_checked

theorem cover_3520223 : CoveredBy scale carrier boxes root_3520223 := by
  apply coveredBy_split_literal root_3520223 small_3520223_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3520679 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3520223_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3520679
#print axioms cover_3520223

def root_3520217 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3520217_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3520217_left_fuel : Nat := 1
def small_3520217_left_count : Nat := 1
def small_3520217_left_encoded : String := "00000003"
theorem small_3520217_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3520217_left_root small_3520217_left_fuel small_3520217_left_count small_3520217_left_encoded = true := by
  decide +kernel
theorem small_3520217_left_covered : CoveredBy scale carrier boxes small_3520217_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3520217_left_root small_3520217_left_fuel small_3520217_left_count small_3520217_left_encoded small_3520217_left_checked

theorem cover_3520217 : CoveredBy scale carrier boxes root_3520217 := by
  apply coveredBy_split_literal root_3520217 small_3520217_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3520223 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3520217_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3520223
#print axioms cover_3520217

def root_3519735 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3519735_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3519735_left_fuel : Nat := 22
def small_3519735_left_count : Nat := 225
def small_3519735_left_encoded : String := "12073D0608A913091207010800000004050000F6135D81010000000800000000135D450100000000050000F8135D810305000104135D44FB0CFD9BFD0F350D0600000008000000030F34D1060000000304548A09000000061386AD08028000F60000000813D7B10100000000078000F800000006000000080000000400000002135D80FB000000020CFD9BFD000000080F34D1060000000304548A09000000080000000A00000001135D45030000000105000104135D44FB0CFD9BFD0000000800000008000000020000000812073D08050000F6135D8101050000F8135D810305000104135D44FB0CFD9BFD0F350D060CFD9C090F34D108000000040000000800000007000000030F34D106000000030CFD9C090F34D10800000004078000F600000008128A410100000000078000F8128A7D030280010413D7B0FB0AD3577D0000000810D101060000000300000006000000020000000A00000001000000080F350D080C9A8708000000070F878D09078000F600000007128A4101000000000000000A000000040000000400000002135D80FB000000020CFD9BFD0F350D060CFD9C090F34D10800000004000000080F350D080C9A8706000000070000000700000004000000030F34D106000000030CFD9C090F34D10800000004078000F600000008128A410100000000000000080F350D080000000A0000000400000001135D45030000000105000104135D44FB0CFD9BFD000000070F34D106000000030CFD9C090F34D10800000004000000080000000700000002135D80FB000000020CFD9BFD0F350D060CFD9C090000000800000007000000030F34D106000000030CFD9C090F34D10800000004000000080000000A00000000135D450100000000050000F8135D810305000104135D44FB0CFD9BFD0F350D060CFD9C090F34D108000000040C9A87060F8750FD00000008000000030000000A0F350D080000000700000004000000030F34D106000000030CFD9C090F34D10800000004028000F613D7ED01078000F80000000A0000000A000000000000000A0F350D080000000A0000000400000002135D80FB000000020CFD9BFD0F350D060CFD9C090000000A0F350D080000000A00000004000000030F34D106000000030000000A00000001135D45030000000105000104135D44FB0CFD9BFD0000000A0F34D106000000030000000A00000002135D80FB000000020CFD9BFD0000000A0000000A0000000400000003"
theorem small_3519735_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3519735_left_root small_3519735_left_fuel small_3519735_left_count small_3519735_left_encoded = true := by
  decide +kernel
theorem small_3519735_left_covered : CoveredBy scale carrier boxes small_3519735_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3519735_left_root small_3519735_left_fuel small_3519735_left_count small_3519735_left_encoded small_3519735_left_checked

theorem cover_3519735 : CoveredBy scale carrier boxes root_3519735 := by
  apply coveredBy_split_literal root_3519735 small_3519735_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3520217 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3519735_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3520217
#print axioms cover_3519735

def root_3519730 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3519730_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3519730_right_fuel : Nat := 1
def small_3519730_right_count : Nat := 1
def small_3519730_right_encoded : String := "00000004"
theorem small_3519730_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3519730_right_root small_3519730_right_fuel small_3519730_right_count small_3519730_right_encoded = true := by
  decide +kernel
theorem small_3519730_right_covered : CoveredBy scale carrier boxes small_3519730_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3519730_right_root small_3519730_right_fuel small_3519730_right_count small_3519730_right_encoded small_3519730_right_checked

theorem cover_3519730 : CoveredBy scale carrier boxes root_3519730 := by
  apply coveredBy_split_literal root_3519730 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3519735 small_3519730_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3519735
  · exact small_3519730_right_covered
#print axioms cover_3519730

def root_3519580 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3519580_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3519580_left_fuel : Nat := 17
def small_3519580_left_count : Nat := 73
def small_3519580_left_encoded : String := "1151E9090000000408A912FD12073D06050000F6135D8101050000F8135D8103050001040000000700000007000000010000000700000000135D450100000000050000F8135D8103050001040000000A135D80FB000000020000000A0000000100000007000000031207010600000003050000F6135D8101050000F8135D810305000104135D44FB0500010800000007135D8109045489FD000000071386710600000003078000F6128A7D01078000F8000000080000000700000000000000080000000400000002135D80FB000000020500010800000006135D81090000000A0000000400000001135D45030000000105000104000000070000000A00000000135D450100000000050000F8135D8103050001040000000A0000000A000000010000000A"
theorem small_3519580_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3519580_left_root small_3519580_left_fuel small_3519580_left_count small_3519580_left_encoded = true := by
  decide +kernel
theorem small_3519580_left_covered : CoveredBy scale carrier boxes small_3519580_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3519580_left_root small_3519580_left_fuel small_3519580_left_count small_3519580_left_encoded small_3519580_left_checked

theorem cover_3519580 : CoveredBy scale carrier boxes root_3519580 := by
  apply coveredBy_split_literal root_3519580 small_3519580_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3519730 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3519580_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3519730
#print axioms cover_3519580

def root_3519574 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3519574_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3519574_left_fuel : Nat := 1
def small_3519574_left_count : Nat := 1
def small_3519574_left_encoded : String := "00000003"
theorem small_3519574_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3519574_left_root small_3519574_left_fuel small_3519574_left_count small_3519574_left_encoded = true := by
  decide +kernel
theorem small_3519574_left_covered : CoveredBy scale carrier boxes small_3519574_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3519574_left_root small_3519574_left_fuel small_3519574_left_count small_3519574_left_encoded small_3519574_left_checked

theorem cover_3519574 : CoveredBy scale carrier boxes root_3519574 := by
  apply coveredBy_split_literal root_3519574 small_3519574_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3519580 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3519574_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3519580
#print axioms cover_3519574

def root_3519482 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3519482_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3519482_left_fuel : Nat := 15
def small_3519482_left_count : Nat := 43
def small_3519482_left_encoded : String := "1151E8FD0A0001081151E90900000004000000071152250908A9130912070108000000040000000812073D08050000F6135D8101050000F8135D8103050001040000000500000008000000010000000700000000135D450100000000050000F8135D810305000104135D44FB0000000700000002135D80FB000000020500010600000008135D80FD000000030CFD9C0900000008000000070000000100000007000000040000000400000003"
theorem small_3519482_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3519482_left_root small_3519482_left_fuel small_3519482_left_count small_3519482_left_encoded = true := by
  decide +kernel
theorem small_3519482_left_covered : CoveredBy scale carrier boxes small_3519482_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3519482_left_root small_3519482_left_fuel small_3519482_left_count small_3519482_left_encoded small_3519482_left_checked

theorem cover_3519482 : CoveredBy scale carrier boxes root_3519482 := by
  apply coveredBy_split_literal root_3519482 small_3519482_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3519574 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3519482_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3519574
#print axioms cover_3519482

def root_3519477 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3519477_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3519477_right_fuel : Nat := 1
def small_3519477_right_count : Nat := 1
def small_3519477_right_encoded : String := "00000002"
theorem small_3519477_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3519477_right_root small_3519477_right_fuel small_3519477_right_count small_3519477_right_encoded = true := by
  decide +kernel
theorem small_3519477_right_covered : CoveredBy scale carrier boxes small_3519477_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3519477_right_root small_3519477_right_fuel small_3519477_right_count small_3519477_right_encoded small_3519477_right_checked

theorem cover_3519477 : CoveredBy scale carrier boxes root_3519477 := by
  apply coveredBy_split_literal root_3519477 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.root_3519482 small_3519477_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085.cover_3519482
  · exact small_3519477_right_covered
#print axioms cover_3519477

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0085
