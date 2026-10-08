import TaoBundleAssembly0008
import TaoBundleAssembly0009
import TaoBundleChunkBatch0028
import TaoBundleChunkBatch0029
import TaoBundleChunkBatch0032
import TaoBundleChunkBatch0033
import TaoBundleChunkBatch0034
import TaoBundleChunkBatch0035
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010
def root_334691 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_334691_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_334691_right_fuel : Nat := 28
def small_334691_right_count : Nat := 309
def small_334691_right_encoded : String := "0F34D10400000002045489FD1386AD060CFD9BFF0F350D080C9A87080F8750FF022A457713E200F600000000022A45790000000A13E1C4F80AD3577B000000070000000A000000010000000A000000040F878CFF00000004022A457713E200F600000000022A457913E200F8000000010AD3577B0000000A0000000913E1C4F80AD3577B10D13D04067ECE7D0000000912EA5906000000030000000900000002000000090000000113E1C4F6022A45790000000A13E1C4F8000000090000000100000000000000040F34D10800000004000000090000000313867106000000030CFD9BFF0F350D080C9A87080F8750FF022A457713E200F600000000022A457913E200F8000000010AD3577B10D13D04022A457D0000000A13E1C506000000030B4D44080000000710804CFF00000004033F67B70000000700000008000000020000000A13E1C4F80AD3577B00000007000000070000000113E1C4F6022A457913E200F8000000010AD3577B0000000A0000000A13E1C4F80AD3577B10D13D040000000500000002000000050000000100000000000000040F878CFF00000004022A457713E200F600000000022A457913E200F8000000010AD3577B10D13D04022A457D13E201060DE7CA080000000A0E6014FF00000004033F67B700000009000000090000000313E1C506000000030DE7CA080E5FD8FF033F67B713BC30F600000000033F67B913BC30F8000000010BE879BB1011AD040115233D0000000A13F85906000000030D412888000000050EFA4CFF0000000400000005000000020000000A13BBF4F80BE879BB00000007000000050000000113BBF4F6033F67B90000000A0000000500000000000000040E6014FF00000004033F67B713BC30F600000000033F67B913BC30F8000000010BE879BB1011AD040115233D0000000913F85906000000030DAED87F0E966108000000050000000400000005000000020000000913BBF4F80BE879BB1011AD040115233D000000090000000500000002000000050000000113BBF4F6033F67B913BC30F8000000010BE879BB1011AD040115233D0000000900000005000000020000000500000005000000000000000210D1010400000002022A457D0000000913E1C506000000030DE7CA080000000A0000000913E1C4F80AD3577B10D13D04022A457D13E201060DE7CA080E5FD8FF00000007000000040E6014FF00000004000000090000000313E1C506000000030DE7CA08000000050E6014FF00000004000000050000000210D1010400000002022A457D00000009000000050000000113E1C4F6022A457913E200F8000000010AD3577B10D13D04022A457D0000000A13E1C506000000030DE7CA08000000050E6014FF00000004000000050000000210D10104000000020000000A13E1C4F80AD3577B10D13D04022A457D13E201060DE7CA080000000500000009000000030000000500000002000000050000000100000000000000040F34D10800000004022A457713E200F600000000022A457913E200F8000000010AD3577B10D13D04022A457D0000000913E1C506000000030AD3577F10D13D08000000090000000400000009000000020000000913E1C4F80AD3577B10D13D040000000900000002000000090000000113E1C4F6022A457913E200F8000000010AD3577B10D13D040000000900000002000000090000000900000000"
theorem small_334691_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_334691_right_root small_334691_right_fuel small_334691_right_count small_334691_right_encoded = true := by
  decide +kernel
theorem small_334691_right_covered : CoveredBy scale carrier boxes small_334691_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_334691_right_root small_334691_right_fuel small_334691_right_count small_334691_right_encoded small_334691_right_checked

theorem cover_334691 : CoveredBy scale carrier boxes root_334691 := by
  apply coveredBy_split_literal root_334691 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0009.root_334692 small_334691_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0009.cover_334692
  · exact small_334691_right_covered
#print axioms cover_334691

def root_334686 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_334686_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_334686_right_fuel : Nat := 1
def small_334686_right_count : Nat := 1
def small_334686_right_encoded : String := "00000001"
theorem small_334686_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_334686_right_root small_334686_right_fuel small_334686_right_count small_334686_right_encoded = true := by
  decide +kernel
theorem small_334686_right_covered : CoveredBy scale carrier boxes small_334686_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_334686_right_root small_334686_right_fuel small_334686_right_count small_334686_right_encoded small_334686_right_checked

theorem cover_334686 : CoveredBy scale carrier boxes root_334686 := by
  apply coveredBy_split_literal root_334686 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_334691 small_334686_right_root coord1 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_334691
  · exact small_334686_right_covered
#print axioms cover_334686

def root_330384 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_330384 : CoveredBy scale carrier boxes root_330384 := by
  apply coveredBy_split_literal root_330384 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0009.root_330385 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_334686 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0009.cover_330385
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_334686
#print axioms cover_330384

