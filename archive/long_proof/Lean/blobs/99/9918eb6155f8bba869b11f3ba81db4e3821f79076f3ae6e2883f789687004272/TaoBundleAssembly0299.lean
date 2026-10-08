import TaoBundleChunkBatch0389
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299
def root_4146971 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146971_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146971_right_fuel : Nat := 34
def small_4146971_right_count : Nat := 317
def small_4146971_right_encoded : String := "0F34D102000000010CFD9C050F34D0FA0CFD9BFD0F350D06045489FF00000009138671080000000400000009000000030F34D10600000003045489FF00000009138671080000000400000009000000020F350CFA000000020CFD9BFD0F350D06045489FF1386AD080C9A86FA0F878D0500000009000000020F875105000000020C9A8706000000090F878CFD00000003000000090000000413867108000000040C9A86FA0F878D050C9A87060F8750FD078000F6128A7D010AD3577900000009000000090000000000000009000000030F878CFD00000003078000F6128A7D010AD3577910D13D02022A457F0000000913E1C508000000040DE7C9FA000000090000000900000001000000090000000000000009000000020F875105000000020C9A87060F8750FD078000F6128A7D010AD3577910D13D02022A457F0000000913E1C508000000040B4D43FA10804D050B4D44060000000910804CFD00000003000000090000000210801105000000020B4D4406108010FD08C000F600000008000000090000000310804CFD0000000308C000F611FC25010BE879B91011AD020115233F0000000913F85908000000040AA6A27A0000000700000009000000010000000900000000000000090000000110D10102000000010000000900000000128A41010000000000000009000000030F878CFD00000003078000F6128A7D010AD3577910D13D02022A457F13E201080B4D43FA00000009000000090000000413E1C508000000040B4D43FA10804D050DE7CA06000000090E6014FD0000000308C000F611FC25010BE879B9000000090000000900000000000000090000000210801105000000020DE7CA060E5FD8FD08C000F611FC25010BE879B91011AD020115233F0000000913F85908000000040AA6A27A10EDAD05000000090000000210ED7105000000020D412886000000090EFA4CFD0000000300000009000000011011710200000001000000090000000000000009000000030E6014FD0000000308C000F611FC25010BE879B91011AD020115233F0000000913F85908000000040DAED87D0E9661060AA6A27A0000000910ED710500000002096000F611AABD01000000090000000000000005000000030E962506000000030AA6A27A10EDAD050000000900000002000000050000000110117102000000010000000900000000000000050000000110D1010200000001022A457F0000000913E1C508000000040B4D43FA000000090000000900000000128A4101000000000AD357790000000900000009000000030F34D10600000003045489FF1386AD080C9A86FA0F878D0500000009000000020F87510500000002078000F60000000A000000090000000413867108000000040C9A86FA0F878D05078000F6128A7D010AD3577910D13D020AD3577D10D13D06022A457F00000009000000080000000310D1010600000003000000080000000110D10102000000010000000900000000128A41010000000000000008000000020F87510500000002078000F6128A7D010AD3577910D13D020AD3577D10D13D06022A457F13E201080B4D43FA00000009000000090000000413E1C508000000040B4D43FA10804D0508C000F611FC25010BE879B91011AD020BE879BD1011AD060000000900000003000000080000000100000009000000000000000500000002000000050000000310D1010600000003000000050000000110D1010200000001000000050000000000000005"
theorem small_4146971_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4146971_right_root small_4146971_right_fuel small_4146971_right_count small_4146971_right_encoded = true := by
  decide +kernel
theorem small_4146971_right_covered : CoveredBy scale carrier boxes small_4146971_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4146971_right_root small_4146971_right_fuel small_4146971_right_count small_4146971_right_encoded small_4146971_right_checked

theorem cover_4146971 : CoveredBy scale carrier boxes root_4146971 := by
  apply coveredBy_split_literal root_4146971 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1556.root small_4146971_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1556.covered
  · exact small_4146971_right_covered
#print axioms cover_4146971

def root_4146966 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146966_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146966_right_fuel : Nat := 1
def small_4146966_right_count : Nat := 1
def small_4146966_right_encoded : String := "00000000"
theorem small_4146966_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4146966_right_root small_4146966_right_fuel small_4146966_right_count small_4146966_right_encoded = true := by
  decide +kernel
