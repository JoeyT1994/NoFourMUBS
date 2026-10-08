import TaoBundleAssembly0532
import TaoBundleAssembly0533
import TaoBundleChunkBatch0731
import TaoBundleChunkBatch0732
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534
def root_7785785 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7785785_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7785785_right_fuel : Nat := 20
def small_7785785_right_count : Nat := 117
def small_7785785_right_encoded : String := "135D44FB04548A011386710000000000045489FD1386ACFC00000003045489FF1386ACFE00000004078000F8128A7CF900000001028000FA13D7ECFB00000002022A458113E1C50000000000067ECE7D12EA94FC00000003067ECE7F12EA94FE0000000408C000F80000000911FBE8F900000009000000010000000912EA58FC067ECE7F00000008000000060000000313E20100067ECE7D00000009000000080000000013D7B0FB022A458113E1C50000000000067ECE7D00000009000000060000000800000002128A40F9028000FA13D7ECFB00000002022A45810000000613E20100067ECE7D12EA94FC00000003067ECE7F12EA94FE0000000400000006000000060000000600000000000000060000000100000006000000061386AD00045489FD1386ACFC00000003045489FF1386ACFE00000004078000F8128A7CF900000001028000FA13D7ECFB00000002067ECE8112EA590000000000067ECE7D00000009000000080000000800000008128A40F9028000FA13D7ECFB00000002067ECE8112EA590000000000067ECE7D12EA94FC00000003067ECE7F000000080000000600000006000000080000000600000001138670FE0000000600000004138670FC00000006000000030000000000000002"
theorem small_7785785_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7785785_right_root small_7785785_right_fuel small_7785785_right_count small_7785785_right_encoded = true := by
  decide +kernel
theorem small_7785785_right_covered : CoveredBy scale carrier boxes small_7785785_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7785785_right_root small_7785785_right_fuel small_7785785_right_count small_7785785_right_encoded small_7785785_right_checked

theorem cover_7785785 : CoveredBy scale carrier boxes root_7785785 := by
  apply coveredBy_split_literal root_7785785 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0533.root_7785786 small_7785785_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0533.cover_7785786
  · exact small_7785785_right_covered
#print axioms cover_7785785

def root_7785779 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7785779_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7785779_left_fuel : Nat := 1
def small_7785779_left_count : Nat := 1
def small_7785779_left_encoded : String := "00000001"
theorem small_7785779_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7785779_left_root small_7785779_left_fuel small_7785779_left_count small_7785779_left_encoded = true := by
  decide +kernel
theorem small_7785779_left_covered : CoveredBy scale carrier boxes small_7785779_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7785779_left_root small_7785779_left_fuel small_7785779_left_count small_7785779_left_encoded small_7785779_left_checked

theorem cover_7785779 : CoveredBy scale carrier boxes root_7785779 := by
  apply coveredBy_split_literal root_7785779 small_7785779_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.root_7785785 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7785779_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.cover_7785785
#print axioms cover_7785779

def root_7785778 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7785778_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7785778_right_fuel : Nat := 21
def small_7785778_right_count : Nat := 131
def small_7785778_right_encoded : String := "135D44F9050000FA135D80FB0000000204548A011386710000000000045489FD1386ACFC00000003045489FF1386ACFE00000004028000F813D7ECF900000001078000FA128A7CFB00000002022A458113E1C50000000000067ECE7D12EA94FC00000003067ECE7F12EA94FE0000000403C000F80000000A0000000A12EA58FE000000070000000412EA58FC067ECE7F00000009000000060000000313E20100067ECE7D12EA94FC00000003067ECE7F0000000A0000000712EA58FC067ECE7F0000000A000000060000000300000000128A40FB022A45810000000613E20100067ECE7D12EA94FC00000003067ECE7F12EA94FE00000004000000060000000600000006000000000000000213D7B0F9078000FA128A7CFB00000002022A458113E1C50000000000067ECE7D12EA94FC00000003067ECE7F00000009000000060000000600000007000000060000000100000006000000061386AD00045489FD1386ACFC00000003045489FF1386ACFE00000004028000F813D7ECF900000001078000FA128A7CFB00000002067ECE8112EA590000000000067ECE7D000000070000000700000007128A40FB067ECE8112EA590000000000067ECE7D0000000700000006000000070000000213D7B0F9078000FA00000007128A40FB00000006000000020000000100000007138670FC000000060000000300000000135D44FB000000060000000200000001"
theorem small_7785778_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7785778_right_root small_7785778_right_fuel small_7785778_right_count small_7785778_right_encoded = true := by
  decide +kernel
