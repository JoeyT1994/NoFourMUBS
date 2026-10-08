import TaoBundleAssembly0678
import TaoBundleChunkBatch0945
import TaoBundleChunkBatch0946
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679
def root_10070902 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070902_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070902_right_fuel : Nat := 24
def small_10070902_right_count : Nat := 327
def small_10070902_right_encoded : String := "1151E8FF08A91303120701020000000108A913050000000512073CFA0000000208A913070000000512073CFC0000000305000100135D450100000000050000FE135D80FF0000000404548A03000000051386AD020CFD9C05000000050F350CFA000000020CFD9C07000000050F350CFC000000030C9A86FA0000000A0F875105000000020000000A00000001135D44FF04548A03000000051386AD020CFD9C05000000050F350CFA000000020CFD9C07000000050F350CFC000000030000000A0000000100000004135D8101050000FE135D80FF0000000404548A03000000051386AD020CFD9C05000000050F350CFA000000020CFD9C07000000050F350CFC000000030C9A86FA0F878D0500000005000000020F875105000000020C9A86FC0F878D0700000005000000030F875107000000030780010000000007128A7D01000000070000000000000001135D44FF04548A0313867102000000010CFD9C05000000050F350CFA000000020CFD9C07000000050F350CFC000000030C9A86FA000000050F875105000000020C9A86FC000000050F875107000000030000000A1386AD020CFD9C05000000050F350CFA000000020CFD9C07000000050F350CFC000000030C9A86FA0F878D050C9A86FC000000050000000A000000020F875105000000020C9A86FC0F878D07078001000000000500000006000000030000000A00000001000000040000000012073D0208A91305120700FA08A913070000000512073CFC0000000305000100135D450100000000050000FE135D80FF000000040CFD9C03000000050F350D0204548A05000000051386ACFA000000020CFD9C07000000050F350CFC00000003000000050000000100000005135D8101050000FE00000005135D44FF0000000500000004000000000000000212073CFA0000000208A91307120700FC05000100135D450100000000050000FE0000000600000005000000060000000312073CFC0000000305000100135D450100000000050000FE135D80FF000000040CFD9C030F34D102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9C070F34D0FC00000005000000030F350CFC000000030C9A86FA0000000A0F87510500000002000000070F350D020CFD9C050F34D0FA0CFD9C07000000050F350CFC000000030000000A000000020F350CFA000000020CFD9C07000000060F350CFC000000030000000700000001135D44FF0CFD9C030F34D102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9C070F34D0FC00000005000000030F350CFC000000030000000A0F350D020CFD9C050F34D0FA0CFD9C07000000050000000A000000020F350CFA000000020CFD9C07000000060F350CFC00000003000000070000000100000004135D8101050000FE135D80FF000000040CFD9C030F34D102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9C07000000060F350CFC000000030C9A86FA0F878D050C9A86FC000000060F8751070000000300000007000000020F87510500000002000000060F350D020CFD9C050F34D0FA00000006000000020000000600000001135D44FF0CFD9C030F34D102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9C07000000060F350CFC000000030C9A86FA0F878D050C9A86FC000000060000000A000000020F875105000000020C9A86FC00000006000000070F350D020CFD9C050F34D0FA0000000600000002000000060000000100000004000000000000000100000004"
theorem small_10070902_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10070902_right_root small_10070902_right_fuel small_10070902_right_count small_10070902_right_encoded = true := by
  decide +kernel
theorem small_10070902_right_covered : CoveredBy scale carrier boxes small_10070902_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10070902_right_root small_10070902_right_fuel small_10070902_right_count small_10070902_right_encoded small_10070902_right_checked

theorem cover_10070902 : CoveredBy scale carrier boxes root_10070902 := by
  apply coveredBy_split_literal root_10070902 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.root_10070903 small_10070902_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.cover_10070903
  · exact small_10070902_right_covered
#print axioms cover_10070902

def root_10070897 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070897_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070897_right_fuel : Nat := 1
def small_10070897_right_count : Nat := 1
def small_10070897_right_encoded : String := "00000003"
theorem small_10070897_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10070897_right_root small_10070897_right_fuel small_10070897_right_count small_10070897_right_encoded = true := by
  decide +kernel
