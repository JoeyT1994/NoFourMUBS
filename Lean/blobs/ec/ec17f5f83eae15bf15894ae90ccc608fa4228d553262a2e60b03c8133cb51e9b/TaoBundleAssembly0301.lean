import TaoBundleAssembly0298
import TaoBundleAssembly0299
import TaoBundleAssembly0300
import TaoBundleChunkBatch0390
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301
def root_4153945 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153945_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153945_right_fuel : Nat := 37
def small_4153945_right_count : Nat := 311
def small_4153945_right_encoded : String := "0F34D102000000010CFD9BFD0F350D06045489FF1386AD080C9A87060F8750FD078000F6128A7D01078000FA128A7D050AD35779000000090000000900000002128A4105000000020AD357790000000810D10102000000010000000800000000128A41010000000000000009000000030F878CFD00000003078000F6128A7D01078000FA128A7D050AD3577910D13D02067ECE7F0000000912EA59080000000400000009000000010000000900000002128A4105000000020AD3577910D13D02067ECE7F0000000712EA590800000004000000050000000110D10102000000010000000500000000128A410100000000078000FA00000009000000050000000413867108000000040C9A87060F8750FD078000F6128A7D01078000FA128A7D050AD3577910D13D02022A457F13E201080B4D44060000000810804CFD0000000308C000F600000008000000090000000413E1C508000000040B4D4406108010FD08C000F60000000811FBE9010000000008C000FA11FC2505000000090000000211FBE90500000002000000080000000310804CFD0000000308C000F611FC250108C000FA11FC25050BE879B9000000081011710200000001000000080000000211FBE90500000002000000080000000011FBE9010000000008C000FA11FC25050000000900000002000000050000000110D1010200000001022A457F0000000913E1C508000000040B4D4406108010FD000000080000000310804CFD0000000308C000F611FC250108C000FA0000000900000005000000000000000500000002128A4105000000020AD3577910D13D02022A457F0000000813E1C508000000040B4D440600000008000000050000000110D1010200000001022A457F000000080000000500000000128A410100000000078000FA128A7D050AD3577910D13D02022A457F0000000913E1C508000000040B4D440600000009000000050000000110D1010200000001000000090000000200000005000000030F878CFD00000003078000F6128A7D01078000FA128A7D050AD3577910D13D02022A457F13E201080DE7CA060E5FD8FD08C000F611FC250108C000FA11FC2505000000090000000211FBE905000000020BE879B900000008000000090000000000000009000000030E6014FD0000000308C000F611FC250108C000FA11FC250500000009000000020000000500000000000000050000000413E1C508000000040DE7CA060E5FD8FD08C000F611FC250108C000FA11FC25050BE879B91011AD020115233F13F895080D412886000000090EFA4CFD00000003000000090000000413F85908000000040D4128860EFA10FD096000F611AABD01000000080000000011AA810100000000096000FA0000000900000005000000030EFA4CFD00000003096000F611AABD01096000FA11AABD050C730AD90FA74502008A921F0000000913FDF908000000040D94794600000006000000050000000100000009000000020000000500000000000000050000000110117102000000010115233F0000000913F8590800000004000000050000000200000005000000000000000500000003000000050000000110D10102000000010000000500000002000000050000000000000005000000030F34D10600000003045489FF1386AD08078000F6128A7D01078000FA0000000A00000005000000000000000500000004138671080000000400000005"
theorem small_4153945_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4153945_right_root small_4153945_right_fuel small_4153945_right_count small_4153945_right_encoded = true := by
  decide +kernel
theorem small_4153945_right_covered : CoveredBy scale carrier boxes small_4153945_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4153945_right_root small_4153945_right_fuel small_4153945_right_count small_4153945_right_encoded small_4153945_right_checked

theorem cover_4153945 : CoveredBy scale carrier boxes root_4153945 := by
  apply coveredBy_split_literal root_4153945 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0300.root_4153946 small_4153945_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0300.cover_4153946
  · exact small_4153945_right_covered
#print axioms cover_4153945

def root_4153940 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153940_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153940_right_fuel : Nat := 1
def small_4153940_right_count : Nat := 1
def small_4153940_right_encoded : String := "00000002"
theorem small_4153940_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4153940_right_root small_4153940_right_fuel small_4153940_right_count small_4153940_right_encoded = true := by
  decide +kernel
theorem small_4153940_right_covered : CoveredBy scale carrier boxes small_4153940_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4153940_right_root small_4153940_right_fuel small_4153940_right_count small_4153940_right_encoded small_4153940_right_checked

