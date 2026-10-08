import TaoBundleAssembly0237
import TaoBundleChunkBatch0944
import TaoBundleChunkBatch0945
import TaoBundleChunkBatch0946
import TaoBundleChunkBatch0947
import TaoBundleChunkBatch0948
import TaoBundleChunkBatch0949
import TaoBundleChunkBatch0950
import TaoBundleChunkBatch0951
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238
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
  apply coveredBy_split_literal root_10086825 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10086830 small_10086825_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10086830
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
  apply coveredBy_split_literal root_10086824 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10086825 small_10086824_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10086825
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
  apply coveredBy_split_literal root_10086818 small_10086818_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10086824 coord0 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_10086818_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10086824
#print axioms cover_10086818

def root_10086817 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10086817 : CoveredBy scale carrier boxes root_10086817 := by
  apply coveredBy_split_literal root_10086817 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10086818 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3780.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10086818
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
  apply coveredBy_split_literal root_10086812 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10086817 small_10086812_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10086817
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
  apply coveredBy_split_literal root_10085776 small_10085776_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10086812 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10085776_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10086812
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
  apply coveredBy_split_literal root_10085770 small_10085770_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10085776 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10085770_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10085776
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
  apply coveredBy_split_literal root_10085588 small_10085588_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10085770 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10085588_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10085770
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
  apply coveredBy_split_literal root_10085582 small_10085582_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10085588 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10085582_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10085588
#print axioms cover_10085582

def root_10085581 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10085581 : CoveredBy scale carrier boxes root_10085581 := by
  apply coveredBy_split_literal root_10085581 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10085582 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3781.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10085582
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
  apply coveredBy_split_literal root_10085575 small_10085575_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10085581 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_10085575_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10085581
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
  apply coveredBy_split_literal root_10085574 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10085575 small_10085574_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10085575
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
  apply coveredBy_split_literal root_10085568 small_10085568_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10085574 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10085568_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10085574
#print axioms cover_10085568

def root_10070896 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10070896 : CoveredBy scale carrier boxes root_10070896 := by
  apply coveredBy_split_literal root_10070896 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10070897 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10085568 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10070897
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10085568
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
  apply coveredBy_split_literal root_10070891 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10070896 small_10070891_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10070896
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
  apply coveredBy_split_literal root_10094130 small_10094130_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10094136 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10094130_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10094136
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
  apply coveredBy_split_literal root_10094018 small_10094018_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10094130 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10094018_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10094130
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
  apply coveredBy_split_literal root_10094012 small_10094012_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10094018 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10094012_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10094018
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
  apply coveredBy_split_literal root_10094011 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10094012 small_10094011_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10094012
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
  apply coveredBy_split_literal root_10094005 small_10094005_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10094011 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_10094005_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10094011
#print axioms cover_10094005

def root_10094004 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10094004_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10094004_right_fuel : Nat := 25
def small_10094004_right_count : Nat := 329
def small_10094004_right_encoded : String := "1151E8FF08A91303120701020000000108A91307120700FC0500010000000005135D8101050000FA00000005135D450500000002050000FE00000005135D44FF0000000600000004000000000000000312073CFC0000000305000100135D450100000000050000FA135D8105050000FE135D80FF0000000404548A0313867102000000010CFD9C07000000050F350CFC000000030C9A86FC000000080F87510700000003000000081386AD020CFD9C070F34D0FC00000005000000030F350CFC000000030C9A86FC0F878D07028001000000000700000007000000030000000700000001135D44FF04548A0313867102000000010CFD9C0700000005000000081386AD020CFD9C070F34D0FC00000005000000030F350CFC000000030C9A86FC0F878D070280010000000007000000070000000300000007000000010000000400000002135D450500000002050000FE135D80FF0000000404548A03000000081386AD020CFD9C07000000070000000700000001135D44FF04548A03000000081386AD020CFD9C0700000007000000070000000100000004135D8101050000FA135D8105050000FE135D80FF0000000404548A0313867102000000010CFD9C070F34D0FC00000005000000030F350CFC000000030C9A86FC0F878D070780010000000005128A7D010000000500000000000000030F8751070000000307800100128A410100000000078000FA0000000A00000007128A7D01078000FA128A7D05078000FE00000005000000070000000200000007000000001386AD020CFD9C070F34D0FC00000006000000030F350CFC000000030C9A86FC0F878D07078001000000000700000006000000030000000700000001135D44FF04548A0313867102000000010CFD9C070F34D0FC00000005000000030F350CFC000000030C9A86FC0F878D0707800100128A41010000000000000008128A7D01078000FA00000005128A4105000000020000000800000000000000030F8751070000000307800100128A410100000000078000FA0000000A00000007128A7D01078000FA128A7D05028000FE0000000713D7B0FF022A45830000000800000007000000040000000200000007000000001386AD020CFD9C070F34D0FC00000006000000030F350CFC000000030C9A86FC0F878D070780010000000007128A7D0100000006000000000000000300000007000000010000000400000002135D450500000002050000FE135D80FF0000000404548A0313867102000000010CFD9C070F34D0FC00000008000000030F350CFC000000030C9A86FC00000008000000071386AD020CFD9C07000000070000000700000001135D44FF04548A0313867102000000010CFD9C070F34D0FC0000000800000003000000081386AD020CFD9C07000000070000000700000001000000040000000012073D0208A91307120700FC000000060000000312073CFC0000000305000100135D450100000000050000FA135D8105050000FE135D80FF000000040CFD9C030F34D102000000010CFD9C070F34D0FC00000006000000030000000700000007135D44FF0CFD9C030F34D102000000010CFD9C070000000700000007000000070000000400000002135D45050000000200000007135D8101050000FA135D8105050000FE135D80FF000000040CFD9C030F34D102000000010CFD9C07000000060000000600000006135D44FF0CFD9C030F34D102000000010CFD9C07000000060F350CFC0000000300000007000000060000000400000002135D450500000002050000FE0000000700000007000000000000000100000004"
theorem small_10094004_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10094004_right_root small_10094004_right_fuel small_10094004_right_count small_10094004_right_encoded = true := by
  decide +kernel
theorem small_10094004_right_covered : CoveredBy scale carrier boxes small_10094004_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10094004_right_root small_10094004_right_fuel small_10094004_right_count small_10094004_right_encoded small_10094004_right_checked

theorem cover_10094004 : CoveredBy scale carrier boxes root_10094004 := by
  apply coveredBy_split_literal root_10094004 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10094005 small_10094004_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10094005
  · exact small_10094004_right_covered
#print axioms cover_10094004

def root_10093999 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10093999_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10093999_right_fuel : Nat := 1
def small_10093999_right_count : Nat := 1
def small_10093999_right_encoded : String := "00000003"
theorem small_10093999_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10093999_right_root small_10093999_right_fuel small_10093999_right_count small_10093999_right_encoded = true := by
  decide +kernel
theorem small_10093999_right_covered : CoveredBy scale carrier boxes small_10093999_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10093999_right_root small_10093999_right_fuel small_10093999_right_count small_10093999_right_encoded small_10093999_right_checked

theorem cover_10093999 : CoveredBy scale carrier boxes root_10093999 := by
  apply coveredBy_split_literal root_10093999 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10094004 small_10093999_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10094004
  · exact small_10093999_right_covered
#print axioms cover_10093999

def root_10093998 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10093998 : CoveredBy scale carrier boxes root_10093998 := by
  apply coveredBy_split_literal root_10093998 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10093999 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3784.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10093999
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3784.covered
#print axioms cover_10093998

def root_10093992 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10093992_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10093992_left_fuel : Nat := 1
def small_10093992_left_count : Nat := 1
def small_10093992_left_encoded : String := "00000002"
theorem small_10093992_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10093992_left_root small_10093992_left_fuel small_10093992_left_count small_10093992_left_encoded = true := by
  decide +kernel
theorem small_10093992_left_covered : CoveredBy scale carrier boxes small_10093992_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10093992_left_root small_10093992_left_fuel small_10093992_left_count small_10093992_left_encoded small_10093992_left_checked