theorem small_10070897_right_covered : CoveredBy scale carrier boxes small_10070897_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10070897_right_root small_10070897_right_fuel small_10070897_right_count small_10070897_right_encoded small_10070897_right_checked

theorem cover_10070897 : CoveredBy scale carrier boxes root_10070897 := by
  apply coveredBy_split_literal root_10070897 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.root_10070902 small_10070897_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.cover_10070902
  · exact small_10070897_right_covered
#print axioms cover_10070897

def root_10086830 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10086830_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10086830_right_fuel : Nat := 22
def small_10086830_right_count : Nat := 115
def small_10086830_right_encoded : String := "1386AD020CFD9C050F34D0FA045489FF1386ACFE000000040280010013D7B10100000000078000FC128A7D0700000008000000030000000813D7ED01078000FC00000008000000080000000000000008000000020F350CFA00000002045489FF1386ACFE000000040C9A86FA0F878D050280010013D7B10100000000078000FC128A7D07067ECE8312EA590200000001067ECE7F0000000A0000000812EA95020000000800000001000000030000000A13D7ED01078000FC128A7D07067ECE8312EA590200000001000000080000000800000003128A410700000003067ECE8312EA590200000001000000080000000800000000000000020F875105000000020280010013D7B10100000000078000FC128A7D07067ECE8312EA590200000001067ECE7F0000000A000000050000000500000003128A4107000000030000000513D7ED01078000FC128A7D07067ECE8312EA590200000001067ECE7F12EA94FE000000040B4D43FA10804D0503C001000000000A13A54D0108C000FC11FC25070000000800000003000000070000000000000002108011050000000203C001000000000700000007000000050000000500000003128A41070000000300000005000000000000000500000001"
theorem small_10086830_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10086830_right_root small_10086830_right_fuel small_10086830_right_count small_10086830_right_encoded = true := by
  decide +kernel
theorem small_10086830_right_covered : CoveredBy scale carrier boxes small_10086830_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10086830_right_root small_10086830_right_fuel small_10086830_right_count small_10086830_right_encoded small_10086830_right_checked

theorem cover_10086830 : CoveredBy scale carrier boxes root_10086830 := by
  apply coveredBy_split_literal root_10086830 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3779.root small_10086830_right_root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3779.covered
  · exact small_10086830_right_covered
#print axioms cover_10086830

def root_10086825 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10086825_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10086825_right_fuel : Nat := 1
def small_10086825_right_count : Nat := 1
def small_10086825_right_encoded : String := "00000003"
theorem small_10086825_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10086825_right_root small_10086825_right_fuel small_10086825_right_count small_10086825_right_encoded = true := by
  decide +kernel
theorem small_10086825_right_covered : CoveredBy scale carrier boxes small_10086825_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10086825_right_root small_10086825_right_fuel small_10086825_right_count small_10086825_right_encoded small_10086825_right_checked

theorem cover_10086825 : CoveredBy scale carrier boxes root_10086825 := by
  apply coveredBy_split_literal root_10086825 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.root_10086830 small_10086825_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.cover_10086830
  · exact small_10086825_right_covered
#print axioms cover_10086825

def root_10086824 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10086824_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10086824_right_fuel : Nat := 10
def small_10086824_right_count : Nat := 49
def small_10086824_right_encoded : String := "135D45070000000304548A0313867102000000010CFD9C050F34D0FA045489FF0000000600000006000000020F350CFA00000002045489FF1386ACFE000000040C9A86FA0000000A0F875105000000020000000A138670FE0C9A86FA0F878D0500000006000000020F8751050000000200000005000000041386AD020CFD9C050F34D0FA045489FF0000000A00000008000000020F350CFA00000002045489FF1386ACFE000000040C9A86FA0000000A0F87510500000002000000050000000500000001"
theorem small_10086824_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10086824_right_root small_10086824_right_fuel small_10086824_right_count small_10086824_right_encoded = true := by
  decide +kernel
theorem small_10086824_right_covered : CoveredBy scale carrier boxes small_10086824_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10086824_right_root small_10086824_right_fuel small_10086824_right_count small_10086824_right_encoded small_10086824_right_checked

theorem cover_10086824 : CoveredBy scale carrier boxes root_10086824 := by
  apply coveredBy_split_literal root_10086824 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.root_10086825 small_10086824_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.cover_10086825
  · exact small_10086824_right_covered