theorem small_7785778_right_covered : CoveredBy scale carrier boxes small_7785778_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7785778_right_root small_7785778_right_fuel small_7785778_right_count small_7785778_right_encoded small_7785778_right_checked

theorem cover_7785778 : CoveredBy scale carrier boxes root_7785778 := by
  apply coveredBy_split_literal root_7785778 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.root_7785779 small_7785778_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.cover_7785779
  · exact small_7785778_right_covered
#print axioms cover_7785778

def root_7785773 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7785773_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7785773_right_fuel : Nat := 1
def small_7785773_right_count : Nat := 1
def small_7785773_right_encoded : String := "00000004"
theorem small_7785773_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7785773_right_root small_7785773_right_fuel small_7785773_right_count small_7785773_right_encoded = true := by
  decide +kernel
theorem small_7785773_right_covered : CoveredBy scale carrier boxes small_7785773_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7785773_right_root small_7785773_right_fuel small_7785773_right_count small_7785773_right_encoded small_7785773_right_checked

theorem cover_7785773 : CoveredBy scale carrier boxes root_7785773 := by
  apply coveredBy_split_literal root_7785773 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.root_7785778 small_7785773_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.cover_7785778
  · exact small_7785773_right_covered
#print axioms cover_7785773

def root_7783789 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7783789 : CoveredBy scale carrier boxes root_7783789 := by
  apply coveredBy_split_literal root_7783789 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2925.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.root_7785773 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2925.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.cover_7785773
#print axioms cover_7783789

def root_7783784 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7783784_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7783784_right_fuel : Nat := 1
def small_7783784_right_count : Nat := 1
def small_7783784_right_encoded : String := "00000003"
theorem small_7783784_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7783784_right_root small_7783784_right_fuel small_7783784_right_count small_7783784_right_encoded = true := by
  decide +kernel
theorem small_7783784_right_covered : CoveredBy scale carrier boxes small_7783784_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7783784_right_root small_7783784_right_fuel small_7783784_right_count small_7783784_right_encoded small_7783784_right_checked

theorem cover_7783784 : CoveredBy scale carrier boxes root_7783784 := by
  apply coveredBy_split_literal root_7783784 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.root_7783789 small_7783784_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.cover_7783789
  · exact small_7783784_right_covered
#print axioms cover_7783784

def root_7781166 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7781166 : CoveredBy scale carrier boxes root_7781166 := by
  apply coveredBy_split_literal root_7781166 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2924.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.root_7783784 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2924.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.cover_7783784
#print axioms cover_7781166

def root_7781160 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7781160_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7781160_left_fuel : Nat := 1
def small_7781160_left_count : Nat := 1
def small_7781160_left_encoded : String := "00000000"
theorem small_7781160_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7781160_left_root small_7781160_left_fuel small_7781160_left_count small_7781160_left_encoded = true := by
  decide +kernel
theorem small_7781160_left_covered : CoveredBy scale carrier boxes small_7781160_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7781160_left_root small_7781160_left_fuel small_7781160_left_count small_7781160_left_encoded small_7781160_left_checked

theorem cover_7781160 : CoveredBy scale carrier boxes root_7781160 := by
  apply coveredBy_split_literal root_7781160 small_7781160_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.root_7781166 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7781160_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.cover_7781166
#print axioms cover_7781160

