import TaoBundleAssembly0263
import TaoBundleAssembly0264
import TaoBundleChunkBatch0353
import TaoBundleChunkBatch0354
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265
def root_3722880 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3722880_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3722880_right_fuel : Nat := 26
def small_3722880_right_count : Nat := 317
def small_3722880_right_encoded : String := "135D450100000000050000F8135D810305000104135D450500000002045489FD000000061386710600000003045489FF00000006138670FE028000F613D7ED01078000F8128A7D03028001040000000613D7ED05022A457D00000006000000050000000200000001128A41030000000100000005000000000000000600000004135D8105045489FD1386AD06045489FF00000006138670FE028000F613D7ED01078000F8128A7D0307800104128A41050000000200000006128A7D05067ECE7D0000000612EA590600000003022A457F0000000613E1C4FE03C000F613A54D0108C000F80000000A11FBE903000000010000000A0000000013A511010000000008C000F80000000611FBE9030000000100000006000000040000000200000001128A41030000000107800104128A41050000000200000006128A7D05067ECE7D0000000612EA590600000003022A457F0000000613E1C4FE03C000F613A54D01064000F812FFAD0308C0010411FBE905000000020000000511FC25050000000A000000020000000112FF710300000001000000050000000013A51101000000000000000500000004000000020000000013D7B10100000000078000F800000006128A4103000000010000000600000004000000031386710600000003045489FF1386ACFE00000004028000F613D7ED01078000F8128A7D0307800104128A410500000002022A457D0000000600000009128A7D05022A457D13E20106067ECE7F0000000612EA58FE03C000F613A54D0108C000F8000000060000000900000000000000060000000400000003000000090000000200000001128A410300000001000000090000000013D7B10100000000078000F80000000600000009138670FE028000F613D7ED01078000F8128A7D0307800104128A410500000002022A457D13E20106022A457F00000006000000050000000300000005128A7D05022A457D13E20106022A457F13E200FE0000000403C000F613A54D0108C000F811FC250308C001040000000A0000000A0000000111FBE9030000000108C001040000000911FC250500000009000000020000000013A511010000000008C000F800000006000000090000000500000003000000050000000200000001128A41030000000107800104128A41050000000200000005128A7D05022A457D13E20106022A457F00000009000000050000000300000005000000020000000013D7B10100000000078000F8128A7D0307800104128A410500000002022A457D0000000600000005128A7D05022A457D13E20106022A457F000000060000000500000003000000050000000200000001128A41030000000100000005000000040000000200000001135D45030000000105000104135D450500000002045489FD1386AD0600000006000000031386710600000003045489FF0000000900000005135D8105045489FD1386AD06045489FF1386ACFE00000004028000F613D7ED01028000F800000006000000090000000000000006138670FE028000F613D7ED01028000F813D7ED0307800104128A41050000000200000006128A7D05067ECE7D12EA9506022A457F00000006000000080000000312EA590600000003022A457F0000000900000005000000020000000113D7B103000000010780010400000008000000090000000013D7B10100000000028000F8000000060000000900000004000000031386710600000003045489FF000000090000000500000002"
theorem small_3722880_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3722880_right_root small_3722880_right_fuel small_3722880_right_count small_3722880_right_encoded = true := by
  decide +kernel
theorem small_3722880_right_covered : CoveredBy scale carrier boxes small_3722880_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3722880_right_root small_3722880_right_fuel small_3722880_right_count small_3722880_right_encoded small_3722880_right_checked

theorem cover_3722880 : CoveredBy scale carrier boxes root_3722880 := by
  apply coveredBy_split_literal root_3722880 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0264.root_3722881 small_3722880_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0264.cover_3722881
  · exact small_3722880_right_covered
#print axioms cover_3722880

def root_3722875 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3722875_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3722875_right_fuel : Nat := 1
def small_3722875_right_count : Nat := 1
def small_3722875_right_encoded : String := "00000004"
theorem small_3722875_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3722875_right_root small_3722875_right_fuel small_3722875_right_count small_3722875_right_encoded = true := by
  decide +kernel