#print axioms cover_10086824

def root_10086818 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10086818_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10086818_left_fuel : Nat := 1
def small_10086818_left_count : Nat := 1
def small_10086818_left_encoded : String := "00000000"
theorem small_10086818_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10086818_left_root small_10086818_left_fuel small_10086818_left_count small_10086818_left_encoded = true := by
  decide +kernel
theorem small_10086818_left_covered : CoveredBy scale carrier boxes small_10086818_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10086818_left_root small_10086818_left_fuel small_10086818_left_count small_10086818_left_encoded small_10086818_left_checked

theorem cover_10086818 : CoveredBy scale carrier boxes root_10086818 := by
  apply coveredBy_split_literal root_10086818 small_10086818_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.root_10086824 coord0 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_10086818_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.cover_10086824
#print axioms cover_10086818

def root_10086817 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10086817 : CoveredBy scale carrier boxes root_10086817 := by
  apply coveredBy_split_literal root_10086817 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.root_10086818 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3780.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.cover_10086818
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3780.covered
#print axioms cover_10086817

def root_10086812 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10086812_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10086812_right_fuel : Nat := 1
def small_10086812_right_count : Nat := 1
def small_10086812_right_encoded : String := "00000004"
theorem small_10086812_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10086812_right_root small_10086812_right_fuel small_10086812_right_count small_10086812_right_encoded = true := by
  decide +kernel
theorem small_10086812_right_covered : CoveredBy scale carrier boxes small_10086812_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10086812_right_root small_10086812_right_fuel small_10086812_right_count small_10086812_right_encoded small_10086812_right_checked

theorem cover_10086812 : CoveredBy scale carrier boxes root_10086812 := by
  apply coveredBy_split_literal root_10086812 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.root_10086817 small_10086812_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.cover_10086817
  · exact small_10086812_right_covered
#print axioms cover_10086812