def root_7781159 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7781159_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7781159_right_fuel : Nat := 24
def small_7781159_right_count : Nat := 463
def small_7781159_right_encoded : String := "12073D0008A912FD12073CFC0000000308A912FF12073CFE00000004050000F8135D80F900000001050000FA135D80FB000000020CFD9C010F34D100000000000CFD9BFD0F350CFC000000030CFD9BFF0F350CFE000000040C9A86FC0000000A00000009000000090F34D0FC0CFD9BFF0000000A0F34D0FE078000F8128A7CF900000001078000FA0000000900000009128A40F9078000FA0000000A128A40FB0AD357810000000900000009000000020000000100000004000000030F350D000CFD9BFD0F350CFC00000003000000090F34D0FC0000000A0000000300000000135D44FB0CFD9C010F34D100000000000CFD9BFD0F350CFC000000030CFD9BFF00000005000000090F34D0FC0CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004078000F800000009128A40F9028000FA0000000900000008000000010F8750FF0000000A000000040F34D0FE078000F800000009128A40F9028000FA00000009000000090000000100000004000000030F350D000CFD9BFD000000090F34D0FC0CFD9BFF0000000800000009000000030000000000000002135D44F9050000FA135D80FB000000020CFD9C010F34D100000000000CFD9BFD0F350CFC000000030CFD9BFF000000050F34D0FE0C9A86FC0F878CFD00000003028000F813D7ECF90000000100000009000000070F8750FD0000000900000003000000040F34D0FC0CFD9BFF0000000A0F34D0FE028000F80000000A0000000A00000004000000030F350D000CFD9BFD0F350CFC000000030CFD9BFF0000000A0F34D0FE00000007000000040000000A00000000135D44FB0CFD9C010F34D100000000000CFD9BFD0F350CFC000000030CFD9BFF000000050F34D0FE00000009000000040F34D0FC0CFD9BFF0F350CFE000000040000000A0F34D0FE028000F813D7ECF900000001028000FA13D7ECFB000000020AD3578110D10100000000000AD3577D000000090000000A10D13D00000000090000000013D7B0FB0AD3578100000009000000080000000213D7B0F9028000FA13D7ECFB000000020AD357810000000A0000000713D7B0FB0AD3578110D10100000000000AD3577D10D13CFC000000030000000910D100FC000000060000000310D13D000AD3577D000000070000000700000000000000020000000100000004000000030F350D000CFD9BFD0F350CFC000000030CFD9BFF0F350CFE0000000400000009000000090F34D0FC0CFD9BFF0000000A0F34D0FE0C9A8700000000070F878D01028000F80000000800000007000000000000000400000003000000000000000200000001120700FE050000F8135D80F900000001050000FA135D80FB000000020CFD9C010F34D100000000000CFD9BFD000000090F34D0FC045489FF1386ACFE00000004078000F800000009128A40F9078000FA00000007000000090000000100000007000000030000000900000009135D44F9050000FA135D80FB000000020CFD9C010F34D100000000000CFD9BFD000000070F34D0FC000000070000000300000007135D44FB0CFD9C010F34D100000000000CFD9BFD000000090F34D0FC045489FF1386ACFE00000004028000F8000000090000000700000006000000030F350D000000000700000000000000020000000100000004120700FC08A912FF12073CFE00000004050000F8135D80F900000001050000FA135D80FB000000020CFD9C010F34D10000000000045489FD1386ACFC000000030CFD9BFF0000000A0F34D0FE078000F8128A7CF9000000010000000A0000000A000000040000000A0000000A135D44FB0CFD9C010F34D10000000000045489FD1386ACFC000000030CFD9BFF000000080F34D0FE0000000800000004000000080000000800000002135D44F9050000FA0000000A135D44FB0CFD9C010F34D10000000000045489FD1386ACFC000000030CFD9BFF0000000A0F34D0FE028000F80000000813D7B0F9028000FA0000000A0000000600000001000000040000000A0F350D0000000008000000000000000200000001120700FE050000F8135D80F900000001050000FA135D80FB000000020CFD9C010F34D10000000000045489FD1386ACFC00000003045489FF1386ACFE00000004078000F8128A7CF900000001078000FA128A7CFB000000020AD3578110D1010000000000067ECE7D00000007000000050000000700000008128A40F9078000FA00000007128A40FB0AD3578110D101000000000000000007000000070000000200000001138670FE0000000700000004138670FC045489FF0000000800000005000000030F350D00045489FD1386ACFC00000003045489FF1386ACFE000000040C9A87000000000700000007000000050000000800000000135D44FB0CFD9C010F34D10000000000045489FD1386ACFC00000003045489FF0000000800000005000000050000000800000002135D44F9050000FA135D80FB000000020CFD9C010F34D10000000000045489FD000000070000000500000007135D44FB0CFD9C0100000006000000050000000200000001000000040000000300000000"
theorem small_7781159_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7781159_right_root small_7781159_right_fuel small_7781159_right_count small_7781159_right_encoded = true := by
  decide +kernel
theorem small_7781159_right_covered : CoveredBy scale carrier boxes small_7781159_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7781159_right_root small_7781159_right_fuel small_7781159_right_count small_7781159_right_encoded small_7781159_right_checked

theorem cover_7781159 : CoveredBy scale carrier boxes root_7781159 := by
  apply coveredBy_split_literal root_7781159 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.root_7781160 small_7781159_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.cover_7781160
  · exact small_7781159_right_covered
#print axioms cover_7781159