theorem small_3722875_right_covered : CoveredBy scale carrier boxes small_3722875_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3722875_right_root small_3722875_right_fuel small_3722875_right_count small_3722875_right_encoded small_3722875_right_checked

theorem cover_3722875 : CoveredBy scale carrier boxes root_3722875 := by
  apply coveredBy_split_literal root_3722875 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3722880 small_3722875_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3722880
  · exact small_3722875_right_covered
#print axioms cover_3722875

def root_3722161 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3722161_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3722161_left_fuel : Nat := 26
def small_3722161_left_count : Nat := 333
def small_3722161_left_encoded : String := "12073CFE00000004050000F6135D8101050000F8135D810305000104135D450500000002045489FD1386AD060CFD9BFF000000050F34D0FE00000006000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A86FE00000006000000060F34D0FE078000F6128A7D01078000F8128A7D03028001040000000613D7ED05022A457D0000000513E1C506000000030AD3577F0000000510D100FE00000006000000040000000200000001128A410300000001028001040000000613D7ED05022A457D000000060000000900000002000000000000000600000004135D8105045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FE000000050F8750FF00000005000000040F34D0FE078000F6128A7D01078000F800000005128A4103000000010780010400000005128A7D0500000005000000020000000000000006000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004078000F6128A7D01078000F8128A7D030000000500000001128A4103000000010000000900000000128A410100000000000000090F8750FF078000F6128A7D01078000F800000005000000090000000000000006000000040F34D0FE078000F6128A7D01078000F8128A7D0307800104128A410500000002022A457D0000000513E1C506000000030AD3577F0000000510D100FE08C000F611FC250108C000F811FC25030000000500000001000000090000000011FBE901000000000000000900000004128A7D05022A457D0000000513E1C506000000030AD3577F0000000510D100FE08C000F611FC2501000000070000000000000009000000040000000200000001128A41030000000107800104128A410500000002022A457D13E201060AD3577F0000000510D100FE00000009000000040000000300000009128A7D05022A457D13E201060AD3577F0000000510D100FE000000070000000400000003000000090000000200000000128A410100000000078000F8128A7D0307800104128A410500000002022A457D0000000600000009128A7D05022A457D13E201060AD3577F0000000510D100FE000000060000000400000003000000090000000200000001128A41030000000100000009000000040000000200000001135D45030000000105000104135D450500000002045489FD1386AD060CFD9BFF00000006000000080000000313867106000000030CFD9BFF000000090F34D0FE0000000900000004135D8105045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004078000F6128A7D01028000F8000000050000000800000000000000060F8750FF00000006000000040F34D0FE078000F6128A7D01028000F813D7ED0307800104128A41050000000200000006128A7D0500000007000000020000000113D7B103000000010000000800000000128A410100000000028000F80000000600000009000000040000000313867106000000030CFD9BFF000000090F34D0FE078000F6128A7D01000000090000000000000009000000040000000200000000135D450100000000050000F8135D810305000104135D45050000000200000006135D8105045489FD1386AD06000000060000000313867106000000030CFD9BFF000000090F34D0FE028000F613D7ED01078000F8128A7D030000000600000001000000090000000000000006000000040000000200000001135D45030000000105000104135D450500000002045489FD0000000600000009135D8105045489FD1386AD060CFD9BFF000000060F34D0FE0000000600000004000000030000000900000002"
theorem small_3722161_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3722161_left_root small_3722161_left_fuel small_3722161_left_count small_3722161_left_encoded = true := by
  decide +kernel
theorem small_3722161_left_covered : CoveredBy scale carrier boxes small_3722161_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3722161_left_root small_3722161_left_fuel small_3722161_left_count small_3722161_left_encoded small_3722161_left_checked

theorem cover_3722161 : CoveredBy scale carrier boxes root_3722161 := by
  apply coveredBy_split_literal root_3722161 small_3722161_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3722875 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3722161_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3722875
#print axioms cover_3722161

def root_3722155 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3722155_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3722155_left_fuel : Nat := 1
def small_3722155_left_count : Nat := 1
def small_3722155_left_encoded : String := "00000003"
theorem small_3722155_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3722155_left_root small_3722155_left_fuel small_3722155_left_count small_3722155_left_encoded = true := by
  decide +kernel
