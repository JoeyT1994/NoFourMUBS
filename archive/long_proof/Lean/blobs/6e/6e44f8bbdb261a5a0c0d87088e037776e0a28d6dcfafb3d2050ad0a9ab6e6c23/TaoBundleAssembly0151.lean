import TaoBundleAssembly0150
import TaoBundleChunkBatch0586
import TaoBundleChunkBatch0587
import TaoBundleChunkBatch0588
import TaoBundleChunkBatch0589
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151
def root_6224177 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224177_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224177_right_fuel : Nat := 34
def small_6224177_right_count : Nat := 319
def small_6224177_right_encoded : String := "0F34D10000000000045489FB1386AD040CFD9BFD0F350D060CFD9C09000000090F350CFE000000040C9A8706000000090F878CFD000000030C9A86FE0000000900000009000000030F34D106000000030CFD9C09000000090F350CFE000000040C9A86FE0F878D0900000009000000040F87510900000004078000F800000008000000090000000213867104000000020CFD9BFD0F350D060CFD9C090F34D0FE00000009000000040F350CFE000000040C9A87060F8750FD0C9A86FE0F878D09078000F8128A7D030AD3577700000009000000090000000100000009000000040F87510900000004078000F8128A7D030AD3577710D13D00022A457B0000000913E1C504000000020B4D4406108010FD0B4D43FE00000009108011090000000408C000F80000000A000000090000000310804CFD000000030B4D43FE10804D090000000900000004108011090000000408C000F811FC25030BE879B71011AD000115233B0000000913F85904000000020BF3E58600000006100928FD0000000300000009000000000000000900000001000000090000000010D10100000000000000000900000001128A41030000000100000009000000030F878CFD000000030C9A86FE0F878D09078000F8128A7D030AD3577710D13D00022A457B0000000913E1C504000000020DE7CA06000000090E6014FD000000030000000900000000000000090000000100000009000000040F87510900000004078000F8128A7D030AD3577710D13D00022A457B13E201040DE7CA06000000090E6014FD00000003000000090000000213E1C504000000020DE7CA060E5FD8FD0B4D43FE10804D090000000900000004108011090000000408C000F811FC25030BE879B71011AD000115233B0000000913F85904000000020D412886000000090EFA4CFD000000030AA6A27E0000000900000009000000001011710000000000000000090000000100000009000000030E6014FD000000030B4D43FE10804D0908C000F811FC25030BE879B70000000900000009000000010000000900000004108011090000000408C000F811FC25030BE879B71011AD000115233B0000000913F85904000000020DAED87D0E9661060AA6A27E0000000910ED710900000004096000F811AABD03000000090000000100000005000000030E962506000000030AA6A27E10EDAD090000000900000004000000050000000010117100000000000000000900000001000000050000000010D1010000000000022A457B0000000913E1C504000000020DE7CA06000000090E6014FD000000030000000900000001128A4103000000010AD357770000000900000009000000030F34D106000000030CFD9C090F34D0FE00000009000000040F350CFE000000040C9A86FE0F878D09078000F8128A7D030AD3577710D13D00022A457B0000000913E1C504000000020AD3577D0000000A0000000A0000000010D10100000000000000000900000001128A41030000000100000009000000040F87510900000004078000F8128A7D030AD3577710D13D00022A457B13E201040AD3577D10D13D060B4D43FE000000080000000900000003000000080000000213E1C504000000020AD3577D10D13D060B4D43FE10804D0908C000F811FC25030BE879B71011AD000115233B000000080000000A0000000000000009000000010000000500000004000000050000000310D1010600000003000000050000000010D1010000000000000000050000000100000005"
theorem small_6224177_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6224177_right_root small_6224177_right_fuel small_6224177_right_count small_6224177_right_encoded = true := by
  decide +kernel
theorem small_6224177_right_covered : CoveredBy scale carrier boxes small_6224177_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6224177_right_root small_6224177_right_fuel small_6224177_right_count small_6224177_right_encoded small_6224177_right_checked

theorem cover_6224177 : CoveredBy scale carrier boxes root_6224177 := by
  apply coveredBy_split_literal root_6224177 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2343.root small_6224177_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2343.covered
  · exact small_6224177_right_covered
#print axioms cover_6224177

def root_6224172 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224172_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224172_right_fuel : Nat := 1
def small_6224172_right_count : Nat := 1
def small_6224172_right_encoded : String := "00000001"
theorem small_6224172_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6224172_right_root small_6224172_right_fuel small_6224172_right_count small_6224172_right_encoded = true := by
  decide +kernel
theorem small_6224172_right_covered : CoveredBy scale carrier boxes small_6224172_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6224172_right_root small_6224172_right_fuel small_6224172_right_count small_6224172_right_encoded small_6224172_right_checked

theorem cover_6224172 : CoveredBy scale carrier boxes root_6224172 := by
  apply coveredBy_split_literal root_6224172 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6224177 small_6224172_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6224177
  · exact small_6224172_right_covered
#print axioms cover_6224172

def root_6224171 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224171_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224171_right_fuel : Nat := 21
def small_6224171_right_count : Nat := 101
def small_6224171_right_encoded : String := "135D4503000000010CFD9BF70F350D00045489FB1386AD040CFD9BFD0F350D060CFD9C09000000090F350CFE000000040C9A87000F8750F7000000070000000000000009000000030F34D106000000030CFD9C09000000070F350CFE000000040C9A870000000007000000090000000213867104000000020CFD9BFD0F350D060CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87000F8750F70C9A87060F8750FD000000070000000300000007000000000F878CF7000000000C9A87060F8750FD0C9A86FE0000000700000009000000030F878CFD000000030C9A86FE000000070F87510900000004028000F813D7ED03022A457B0000000913E1C504000000020DE7CA000000000A000000090000000100000005000000030F34D106000000030CFD9C09000000070F350CFE000000040C9A8700000000070F878CF7000000000000000A000000000F34D10000000000045489FB0000000913867104000000020CFD9BFD0F350D060CFD9C09000000090F350CFE0000000400000009000000030F34D106000000030000000A"
theorem small_6224171_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6224171_right_root small_6224171_right_fuel small_6224171_right_count small_6224171_right_encoded = true := by
  decide +kernel
theorem small_6224171_right_covered : CoveredBy scale carrier boxes small_6224171_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6224171_right_root small_6224171_right_fuel small_6224171_right_count small_6224171_right_encoded small_6224171_right_checked

theorem cover_6224171 : CoveredBy scale carrier boxes root_6224171 := by
  apply coveredBy_split_literal root_6224171 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6224172 small_6224171_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6224172
  · exact small_6224171_right_covered
#print axioms cover_6224171

def root_6224165 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224165_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224165_left_fuel : Nat := 1
def small_6224165_left_count : Nat := 1
def small_6224165_left_encoded : String := "00000004"
theorem small_6224165_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6224165_left_root small_6224165_left_fuel small_6224165_left_count small_6224165_left_encoded = true := by
  decide +kernel
theorem small_6224165_left_covered : CoveredBy scale carrier boxes small_6224165_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6224165_left_root small_6224165_left_fuel small_6224165_left_count small_6224165_left_encoded small_6224165_left_checked

theorem cover_6224165 : CoveredBy scale carrier boxes root_6224165 := by
  apply coveredBy_split_literal root_6224165 small_6224165_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6224171 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6224165_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6224171
#print axioms cover_6224165

def root_6224129 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224129_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224129_left_fuel : Nat := 6
def small_6224129_left_count : Nat := 15
def small_6224129_left_encoded : String := "120700FE050000F8135D81030CFD9BF70F350D0000000007000000000F34D100000000000000000900000001135D4503000000010000000900000004"
theorem small_6224129_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6224129_left_root small_6224129_left_fuel small_6224129_left_count small_6224129_left_encoded = true := by
  decide +kernel
theorem small_6224129_left_covered : CoveredBy scale carrier boxes small_6224129_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6224129_left_root small_6224129_left_fuel small_6224129_left_count small_6224129_left_encoded small_6224129_left_checked

theorem cover_6224129 : CoveredBy scale carrier boxes root_6224129 := by
  apply coveredBy_split_literal root_6224129 small_6224129_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6224165 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6224129_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6224165
#print axioms cover_6224129

def root_6224124 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224124_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224124_right_fuel : Nat := 1
def small_6224124_right_count : Nat := 1
def small_6224124_right_encoded : String := "00000003"
theorem small_6224124_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6224124_right_root small_6224124_right_fuel small_6224124_right_count small_6224124_right_encoded = true := by
  decide +kernel
theorem small_6224124_right_covered : CoveredBy scale carrier boxes small_6224124_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6224124_right_root small_6224124_right_fuel small_6224124_right_count small_6224124_right_encoded small_6224124_right_checked