theorem small_4146966_right_covered : CoveredBy scale carrier boxes small_4146966_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4146966_right_root small_4146966_right_fuel small_4146966_right_count small_4146966_right_encoded small_4146966_right_checked

theorem cover_4146966 : CoveredBy scale carrier boxes root_4146966 := by
  apply coveredBy_split_literal root_4146966 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.root_4146971 small_4146966_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.cover_4146971
  · exact small_4146966_right_covered
#print axioms cover_4146966

def root_4146965 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146965_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146965_right_fuel : Nat := 21
def small_4146965_right_count : Nat := 97
def small_4146965_right_encoded : String := "135D4501000000000CFD9BF90F350D020CFD9C050F34D0FA0CFD9BFD000000060F34D1060000000300000006000000020F350CFA000000020CFD9BFD0F350D06045489FF1386AD080C9A87020F8750F90000000600000001000000090000000413867108000000040C9A87020F8750F90C9A86FA000000060F875105000000020C9A87060F8750FD000000060000000300000006000000010F878CF9000000010C9A86FA0F878D0500000009000000020F875105000000020C9A8706000000090F878CFD00000003028000F613D7ED01022A457F0000000913E1C508000000040DE7CA0200000008000000090000000000000005000000030F34D10600000003045489FF1386AD080C9A870200000006000000090000000413867108000000040C9A8702000000060F878CF90000000100000008000000010F34D102000000010CFD9C05000000090F350CFA000000020CFD9BFD0F350D06045489FF00000009138671080000000400000009000000030F34D10600000003045489FF0000000900000008"
theorem small_4146965_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4146965_right_root small_4146965_right_fuel small_4146965_right_count small_4146965_right_encoded = true := by
  decide +kernel
theorem small_4146965_right_covered : CoveredBy scale carrier boxes small_4146965_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4146965_right_root small_4146965_right_fuel small_4146965_right_count small_4146965_right_encoded small_4146965_right_checked

theorem cover_4146965 : CoveredBy scale carrier boxes root_4146965 := by
  apply coveredBy_split_literal root_4146965 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.root_4146966 small_4146965_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.cover_4146966
  · exact small_4146965_right_covered
#print axioms cover_4146965

def root_4146959 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146959_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146959_left_fuel : Nat := 1
def small_4146959_left_count : Nat := 1
def small_4146959_left_encoded : String := "00000004"
theorem small_4146959_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4146959_left_root small_4146959_left_fuel small_4146959_left_count small_4146959_left_encoded = true := by
  decide +kernel
theorem small_4146959_left_covered : CoveredBy scale carrier boxes small_4146959_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4146959_left_root small_4146959_left_fuel small_4146959_left_count small_4146959_left_encoded small_4146959_left_checked

theorem cover_4146959 : CoveredBy scale carrier boxes root_4146959 := by
  apply coveredBy_split_literal root_4146959 small_4146959_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.root_4146965 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4146959_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.cover_4146965
#print axioms cover_4146959

def root_4146705 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146705_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146705_left_fuel : Nat := 18
def small_4146705_left_count : Nat := 117
def small_4146705_left_encoded : String := "12073D08050000F6135D81010CFD9BF90F350D020CFD9C050F34D0FA0CFD9BFD0F350D060CFD9BFF000000090F34D1080000000400000006000000030F34D106000000030CFD9BFF000000060F34D1080000000400000006000000020F350CFA000000020CFD9BFD0F350D060CFD9BFF0F350D080C9A87020F8750F9000000090000000100000009000000040F34D108000000040C9A87020F8750F90C9A86FA000000060F875105000000020C9A87060F8750FD000000060000000300000006000000010F878CF9000000010C9A86FA0000000900000009000000030F34D106000000030CFD9BFF0F350D080C9A87020F8750F90000000A0000000100000009000000040F34D108000000040C9A87020F8750F900000006000000010F878CF9000000010C9A86FA0000000900000009000000010F34D102000000010CFD9C05000000090F350CFA000000020CFD9BFD0F350D0600000009000000030000000900000000135D4501000000000CFD9BF90F350D020CFD9C05000000090F350CFA000000020CFD9BFD0F350D060CFD9BFF000000090F34D1080000000400000009000000030F34D106000000030CFD9BFF000000090F34D1080000000400000009000000010F34D102000000010000000900000004"
theorem small_4146705_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4146705_left_root small_4146705_left_fuel small_4146705_left_count small_4146705_left_encoded = true := by
  decide +kernel
