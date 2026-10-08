import TaoBundleAssembly0405
import TaoBundleAssembly0406
import TaoBundleChunkBatch0544
import TaoBundleChunkBatch0545
import TaoBundleChunkBatch0547
import TaoBundleChunkBatch0548
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407
def root_5827534 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5827534_right_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5827534_right_fuel : Nat := 23
def small_5827534_right_count : Nat := 187
def small_5827534_right_encoded : String := "138670FE0AD3577710D13D00067ECE7912EA94F800000001022A458513E1C504000000020AD3577D10D13D06022A457F13E200FE000000040BE879B71011AD000793F0B900000009128220F80115234513F85904000000020BE879BD0000000600000006000000090000000100000000101171000000000000000007000000070000000310D10106000000030000000613E201040AD3577D10D13D06022A457F13E200FE000000040BE879B700000009101171000000000000000007000000070000000310D1010600000003000000090000000212EA58F8022A458513E1C504000000020AD3577D10D13D06022A457F13E200FE000000040BE879B71011AD000569AC39134110F8000000010115234513F85904000000020BE879BD1011AD06033F67BF0000000800000007000000030000000813F895040BE879BD1011AD06033F67BF13BC30FE000000040C730AD70000000900000005000000050000000300000005000000021340D4F80115234513F85904000000020BE879BD1011AD0600000005000000030000000500000005000000010000000010117100000000000569AC39134110F800000001011523450000000813F895040BE879BD1011AD06000000050000000300000005000000021340D4F80115234500000008000000050000000113E1C4FE0BE879B71011AD00000000050000000000000005000000040000000310D1010600000003022A457F000000080000000513E201040AD3577D10D13D06022A457F13E200FE000000040BE879B71011AD0000000005000000000000000500000005000000030000000500000002000000010000000010D1010000000000067ECE7912EA94F800000001022A458513E1C504000000020AD3577D000000070000000713E201040AD3577D00000007000000070000000212EA58F8022A458513E1C504000000020AD3577D10D13D06022A457F0000000800000005000000030000000813E201040AD3577D10D13D06000000050000000300000005000000020000000100000004"
theorem small_5827534_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5827534_right_root small_5827534_right_fuel small_5827534_right_count small_5827534_right_encoded = true := by
  decide +kernel
theorem small_5827534_right_covered : CoveredBy scale carrier boxes small_5827534_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5827534_right_root small_5827534_right_fuel small_5827534_right_count small_5827534_right_encoded small_5827534_right_checked

theorem cover_5827534 : CoveredBy scale carrier boxes root_5827534 := by
  apply coveredBy_split_literal root_5827534 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.root_5827535 small_5827534_right_root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.cover_5827535
  · exact small_5827534_right_covered
#print axioms cover_5827534

def root_5827528 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5827528_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5827528_left_fuel : Nat := 1
def small_5827528_left_count : Nat := 1
def small_5827528_left_encoded : String := "00000003"
theorem small_5827528_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5827528_left_root small_5827528_left_fuel small_5827528_left_count small_5827528_left_encoded = true := by
  decide +kernel
theorem small_5827528_left_covered : CoveredBy scale carrier boxes small_5827528_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5827528_left_root small_5827528_left_fuel small_5827528_left_count small_5827528_left_encoded small_5827528_left_checked

theorem cover_5827528 : CoveredBy scale carrier boxes root_5827528 := by
  apply coveredBy_split_literal root_5827528 small_5827528_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5827534 coord3 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_5827528_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5827534
#print axioms cover_5827528

def root_5824768 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5824768 : CoveredBy scale carrier boxes root_5824768 := by
  apply coveredBy_split_literal root_5824768 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2185.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5827528 coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2185.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5827528
#print axioms cover_5824768

def root_5824762 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5824762_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5824762_left_fuel : Nat := 1
def small_5824762_left_count : Nat := 1
def small_5824762_left_encoded : String := "00000002"
theorem small_5824762_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5824762_left_root small_5824762_left_fuel small_5824762_left_count small_5824762_left_encoded = true := by
  decide +kernel