def root_10085776 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10085776_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10085776_left_fuel : Nat := 30
def small_10085776_left_count : Nat := 491
def small_10085776_left_encoded : String := "12073CFE0000000405000100135D450100000000050000FC135D810704548A0313867102000000010CFD9C050F34D0FA0CFD9BFF000000050F34D0FE0000000500000004000000020F350CFA000000020CFD9BFF0000000A0F34D0FE0C9A86FA0F878D05028001000000000A13D7ED01078000FC128A7D07022A4583000000050000000A000000030000000A00000000000000020F87510500000002028001000000000A13D7ED01078000FC128A7D07022A458313E1C502000000010AD3577F0000000510D100FE0B4D43FA0000000A10801105000000020000000A0000000413E201020AD3577F0000000A10D100FE0B4D43FA0000000A0000000A0000000400000001000000030000000A00000000000000041386AD020CFD9C050F34D0FA0000000A000000020F350CFA000000020CFD9BFF0000000A0F34D0FE0C9A86FA0000000A0F87510500000002028001000000000A13D7ED01078000FC128A7D07067ECE8312EA5902000000010000000A00000007000000030000000700000000000000040000000100000003135D45070000000304548A0313867102000000010000000A0000000A135D8101050000FC135D810704548A0313867102000000010CFD9C050F34D0FA0CFD9BFF000000050F34D0FE0000000900000004000000020F350CFA000000020CFD9BFF0F350CFE000000040C9A86FA0F878D050C9A86FE0F878CFF000000040780010000000005000000090F8750FF0000000500000004000000020F875105000000020C9A86FE0F878CFF0000000407800100128A4101000000000000000A128A7D01078000FC128A7D07022A458300000005000000070000000300000007000000000F8750FF0780010000000007128A7D010000000700000000000000040F34D0FE0C9A86FA0F878D0507800100128A410100000000078000FC128A7D07022A45830000000513E201020AD3577F0000000510D100FE0DE7C9FA000000090E5FD905000000020640010012FF7101000000000000000A00000009000000040000000100000003128A410700000003022A4583000000090000000A00000009000000020F8751050000000207800100128A410100000000078000FC128A7D07022A458313E1C502000000010AD3577F0000000510D100FE0B4D43FA10804D050640010012FF71010000000008C000FC000000050000000A000000090000000210801105000000020640010012FF71010000000008C000FC11FC2507011523430000000500000007000000030000000712FFAD0108C000FC11FC25070115234300000005000000070000000300000007000000000000000413E201020AD3577F10D13CFE000000040000000710D100FE0B4D43FA10804D050640010012FF71010000000008C000FC11FC25070000000A000000030000000712FFAD0108C000FC11FC2507033F67C313BBF50200000001000000090000000700000003000000070000000000000002108011050000000200000007000000040000000100000003128A410700000003022A458313E1C502000000010AD3577F0000000710D100FE0B4D43FA00000009000000070000000400000007128A7D01078000FC128A7D07022A458313E1C502000000010AD3577F0000000510D100FE000000090000000413E201020AD3577F10D13CFE000000040000000710D100FE0B4D43FA0000000900000007000000040000000100000003128A410700000003022A4583000000090000000700000000000000041386AD020CFD9C050F34D0FA0CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004078001000000000A000000090F8750FF00000005000000040F34D0FE07800100128A410100000000078000FC128A7D070000000800000003000000080000000900000004000000020F350CFA000000020CFD9BFF0F350CFE000000040C9A86FA0F878D050C9A86FE0F878CFF00000004078001000000000A128A7D01078000FC128A7D07067ECE8312EA5902000000010DE7C9FA0000000500000007000000070000000300000007000000000F8750FF0000000A00000004000000020F875105000000020C9A86FE00000007000000070F34D0FE0C9A86FA0F878D0507800100128A410100000000078000FC128A7D07067ECE8312EA5902000000010AD3577F0000000A0000000812EA95020AD3577F0000000A000000080000000100000003128A4107000000030000000A128A7D01078000FC128A7D07067ECE8312EA5902000000010000000800000008000000030000000800000000000000020F8751050000000207800100128A410100000000078000FC128A7D07067ECE8312EA5902000000010AD3577F0000000710D100FE0000000700000004000000070000000300000007128A7D01078000FC128A7D07067ECE8312EA5902000000010AD3577F0000000710D100FE000000070000000400000007000000030000000700000000000000040000000100000003135D45070000000304548A0313867102000000010CFD9C050F34D0FA0CFD9BFF000000090F34D0FE0000000900000004000000020F350CFA000000020CFD9BFF0000000A0F34D0FE0C9A86FA0F878D0500000009000000020F8751050000000200000007000000041386AD020CFD9C050F34D0FA0000000A000000020F350CFA000000020CFD9BFF000000070F34D0FE0C9A86FA0000000A00000007000000040000000100000000"
theorem small_10085776_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10085776_left_root small_10085776_left_fuel small_10085776_left_count small_10085776_left_encoded = true := by
  decide +kernel
theorem small_10085776_left_covered : CoveredBy scale carrier boxes small_10085776_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10085776_left_root small_10085776_left_fuel small_10085776_left_count small_10085776_left_encoded small_10085776_left_checked

theorem cover_10085776 : CoveredBy scale carrier boxes root_10085776 := by
  apply coveredBy_split_literal root_10085776 small_10085776_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.root_10086812 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10085776_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.cover_10086812
#print axioms cover_10085776

def root_10085770 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10085770_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10085770_left_fuel : Nat := 1
def small_10085770_left_count : Nat := 1
def small_10085770_left_encoded : String := "00000002"
theorem small_10085770_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10085770_left_root small_10085770_left_fuel small_10085770_left_count small_10085770_left_encoded = true := by
  decide +kernel
theorem small_10085770_left_covered : CoveredBy scale carrier boxes small_10085770_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10085770_left_root small_10085770_left_fuel small_10085770_left_count small_10085770_left_encoded small_10085770_left_checked

theorem cover_10085770 : CoveredBy scale carrier boxes root_10085770 := by
  apply coveredBy_split_literal root_10085770 small_10085770_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.root_10085776 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10085770_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.cover_10085776
#print axioms cover_10085770