theorem cover_6224124 : CoveredBy scale carrier boxes root_6224124 := by
  apply coveredBy_split_literal root_6224124 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6224129 small_6224124_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6224129
  · exact small_6224124_right_covered
#print axioms cover_6224124

def root_6224123 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224123_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224123_right_fuel : Nat := 23
def small_6224123_right_count : Nat := 191
def small_6224123_right_encoded : String := "120701060000000308A91309120700FE050000F8135D81030CFD9BF7000000070000000A000000010000000A0000000412073CFE00000004050000F8135D81030CFD9BF70F350D00045489FB1386AD04045489FD1386AD060CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87000F8750F700000007000000000F878CF7000000000C9A86FE000000080F87510900000004078000F800000008000000080000000313867106000000030CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87000F8750F70C9A86FE000000070F87510900000004078000F800000006000000060000000000000008000000021386710400000002045489FD1386AD060CFD9C090000000A0F350CFE000000040C9A87000F8750F70C9A86FE000000070F87510900000004078000F8128A7D03022A457B000000070000000A000000010000000A000000000F878CF7000000000C9A86FE0F878D090000000A000000040F87510900000004078000F8128A7D03022A457B13E20104067ECE7D0000000800000008000000020000000A00000001000000050000000313867106000000030CFD9C090000000A0F350CFE000000040C9A87000F8750F70C9A86FE000000070F87510900000004078000F8128A7D030000000A0000000100000005000000000F878CF7000000000000000A000000000F34D10000000000045489FB1386AD04045489FD1386AD060CFD9C0900000009000000080000000300000008000000021386710400000002045489FD1386AD060CFD9C090000000A0F350CFE000000040C9A86FE0F878D090000000A00000004000000050000000313867106000000030000000A00000001135D4503000000010CFD9BF70F350D00045489FB1386AD04045489FD1386AD060CFD9C09000000070F350CFE000000040C9A870000000007000000090000000313867106000000030CFD9C09000000070F350CFE000000040C9A870000000007000000050000000213867104000000020000000A000000000F34D10000000000045489FB000000090000000A"
theorem small_6224123_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6224123_right_root small_6224123_right_fuel small_6224123_right_count small_6224123_right_encoded = true := by
  decide +kernel
theorem small_6224123_right_covered : CoveredBy scale carrier boxes small_6224123_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6224123_right_root small_6224123_right_fuel small_6224123_right_count small_6224123_right_encoded small_6224123_right_checked

theorem cover_6224123 : CoveredBy scale carrier boxes root_6224123 := by
  apply coveredBy_split_literal root_6224123 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6224124 small_6224123_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6224124
  · exact small_6224123_right_covered
#print axioms cover_6224123

def root_6224117 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224117_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224117_left_fuel : Nat := 1
def small_6224117_left_count : Nat := 1
def small_6224117_left_encoded : String := "00000002"
theorem small_6224117_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6224117_left_root small_6224117_left_fuel small_6224117_left_count small_6224117_left_encoded = true := by
  decide +kernel
theorem small_6224117_left_covered : CoveredBy scale carrier boxes small_6224117_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6224117_left_root small_6224117_left_fuel small_6224117_left_count small_6224117_left_encoded small_6224117_left_checked

theorem cover_6224117 : CoveredBy scale carrier boxes root_6224117 := by
  apply coveredBy_split_literal root_6224117 small_6224117_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6224123 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6224117_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6224123
#print axioms cover_6224117

def root_6223717 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6223717_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6223717_left_fuel : Nat := 20
def small_6223717_left_count : Nat := 183
def small_6223717_left_encoded : String := "12073D0408A912FD12073D0608A91309120700FE050000F800000009000000090000000412073CFE00000004050000F8135D81030CFD9BF70F350D000CFD9BFB0F350D040CFD9BFD0F350D060CFD9C09000000090F350CFE000000040C9A87000F8750F7000000090000000000000009000000030F34D106000000030CFD9C09000000090F350CFE000000040C9A87000F8750F7000000080000000000000008000000020F34D104000000020CFD9BFD0F350D060CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87000F8750F70C9A87060F8750FD000000070000000300000007000000000F878CF7000000000C9A8706000000090F878CFD0000000300000009000000030F34D106000000030CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87000F8750F700000007000000000F878CF7000000000C9A86FE0000000800000009000000000F34D100000000000CFD9BFB000000090F34D104000000020CFD9BFD0F350D0600000009000000030000000900000001135D4503000000010CFD9BF70F350D000CFD9BFB000000090F34D104000000020CFD9BFD0F350D06000000090000000300000009000000000F34D100000000000000000900000003120701060000000308A91309120700FE050000F8135D81030CFD9BF70F350D0000000007000000000000000800000001135D4503000000010CFD9BF700000007000000090000000412073CFE00000004050000F8135D81030CFD9BF70F350D000CFD9BFB000000080F34D10400000002045489FD1386AD060CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87000F8750F700000007000000000000000800000003138671060000000300000008000000000F34D100000000000000000800000001135D4503000000010CFD9BF70F350D000CFD9BFB0F350D04045489FD0000000900000008000000020F34D1040000000200000009000000000F34D100000000000000000800000002"
theorem small_6223717_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6223717_left_root small_6223717_left_fuel small_6223717_left_count small_6223717_left_encoded = true := by
  decide +kernel
theorem small_6223717_left_covered : CoveredBy scale carrier boxes small_6223717_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6223717_left_root small_6223717_left_fuel small_6223717_left_count small_6223717_left_encoded small_6223717_left_checked

theorem cover_6223717 : CoveredBy scale carrier boxes root_6223717 := by
  apply coveredBy_split_literal root_6223717 small_6223717_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6224117 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6223717_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6224117
#print axioms cover_6223717

def root_6223712 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6223712_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6223712_right_fuel : Nat := 1
def small_6223712_right_count : Nat := 1
def small_6223712_right_encoded : String := "00000000"
theorem small_6223712_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6223712_right_root small_6223712_right_fuel small_6223712_right_count small_6223712_right_encoded = true := by
  decide +kernel
theorem small_6223712_right_covered : CoveredBy scale carrier boxes small_6223712_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6223712_right_root small_6223712_right_fuel small_6223712_right_count small_6223712_right_encoded small_6223712_right_checked

theorem cover_6223712 : CoveredBy scale carrier boxes root_6223712 := by
  apply coveredBy_split_literal root_6223712 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6223717 small_6223712_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6223717
  · exact small_6223712_right_covered
#print axioms cover_6223712

def root_6223711 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6223711_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6223711_right_fuel : Nat := 21
def small_6223711_right_count : Nat := 113
def small_6223711_right_encoded : String := "120701000000000008A912FB12073D0408A912FD12073D0608A913090000000912073CFE00000004050000F8135D8103045489F70000000900000009000000010000000900000003120701060000000308A91309000000090000000800000002120701040000000208A912FD12073D0608A913090000000912073CFE00000004050000F8135D8103045489F71386AD00045489FB1386AD040CFD9BFD0F350D060000000900000003000000090000000213867104000000020CFD9BFD0F350D060CFD9C09000000090F350CFE000000040C9A8706000000090F878CFD000000030C9A86FE0000000900000009000000030F34D106000000030CFD9C09000000090F350CFE000000040C9A86FE0000000900000005000000001386710000000000045489FB0000000913867104000000020CFD9BFD0F350D060CFD9C09000000090F350CFE0000000400000009000000030000000900000001135D450300000001045489F7000000090000000900000003120701060000000308A913090000000912073CFE00000004050000F8135D8103045489F71386AD00045489FB000000081386710400000002045489FD0000000A0000000800000000000000080000000100000005"
theorem small_6223711_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6223711_right_root small_6223711_right_fuel small_6223711_right_count small_6223711_right_encoded = true := by
  decide +kernel
theorem small_6223711_right_covered : CoveredBy scale carrier boxes small_6223711_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6223711_right_root small_6223711_right_fuel small_6223711_right_count small_6223711_right_encoded small_6223711_right_checked

theorem cover_6223711 : CoveredBy scale carrier boxes root_6223711 := by
  apply coveredBy_split_literal root_6223711 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6223712 small_6223711_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6223712
  · exact small_6223711_right_covered
#print axioms cover_6223711

def root_6223706 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6223706_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6223706_right_fuel : Nat := 1
def small_6223706_right_count : Nat := 1
def small_6223706_right_encoded : String := "00000004"
theorem small_6223706_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6223706_right_root small_6223706_right_fuel small_6223706_right_count small_6223706_right_encoded = true := by
  decide +kernel
theorem small_6223706_right_covered : CoveredBy scale carrier boxes small_6223706_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6223706_right_root small_6223706_right_fuel small_6223706_right_count small_6223706_right_encoded small_6223706_right_checked