theorem small_5824762_left_covered : CoveredBy scale carrier boxes small_5824762_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5824762_left_root small_5824762_left_fuel small_5824762_left_count small_5824762_left_encoded small_5824762_left_checked

theorem cover_5824762 : CoveredBy scale carrier boxes root_5824762 := by
  apply coveredBy_split_literal root_5824762 small_5824762_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5824768 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5824762_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5824768
#print axioms cover_5824762

def root_5824761 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5824761 : CoveredBy scale carrier boxes root_5824761 := by
  apply coveredBy_split_literal root_5824761 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5824762 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2188.root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5824762
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2188.covered
#print axioms cover_5824761

def root_5824755 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5824755_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5824755_left_fuel : Nat := 1
def small_5824755_left_count : Nat := 1
def small_5824755_left_encoded : String := "00000001"
theorem small_5824755_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5824755_left_root small_5824755_left_fuel small_5824755_left_count small_5824755_left_encoded = true := by
  decide +kernel
theorem small_5824755_left_covered : CoveredBy scale carrier boxes small_5824755_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5824755_left_root small_5824755_left_fuel small_5824755_left_count small_5824755_left_encoded small_5824755_left_checked

theorem cover_5824755 : CoveredBy scale carrier boxes root_5824755 := by
  apply coveredBy_split_literal root_5824755 small_5824755_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5824761 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5824755_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5824761
#print axioms cover_5824755

def root_5824754 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5824754_right_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5824754_right_fuel : Nat := 30
def small_5824754_right_count : Nat := 437
def small_5824754_right_encoded : String := "138670F804548A0513867104000000020CFD9BFD0F350D06045489FF1386ACFE000000040C9A87060F8750FD00000006000000030F878CFD000000030AD3577710D13D00022A457913E200F800000001022A458513E1C50400000002067ECE7F0000000612EA58FE0DE7CA060E5FD8FD00000006000000030E6014FD000000030BE879B71011AD00033F67B913BC30F8000000010115234513F85904000000020569AC3F000000061340D4FE0DAED87D0E966106000000050000000300000005000000040000000600000006000000001011710000000000033F67B913BC30F8000000010115234513F85904000000020569AC3F000000061340D4FE000000060000000400000006000000060000000400000006000000060000000010D101000000000000000006138670FE0C9A87060F8750FD0AD3577710D13D00022A457913E200F800000001022A458513E1C50400000002022A457F000000060000000500000005000000050000000000000005000000030F878CFD000000030AD3577710D13D00022A457913E200F800000001022A458513E1C50400000002022A457F13E200FE000000040DE7CA06000000050E6014FD0000000300000005000000050000000500000005000000000000000500000004000000030F34D10600000003045489FF1386ACFE000000040AD3577710D13D00022A457913E200F800000001022A458513E1C504000000020AD3577D10D13D06067ECE7F12EA94FE000000040BE879B71011AD00033F67B913BC30F800000001011523450000000A0000000A0000000A000000001011710000000000033F67B913BC30F800000001011523450000000913F895040BE879BD0000000600000008000000020000000912EA58FE0BE879B71011AD00033F67B913BC30F8000000010115234513F85904000000020BE879BD1011AD060569AC3F000000081340D4FE0000000500000004000000030000000813F895040BE879BD1011AD060569AC3F134110FE000000040C730AD70FA745000000000500000000000000050000000500000003000000050000000213BBF4F80115234513F85904000000020BE879BD1011AD060000000500000003000000050000000500000001000000001011710000000000033F67B913BC30F800000001011523450000000813F895040BE879BD1011AD060000000500000003000000050000000213BBF4F801152345000000080000000500000001000000040000000310D1010600000003067ECE7F0000000A12EA58FE000000080000000413E201040AD3577D10D13D06067ECE7F12EA94FE000000040BE879B71011AD00033F67B913BC30F8000000010000000A000000060000000010117100000000000000000612EA58FE0BE879B71011AD00000000050000000000000005000000040000000310D1010600000003067ECE7F0000000A12EA58FE00000005000000040000000213E1C4F8022A458513E1C504000000020AD3577D10D13D06067ECE7F0000000A12EA58FE0BE879B71011AD00000000050000000000000005000000040000000310D10106000000030000000A13E201040AD3577D10D13D06067ECE7F00000006000000050000000310D10106000000030000000A00000002000000010000000010D1010000000000022A457913E200F800000001022A458513E1C504000000020AD3577D10D13D06067ECE7F0000000912EA58FE0000000800000004000000030000000813E201040AD3577D10D13D06067ECE7F0000000612EA58FE00000005000000040000000310D1010600000003067ECE7F00000008000000050000000213E1C4F8022A458513E1C504000000020AD3577D10D13D06067ECE7F0000000612EA58FE0000000500000004000000030000000813E201040AD3577D00000006000000050000000200000001138670FE0AD3577710D13D00022A457913E200F800000001022A458513E1C504000000020AD3577D10D13D0600000005000000030000000500000005000000050000000010D1010000000000022A457913E200F800000001022A458513E1C504000000020AD3577D10D13D060000000500000003000000050000000500000005000000041386AD040CFD9BFD0F350D06045489FF00000006138670FE0000000500000004000000030F34D10600000003045489FF1386ACFE000000040AD3577710D13D00022A457913E200F800000001067ECE8512EA5904000000020AD3577D10D13D06067ECE7F00000006000000050000000310D1010600000003067ECE7F0000000A0000000512EA9504000000050000000213E1C4F800000005000000010000000010D1010000000000022A457913E200F800000001067ECE8512EA5904000000020AD3577D00000006000000050000000500000005000000050000000200000001"
theorem small_5824754_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5824754_right_root small_5824754_right_fuel small_5824754_right_count small_5824754_right_encoded = true := by
  decide +kernel