def root_330379 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_330379_right_root : ZRayBox := fun j => (#[⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_330379_right_fuel : Nat := 1
def small_330379_right_count : Nat := 1
def small_330379_right_encoded : String := "00000000"
theorem small_330379_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_330379_right_root small_330379_right_fuel small_330379_right_count small_330379_right_encoded = true := by
  decide +kernel
theorem small_330379_right_covered : CoveredBy scale carrier boxes small_330379_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_330379_right_root small_330379_right_fuel small_330379_right_count small_330379_right_encoded small_330379_right_checked

theorem cover_330379 : CoveredBy scale carrier boxes root_330379 := by
  apply coveredBy_split_literal root_330379 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_330384 small_330379_right_root coord0 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_330384
  · exact small_330379_right_covered
#print axioms cover_330379

def root_316349 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_316349 : CoveredBy scale carrier boxes root_316349 := by
  apply coveredBy_split_literal root_316349 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0009.root_316350 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_330379 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0009.cover_316350
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_330379
#print axioms cover_316349

def root_316344 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_316344_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_316344_right_fuel : Nat := 1
def small_316344_right_count : Nat := 1
def small_316344_right_encoded : String := "00000004"
theorem small_316344_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_316344_right_root small_316344_right_fuel small_316344_right_count small_316344_right_encoded = true := by
  decide +kernel
theorem small_316344_right_covered : CoveredBy scale carrier boxes small_316344_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_316344_right_root small_316344_right_fuel small_316344_right_count small_316344_right_encoded small_316344_right_checked

theorem cover_316344 : CoveredBy scale carrier boxes root_316344 := by
  apply coveredBy_split_literal root_316344 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_316349 small_316344_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_316349
  · exact small_316344_right_covered
#print axioms cover_316344

def root_316343 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_316343_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_316343_right_fuel : Nat := 15
def small_316343_right_count : Nat := 85
def small_316343_right_encoded : String := "1207010800000004045489F71386ACF600000000045489F91386ACF8000000010CFD9BFB0F350D04045489FD000000081386710600000003045489FF1386AD080C9A8704000000080F878CFB00000002000000080000000400000007000000020F34D10400000002045489FD000000081386710600000003045489FF1386AD08067ECE7700000008000000090000000400000008138670F80CFD9BFB0F350D0400000008000000020F34D104000000020000000900000001138670F6045489F91386ACF8000000010CFD9BFB0F350D04045489FD1386AD06000000070000000300000007000000020F34D1040000000200000009138670F80CFD9BFB0F350D04045489FD000000081386710600000003045489FF1386AD080C9A8704000000080F878CFB00000002022A457700000008000000090000000400000008000000020F34D10400000002000000090000000100000000"
theorem small_316343_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_316343_right_root small_316343_right_fuel small_316343_right_count small_316343_right_encoded = true := by
  decide +kernel
theorem small_316343_right_covered : CoveredBy scale carrier boxes small_316343_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_316343_right_root small_316343_right_fuel small_316343_right_count small_316343_right_encoded small_316343_right_checked

theorem cover_316343 : CoveredBy scale carrier boxes root_316343 := by
  apply coveredBy_split_literal root_316343 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_316344 small_316343_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_316344
  · exact small_316343_right_covered
#print axioms cover_316343

def root_316337 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_316337_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_316337_left_fuel : Nat := 1
def small_316337_left_count : Nat := 1
def small_316337_left_encoded : String := "00000003"
theorem small_316337_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_316337_left_root small_316337_left_fuel small_316337_left_count small_316337_left_encoded = true := by
  decide +kernel
theorem small_316337_left_covered : CoveredBy scale carrier boxes small_316337_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_316337_left_root small_316337_left_fuel small_316337_left_count small_316337_left_encoded small_316337_left_checked

theorem cover_316337 : CoveredBy scale carrier boxes root_316337 := by
  apply coveredBy_split_literal root_316337 small_316337_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_316343 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_316337_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_316343
#print axioms cover_316337

def root_315269 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_315269_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_315269_left_fuel : Nat := 26
def small_315269_left_count : Nat := 495
def small_315269_left_encoded : String := "12073D0608A912FF12073D08045489F71386ACF600000000045489F91386ACF8000000010CFD9BFB0F350D040CFD9BFD0F350D060CFD9BFF0F350D080C9A87040F8750FB000000050000000200000005000000040F34D108000000040C9A8704000000080F878CFB000000020C9A87060F8750FD000000050000000300000008000000030F34D106000000030CFD9BFF0F350D080C9A87040F8750FB0C9A87080F8750FF000000050000000400000005000000020F878CFB000000020C9A87080F8750FF00000005000000040F878CFF00000004067ECE770000000512EA58F6067ECE790000000512EA58F80AD3577D0000000510D1010600000003000000050000000100000000000000040F34D1080000000400000008000000020F34D104000000020CFD9BFD0F350D060CFD9BFF0F350D080C9A87060F8750FD0000000A000000030000000A000000040F34D1080000000400000009000000030F34D106000000030CFD9BFF0F350D080000000A000000040F34D10800000004067ECE770000000900000009138670F80CFD9BFB0F350D040CFD9BFD0F350D060CFD9BFF0F350D080C9A8704000000080F878CFB000000020C9A87060F8750FD00000008000000030F878CFD00000003000000080000000400000008000000030F34D106000000030CFD9BFF0F350D080C9A87040F8750FB0C9A87080F8750FF000000080000000400000008000000020F878CFB000000020C9A87080F8750FF067ECE770000000812EA58F6022A45790000000A0000000800000000000000040F878CFF00000004000000080000000400000008000000020F34D104000000020CFD9BFD0F350D060CFD9BFF0F350D080C9A87060F8750FD00000009000000030F878CFD000000030C9A87080000000A000000090000000400000009000000030F34D106000000030CFD9BFF0F350D080C9A87080F8750FF067ECE7712EA94F6000000000000000A0000000A000000040F878CFF00000004067ECE7712EA94F600000000022A457913E200F800000001000000080000000812EA58F60000000900000000000000040F34D108000000040000000800000001138670F6045489F91386ACF8000000010CFD9BFB0F350D040CFD9BFD0F350D060CFD9BFF0F350D080C9A87040F8750FB0C9A87060F8750FD00000005000000030000000A000000020F878CFB000000020000000A000000040F34D108000000040C9A87040F8750FB0C9A87060F8750FD000000080000000300000008000000020F878CFB0000000200000009000000030F34D106000000030CFD9BFF0F350D080C9A87040F8750FB0C9A87080000000A0F878CFF00000004022A457713E200F600000000067ECE79000000050000000813E1C4F6067ECE790000000A12EA58F80000000A0000000100000000000000020F878CFB000000020000000A000000040F34D108000000040C9A87040F8750FB022A45770000000813E1C4F6067ECE79000000060000000800000000000000020F878CFB00000002022A457713E200F600000000067ECE7912EA94F8000000010000000A0000000813E1C4F6067ECE79000000090000000900000000000000020F34D104000000020CFD9BFD0F350D060CFD9BFF0000000A00000009000000030F34D106000000030000000A138670F80CFD9BFB0F350D040CFD9BFD0F350D060CFD9BFF0F350D080C9A87040F8750FB0C9A87060F8750FD0C9A87080000000800000008000000030F878CFD000000030C9A87080F8750FF022A4577000000080000000A0000000400000008000000020F878CFB000000020C9A87060F8750FD0C9A87080000000A00000009000000030F878CFD000000030C9A87080000000A0F878CFF0000000400000009000000040F34D1080000000400000008000000030F34D106000000030CFD9BFF0F350D080C9A87040F8750FB0C9A87080F8750FF022A457713E200F600000000022A457913E200F8000000010AD3577D0000000810D10106000000030B4D4404000000080000000A0000000813E1C4F6022A45790000000A13E1C4F80AD3577D0000000810D10106000000030B4D44040000000810804CFB000000020000000A0000000100000000000000040F878CFF00000004022A45770000000813E1C4F6022A457913E200F8000000010AD3577D0000000810D1010600000003000000060000000800000000000000020F878CFB000000020C9A87080F8750FF022A457713E200F600000000022A45790000000A13E1C4F80AD3577D0000000810D101060000000300000007000000010000000A000000040F878CFF00000004022A457713E200F600000000022A457913E200F8000000010AD3577D0000000810D1010600000003000000080000000813E1C4F6022A45790000000A13E1C4F80AD3577D0000000810D1010600000003000000090000000100000000000000040F34D1080000000400000008000000020F34D104000000020CFD9BFD000000090F34D106000000030CFD9BFF0F350D080000000A00000004000000090000000100000000000000041207010800000004045489F71386ACF600000000045489F91386ACF8000000010CFD9BFB0F350D0400000008000000020F34D104000000020000000900000008138670F6045489F91386ACF8000000010CFD9BFB0F350D040CFD9BFD000000080F34D10600000003000000080000000200000009138670F800000009000000010000000000000003"
theorem small_315269_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_315269_left_root small_315269_left_fuel small_315269_left_count small_315269_left_encoded = true := by
  decide +kernel
theorem small_315269_left_covered : CoveredBy scale carrier boxes small_315269_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_315269_left_root small_315269_left_fuel small_315269_left_count small_315269_left_encoded small_315269_left_checked

theorem cover_315269 : CoveredBy scale carrier boxes root_315269 := by
  apply coveredBy_split_literal root_315269 small_315269_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_316337 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_315269_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_316337
#print axioms cover_315269

def root_315264 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_315264_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_315264_right_fuel : Nat := 1
def small_315264_right_count : Nat := 1
def small_315264_right_encoded : String := "00000002"
theorem small_315264_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_315264_right_root small_315264_right_fuel small_315264_right_count small_315264_right_encoded = true := by
  decide +kernel
theorem small_315264_right_covered : CoveredBy scale carrier boxes small_315264_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_315264_right_root small_315264_right_fuel small_315264_right_count small_315264_right_encoded small_315264_right_checked

theorem cover_315264 : CoveredBy scale carrier boxes root_315264 := by
  apply coveredBy_split_literal root_315264 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_315269 small_315264_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_315269
  · exact small_315264_right_covered
#print axioms cover_315264

def root_315263 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_315263_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_315263_right_fuel : Nat := 19
def small_315263_right_count : Nat := 169
def small_315263_right_encoded : String := "120701040000000208A912FD12073D0608A912FF12073D08045489F71386ACF600000000045489F91386ACF800000001045489FB1386AD040CFD9BFD0F350D060CFD9BFF0000000A00000009000000030F34D106000000030000000A000000020000000A138670F8045489FB1386AD040CFD9BFD000000090F34D106000000030CFD9BFF0F350D08000000090000000400000009000000020000000900000001138670F6045489F90000000A138670F80000000900000001000000000000000412070108000000040000000900000003120701060000000308A912FF12073D08045489F71386ACF600000000045489F91386ACF800000001045489FB1386AD04045489FD0000000A13867106000000030CFD9BFF0F350D080C9A87080000000A0F878CFF000000040000000A000000040F34D10800000004067ECE7700000009000000090000000213867104000000020000000A138670F8045489FB1386AD04045489FD1386AD060CFD9BFF0F350D080000000600000004000000090000000313867106000000030CFD9BFF0F350D0800000006000000040F34D1080000000400000009000000021386710400000002045489FD000000060000000600000001138670F6045489F91386ACF800000001045489FB1386AD04045489FD0000000A13867106000000030CFD9BFF0F350D080000000A000000040000000A000000020000000A138670F8045489FB1386AD04045489FD1386AD060CFD9BFF0F350D080000000A00000004000000090000000313867106000000030CFD9BFF0F350D080C9A87080000000A0F878CFF00000004022A45770000000900000009000000040F34D1080000000400000009000000021386710400000002045489FD00000009138671060000000300000009000000010000000000000004120701080000000400000009"
theorem small_315263_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_315263_right_root small_315263_right_fuel small_315263_right_count small_315263_right_encoded = true := by
  decide +kernel
theorem small_315263_right_covered : CoveredBy scale carrier boxes small_315263_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_315263_right_root small_315263_right_fuel small_315263_right_count small_315263_right_encoded small_315263_right_checked

theorem cover_315263 : CoveredBy scale carrier boxes root_315263 := by
  apply coveredBy_split_literal root_315263 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_315264 small_315263_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_315264
  · exact small_315263_right_covered
#print axioms cover_315263

def root_315258 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_315258_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_315258_right_fuel : Nat := 1
def small_315258_right_count : Nat := 1
def small_315258_right_encoded : String := "00000001"
theorem small_315258_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_315258_right_root small_315258_right_fuel small_315258_right_count small_315258_right_encoded = true := by
  decide +kernel
theorem small_315258_right_covered : CoveredBy scale carrier boxes small_315258_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_315258_right_root small_315258_right_fuel small_315258_right_count small_315258_right_encoded small_315258_right_checked

theorem cover_315258 : CoveredBy scale carrier boxes root_315258 := by
  apply coveredBy_split_literal root_315258 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_315263 small_315258_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_315263
  · exact small_315258_right_covered
#print axioms cover_315258

def root_313806 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_313806 : CoveredBy scale carrier boxes root_313806 := by
  apply coveredBy_split_literal root_313806 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0115.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_315258 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0115.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_315258
#print axioms cover_313806

def root_313801 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_313801_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_313801_right_fuel : Nat := 1
def small_313801_right_count : Nat := 1
def small_313801_right_encoded : String := "00000000"
theorem small_313801_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_313801_right_root small_313801_right_fuel small_313801_right_count small_313801_right_encoded = true := by
  decide +kernel
theorem small_313801_right_covered : CoveredBy scale carrier boxes small_313801_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_313801_right_root small_313801_right_fuel small_313801_right_count small_313801_right_encoded small_313801_right_checked

theorem cover_313801 : CoveredBy scale carrier boxes root_313801 := by
  apply coveredBy_split_literal root_313801 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_313806 small_313801_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_313806
  · exact small_313801_right_covered
#print axioms cover_313801

def root_311393 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_311393 : CoveredBy scale carrier boxes root_311393 := by
  apply coveredBy_split_literal root_311393 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0114.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_313801 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0114.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_313801
#print axioms cover_311393

def root_311387 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_311387_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_311387_left_fuel : Nat := 1
def small_311387_left_count : Nat := 1
def small_311387_left_encoded : String := "00000004"
theorem small_311387_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_311387_left_root small_311387_left_fuel small_311387_left_count small_311387_left_encoded = true := by
  decide +kernel
theorem small_311387_left_covered : CoveredBy scale carrier boxes small_311387_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_311387_left_root small_311387_left_fuel small_311387_left_count small_311387_left_encoded small_311387_left_checked

theorem cover_311387 : CoveredBy scale carrier boxes root_311387 := by
  apply coveredBy_split_literal root_311387 small_311387_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_311393 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_311387_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_311393
#print axioms cover_311387

def root_308977 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_308977 : CoveredBy scale carrier boxes root_308977 := by
  apply coveredBy_split_literal root_308977 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0113.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_311387 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0113.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_311387
#print axioms cover_308977

def root_308971 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_308971_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_308971_left_fuel : Nat := 1
def small_308971_left_count : Nat := 1
def small_308971_left_encoded : String := "00000003"
theorem small_308971_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_308971_left_root small_308971_left_fuel small_308971_left_count small_308971_left_encoded = true := by
  decide +kernel
theorem small_308971_left_covered : CoveredBy scale carrier boxes small_308971_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_308971_left_root small_308971_left_fuel small_308971_left_count small_308971_left_encoded small_308971_left_checked

theorem cover_308971 : CoveredBy scale carrier boxes root_308971 := by
  apply coveredBy_split_literal root_308971 small_308971_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_308977 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_308971_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_308977
#print axioms cover_308971

def root_307511 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_307511 : CoveredBy scale carrier boxes root_307511 := by
  apply coveredBy_split_literal root_307511 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0112.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_308971 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0112.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_308971
#print axioms cover_307511

def root_307505 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_307505_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_307505_left_fuel : Nat := 1
def small_307505_left_count : Nat := 1
def small_307505_left_encoded : String := "00000002"
theorem small_307505_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_307505_left_root small_307505_left_fuel small_307505_left_count small_307505_left_encoded = true := by
  decide +kernel
theorem small_307505_left_covered : CoveredBy scale carrier boxes small_307505_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_307505_left_root small_307505_left_fuel small_307505_left_count small_307505_left_encoded small_307505_left_checked

theorem cover_307505 : CoveredBy scale carrier boxes root_307505 := by
  apply coveredBy_split_literal root_307505 small_307505_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_307511 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_307505_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_307511
#print axioms cover_307505

def root_303085 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_303085 : CoveredBy scale carrier boxes root_303085 := by
  apply coveredBy_split_literal root_303085 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0009.root_303086 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_307505 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0009.cover_303086
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_307505
#print axioms cover_303085

def root_303079 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_303079_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_303079_left_fuel : Nat := 1
def small_303079_left_count : Nat := 1
def small_303079_left_encoded : String := "00000001"
theorem small_303079_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_303079_left_root small_303079_left_fuel small_303079_left_count small_303079_left_encoded = true := by
  decide +kernel
theorem small_303079_left_covered : CoveredBy scale carrier boxes small_303079_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_303079_left_root small_303079_left_fuel small_303079_left_count small_303079_left_encoded small_303079_left_checked

theorem cover_303079 : CoveredBy scale carrier boxes root_303079 := by
  apply coveredBy_split_literal root_303079 small_303079_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_303085 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_303079_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_303085
#print axioms cover_303079

def root_303078 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_303078_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_303078_right_fuel : Nat := 22
def small_303078_right_count : Nat := 267
def small_303078_right_encoded : String := "1151E8F90A0001041151E8FB0A0001061151E8FD0000000500000003115224FD000000030A0001081151E8FF0000000500000004115224FF0000000408A912F712073CF60000000008A912FD00000005120701060000000308A912FF00000005120701080000000400000005120700F608A912FD12073D0608A912FF000000051207010800000004050000F8135D80F90000000105000104135D44FB045489F700000005138670F60CFD9BFD00000005000000070000000000000002000000050000000500000003120701060000000308A912FF12073D08050000F8135D80F90000000105000104135D44FB045489F70000000500000007000000020000000500000005000000041207010800000004050000F800000007135D44F900000007000000010000000000000002115224FB000000020A0001061151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A912F712073CF60000000008A912FB00000005120701040000000208A912FF00000005120701080000000400000005120700F608A912FB12073D0408A912FF000000051207010800000004050000F8135D80F90000000105000106135D44FD045489F700000005138670F60CFD9BFB00000005000000070000000000000003000000050000000500000002120701040000000208A912FF0000000A1207010800000004050000F8000000070000000A0000000000000003115224FD000000030A0001081151E8FF08A912F712073CF60000000008A912FB0000000512070104000000020000000A120700F608A912FB12073D0408A912FD000000051207010600000003050000F80000000A000000050000000212070104000000020000000A0000000000000004115224FF0000000408A912F712073CF60000000008A912FB12073D0408A912FD12073D0608A912FF0000000512070108000000040000000500000003120701060000000308A912FF0000000512070108000000040000000500000002120701040000000208A912FD12073D0608A912FF0000000512070108000000040000000500000003120701060000000308A912FF00000005120701080000000400000005120700F608A912FB12073D0408A912FD12073D0608A912FF12073D08050000F80000000A00000005000000041207010800000004050000F8135D80F900000001045489F71386ACF6000000000CFD9BFB0000000500000007138670F60CFD9BFB0F350D040000000A000000020000000A00000000135D44F9000000050000000100000003120701060000000308A912FF12073D08050000F8135D80F900000001045489F71386ACF6000000000CFD9BFB000000050000000A138670F60CFD9BFB0000000A0000000A00000000135D44F900000005000000010000000412070108000000040000000700000002120701040000000208A912FD0000000A12070106000000030000000A0000000000000001"
theorem small_303078_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_303078_right_root small_303078_right_fuel small_303078_right_count small_303078_right_encoded = true := by
  decide +kernel
theorem small_303078_right_covered : CoveredBy scale carrier boxes small_303078_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_303078_right_root small_303078_right_fuel small_303078_right_count small_303078_right_encoded small_303078_right_checked

theorem cover_303078 : CoveredBy scale carrier boxes root_303078 := by
  apply coveredBy_split_literal root_303078 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_303079 small_303078_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_303079
  · exact small_303078_right_covered
#print axioms cover_303078

def root_303072 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_303072_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_303072_left_fuel : Nat := 1
def small_303072_left_count : Nat := 1
def small_303072_left_encoded : String := "00000000"
theorem small_303072_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_303072_left_root small_303072_left_fuel small_303072_left_count small_303072_left_encoded = true := by
  decide +kernel
theorem small_303072_left_covered : CoveredBy scale carrier boxes small_303072_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_303072_left_root small_303072_left_fuel small_303072_left_count small_303072_left_encoded small_303072_left_checked

theorem cover_303072 : CoveredBy scale carrier boxes root_303072 := by
  apply coveredBy_split_literal root_303072 small_303072_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_303078 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_303072_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_303078
#print axioms cover_303072

def root_303071 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_303071_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_303071_right_fuel : Nat := 25
def small_303071_right_count : Nat := 309
def small_303071_right_encoded : String := "1151E8F70A0000F8115224F9000000010A0001041151E8FB0A0001061151E8FD0000000500000003115224FD000000030A0001081151E8FF0000000500000004115224FF0000000408A912F912073CF80000000108A912FD00000005120701060000000308A912FF0000000500000008120700F808A912FD00000008120701060000000308A912FF12073D08050000F6000000080000000500000004000000080000000100000002115224FB000000020A0001061151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A912F912073CF80000000108A912FB00000005120701040000000208A912FF0000000500000006120700F808A912FB12073D0408A912FF000000050000000800000002120701040000000208A912FF12073D08050000F6135D80F70000000005000106135D44FD045489F900000005138670F8045489FB0000000513867104000000020000000500000001000000030000000500000005000000041207010800000004050000F600000006000000080000000100000003115224FD000000030A0001081151E8FF08A912F912073CF80000000108A912FB00000005120701040000000208A912FD0000000500000006120700F808A912FB12073D0408A912FD000000051207010600000003050000F6135D80F70000000005000108135D44FF045489F9000000050000000600000004000000050000000500000002120701040000000208A912FD12073D06050000F6135D80F70000000005000108135D44FF045489F900000005138670F8045489FB000000050000000A00000001000000040000000500000005000000031207010600000003050000F600000006135D44F700000006000000000000000100000004115224FF0000000408A912F912073CF80000000108A912FB12073D0408A912FD12073D0608A912FF0000000512070108000000040000000500000003120701060000000308A912FF0000000512070108000000040000000500000002120701040000000208A912FD12073D0608A912FF0000000512070108000000040000000500000003120701060000000308A912FF00000005120701080000000400000005120700F808A912FB12073D0408A912FD12073D0608A912FF12073D08050000F60000000800000005000000040000000800000003120701060000000308A912FF12073D08050000F6135D80F700000000045489F91386ACF8000000010CFD9BFB000000050F34D1040000000200000005138670F80CFD9BFB0F350D0400000008000000020000000800000001135D44F700000005000000000000000412070108000000040000000800000002120701040000000208A912FD12073D0608A912FF12073D08050000F6135D80F700000000045489F91386ACF800000001045489FB00000005138671040000000200000005138670F8045489FB0000000813867104000000020CFD9BFD000000080000000600000001135D44F70000000500000000000000040000000800000003120701060000000308A912FF12073D08000000060000000400000006000000011151E8F90A0001041151E8FB0000000500000002115224FB000000020A0001061151E8FD0000000500000003115224FD000000030A0001081151E8FF0000000500000004115224FF0000000408A912FB000000051207010400000002000000050000000100000000"
theorem small_303071_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_303071_right_root small_303071_right_fuel small_303071_right_count small_303071_right_encoded = true := by
  decide +kernel
theorem small_303071_right_covered : CoveredBy scale carrier boxes small_303071_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_303071_right_root small_303071_right_fuel small_303071_right_count small_303071_right_encoded small_303071_right_checked

theorem cover_303071 : CoveredBy scale carrier boxes root_303071 := by
  apply coveredBy_split_literal root_303071 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_303072 small_303071_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_303072
  · exact small_303071_right_covered
#print axioms cover_303071

def root_343543 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_343543 : CoveredBy scale carrier boxes root_343543 := by
  apply coveredBy_split_literal root_343543 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0125.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0126.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0125.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0126.covered
#print axioms cover_343543

def root_343537 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_343537_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_343537_left_fuel : Nat := 1
def small_343537_left_count : Nat := 1
def small_343537_left_encoded : String := "00000000"
theorem small_343537_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_343537_left_root small_343537_left_fuel small_343537_left_count small_343537_left_encoded = true := by
  decide +kernel
theorem small_343537_left_covered : CoveredBy scale carrier boxes small_343537_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_343537_left_root small_343537_left_fuel small_343537_left_count small_343537_left_encoded small_343537_left_checked

theorem cover_343537 : CoveredBy scale carrier boxes root_343537 := by
  apply coveredBy_split_literal root_343537 small_343537_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_343543 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_343537_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_343543
#print axioms cover_343537

def root_343536 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_343536_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_343536_right_fuel : Nat := 21
def small_343536_right_count : Nat := 293
def small_343536_right_encoded : String := "1151E8F70A0000F8115224F9000000010A0001041151E8FB0A0001061151E8FD0A0001081151E9090000000408A912F9000000080000000611522509000000080000000400000003115224FD000000030A0001081151E9090000000408A912F912073CF80000000108A912FD12073D06050000F600000008135D44F70500010400000009135D80FB000000020500010800000006000000080000000000000003120701060000000300000009120700F808A912FD12073D06050000F6135D80F70000000005000104135D44FB05000108000000060000000900000002000000060000000600000003120701060000000300000009000000011152250908A912F912073CF80000000108A912FD12073D060000000800000003120701060000000308A913090000000700000007120700F808A912FD12073D0608A913090000000812073D08050000F6135D80F70000000000000008135D44F70500010400000007135D80FB00000002045489F9000000070000000A000000000000000400000003120701060000000308A913090000000812073D08050000F6135D80F7000000000500010400000007000000070000000700000004000000010000000400000002115224FB000000020A0001061151E8FD0A0001081151E90900000004000000061152250908A912F912073CF80000000108A912FB12073D0408A913091207010800000004000000070000000800000002120701040000000200000006120700F800000008000000010000000400000003115224FD000000030A0001081151E9090000000408A912F912073CF80000000108A912FB12073D0408A912FD12073D0600000008000000031207010600000003000000090000000200000009120700F808A912FB12073D0408A912FD000000061207010600000003000000090000000200000006000000011152250908A912F912073CF80000000108A912FB12073D0408A912FD00000008120701060000000308A913091207010800000004000000080000000800000002120701040000000208A912FD12073D0608A913091207010800000004000000080000000800000003120701060000000308A913090000000800000008120700F808A912FB12073D0408A912FD00000008120701060000000308A9130912070108000000040000000812073D08050000F600000008000000080000000400000002120701040000000208A912FD0000000812070106000000030000000800000001000000041151E8F90A0001041151E8FB0A0001061151E8FD0000000500000003115224FD000000030A0001081151E90900000004000000080000000800000002115224FB000000020A0001061151E8FD0A0001081151E90900000004000000081152250908A912FB12073D0408A913090000000500000008000000021207010400000002000000060000000400000003115224FD000000030A0001081151E90900000004000000081152250908A912FB12073D0408A912FD12073D0608A9130900000005000000080000000312070106000000030000000700000002120701040000000208A912FD12073D060000000700000003120701060000000300000005000000040000000100000000"
theorem small_343536_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_343536_right_root small_343536_right_fuel small_343536_right_count small_343536_right_encoded = true := by
  decide +kernel
theorem small_343536_right_covered : CoveredBy scale carrier boxes small_343536_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_343536_right_root small_343536_right_fuel small_343536_right_count small_343536_right_encoded small_343536_right_checked

theorem cover_343536 : CoveredBy scale carrier boxes root_343536 := by
  apply coveredBy_split_literal root_343536 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_343537 small_343536_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_343537
  · exact small_343536_right_covered
#print axioms cover_343536

def root_303070 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_303070 : CoveredBy scale carrier boxes root_303070 := by
  apply coveredBy_split_literal root_303070 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_303071 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_343536 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_303071
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_343536
#print axioms cover_303070

def root_297156 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_297156 : CoveredBy scale carrier boxes root_297156 := by
  apply coveredBy_split_literal root_297156 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0008.root_297157 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_303070 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0008.cover_297157
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_303070
#print axioms cover_297156

def root_347541 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_347541_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_347541_right_fuel : Nat := 24
def small_347541_right_count : Nat := 373
def small_347541_right_encoded : String := "1151E8F70A0000F8115224F9000000010A0001041151E8FB0A0001061151E907000000030A0000FE115224FF0000000408A912F912073CF80000000108A912FF00000006120700FE050000F6135D80F7000000000500010400000006135D80FB00000002000000060000000600000004120700F800000006000000011151E8FF0000000600000004115225070A0000FE115224FF0000000408A912F912073CF80000000108A913070000000612073D0608A912FF000000060000000600000003000000061151E8FF08A912F912073CF80000000108A913070000000512073D06050000F6135D80F7000000000500010400000006000000060000000600000003120700F808A913071207010600000003050000F600000006135D44F700000006000000000000000600000001000000040000000300000002115224FB000000020A0001061151E907000000030A0000FE115224FF0000000408A912F912073CF80000000108A912FB12073D0408A912FF12073CFE00000004050000F60000000800000006120700FE050000F6135D80F70000000000000005135D44F70500010600000005135D81070CFD9BF9000000080000000500000003000000000000000400000002120701040000000208A912FF0000000800000005120700F808A912FB12073D0408A912FF00000006000000050000000200000005000000011151E8FF08A912F900000006120700F8000000060000000100000004115225070A0000FE115224FF0000000408A912F912073CF80000000108A912FB12073D0408A913070000000612073D0608A912FF00000006120700FE050000F6135D80F7000000000CFD9BF90F350CF8000000010CFD9BFB0F350D040000000600000002000000060F34D0F80000000600000001135D44F70CFD9BF9000000060000000600000000000000040000000300000002120701040000000208A9130712070106000000030000000612073D0608A912FF00000006120700FE050000F6135D80F7000000000CFD9BF90000000A00000005135D44F70CFD9BF90000000600000006000000000000000400000003120700F808A912FB12073D0408A91307000000060000000600000002120701040000000208A9130712070106000000030000000612073D0608A912FF000000060000000500000003000000011151E8FF08A912F912073CF80000000100000006120700F808A912FB000000061207010400000002000000060000000100000004000000031151E8F90A0001041151E8FB0A0001061151E907000000030A0000FE115224FF0000000408A912FF12073CFE00000004050000F6135D80F700000000050000F8000000060000000700000006000000071151E8FF0000000500000004115225070A0000FE115224FF0000000408A91307120701060000000308A912FF000000050000000612073D0608A912FF00000006120700FE050000F6135D80F700000000050000F800000006000000090000000600000004000000031151E8FF00000005000000040000000300000002115224FB000000020A0001061151E907000000030A0000FE115224FF0000000408A912FB12073D0408A912FF00000008120700FE050000F600000008135D44F7050000F800000008135D44F900000007000000010000000000000004000000021207010400000002000000081151E8FF0000000800000004115225070A0000FE115224FF0000000408A912FB12073D0408A9130712070106000000030000000A12073D0608A912FF12073CFE00000004050000F6135D80F700000000050000F8135D80F9000000010CFD9BFB00000006000000060000000A135D44F7050000F8000000060000000A00000000120700FE050000F6135D80F7000000000000000A135D44F7050000F8135D80F9000000010CFD9BFB0F350D040000000600000002000000090000000A00000000000000040000000300000002120701040000000208A913070000000A0000000A1151E8FF08A912FB12073D0408A913070000000500000006000000020000000600000004000000030000000100000000"
theorem small_347541_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_347541_right_root small_347541_right_fuel small_347541_right_count small_347541_right_encoded = true := by
  decide +kernel
theorem small_347541_right_covered : CoveredBy scale carrier boxes small_347541_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_347541_right_root small_347541_right_fuel small_347541_right_count small_347541_right_encoded small_347541_right_checked

theorem cover_347541 : CoveredBy scale carrier boxes root_347541 := by
  apply coveredBy_split_literal root_347541 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0127.root small_347541_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0127.covered
  · exact small_347541_right_covered
#print axioms cover_347541

def root_347540 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_347540 : CoveredBy scale carrier boxes root_347540 := by
  apply coveredBy_split_literal root_347540 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_347541 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0128.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_347541
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0128.covered
#print axioms cover_347540

def root_357772 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_357772_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_357772_right_fuel : Nat := 26
def small_357772_right_count : Nat := 307
def small_357772_right_encoded : String := "12070108000000040CFD9BF70F350CF6000000000CFD9BF90F350CF8000000010CFD9BFB0F350D0404548A07000000051386AD06045489FF000000050000000700000003000000020F34D1040000000204548A07000000051386AD06045489FF00000005138671080000000400000005000000030F34D0F80CFD9BFB0F350D0404548A07000000081386AD06045489FF1386AD080C9A86F60000000A0F8750F70000000800000000000000040000000800000003000000020F34D1040000000204548A071386710600000003000000081386AD06045489FF1386AD080C9A86F60F878CF7000000000AD3577910D13CF8000000010AD3577B0000000510D10104000000020000000510D100F80AD3577B10D13D040000000A0000000210D1010400000002067ECE870000000812EA95060000000A00000003000000010F8750F700000005000000000000000413867108000000040C9A86F6000000080000000800000003000000010F34D0F60CFD9BF90F350CF8000000010CFD9BFB0F350D0400000007000000020F34D1040000000204548A07000000071386AD06045489FF1386AD080C9A86F80F878CF9000000010AD3577710D13CF6000000000000000700000007000000070000000400000007000000030F34D0F80CFD9BFB0F350D0404548A071386710600000003045489FF1386AD080C9A8704000000070F878CFB000000020AD35777000000080000000700000004000000071386AD06045489FF1386AD080C9A8704000000070F878CFB000000020AD357770000000A00000007000000040000000700000003000000020F34D1040000000204548A071386710600000003045489FF1386AD080AD3577710D13CF6000000000AD3577910D13CF800000001000000050000000810D100F60AD3577910D13CF8000000010000000710D100F80AD3577B10D13D04022A458700000007000000070000000210D1010400000002000000090000000100000000000000041386710800000004000000071386AD06045489FF1386AD080AD3577710D13CF6000000000AD3577910D13CF8000000010AD3577B10D13D04000000070000000210D1010400000002067ECE8712EA5906000000030000000512EA9506067ECE7F12EA95080000000700000004000000070000000310D100F80AD3577B10D13D040000000A0000000210D1010400000002067ECE8712EA590600000003067ECE7F12EA95080BE879B71011ACF60000000000000005101170F609BE353911777CF80000000100000005117740F8000000090000000100000000000000040000000812EA9506067ECE7F12EA95080BE879B70000000A101170F60000000A000000000000000412EA59080000000400000007000000030000000110D100F60AD3577910D13CF8000000010AD3577B000000070000000710D100F80AD3577B10D13D04067ECE8700000007000000070000000210D1010400000002067ECE8712EA590600000003067ECE7F12EA950809BE353711777CF60000000009BE353900000007117740F8000000090000000100000007000000040000000712EA9506067ECE7F12EA950809BE353711777CF600000000000000070000000700000004000000070000000300000001000000000000000413867108000000040AD3577710D13CF6000000000000000700000007000000030000000100000000"
theorem small_357772_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_357772_right_root small_357772_right_fuel small_357772_right_count small_357772_right_encoded = true := by
  decide +kernel
theorem small_357772_right_covered : CoveredBy scale carrier boxes small_357772_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_357772_right_root small_357772_right_fuel small_357772_right_count small_357772_right_encoded small_357772_right_checked

theorem cover_357772 : CoveredBy scale carrier boxes root_357772 := by
  apply coveredBy_split_literal root_357772 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0131.root small_357772_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0131.covered
  · exact small_357772_right_covered
#print axioms cover_357772

def root_357766 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_357766_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_357766_left_fuel : Nat := 1
def small_357766_left_count : Nat := 1
def small_357766_left_encoded : String := "00000003"
theorem small_357766_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_357766_left_root small_357766_left_fuel small_357766_left_count small_357766_left_encoded = true := by
  decide +kernel
theorem small_357766_left_covered : CoveredBy scale carrier boxes small_357766_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_357766_left_root small_357766_left_fuel small_357766_left_count small_357766_left_encoded small_357766_left_checked

theorem cover_357766 : CoveredBy scale carrier boxes root_357766 := by
  apply coveredBy_split_literal root_357766 small_357766_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_357772 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_357766_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_357772
#print axioms cover_357766

def root_357765 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_357765 : CoveredBy scale carrier boxes root_357765 := by
  apply coveredBy_split_literal root_357765 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_357766 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0132.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_357766
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0132.covered
#print axioms cover_357765

def root_357760 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_357760_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_357760_right_fuel : Nat := 1
def small_357760_right_count : Nat := 1
def small_357760_right_encoded : String := "00000002"
theorem small_357760_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_357760_right_root small_357760_right_fuel small_357760_right_count small_357760_right_encoded = true := by
  decide +kernel
theorem small_357760_right_covered : CoveredBy scale carrier boxes small_357760_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_357760_right_root small_357760_right_fuel small_357760_right_count small_357760_right_encoded small_357760_right_checked

theorem cover_357760 : CoveredBy scale carrier boxes root_357760 := by
  apply coveredBy_split_literal root_357760 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_357765 small_357760_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_357765
  · exact small_357760_right_covered
#print axioms cover_357760

def root_363439 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_363439 : CoveredBy scale carrier boxes root_363439 := by
  apply coveredBy_split_literal root_363439 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0133.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0134.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0133.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0134.covered
#print axioms cover_363439

def root_363433 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_363433_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_363433_left_fuel : Nat := 1
def small_363433_left_count : Nat := 1
def small_363433_left_encoded : String := "00000002"
theorem small_363433_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_363433_left_root small_363433_left_fuel small_363433_left_count small_363433_left_encoded = true := by
  decide +kernel
theorem small_363433_left_covered : CoveredBy scale carrier boxes small_363433_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_363433_left_root small_363433_left_fuel small_363433_left_count small_363433_left_encoded small_363433_left_checked

theorem cover_363433 : CoveredBy scale carrier boxes root_363433 := by
  apply coveredBy_split_literal root_363433 small_363433_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_363439 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_363433_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_363439
#print axioms cover_363433

def root_357759 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_357759 : CoveredBy scale carrier boxes root_357759 := by
  apply coveredBy_split_literal root_357759 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_357760 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_363433 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_357760
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_363433
#print axioms cover_357759

def root_357753 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_357753_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_357753_left_fuel : Nat := 1
def small_357753_left_count : Nat := 1
def small_357753_left_encoded : String := "00000001"
theorem small_357753_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_357753_left_root small_357753_left_fuel small_357753_left_count small_357753_left_encoded = true := by
  decide +kernel
theorem small_357753_left_covered : CoveredBy scale carrier boxes small_357753_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_357753_left_root small_357753_left_fuel small_357753_left_count small_357753_left_encoded small_357753_left_checked

theorem cover_357753 : CoveredBy scale carrier boxes root_357753 := by
  apply coveredBy_split_literal root_357753 small_357753_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_357759 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_357753_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_357759
#print axioms cover_357753

def root_367121 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_367121_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_367121_right_fuel : Nat := 18
def small_367121_right_count : Nat := 113
def small_367121_right_encoded : String := "12073D0608A912FF12073D080CFD9BF70F350CF600000000045489F91386ACF8000000010CFD9BFB0F350D040000000A000000020F34D104000000020CFD9C070F34D106000000030CFD9BFF0F350D0800000006000000040F34D108000000040000000A0F350D060000000A00000003138670F80000000A000000010F34D0F6045489F91386ACF8000000010CFD9BFB0F350D040CFD9C070F34D106000000030CFD9BFF0F350D080C9A87040000000A0F878CFB000000020C9A87080F8750FF00000009000000040000000A000000040F34D108000000040000000A0000000A000000020F34D104000000020CFD9C070F34D106000000030CFD9BFF0F350D080C9A8708000000060F878CFF000000040AD3577710D13CF6000000000000000610D100F60000000800000000000000040F34D108000000040AD357770000000A10D100F60000000A000000000F350D060CFD9BFF000000080F34D108000000040000000A00000003138670F80CFD9BFB0000000A0F34D104000000020CFD9C070F34D106000000030CFD9BFF0F350D0800000006000000040F34D108000000040000000A0000000A00000001000000000000000412070108000000040000000A00000003"
theorem small_367121_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_367121_right_root small_367121_right_fuel small_367121_right_count small_367121_right_encoded = true := by
  decide +kernel
theorem small_367121_right_covered : CoveredBy scale carrier boxes small_367121_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_367121_right_root small_367121_right_fuel small_367121_right_count small_367121_right_encoded small_367121_right_checked

theorem cover_367121 : CoveredBy scale carrier boxes root_367121 := by
  apply coveredBy_split_literal root_367121 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0135.root small_367121_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0135.covered
  · exact small_367121_right_covered
#print axioms cover_367121

def root_367116 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_367116_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_367116_right_fuel : Nat := 1
def small_367116_right_count : Nat := 1
def small_367116_right_encoded : String := "00000002"
theorem small_367116_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_367116_right_root small_367116_right_fuel small_367116_right_count small_367116_right_encoded = true := by
  decide +kernel
theorem small_367116_right_covered : CoveredBy scale carrier boxes small_367116_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_367116_right_root small_367116_right_fuel small_367116_right_count small_367116_right_encoded small_367116_right_checked

theorem cover_367116 : CoveredBy scale carrier boxes root_367116 := by
  apply coveredBy_split_literal root_367116 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_367121 small_367116_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_367121
  · exact small_367116_right_covered
#print axioms cover_367116

def root_367115 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_367115_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_367115_right_fuel : Nat := 26
def small_367115_right_count : Nat := 337
def small_367115_right_encoded : String := "120701040000000208A91307120701060000000308A912FF12073D080CFD9BF70F350CF600000000045489F91386ACF80000000100000006000000060F34D0F6045489F91386ACF800000001045489FB1386AD0404548A0713867106000000030CFD9BFF0F350D0800000006000000040F34D108000000040AD357770000000610D100F6067ECE7912EA94F800000001067ECE7B12EA9504022A45870000000600000006000000020000000600000006000000001386AD060CFD9BFF0F350D0800000006000000040F34D108000000040AD357770000000610D100F6067ECE7912EA94F800000001067ECE7B12EA9504067ECE870000000600000006000000020000000600000006000000000000000300000002138671040000000204548A070000000600000006138670F8045489FB1386AD0404548A070000000600000006000000020000000600000001000000000000000412070108000000040CFD9BF70F350CF600000000045489F91386ACF800000001045489FB1386AD0404548A07000000081386AD06045489FF0000000600000008000000030000000200000006000000060F34D0F6045489F91386ACF800000001045489FB1386AD0404548A071386710600000003045489FF1386AD080AD35777000000090000000900000004000000081386AD06045489FF1386AD080AD3577710D13CF600000000067ECE7912EA94F800000001067ECE7B12EA9504067ECE87000000060000000600000002000000060000000610D100F6067ECE7912EA94F800000001067ECE7B12EA9504067ECE870000000912EA9506067ECE7F12EA950800000006000000040000000900000003000000020000000912EA58F8067ECE7B12EA9504067ECE87000000060000000A00000002000000060000000100000000000000041386710800000004000000090000000300000002138671040000000200000009138670F8045489FB1386AD0404548A071386710600000003000000081386AD06045489FF0000000600000009000000030000000200000009000000010000000012073D0608A912FF12073D080CFD9BF70F350CF600000000045489F91386ACF800000001045489FB1386AD04000000060000000200000006000000060F34D0F6045489F91386ACF800000001045489FB1386AD040CFD9C070F34D106000000030CFD9BFF000000060F34D108000000040AD357770000000610D100F6067ECE7912EA94F800000001067ECE7B12EA95040AD357870000000600000006000000020000000600000006000000000F350D06000000080000000300000002138671040000000200000006138670F8045489FB1386AD040CFD9C070000000600000006000000020000000600000001000000000000000412070108000000040CFD9BF70F350CF600000000045489F91386ACF800000001045489FB1386AD040CFD9C070F34D10600000003045489FF0000000613867108000000040000000A0000000A0000000213867104000000020CFD9C070000000600000006138670F8045489FB0000000A00000006000000010F34D0F6045489F91386ACF800000001045489FB1386AD040CFD9C070F34D10600000003045489FF1386AD080AD357770000000A10D100F6067ECE7912EA94F800000001067ECE7B0000000A12EA5904000000020AD3578700000006000000050000000A000000000000000413867108000000040AD357770000000A10D100F600000005000000000000000A0000000213867104000000020CFD9C070F34D10600000003045489FF000000061386710800000004000000090F350D060000000500000003138670F8045489FB0000000A00000005000000010000000000000003"
theorem small_367115_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_367115_right_root small_367115_right_fuel small_367115_right_count small_367115_right_encoded = true := by
  decide +kernel
theorem small_367115_right_covered : CoveredBy scale carrier boxes small_367115_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_367115_right_root small_367115_right_fuel small_367115_right_count small_367115_right_encoded small_367115_right_checked

theorem cover_367115 : CoveredBy scale carrier boxes root_367115 := by
  apply coveredBy_split_literal root_367115 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_367116 small_367115_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_367116
  · exact small_367115_right_covered
#print axioms cover_367115

def root_367110 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_367110_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_367110_right_fuel : Nat := 1
def small_367110_right_count : Nat := 1
def small_367110_right_encoded : String := "00000001"
theorem small_367110_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_367110_right_root small_367110_right_fuel small_367110_right_count small_367110_right_encoded = true := by
  decide +kernel
theorem small_367110_right_covered : CoveredBy scale carrier boxes small_367110_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_367110_right_root small_367110_right_fuel small_367110_right_count small_367110_right_encoded small_367110_right_checked

theorem cover_367110 : CoveredBy scale carrier boxes root_367110 := by
  apply coveredBy_split_literal root_367110 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_367115 small_367110_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_367115
  · exact small_367110_right_covered
#print axioms cover_367110

def root_357752 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_357752 : CoveredBy scale carrier boxes root_357752 := by
  apply coveredBy_split_literal root_357752 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_357753 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_367110 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_357753
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_367110
#print axioms cover_357752

def root_357746 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_357746_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_357746_left_fuel : Nat := 1
def small_357746_left_count : Nat := 1
def small_357746_left_encoded : String := "00000000"
theorem small_357746_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_357746_left_root small_357746_left_fuel small_357746_left_count small_357746_left_encoded = true := by
  decide +kernel
theorem small_357746_left_covered : CoveredBy scale carrier boxes small_357746_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_357746_left_root small_357746_left_fuel small_357746_left_count small_357746_left_encoded small_357746_left_checked

theorem cover_357746 : CoveredBy scale carrier boxes root_357746 := by
  apply coveredBy_split_literal root_357746 small_357746_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_357752 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_357746_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_357752
#print axioms cover_357746

def root_371175 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_371175_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_371175_right_fuel : Nat := 19
def small_371175_right_count : Nat := 157
def small_371175_right_encoded : String := "12073D0608A912FF12073D08045489F71386ACF6000000000CFD9BF90F350CF8000000010CFD9BFB0F350D040CFD9C070F34D106000000030CFD9BFF0F350D0800000008000000040F34D10800000004000000070F350D060000000800000003000000020F34D10400000002000000080F34D0F80CFD9BFB0F350D040CFD9C070F34D106000000030CFD9BFF0F350D080C9A87040F8750FB0C9A870800000008000000090000000200000008000000040F34D108000000040C9A8704000000070F878CFB00000002067ECE7712EA94F6000000000AD35779000000070000000A000000070F350D060CFD9BFF000000080F34D108000000040000000A00000003000000020F34D104000000020CFD9C070F34D106000000030CFD9BFF000000080F34D10800000004067ECE7712EA94F6000000000AD357790000000810D100F80000000800000001000000080000000800000001138670F60CFD9BF9000000080F34D0F80CFD9BFB0F350D040CFD9C070F34D106000000030CFD9BFF000000080F34D108000000040000000700000008000000020F34D10400000002000000080000000100000000000000041207010800000004045489F71386ACF6000000000CFD9BF90F350CF8000000010CFD9BFB00000007000000070F34D0F80CFD9BFB0F350D0400000007000000020F34D104000000020CFD9C070F34D10600000003045489FF1386AD08067ECE7712EA94F6000000000AD357790000000710D100F80AD3577B0000000700000007000000010000000700000004000000070F350D06000000070000000300000001138670F60CFD9BF9000000070F34D0F80CFD9BFB0000000700000007000000010000000000000003"
theorem small_371175_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_371175_right_root small_371175_right_fuel small_371175_right_count small_371175_right_encoded = true := by
  decide +kernel
theorem small_371175_right_covered : CoveredBy scale carrier boxes small_371175_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_371175_right_root small_371175_right_fuel small_371175_right_count small_371175_right_encoded small_371175_right_checked

theorem cover_371175 : CoveredBy scale carrier boxes root_371175 := by
  apply coveredBy_split_literal root_371175 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0136.root small_371175_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0136.covered
  · exact small_371175_right_covered
#print axioms cover_371175

def root_371170 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_371170_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_371170_right_fuel : Nat := 1
def small_371170_right_count : Nat := 1
def small_371170_right_encoded : String := "00000002"
theorem small_371170_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_371170_right_root small_371170_right_fuel small_371170_right_count small_371170_right_encoded = true := by
  decide +kernel
theorem small_371170_right_covered : CoveredBy scale carrier boxes small_371170_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_371170_right_root small_371170_right_fuel small_371170_right_count small_371170_right_encoded small_371170_right_checked

theorem cover_371170 : CoveredBy scale carrier boxes root_371170 := by
  apply coveredBy_split_literal root_371170 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_371175 small_371170_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_371175
  · exact small_371170_right_covered
#print axioms cover_371170

def root_371169 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_371169_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_371169_right_fuel : Nat := 28
def small_371169_right_count : Nat := 353
def small_371169_right_encoded : String := "120701040000000208A91307120701060000000308A912FF12073D08045489F71386ACF6000000000CFD9BF90F350CF800000001045489FB1386AD0404548A070000000A1386AD060CFD9BFF000000080F34D108000000040C9A86F8000000080F8750F900000008000000010000000300000002138671040000000204548A070000000A000000080F34D0F8045489FB1386AD0404548A0713867106000000030CFD9BFF0F350D080C9A8708000000080F878CFF000000040000000A000000040F34D10800000004067ECE7712EA94F6000000000AD357790000000A10D100F8067ECE7B12EA9504022A45870000000A13E201060AD3577F10D13D080000000A0000000400000009000000030000000200000009000000010000000A1386AD060CFD9BFF000000080F34D10800000004067ECE7712EA94F6000000000AD357790000000810D100F8067ECE7B12EA9504067ECE8712EA5906000000030AD3577F0000000810D10108000000040793F0B700000009128220F60000000800000000000000080000000212EA590400000002067ECE8712EA5906000000030AD3577F00000006000000090000000800000001000000080000000300000002138671040000000204548A070000000A1386AD060CFD9BFF000000080F34D10800000004067ECE7712EA94F6000000000AD357790000000810D100F80000000600000001000000080000000300000001138670F60CFD9BF90F350CF800000001045489FB1386AD0404548A070000000A00000008000000020000000A0F34D0F8045489FB1386AD0404548A0713867106000000030CFD9BFF000000080000000A00000008000000021386710400000002000000080000000100000000000000041207010800000004045489F71386ACF6000000000CFD9BF90F350CF800000001045489FB1386AD0404548A0700000007000000070000000213867104000000020000000A0F34D0F8045489FB1386AD0404548A071386710600000003045489FF1386AD08067ECE77000000090000000900000004000000071386AD06045489FF1386AD08067ECE7712EA94F6000000000AD3577910D13CF800000001067ECE7B000000070000000910D100F8067ECE7B12EA9504067ECE870000000912EA9506000000070000000300000002000000090000000112EA58F60AD357790000000710D100F8067ECE7B000000070000000900000001000000000000000400000007000000030000000213867104000000020000000900000001138670F60CFD9BF90F350CF800000001000000070F34D0F8045489FB1386AD0404548A0700000007000000070000000200000009000000010000000012073D0608A912FF12073D0800000008000000041207010800000004045489F71386ACF6000000000CFD9BF90F350CF800000001045489FB1386AD040CFD9C07000000070F350D0600000007000000030000000213867104000000020CFD9C070F34D10600000003045489FF0000000800000007000000080F34D0F8045489FB1386AD040CFD9C070F34D10600000003045489FF1386AD08067ECE7712EA94F6000000000AD357790000000810D100F8067ECE7B12EA95040AD3578700000007000000080000000212EA5904000000020AD3578710D1010600000003067ECE7F000000080000000500000005000000010000000800000004000000070F350D0600000005000000030000000213867104000000020CFD9C070F34D10600000003045489FF1386AD08067ECE7712EA94F6000000000AD357790000000810D100F8000000050000000100000008000000041386710800000004000000090F350D06000000050000000300000001138670F60CFD9BF90F350CF800000001045489FB00000007000000070F34D0F8045489FB1386AD040CFD9C0700000007000000050000000200000005000000010000000000000003"
theorem small_371169_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_371169_right_root small_371169_right_fuel small_371169_right_count small_371169_right_encoded = true := by
  decide +kernel
theorem small_371169_right_covered : CoveredBy scale carrier boxes small_371169_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_371169_right_root small_371169_right_fuel small_371169_right_count small_371169_right_encoded small_371169_right_checked

theorem cover_371169 : CoveredBy scale carrier boxes root_371169 := by
  apply coveredBy_split_literal root_371169 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_371170 small_371169_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_371170
  · exact small_371169_right_covered
#print axioms cover_371169

def root_371163 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_371163_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_371163_left_fuel : Nat := 1
def small_371163_left_count : Nat := 1
def small_371163_left_encoded : String := "00000001"
theorem small_371163_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_371163_left_root small_371163_left_fuel small_371163_left_count small_371163_left_encoded = true := by
  decide +kernel
theorem small_371163_left_covered : CoveredBy scale carrier boxes small_371163_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_371163_left_root small_371163_left_fuel small_371163_left_count small_371163_left_encoded small_371163_left_checked

theorem cover_371163 : CoveredBy scale carrier boxes root_371163 := by
  apply coveredBy_split_literal root_371163 small_371163_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_371169 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_371163_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_371169
#print axioms cover_371163

def root_380981 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_380981_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_380981_right_fuel : Nat := 24
def small_380981_right_count : Nat := 181
def small_380981_right_encoded : String := "13E201060DE7CA040E5FD8FB0DE7CA080E5FD8FF0569AC37134110F6000000000569AC3900000009000000091340D4F60569AC39000000080000000900000000000000040E6014FF000000040569AC370000000A1340D4F60569AC39134110F800000001033F67C713BBF506000000030DAED87F0E9661080D4128840000000900000008000000040E962508000000040000000A0000000A0000000A00000000000000020E6014FB000000020DE7CA080E5FD8FF0569AC37134110F6000000000569AC39000000081340D4F8033F67C713BBF506000000030DAED87B0E9661040D4128880000000800000009000000020E9625040000000200000008000000080000000100000008000000040E6014FF000000040569AC37134110F6000000000569AC39134110F800000001033F67C713BBF506000000030DAED87B0E9661040DAED87F0E96610805F43D570000000A00000008000000040E962508000000040000000A000000020E962504000000020DAED87F0E96610800000008000000040E9625080000000405F43D571317F8F60000000005F43D591317F8F80000000102B4D6A713D0D106000000030D563A3B0000000A0EE751040000000200000008000000080000000A1317BCF605F43D59000000081317BCF800000008000000010000000013BC31060DAED87B0000000A0E9625040000000200000008000000031340D4F8033F67C713BBF506000000030DAED87B0000000A0E962504000000020DAED87F0E96610805F43D570000000A00000005000000040E962508000000040000000A0000000A000000011340D4F60569AC39134110F800000001033F67C713BBF506000000030DAED87B0E9661040DAED87F000000080E9625080000000404DF1B170000000A00000005000000020E9625040000000200000008000000081340D4F8033F67C713BBF506000000030DAED87B0E96610400000005000000020000000500000005000000010000000000000003"
theorem small_380981_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_380981_right_root small_380981_right_fuel small_380981_right_count small_380981_right_encoded = true := by
  decide +kernel
theorem small_380981_right_covered : CoveredBy scale carrier boxes small_380981_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_380981_right_root small_380981_right_fuel small_380981_right_count small_380981_right_encoded small_380981_right_checked

theorem cover_380981 : CoveredBy scale carrier boxes root_380981 := by
  apply coveredBy_split_literal root_380981 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0139.root small_380981_right_root coord3 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0139.covered
  · exact small_380981_right_covered
#print axioms cover_380981

def root_380976 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_380976_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_380976_right_fuel : Nat := 1
def small_380976_right_count : Nat := 1
def small_380976_right_encoded : String := "00000001"
theorem small_380976_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_380976_right_root small_380976_right_fuel small_380976_right_count small_380976_right_encoded = true := by
  decide +kernel
theorem small_380976_right_covered : CoveredBy scale carrier boxes small_380976_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_380976_right_root small_380976_right_fuel small_380976_right_count small_380976_right_encoded small_380976_right_checked

theorem cover_380976 : CoveredBy scale carrier boxes root_380976 := by
  apply coveredBy_split_literal root_380976 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_380981 small_380976_right_root coord1 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_380981
  · exact small_380976_right_covered
#print axioms cover_380976

def root_379456 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_379456 : CoveredBy scale carrier boxes root_379456 := by
  apply coveredBy_split_literal root_379456 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0138.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_380976 coord1 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0138.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_380976
#print axioms cover_379456

def root_379451 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_379451_right_root : ZRayBox := fun j => (#[⟨⟨(-15867392), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_379451_right_fuel : Nat := 1
def small_379451_right_count : Nat := 1
def small_379451_right_encoded : String := "00000000"
theorem small_379451_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_379451_right_root small_379451_right_fuel small_379451_right_count small_379451_right_encoded = true := by
  decide +kernel
theorem small_379451_right_covered : CoveredBy scale carrier boxes small_379451_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_379451_right_root small_379451_right_fuel small_379451_right_count small_379451_right_encoded small_379451_right_checked

theorem cover_379451 : CoveredBy scale carrier boxes root_379451 := by
  apply coveredBy_split_literal root_379451 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_379456 small_379451_right_root coord0 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_379456
  · exact small_379451_right_covered
#print axioms cover_379451

def root_376377 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_376377 : CoveredBy scale carrier boxes root_376377 := by
  apply coveredBy_split_literal root_376377 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0137.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_379451 coord0 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0137.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_379451
#print axioms cover_376377

def root_376371 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_376371_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_376371_left_fuel : Nat := 1
def small_376371_left_count : Nat := 1
def small_376371_left_encoded : String := "00000004"
theorem small_376371_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_376371_left_root small_376371_left_fuel small_376371_left_count small_376371_left_encoded = true := by
  decide +kernel
theorem small_376371_left_covered : CoveredBy scale carrier boxes small_376371_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_376371_left_root small_376371_left_fuel small_376371_left_count small_376371_left_encoded small_376371_left_checked

theorem cover_376371 : CoveredBy scale carrier boxes root_376371 := by
  apply coveredBy_split_literal root_376371 small_376371_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_376377 coord4 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_376371_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_376377
#print axioms cover_376371

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010