theorem cover_10093992 : CoveredBy scale carrier boxes root_10093992 := by
  apply coveredBy_split_literal root_10093992 small_10093992_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10093998 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10093992_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10093998
#print axioms cover_10093992

def root_10070890 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10070890 : CoveredBy scale carrier boxes root_10070890 := by
  apply coveredBy_split_literal root_10070890 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10070891 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10093992 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10070891
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10093992
#print axioms cover_10070890

def root_10070885 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070885_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070885_right_fuel : Nat := 1
def small_10070885_right_count : Nat := 1
def small_10070885_right_encoded : String := "00000001"
theorem small_10070885_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10070885_right_root small_10070885_right_fuel small_10070885_right_count small_10070885_right_encoded = true := by
  decide +kernel
theorem small_10070885_right_covered : CoveredBy scale carrier boxes small_10070885_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10070885_right_root small_10070885_right_fuel small_10070885_right_count small_10070885_right_encoded small_10070885_right_checked

theorem cover_10070885 : CoveredBy scale carrier boxes root_10070885 := by
  apply coveredBy_split_literal root_10070885 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10070890 small_10070885_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10070890
  · exact small_10070885_right_covered
#print axioms cover_10070885

def root_10068961 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10068961 : CoveredBy scale carrier boxes root_10068961 := by
  apply coveredBy_split_literal root_10068961 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3774.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10070885 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3774.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10070885
#print axioms cover_10068961

def root_10068955 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10068955_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10068955_left_fuel : Nat := 1
def small_10068955_left_count : Nat := 1
def small_10068955_left_encoded : String := "00000000"
theorem small_10068955_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10068955_left_root small_10068955_left_fuel small_10068955_left_count small_10068955_left_encoded = true := by
  decide +kernel
theorem small_10068955_left_covered : CoveredBy scale carrier boxes small_10068955_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10068955_left_root small_10068955_left_fuel small_10068955_left_count small_10068955_left_encoded small_10068955_left_checked

theorem cover_10068955 : CoveredBy scale carrier boxes root_10068955 := by
  apply coveredBy_split_literal root_10068955 small_10068955_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10068961 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10068955_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10068961
#print axioms cover_10068955

def root_10101894 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10101894 : CoveredBy scale carrier boxes root_10101894 := by
  apply coveredBy_split_literal root_10101894 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3785.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3786.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3785.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3786.covered
#print axioms cover_10101894

def root_10101889 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10101889_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10101889_right_fuel : Nat := 1
def small_10101889_right_count : Nat := 1
def small_10101889_right_encoded : String := "00000002"
theorem small_10101889_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10101889_right_root small_10101889_right_fuel small_10101889_right_count small_10101889_right_encoded = true := by
  decide +kernel
theorem small_10101889_right_covered : CoveredBy scale carrier boxes small_10101889_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10101889_right_root small_10101889_right_fuel small_10101889_right_count small_10101889_right_encoded small_10101889_right_checked

theorem cover_10101889 : CoveredBy scale carrier boxes root_10101889 := by
  apply coveredBy_split_literal root_10101889 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10101894 small_10101889_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10101894
  · exact small_10101889_right_covered
#print axioms cover_10101889

def root_10101888 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10101888 : CoveredBy scale carrier boxes root_10101888 := by
  apply coveredBy_split_literal root_10101888 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10101889 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3787.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10101889
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3787.covered
#print axioms cover_10101888

def root_10101883 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10101883_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10101883_right_fuel : Nat := 1
def small_10101883_right_count : Nat := 1
def small_10101883_right_encoded : String := "00000001"
theorem small_10101883_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10101883_right_root small_10101883_right_fuel small_10101883_right_count small_10101883_right_encoded = true := by
  decide +kernel
theorem small_10101883_right_covered : CoveredBy scale carrier boxes small_10101883_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10101883_right_root small_10101883_right_fuel small_10101883_right_count small_10101883_right_encoded small_10101883_right_checked

theorem cover_10101883 : CoveredBy scale carrier boxes root_10101883 := by
  apply coveredBy_split_literal root_10101883 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10101888 small_10101883_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10101888
  · exact small_10101883_right_covered
#print axioms cover_10101883

def root_10101193 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10101193_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10101193_left_fuel : Nat := 33
def small_10101193_left_count : Nat := 321
def small_10101193_left_encoded : String := "1151E903000000010A0000FA115225050A0000FC115225070A0000FE115224FF0000000408A91301120701000000000008A91305120700FA00000006000000020000000612073D0008A91305120700FA08A913070000000612073CFC0000000308A912FF00000006120700FE0500010200000006135D81030CFD9C010F34D10000000000000000060F350D0004548A05138670FA0CFD9C07000000060000000600000002000000060000000000000001000000040000000212073CFA0000000208A913070000000612073CFC0000000308A912FF00000006120700FE0000000600000004000000001151E8FF0000000600000004000000031151E907000000030A0000FE115224FF0000000408A91301120701000000000008A91305120700FA08A912FF00000006120700FE00000007000000040000000212073CFA000000020000000712073D0008A91305120700FA08A912FF12073CFE0000000405000102135D45030000000100000007135D8103050000FC135D81070CFD9C010F34D10000000000000000060F350D0004548A05138670FA0CFD9BFF000000060F34D0FE000000060000000400000002000000060000000000000003135D4507000000030000000700000001120700FE05000102135D450300000001050000FC135D81070CFD9C010F34D10000000000000000060F350D0004548A05138670FA045489FF00000006138670FE000000060000000400000002000000060000000000000003135D45070000000300000007135D8103050000FC135D81070CFD9C010F34D10000000000000000060F350D0004548A05138670FA045489FF1386ACFE000000040C9A87000F875101000000000780010200000006128A7D03078000FC00000006128A410700000003000000070000000100000006138670FE0C9A87000F8751010000000007800102128A410300000001078000FC00000006128A410700000003022A45850000000700000005128A7D03078000FC128A7D07022A458513E1C4FA022A457F0000000600000008000000020000000600000003128A410700000003022A458513E1C4FA022A457F00000009000000050000000200000005000000010F878D010780010200000006128A7D0300000009000000010000000000000004000000021386ACFA00000002045489FF00000006138670FE00000006000000040000000000000003135D4507000000030CFD9C01000000070F350D0004548A05138670FA045489FF00000007138670FE0C9A87000F875101000000000780010200000007128A7D03028000FC13D7ED07022A458500000009000000050000000300000007000000010F878D0100000007000000000000000400000002000000070000000000000001000000040000000212073CFA0000000208A912FF12073CFE000000040500010200000006135D8103050000FC000000060000000700000001120700FE05000102135D45030000000100000007135D8103050000FC135D81070CFD9C01000000060F350D000CFD9C050F34D0FA0000000600000002000000050000000000000003135D450700000003000000070000000100000004000000001151E8FF08A9130112070100000000000000000612073D0008A9130500000007000000060000000000000004000000021151E905000000020A0000FC115225070A0000FE000000061151E8FF0000000600000004000000031151E907000000030A0000FE115224FF0000000408A9130100000007000000071151E8FF0000000600000004"
theorem small_10101193_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10101193_left_root small_10101193_left_fuel small_10101193_left_count small_10101193_left_encoded = true := by
  decide +kernel
theorem small_10101193_left_covered : CoveredBy scale carrier boxes small_10101193_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10101193_left_root small_10101193_left_fuel small_10101193_left_count small_10101193_left_encoded small_10101193_left_checked

theorem cover_10101193 : CoveredBy scale carrier boxes root_10101193 := by
  apply coveredBy_split_literal root_10101193 small_10101193_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10101883 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_10101193_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10101883
#print axioms cover_10101193

def root_10101188 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10101188_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10101188_right_fuel : Nat := 1
def small_10101188_right_count : Nat := 1
def small_10101188_right_encoded : String := "00000000"
theorem small_10101188_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10101188_right_root small_10101188_right_fuel small_10101188_right_count small_10101188_right_encoded = true := by
  decide +kernel