theorem cover_6223706 : CoveredBy scale carrier boxes root_6223706 := by
  apply coveredBy_split_literal root_6223706 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6223711 small_6223706_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6223711
  · exact small_6223706_right_covered
#print axioms cover_6223706

def root_6234069 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6234069_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6234069_left_fuel : Nat := 23
def small_6234069_left_count : Nat := 315
def small_6234069_left_encoded : String := "13E201040DE7CA000E5FD8F70DE7CA060E5FD8FD08C000F811FC250308C000FE11FC2509033F67BB13BC31040D4128800EFA10F700000007000000000EFA4CF7000000000D412886000000090EFA4CFD00000003096000F800000006000000060000000213BBF504000000020D4128800EFA10F70D4128860EFA10FD000000070000000300000007000000000EFA4CF7000000000D4128860EFA10FD0000000A000000030EFA4CFD00000003096000F811AABD030000000A0000000111AA810300000001096000FE0000000711AA81090000000402B4D69B0000000613D0D104000000020D94794000000006000000090000000411FBE90900000004033F67BB0000000A13BBF504000000020D4128800EFA10F70000000A000000000000000A0000000111FBE9030000000108C000FE11FC2509033F67BB0000000713BBF504000000020D412880000000070EFA4CF7000000000D41288600000009000000070000000411FBE90900000004033F67BB13BC31040D4128800EFA10F70D4128860EFA10FD000000070000000300000006000000000EFA4CF700000000000000090000000213BBF504000000020D4128800EFA10F70D4128860EFA10FD082000F80000000A12465D030000000100000007000000030EFA4CFD00000003082000F812469903000000060000000112465D030000000100000007000000000EFA4CF7000000000D4128860EFA10FD082000F80000000A00000009000000030EFA4CFD00000003082000F812469903000000060000000100000005000000030E6014FD0000000308C000F811FC250308C000FE11FC2509033F67BB13BC3104000000060000000213BBF504000000020DAED87D0E9661060D412880000000070EFA4CF700000000096000F811AABD03000000060000000111AA810300000001096000FE0000000700000006000000030E96250600000003000000060000000411FBE90900000004000000060000000111FBE9030000000108C000FE11FC2509033F67BB0000000713BBF504000000020DAED87D000000070E96250600000003000000070000000411FBE90900000004033F67BB0000000613BBF504000000020DAED87D0E9661060D41288000000006000000050000000300000006000000000E6014F7000000000DE7CA060E5FD8FD08C000F811FC250308C000FE11FC2509033F67BB13BC3104000000090000000213BBF504000000020DAED8770E9661000D4128860000000A0EFA4CFD00000003096000F80000000A00000009000000000E96250000000000000000090000000411FBE90900000004033F67BB0000000A13BBF504000000020DAED8770000000A0E962500000000000000000A0000000111FBE9030000000108C000FE11FC2509000000090000000411FBE90900000004033F67BB0000000913BBF504000000020DAED8770E9661000D41288600000009000000050000000000000009000000030E6014FD0000000308C000F811FC250308C000FE11FC2509033F67BB13BC31040DAED87700000009000000060000000213BBF504000000020DAED8770E9661000DAED87D0E966106096000F811AABD03000000060000000100000009000000030E9625060000000300000006000000000E962500000000000DAED87D0E9661060000000900000003000000090000000411FBE90900000004000000060000000111FBE9030000000108C000FE11FC250900000009000000040000000500000002"
theorem small_6234069_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6234069_left_root small_6234069_left_fuel small_6234069_left_count small_6234069_left_encoded = true := by
  decide +kernel
theorem small_6234069_left_covered : CoveredBy scale carrier boxes small_6234069_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6234069_left_root small_6234069_left_fuel small_6234069_left_count small_6234069_left_encoded small_6234069_left_checked

theorem cover_6234069 : CoveredBy scale carrier boxes root_6234069 := by
  apply coveredBy_split_literal root_6234069 small_6234069_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2346.root coord2 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_6234069_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2346.covered
#print axioms cover_6234069

def root_6234064 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6234064_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6234064_right_fuel : Nat := 1
def small_6234064_right_count : Nat := 1
def small_6234064_right_encoded : String := "00000004"
theorem small_6234064_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6234064_right_root small_6234064_right_fuel small_6234064_right_count small_6234064_right_encoded = true := by
  decide +kernel
theorem small_6234064_right_covered : CoveredBy scale carrier boxes small_6234064_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6234064_right_root small_6234064_right_fuel small_6234064_right_count small_6234064_right_encoded small_6234064_right_checked

theorem cover_6234064 : CoveredBy scale carrier boxes root_6234064 := by
  apply coveredBy_split_literal root_6234064 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6234069 small_6234064_right_root coord4 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6234069
  · exact small_6234064_right_covered
#print axioms cover_6234064

def root_6234063 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6234063_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6234063_right_fuel : Nat := 19
def small_6234063_right_count : Nat := 111
def small_6234063_right_encoded : String := "128A410900000004022A457B13E201040DE7CA000E5FD8F70DE7CA060E5FD8FD08C000F811FC2503000000060000000111FBE90300000001064000FE12FFAD09033F67BB0000000613BBF504000000020D41288000000006000000050000000400000005000000030E6014FD0000000300000006000000000E6014F7000000000DE7CA060E5FD8FD08C000F80000000A0000000500000003000000050000000213E1C504000000020DE7CA000E5FD8F70DE7CA060E5FD8FD08C000F811FC2503064000FE12FFAD090115233B13F895040D4128800EFA10F70000000A000000000000000A0000000213F85904000000020D4128800EFA10F70D4128860000000A0EFA4CFD00000003096000F80000000600000005000000000EFA4CF7000000000D4128860000000A000000050000000412FF7109000000040115233B00000006000000050000000111FBE90300000001064000FE12FFAD090115233B13F895040D4128800EFA10F70D4128860EFA10FD082000F80000000A000000050000000300000005000000000000000500000002000000050000000400000005000000030E6014FD0000000300000005000000000E6014F70000000000000005"
theorem small_6234063_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6234063_right_root small_6234063_right_fuel small_6234063_right_count small_6234063_right_encoded = true := by
  decide +kernel
theorem small_6234063_right_covered : CoveredBy scale carrier boxes small_6234063_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6234063_right_root small_6234063_right_fuel small_6234063_right_count small_6234063_right_encoded small_6234063_right_checked

theorem cover_6234063 : CoveredBy scale carrier boxes root_6234063 := by
  apply coveredBy_split_literal root_6234063 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6234064 small_6234063_right_root coord4 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6234064
  · exact small_6234063_right_covered
#print axioms cover_6234063

def root_6234058 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6234058_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6234058_right_fuel : Nat := 1
def small_6234058_right_count : Nat := 1
def small_6234058_right_encoded : String := "00000001"
theorem small_6234058_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6234058_right_root small_6234058_right_fuel small_6234058_right_count small_6234058_right_encoded = true := by
  decide +kernel
theorem small_6234058_right_covered : CoveredBy scale carrier boxes small_6234058_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6234058_right_root small_6234058_right_fuel small_6234058_right_count small_6234058_right_encoded small_6234058_right_checked

theorem cover_6234058 : CoveredBy scale carrier boxes root_6234058 := by
  apply coveredBy_split_literal root_6234058 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6234063 small_6234058_right_root coord1 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6234063
  · exact small_6234058_right_covered
#print axioms cover_6234058

def root_6234057 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6234057_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6234057_right_fuel : Nat := 23
def small_6234057_right_count : Nat := 127
def small_6234057_right_encoded : String := "128A410300000001078000FE128A7D09022A457B13E201040DE7CA000E5FD8F70DE7CA060E5FD8FD064000F812FFAD0308C000FE11FC2509000000070000000411FBE90900000004033F67BB0000000913BBF504000000020D4128800EFA10F70D412886000000090000000500000000000000050000000100000009000000030E6014FD00000003064000F812FFAD0308C000FE00000007000000050000000100000005000000000E6014F7000000000DE7CA0600000009000000050000000213E1C504000000020DE7CA000E5FD8F70DE7CA060E5FD8FD064000F812FFAD0308C000FE11FC25090115233B13F895040D412880000000070EFA4CF700000000000000090000000213F85904000000020D4128800EFA10F700000007000000000EFA4CF7000000000D4128860EFA10FD06E000F812C82103096000FE0000000700000005000000010000000500000003000000050000000411FBE909000000040115233B13F895040D4128800EFA10F70D4128860EFA10FD06E000F812C82103082000FE000000070000000500000001000000050000000300000005000000000000000500000002000000050000000112FF71030000000108C000FE11FC25090115233B00000007000000050000000400000005000000030E6014FD0000000300000005000000000E6014F700000000000000050000000400000005"
theorem small_6234057_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6234057_right_root small_6234057_right_fuel small_6234057_right_count small_6234057_right_encoded = true := by
  decide +kernel