theorem small_4146705_left_covered : CoveredBy scale carrier boxes small_4146705_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4146705_left_root small_4146705_left_fuel small_4146705_left_count small_4146705_left_encoded small_4146705_left_checked

theorem cover_4146705 : CoveredBy scale carrier boxes root_4146705 := by
  apply coveredBy_split_literal root_4146705 small_4146705_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.root_4146959 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4146705_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.cover_4146959
#print axioms cover_4146705

def root_4146700 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146700_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146700_right_fuel : Nat := 1
def small_4146700_right_count : Nat := 1
def small_4146700_right_encoded : String := "00000003"
theorem small_4146700_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4146700_right_root small_4146700_right_fuel small_4146700_right_count small_4146700_right_encoded = true := by
  decide +kernel
theorem small_4146700_right_covered : CoveredBy scale carrier boxes small_4146700_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4146700_right_root small_4146700_right_fuel small_4146700_right_count small_4146700_right_encoded small_4146700_right_checked

theorem cover_4146700 : CoveredBy scale carrier boxes root_4146700 := by
  apply coveredBy_split_literal root_4146700 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.root_4146705 small_4146700_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.cover_4146705
  · exact small_4146700_right_covered
#print axioms cover_4146700

def root_4146699 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146699_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146699_right_fuel : Nat := 23
def small_4146699_right_count : Nat := 233
def small_4146699_right_encoded : String := "120701060000000308A912FF12073D08050000F6135D81010CFD9BF90F350D020CFD9C050F34D0FA0000000A000000020F350CFA00000002045489FD1386AD060CFD9BFF0000000A0F34D108000000040C9A87020F8750F900000006000000010000000A000000030000000A000000010F34D102000000010000000A00000000135D4501000000000CFD9BF90F350D020CFD9C050F34D0FA045489FD000000060000000A000000020F350CFA00000002045489FD1386AD060CFD9BFF000000090F34D10800000004000000090000000313867106000000030CFD9BFF0000000900000009000000010F34D1020000000100000009000000041207010800000004050000F6135D81010CFD9BF90F350D020CFD9C050F34D0FA045489FD00000006138671060000000300000006000000020F350CFA00000002045489FD1386AD06045489FF1386AD080C9A87020F8750F900000006000000010F878CF9000000010C9A86FA0000000A0F87510500000002078000F60000000A0000000A0000000413867108000000040C9A87020F8750F90C9A86FA000000060F87510500000002078000F6128A7D01067ECE7D0000000612EA590600000003000000060000000000000008000000010F878CF9000000010C9A86FA0F878D0500000008000000020F87510500000002078000F6128A7D01067ECE7D12EA9506022A457F0000000A000000080000000312EA590600000003000000080000000000000005000000031386710600000003045489FF1386AD080C9A87020F8750F90C9A86FA000000060F87510500000002078000F60000000700000007000000010000000A0000000413867108000000040C9A87020F8750F90C9A86FA000000060F87510500000002078000F6128A7D01000000080000000000000005000000010F878CF90000000100000008000000010F34D102000000010CFD9C050F34D0FA045489FD0000000800000008000000020F350CFA00000002045489FD1386AD06045489FF0000000A13867108000000040C9A86FA0F878D050000000800000002000000050000000313867106000000030000000A00000000135D4501000000000CFD9BF90F350D020CFD9C050F34D0FA00000006000000020F350CFA00000002045489FD1386AD06045489FF1386AD080C9A870200000006000000090000000400000008000000031386710600000003045489FF1386AD080C9A870200000006000000050000000400000008000000010F34D102000000010CFD9C05000000080F350CFA0000000200000005"
theorem small_4146699_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4146699_right_root small_4146699_right_fuel small_4146699_right_count small_4146699_right_encoded = true := by
  decide +kernel