theorem small_10101188_right_covered : CoveredBy scale carrier boxes small_10101188_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10101188_right_root small_10101188_right_fuel small_10101188_right_count small_10101188_right_encoded small_10101188_right_checked

theorem cover_10101188 : CoveredBy scale carrier boxes root_10101188 := by
  apply coveredBy_split_literal root_10101188 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10101193 small_10101188_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10101193
  · exact small_10101188_right_covered
#print axioms cover_10101188

def root_10068954 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10068954 : CoveredBy scale carrier boxes root_10068954 := by
  apply coveredBy_split_literal root_10068954 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10068955 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10101188 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10068955
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10101188
#print axioms cover_10068954

def root_10109324 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10109324 : CoveredBy scale carrier boxes root_10109324 := by
  apply coveredBy_split_literal root_10109324 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3789.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3790.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3789.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3790.covered
#print axioms cover_10109324

def root_10109319 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10109319_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10109319_right_fuel : Nat := 1
def small_10109319_right_count : Nat := 1
def small_10109319_right_encoded : String := "00000000"
theorem small_10109319_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10109319_right_root small_10109319_right_fuel small_10109319_right_count small_10109319_right_encoded = true := by
  decide +kernel
theorem small_10109319_right_covered : CoveredBy scale carrier boxes small_10109319_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10109319_right_root small_10109319_right_fuel small_10109319_right_count small_10109319_right_encoded small_10109319_right_checked

theorem cover_10109319 : CoveredBy scale carrier boxes root_10109319 := by
  apply coveredBy_split_literal root_10109319 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10109324 small_10109319_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10109324
  · exact small_10109319_right_covered
#print axioms cover_10109319

def root_10107999 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10107999 : CoveredBy scale carrier boxes root_10107999 := by
  apply coveredBy_split_literal root_10107999 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3788.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10109319 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3788.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10109319
#print axioms cover_10107999

def root_10068953 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10068953 : CoveredBy scale carrier boxes root_10068953 := by
  apply coveredBy_split_literal root_10068953 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10068954 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10107999 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10068954
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10107999
#print axioms cover_10068953

def root_10116405 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10116405 : CoveredBy scale carrier boxes root_10116405 := by
  apply coveredBy_split_literal root_10116405 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3793.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3794.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3793.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3794.covered
#print axioms cover_10116405

def root_10116399 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10116399_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10116399_left_fuel : Nat := 1
def small_10116399_left_count : Nat := 1
def small_10116399_left_encoded : String := "00000004"
theorem small_10116399_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10116399_left_root small_10116399_left_fuel small_10116399_left_count small_10116399_left_encoded = true := by
  decide +kernel
theorem small_10116399_left_covered : CoveredBy scale carrier boxes small_10116399_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10116399_left_root small_10116399_left_fuel small_10116399_left_count small_10116399_left_encoded small_10116399_left_checked

theorem cover_10116399 : CoveredBy scale carrier boxes root_10116399 := by
  apply coveredBy_split_literal root_10116399 small_10116399_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10116405 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_10116399_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10116405
#print axioms cover_10116399

def root_10113995 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10113995 : CoveredBy scale carrier boxes root_10113995 := by
  apply coveredBy_split_literal root_10113995 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3792.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10116399 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3792.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10116399
#print axioms cover_10113995

def root_10113990 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10113990_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10113990_right_fuel : Nat := 1
def small_10113990_right_count : Nat := 1
def small_10113990_right_encoded : String := "00000003"
theorem small_10113990_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10113990_right_root small_10113990_right_fuel small_10113990_right_count small_10113990_right_encoded = true := by
  decide +kernel
theorem small_10113990_right_covered : CoveredBy scale carrier boxes small_10113990_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10113990_right_root small_10113990_right_fuel small_10113990_right_count small_10113990_right_encoded small_10113990_right_checked

theorem cover_10113990 : CoveredBy scale carrier boxes root_10113990 := by
  apply coveredBy_split_literal root_10113990 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10113995 small_10113990_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10113995
  · exact small_10113990_right_covered
#print axioms cover_10113990

def root_10113989 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10113989_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10113989_right_fuel : Nat := 24
def small_10113989_right_count : Nat := 387
def small_10113989_right_encoded : String := "1151E907000000030A0001081151E8FF08A91303120701020000000108A91305120700FA050001000000000A135D8101050000FC0000000A0000000A000000000000000212073CFA00000002050001000000000A135D8101050000FC135D810705000108135D44FF04548A0313867102000000010000000A0000000A00000004135D80FF0000000404548A0313867102000000010CFD9C050F34D0FA0000000A000000020000000A1386AD020CFD9C050F34D0FA0000000A000000020000000A00000001000000030000000A0000000012073D0208A91305120700FA050001000000000A135D8101050000FC135D81070500010800000008000000080000000300000008000000000000000212073CFA0000000205000100135D450100000000050000FC0000000A0000000A135D8101050000FC135D810705000108135D44FF0CFD9C030F34D102000000010000000A0F350D020CFD9C0500000007000000070000000100000004135D80FF000000040CFD9C030F34D102000000010CFD9C050000000A0000000A0F350D020CFD9C050F34D0FA00000008000000020000000A0000000100000003135D45070000000305000108135D44FF00000007000000040000000A000000000000000100000004115224FF0000000408A91303120701020000000108A91305120700FA08A912FF12073D0805000100135D450100000000050000FC0000000A0000000A135D8101050000FC135D810704548A03138671020000000104548A05000000061386ACFA000000020CFD9BFF0000000A000000061386AD0204548A05000000080000000A0000000100000003135D4507000000030000000800000000000000041207010800000004000000060000000212073CFA0000000208A912FF12073D0805000100135D450100000000050000FC135D810704548A0313867102000000010CFD9C05000000060F350CFA00000002000000061386AD020CFD9C050F34D0FA0000000A000000020F350CFA000000020CFD9BFF0000000A000000060000000100000003135D45070000000304548A031386710200000001000000060000000A135D8101050000FC135D810704548A0313867102000000010CFD9C050F34D0FA0CFD9BFF0F350D080C9A870800000006000000060000000400000006000000020F350CFA000000020CFD9BFF0F350D080C9A86FA0F878D0500000006000000020000000600000004000000061386AD020CFD9C050F34D0FA0CFD9BFF0000000A0F34D1080000000400000006000000020F350CFA000000020CFD9BFF0F350D080C9A86FA0000000A0F875105000000020C9A87080F8750FF0000000A0000000400000005000000040F34D10800000004000000050000000100000003135D45070000000304548A0313867102000000010CFD9C050F34D0FA0000000A000000020F350CFA00000002000000061386AD020CFD9C050F34D0FA0000000A000000020F350CFA000000020000000500000001000000000000000412070108000000040500010000000006135D8101050000FC00000006000000050000000012073D0208A91305120700FA08A912FF12073D0805000100135D4501000000000000000A0000000800000004000000080000000212073CFA0000000208A912FF12073D0805000100135D450100000000050000FC135D81070CFD9C030F34D102000000010CFD9C050F34D0FA0000000A000000020000000A0F350D020CFD9C050000000A0000000A0000000100000003135D4507000000030CFD9C030F34D102000000010000000A0000000A135D8101050000FC135D81070CFD9C030F34D102000000010CFD9C050F34D0FA0CFD9BFF0000000A00000008000000020F350CFA000000020CFD9BFF0F350D080C9A86FA0000000A0F875105000000020000000500000004000000050F350D020CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9BFF0F350D080C9A87020F87510300000001000000050000000A00000004000000050000000100000003135D4507000000030CFD9C030F34D102000000010CFD9C050F34D0FA0000000800000002000000050F350D0200000008000000010000000000000004120701080000000405000100000000090000000500000001"
theorem small_10113989_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10113989_right_root small_10113989_right_fuel small_10113989_right_count small_10113989_right_encoded = true := by
  decide +kernel
theorem small_10113989_right_covered : CoveredBy scale carrier boxes small_10113989_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10113989_right_root small_10113989_right_fuel small_10113989_right_count small_10113989_right_encoded small_10113989_right_checked