def root_10085588 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10085588_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10085588_left_fuel : Nat := 15
def small_10085588_left_count : Nat := 89
def small_10085588_left_encoded : String := "120700FA08A912FF12073CFE0000000405000100135D450100000000050000FC135D810704548A03000000051386AD0204548A05000000050000000A00000001000000030000000A135D8101050000FC135D810704548A03000000051386AD0204548A05000000051386ACFA000000020CFD9BFF000000050F34D0FE00000005000000040000000100000003135D4507000000030000000900000000120700FE05000100135D450100000000050000FC135D810704548A03138671020000000104548A05000000061386ACFA00000002045489FF00000009000000061386AD0204548A05138670FA045489FF0000000900000006000000021386ACFA00000002045489FF1386ACFE00000004028001000000000800000008000000080000000100000003135D45070000000304548A03000000061386AD0204548A05000000061386ACFA00000002045489FF000000060000000600000001000000090000000400000002"
theorem small_10085588_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10085588_left_root small_10085588_left_fuel small_10085588_left_count small_10085588_left_encoded = true := by
  decide +kernel
theorem small_10085588_left_covered : CoveredBy scale carrier boxes small_10085588_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10085588_left_root small_10085588_left_fuel small_10085588_left_count small_10085588_left_encoded small_10085588_left_checked

theorem cover_10085588 : CoveredBy scale carrier boxes root_10085588 := by
  apply coveredBy_split_literal root_10085588 small_10085588_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.root_10085770 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10085588_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.cover_10085770
#print axioms cover_10085588

def root_10085582 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10085582_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10085582_left_fuel : Nat := 1
def small_10085582_left_count : Nat := 1
def small_10085582_left_encoded : String := "00000001"
theorem small_10085582_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10085582_left_root small_10085582_left_fuel small_10085582_left_count small_10085582_left_encoded = true := by
  decide +kernel
theorem small_10085582_left_covered : CoveredBy scale carrier boxes small_10085582_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10085582_left_root small_10085582_left_fuel small_10085582_left_count small_10085582_left_encoded small_10085582_left_checked

theorem cover_10085582 : CoveredBy scale carrier boxes root_10085582 := by
  apply coveredBy_split_literal root_10085582 small_10085582_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.root_10085588 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10085582_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.cover_10085588
#print axioms cover_10085582

def root_10085581 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10085581 : CoveredBy scale carrier boxes root_10085581 := by
  apply coveredBy_split_literal root_10085581 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.root_10085582 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3781.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.cover_10085582
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3781.covered
#print axioms cover_10085581

def root_10085575 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10085575_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10085575_left_fuel : Nat := 1
def small_10085575_left_count : Nat := 1
def small_10085575_left_encoded : String := "00000004"
theorem small_10085575_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10085575_left_root small_10085575_left_fuel small_10085575_left_count small_10085575_left_encoded = true := by
  decide +kernel
theorem small_10085575_left_covered : CoveredBy scale carrier boxes small_10085575_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10085575_left_root small_10085575_left_fuel small_10085575_left_count small_10085575_left_encoded small_10085575_left_checked

theorem cover_10085575 : CoveredBy scale carrier boxes root_10085575 := by
  apply coveredBy_split_literal root_10085575 small_10085575_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.root_10085581 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_10085575_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.cover_10085581
#print axioms cover_10085575

def root_10085574 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10085574_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10085574_right_fuel : Nat := 16
def small_10085574_right_count : Nat := 121
def small_10085574_right_encoded : String := "1151E8FF08A91303120701020000000108A91305120700FA0500010000000005135D8101050000FC000000050000000A000000000000000212073CFA00000002050001000000000A135D8101050000FC135D8107050000FE135D80FF0000000404548A0313867102000000010CFD9C050F34D0FA00000005000000020000000A1386AD020CFD9C050F34D0FA0000000A000000020000000A00000001135D44FF04548A0313867102000000010000000A0000000A00000004000000030000000A0000000012073D0208A91305120700FA050001000000000A135D8101050000FC135D8107050000FE135D80FF000000040CFD9C03000000050000000A135D44FF0000000800000004000000030000000A000000000000000212073CFA0000000205000100135D450100000000050000FC135D8107050000FE135D80FF000000040CFD9C030F34D102000000010000000A00000007135D44FF0000000A00000004000000030000000A135D8101050000FC135D8107050000FE135D80FF000000040CFD9C030F34D102000000010CFD9C050F34D0FA0000000A000000020000000A00000007135D44FF0CFD9C030F34D102000000010000000A000000070000000400000003135D450700000003050000FE0000000700000007000000000000000100000004"
theorem small_10085574_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10085574_right_root small_10085574_right_fuel small_10085574_right_count small_10085574_right_encoded = true := by
  decide +kernel