theorem small_4146699_right_covered : CoveredBy scale carrier boxes small_4146699_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4146699_right_root small_4146699_right_fuel small_4146699_right_count small_4146699_right_encoded small_4146699_right_checked

theorem cover_4146699 : CoveredBy scale carrier boxes root_4146699 := by
  apply coveredBy_split_literal root_4146699 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.root_4146700 small_4146699_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.cover_4146700
  · exact small_4146699_right_covered
#print axioms cover_4146699

def root_4146693 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146693_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146693_left_fuel : Nat := 1
def small_4146693_left_count : Nat := 1
def small_4146693_left_encoded : String := "00000002"
theorem small_4146693_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4146693_left_root small_4146693_left_fuel small_4146693_left_count small_4146693_left_encoded = true := by
  decide +kernel
theorem small_4146693_left_covered : CoveredBy scale carrier boxes small_4146693_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4146693_left_root small_4146693_left_fuel small_4146693_left_count small_4146693_left_encoded small_4146693_left_checked

theorem cover_4146693 : CoveredBy scale carrier boxes root_4146693 := by
  apply coveredBy_split_literal root_4146693 small_4146693_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.root_4146699 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4146693_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.cover_4146699
#print axioms cover_4146693

def root_4146579 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146579_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146579_left_fuel : Nat := 10
def small_4146579_left_count : Nat := 53
def small_4146579_left_encoded : String := "120700FA08A912FD12073D0608A912FF12073D08050000F60000000900000009000000041207010800000004050000F6135D81010CFD9BF90F350D0200000006000000010F34D102000000010000000900000000135D4501000000000000000900000003120701060000000308A912FF12073D08050000F6135D81010CFD9BF90F350D0200000006000000010000000A00000000135D4501000000000CFD9BF90000000600000008000000041207010800000004050000F6135D81010CFD9BF90000000600000008000000000000000800000002"
theorem small_4146579_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4146579_left_root small_4146579_left_fuel small_4146579_left_count small_4146579_left_encoded = true := by
  decide +kernel
theorem small_4146579_left_covered : CoveredBy scale carrier boxes small_4146579_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4146579_left_root small_4146579_left_fuel small_4146579_left_count small_4146579_left_encoded small_4146579_left_checked

theorem cover_4146579 : CoveredBy scale carrier boxes root_4146579 := by
  apply coveredBy_split_literal root_4146579 small_4146579_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.root_4146693 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4146579_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.cover_4146693
#print axioms cover_4146579

def root_4146574 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146574_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146574_right_fuel : Nat := 1
def small_4146574_right_count : Nat := 1
def small_4146574_right_encoded : String := "00000001"
theorem small_4146574_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4146574_right_root small_4146574_right_fuel small_4146574_right_count small_4146574_right_encoded = true := by
  decide +kernel
theorem small_4146574_right_covered : CoveredBy scale carrier boxes small_4146574_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4146574_right_root small_4146574_right_fuel small_4146574_right_count small_4146574_right_encoded small_4146574_right_checked

theorem cover_4146574 : CoveredBy scale carrier boxes root_4146574 := by
  apply coveredBy_split_literal root_4146574 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.root_4146579 small_4146574_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.cover_4146579
  · exact small_4146574_right_covered
#print axioms cover_4146574

def root_4146573 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146573_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146573_right_fuel : Nat := 22
def small_4146573_right_count : Nat := 101
def small_4146573_right_encoded : String := "120701020000000108A91305120700FA08A912FD00000009120701060000000308A912FF00000009000000080000000212073CFA0000000208A912FD12073D0608A912FF12073D08050000F6135D8101045489F900000009000000090000000000000009000000041207010800000004050000F6135D8101045489F91386AD020CFD9C050F34D0FA00000009000000020F350CFA000000020CFD9BFD0F350D06045489FF0000000913867108000000040C9A86FA0F878D0500000009000000020F875105000000020C9A8706000000090F878CFD0000000300000009000000030F34D10600000003045489FF0000000913867108000000040C9A86FA00000009000000050000000113867102000000010CFD9C05000000090F350CFA000000020CFD9BFD0F350D0600000009000000030000000900000000135D450100000000045489F9000000090000000900000003120701060000000308A912FF000000091207010800000004050000F6135D8101045489F91386AD020CFD9C05000000080000000A000000010000000A0000000000000005"
theorem small_4146573_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4146573_right_root small_4146573_right_fuel small_4146573_right_count small_4146573_right_encoded = true := by
  decide +kernel