theorem cover_10113989 : CoveredBy scale carrier boxes root_10113989 := by
  apply coveredBy_split_literal root_10113989 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10113990 small_10113989_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10113990
  · exact small_10113989_right_covered
#print axioms cover_10113989

def root_10113984 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10113984_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10113984_right_fuel : Nat := 1
def small_10113984_right_count : Nat := 1
def small_10113984_right_encoded : String := "00000002"
theorem small_10113984_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10113984_right_root small_10113984_right_fuel small_10113984_right_count small_10113984_right_encoded = true := by
  decide +kernel
theorem small_10113984_right_covered : CoveredBy scale carrier boxes small_10113984_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10113984_right_root small_10113984_right_fuel small_10113984_right_count small_10113984_right_encoded small_10113984_right_checked

theorem cover_10113984 : CoveredBy scale carrier boxes root_10113984 := by
  apply coveredBy_split_literal root_10113984 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10113989 small_10113984_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10113989
  · exact small_10113984_right_covered
#print axioms cover_10113984

def root_10122217 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10122217_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10122217_right_fuel : Nat := 20
def small_10122217_right_count : Nat := 129
def small_10122217_right_encoded : String := "1151E907000000030A0001081151E8FF08A91303120701020000000105000100135D450100000000050000FA0000000A135D450500000002050000FC135D8107000000090000000300000007135D8101050000FA135D8105050000FC135D810705000108135D44FF04548A0313867102000000010000000A0000000700000004135D80FF0000000404548A031386710200000001078001000000000A128A7D01078000FA0000000A128A41050000000200000009000000001386AD02078001000000000A128A7D01078000FA0000000A000000050000000000000001000000030000000A00000002135D450500000002050000FC135D810705000108135D44FF0000000700000004135D80FF0000000404548A03000000090000000500000003000000070000000012073D020500010000000007135D8101050000FA135D8105050000FC135D810705000108000000070000000700000003000000070000000200000007000000000000000100000004115224FF0000000408A91303120701020000000108A912FF12073D0805000100135D45010000000000000009135D8101050000FA135D8105050000FC135D810704548A0300000006000000050000000300000005000000020000000500000000000000040000000512073D0208A912FF12073D0805000100135D4501000000000000000500000005000000040000000500000001"
theorem small_10122217_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10122217_right_root small_10122217_right_fuel small_10122217_right_count small_10122217_right_encoded = true := by
  decide +kernel
theorem small_10122217_right_covered : CoveredBy scale carrier boxes small_10122217_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10122217_right_root small_10122217_right_fuel small_10122217_right_count small_10122217_right_encoded small_10122217_right_checked

theorem cover_10122217 : CoveredBy scale carrier boxes root_10122217 := by
  apply coveredBy_split_literal root_10122217 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3795.root small_10122217_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3795.covered
  · exact small_10122217_right_covered
#print axioms cover_10122217

def root_10122211 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10122211_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10122211_left_fuel : Nat := 1
def small_10122211_left_count : Nat := 1
def small_10122211_left_encoded : String := "00000002"
theorem small_10122211_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10122211_left_root small_10122211_left_fuel small_10122211_left_count small_10122211_left_encoded = true := by
  decide +kernel
theorem small_10122211_left_covered : CoveredBy scale carrier boxes small_10122211_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10122211_left_root small_10122211_left_fuel small_10122211_left_count small_10122211_left_encoded small_10122211_left_checked

theorem cover_10122211 : CoveredBy scale carrier boxes root_10122211 := by
  apply coveredBy_split_literal root_10122211 small_10122211_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10122217 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10122211_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10122217
#print axioms cover_10122211

def root_10113983 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10113983 : CoveredBy scale carrier boxes root_10113983 := by
  apply coveredBy_split_literal root_10113983 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10113984 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10122211 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10113984
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10122211
#print axioms cover_10113983

def root_10113978 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10113978_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10113978_right_fuel : Nat := 1
def small_10113978_right_count : Nat := 1
def small_10113978_right_encoded : String := "00000001"
theorem small_10113978_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10113978_right_root small_10113978_right_fuel small_10113978_right_count small_10113978_right_encoded = true := by
  decide +kernel
theorem small_10113978_right_covered : CoveredBy scale carrier boxes small_10113978_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10113978_right_root small_10113978_right_fuel small_10113978_right_count small_10113978_right_encoded small_10113978_right_checked

theorem cover_10113978 : CoveredBy scale carrier boxes root_10113978 := by
  apply coveredBy_split_literal root_10113978 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10113983 small_10113978_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10113983
  · exact small_10113978_right_covered
#print axioms cover_10113978

def root_10112568 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10112568 : CoveredBy scale carrier boxes root_10112568 := by
  apply coveredBy_split_literal root_10112568 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3791.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10113978 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3791.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10113978
#print axioms cover_10112568

def root_10112562 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10112562_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10112562_left_fuel : Nat := 1
def small_10112562_left_count : Nat := 1
def small_10112562_left_encoded : String := "00000000"
theorem small_10112562_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10112562_left_root small_10112562_left_fuel small_10112562_left_count small_10112562_left_encoded = true := by
  decide +kernel
theorem small_10112562_left_covered : CoveredBy scale carrier boxes small_10112562_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10112562_left_root small_10112562_left_fuel small_10112562_left_count small_10112562_left_encoded small_10112562_left_checked

theorem cover_10112562 : CoveredBy scale carrier boxes root_10112562 := by
  apply coveredBy_split_literal root_10112562 small_10112562_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10112568 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10112562_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10112568
#print axioms cover_10112562

def root_10133583 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10133583 : CoveredBy scale carrier boxes root_10133583 := by
  apply coveredBy_split_literal root_10133583 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3799.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3800.root coord0 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3799.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3800.covered
#print axioms cover_10133583

def root_10133577 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10133577_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10133577_left_fuel : Nat := 1
def small_10133577_left_count : Nat := 1
def small_10133577_left_encoded : String := "00000001"
theorem small_10133577_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10133577_left_root small_10133577_left_fuel small_10133577_left_count small_10133577_left_encoded = true := by
  decide +kernel
theorem small_10133577_left_covered : CoveredBy scale carrier boxes small_10133577_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10133577_left_root small_10133577_left_fuel small_10133577_left_count small_10133577_left_encoded small_10133577_left_checked

theorem cover_10133577 : CoveredBy scale carrier boxes root_10133577 := by
  apply coveredBy_split_literal root_10133577 small_10133577_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10133583 coord1 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_10133577_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10133583
#print axioms cover_10133577