def root_7781153 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7781153_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7781153_left_fuel : Nat := 1
def small_7781153_left_count : Nat := 1
def small_7781153_left_encoded : String := "00000004"
theorem small_7781153_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7781153_left_root small_7781153_left_fuel small_7781153_left_count small_7781153_left_encoded = true := by
  decide +kernel
theorem small_7781153_left_covered : CoveredBy scale carrier boxes small_7781153_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7781153_left_root small_7781153_left_fuel small_7781153_left_count small_7781153_left_encoded small_7781153_left_checked

theorem cover_7781153 : CoveredBy scale carrier boxes root_7781153 := by
  apply coveredBy_split_literal root_7781153 small_7781153_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.root_7781159 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7781153_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.cover_7781159
#print axioms cover_7781153

def root_7781152 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7781152_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7781152_right_fuel : Nat := 22
def small_7781152_right_count : Nat := 153
def small_7781152_right_encoded : String := "1151E8FF08A91301120701000000000008A912FD00000005120700FC050000F8135D80F900000001050000FA135D80FB00000002050000FE135D80FF0000000404548A011386710000000000045489FD00000005138670FC078000F8128A7CF900000001078000FA0000000A128A40FB078000FE00000007128A40FF0000000500000004000000020000000A000000031386AD00045489FD0000000A0000000A00000000135D44FF04548A01000000051386AD00045489FD000000050000000A0000000000000004135D44FB050000FE135D80FF0000000404548A01000000051386AD00045489FD000000050000000800000000135D44FF04548A01000000051386AD00045489FD00000005138670FC0000000800000003000000000000000400000002135D44F9050000FA135D80FB00000002050000FE0000000A135D44FF0000000A00000004135D44FB050000FE135D80FF0000000404548A01000000050000000A135D44FF000000050000000400000002000000010000000312073D0008A912FD12073CFC00000003050000F8135D80F900000001050000FA0000000A135D44FB050000FE135D80FF000000040CFD9C01000000050F350D000000000A00000000135D44FF0000000A0000000400000002135D44F9050000FA0000000A135D44FB050000FE135D80FF000000040CFD9C01000000050000000A0000000A0000000200000001120700FC050000F8135D80F900000001050000FA135D80FB00000002050000FE0000000A135D44FF0000000A00000004135D44FB050000FE00000008135D44FF0000000800000004000000020000000A000000030000000000000004"
theorem small_7781152_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7781152_right_root small_7781152_right_fuel small_7781152_right_count small_7781152_right_encoded = true := by
  decide +kernel
theorem small_7781152_right_covered : CoveredBy scale carrier boxes small_7781152_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7781152_right_root small_7781152_right_fuel small_7781152_right_count small_7781152_right_encoded small_7781152_right_checked

theorem cover_7781152 : CoveredBy scale carrier boxes root_7781152 := by
  apply coveredBy_split_literal root_7781152 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.root_7781153 small_7781152_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.cover_7781153
  · exact small_7781152_right_covered
#print axioms cover_7781152

def root_7781146 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7781146_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7781146_left_fuel : Nat := 1
def small_7781146_left_count : Nat := 1
def small_7781146_left_encoded : String := "00000003"
theorem small_7781146_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7781146_left_root small_7781146_left_fuel small_7781146_left_count small_7781146_left_encoded = true := by
  decide +kernel
theorem small_7781146_left_covered : CoveredBy scale carrier boxes small_7781146_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7781146_left_root small_7781146_left_fuel small_7781146_left_count small_7781146_left_encoded small_7781146_left_checked

theorem cover_7781146 : CoveredBy scale carrier boxes root_7781146 := by
  apply coveredBy_split_literal root_7781146 small_7781146_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.root_7781152 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7781146_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.cover_7781152
#print axioms cover_7781146