theorem small_3722155_left_covered : CoveredBy scale carrier boxes small_3722155_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3722155_left_root small_3722155_left_fuel small_3722155_left_count small_3722155_left_encoded small_3722155_left_checked

theorem cover_3722155 : CoveredBy scale carrier boxes root_3722155 := by
  apply coveredBy_split_literal root_3722155 small_3722155_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3722161 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3722155_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3722161
#print axioms cover_3722155

def root_3721915 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3721915_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3721915_left_fuel : Nat := 20
def small_3721915_left_count : Nat := 111
def small_3721915_left_encoded : String := "12073D0608A912FF12073CFE00000004050000F6135D8101050000F8135D81030500010400000005135D81050CFD9BFD000000050F34D106000000030CFD9BFF000000050F34D0FE00000005000000040000000200000001135D4503000000010500010400000006135D81050CFD9BFD000000060F34D106000000030CFD9BFF000000060F34D0FE0000000600000004000000020000000000000006120700FE050000F6135D8101050000F8135D810305000104135D45050000000200000006135D81050CFD9BFD0F350D0600000005000000030F34D10600000003045489FF1386ACFE00000004078000F60000000500000006138670FE078000F6128A7D01078000F8128A7D0307800104128A41050000000200000006128A7D050000000500000002000000010000000800000000128A410100000000078000F800000006128A41030000000100000006000000040000000200000001135D4503000000010500010400000008135D81050CFD9BFD000000080F34D10600000003045489FF1386ACFE0000000400000008000000080000000200000000135D450100000000050000F800000006135D450300000001000000060000000400000003"
theorem small_3721915_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3721915_left_root small_3721915_left_fuel small_3721915_left_count small_3721915_left_encoded = true := by
  decide +kernel
theorem small_3721915_left_covered : CoveredBy scale carrier boxes small_3721915_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3721915_left_root small_3721915_left_fuel small_3721915_left_count small_3721915_left_encoded small_3721915_left_checked

theorem cover_3721915 : CoveredBy scale carrier boxes root_3721915 := by
  apply coveredBy_split_literal root_3721915 small_3721915_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3722155 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3721915_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3722155
#print axioms cover_3721915

def root_3721909 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3721909_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3721909_left_fuel : Nat := 1
def small_3721909_left_count : Nat := 1
def small_3721909_left_encoded : String := "00000004"
theorem small_3721909_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3721909_left_root small_3721909_left_fuel small_3721909_left_count small_3721909_left_encoded = true := by
  decide +kernel
theorem small_3721909_left_covered : CoveredBy scale carrier boxes small_3721909_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3721909_left_root small_3721909_left_fuel small_3721909_left_count small_3721909_left_encoded small_3721909_left_checked

theorem cover_3721909 : CoveredBy scale carrier boxes root_3721909 := by
  apply coveredBy_split_literal root_3721909 small_3721909_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3721915 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3721909_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3721915
#print axioms cover_3721909

def root_3721908 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3721908_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3721908_right_fuel : Nat := 20
def small_3721908_right_count : Nat := 105
def small_3721908_right_encoded : String := "1151E8FF08A912FD12073D06050000F6135D8101050000F800000006135D450300000001000000060000000000000006000000031207010600000003050000F6135D8101050000F8135D810305000104135D450500000002050000FE0000000600000006135D8105050000FE135D80FF00000004045489FD000000061386710600000003078000F6128A7D01078000F8128A7D030780010400000005128A7D050000000500000002000000010000000A00000000128A410100000000078000F80000000600000009135D44FF045489FD000000061386710600000003078000F60000000A00000006000000040000000200000001135D450300000001050001040000000A135D8105050000FE135D80FF00000004045489FD1386AD06078000F600000008000000060000000300000009135D44FF045489FD0000000800000009000000040000000200000000135D450100000000050000F8135D81030500010400000006135D8105050000FE00000006000000060000000200000001135D4503000000010500010400000006135D8105050000FE00000006000000090000000200000004"
theorem small_3721908_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3721908_right_root small_3721908_right_fuel small_3721908_right_count small_3721908_right_encoded = true := by
  decide +kernel