theorem small_4146573_right_covered : CoveredBy scale carrier boxes small_4146573_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4146573_right_root small_4146573_right_fuel small_4146573_right_count small_4146573_right_encoded small_4146573_right_checked

theorem cover_4146573 : CoveredBy scale carrier boxes root_4146573 := by
  apply coveredBy_split_literal root_4146573 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.root_4146574 small_4146573_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.cover_4146574
  · exact small_4146573_right_covered
#print axioms cover_4146573

def root_4146567 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146567_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146567_left_fuel : Nat := 1
def small_4146567_left_count : Nat := 1
def small_4146567_left_encoded : String := "00000004"
theorem small_4146567_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4146567_left_root small_4146567_left_fuel small_4146567_left_count small_4146567_left_encoded = true := by
  decide +kernel
theorem small_4146567_left_covered : CoveredBy scale carrier boxes small_4146567_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4146567_left_root small_4146567_left_fuel small_4146567_left_count small_4146567_left_encoded small_4146567_left_checked

theorem cover_4146567 : CoveredBy scale carrier boxes root_4146567 := by
  apply coveredBy_split_literal root_4146567 small_4146567_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.root_4146573 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4146567_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.cover_4146573
#print axioms cover_4146567

def root_4146395 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146395_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146395_left_fuel : Nat := 16
def small_4146395_left_count : Nat := 79
def small_4146395_left_encoded : String := "1151E8FF08A912F912073D0208A91305120700FA08A912FD12073D06050000F6135D810105000108135D44FF00000009000000040000000900000000135D45010000000005000108135D44FF0000000900000004000000090000000312070106000000030000000A0000000212073CFA0000000208A912FD12073D06050000F6135D810105000108135D44FF0CFD9BF90F350D020CFD9C05000000090000000A000000010000000900000004135D80FF000000040CFD9BF90F350D020CFD9C05000000090F350CFA0000000200000009000000010000000900000000135D45010000000005000108135D44FF0CFD9BF90F350D0200000009000000010000000900000004000000090000000312070106000000030000000A00000001120701020000000108A91305120700FA0000000A000000020000000A00000004"
theorem small_4146395_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4146395_left_root small_4146395_left_fuel small_4146395_left_count small_4146395_left_encoded = true := by
  decide +kernel
theorem small_4146395_left_covered : CoveredBy scale carrier boxes small_4146395_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4146395_left_root small_4146395_left_fuel small_4146395_left_count small_4146395_left_encoded small_4146395_left_checked

theorem cover_4146395 : CoveredBy scale carrier boxes root_4146395 := by
  apply coveredBy_split_literal root_4146395 small_4146395_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.root_4146567 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4146395_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.cover_4146567
#print axioms cover_4146395

def root_4146389 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146389_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4146389_left_fuel : Nat := 1
def small_4146389_left_count : Nat := 1
def small_4146389_left_encoded : String := "00000003"
theorem small_4146389_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4146389_left_root small_4146389_left_fuel small_4146389_left_count small_4146389_left_encoded = true := by
  decide +kernel
theorem small_4146389_left_covered : CoveredBy scale carrier boxes small_4146389_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4146389_left_root small_4146389_left_fuel small_4146389_left_count small_4146389_left_encoded small_4146389_left_checked

theorem cover_4146389 : CoveredBy scale carrier boxes root_4146389 := by
  apply coveredBy_split_literal root_4146389 small_4146389_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.root_4146395 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4146389_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.cover_4146395
#print axioms cover_4146389