theorem small_6234057_right_covered : CoveredBy scale carrier boxes small_6234057_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6234057_right_root small_6234057_right_fuel small_6234057_right_count small_6234057_right_encoded small_6234057_right_checked

theorem cover_6234057 : CoveredBy scale carrier boxes root_6234057 := by
  apply coveredBy_split_literal root_6234057 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6234058 small_6234057_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6234058
  · exact small_6234057_right_covered
#print axioms cover_6234057

def root_6234051 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6234051_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6234051_left_fuel : Nat := 1
def small_6234051_left_count : Nat := 1
def small_6234051_left_encoded : String := "00000003"
theorem small_6234051_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6234051_left_root small_6234051_left_fuel small_6234051_left_count small_6234051_left_encoded = true := by
  decide +kernel
theorem small_6234051_left_covered : CoveredBy scale carrier boxes small_6234051_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6234051_left_root small_6234051_left_fuel small_6234051_left_count small_6234051_left_encoded small_6234051_left_checked

theorem cover_6234051 : CoveredBy scale carrier boxes root_6234051 := by
  apply coveredBy_split_literal root_6234051 small_6234051_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6234057 coord3 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_6234051_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6234057
#print axioms cover_6234051

def root_6232453 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6232453 : CoveredBy scale carrier boxes root_6232453 := by
  apply coveredBy_split_literal root_6232453 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2345.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6234051 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2345.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6234051
#print axioms cover_6232453

def root_6232447 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6232447_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6232447_left_fuel : Nat := 1
def small_6232447_left_count : Nat := 1
def small_6232447_left_encoded : String := "00000000"
theorem small_6232447_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6232447_left_root small_6232447_left_fuel small_6232447_left_count small_6232447_left_encoded = true := by
  decide +kernel
theorem small_6232447_left_covered : CoveredBy scale carrier boxes small_6232447_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6232447_left_root small_6232447_left_fuel small_6232447_left_count small_6232447_left_encoded small_6232447_left_checked

theorem cover_6232447 : CoveredBy scale carrier boxes root_6232447 := by
  apply coveredBy_split_literal root_6232447 small_6232447_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6232453 coord0 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_6232447_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6232453
#print axioms cover_6232447

def root_6229943 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6229943 : CoveredBy scale carrier boxes root_6229943 := by
  apply coveredBy_split_literal root_6229943 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2344.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6232447 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2344.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6232447
#print axioms cover_6229943

def root_6229938 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6229938_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6229938_right_fuel : Nat := 1
def small_6229938_right_count : Nat := 1
def small_6229938_right_encoded : String := "00000003"
theorem small_6229938_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6229938_right_root small_6229938_right_fuel small_6229938_right_count small_6229938_right_encoded = true := by
  decide +kernel
theorem small_6229938_right_covered : CoveredBy scale carrier boxes small_6229938_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6229938_right_root small_6229938_right_fuel small_6229938_right_count small_6229938_right_encoded small_6229938_right_checked

theorem cover_6229938 : CoveredBy scale carrier boxes root_6229938 := by
  apply coveredBy_split_literal root_6229938 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6229943 small_6229938_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6229943
  · exact small_6229938_right_covered
#print axioms cover_6229938

def root_6229937 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6229937_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6229937_right_fuel : Nat := 33
def small_6229937_right_count : Nat := 257
def small_6229937_right_encoded : String := "0F34D106000000030C9A87000F8750F7078000F8128A7D03078000FE128A7D09022A457B13E201040AD3577D10D13D060B4D44000000000710804CF70000000008C000F811FC2503000000060000000111FBE9030000000108C000FE00000007000000060000000310D1010600000003000000060000000213E1C504000000020AD3577D10D13D060B4D4400108010F708C000F811FC250308C000FE0000000711FBE90900000004000000060000000111FBE90300000001000000070000000010804CF70000000008C000F811FC250308C000FE11FC25090115233B0000000713F85904000000020BE879BD000000071011710600000003000000060000000411FBE90900000004000000060000000111FBE9030000000108C000FE11FC25090000000700000004000000050000000310D10106000000030B4D4400108010F7000000070000000010804CF70000000008C000F8000000060000000500000004128A410900000004022A457B0000000613E1C504000000020AD3577D10D13D060B4D440000000006000000050000000310D10106000000030000000500000001128A410300000001078000FE128A7D09022A457B13E201040AD3577D0000000710D1010600000003000000070000000213E1C504000000020AD3577D10D13D060B4D440000000007000000050000000310D1010600000003000000050000000400000005000000000F878CF700000000078000F8128A7D03078000FE128A7D09022A457B13E201040AD3577D10D13D060DE7CA000E5FD8F708C000F811FC2503000000060000000111FBE9030000000108C000FE11FC2509033F67BB0000000613BBF504000000020BE879BD00000007000000050000000400000005000000000E6014F70000000008C000F811FC250308C000FE11FC250900000006000000040000000500000001000000050000000310D1010600000003000000050000000213E1C504000000020AD3577D10D13D060DE7CA000E5FD8F708C000F811FC250308C000FE11FC25090115233B13F895040BE879BD1011AD060D412880000000060EFA4CF7000000000000000600000003000000060000000213F85904000000020BE879BD1011AD060D4128800EFA10F7096000F811AABD03096000FE11AABD090000000700000004000000060000000111AA810300000001096000FE0000000700000005000000000EFA4CF700000000096000F811AABD03096000FE11AABD09008A921B0000000613FDF904000000020C730ADD0FA745060D9479400000000600000005000000030000000600000004000000050000000100000005000000031011710600000003000000050000000400000005000000010000000500000000000000050000000310D10106000000030000000500000004000000050000000100000005"
theorem small_6229937_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6229937_right_root small_6229937_right_fuel small_6229937_right_count small_6229937_right_encoded = true := by
  decide +kernel
theorem small_6229937_right_covered : CoveredBy scale carrier boxes small_6229937_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6229937_right_root small_6229937_right_fuel small_6229937_right_count small_6229937_right_encoded small_6229937_right_checked

theorem cover_6229937 : CoveredBy scale carrier boxes root_6229937 := by
  apply coveredBy_split_literal root_6229937 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6229938 small_6229937_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6229938
  · exact small_6229937_right_covered
#print axioms cover_6229937

def root_6229931 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6229931_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6229931_left_fuel : Nat := 1
def small_6229931_left_count : Nat := 1
def small_6229931_left_encoded : String := "00000002"
theorem small_6229931_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6229931_left_root small_6229931_left_fuel small_6229931_left_count small_6229931_left_encoded = true := by
  decide +kernel
theorem small_6229931_left_covered : CoveredBy scale carrier boxes small_6229931_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6229931_left_root small_6229931_left_fuel small_6229931_left_count small_6229931_left_encoded small_6229931_left_checked

theorem cover_6229931 : CoveredBy scale carrier boxes root_6229931 := by
  apply coveredBy_split_literal root_6229931 small_6229931_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6229937 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6229931_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6229937
#print axioms cover_6229931