def root_10133576 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10133576_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10133576_right_fuel : Nat := 24
def small_10133576_right_count : Nat := 443
def small_10133576_right_encoded : String := "13E201020DE7CA000E5FD901000000000B4D43FA10804D050B4D43FC10804D070640010812FF70FF033F67C313BBF502000000010D4128800EFA1101000000000BF3E57A000000051008ED05000000020BF3E57C000000051008ED07000000030000000A00000006000000060000000412FFACFF00000004033F67C313BBF502000000010D4128800EFA1101000000000BF3E57A100929050BF3E57C1009290700000005000000030000000A000000021008ED05000000020BF3E57C1009290706E0010812C7E4FF000000060000000412C820FF0000000402B4D6A30000000700000006000000031008ED07000000030000000A0EFA4D010BF3E57A100929050BF3E57C10092907000000060000000300000008000000021008ED05000000020BF3E57C1009290700000006000000031008ED070000000306E0010800000008000000080000000013BC31020D4128800EFA1101000000000BF3E57A0000000A1008ED05000000020BF3E57C00000006000000080EFA4D010000000600000000000000010000000310801107000000030640010812FF70FF033F67C313BBF502000000010D4128800000000A0EFA4D010000000800000000000000080000000412FFACFF00000004033F67C313BBF502000000010D4128800000000A0EFA4D010000000800000000000000080000000210801105000000020B4D43FC10804D070640010812FF70FF033F67C313BBF502000000010D4128800EFA1101000000000AA6A27A10EDAD050BF3E57C000000061008ED070000000305A0010800000006133170FF00000004000000060000000210ED7105000000020000000600000006000000060000000412FFACFF00000004033F67C313BBF502000000010D4128800EFA1101000000000AA6A27A10EDAD050BF3E57C1009290706E001080000000600000009000000031008ED070000000306E0010812C7E4FF02B4D6A3000000090000000900000004000000090000000210ED710500000002000000090EFA4D010AA6A27A10EDAD050BF3E57C1009290700000006000000031008ED070000000306E0010812C7E4FF000000060000000412C820FF0000000402B4D6A313D0D102000000010D947940000000090EAEE9010000000800000000000000060000000210ED7105000000020BF3E57C000000061008ED070000000306E0010800000006000000090000000013BC31020D4128800EFA1101000000000AA6A27A10EDAD050BF3E57C000000061008ED07000000030000000A0000000210ED7105000000020000000600000006000000010000000310801107000000030640010812FF70FF033F67C313BBF502000000010D4128800EFA1101000000000AA6A27A0000000A10ED7105000000020000000A0EFA4D010AA6A27A10EDAD050AA6A27C10EDAD0705A0010800000006133170FF0000000402B4D6A313D0D102000000010D9479400000000A0000000600000006000000030000000A0000000210ED7105000000020AA6A27C10EDAD07000000060000000310ED7107000000030000000A0000000013BC31020D4128800000000A0EFA4D010AA6A27A000000060000000600000000000000010000000412FFACFF00000004033F67C313BBF502000000010D4128800EFA1101000000000AA6A27A0000000A10ED710500000002000000090EFA4D010AA6A27A10EDAD050AA6A27C10EDAD0706E001080000000812C820FF000000040000000800000003000000080000000210ED7105000000020AA6A27C10EDAD0706E0010812C7E4FF02B4D6A3000000090000000600000004000000090000000310ED710700000003000000050000000013BC31020D4128800EFA1101000000000000000A0EFA4D010AA6A27A0000000810ED7105000000020000000500000000000000010E6015010B4D43FA10804D050B4D43FC10804D07064001080000000612FFACFF00000004033F67C313BBF502000000010DAED881000000080E9661000BF3E57A000000081008ED05000000020000000600000000000000060000000310801107000000030640010800000008000000080000000210801105000000020B4D43FC10804D07064001080000000612FFACFF00000004033F67C313BBF502000000010DAED881000000060E9661000AA6A27A000000060000000600000000000000060000000310801107000000030640010812FF70FF033F67C313BBF502000000010DAED8810E96250000000000000000060E9661000AA6A27A10EDAD05000000080000000210ED7105000000020000000600000000000000060000000412FFACFF00000004033F67C313BBF502000000010DAED8810E96250000000000000000080E9661000AA6A27A10EDAD05000000080000000210ED7105000000020AA6A27C10EDAD0706E001080000000600000005000000030000000500000000000000080000000000000001"
theorem small_10133576_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10133576_right_root small_10133576_right_fuel small_10133576_right_count small_10133576_right_encoded = true := by
  decide +kernel
theorem small_10133576_right_covered : CoveredBy scale carrier boxes small_10133576_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10133576_right_root small_10133576_right_fuel small_10133576_right_count small_10133576_right_encoded small_10133576_right_checked

theorem cover_10133576 : CoveredBy scale carrier boxes root_10133576 := by
  apply coveredBy_split_literal root_10133576 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10133577 small_10133576_right_root coord1 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10133577
  · exact small_10133576_right_covered
#print axioms cover_10133576

def root_10133571 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10133571_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-15552512), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10133571_right_fuel : Nat := 1
def small_10133571_right_count : Nat := 1
def small_10133571_right_encoded : String := "00000004"
theorem small_10133571_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10133571_right_root small_10133571_right_fuel small_10133571_right_count small_10133571_right_encoded = true := by
  decide +kernel
theorem small_10133571_right_covered : CoveredBy scale carrier boxes small_10133571_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10133571_right_root small_10133571_right_fuel small_10133571_right_count small_10133571_right_encoded small_10133571_right_checked

theorem cover_10133571 : CoveredBy scale carrier boxes root_10133571 := by
  apply coveredBy_split_literal root_10133571 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10133576 small_10133571_right_root coord4 true (-15552512)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10133576
  · exact small_10133571_right_covered
#print axioms cover_10133571

def root_10133570 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10133570 : CoveredBy scale carrier boxes root_10133570 := by
  apply coveredBy_split_literal root_10133570 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10133571 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3801.root coord4 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10133571
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3801.covered
#print axioms cover_10133570

def root_10133564 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10133564_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10133564_left_fuel : Nat := 1
def small_10133564_left_count : Nat := 1
def small_10133564_left_encoded : String := "00000003"
theorem small_10133564_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10133564_left_root small_10133564_left_fuel small_10133564_left_count small_10133564_left_encoded = true := by
  decide +kernel
theorem small_10133564_left_covered : CoveredBy scale carrier boxes small_10133564_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10133564_left_root small_10133564_left_fuel small_10133564_left_count small_10133564_left_encoded small_10133564_left_checked

theorem cover_10133564 : CoveredBy scale carrier boxes root_10133564 := by
  apply coveredBy_split_literal root_10133564 small_10133564_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10133570 coord3 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_10133564_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10133570
#print axioms cover_10133564

def root_10132910 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10132910_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10132910_left_fuel : Nat := 23
def small_10132910_left_count : Nat := 309
def small_10132910_left_encoded : String := "0F878D0707800108128A40FF022A458313E1C502000000010DE7CA000E5FD901000000000B4D43FA10804D05000000050000000210801105000000020DE7C9FC0E60150700000005000000030E5FD907000000030640010812FF70FF0115234300000005000000060000000412FFACFF000000040115234313F85902000000010D4128800EFA110100000000000000070000000713F895020D4128800EFA1101000000000AA6A27A10EDAD050D41287C000000050EFA11070000000306E0010800000005000000070000000210ED710500000002000000090EFA4D010AA6A27A0000000610ED7105000000020000000600000000000000010E6015010B4D43FA10804D050DE7C9FC000000050E5FD90700000003064001080000000512FFACFF000000040115234300000005000000060000000210801105000000020DE7C9FC000000060E5FD90700000003064001080000000612FFACFF00000004011523430000000A000000060000000013E201020DE7CA000E5FD901000000000B4D43FA10804D050DE7C9FC000000060E5FD90700000003064001080000000612FFACFF00000004033F67C313BBF502000000010D41288000000005000000060000000600000002108011050000000200000006000000060000000100000004128A7CFF00000004022A458313E1C502000000010DE7CA000E5FD901000000000B4D43FA10804D050DE7C9FC000000070E5FD90700000003000000070000000210801105000000020DE7C9FC000000070E5FD9070000000308C0010811FBE8FF011523430000000713F895020D41288000000009000000070000000100000004000000070E6015010B4D43FA10804D05000000070000000210801105000000020DE7C9FC000000070E5FD9070000000308C0010811FBE8FF011523430000000713F895020DAED8810E9625000000000000000006000000070000000100000004000000070000000013E201020DE7CA000E5FD901000000000B4D43FA10804D050DE7C9FC0E60150708C0010811FBE8FF000000060000000400000007000000030E5FD9070000000308C0010811FBE8FF033F67C313BBF502000000010D4128800EFA110100000000000000070000000713BC31020D4128800EFA1101000000000BF3E57A000000061008ED05000000020000000600000006000000010000000411FC24FF00000004033F67C30000000713BC31020D4128800EFA1101000000000000000700000007000000010000000210801105000000020DE7C9FC0E60150708C001080000000611FC24FF00000004033F67C30000000700000006000000030E5FD9070000000308C0010811FBE8FF033F67C313BBF502000000010D412880000000090EFA4D010AA6A27A10EDAD050D41287C000000060000000900000002000000090000000013BC31020D4128800000000900000006000000010000000411FC24FF00000004033F67C300000007000000090E6015010B4D43FA10804D050DE7C9FC0E60150700000006000000030E5FD9070000000308C0010811FBE8FF000000060000000411FC24FF00000004033F67C30000000713BC310200000008000000010000000210801105000000020DE7C9FC0E60150700000006000000030E5FD9070000000308C0010811FBE8FF000000060000000411FC24FF00000004033F67C30000000700000006000000000000000100000003"
theorem small_10132910_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10132910_left_root small_10132910_left_fuel small_10132910_left_count small_10132910_left_encoded = true := by
  decide +kernel