theorem small_5824754_right_covered : CoveredBy scale carrier boxes small_5824754_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5824754_right_root small_5824754_right_fuel small_5824754_right_count small_5824754_right_encoded small_5824754_right_checked

theorem cover_5824754 : CoveredBy scale carrier boxes root_5824754 := by
  apply coveredBy_split_literal root_5824754 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5824755 small_5824754_right_root coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5824755
  · exact small_5824754_right_covered
#print axioms cover_5824754

def root_5824748 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5824748_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5824748_left_fuel : Nat := 1
def small_5824748_left_count : Nat := 1
def small_5824748_left_encoded : String := "00000000"
theorem small_5824748_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5824748_left_root small_5824748_left_fuel small_5824748_left_count small_5824748_left_encoded = true := by
  decide +kernel
theorem small_5824748_left_covered : CoveredBy scale carrier boxes small_5824748_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5824748_left_root small_5824748_left_fuel small_5824748_left_count small_5824748_left_encoded small_5824748_left_checked

theorem cover_5824748 : CoveredBy scale carrier boxes root_5824748 := by
  apply coveredBy_split_literal root_5824748 small_5824748_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5824754 coord0 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_5824748_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5824754
#print axioms cover_5824748

def root_5809016 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5809016 : CoveredBy scale carrier boxes root_5809016 := by
  apply coveredBy_split_literal root_5809016 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.root_5809017 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5824748 coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.cover_5809017
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5824748
#print axioms cover_5809016

def root_5809011 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5809011_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5809011_right_fuel : Nat := 1
def small_5809011_right_count : Nat := 1
def small_5809011_right_encoded : String := "00000004"
theorem small_5809011_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5809011_right_root small_5809011_right_fuel small_5809011_right_count small_5809011_right_encoded = true := by
  decide +kernel
theorem small_5809011_right_covered : CoveredBy scale carrier boxes small_5809011_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5809011_right_root small_5809011_right_fuel small_5809011_right_count small_5809011_right_encoded small_5809011_right_checked