theorem cover_4153940 : CoveredBy scale carrier boxes root_4153940 := by
  apply coveredBy_split_literal root_4153940 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.root_4153945 small_4153940_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.cover_4153945
  · exact small_4153940_right_covered
#print axioms cover_4153940

def root_4153939 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153939_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153939_right_fuel : Nat := 23
def small_4153939_right_count : Nat := 237
def small_4153939_right_encoded : String := "135D4505000000020CFD9BF90F350D020CFD9BFD0F350D06045489FF1386AD080C9A87020F8750F90C9A87060F8750FD078000F600000008128A410100000000028000FA13D7ED05067ECE7F0000000712EA5908000000040B4D4402108010F90B4D440600000008000000070000000110804CF9000000010B4D440600000008000000050000000200000007000000030F878CFD0000000300000007000000010F878CF9000000010C9A87060F8750FD078000F600000008128A410100000000028000FA13D7ED05067ECE7F12EA9508000000070000000412EA590800000004000000050000000200000005000000030F878CFD00000003078000F600000007000000050000000413867108000000040C9A87020F8750F90C9A87060F8750FD078000F6128A7D01028000FA13D7ED05022A457F0000000813E1C508000000040B4D4402108010F90B4D44060000000810804CFD000000030000000800000001000000080000000213D7B10500000002022A457F0000000713E1C508000000040000000800000000128A410100000000028000FA13D7ED05022A457F13E201080B4D4402108010F90B4D4406108010FD000000080000000310804CFD00000003064000F600000007000000050000000110804CF9000000010B4D440600000008000000050000000413E1C508000000040B4D4402108010F90B4D44060000000A10804CFD000000030000000A0000000110804CF9000000010B4D4406108010FD0000000A00000003000000050000000200000005000000030F878CFD00000003078000F6128A7D01028000FA13D7ED05022A457F0000000713E1C508000000040B4D4402108010F90DE7CA060E5FD8FD0000000700000003000000070000000110804CF9000000010DE7CA060E5FD8FD08C000F60000000700000005000000030000000500000002000000050000000000000005000000010F878CF9000000010C9A87060F8750FD078000F6128A7D01028000FA13D7ED05022A457F0000000813E1C508000000040DE7CA020E5FD8F9000000080000000100000008000000020000000500000000000000050000000300000005000000030F34D10600000003045489FF00000007138671080000000400000005000000010F34D102000000010CFD9BFD0F350D06045489FF1386AD080C9A87060F8750FD078000F6128A7D01028000FA13D7ED050AD357790000000810D10102000000010000000500000002000000050000000000000005000000030000000500000004138671080000000400000005000000030F34D1060000000300000005"
theorem small_4153939_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4153939_right_root small_4153939_right_fuel small_4153939_right_count small_4153939_right_encoded = true := by
  decide +kernel
theorem small_4153939_right_covered : CoveredBy scale carrier boxes small_4153939_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4153939_right_root small_4153939_right_fuel small_4153939_right_count small_4153939_right_encoded small_4153939_right_checked

theorem cover_4153939 : CoveredBy scale carrier boxes root_4153939 := by
  apply coveredBy_split_literal root_4153939 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.root_4153940 small_4153939_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.cover_4153940
  · exact small_4153939_right_covered
#print axioms cover_4153939

def root_4153934 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153934_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153934_right_fuel : Nat := 1
def small_4153934_right_count : Nat := 1
def small_4153934_right_encoded : String := "00000000"
theorem small_4153934_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4153934_right_root small_4153934_right_fuel small_4153934_right_count small_4153934_right_encoded = true := by
  decide +kernel
theorem small_4153934_right_covered : CoveredBy scale carrier boxes small_4153934_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4153934_right_root small_4153934_right_fuel small_4153934_right_count small_4153934_right_encoded small_4153934_right_checked

theorem cover_4153934 : CoveredBy scale carrier boxes root_4153934 := by
  apply coveredBy_split_literal root_4153934 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.root_4153939 small_4153934_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.cover_4153939
  · exact small_4153934_right_covered
#print axioms cover_4153934