theorem small_10132910_left_covered : CoveredBy scale carrier boxes small_10132910_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10132910_left_root small_10132910_left_fuel small_10132910_left_count small_10132910_left_encoded small_10132910_left_checked

theorem cover_10132910 : CoveredBy scale carrier boxes root_10132910 := by
  apply coveredBy_split_literal root_10132910 small_10132910_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10133564 coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_10132910_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10133564
#print axioms cover_10132910

def root_10132904 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10132904_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10132904_left_fuel : Nat := 1
def small_10132904_left_count : Nat := 1
def small_10132904_left_encoded : String := "00000002"
theorem small_10132904_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10132904_left_root small_10132904_left_fuel small_10132904_left_count small_10132904_left_encoded = true := by
  decide +kernel
theorem small_10132904_left_covered : CoveredBy scale carrier boxes small_10132904_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10132904_left_root small_10132904_left_fuel small_10132904_left_count small_10132904_left_encoded small_10132904_left_checked

theorem cover_10132904 : CoveredBy scale carrier boxes root_10132904 := by
  apply coveredBy_split_literal root_10132904 small_10132904_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10132910 coord2 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_10132904_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10132910
#print axioms cover_10132904

def root_10132318 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10132318_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10132318_left_fuel : Nat := 20
def small_10132318_left_count : Nat := 273
def small_10132318_left_encoded : String := "0F878D050C9A86FC0F878D0707800108128A40FF022A45830000000513E201020DE7CA00000000050E60150100000005000000000000000100000004128A7CFF00000004022A458313E1C502000000010DE7CA000E5FD90100000000000000070000000713E201020DE7CA000E5FD901000000000DE7C9FA0E6015050DE7C9FC000000050E5FD9070000000308C001080000000500000007000000020E5FD905000000020DE7C9FC0E60150708C001080000000500000007000000030E5FD9070000000308C0010811FBE8FF033F67C30000000713BC3102000000080000000100000004000000070E6015010DE7C9FA0E6015050DE7C9FC0000000500000008000000020E5FD905000000020DE7C9FC0E60150700000006000000030E5FD9070000000308C0010800000008000000070000000000000001000000030F8751070000000307800108128A40FF022A458313E1C502000000010DE7CA000E5FD901000000000DE7C9FA0E60150500000005000000020E5FD905000000020B4D43FC10804D07000000050000000310801107000000030640010812FF70FF01152343000000050000000A0000000412FFACFF000000040115234313F85902000000010D4128800EFA110100000000000000070000000713F895020D4128800000000A00000008000000010E6015010DE7C9FA0E60150500000005000000020E5FD905000000020B4D43FC10804D07064001080000000512FFACFF00000004011523430000000500000008000000031080110700000003064001080000000812FFACFF00000004000000080000000013E201020DE7CA000E5FD901000000000DE7C9FA0E60150500000008000000020E5FD905000000020B4D43FC10804D070640010812FF70FF000000050000000412FFACFF00000004033F67C313BBF502000000010D4128800000000500000008000000080000000310801107000000030000000A0E6015010DE7C9FA000000080E5FD905000000020B4D43FC10804D07000000080000000300000008000000000000000100000004128A7CFF00000004022A458313E1C502000000010DE7CA000E5FD901000000000DE7C9FA0E6015050B4D43FC00000007108011070000000300000007000000020E5FD905000000020B4D43FC00000007108011070000000308C0010811FBE8FF011523430000000713F895020D4128800000000A000000070000000100000004000000070E6015010DE7C9FA0E60150500000007000000020E5FD905000000020B4D43FC00000007108011070000000308C0010800000008000000070000000013E201020DE7CA000E5FD901000000000DE7C9FA0E60150500000008000000020E5FD905000000020B4D43FC10804D0708C0010811FBE8FF033F67C313BBF502000000010D4128800EFA1101000000000000000700000007000000080000000411FC24FF0000000400000008000000031080110700000003000000080E60150100000008000000000000000100000002"
theorem small_10132318_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10132318_left_root small_10132318_left_fuel small_10132318_left_count small_10132318_left_encoded = true := by
  decide +kernel
theorem small_10132318_left_covered : CoveredBy scale carrier boxes small_10132318_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10132318_left_root small_10132318_left_fuel small_10132318_left_count small_10132318_left_encoded small_10132318_left_checked

theorem cover_10132318 : CoveredBy scale carrier boxes root_10132318 := by
  apply coveredBy_split_literal root_10132318 small_10132318_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10132904 coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_10132318_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10132904
#print axioms cover_10132318

def root_10132313 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10132313_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10132313_right_fuel : Nat := 1
def small_10132313_right_count : Nat := 1
def small_10132313_right_encoded : String := "00000000"
theorem small_10132313_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10132313_right_root small_10132313_right_fuel small_10132313_right_count small_10132313_right_encoded = true := by
  decide +kernel
theorem small_10132313_right_covered : CoveredBy scale carrier boxes small_10132313_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10132313_right_root small_10132313_right_fuel small_10132313_right_count small_10132313_right_encoded small_10132313_right_checked

theorem cover_10132313 : CoveredBy scale carrier boxes root_10132313 := by
  apply coveredBy_split_literal root_10132313 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10132318 small_10132313_right_root coord0 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10132318
  · exact small_10132313_right_covered
#print axioms cover_10132313

def root_10130257 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10130257 : CoveredBy scale carrier boxes root_10130257 := by
  apply coveredBy_split_literal root_10130257 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3798.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10132313 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3798.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10132313
#print axioms cover_10130257

def root_10130251 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10130251_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10130251_left_fuel : Nat := 1
def small_10130251_left_count : Nat := 1
def small_10130251_left_encoded : String := "00000003"
theorem small_10130251_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10130251_left_root small_10130251_left_fuel small_10130251_left_count small_10130251_left_encoded = true := by
  decide +kernel
theorem small_10130251_left_covered : CoveredBy scale carrier boxes small_10130251_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10130251_left_root small_10130251_left_fuel small_10130251_left_count small_10130251_left_encoded small_10130251_left_checked

theorem cover_10130251 : CoveredBy scale carrier boxes root_10130251 := by
  apply coveredBy_split_literal root_10130251 small_10130251_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10130257 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_10130251_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10130257
#print axioms cover_10130251

def root_10130073 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10130073_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10130073_left_fuel : Nat := 17
def small_10130073_left_count : Nat := 81
def small_10130073_left_encoded : String := "0F34D0FC0C9A87000F875101000000000C9A86FA0F878D0500000005000000020F8751050000000207800108128A40FF0000000500000004128A7CFF00000004022A458313E1C502000000010AD357870000000510D13CFC000000030B4D4400000000050000000713E201020AD3578710D100FC000000050000000310D13CFC000000030B4D440010801101000000000B4D43FA10804D0500000005000000020000000910804D010B4D43FA10804D050000000500000002108011050000000208C00108000000060000000900000000000000010F878D010C9A86FA0F878D0500000005000000020F8751050000000207800108128A40FF0000000600000004128A7CFF00000004022A458313E1C502000000010AD357870000000610D13CFC000000030DE7CA000E5FD901000000000000000700000007000000060000000000000003"
theorem small_10130073_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10130073_left_root small_10130073_left_fuel small_10130073_left_count small_10130073_left_encoded = true := by
  decide +kernel
theorem small_10130073_left_covered : CoveredBy scale carrier boxes small_10130073_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10130073_left_root small_10130073_left_fuel small_10130073_left_count small_10130073_left_encoded small_10130073_left_checked