theorem small_3721908_right_covered : CoveredBy scale carrier boxes small_3721908_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3721908_right_root small_3721908_right_fuel small_3721908_right_count small_3721908_right_encoded small_3721908_right_checked

theorem cover_3721908 : CoveredBy scale carrier boxes root_3721908 := by
  apply coveredBy_split_literal root_3721908 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3721909 small_3721908_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3721909
  · exact small_3721908_right_covered
#print axioms cover_3721908

def root_3721902 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3721902_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3721902_left_fuel : Nat := 1
def small_3721902_left_count : Nat := 1
def small_3721902_left_encoded : String := "00000003"
theorem small_3721902_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3721902_left_root small_3721902_left_fuel small_3721902_left_count small_3721902_left_encoded = true := by
  decide +kernel
theorem small_3721902_left_covered : CoveredBy scale carrier boxes small_3721902_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3721902_left_root small_3721902_left_fuel small_3721902_left_count small_3721902_left_encoded small_3721902_left_checked

theorem cover_3721902 : CoveredBy scale carrier boxes root_3721902 := by
  apply coveredBy_split_literal root_3721902 small_3721902_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3721908 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3721902_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3721908
#print axioms cover_3721902

def root_3721886 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3721886_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3721886_left_fuel : Nat := 4
def small_3721886_left_count : Nat := 7
def small_3721886_left_encoded : String := "1151E8FD0A0000FE000000061151E8FF000000050000000400000003"
theorem small_3721886_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3721886_left_root small_3721886_left_fuel small_3721886_left_count small_3721886_left_encoded = true := by
  decide +kernel
theorem small_3721886_left_covered : CoveredBy scale carrier boxes small_3721886_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3721886_left_root small_3721886_left_fuel small_3721886_left_count small_3721886_left_encoded small_3721886_left_checked

theorem cover_3721886 : CoveredBy scale carrier boxes root_3721886 := by
  apply coveredBy_split_literal root_3721886 small_3721886_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3721902 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3721886_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3721902
#print axioms cover_3721886

def root_3721880 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3721880_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3721880_left_fuel : Nat := 1
def small_3721880_left_count : Nat := 1
def small_3721880_left_encoded : String := "00000002"
theorem small_3721880_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3721880_left_root small_3721880_left_fuel small_3721880_left_count small_3721880_left_encoded = true := by
  decide +kernel
theorem small_3721880_left_covered : CoveredBy scale carrier boxes small_3721880_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3721880_left_root small_3721880_left_fuel small_3721880_left_count small_3721880_left_encoded small_3721880_left_checked

theorem cover_3721880 : CoveredBy scale carrier boxes root_3721880 := by
  apply coveredBy_split_literal root_3721880 small_3721880_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3721886 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3721880_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3721886
#print axioms cover_3721880

def root_3734164 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3734164 : CoveredBy scale carrier boxes root_3734164 := by
  apply coveredBy_split_literal root_3734164 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1409.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1410.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1409.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1410.covered
#print axioms cover_3734164

def root_3734158 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3734158_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3734158_left_fuel : Nat := 1
def small_3734158_left_count : Nat := 1
def small_3734158_left_encoded : String := "00000003"
theorem small_3734158_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3734158_left_root small_3734158_left_fuel small_3734158_left_count small_3734158_left_encoded = true := by
  decide +kernel
theorem small_3734158_left_covered : CoveredBy scale carrier boxes small_3734158_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3734158_left_root small_3734158_left_fuel small_3734158_left_count small_3734158_left_encoded small_3734158_left_checked

theorem cover_3734158 : CoveredBy scale carrier boxes root_3734158 := by
  apply coveredBy_split_literal root_3734158 small_3734158_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3734164 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3734158_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3734164
#print axioms cover_3734158