def root_4153933 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153933_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153933_right_fuel : Nat := 27
def small_4153933_right_count : Nat := 301
def small_4153933_right_encoded : String := "135D450100000000050000FA135D81050CFD9BF90F350D020CFD9BFD0F350D06045489FF1386AD080C9A87020F8750F90C9A87060F8750FD028000F613D7ED01078000FA00000006128A410500000002067ECE7F0000000912EA5908000000040B4D440200000006000000090000000013D7B1010000000000000009000000030F878CFD00000003028000F613D7ED01078000FA00000006128A410500000002067ECE7F12EA9508000000090000000412EA590800000004000000050000000013D7B10100000000078000FA0000000600000005000000010F878CF9000000010C9A8706000000090F878CFD00000003028000F613D7ED01078000FA000000090000000500000000000000050000000413867108000000040C9A87020F8750F90C9A87060F8750FD028000F613D7ED01078000FA128A7D05022A457F0000000613E1C508000000040B4D44020000000610804CF9000000010B4D4406108010FD00000006000000030000000600000002128A410500000002022A457F13E201080B4D4402108010F90B4D4406108010FD0000000600000003000000060000000110804CF9000000010B4D4406108010FD03C000F613A54D01064000FA0000000900000005000000000000000500000003000000050000000413E1C508000000040B4D4402108010F90B4D44060000000A10804CFD000000030000000A0000000110804CF9000000010B4D4406108010FD0000000A00000003000000050000000013D7B10100000000078000FA128A7D05022A457F0000000613E1C50800000004000000060000000200000005000000030F878CFD00000003028000F613D7ED01078000FA128A7D05022A457F0000000613E1C508000000040B4D44020000000610804CF9000000010DE7CA060E5FD8FD00000006000000030000000500000002000000050000000000000005000000010F878CF9000000010C9A87060F8750FD028000F613D7ED01078000FA128A7D05022A457F0000000913E1C508000000040DE7CA020E5FD8F90B4D44060000000910804CFD0000000303C000F613A54D0108C000FA000000090000000500000000000000050000000100000009000000020000000500000000000000050000000300000005000000030F34D10600000003045489FF1386AD080C9A87020F8750F9028000F613D7ED01078000FA128A7D050AD3577D0000000610D10106000000030000000500000002000000050000000000000005000000010000000500000004138671080000000400000005000000010F34D102000000010CFD9BFD0F350D06045489FF00000009138671080000000400000005000000030F34D106000000030000000500000002135D4505000000020CFD9BF90F350D020CFD9BFD0F350D06045489FF1386AD080C9A87020F8750F90C9A87060F8750FD028000F613D7ED01028000FA13D7ED05067ECE7F12EA95080B4D440200000007000000050000000412EA5908000000040B4D4402108010F90B4D4406108010FD03C000F6000000080000000500000003000000050000000100000005000000020000000500000000000000050000000300000005000000010000000500000004138671080000000400000005000000030F34D1060000000300000005000000010F34D1020000000100000005"
theorem small_4153933_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4153933_right_root small_4153933_right_fuel small_4153933_right_count small_4153933_right_encoded = true := by
  decide +kernel
theorem small_4153933_right_covered : CoveredBy scale carrier boxes small_4153933_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4153933_right_root small_4153933_right_fuel small_4153933_right_count small_4153933_right_encoded small_4153933_right_checked

theorem cover_4153933 : CoveredBy scale carrier boxes root_4153933 := by
  apply coveredBy_split_literal root_4153933 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.root_4153934 small_4153933_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.cover_4153934
  · exact small_4153933_right_covered
#print axioms cover_4153933

def root_4153927 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153927_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153927_left_fuel : Nat := 1
def small_4153927_left_count : Nat := 1
def small_4153927_left_encoded : String := "00000004"
theorem small_4153927_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4153927_left_root small_4153927_left_fuel small_4153927_left_count small_4153927_left_encoded = true := by
  decide +kernel
theorem small_4153927_left_covered : CoveredBy scale carrier boxes small_4153927_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4153927_left_root small_4153927_left_fuel small_4153927_left_count small_4153927_left_encoded small_4153927_left_checked

theorem cover_4153927 : CoveredBy scale carrier boxes root_4153927 := by
  apply coveredBy_split_literal root_4153927 small_4153927_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.root_4153933 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4153927_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.cover_4153933
#print axioms cover_4153927