theorem cover_10130073 : CoveredBy scale carrier boxes root_10130073 := by
  apply coveredBy_split_literal root_10130073 small_10130073_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10130251 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_10130073_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10130251
#print axioms cover_10130073

def root_10130067 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10130067_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10130067_left_fuel : Nat := 1
def small_10130067_left_count : Nat := 1
def small_10130067_left_encoded : String := "00000002"
theorem small_10130067_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10130067_left_root small_10130067_left_fuel small_10130067_left_count small_10130067_left_encoded = true := by
  decide +kernel
theorem small_10130067_left_covered : CoveredBy scale carrier boxes small_10130067_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10130067_left_root small_10130067_left_fuel small_10130067_left_count small_10130067_left_encoded small_10130067_left_checked

theorem cover_10130067 : CoveredBy scale carrier boxes root_10130067 := by
  apply coveredBy_split_literal root_10130067 small_10130067_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10130073 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_10130067_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10130073
#print axioms cover_10130067

def root_10129923 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10129923_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10129923_left_fuel : Nat := 16
def small_10129923_left_count : Nat := 67
def small_10129923_left_encoded : String := "0F34D0FA0CFD9C070F34D0FC00000005000000030F350CFC000000030C9A87000F875101000000000C9A86FC0F878D0700000005000000030F8751070000000307800108128A40FF0000000500000004128A7CFF00000004022A458313E1C502000000010AD357850000000510D13CFA000000020B4D4400000000050000000713E201020AD35785000000080000000A000000010F878D010C9A86FC0F878D0700000005000000030F8751070000000307800108128A40FF022A4583000000050000000800000004128A7CFF00000004022A458313E1C502000000010AD357850000000810D13CFA000000020DE7CA000E5FD901000000000000000700000007000000080000000000000002"
theorem small_10129923_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10129923_left_root small_10129923_left_fuel small_10129923_left_count small_10129923_left_encoded = true := by
  decide +kernel
theorem small_10129923_left_covered : CoveredBy scale carrier boxes small_10129923_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10129923_left_root small_10129923_left_fuel small_10129923_left_count small_10129923_left_encoded small_10129923_left_checked

theorem cover_10129923 : CoveredBy scale carrier boxes root_10129923 := by
  apply coveredBy_split_literal root_10129923 small_10129923_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10130067 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_10129923_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10130067
#print axioms cover_10129923

def root_10129917 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10129917_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10129917_left_fuel : Nat := 1
def small_10129917_left_count : Nat := 1
def small_10129917_left_encoded : String := "00000001"
theorem small_10129917_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10129917_left_root small_10129917_left_fuel small_10129917_left_count small_10129917_left_encoded = true := by
  decide +kernel
theorem small_10129917_left_covered : CoveredBy scale carrier boxes small_10129917_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10129917_left_root small_10129917_left_fuel small_10129917_left_count small_10129917_left_encoded small_10129917_left_checked

theorem cover_10129917 : CoveredBy scale carrier boxes root_10129917 := by
  apply coveredBy_split_literal root_10129917 small_10129917_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10129923 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_10129917_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10129923
#print axioms cover_10129917

def root_10129916 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10129916 : CoveredBy scale carrier boxes root_10129916 := by
  apply coveredBy_split_literal root_10129916 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10129917 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3802.root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10129917
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3802.covered
#print axioms cover_10129916

def root_10129911 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10129911_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10129911_right_fuel : Nat := 1
def small_10129911_right_count : Nat := 1
def small_10129911_right_encoded : String := "00000000"
theorem small_10129911_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10129911_right_root small_10129911_right_fuel small_10129911_right_count small_10129911_right_encoded = true := by
  decide +kernel
theorem small_10129911_right_covered : CoveredBy scale carrier boxes small_10129911_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10129911_right_root small_10129911_right_fuel small_10129911_right_count small_10129911_right_encoded small_10129911_right_checked

theorem cover_10129911 : CoveredBy scale carrier boxes root_10129911 := by
  apply coveredBy_split_literal root_10129911 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10129916 small_10129911_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10129916
  · exact small_10129911_right_covered
#print axioms cover_10129911

def root_10128787 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10128787 : CoveredBy scale carrier boxes root_10128787 := by
  apply coveredBy_split_literal root_10128787 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3797.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10129911 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3797.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10129911
#print axioms cover_10128787

def root_10128781 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10128781_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10128781_left_fuel : Nat := 1
def small_10128781_left_count : Nat := 1
def small_10128781_left_encoded : String := "00000004"
theorem small_10128781_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10128781_left_root small_10128781_left_fuel small_10128781_left_count small_10128781_left_encoded = true := by
  decide +kernel
theorem small_10128781_left_covered : CoveredBy scale carrier boxes small_10128781_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10128781_left_root small_10128781_left_fuel small_10128781_left_count small_10128781_left_encoded small_10128781_left_checked

theorem cover_10128781 : CoveredBy scale carrier boxes root_10128781 := by
  apply coveredBy_split_literal root_10128781 small_10128781_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10128787 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_10128781_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10128787
#print axioms cover_10128781

def root_10126849 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10126849 : CoveredBy scale carrier boxes root_10126849 := by
  apply coveredBy_split_literal root_10126849 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3796.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10128781 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3796.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10128781
#print axioms cover_10126849

def root_10126843 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126843_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126843_left_fuel : Nat := 1
def small_10126843_left_count : Nat := 1
def small_10126843_left_encoded : String := "00000003"
theorem small_10126843_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10126843_left_root small_10126843_left_fuel small_10126843_left_count small_10126843_left_encoded = true := by
  decide +kernel
theorem small_10126843_left_covered : CoveredBy scale carrier boxes small_10126843_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10126843_left_root small_10126843_left_fuel small_10126843_left_count small_10126843_left_encoded small_10126843_left_checked

theorem cover_10126843 : CoveredBy scale carrier boxes root_10126843 := by
  apply coveredBy_split_literal root_10126843 small_10126843_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10126849 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10126843_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10126849
#print axioms cover_10126843

def root_10126797 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126797_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126797_left_fuel : Nat := 9
def small_10126797_left_count : Nat := 21
def small_10126797_left_encoded : String := "120700FC05000108135D44FF0000000500000004135D80FF000000040CFD9C010F34D10000000000000000060F350D0004548A03000000051386AD020CFD9C050000000500000006000000010000000000000003"
theorem small_10126797_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10126797_left_root small_10126797_left_fuel small_10126797_left_count small_10126797_left_encoded = true := by
  decide +kernel
theorem small_10126797_left_covered : CoveredBy scale carrier boxes small_10126797_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10126797_left_root small_10126797_left_fuel small_10126797_left_count small_10126797_left_encoded small_10126797_left_checked

theorem cover_10126797 : CoveredBy scale carrier boxes root_10126797 := by
  apply coveredBy_split_literal root_10126797 small_10126797_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10126843 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10126797_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10126843
#print axioms cover_10126797

def root_10126791 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126791_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126791_left_fuel : Nat := 1
def small_10126791_left_count : Nat := 1
def small_10126791_left_encoded : String := "00000002"
theorem small_10126791_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10126791_left_root small_10126791_left_fuel small_10126791_left_count small_10126791_left_encoded = true := by
  decide +kernel
theorem small_10126791_left_covered : CoveredBy scale carrier boxes small_10126791_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10126791_left_root small_10126791_left_fuel small_10126791_left_count small_10126791_left_encoded small_10126791_left_checked

theorem cover_10126791 : CoveredBy scale carrier boxes root_10126791 := by
  apply coveredBy_split_literal root_10126791 small_10126791_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10126797 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10126791_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10126797
#print axioms cover_10126791

def root_10126719 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126719_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126719_left_fuel : Nat := 15
def small_10126719_left_count : Nat := 35
def small_10126719_left_encoded : String := "120700FA08A913070000000512073CFC0000000305000108135D44FF0000000500000004135D80FF000000040CFD9C010F34D1000000000004548A0300000005000000080F350D0004548A03000000051386AD0204548A05000000051386ACFA000000020CFD9C07000000050F350CFC000000030C9A87000000000500000008000000010000000000000002"
theorem small_10126719_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10126719_left_root small_10126719_left_fuel small_10126719_left_count small_10126719_left_encoded = true := by
  decide +kernel