def root_3734064 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3734064_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3734064_left_fuel : Nat := 12
def small_3734064_left_count : Nat := 45
def small_3734064_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A91305120701040000000208A912FF00000005120700FE000000050000000412073D0408A912FF12073CFE00000004050000F60000000500000006120700FE050000F600000005135D450100000000050000F800000005135D4503000000010000000600000004000000021151E8FF08A913051207010400000002050000F6000000050000000A12073D04050000F60000000500000006000000020000000400000003"
theorem small_3734064_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3734064_left_root small_3734064_left_fuel small_3734064_left_count small_3734064_left_encoded = true := by
  decide +kernel
theorem small_3734064_left_covered : CoveredBy scale carrier boxes small_3734064_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3734064_left_root small_3734064_left_fuel small_3734064_left_count small_3734064_left_encoded small_3734064_left_checked

theorem cover_3734064 : CoveredBy scale carrier boxes root_3734064 := by
  apply coveredBy_split_literal root_3734064 small_3734064_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3734158 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3734064_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3734158
#print axioms cover_3734064

def root_3734059 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3734059_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3734059_right_fuel : Nat := 1
def small_3734059_right_count : Nat := 1
def small_3734059_right_encoded : String := "00000002"
theorem small_3734059_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3734059_right_root small_3734059_right_fuel small_3734059_right_count small_3734059_right_encoded = true := by
  decide +kernel
theorem small_3734059_right_covered : CoveredBy scale carrier boxes small_3734059_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3734059_right_root small_3734059_right_fuel small_3734059_right_count small_3734059_right_encoded small_3734059_right_checked

theorem cover_3734059 : CoveredBy scale carrier boxes root_3734059 := by
  apply coveredBy_split_literal root_3734059 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3734064 small_3734059_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3734064
  · exact small_3734059_right_covered
#print axioms cover_3734059

def root_3721879 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3721879 : CoveredBy scale carrier boxes root_3721879 := by
  apply coveredBy_split_literal root_3721879 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3721880 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3734059 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3721880
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3734059
#print axioms cover_3721879

def root_3721873 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3721873_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3721873_left_fuel : Nat := 1
def small_3721873_left_count : Nat := 1
def small_3721873_left_encoded : String := "00000001"
theorem small_3721873_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3721873_left_root small_3721873_left_fuel small_3721873_left_count small_3721873_left_encoded = true := by
  decide +kernel
theorem small_3721873_left_covered : CoveredBy scale carrier boxes small_3721873_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3721873_left_root small_3721873_left_fuel small_3721873_left_count small_3721873_left_encoded small_3721873_left_checked

theorem cover_3721873 : CoveredBy scale carrier boxes root_3721873 := by
  apply coveredBy_split_literal root_3721873 small_3721873_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3721879 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3721873_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3721879
#print axioms cover_3721873

def root_3711699 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3711699 : CoveredBy scale carrier boxes root_3711699 := by
  apply coveredBy_split_literal root_3711699 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3711700 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3721873 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3711700
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3721873
#print axioms cover_3711699

def root_3711693 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711693_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711693_left_fuel : Nat := 1
def small_3711693_left_count : Nat := 1
def small_3711693_left_encoded : String := "00000000"
theorem small_3711693_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3711693_left_root small_3711693_left_fuel small_3711693_left_count small_3711693_left_encoded = true := by
  decide +kernel
theorem small_3711693_left_covered : CoveredBy scale carrier boxes small_3711693_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3711693_left_root small_3711693_left_fuel small_3711693_left_count small_3711693_left_encoded small_3711693_left_checked

theorem cover_3711693 : CoveredBy scale carrier boxes root_3711693 := by
  apply coveredBy_split_literal root_3711693 small_3711693_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3711699 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3711693_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3711699
#print axioms cover_3711693

def root_3704607 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3704607 : CoveredBy scale carrier boxes root_3704607 := by
  apply coveredBy_split_literal root_3704607 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3704608 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3711693 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3704608
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3711693
#print axioms cover_3704607

def root_3741988 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3741988 : CoveredBy scale carrier boxes root_3741988 := by
  apply coveredBy_split_literal root_3741988 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1412.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1413.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1412.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1413.covered
#print axioms cover_3741988