theorem cover_5809011 : CoveredBy scale carrier boxes root_5809011 := by
  apply coveredBy_split_literal root_5809011 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5809016 small_5809011_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5809016
  · exact small_5809011_right_covered
#print axioms cover_5809011

def root_5806235 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5806235 : CoveredBy scale carrier boxes root_5806235 := by
  apply coveredBy_split_literal root_5806235 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2178.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5809011 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2178.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5809011
#print axioms cover_5806235

def root_5806230 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5806230_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5806230_right_fuel : Nat := 1
def small_5806230_right_count : Nat := 1
def small_5806230_right_encoded : String := "00000003"
theorem small_5806230_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5806230_right_root small_5806230_right_fuel small_5806230_right_count small_5806230_right_encoded = true := by
  decide +kernel
theorem small_5806230_right_covered : CoveredBy scale carrier boxes small_5806230_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5806230_right_root small_5806230_right_fuel small_5806230_right_count small_5806230_right_encoded small_5806230_right_checked

theorem cover_5806230 : CoveredBy scale carrier boxes root_5806230 := by
  apply coveredBy_split_literal root_5806230 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5806235 small_5806230_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5806235
  · exact small_5806230_right_covered
#print axioms cover_5806230

def root_5806229 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5806229_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5806229_right_fuel : Nat := 27
def small_5806229_right_count : Nat := 321
def small_5806229_right_encoded : String := "120701060000000308A912FF12073CFE000000040CFD9BF70F350D00045489F91386ACF80000000104548A050000000A0000000A0000000A000000000F34D10000000000045489F91386ACF80000000104548A051386710400000002045489FD1386AD060CFD9BFF0000000A0F34D0FE0AD357770000000A10D1010000000000067ECE7912EA94F8000000010000000A0000000A00000004000000030000000A1386AD04045489FD1386AD060CFD9BFF0000000A0F34D0FE0AD357770000000A10D1010000000000067ECE7912EA94F8000000010000000A0000000A00000004000000030000000A000000020000000A120700FE0CFD9BF70F350D00045489F91386ACF80000000104548A051386710400000002045489FD1386AD06045489FF1386ACFE000000040C9A87000000000A0F878CF700000000067ECE7912EA94F800000001022A458500000006000000090000000A00000009000000031386710600000003045489FF0000000A0000000600000009138670F804548A051386710400000002045489FD1386AD06045489FF0000000A138670FE0C9A8700000000050F878CF7000000000000000500000004000000030000000A1386AD04045489FD1386AD06045489FF0000000A0000000500000003000000050000000200000001000000000F34D10000000000045489F91386ACF80000000104548A051386710400000002045489FD1386AD06045489FF1386ACFE000000040AD3577710D13D00067ECE7912EA94F800000001022A458513E1C50400000002067ECE7D12EA950600000008000000030000000613E20104067ECE7D12EA9506067ECE7F0000000A12EA58FE000000090000000400000003000000080000000212EA58F8022A45850000000813E20104067ECE7D12EA95060000000A000000030000000800000002000000010000000010D1010000000000067ECE790000000800000008138670FE0AD3577710D13D00067ECE790000000612EA58F8022A45850000000600000005000000010000000010D10100000000000000000800000004000000031386710600000003045489FF00000008000000061386AD04045489FD1386AD06045489FF1386ACFE000000040AD3577710D13D00067ECE790000000912EA58F8067ECE850000000A00000009000000010000000010D1010000000000067ECE7912EA94F800000001067ECE8512EA590400000002067ECE7D12EA9506067ECE7F0000000812EA58FE0000000800000004000000030000000812EA9504067ECE7D12EA9506067ECE7F12EA94FE0000000409BE35370000000911774100000000000793F0B90000000800000005000000050000000312EA590600000003000000090000000212EA58F8067ECE8512EA590400000002067ECE7D12EA9506067ECE7F0000000800000005000000030000000812EA9504000000050000000200000001138670FE0000000900000004000000031386710600000003045489FF1386ACFE000000040AD357770000000A0000000A0000000500000002138670F804548A051386710400000002045489FD1386AD06045489FF1386ACFE000000040AD3577710D13D000000000A0000000010D101000000000000000008138670FE0AD3577710D13D0000000005000000000000000500000004000000031386710600000003000000081386AD04045489FD1386AD06045489FF1386ACFE000000040AD3577710D13D00000000050000000000000005000000050000000300000005000000020000000100000004"
theorem small_5806229_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5806229_right_root small_5806229_right_fuel small_5806229_right_count small_5806229_right_encoded = true := by
  decide +kernel