theorem small_10085574_right_covered : CoveredBy scale carrier boxes small_10085574_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10085574_right_root small_10085574_right_fuel small_10085574_right_count small_10085574_right_encoded small_10085574_right_checked

theorem cover_10085574 : CoveredBy scale carrier boxes root_10085574 := by
  apply coveredBy_split_literal root_10085574 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.root_10085575 small_10085574_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.cover_10085575
  · exact small_10085574_right_covered
#print axioms cover_10085574

def root_10085568 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10085568_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10085568_left_fuel : Nat := 1
def small_10085568_left_count : Nat := 1
def small_10085568_left_encoded : String := "00000003"
theorem small_10085568_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10085568_left_root small_10085568_left_fuel small_10085568_left_count small_10085568_left_encoded = true := by
  decide +kernel
theorem small_10085568_left_covered : CoveredBy scale carrier boxes small_10085568_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10085568_left_root small_10085568_left_fuel small_10085568_left_count small_10085568_left_encoded small_10085568_left_checked

theorem cover_10085568 : CoveredBy scale carrier boxes root_10085568 := by
  apply coveredBy_split_literal root_10085568 small_10085568_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.root_10085574 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10085568_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.cover_10085574
#print axioms cover_10085568

def root_10070896 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10070896 : CoveredBy scale carrier boxes root_10070896 := by
  apply coveredBy_split_literal root_10070896 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.root_10070897 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.root_10085568 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.cover_10070897
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.cover_10085568
#print axioms cover_10070896

def root_10070891 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070891_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070891_right_fuel : Nat := 1
def small_10070891_right_count : Nat := 1
def small_10070891_right_encoded : String := "00000002"
theorem small_10070891_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10070891_right_root small_10070891_right_fuel small_10070891_right_count small_10070891_right_encoded = true := by
  decide +kernel
theorem small_10070891_right_covered : CoveredBy scale carrier boxes small_10070891_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10070891_right_root small_10070891_right_fuel small_10070891_right_count small_10070891_right_encoded small_10070891_right_checked

theorem cover_10070891 : CoveredBy scale carrier boxes root_10070891 := by
  apply coveredBy_split_literal root_10070891 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.root_10070896 small_10070891_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.cover_10070896
  · exact small_10070891_right_covered
#print axioms cover_10070891

def root_10094136 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10094136 : CoveredBy scale carrier boxes root_10094136 := by
  apply coveredBy_split_literal root_10094136 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3782.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3783.root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3782.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3783.covered
#print axioms cover_10094136

def root_10094130 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10094130_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10094130_left_fuel : Nat := 1
def small_10094130_left_count : Nat := 1
def small_10094130_left_encoded : String := "00000003"
theorem small_10094130_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10094130_left_root small_10094130_left_fuel small_10094130_left_count small_10094130_left_encoded = true := by
  decide +kernel
theorem small_10094130_left_covered : CoveredBy scale carrier boxes small_10094130_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10094130_left_root small_10094130_left_fuel small_10094130_left_count small_10094130_left_encoded small_10094130_left_checked

theorem cover_10094130 : CoveredBy scale carrier boxes root_10094130 := by
  apply coveredBy_split_literal root_10094130 small_10094130_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.root_10094136 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10094130_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.cover_10094136
#print axioms cover_10094130

def root_10094018 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10094018_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10094018_left_fuel : Nat := 13
def small_10094018_left_count : Nat := 55
def small_10094018_left_encoded : String := "120700FC08A912FF12073CFE0000000405000100135D450100000000050000FA135D810504548A03000000051386AD0204548A07000000051386ACFC000000030CFD9BFF00000005000000090000000100000002135D45050000000204548A030000000500000009135D8101050000FA135D810504548A03000000050000000600000002135D45050000000204548A03000000050000000600000000120700FE0500010000000009135D8101050000FA135D810504548A03138671020000000100000006000000060000000200000009000000000000000400000003"
theorem small_10094018_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10094018_left_root small_10094018_left_fuel small_10094018_left_count small_10094018_left_encoded = true := by
  decide +kernel