def root_3741983 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3741983_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3741983_right_fuel : Nat := 1
def small_3741983_right_count : Nat := 1
def small_3741983_right_encoded : String := "00000001"
theorem small_3741983_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3741983_right_root small_3741983_right_fuel small_3741983_right_count small_3741983_right_encoded = true := by
  decide +kernel
theorem small_3741983_right_covered : CoveredBy scale carrier boxes small_3741983_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3741983_right_root small_3741983_right_fuel small_3741983_right_count small_3741983_right_encoded small_3741983_right_checked

theorem cover_3741983 : CoveredBy scale carrier boxes root_3741983 := by
  apply coveredBy_split_literal root_3741983 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3741988 small_3741983_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3741988
  · exact small_3741983_right_covered
#print axioms cover_3741983

def root_3741982 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3741982 : CoveredBy scale carrier boxes root_3741982 := by
  apply coveredBy_split_literal root_3741982 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3741983 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1414.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3741983
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1414.covered
#print axioms cover_3741982

def root_3741976 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3741976_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3741976_left_fuel : Nat := 1
def small_3741976_left_count : Nat := 1
def small_3741976_left_encoded : String := "00000000"
theorem small_3741976_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3741976_left_root small_3741976_left_fuel small_3741976_left_count small_3741976_left_encoded = true := by
  decide +kernel
theorem small_3741976_left_covered : CoveredBy scale carrier boxes small_3741976_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3741976_left_root small_3741976_left_fuel small_3741976_left_count small_3741976_left_encoded small_3741976_left_checked

theorem cover_3741976 : CoveredBy scale carrier boxes root_3741976 := by
  apply coveredBy_split_literal root_3741976 small_3741976_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3741982 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3741976_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3741982
#print axioms cover_3741976

def root_3739648 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3739648 : CoveredBy scale carrier boxes root_3739648 := by
  apply coveredBy_split_literal root_3739648 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1411.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3741976 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1411.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3741976
#print axioms cover_3739648

def root_3704606 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3704606 : CoveredBy scale carrier boxes root_3704606 := by
  apply coveredBy_split_literal root_3704606 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3704607 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3739648 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3704607
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3739648
#print axioms cover_3704606

def root_3749333 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3749333_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3749333_left_fuel : Nat := 22
def small_3749333_left_count : Nat := 153
def small_3749333_left_encoded : String := "120701040000000208A912FD12073D060500010800000005135D80FF000000040CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C030000000A0000000900000003120701060000000305000108135D44FF0CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C030F34D0F800000005000000010F350CF80000000104548A051386710400000002045489FD000000051386710600000003000000071386AD04045489FD0000000513867106000000030C9A86F6000000050F875101000000000C9A86F8000000050000000A0000000200000004135D80FF000000040CFD9C010F34D0F60CFD9C03000000050F350CF80000000104548A05000000051386AD04045489FD0000000513867106000000030C9A86F8000000050F875103000000010000000600000002000000000F350CF6000000000CFD9C030F34D0F804548A05000000050000000A000000010F350CF80000000104548A051386710400000002045489FD1386AD060000000A0000000313867106000000030C9A86F60F878D010C9A86F80F878D0300000005000000010F8751030000000100000007000000000F875101000000000000000A1386AD04045489FD1386AD060C9A86F6000000090000000A0000000313867106000000030C9A86F60F878D010C9A86F80F878D03078001080000000500000009000000010F875103000000010780010800000007128A7CFF00000004067ECE8512EA5904000000020000000600000009000000000F875101000000000C9A86F80000000A0F87510300000001078001080000000A128A7CFF00000004067ECE850000000A0000000A00000002"
theorem small_3749333_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3749333_left_root small_3749333_left_fuel small_3749333_left_count small_3749333_left_encoded = true := by
  decide +kernel
theorem small_3749333_left_covered : CoveredBy scale carrier boxes small_3749333_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3749333_left_root small_3749333_left_fuel small_3749333_left_count small_3749333_left_encoded small_3749333_left_checked

theorem cover_3749333 : CoveredBy scale carrier boxes root_3749333 := by
  apply coveredBy_split_literal root_3749333 small_3749333_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1415.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3749333_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1415.covered
#print axioms cover_3749333