def root_4145759 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4145759_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4145759_left_fuel : Nat := 29
def small_4145759_left_count : Nat := 301
def small_4145759_left_encoded : String := "1151E8FD0A0001081151E8FF08A912F9000000090000000900000004115224FF0000000408A912F912073D0208A91305120700FA08A912FF000000091207010800000004050000F6135D81010500010600000009135D80FD000000030CFD9BF9000000090000000900000000000000090000000212073CFA0000000208A912FF12073D08050000F6135D810105000106135D44FD0CFD9BF90F350D020CFD9C05000000090F350CFA000000020CFD9BFF0000000900000005000000010F34D102000000010000000900000003135D80FD000000030CFD9BF90F350D020CFD9C050F34D0FA00000009000000020F350CFA000000020CFD9BFF000000090F34D108000000040C9A87020F8750F90C9A86FA00000005000000090000000100000009000000010F34D102000000010000000900000000135D4501000000000500010600000009135D80FD000000030CFD9BF90000000900000009000000041207010800000004050000F6135D810105000106135D44FD0CFD9BF90F350D020CFD9C050F34D0FA000000050000000200000005000000010F34D102000000010CFD9C05000000090F350CFA00000002045489FF000000090000000500000003135D80FD000000030CFD9BF90F350D020CFD9C050F34D0FA045489FF0000000900000005000000020F350CFA00000002045489FF1386AD080C9A87020F8750F90C9A86FA000000050F8751050000000200000005000000010F878CF9000000010C9A86FA000000050F87510500000002078000F600000005000000090000000413867108000000040C9A8702000000050F878CF9000000010C9A86FA000000050F87510500000002078000F600000005128A4101000000000780010600000005128A7CFD00000003022A457F0000000900000007000000010F34D102000000010CFD9C050F34D0FA00000009000000020F350CFA00000002045489FF0000000913867108000000040C9A86FA0F878D05078000F60000000500000009000000020F87510500000002078000F6128A7D010780010600000008128A7CFD000000030AD3577910D13D02022A457F00000008000000070000000110D10102000000010000000900000000128A4101000000000000000900000000135D45010000000005000106135D44FD0CFD9BF90F350D020CFD9C05000000090F350CFA00000002045489FF0000000900000007000000010F34D102000000010000000900000003135D80FD000000030CFD9BF90F350D020CFD9C050F34D0FA00000009000000020F350CFA00000002045489FF1386AD08000000090000000413867108000000040C9A87020F8750F90C9A86FA000000060F87510500000002028000F613D7ED010780010600000005000000060000000000000009000000010F878CF9000000010C9A86FA0000000900000009000000010F34D102000000010000000900000001120701020000000108A913050000000912073CFA0000000208A912FF000000091207010800000004050000F6135D810105000106135D44FD045489F9000000090000000900000003135D80FD00000003045489F91386AD020CFD9C05000000090F350CFA00000002045489FF0000000913867108000000040000000900000001138671020000000100000009000000000000000900000003"
theorem small_4145759_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4145759_left_root small_4145759_left_fuel small_4145759_left_count small_4145759_left_encoded = true := by
  decide +kernel
theorem small_4145759_left_covered : CoveredBy scale carrier boxes small_4145759_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4145759_left_root small_4145759_left_fuel small_4145759_left_count small_4145759_left_encoded small_4145759_left_checked

theorem cover_4145759 : CoveredBy scale carrier boxes root_4145759 := by
  apply coveredBy_split_literal root_4145759 small_4145759_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.root_4146389 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4145759_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.cover_4146389
#print axioms cover_4145759

def root_4145754 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4145754_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4145754_right_fuel : Nat := 1
def small_4145754_right_count : Nat := 1
def small_4145754_right_encoded : String := "00000002"
theorem small_4145754_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4145754_right_root small_4145754_right_fuel small_4145754_right_count small_4145754_right_encoded = true := by
  decide +kernel
theorem small_4145754_right_covered : CoveredBy scale carrier boxes small_4145754_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4145754_right_root small_4145754_right_fuel small_4145754_right_count small_4145754_right_encoded small_4145754_right_checked

theorem cover_4145754 : CoveredBy scale carrier boxes root_4145754 := by
  apply coveredBy_split_literal root_4145754 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.root_4145759 small_4145754_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299.cover_4145759
  · exact small_4145754_right_covered
#print axioms cover_4145754

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0299