theorem small_5806229_right_covered : CoveredBy scale carrier boxes small_5806229_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5806229_right_root small_5806229_right_fuel small_5806229_right_count small_5806229_right_encoded small_5806229_right_checked

theorem cover_5806229 : CoveredBy scale carrier boxes root_5806229 := by
  apply coveredBy_split_literal root_5806229 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5806230 small_5806229_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5806230
  · exact small_5806229_right_covered
#print axioms cover_5806229

def root_5806223 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5806223_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5806223_left_fuel : Nat := 1
def small_5806223_left_count : Nat := 1
def small_5806223_left_encoded : String := "00000002"
theorem small_5806223_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5806223_left_root small_5806223_left_fuel small_5806223_left_count small_5806223_left_encoded = true := by
  decide +kernel
theorem small_5806223_left_covered : CoveredBy scale carrier boxes small_5806223_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5806223_left_root small_5806223_left_fuel small_5806223_left_count small_5806223_left_encoded small_5806223_left_checked

theorem cover_5806223 : CoveredBy scale carrier boxes root_5806223 := by
  apply coveredBy_split_literal root_5806223 small_5806223_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5806229 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5806223_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5806229
#print axioms cover_5806223

def root_5806222 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5806222_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5806222_right_fuel : Nat := 24
def small_5806222_right_count : Nat := 247
def small_5806222_right_encoded : String := "12073D0408A912FD12073D0608A912FF12073CFE000000040CFD9BF70F350D00045489F91386ACF8000000010CFD9C050F34D104000000020CFD9BFD0F350D060CFD9BFF000000060F34D0FE0C9A87000F8750F70C9A87060000000600000008000000000000000600000004000000030F34D106000000030CFD9BFF0000000A0F34D0FE0C9A87000000000A0F878CF700000000067ECE7912EA94F8000000010AD3578510D10104000000020AD3577D10D13D060000000A000000030000000A000000090000000A000000040F350D040CFD9BFD000000060F34D106000000030CFD9BFF000000060000000900000002138670F80CFD9C050F34D104000000020CFD9BFD000000060F34D106000000030000000A0000000600000001000000000F34D10000000000045489F91386ACF8000000010CFD9C050F34D104000000020CFD9BFD000000060F34D106000000030CFD9BFF000000060F34D0FE0AD3577710D13D00067ECE7912EA94F8000000010AD3578510D10104000000020AD3577D000000060000000A00000006000000060000000010D101000000000000000006000000040000000600000006120700FE0CFD9BF70F350D00045489F91386ACF8000000010CFD9C050F34D104000000020CFD9BFD0F350D06045489FF1386ACFE000000040C9A87000F8750F700000008000000000000000600000009000000030F34D106000000030000000900000009138670F80CFD9C050F34D104000000020CFD9BFD0F350D06045489FF000000060000000500000003000000050000000500000001000000000F34D10000000000045489F91386ACF8000000010CFD9C050F34D104000000020CFD9BFD0F350D06045489FF00000006138670FE0000000500000004000000030F34D10600000003045489FF1386ACFE000000040AD3577710D13D00067ECE790000000912EA58F800000005000000010000000010D1010000000000067ECE7912EA94F8000000010AD3578510D10104000000020AD3577D00000006000000050000000500000005000000050F350D040CFD9BFD000000060000000500000002138670F80CFD9C050F34D104000000020CFD9BFD000000060000000500000005000000010000000400000003120701060000000308A912FF12073CFE000000040CFD9BF70F350D000000000A000000000F34D10000000000045489F91386ACF8000000010CFD9C050F34D10400000002045489FD1386AD060CFD9BFF0000000A0F34D0FE0AD357770000000A0000000A00000004000000030000000A0F350D040000000A000000020000000A120700FE0CFD9BF7000000090F34D10000000000045489F900000009000000050000000400000002"
theorem small_5806222_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5806222_right_root small_5806222_right_fuel small_5806222_right_count small_5806222_right_encoded = true := by
  decide +kernel