theorem small_10094018_left_covered : CoveredBy scale carrier boxes small_10094018_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10094018_left_root small_10094018_left_fuel small_10094018_left_count small_10094018_left_encoded small_10094018_left_checked

theorem cover_10094018 : CoveredBy scale carrier boxes root_10094018 := by
  apply coveredBy_split_literal root_10094018 small_10094018_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.root_10094130 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10094018_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.cover_10094130
#print axioms cover_10094018

def root_10094012 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10094012_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10094012_left_fuel : Nat := 1
def small_10094012_left_count : Nat := 1
def small_10094012_left_encoded : String := "00000001"
theorem small_10094012_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10094012_left_root small_10094012_left_fuel small_10094012_left_count small_10094012_left_encoded = true := by
  decide +kernel
theorem small_10094012_left_covered : CoveredBy scale carrier boxes small_10094012_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10094012_left_root small_10094012_left_fuel small_10094012_left_count small_10094012_left_encoded small_10094012_left_checked

theorem cover_10094012 : CoveredBy scale carrier boxes root_10094012 := by
  apply coveredBy_split_literal root_10094012 small_10094012_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.root_10094018 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10094012_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.cover_10094018
#print axioms cover_10094012

def root_10094011 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10094011_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10094011_right_fuel : Nat := 18
def small_10094011_right_count : Nat := 161
def small_10094011_right_encoded : String := "12073D0208A91307120700FC08A912FF12073CFE0000000405000100135D450100000000050000FA000000060000000600000006120700FE050001000000000900000006000000040000000312073CFC0000000308A912FF12073CFE0000000405000100135D450100000000050000FA135D81050CFD9C030F34D102000000010CFD9C070F34D0FC0CFD9BFF000000060F34D0FE0000000600000004000000030F350CFC000000030CFD9BFF0F350CFE00000004000000070F34D0FE0C9A86FC0F878D0700000009000000030F8751070000000300000007000000040F350D020CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9BFF00000007000000050000000100000002135D4505000000020CFD9C030F34D102000000010CFD9C070F34D0FC0CFD9BFF0000000600000006000000030F350CFC00000003000000070F350D020CFD9C07000000070000000700000001135D8101050000FA135D81050CFD9C030F34D102000000010CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9BFF000000060F34D0FE00000006000000040F350D02000000060000000100000002135D4505000000020CFD9C030F34D102000000010CFD9C07000000060F350CFC00000003000000070F350D02000000060000000100000000120700FE05000100135D450100000000050000FA135D81050CFD9C0300000009000000050000000200000009135D8101050000FA135D81050CFD9C030F34D102000000010CFD9C07000000060F350CFC00000003045489FF00000006000000050F350D02000000060000000100000002135D4505000000020CFD9C030F34D102000000010CFD9C07000000060000000500000005000000000000000400000001"
theorem small_10094011_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10094011_right_root small_10094011_right_fuel small_10094011_right_count small_10094011_right_encoded = true := by
  decide +kernel
theorem small_10094011_right_covered : CoveredBy scale carrier boxes small_10094011_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10094011_right_root small_10094011_right_fuel small_10094011_right_count small_10094011_right_encoded small_10094011_right_checked

theorem cover_10094011 : CoveredBy scale carrier boxes root_10094011 := by
  apply coveredBy_split_literal root_10094011 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.root_10094012 small_10094011_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.cover_10094012
  · exact small_10094011_right_covered
#print axioms cover_10094011

def root_10094005 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10094005_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10094005_left_fuel : Nat := 1
def small_10094005_left_count : Nat := 1
def small_10094005_left_encoded : String := "00000004"
theorem small_10094005_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10094005_left_root small_10094005_left_fuel small_10094005_left_count small_10094005_left_encoded = true := by
  decide +kernel
theorem small_10094005_left_covered : CoveredBy scale carrier boxes small_10094005_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10094005_left_root small_10094005_left_fuel small_10094005_left_count small_10094005_left_encoded small_10094005_left_checked

theorem cover_10094005 : CoveredBy scale carrier boxes root_10094005 := by
  apply coveredBy_split_literal root_10094005 small_10094005_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.root_10094011 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_10094005_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.cover_10094011
#print axioms cover_10094005

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679