def root_4153419 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153419_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153419_left_fuel : Nat := 23
def small_4153419_left_count : Nat := 235
def small_4153419_left_encoded : String := "12073D08050000F6135D8101050000FA135D81050CFD9BF90F350D020CFD9BFD0F350D060CFD9BFF0F350D080C9A87020F8750F90C9A87060F8750FD0C9A870800000007000000070000000300000007000000010F878CF90000000100000009000000040F34D108000000040C9A87020F8750F90C9A87060F8750FD078000F6128A7D01078000FA128A7D050AD3577F0000000710D10108000000040B4D44020000000500000008000000020000000700000000128A410100000000078000FA00000009128A4105000000020AD3577F0000000710D101080000000400000007000000030F878CFD00000003078000F600000007128A410100000000078000FA128A7D05000000060000000200000007000000010F878CF9000000010C9A87060F8750FD078000F6128A7D01078000FA00000009128A410500000002000000070000000000000009000000030F878CFD00000003078000F6128A7D01000000070000000000000009000000030F34D106000000030CFD9BFF000000070F34D108000000040C9A8702000000070F878CF90000000100000007000000010F34D102000000010CFD9BFD0F350D060CFD9BFF000000090F34D108000000040C9A8706000000090F878CFD0000000300000009000000030F34D106000000030000000A00000002135D4505000000020CFD9BF90F350D020CFD9BFD0F350D060CFD9BFF000000070F34D108000000040C9A8702000000070F878CF90000000100000007000000030F34D1060000000300000007000000010F34D102000000010CFD9BFD0F350D060CFD9BFF000000070F34D108000000040C9A87060F8750FD000000070000000300000007000000030F34D106000000030000000700000000135D450100000000050000FA135D81050CFD9BF90F350D020CFD9BFD0F350D060CFD9BFF000000090F34D108000000040C9A87020F8750F90C9A8706000000090F878CFD00000003000000090000000100000009000000030F34D106000000030CFD9BFF000000090F34D108000000040C9A87020F8750F9000000090000000100000009000000010F34D102000000010000000900000002135D4505000000020CFD9BF90F350D020CFD9BFD0F350D060CFD9BFF0F350D0800000007000000040F34D108000000040C9A87020F8750F90C9A87060F8750FD028000F600000007000000070000000300000007000000010F878CF90000000100000009000000030F34D1060000000300000007000000010F34D102000000010CFD9BFD0F350D0600000009000000030000000900000004"
theorem small_4153419_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4153419_left_root small_4153419_left_fuel small_4153419_left_count small_4153419_left_encoded = true := by
  decide +kernel
theorem small_4153419_left_covered : CoveredBy scale carrier boxes small_4153419_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4153419_left_root small_4153419_left_fuel small_4153419_left_count small_4153419_left_encoded small_4153419_left_checked

theorem cover_4153419 : CoveredBy scale carrier boxes root_4153419 := by
  apply coveredBy_split_literal root_4153419 small_4153419_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.root_4153927 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4153419_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.cover_4153927
#print axioms cover_4153419

def root_4153414 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153414_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153414_right_fuel : Nat := 1
def small_4153414_right_count : Nat := 1
def small_4153414_right_encoded : String := "00000003"
theorem small_4153414_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4153414_right_root small_4153414_right_fuel small_4153414_right_count small_4153414_right_encoded = true := by
  decide +kernel
theorem small_4153414_right_covered : CoveredBy scale carrier boxes small_4153414_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4153414_right_root small_4153414_right_fuel small_4153414_right_count small_4153414_right_encoded small_4153414_right_checked

theorem cover_4153414 : CoveredBy scale carrier boxes root_4153414 := by
  apply coveredBy_split_literal root_4153414 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.root_4153419 small_4153414_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.cover_4153419
  · exact small_4153414_right_covered
#print axioms cover_4153414

def root_4153413 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153413_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153413_right_fuel : Nat := 21
def small_4153413_right_count : Nat := 93
def small_4153413_right_encoded : String := "120701060000000308A912FF12073D08050000F6135D8101050000FA135D81050CFD9BF90F350D02045489FD00000007000000070000000100000007000000020000000700000000135D450100000000050000FA135D81050CFD9BF90F350D02045489FD1386AD060CFD9BFF000000070F34D108000000040000000700000003138671060000000300000007000000010F34D10200000001000000090000000200000007000000041207010800000004050000F6135D8101050000FA135D81050CFD9BF90F350D02045489FD1386AD06045489FF1386AD080C9A8702000000070F878CF900000001000000070000000413867108000000040C9A87020F8750F9078000F6128A7D01078000FA128A7D05067ECE7D0000000700000007000000020000000500000000000000050000000100000005000000031386710600000003045489FF00000007138671080000000400000005000000010F34D102000000010000000500000002000000050000000000000005"
theorem small_4153413_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4153413_right_root small_4153413_right_fuel small_4153413_right_count small_4153413_right_encoded = true := by
  decide +kernel