def root_6229007 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6229007_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6229007_left_fuel : Nat := 25
def small_6229007_left_count : Nat := 439
def small_6229007_left_encoded : String := "1386AD040CFD9BFD0F350D060C9A87000F8750F70C9A87060F8750FD078000F8128A7D03078000FE128A7D09067ECE7B12EA95040B4D4400000000050000000A0000000212EA5904000000020B4D44000000000510804CF7000000000B4D44060000000510804CFD0000000308C000F80000000511FBE903000000010000000700000004128A410900000004067ECE7B0000000A12EA5904000000020B4D44000000000A0000000A00000001128A410300000001078000FE128A7D09067ECE7B0000000712EA5904000000020B4D44000000000710804CF7000000000000000700000004128A410900000004067ECE7B12EA95040B4D4400108010F70B4D440600000007000000060000000010804CF700000000000000090000000212EA5904000000020B4D4400108010F70B4D4406108010FD064000F80000000A0000000700000003000000070000000010804CF7000000000B4D4406108010FD0000000A0000000310804CFD00000003064000F812FFAD03064000FE12FFAD090569AC3B000000061340D504000000020000000700000004000000060000000112FF710300000001064000FE0000000700000005000000030F878CFD00000003078000F8128A7D03078000FE128A7D09067ECE7B12EA95040B4D44000000000610804CF700000000000000060000000212EA5904000000020B4D4400108010F7000000070000000010804CF7000000000DE7CA060E5FD8FD08C000F811FC250308C000FE00000005000000060000000111FBE9030000000100000007000000030E6014FD0000000308C000F8000000060000000600000004128A410900000004067ECE7B0000000612EA5904000000020000000600000001128A410300000001078000FE128A7D09067ECE7B0000000712EA5904000000020000000700000004128A410900000004067ECE7B0000000612EA5904000000020B4D4400108010F70DE7CA060E5FD8FD0000000600000003000000060000000010804CF7000000000DE7CA060E5FD8FD064000F800000006000000050000000300000005000000000F878CF7000000000C9A87060F8750FD078000F8128A7D03078000FE128A7D09067ECE7B12EA95040DE7CA000E5FD8F70000000A00000000000000090000000212EA5904000000020DE7CA000E5FD8F70B4D44060000000A10804CFD0000000308C000F80000000A11FBE9030000000100000009000000000E6014F7000000000B4D44060000000910804CFD0000000308C000F80000000A0000000900000004128A410900000004067ECE7B0000000A12EA5904000000020000000A00000001128A410300000001078000FE128A7D09067ECE7B0000000912EA5904000000020000000900000004128A410900000004067ECE7B0000000912EA5904000000020DE7CA000E5FD8F70B4D44060000000910804CFD00000003064000F812FFAD030000000900000001000000050000000000000009000000030F878CFD00000003078000F8128A7D03078000FE128A7D09067ECE7B12EA95040DE7CA000E5FD8F70DE7CA060000000900000006000000000E6014F700000000000000090000000212EA5904000000020DE7CA000E5FD8F70DE7CA060E5FD8FD08C000F811FC250308C000FE11FC25090569AC3B000000061340D504000000020D412880000000060000000900000004000000060000000111FBE9030000000108C000FE0000000700000009000000030E6014FD0000000308C000F80000000600000006000000000E6014F7000000000DE7CA060E5FD8FD08C000F811FC250308C000FE00000009000000060000000100000009000000030E6014FD0000000308C000F8000000060000000900000004128A410900000004067ECE7B0000000612EA5904000000020DE7CA00000000060E6014F7000000000000000600000001128A410300000001078000FE128A7D09067ECE7B0000000912EA5904000000020DE7CA000E5FD8F70DE7CA06000000090E6014FD0000000300000009000000000000000900000004128A410900000004067ECE7B12EA9504000000060000000212EA59040000000200000005000000030F34D106000000030C9A87000F8750F7078000F8128A7D03078000FE128A7D09067ECE7B0000000612EA5904000000020AD3577D0000000600000006000000040000000600000001128A410300000001078000FE128A7D09067ECE7B0000000612EA5904000000020AD3577D0000000710D1010600000003000000060000000400000006000000000F878CF700000000078000F8128A7D03078000FE128A7D09067ECE7B0000000612EA5904000000020AD3577D0000000600000006000000040000000600000001128A410300000001078000FE128A7D09067ECE7B0000000912EA59040000000200000005000000040000000500000002"
theorem small_6229007_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6229007_left_root small_6229007_left_fuel small_6229007_left_count small_6229007_left_encoded = true := by
  decide +kernel
theorem small_6229007_left_covered : CoveredBy scale carrier boxes small_6229007_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6229007_left_root small_6229007_left_fuel small_6229007_left_count small_6229007_left_encoded small_6229007_left_checked

theorem cover_6229007 : CoveredBy scale carrier boxes root_6229007 := by
  apply coveredBy_split_literal root_6229007 small_6229007_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6229931 coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_6229007_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6229931
#print axioms cover_6229007

def root_6229002 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6229002_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6229002_right_fuel : Nat := 1
def small_6229002_right_count : Nat := 1
def small_6229002_right_encoded : String := "00000000"
theorem small_6229002_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6229002_right_root small_6229002_right_fuel small_6229002_right_count small_6229002_right_encoded = true := by
  decide +kernel
theorem small_6229002_right_covered : CoveredBy scale carrier boxes small_6229002_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6229002_right_root small_6229002_right_fuel small_6229002_right_count small_6229002_right_encoded small_6229002_right_checked

theorem cover_6229002 : CoveredBy scale carrier boxes root_6229002 := by
  apply coveredBy_split_literal root_6229002 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6229007 small_6229002_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6229007
  · exact small_6229002_right_covered
#print axioms cover_6229002

def root_6229001 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6229001_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6229001_right_fuel : Nat := 37
def small_6229001_right_count : Nat := 311
def small_6229001_right_encoded : String := "0F34D10000000000045489FB1386AD040CFD9BFD0F350D060C9A87060F8750FD078000F8128A7D03078000FE128A7D090AD35777000000090000000900000004128A4109000000040AD357770000000A10D10100000000000000000900000001128A41030000000100000009000000030F878CFD00000003078000F8128A7D03078000FE128A7D090AD3577710D13D00067ECE7B0000000912EA59040000000200000009000000000000000900000004128A4109000000040AD3577710D13D00067ECE7B0000000612EA590400000002000000050000000010D10100000000000000000500000001128A410300000001078000FE0000000900000005000000030F34D10600000003078000F8128A7D03078000FE000000080000000500000001000000050000000213867104000000020CFD9BFD0F350D060C9A87060F8750FD078000F8128A7D03078000FE128A7D090AD3577710D13D00022A457B13E201040B4D44060000000A10804CFD0000000308C000F80000000A000000090000000213E1C504000000020B4D4406108010FD08C000F80000000A11FBE9030000000108C000FE11FC2509000000090000000411FBE909000000040000000A0000000310804CFD0000000308C000F811FC250308C000FE11FC25090BE879B70000000A1011710000000000000000090000000411FBE909000000040000000A0000000111FBE9030000000108C000FE11FC25090000000900000004000000050000000010D1010000000000022A457B0000000913E1C504000000020B4D4406108010FD0000000A0000000310804CFD0000000308C000F811FC250308C000FE0000000900000005000000010000000500000004128A4109000000040AD3577710D13D00022A457B0000000A13E1C504000000020B4D44060000000A000000050000000010D1010000000000022A457B0000000A0000000500000001128A410300000001078000FE128A7D090AD3577710D13D00022A457B0000000913E1C504000000020B4D440600000009000000050000000010D1010000000000000000090000000400000005000000030F878CFD00000003078000F8128A7D03078000FE128A7D090AD3577710D13D00022A457B13E201040DE7CA060E5FD8FD08C000F811FC250308C000FE11FC2509000000090000000411FBE909000000040BE879B70000000A000000090000000100000009000000030E6014FD0000000308C000F811FC250308C000FE11FC250900000009000000040000000500000001000000050000000213E1C504000000020DE7CA060E5FD8FD08C000F811FC250308C000FE11FC25090BE879B71011AD000115233B13F895040D412886000000090EFA4CFD00000003000000090000000213F85904000000020D4128860EFA10FD096000F811AABD030000000A0000000111AA810300000001096000FE0000000900000005000000030EFA4CFD00000003096000F811AABD03096000FE11AABD090C730AD70FA74500008A921B0000000913FDF904000000020D94794600000007000000050000000000000009000000040000000500000001000000050000000010117100000000000115233B0000000913F8590400000002000000050000000400000005000000010000000500000003000000050000000010D10100000000000000000500000004000000050000000100000005000000030F34D1060000000300000005"
theorem small_6229001_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6229001_right_root small_6229001_right_fuel small_6229001_right_count small_6229001_right_encoded = true := by
  decide +kernel
theorem small_6229001_right_covered : CoveredBy scale carrier boxes small_6229001_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6229001_right_root small_6229001_right_fuel small_6229001_right_count small_6229001_right_encoded small_6229001_right_checked

theorem cover_6229001 : CoveredBy scale carrier boxes root_6229001 := by
  apply coveredBy_split_literal root_6229001 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6229002 small_6229001_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6229002
  · exact small_6229001_right_covered
#print axioms cover_6229001

def root_6228996 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6228996_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6228996_right_fuel : Nat := 1
def small_6228996_right_count : Nat := 1
def small_6228996_right_encoded : String := "00000004"
theorem small_6228996_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6228996_right_root small_6228996_right_fuel small_6228996_right_count small_6228996_right_encoded = true := by
  decide +kernel
theorem small_6228996_right_covered : CoveredBy scale carrier boxes small_6228996_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6228996_right_root small_6228996_right_fuel small_6228996_right_count small_6228996_right_encoded small_6228996_right_checked

theorem cover_6228996 : CoveredBy scale carrier boxes root_6228996 := by
  apply coveredBy_split_literal root_6228996 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6229001 small_6228996_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6229001
  · exact small_6228996_right_covered
#print axioms cover_6228996