def root_3749327 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3749327_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3749327_left_fuel : Nat := 1
def small_3749327_left_count : Nat := 1
def small_3749327_left_encoded : String := "00000001"
theorem small_3749327_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3749327_left_root small_3749327_left_fuel small_3749327_left_count small_3749327_left_encoded = true := by
  decide +kernel
theorem small_3749327_left_covered : CoveredBy scale carrier boxes small_3749327_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3749327_left_root small_3749327_left_fuel small_3749327_left_count small_3749327_left_encoded small_3749327_left_checked

theorem cover_3749327 : CoveredBy scale carrier boxes root_3749327 := by
  apply coveredBy_split_literal root_3749327 small_3749327_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3749333 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3749327_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3749333
#print axioms cover_3749327

def root_3749303 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3749303_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3749303_left_fuel : Nat := 5
def small_3749303_left_count : Nat := 11
def small_3749303_left_encoded : String := "120700F808A91305120701040000000208A912FD0000000A0000000512073D04000000050000000200000001"
theorem small_3749303_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3749303_left_root small_3749303_left_fuel small_3749303_left_count small_3749303_left_encoded = true := by
  decide +kernel
theorem small_3749303_left_covered : CoveredBy scale carrier boxes small_3749303_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3749303_left_root small_3749303_left_fuel small_3749303_left_count small_3749303_left_encoded small_3749303_left_checked

theorem cover_3749303 : CoveredBy scale carrier boxes root_3749303 := by
  apply coveredBy_split_literal root_3749303 small_3749303_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3749327 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3749303_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3749327
#print axioms cover_3749303

def root_3749297 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3749297_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3749297_left_fuel : Nat := 1
def small_3749297_left_count : Nat := 1
def small_3749297_left_encoded : String := "00000000"
theorem small_3749297_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3749297_left_root small_3749297_left_fuel small_3749297_left_count small_3749297_left_encoded = true := by
  decide +kernel
theorem small_3749297_left_covered : CoveredBy scale carrier boxes small_3749297_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3749297_left_root small_3749297_left_fuel small_3749297_left_count small_3749297_left_encoded small_3749297_left_checked

theorem cover_3749297 : CoveredBy scale carrier boxes root_3749297 := by
  apply coveredBy_split_literal root_3749297 small_3749297_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3749303 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3749297_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3749303
#print axioms cover_3749297

def root_3749235 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3749235_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3749235_left_fuel : Nat := 10
def small_3749235_left_count : Nat := 29
def small_3749235_left_encoded : String := "120700F608A91303120700F808A91305120701040000000208A912FD0000000A00000005000000050000000112073CF80000000108A91305120701040000000208A912FD12073D060500010800000005135D80FF0000000400000005000000030000000512073D04000000050000000200000000"
theorem small_3749235_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3749235_left_root small_3749235_left_fuel small_3749235_left_count small_3749235_left_encoded = true := by
  decide +kernel
theorem small_3749235_left_covered : CoveredBy scale carrier boxes small_3749235_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3749235_left_root small_3749235_left_fuel small_3749235_left_count small_3749235_left_encoded small_3749235_left_checked

theorem cover_3749235 : CoveredBy scale carrier boxes root_3749235 := by
  apply coveredBy_split_literal root_3749235 small_3749235_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3749297 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3749235_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3749297
#print axioms cover_3749235

def root_3749230 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3749230_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3749230_right_fuel : Nat := 1
def small_3749230_right_count : Nat := 1
def small_3749230_right_encoded : String := "00000004"
theorem small_3749230_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3749230_right_root small_3749230_right_fuel small_3749230_right_count small_3749230_right_encoded = true := by
  decide +kernel
theorem small_3749230_right_covered : CoveredBy scale carrier boxes small_3749230_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3749230_right_root small_3749230_right_fuel small_3749230_right_count small_3749230_right_encoded small_3749230_right_checked

theorem cover_3749230 : CoveredBy scale carrier boxes root_3749230 := by
  apply coveredBy_split_literal root_3749230 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.root_3749235 small_3749230_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265.cover_3749235
  · exact small_3749230_right_covered
#print axioms cover_3749230

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0265