theorem small_10126719_left_covered : CoveredBy scale carrier boxes small_10126719_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10126719_left_root small_10126719_left_fuel small_10126719_left_count small_10126719_left_encoded small_10126719_left_checked

theorem cover_10126719 : CoveredBy scale carrier boxes root_10126719 := by
  apply coveredBy_split_literal root_10126719 small_10126719_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10126791 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10126719_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10126791
#print axioms cover_10126719

def root_10126713 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126713_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126713_left_fuel : Nat := 1
def small_10126713_left_count : Nat := 1
def small_10126713_left_encoded : String := "00000001"
theorem small_10126713_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10126713_left_root small_10126713_left_fuel small_10126713_left_count small_10126713_left_encoded = true := by
  decide +kernel
theorem small_10126713_left_covered : CoveredBy scale carrier boxes small_10126713_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10126713_left_root small_10126713_left_fuel small_10126713_left_count small_10126713_left_encoded small_10126713_left_checked

theorem cover_10126713 : CoveredBy scale carrier boxes root_10126713 := by
  apply coveredBy_split_literal root_10126713 small_10126713_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10126719 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10126713_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10126719
#print axioms cover_10126713

def root_10126712 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126712_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126712_right_fuel : Nat := 30
def small_10126712_right_count : Nat := 197
def small_10126712_right_encoded : String := "12073D0208A91305120700FA08A91307120700FC000000050000000312073CFC0000000305000108135D44FF0CFD9C010F34D10000000000000000080F350D000CFD9C0300000005000000080000000000000004135D80FF000000040CFD9C010F34D10000000000000000080F350D000CFD9C030F34D1020000000104548A05000000081386ACFA000000020CFD9C07000000080000000800000008000000000000000212073CFA0000000208A91307120700FC000000060000000312073CFC0000000305000108135D44FF0CFD9C010F34D10000000000000000060F350D000CFD9C030F34D102000000010CFD9C050F34D0FA0CFD9C07000000060F350CFC000000030C9A87000F875101000000000C9A86FC0000000600000008000000060000000200000006000000060000000000000004135D80FF000000040CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9C050F34D0FA000000080000000200000006000000060F350D000CFD9C030F34D102000000010CFD9C050F34D0FA0CFD9C070F34D0FC00000006000000030F350CFC000000030C9A87000F875101000000000C9A86FC0F878D0700000008000000030000000800000008000000020F350CFA000000020CFD9C070F34D0FC00000006000000030F350CFC000000030C9A87000F875101000000000C9A86FA0F878D050C9A86FC0F878D070780010800000006128A7CFF000000040AD3578310D10102000000010B4D440010801101000000000DE7C9FA000000060E5FD90500000002000000060000000600000006000000030F87510700000003078001080000000800000008000000020F875105000000020C9A86FC0F878D0700000006000000030F8751070000000307800108128A40FF0000000600000004128A7CFF000000040AD3578310D10102000000010B4D44000000000A10804D010000000800000000000000080F878D010C9A86FA0F878D050C9A86FC0000000600000008000000020F8751050000000200000006000000000F350D020CFD9C050F34D0FA0CFD9C0700000006000000080000000200000006000000010000000000000001"
theorem small_10126712_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10126712_right_root small_10126712_right_fuel small_10126712_right_count small_10126712_right_encoded = true := by
  decide +kernel
theorem small_10126712_right_covered : CoveredBy scale carrier boxes small_10126712_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10126712_right_root small_10126712_right_fuel small_10126712_right_count small_10126712_right_encoded small_10126712_right_checked

theorem cover_10126712 : CoveredBy scale carrier boxes root_10126712 := by
  apply coveredBy_split_literal root_10126712 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10126713 small_10126712_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10126713
  · exact small_10126712_right_covered
#print axioms cover_10126712

def root_10126707 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126707_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126707_right_fuel : Nat := 1
def small_10126707_right_count : Nat := 1
def small_10126707_right_encoded : String := "00000000"
theorem small_10126707_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10126707_right_root small_10126707_right_fuel small_10126707_right_count small_10126707_right_encoded = true := by
  decide +kernel
theorem small_10126707_right_covered : CoveredBy scale carrier boxes small_10126707_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10126707_right_root small_10126707_right_fuel small_10126707_right_count small_10126707_right_encoded small_10126707_right_checked

theorem cover_10126707 : CoveredBy scale carrier boxes root_10126707 := by
  apply coveredBy_split_literal root_10126707 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10126712 small_10126707_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10126712
  · exact small_10126707_right_covered
#print axioms cover_10126707

def root_10126273 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126273_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126273_left_fuel : Nat := 28
def small_10126273_left_count : Nat := 201
def small_10126273_left_encoded : String := "120701000000000008A91303120701020000000108A91305120700FA08A913070000000512073CFC000000030500010800000005135D80FF0000000404548A0100000005000000080000000212073CFA0000000208A91307120700FC000000060000000312073CFC0000000305000108135D44FF04548A01138671000000000004548A0313867102000000010CFD9C050F34D0FA000000050000000200000006000000061386AD0004548A0313867102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9C07000000060F350CFC000000030C9A86FA000000060F87510500000002000000061386AD020CFD9C050F34D0FA000000050000000200000006000000010000000000000004135D80FF0000000404548A01138671000000000004548A0313867102000000010CFD9C050F34D0FA0CFD9C070000000500000009000000020F350CFA000000020CFD9C07000000060F350CFC000000030C9A86FA0F878D050C9A86FC0F878D07000000060000000300000008000000020F875105000000020C9A86FC000000060F875107000000030780010800000006000000081386AD020CFD9C050F34D0FA000000080000000200000006000000011386AD0004548A0313867102000000010CFD9C050F34D0FA0CFD9C070F34D0FC00000005000000030F350CFC0000000300000008000000020F350CFA000000020CFD9C070F34D0FC00000006000000030F350CFC000000030C9A86FA0F878D050C9A86FC0F878D070780010800000006128A7CFF00000004067ECE810000000800000008000000030F8751070000000300000008000000020F875105000000020C9A86FC0F878D0700000006000000030F8751070000000307800108128A40FF0000000600000004128A7CFF00000004067ECE810000000812EA9500022A458313E1C502000000010000000800000008000000001386AD020CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9C07000000060F350CFC000000030C9A86FA000000060F8751050000000200000006000000010000000012073D0208A91305120700FA08A913070000000500000008000000020000000600000001"
theorem small_10126273_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10126273_left_root small_10126273_left_fuel small_10126273_left_count small_10126273_left_encoded = true := by
  decide +kernel
theorem small_10126273_left_covered : CoveredBy scale carrier boxes small_10126273_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10126273_left_root small_10126273_left_fuel small_10126273_left_count small_10126273_left_encoded small_10126273_left_checked

theorem cover_10126273 : CoveredBy scale carrier boxes root_10126273 := by
  apply coveredBy_split_literal root_10126273 small_10126273_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10126707 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10126273_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10126707
#print axioms cover_10126273

def root_10126268 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126268_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126268_right_fuel : Nat := 1
def small_10126268_right_count : Nat := 1
def small_10126268_right_encoded : String := "00000004"
theorem small_10126268_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10126268_right_root small_10126268_right_fuel small_10126268_right_count small_10126268_right_encoded = true := by
  decide +kernel
theorem small_10126268_right_covered : CoveredBy scale carrier boxes small_10126268_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10126268_right_root small_10126268_right_fuel small_10126268_right_count small_10126268_right_encoded small_10126268_right_checked

theorem cover_10126268 : CoveredBy scale carrier boxes root_10126268 := by
  apply coveredBy_split_literal root_10126268 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10126273 small_10126268_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10126273
  · exact small_10126268_right_covered
#print axioms cover_10126268

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238