def root_6228995 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6228995_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6228995_right_fuel : Nat := 23
def small_6228995_right_count : Nat := 239
def small_6228995_right_encoded : String := "135D4509000000040CFD9BF70F350D00045489FB1386AD040CFD9BFD0F350D060C9A87000F8750F70C9A87060F8750FD078000F80000000A128A410300000001028000FE13D7ED09067ECE7B0000000612EA5904000000020B4D4400108010F70B4D44060000000A000000060000000010804CF7000000000B4D44060000000A000000050000000400000006000000030F878CFD0000000300000006000000000F878CF7000000000C9A87060F8750FD078000F80000000A128A410300000001028000FE13D7ED09067ECE7B12EA9504000000060000000212EA590400000002000000050000000400000005000000030F878CFD00000003078000F80000000600000005000000030F34D10600000003000000060000000213867104000000020CFD9BFD0F350D060C9A87000F8750F70C9A87060F8750FD078000F8128A7D03028000FE13D7ED09022A457B0000000A13E1C504000000020B4D4400108010F70B4D44060000000810804CFD000000030000000A000000000000000A0000000413D7B10900000004022A457B0000000613E1C504000000020000000A00000001128A410300000001028000FE13D7ED09022A457B13E201040B4D4400108010F70B4D4406108010FD0000000A0000000310804CFD00000003064000F800000006000000050000000010804CF7000000000B4D44060000000A000000050000000213E1C504000000020B4D4400108010F70B4D44060000000810804CFD00000003000000080000000010804CF7000000000B4D4406108010FD0000000800000003000000050000000400000005000000030F878CFD00000003078000F8128A7D03028000FE13D7ED09022A457B0000000613E1C504000000020B4D4400108010F70DE7CA060E5FD8FD0000000600000003000000060000000010804CF7000000000DE7CA060E5FD8FD08C000F80000000600000005000000030000000500000004000000050000000100000005000000000F878CF7000000000C9A87060F8750FD078000F8128A7D03028000FE13D7ED09022A457B0000000A13E1C504000000020DE7CA000E5FD8F70000000A000000000000000A000000040000000500000001000000050000000300000005000000030F34D1060000000300000005000000000F34D10000000000045489FB1386AD040CFD9BFD0F350D060C9A87060F8750FD078000F8128A7D03028000FE13D7ED090AD357770000000A10D101000000000000000005000000040000000500000001000000050000000300000005000000030F34D106000000030000000500000002138671040000000200000005"
theorem small_6228995_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6228995_right_root small_6228995_right_fuel small_6228995_right_count small_6228995_right_encoded = true := by
  decide +kernel
theorem small_6228995_right_covered : CoveredBy scale carrier boxes small_6228995_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6228995_right_root small_6228995_right_fuel small_6228995_right_count small_6228995_right_encoded small_6228995_right_checked

theorem cover_6228995 : CoveredBy scale carrier boxes root_6228995 := by
  apply coveredBy_split_literal root_6228995 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6228996 small_6228995_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6228996
  · exact small_6228995_right_covered
#print axioms cover_6228995

def root_6228990 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6228990_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6228990_right_fuel : Nat := 1
def small_6228990_right_count : Nat := 1
def small_6228990_right_encoded : String := "00000001"
theorem small_6228990_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6228990_right_root small_6228990_right_fuel small_6228990_right_count small_6228990_right_encoded = true := by
  decide +kernel
theorem small_6228990_right_covered : CoveredBy scale carrier boxes small_6228990_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6228990_right_root small_6228990_right_fuel small_6228990_right_count small_6228990_right_encoded small_6228990_right_checked

theorem cover_6228990 : CoveredBy scale carrier boxes root_6228990 := by
  apply coveredBy_split_literal root_6228990 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6228995 small_6228990_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6228995
  · exact small_6228990_right_covered
#print axioms cover_6228990

def root_6228989 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6228989_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6228989_right_fuel : Nat := 27
def small_6228989_right_count : Nat := 301
def small_6228989_right_encoded : String := "135D450300000001050000FE135D81090CFD9BF70F350D00045489FB1386AD040CFD9BFD0F350D060C9A87000F8750F70C9A87060F8750FD028000F813D7ED03078000FE00000007128A410900000004067ECE7B0000000912EA5904000000020B4D440000000007000000090000000113D7B1030000000100000009000000030F878CFD00000003028000F813D7ED03078000FE00000007128A410900000004067ECE7B12EA9504000000090000000212EA590400000002000000050000000113D7B10300000001078000FE0000000700000005000000000F878CF7000000000C9A8706000000090F878CFD00000003028000F813D7ED03078000FE00000009000000050000000100000005000000030F34D106000000030C9A87000F8750F7028000F813D7ED03078000FE128A7D09067ECE7B0000000712EA590400000002000000050000000400000005000000010000000500000000000000050000000213867104000000020CFD9BFD0F350D060C9A87000F8750F70C9A87060F8750FD028000F813D7ED03078000FE128A7D09022A457B0000000713E1C504000000020B4D44000000000710804CF7000000000B4D4406108010FD00000007000000030000000700000004128A410900000004022A457B13E201040B4D4400108010F70B4D4406108010FD0000000700000003000000070000000010804CF7000000000B4D4406108010FD03C000F813A54D03064000FE0000000900000005000000010000000500000003000000050000000213E1C504000000020B4D4400108010F70B4D44060000000810804CFD00000003000000080000000010804CF7000000000B4D4406108010FD0000000800000003000000050000000113D7B10300000001078000FE128A7D09022A457B0000000713E1C50400000002000000070000000400000005000000030F878CFD00000003028000F813D7ED03078000FE128A7D09022A457B0000000713E1C504000000020B4D44000000000710804CF7000000000DE7CA060E5FD8FD00000007000000030000000500000004000000050000000100000005000000000F878CF7000000000C9A87060F8750FD028000F813D7ED03078000FE128A7D09022A457B0000000913E1C504000000020DE7CA000E5FD8F70B4D44060000000910804CFD0000000303C000F813A54D0308C000FE000000090000000500000001000000050000000000000009000000040000000500000001000000050000000300000005000000030F34D1060000000300000005000000000F34D10000000000045489FB1386AD040CFD9BFD0F350D060000000900000003000000090000000213867104000000020000000500000004135D4509000000040CFD9BF70F350D00045489FB1386AD040CFD9BFD0F350D060C9A87000F8750F70C9A87060F8750FD028000F813D7ED03028000FE13D7ED09067ECE7B12EA95040B4D440000000006000000050000000212EA5904000000020B4D4400108010F70B4D4406108010FD03C000F80000000A00000005000000030000000500000000000000050000000400000005000000010000000500000003000000050000000000000005000000030F34D106000000030000000500000002138671040000000200000005000000000F34D1000000000000000005"
theorem small_6228989_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6228989_right_root small_6228989_right_fuel small_6228989_right_count small_6228989_right_encoded = true := by
  decide +kernel
theorem small_6228989_right_covered : CoveredBy scale carrier boxes small_6228989_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6228989_right_root small_6228989_right_fuel small_6228989_right_count small_6228989_right_encoded small_6228989_right_checked

theorem cover_6228989 : CoveredBy scale carrier boxes root_6228989 := by
  apply coveredBy_split_literal root_6228989 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6228990 small_6228989_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6228990
  · exact small_6228989_right_covered
#print axioms cover_6228989

def root_6228984 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6228984_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6228984_right_fuel : Nat := 1
def small_6228984_right_count : Nat := 1
def small_6228984_right_encoded : String := "00000003"
theorem small_6228984_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6228984_right_root small_6228984_right_fuel small_6228984_right_count small_6228984_right_encoded = true := by
  decide +kernel
theorem small_6228984_right_covered : CoveredBy scale carrier boxes small_6228984_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6228984_right_root small_6228984_right_fuel small_6228984_right_count small_6228984_right_encoded small_6228984_right_checked

theorem cover_6228984 : CoveredBy scale carrier boxes root_6228984 := by
  apply coveredBy_split_literal root_6228984 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6228989 small_6228984_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6228989
  · exact small_6228984_right_covered
#print axioms cover_6228984

def root_6228983 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6228983_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6228983_right_fuel : Nat := 21
def small_6228983_right_count : Nat := 57
def small_6228983_right_encoded : String := "1207010600000003050000F8135D8103050000FE135D81090CFD9BF70F350D00045489FB1386AD04045489FD1386AD060C9A8700000000060F878CF7000000000000000600000003138671060000000300000006000000021386710400000002045489FD1386AD060C9A87000F8750F7078000F8128A7D03078000FE128A7D09022A457B0000000613E1C50400000002067ECE7D000000060000000600000004000000050000000100000005000000000000000500000003138671060000000300000005000000000F34D100000000000000000500000004000000050000000100000005"
theorem small_6228983_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6228983_right_root small_6228983_right_fuel small_6228983_right_count small_6228983_right_encoded = true := by
  decide +kernel