theorem small_4153413_right_covered : CoveredBy scale carrier boxes small_4153413_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4153413_right_root small_4153413_right_fuel small_4153413_right_count small_4153413_right_encoded small_4153413_right_checked

theorem cover_4153413 : CoveredBy scale carrier boxes root_4153413 := by
  apply coveredBy_split_literal root_4153413 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.root_4153414 small_4153413_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.cover_4153414
  · exact small_4153413_right_covered
#print axioms cover_4153413

def root_4153408 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153408_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153408_right_fuel : Nat := 1
def small_4153408_right_count : Nat := 1
def small_4153408_right_encoded : String := "00000001"
theorem small_4153408_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4153408_right_root small_4153408_right_fuel small_4153408_right_count small_4153408_right_encoded = true := by
  decide +kernel
theorem small_4153408_right_covered : CoveredBy scale carrier boxes small_4153408_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4153408_right_root small_4153408_right_fuel small_4153408_right_count small_4153408_right_encoded small_4153408_right_checked

theorem cover_4153408 : CoveredBy scale carrier boxes root_4153408 := by
  apply coveredBy_split_literal root_4153408 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.root_4153413 small_4153408_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.cover_4153413
  · exact small_4153408_right_covered
#print axioms cover_4153408

def root_4153407 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153407_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153407_right_fuel : Nat := 23
def small_4153407_right_count : Nat := 117
def small_4153407_right_encoded : String := "120701020000000108A912FD12073D0608A912FF12073D08050000F6135D8101050000FA135D8105045489F91386AD020CFD9BFD0F350D06000000090000000300000009000000010000000900000002135D450500000002045489F91386AD020CFD9BFD0F350D060CFD9BFF000000070F34D108000000040000000700000003000000070000000113867102000000010CFD9BFD0F350D0600000009000000030000000700000000135D450100000000050000FA0000000900000009000000041207010800000004050000F6135D8101050000FA135D8105045489F91386AD020CFD9BFD0F350D06045489FF1386AD080C9A8706000000090F878CFD00000003000000090000000413867108000000040C9A87060F8750FD078000F6128A7D01078000FA128A7D05067ECE790000000900000009000000020000000500000000000000050000000300000005000000030F34D10600000003000000050000000113867102000000010CFD9BFD0F350D06045489FF00000009138671080000000400000005000000030F34D10600000003000000050000000200000005000000000000000500000003120701060000000308A912FF12073D08050000F6000000070000000500000004120701080000000400000005"
theorem small_4153407_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4153407_right_root small_4153407_right_fuel small_4153407_right_count small_4153407_right_encoded = true := by
  decide +kernel
theorem small_4153407_right_covered : CoveredBy scale carrier boxes small_4153407_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4153407_right_root small_4153407_right_fuel small_4153407_right_count small_4153407_right_encoded small_4153407_right_checked

theorem cover_4153407 : CoveredBy scale carrier boxes root_4153407 := by
  apply coveredBy_split_literal root_4153407 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.root_4153408 small_4153407_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.cover_4153408
  · exact small_4153407_right_covered
#print axioms cover_4153407

def root_4153401 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153401_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153401_left_fuel : Nat := 1
def small_4153401_left_count : Nat := 1
def small_4153401_left_encoded : String := "00000004"
theorem small_4153401_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4153401_left_root small_4153401_left_fuel small_4153401_left_count small_4153401_left_encoded = true := by
  decide +kernel
theorem small_4153401_left_covered : CoveredBy scale carrier boxes small_4153401_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4153401_left_root small_4153401_left_fuel small_4153401_left_count small_4153401_left_encoded small_4153401_left_checked

theorem cover_4153401 : CoveredBy scale carrier boxes root_4153401 := by
  apply coveredBy_split_literal root_4153401 small_4153401_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.root_4153407 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4153401_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.cover_4153407
#print axioms cover_4153401

def root_4153319 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153319_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153319_left_fuel : Nat := 14
def small_4153319_left_count : Nat := 37
def small_4153319_left_encoded : String := "1151E8FF08A912F912073D0208A912FD12073D06050000F6135D8101050000FA135D810505000108135D44FF0000000700000004135D80FF000000040CFD9BF90F350D02000000070000000100000007000000020000000700000000135D450100000000050000FA0000000900000009000000031207010600000003000000070000000112070102000000010000000900000004"
theorem small_4153319_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4153319_left_root small_4153319_left_fuel small_4153319_left_count small_4153319_left_encoded = true := by
  decide +kernel