theorem small_5806222_right_covered : CoveredBy scale carrier boxes small_5806222_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5806222_right_root small_5806222_right_fuel small_5806222_right_count small_5806222_right_encoded small_5806222_right_checked

theorem cover_5806222 : CoveredBy scale carrier boxes root_5806222 := by
  apply coveredBy_split_literal root_5806222 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5806223 small_5806222_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5806223
  · exact small_5806222_right_covered
#print axioms cover_5806222

def root_5806217 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5806217_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5806217_right_fuel : Nat := 1
def small_5806217_right_count : Nat := 1
def small_5806217_right_encoded : String := "00000001"
theorem small_5806217_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5806217_right_root small_5806217_right_fuel small_5806217_right_count small_5806217_right_encoded = true := by
  decide +kernel
theorem small_5806217_right_covered : CoveredBy scale carrier boxes small_5806217_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5806217_right_root small_5806217_right_fuel small_5806217_right_count small_5806217_right_encoded small_5806217_right_checked

theorem cover_5806217 : CoveredBy scale carrier boxes root_5806217 := by
  apply coveredBy_split_literal root_5806217 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5806222 small_5806217_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5806222
  · exact small_5806217_right_covered
#print axioms cover_5806217

def root_5797227 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5797227 : CoveredBy scale carrier boxes root_5797227 := by
  apply coveredBy_split_literal root_5797227 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5797228 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5806217 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5797228
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5806217
#print axioms cover_5797227

def root_5797222 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5797222_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5797222_right_fuel : Nat := 1
def small_5797222_right_count : Nat := 1
def small_5797222_right_encoded : String := "00000000"
theorem small_5797222_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5797222_right_root small_5797222_right_fuel small_5797222_right_count small_5797222_right_encoded = true := by
  decide +kernel
theorem small_5797222_right_covered : CoveredBy scale carrier boxes small_5797222_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5797222_right_root small_5797222_right_fuel small_5797222_right_count small_5797222_right_encoded small_5797222_right_checked

theorem cover_5797222 : CoveredBy scale carrier boxes root_5797222 := by
  apply coveredBy_split_literal root_5797222 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5797227 small_5797222_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5797227
  · exact small_5797222_right_covered
#print axioms cover_5797222

def root_5836110 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5836110 : CoveredBy scale carrier boxes root_5836110 := by
  apply coveredBy_split_literal root_5836110 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2189.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2190.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2189.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2190.covered
#print axioms cover_5836110

def root_5836104 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5836104_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5836104_left_fuel : Nat := 1
def small_5836104_left_count : Nat := 1
def small_5836104_left_encoded : String := "00000001"
theorem small_5836104_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5836104_left_root small_5836104_left_fuel small_5836104_left_count small_5836104_left_encoded = true := by
  decide +kernel
theorem small_5836104_left_covered : CoveredBy scale carrier boxes small_5836104_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5836104_left_root small_5836104_left_fuel small_5836104_left_count small_5836104_left_encoded small_5836104_left_checked

theorem cover_5836104 : CoveredBy scale carrier boxes root_5836104 := by
  apply coveredBy_split_literal root_5836104 small_5836104_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5836110 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5836104_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5836110
#print axioms cover_5836104