theorem small_6228983_right_covered : CoveredBy scale carrier boxes small_6228983_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6228983_right_root small_6228983_right_fuel small_6228983_right_count small_6228983_right_encoded small_6228983_right_checked

theorem cover_6228983 : CoveredBy scale carrier boxes root_6228983 := by
  apply coveredBy_split_literal root_6228983 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6228984 small_6228983_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6228984
  · exact small_6228983_right_covered
#print axioms cover_6228983

def root_6228977 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6228977_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6228977_left_fuel : Nat := 1
def small_6228977_left_count : Nat := 1
def small_6228977_left_encoded : String := "00000002"
theorem small_6228977_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6228977_left_root small_6228977_left_fuel small_6228977_left_count small_6228977_left_encoded = true := by
  decide +kernel
theorem small_6228977_left_covered : CoveredBy scale carrier boxes small_6228977_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6228977_left_root small_6228977_left_fuel small_6228977_left_count small_6228977_left_encoded small_6228977_left_checked

theorem cover_6228977 : CoveredBy scale carrier boxes root_6228977 := by
  apply coveredBy_split_literal root_6228977 small_6228977_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6228983 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6228977_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6228983
#print axioms cover_6228977

def root_6228387 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6228387_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6228387_left_fuel : Nat := 25
def small_6228387_left_count : Nat := 273
def small_6228387_left_encoded : String := "12073D0408A912FD12073D06050000F8135D8103050000FE135D81090CFD9BF70F350D000CFD9BFB0F350D040CFD9BFD0F350D060C9A87000F8750F70C9A8704000000060F878CFB000000020C9A87060000000900000006000000000F878CF70000000000000009000000030F34D1060000000300000006000000020F34D104000000020CFD9BFD0F350D060C9A87000F8750F70C9A87060F8750FD078000F8128A7D03078000FE128A7D090AD3577B0000000610D10104000000020B4D44000000000500000009000000040000000600000001128A410300000001078000FE00000009128A4109000000040AD3577B0000000610D101040000000200000006000000030F878CFD00000003078000F800000006128A410300000001078000FE128A7D09000000070000000400000006000000000F878CF7000000000C9A87060F8750FD078000F8128A7D03078000FE00000009128A410900000004000000060000000100000009000000030F878CFD00000003078000F8128A7D03000000060000000100000009000000030F34D106000000030C9A8700000000060F878CF70000000000000006000000000F34D100000000000CFD9BFB0F350D0400000009000000020F34D104000000020CFD9BFD0F350D060C9A8706000000090F878CFD0000000300000009000000030000000900000004135D4509000000040CFD9BF70F350D000CFD9BFB0F350D0400000006000000020F34D104000000020CFD9BFD0F350D060C9A8700000000060F878CF700000000000000060000000300000006000000000F34D100000000000CFD9BFB000000060F34D104000000020CFD9BFD0F350D060C9A87060F8750FD000000060000000300000006000000030000000600000001135D450300000001050000FE135D81090CFD9BF70F350D000CFD9BFB0F350D0400000009000000020F34D104000000020CFD9BFD0F350D060C9A87000F8750F70C9A8706000000090F878CFD00000003000000090000000000000009000000030F34D106000000030C9A87000F8750F7000000090000000000000009000000000F34D100000000000000000900000004135D4509000000040CFD9BF70F350D000CFD9BFB0F350D040CFD9BFD0000000600000006000000020F34D104000000020CFD9BFD0F350D060C9A87000F8750F70C9A87060F8750FD028000F800000006000000060000000300000006000000000F878CF70000000000000009000000030F34D1060000000300000005000000000F34D100000000000CFD9BFB000000090F34D1040000000200000005000000031207010600000003050000F8135D8103050000FE135D81090CFD9BF70F350D000CFD9BFB000000060F34D10400000002000000060000000000000006000000040000000600000001135D450300000001050000FE135D81090CFD9BF70F350D000CFD9BFB000000060F34D1040000000200000009000000000F34D1000000000000000008000000040000000600000002"
theorem small_6228387_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6228387_left_root small_6228387_left_fuel small_6228387_left_count small_6228387_left_encoded = true := by
  decide +kernel
theorem small_6228387_left_covered : CoveredBy scale carrier boxes small_6228387_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6228387_left_root small_6228387_left_fuel small_6228387_left_count small_6228387_left_encoded small_6228387_left_checked

theorem cover_6228387 : CoveredBy scale carrier boxes root_6228387 := by
  apply coveredBy_split_literal root_6228387 small_6228387_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6228977 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6228387_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6228977
#print axioms cover_6228387

def root_6228382 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6228382_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6228382_right_fuel : Nat := 1
def small_6228382_right_count : Nat := 1
def small_6228382_right_encoded : String := "00000000"
theorem small_6228382_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6228382_right_root small_6228382_right_fuel small_6228382_right_count small_6228382_right_encoded = true := by
  decide +kernel
theorem small_6228382_right_covered : CoveredBy scale carrier boxes small_6228382_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6228382_right_root small_6228382_right_fuel small_6228382_right_count small_6228382_right_encoded small_6228382_right_checked

theorem cover_6228382 : CoveredBy scale carrier boxes root_6228382 := by
  apply coveredBy_split_literal root_6228382 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6228387 small_6228382_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6228387
  · exact small_6228382_right_covered
#print axioms cover_6228382

def root_6228381 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6228381_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6228381_right_fuel : Nat := 23
def small_6228381_right_count : Nat := 119
def small_6228381_right_encoded : String := "120701000000000008A912FB12073D0408A912FD12073D06050000F8135D8103050000FE135D8109045489F71386AD000CFD9BFB000000080F34D1040000000200000009000000000000000900000004135D450900000004045489F71386AD000CFD9BFB000000060F34D104000000020CFD9BFD00000006000000060000000013867100000000000CFD9BFB000000060F34D104000000020000000500000001135D450300000001050000FE0000000900000009000000031207010600000003050000F8000000060000000500000002120701040000000208A912FD12073D06050000F8135D8103050000FE135D8109045489F71386AD00045489FB1386AD040CFD9BFD0F350D060C9A8706000000090F878CFD000000030000000900000003000000090000000213867104000000020CFD9BFD0F350D060C9A87060F8750FD078000F8128A7D03078000FE128A7D09067ECE770000000900000009000000040000000500000001000000050000000300000005000000030F34D1060000000300000005000000001386710000000000045489FB1386AD040CFD9BFD0F350D06000000090000000300000009000000021386710400000002000000050000000400000005000000010000000500000003120701060000000300000005"
theorem small_6228381_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6228381_right_root small_6228381_right_fuel small_6228381_right_count small_6228381_right_encoded = true := by
  decide +kernel
theorem small_6228381_right_covered : CoveredBy scale carrier boxes small_6228381_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6228381_right_root small_6228381_right_fuel small_6228381_right_count small_6228381_right_encoded small_6228381_right_checked

theorem cover_6228381 : CoveredBy scale carrier boxes root_6228381 := by
  apply coveredBy_split_literal root_6228381 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6228382 small_6228381_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6228382
  · exact small_6228381_right_covered
#print axioms cover_6228381

def root_6228375 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6228375_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6228375_left_fuel : Nat := 1
def small_6228375_left_count : Nat := 1
def small_6228375_left_encoded : String := "00000004"
theorem small_6228375_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6228375_left_root small_6228375_left_fuel small_6228375_left_count small_6228375_left_encoded = true := by
  decide +kernel
theorem small_6228375_left_covered : CoveredBy scale carrier boxes small_6228375_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6228375_left_root small_6228375_left_fuel small_6228375_left_count small_6228375_left_encoded small_6228375_left_checked

theorem cover_6228375 : CoveredBy scale carrier boxes root_6228375 := by
  apply coveredBy_split_literal root_6228375 small_6228375_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6228381 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6228375_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6228381
#print axioms cover_6228375

def root_6223705 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6223705 : CoveredBy scale carrier boxes root_6223705 := by
  apply coveredBy_split_literal root_6223705 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6223706 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6228375 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6223706
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6228375
#print axioms cover_6223705

def root_6223699 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6223699_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6223699_left_fuel : Nat := 1
def small_6223699_left_count : Nat := 1
def small_6223699_left_encoded : String := "00000003"
theorem small_6223699_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6223699_left_root small_6223699_left_fuel small_6223699_left_count small_6223699_left_encoded = true := by
  decide +kernel
theorem small_6223699_left_covered : CoveredBy scale carrier boxes small_6223699_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6223699_left_root small_6223699_left_fuel small_6223699_left_count small_6223699_left_encoded small_6223699_left_checked

theorem cover_6223699 : CoveredBy scale carrier boxes root_6223699 := by
  apply coveredBy_split_literal root_6223699 small_6223699_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6223705 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6223699_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6223705