theorem small_4153319_left_covered : CoveredBy scale carrier boxes small_4153319_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4153319_left_root small_4153319_left_fuel small_4153319_left_count small_4153319_left_encoded small_4153319_left_checked

theorem cover_4153319 : CoveredBy scale carrier boxes root_4153319 := by
  apply coveredBy_split_literal root_4153319 small_4153319_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.root_4153401 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4153319_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.cover_4153401
#print axioms cover_4153319

def root_4153313 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153313_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153313_left_fuel : Nat := 1
def small_4153313_left_count : Nat := 1
def small_4153313_left_encoded : String := "00000003"
theorem small_4153313_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4153313_left_root small_4153313_left_fuel small_4153313_left_count small_4153313_left_encoded = true := by
  decide +kernel
theorem small_4153313_left_covered : CoveredBy scale carrier boxes small_4153313_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4153313_left_root small_4153313_left_fuel small_4153313_left_count small_4153313_left_encoded small_4153313_left_checked

theorem cover_4153313 : CoveredBy scale carrier boxes root_4153313 := by
  apply coveredBy_split_literal root_4153313 small_4153313_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.root_4153319 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4153313_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.cover_4153319
#print axioms cover_4153313

def root_4151149 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4151149 : CoveredBy scale carrier boxes root_4151149 := by
  apply coveredBy_split_literal root_4151149 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1557.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.root_4153313 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1557.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.cover_4153313
#print axioms cover_4151149

def root_4151143 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4151143_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4151143_left_fuel : Nat := 1
def small_4151143_left_count : Nat := 1
def small_4151143_left_encoded : String := "00000002"
theorem small_4151143_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4151143_left_root small_4151143_left_fuel small_4151143_left_count small_4151143_left_encoded = true := by
  decide +kernel
theorem small_4151143_left_covered : CoveredBy scale carrier boxes small_4151143_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4151143_left_root small_4151143_left_fuel small_4151143_left_count small_4151143_left_encoded small_4151143_left_checked

theorem cover_4151143 : CoveredBy scale carrier boxes root_4151143 := by
  apply coveredBy_split_literal root_4151143 small_4151143_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.root_4151149 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4151143_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.cover_4151149
#print axioms cover_4151143

def root_4145753 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4145753 : CoveredBy scale carrier boxes root_4145753 := by
  apply coveredBy_split_literal root_4145753 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.root_4145754 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.root_4151143 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.cover_4145754
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.cover_4151143
#print axioms cover_4145753

def root_4145747 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4145747_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4145747_left_fuel : Nat := 1
def small_4145747_left_count : Nat := 1
def small_4145747_left_encoded : String := "00000001"
theorem small_4145747_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4145747_left_root small_4145747_left_fuel small_4145747_left_count small_4145747_left_encoded = true := by
  decide +kernel
theorem small_4145747_left_covered : CoveredBy scale carrier boxes small_4145747_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4145747_left_root small_4145747_left_fuel small_4145747_left_count small_4145747_left_encoded small_4145747_left_checked

theorem cover_4145747 : CoveredBy scale carrier boxes root_4145747 := by
  apply coveredBy_split_literal root_4145747 small_4145747_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.root_4145753 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4145747_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.cover_4145753
#print axioms cover_4145747

def root_4141417 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4141417 : CoveredBy scale carrier boxes root_4141417 := by
  apply coveredBy_split_literal root_4141417 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.root_4141418 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.root_4145747 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.cover_4141418
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.cover_4145747
#print axioms cover_4141417

def root_4141411 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4141411_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4141411_left_fuel : Nat := 1
def small_4141411_left_count : Nat := 1
def small_4141411_left_encoded : String := "00000000"
theorem small_4141411_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4141411_left_root small_4141411_left_fuel small_4141411_left_count small_4141411_left_encoded = true := by
  decide +kernel
theorem small_4141411_left_covered : CoveredBy scale carrier boxes small_4141411_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4141411_left_root small_4141411_left_fuel small_4141411_left_count small_4141411_left_encoded small_4141411_left_checked

theorem cover_4141411 : CoveredBy scale carrier boxes root_4141411 := by
  apply coveredBy_split_literal root_4141411 small_4141411_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.root_4141417 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4141411_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.cover_4141417
#print axioms cover_4141411

def root_4117605 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4117605 : CoveredBy scale carrier boxes root_4117605 := by
  apply coveredBy_split_literal root_4117605 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.root_4117606 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.root_4141411 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.cover_4117606
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.cover_4141411
#print axioms cover_4117605

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301