def root_5836103 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5836103 : CoveredBy scale carrier boxes root_5836103 := by
  apply coveredBy_split_literal root_5836103 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5836104 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2191.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5836104
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2191.covered
#print axioms cover_5836103

def root_5836097 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5836097_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5836097_left_fuel : Nat := 1
def small_5836097_left_count : Nat := 1
def small_5836097_left_encoded : String := "00000000"
theorem small_5836097_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5836097_left_root small_5836097_left_fuel small_5836097_left_count small_5836097_left_encoded = true := by
  decide +kernel
theorem small_5836097_left_covered : CoveredBy scale carrier boxes small_5836097_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5836097_left_root small_5836097_left_fuel small_5836097_left_count small_5836097_left_encoded small_5836097_left_checked

theorem cover_5836097 : CoveredBy scale carrier boxes root_5836097 := by
  apply coveredBy_split_literal root_5836097 small_5836097_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5836103 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5836097_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5836103
#print axioms cover_5836097

def root_5797221 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5797221 : CoveredBy scale carrier boxes root_5797221 := by
  apply coveredBy_split_literal root_5797221 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5797222 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5836097 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5797222
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5836097
#print axioms cover_5797221

def root_5797215 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5797215_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5797215_left_fuel : Nat := 1
def small_5797215_left_count : Nat := 1
def small_5797215_left_encoded : String := "00000004"
theorem small_5797215_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5797215_left_root small_5797215_left_fuel small_5797215_left_count small_5797215_left_encoded = true := by
  decide +kernel
theorem small_5797215_left_covered : CoveredBy scale carrier boxes small_5797215_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5797215_left_root small_5797215_left_fuel small_5797215_left_count small_5797215_left_encoded small_5797215_left_checked

theorem cover_5797215 : CoveredBy scale carrier boxes root_5797215 := by
  apply coveredBy_split_literal root_5797215 small_5797215_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5797221 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5797215_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5797221
#print axioms cover_5797215

def root_5797214 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5797214 : CoveredBy scale carrier boxes root_5797214 := by
  apply coveredBy_split_literal root_5797214 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5797215 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2192.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5797215
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2192.covered
#print axioms cover_5797214

def root_5797208 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5797208_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5797208_left_fuel : Nat := 1
def small_5797208_left_count : Nat := 1
def small_5797208_left_encoded : String := "00000003"
theorem small_5797208_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5797208_left_root small_5797208_left_fuel small_5797208_left_count small_5797208_left_encoded = true := by
  decide +kernel
theorem small_5797208_left_covered : CoveredBy scale carrier boxes small_5797208_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5797208_left_root small_5797208_left_fuel small_5797208_left_count small_5797208_left_encoded small_5797208_left_checked

theorem cover_5797208 : CoveredBy scale carrier boxes root_5797208 := by
  apply coveredBy_split_literal root_5797208 small_5797208_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5797214 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5797208_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5797214
#print axioms cover_5797208

def root_5795476 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5795476 : CoveredBy scale carrier boxes root_5795476 := by
  apply coveredBy_split_literal root_5795476 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2173.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5797208 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2173.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5797208
#print axioms cover_5795476

def root_5795471 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5795471_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5795471_right_fuel : Nat := 1
def small_5795471_right_count : Nat := 1
def small_5795471_right_encoded : String := "00000002"
theorem small_5795471_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5795471_right_root small_5795471_right_fuel small_5795471_right_count small_5795471_right_encoded = true := by
  decide +kernel
theorem small_5795471_right_covered : CoveredBy scale carrier boxes small_5795471_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5795471_right_root small_5795471_right_fuel small_5795471_right_count small_5795471_right_encoded small_5795471_right_checked

theorem cover_5795471 : CoveredBy scale carrier boxes root_5795471 := by
  apply coveredBy_split_literal root_5795471 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5795476 small_5795471_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5795476
  · exact small_5795471_right_covered
#print axioms cover_5795471

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407