#print axioms cover_6223699

def root_6220941 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6220941 : CoveredBy scale carrier boxes root_6220941 := by
  apply coveredBy_split_literal root_6220941 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2342.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6223699 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2342.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6223699
#print axioms cover_6220941

def root_6220935 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6220935_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6220935_left_fuel : Nat := 1
def small_6220935_left_count : Nat := 1
def small_6220935_left_encoded : String := "00000002"
theorem small_6220935_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6220935_left_root small_6220935_left_fuel small_6220935_left_count small_6220935_left_encoded = true := by
  decide +kernel
theorem small_6220935_left_covered : CoveredBy scale carrier boxes small_6220935_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6220935_left_root small_6220935_left_fuel small_6220935_left_count small_6220935_left_encoded small_6220935_left_checked

theorem cover_6220935 : CoveredBy scale carrier boxes root_6220935 := by
  apply coveredBy_split_literal root_6220935 small_6220935_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6220941 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6220935_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6220941
#print axioms cover_6220935

def root_6220611 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6220611_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6220611_left_fuel : Nat := 20
def small_6220611_left_count : Nat := 151
def small_6220611_left_encoded : String := "1151E8FB0A0001061151E8FD0A0000FE1152250908A912F70000000900000009000000041151E9090000000408A912F712073D00050000F8135D81030500010400000009135D80FB000000020500010600000009135D80FD00000003050000FE000000090000000900000001000000090000000012070100000000000000000900000003115224FD000000030A0000FE1152250908A912F712073D0008A912FD12073D0608A91309120700FE050000F8135D810305000104135D44FB00000009000000020000000900000001135D45030000000105000104135D44FB0000000900000002000000090000000412073CFE00000004050000F8135D810305000104135D44FB0CFD9BF70F350D000CFD9BFD0000000900000008000000000000000900000002135D80FB000000020CFD9BF70F350D000CFD9BFD0F350D06000000090000000300000009000000000000000900000001135D45030000000105000104135D44FB0CFD9BF70F350D00000000090000000000000009000000020000000900000003120701060000000308A91309120700FE00000008000000040000000800000000120701000000000008A912FD12073D06000000090000000300000008000000041151E9090000000408A912F712073D0008A912FD12073D06050000F8135D810305000104135D44FB0000000600000002135D80FB00000002050000FE135D81090CFD9BF70F350D00000000060000000000000006000000040000000600000001135D450300000001050001040000000900000009000000031207010600000003000000060000000012070100000000000000000900000002"
theorem small_6220611_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6220611_left_root small_6220611_left_fuel small_6220611_left_count small_6220611_left_encoded = true := by
  decide +kernel
theorem small_6220611_left_covered : CoveredBy scale carrier boxes small_6220611_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6220611_left_root small_6220611_left_fuel small_6220611_left_count small_6220611_left_encoded small_6220611_left_checked

theorem cover_6220611 : CoveredBy scale carrier boxes root_6220611 := by
  apply coveredBy_split_literal root_6220611 small_6220611_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6220935 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6220611_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6220935
#print axioms cover_6220611

def root_6220605 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6220605_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6220605_left_fuel : Nat := 1
def small_6220605_left_count : Nat := 1
def small_6220605_left_encoded : String := "00000001"
theorem small_6220605_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6220605_left_root small_6220605_left_fuel small_6220605_left_count small_6220605_left_encoded = true := by
  decide +kernel
theorem small_6220605_left_covered : CoveredBy scale carrier boxes small_6220605_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6220605_left_root small_6220605_left_fuel small_6220605_left_count small_6220605_left_encoded small_6220605_left_checked

theorem cover_6220605 : CoveredBy scale carrier boxes root_6220605 := by
  apply coveredBy_split_literal root_6220605 small_6220605_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6220611 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6220605_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6220611
#print axioms cover_6220605

def root_6200505 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6200505 : CoveredBy scale carrier boxes root_6200505 := by
  apply coveredBy_split_literal root_6200505 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6200506 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6220605 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6200506
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6220605
#print axioms cover_6200505

def root_6200499 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6200499_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6200499_left_fuel : Nat := 1
def small_6200499_left_count : Nat := 1
def small_6200499_left_encoded : String := "00000000"
theorem small_6200499_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6200499_left_root small_6200499_left_fuel small_6200499_left_count small_6200499_left_encoded = true := by
  decide +kernel
theorem small_6200499_left_covered : CoveredBy scale carrier boxes small_6200499_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6200499_left_root small_6200499_left_fuel small_6200499_left_count small_6200499_left_encoded small_6200499_left_checked

theorem cover_6200499 : CoveredBy scale carrier boxes root_6200499 := by
  apply coveredBy_split_literal root_6200499 small_6200499_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6200505 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6200499_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6200505
#print axioms cover_6200499

def root_6191423 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6191423 : CoveredBy scale carrier boxes root_6191423 := by
  apply coveredBy_split_literal root_6191423 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6191424 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6200499 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6191424
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6200499
#print axioms cover_6191423

def root_6183455 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6183455 : CoveredBy scale carrier boxes root_6183455 := by
  apply coveredBy_split_literal root_6183455 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6183456 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6191423 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6183456
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6191423
#print axioms cover_6183455

def root_6245540 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6245540 : CoveredBy scale carrier boxes root_6245540 := by
  apply coveredBy_split_literal root_6245540 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2349.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2350.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2349.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2350.covered
#print axioms cover_6245540

def root_6245534 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6245534_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6245534_left_fuel : Nat := 1
def small_6245534_left_count : Nat := 1
def small_6245534_left_encoded : String := "00000000"
theorem small_6245534_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6245534_left_root small_6245534_left_fuel small_6245534_left_count small_6245534_left_encoded = true := by
  decide +kernel
theorem small_6245534_left_covered : CoveredBy scale carrier boxes small_6245534_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6245534_left_root small_6245534_left_fuel small_6245534_left_count small_6245534_left_encoded small_6245534_left_checked

theorem cover_6245534 : CoveredBy scale carrier boxes root_6245534 := by
  apply coveredBy_split_literal root_6245534 small_6245534_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6245540 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6245534_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6245540
#print axioms cover_6245534

def root_6243496 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6243496 : CoveredBy scale carrier boxes root_6243496 := by
  apply coveredBy_split_literal root_6243496 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2348.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6245534 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2348.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6245534
#print axioms cover_6243496

def root_6241000 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6241000 : CoveredBy scale carrier boxes root_6241000 := by
  apply coveredBy_split_literal root_6241000 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2347.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6243496 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2347.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6243496
#print axioms cover_6241000

def root_6183454 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6183454 : CoveredBy scale carrier boxes root_6183454 := by
  apply coveredBy_split_literal root_6183454 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6183455 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6241000 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6183455
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6241000
#print axioms cover_6183454

def root_6252361 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6252361 : CoveredBy scale carrier boxes root_6252361 := by
  apply coveredBy_split_literal root_6252361 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2352.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2353.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2352.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2353.covered
#print axioms cover_6252361

def root_6252356 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6252356_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6252356_right_fuel : Nat := 1
def small_6252356_right_count : Nat := 1
def small_6252356_right_encoded : String := "00000001"
theorem small_6252356_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6252356_right_root small_6252356_right_fuel small_6252356_right_count small_6252356_right_encoded = true := by
  decide +kernel
theorem small_6252356_right_covered : CoveredBy scale carrier boxes small_6252356_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6252356_right_root small_6252356_right_fuel small_6252356_right_count small_6252356_right_encoded small_6252356_right_checked

theorem cover_6252356 : CoveredBy scale carrier boxes root_6252356 := by
  apply coveredBy_split_literal root_6252356 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6252361 small_6252356_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6252361
  · exact small_6252356_right_covered
#print axioms cover_6252356

def root_6259129 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6259129 : CoveredBy scale carrier boxes root_6259129 := by
  apply coveredBy_split_literal root_6259129 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2355.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2356.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2355.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2356.covered
#print axioms cover_6259129

def root_6259124 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6259124_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6259124_right_fuel : Nat := 1
def small_6259124_right_count : Nat := 1
def small_6259124_right_encoded : String := "00000004"
theorem small_6259124_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6259124_right_root small_6259124_right_fuel small_6259124_right_count small_6259124_right_encoded = true := by
  decide +kernel
theorem small_6259124_right_covered : CoveredBy scale carrier boxes small_6259124_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6259124_right_root small_6259124_right_fuel small_6259124_right_count small_6259124_right_encoded small_6259124_right_checked

theorem cover_6259124 : CoveredBy scale carrier boxes root_6259124 := by
  apply coveredBy_split_literal root_6259124 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6259129 small_6259124_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6259129
  · exact small_6259124_right_covered
#print axioms cover_6259124

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151