def root_7781145 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7781145_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7781145_right_fuel : Nat := 24
def small_7781145_right_count : Nat := 161
def small_7781145_right_encoded : String := "1151E8FD0A0000FE115224FF0000000408A91301120701000000000008A912FF00000005120700FE050000F8135D80F900000001050000FA135D80FB00000002050000FC135D80FD0000000304548A011386710000000000045489FF00000005138670FE078000F8128A7CF90000000100000009128A40F9078000FA128A7CFB00000002078000FC00000008128A40FD00000005000000030000000900000001000000041386AD00045489FF000000090000000900000000135D44FD04548A01000000051386AD00045489FF00000005000000090000000000000003135D44FB050000FC00000009135D44FD000000090000000300000002135D44F9050000FA135D80FB00000002050000FC135D80FD0000000304548A01000000051386AD00045489FF000000050000000700000000135D44FD04548A01000000051386AD00045489FF00000005138670FE00000007000000040000000000000003135D44FB050000FC135D80FD0000000304548A010000000500000009135D44FD000000050000000300000002000000010000000412073D0008A912FF12073CFE00000004050000F800000009135D44F9050000FA135D80FB00000002050000FC135D80FD000000030CFD9C01000000050F350D000000000900000000135D44FD0000000900000003135D44FB050000FC135D80FD000000030CFD9C010000000500000009000000090000000200000001120700FE050000F8135D80F900000001050000FA135D80FB00000002050000FC00000009135D44FD000000090000000300000009135D44F9050000FA135D80FB00000002050000FC00000007135D44FD0000000700000003000000090000000100000004000000001151E8FF000000050000000400000003"
theorem small_7781145_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7781145_right_root small_7781145_right_fuel small_7781145_right_count small_7781145_right_encoded = true := by
  decide +kernel
theorem small_7781145_right_covered : CoveredBy scale carrier boxes small_7781145_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7781145_right_root small_7781145_right_fuel small_7781145_right_count small_7781145_right_encoded small_7781145_right_checked

theorem cover_7781145 : CoveredBy scale carrier boxes root_7781145 := by
  apply coveredBy_split_literal root_7781145 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.root_7781146 small_7781145_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.cover_7781146
  · exact small_7781145_right_covered
#print axioms cover_7781145

def root_7781140 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7781140_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7781140_right_fuel : Nat := 1
def small_7781140_right_count : Nat := 1
def small_7781140_right_encoded : String := "00000002"
theorem small_7781140_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7781140_right_root small_7781140_right_fuel small_7781140_right_count small_7781140_right_encoded = true := by
  decide +kernel
theorem small_7781140_right_covered : CoveredBy scale carrier boxes small_7781140_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7781140_right_root small_7781140_right_fuel small_7781140_right_count small_7781140_right_encoded small_7781140_right_checked

theorem cover_7781140 : CoveredBy scale carrier boxes root_7781140 := by
  apply coveredBy_split_literal root_7781140 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.root_7781145 small_7781140_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.cover_7781145
  · exact small_7781140_right_covered
#print axioms cover_7781140

def root_7774804 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7774804 : CoveredBy scale carrier boxes root_7774804 := by
  apply coveredBy_split_literal root_7774804 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.root_7774805 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.root_7781140 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.cover_7774805
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.cover_7781140
#print axioms cover_7774804

def root_7774799 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7774799_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7774799_right_fuel : Nat := 1
def small_7774799_right_count : Nat := 1
def small_7774799_right_encoded : String := "00000001"
theorem small_7774799_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7774799_right_root small_7774799_right_fuel small_7774799_right_count small_7774799_right_encoded = true := by
  decide +kernel
theorem small_7774799_right_covered : CoveredBy scale carrier boxes small_7774799_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7774799_right_root small_7774799_right_fuel small_7774799_right_count small_7774799_right_encoded small_7774799_right_checked

theorem cover_7774799 : CoveredBy scale carrier boxes root_7774799 := by
  apply coveredBy_split_literal root_7774799 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.root_7774804 small_7774799_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.cover_7774804
  · exact small_7774799_right_covered
#print axioms cover_7774799

def root_7760063 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7760063 : CoveredBy scale carrier boxes root_7760063 := by
  apply coveredBy_split_literal root_7760063 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.root_7760064 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.root_7774799 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.cover_7760064
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.cover_7774799
#print axioms cover_7760063

def root_7760058 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7760058_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7760058_right_fuel : Nat := 1
def small_7760058_right_count : Nat := 1
def small_7760058_right_encoded : String := "00000000"
theorem small_7760058_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7760058_right_root small_7760058_right_fuel small_7760058_right_count small_7760058_right_encoded = true := by
  decide +kernel
theorem small_7760058_right_covered : CoveredBy scale carrier boxes small_7760058_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7760058_right_root small_7760058_right_fuel small_7760058_right_count small_7760058_right_encoded small_7760058_right_checked

theorem cover_7760058 : CoveredBy scale carrier boxes root_7760058 := by
  apply coveredBy_split_literal root_7760058 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.root_7760063 small_7760058_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534.cover_7760063
  · exact small_7760058_right_covered
#print axioms cover_7760058

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0534
