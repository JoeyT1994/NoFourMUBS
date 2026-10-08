import TaoBundleAssembly0626
import TaoBundleAssembly0627
import TaoBundleChunkBatch0862
import TaoBundleChunkBatch0863
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628
def root_9205390 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9205390_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9205390_right_fuel : Nat := 31
def small_9205390_right_count : Nat := 269
def small_9205390_right_encoded : String := "0F34D10200000001045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004000000070F8750FF07800100128A41010000000000000007128A7D01078000FA128A7CFB000000020AD3577910D13D02067ECE7D0000000512EA5906000000030B4D43FE10804CFF0000000400000007000000050000000110D101020000000100000007128A40FB00000005000000020000000000000004000000070000000313867106000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF0000000407800100128A410100000000078000FA0000000700000006128A7D01078000FA128A7CFB000000020AD3577910D13D02022A457D13E201060DE7C9FE000000060E5FD8FF000000070000000400000003000000060000000110D10102000000010000000600000006000000000F8750FF07800100128A410100000000078000FA128A7CFB000000020AD3577910D13D02022A457D13E201060B4D43FE00000007108010FF064001000000000712FFAD0108C000FA000000070000000500000000000000040000000313E1C506000000030B4D43FE10804CFF00000004064001000000000612FFAD010000000600000000108010FF0640010012FF71010000000008C000FA11FC24FB000000020BE879B91011AD020115233D0000000713F85906000000030AA6A27E0000000610ED70FF05A001001331350100000000096000FA0000000700000006133171010000000600000000000000040000000110117102000000010000000611FBE8FB0BE879B900000006000000060000000212FFAD0108C000FA11FC24FB000000020BE879B91011AD020115233D13F895060AA6A27E10EDACFF0000000406E001000000000600000005000000050000000313F85906000000030AA6A27E0000000610ED70FF00000005000000040000000110117102000000010000000611FBE8FB0BE879B900000005000000060000000200000000000000040000000110D1010200000001022A457D0000000700000006128A40FB0AD3577910D13D02022A457D13E201060B4D43FE000000070000000500000003000000060000000110D10102000000010000000600000002128A7D01078000FA128A7CFB000000020AD3577910D13D02022A457D13E201060B4D43FE10804CFF0000000408C0010011FBE9010000000008C000FA000000070000000500000005000000050000000313E1C506000000030B4D43FE10804CFF0000000408C001000000000611FC25010000000600000000108010FF08C0010011FBE9010000000008C000FA11FC24FB000000020BE879B9000000051011710200000001000000050000000500000005000000040000000110D1010200000001022A457D13E201060B4D43FE10804CFF0000000400000006000000050000000300000006128A40FB0AD357790000000510D1010200000001000000050000000200000000000000040F34D0FE0000000600000004"
theorem small_9205390_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9205390_right_root small_9205390_right_fuel small_9205390_right_count small_9205390_right_encoded = true := by
  decide +kernel
theorem small_9205390_right_covered : CoveredBy scale carrier boxes small_9205390_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9205390_right_root small_9205390_right_fuel small_9205390_right_count small_9205390_right_encoded small_9205390_right_checked

theorem cover_9205390 : CoveredBy scale carrier boxes root_9205390 := by
  apply coveredBy_split_literal root_9205390 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9205391 small_9205390_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9205391
  · exact small_9205390_right_covered
#print axioms cover_9205390

def root_9205384 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9205384_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9205384_left_fuel : Nat := 1
def small_9205384_left_count : Nat := 1
def small_9205384_left_encoded : String := "00000002"
theorem small_9205384_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9205384_left_root small_9205384_left_fuel small_9205384_left_count small_9205384_left_encoded = true := by
  decide +kernel
theorem small_9205384_left_covered : CoveredBy scale carrier boxes small_9205384_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9205384_left_root small_9205384_left_fuel small_9205384_left_count small_9205384_left_encoded small_9205384_left_checked

theorem cover_9205384 : CoveredBy scale carrier boxes root_9205384 := by
  apply coveredBy_split_literal root_9205384 small_9205384_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9205390 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_9205384_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9205390
#print axioms cover_9205384

def root_9205383 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9205383_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9205383_right_fuel : Nat := 18
def small_9205383_right_count : Nat := 143
def small_9205383_right_encoded : String := "135D44FB0CFD9BF90F350D02045489FD1386AD060CFD9BFF0F350CFE000000040C9A87020F8750F90C9A86FE0F878CFF0000000407800100128A410100000000028000FA13D7ECFB00000002067ECE7D000000070000000A00000009128A7D01028000FA0000000A00000005000000000F8750FF0000000500000004000000010F878CF9000000010C9A86FE0F878CFF0000000407800100128A41010000000000000007128A7D0100000005000000000F8750FF00000005000000040F34D0FE0C9A87020F8750F907800100128A41010000000000000007128A7D01028000FA0000000A00000006000000000000000100000007000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A87020F8750F90C9A86FE0F878CFF0000000407800100128A410100000000000000080000000A0F8750FF07800100128A410100000000028000FA0000000A000000050000000500000004000000010F878CF9000000010C9A86FE0F878CFF00000004000000060F8750FF07800100128A410100000000028000FA13D7ECFB00000002022A457D0000000513E1C50600000003000000050000000500000005000000040F34D0FE0000000600000004000000010F34D10200000001045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004000000070F8750FF0000000500000004000000070000000313867106000000030CFD9BFF0F350CFE000000040C9A86FE000000060F8750FF078001000000000600000005000000040000000600000002"
theorem small_9205383_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9205383_right_root small_9205383_right_fuel small_9205383_right_count small_9205383_right_encoded = true := by
  decide +kernel
theorem small_9205383_right_covered : CoveredBy scale carrier boxes small_9205383_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9205383_right_root small_9205383_right_fuel small_9205383_right_count small_9205383_right_encoded small_9205383_right_checked

theorem cover_9205383 : CoveredBy scale carrier boxes root_9205383 := by
  apply coveredBy_split_literal root_9205383 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9205384 small_9205383_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9205384
  · exact small_9205383_right_covered
#print axioms cover_9205383

def root_9205378 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9205378_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9205378_right_fuel : Nat := 1
def small_9205378_right_count : Nat := 1
def small_9205378_right_encoded : String := "00000000"
theorem small_9205378_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9205378_right_root small_9205378_right_fuel small_9205378_right_count small_9205378_right_encoded = true := by
  decide +kernel
theorem small_9205378_right_covered : CoveredBy scale carrier boxes small_9205378_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9205378_right_root small_9205378_right_fuel small_9205378_right_count small_9205378_right_encoded small_9205378_right_checked

theorem cover_9205378 : CoveredBy scale carrier boxes root_9205378 := by
  apply coveredBy_split_literal root_9205378 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9205383 small_9205378_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9205383
  · exact small_9205378_right_covered
#print axioms cover_9205378

def root_9203090 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9203090 : CoveredBy scale carrier boxes root_9203090 := by
  apply coveredBy_split_literal root_9203090 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3447.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9205378 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3447.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9205378
#print axioms cover_9203090

def root_9203084 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9203084_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9203084_left_fuel : Nat := 1
def small_9203084_left_count : Nat := 1
def small_9203084_left_encoded : String := "00000004"
theorem small_9203084_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9203084_left_root small_9203084_left_fuel small_9203084_left_count small_9203084_left_encoded = true := by
  decide +kernel
theorem small_9203084_left_covered : CoveredBy scale carrier boxes small_9203084_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9203084_left_root small_9203084_left_fuel small_9203084_left_count small_9203084_left_encoded small_9203084_left_checked

theorem cover_9203084 : CoveredBy scale carrier boxes root_9203084 := by
  apply coveredBy_split_literal root_9203084 small_9203084_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9203090 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9203084_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9203090
#print axioms cover_9203084

def root_9203083 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9203083_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9203083_right_fuel : Nat := 5
def small_9203083_right_count : Nat := 9
def small_9203083_right_encoded : String := "120700FE0500010000000007135D8101050000FA00000007000000060000000000000004"
theorem small_9203083_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9203083_right_root small_9203083_right_fuel small_9203083_right_count small_9203083_right_encoded = true := by
  decide +kernel
theorem small_9203083_right_covered : CoveredBy scale carrier boxes small_9203083_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9203083_right_root small_9203083_right_fuel small_9203083_right_count small_9203083_right_encoded small_9203083_right_checked

theorem cover_9203083 : CoveredBy scale carrier boxes root_9203083 := by
  apply coveredBy_split_literal root_9203083 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9203084 small_9203083_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9203084
  · exact small_9203083_right_covered
#print axioms cover_9203083

def root_9203077 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9203077_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9203077_left_fuel : Nat := 1
def small_9203077_left_count : Nat := 1
def small_9203077_left_encoded : String := "00000003"
theorem small_9203077_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9203077_left_root small_9203077_left_fuel small_9203077_left_count small_9203077_left_encoded = true := by
  decide +kernel
theorem small_9203077_left_covered : CoveredBy scale carrier boxes small_9203077_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9203077_left_root small_9203077_left_fuel small_9203077_left_count small_9203077_left_encoded small_9203077_left_checked

theorem cover_9203077 : CoveredBy scale carrier boxes root_9203077 := by
  apply coveredBy_split_literal root_9203077 small_9203077_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9203083 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9203077_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9203083
#print axioms cover_9203077

def root_9202875 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202875_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202875_left_fuel : Nat := 23
def small_9202875_left_count : Nat := 97
def small_9202875_left_encoded : String := "12073D0608A912FF12073CFE0000000405000100135D450100000000050000FA00000007135D44FB0000000700000002135D8101050000FA135D80FB000000020CFD9BF90F350D020CFD9BFD000000070F34D106000000030CFD9BFF0F350CFE000000040C9A87020F8750F90C9A86FE0F878CFF000000040780010000000007128A7D01078000FA00000007128A40FB0000000700000002000000000F8750FF0780010000000009128A7D01078000FA128A7CFB000000020AD3577D000000050000000A000000050000000000000004000000010F878CF9000000010C9A86FE000000070F8750FF0780010000000007128A7D01078000FA0000000700000005000000000000000400000007000000010F34D1020000000100000007135D44FB0CFD9BF90F350D020CFD9BFD000000070F34D106000000030CFD9BFF0F350CFE000000040C9A8702000000090F878CF9000000010C9A86FE000000070000000500000007000000010F34D102000000010000000700000002000000000000000700000003"
theorem small_9202875_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9202875_left_root small_9202875_left_fuel small_9202875_left_count small_9202875_left_encoded = true := by
  decide +kernel
theorem small_9202875_left_covered : CoveredBy scale carrier boxes small_9202875_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9202875_left_root small_9202875_left_fuel small_9202875_left_count small_9202875_left_encoded small_9202875_left_checked

theorem cover_9202875 : CoveredBy scale carrier boxes root_9202875 := by
  apply coveredBy_split_literal root_9202875 small_9202875_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9203077 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9202875_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9203077
#print axioms cover_9202875

def root_9202870 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202870_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202870_right_fuel : Nat := 1
def small_9202870_right_count : Nat := 1
def small_9202870_right_encoded : String := "00000001"
theorem small_9202870_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9202870_right_root small_9202870_right_fuel small_9202870_right_count small_9202870_right_encoded = true := by
  decide +kernel
theorem small_9202870_right_covered : CoveredBy scale carrier boxes small_9202870_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9202870_right_root small_9202870_right_fuel small_9202870_right_count small_9202870_right_encoded small_9202870_right_checked

theorem cover_9202870 : CoveredBy scale carrier boxes root_9202870 := by
  apply coveredBy_split_literal root_9202870 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9202875 small_9202870_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9202875
  · exact small_9202870_right_covered
#print axioms cover_9202870

def root_9202869 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202869_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202869_right_fuel : Nat := 25
def small_9202869_right_count : Nat := 93
def small_9202869_right_encoded : String := "120701020000000108A912FD00000007120701060000000308A912FF12073CFE0000000405000100135D450100000000050000FA00000007135D44FB0000000700000002135D8101050000FA135D80FB00000002045489F91386AD02045489FD0000000713867106000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004000000060F8750FF07800100128A410100000000078000FA0000000700000006128A7D01078000FA128A7CFB00000002067ECE7912EA9502022A457D00000007000000060000000112EA5902000000010000000600000006000000000000000400000006000000011386710200000001045489FD0000000713867106000000030CFD9BFF0F350CFE000000040C9A86FE000000060F8750FF0780010000000006128A7D0100000006000000000000000400000006135D44FB045489F91386AD02045489FD0000000700000006000000011386710200000001045489FD0000000700000006000000020000000000000007"
theorem small_9202869_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9202869_right_root small_9202869_right_fuel small_9202869_right_count small_9202869_right_encoded = true := by
  decide +kernel
theorem small_9202869_right_covered : CoveredBy scale carrier boxes small_9202869_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9202869_right_root small_9202869_right_fuel small_9202869_right_count small_9202869_right_encoded small_9202869_right_checked

theorem cover_9202869 : CoveredBy scale carrier boxes root_9202869 := by
  apply coveredBy_split_literal root_9202869 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9202870 small_9202869_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9202870
  · exact small_9202869_right_covered
#print axioms cover_9202869

def root_9202863 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202863_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202863_left_fuel : Nat := 1
def small_9202863_left_count : Nat := 1
def small_9202863_left_encoded : String := "00000004"
theorem small_9202863_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9202863_left_root small_9202863_left_fuel small_9202863_left_count small_9202863_left_encoded = true := by
  decide +kernel
theorem small_9202863_left_covered : CoveredBy scale carrier boxes small_9202863_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9202863_left_root small_9202863_left_fuel small_9202863_left_count small_9202863_left_encoded small_9202863_left_checked

theorem cover_9202863 : CoveredBy scale carrier boxes root_9202863 := by
  apply coveredBy_split_literal root_9202863 small_9202863_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9202869 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9202863_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9202869
#print axioms cover_9202863

def root_9202862 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9202862 : CoveredBy scale carrier boxes root_9202862 := by
  apply coveredBy_split_literal root_9202862 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9202863 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3449.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9202863
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3449.covered
#print axioms cover_9202862

def root_9202856 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202856_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202856_left_fuel : Nat := 1
def small_9202856_left_count : Nat := 1
def small_9202856_left_encoded : String := "00000003"
theorem small_9202856_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9202856_left_root small_9202856_left_fuel small_9202856_left_count small_9202856_left_encoded = true := by
  decide +kernel
theorem small_9202856_left_covered : CoveredBy scale carrier boxes small_9202856_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9202856_left_root small_9202856_left_fuel small_9202856_left_count small_9202856_left_encoded small_9202856_left_checked

theorem cover_9202856 : CoveredBy scale carrier boxes root_9202856 := by
  apply coveredBy_split_literal root_9202856 small_9202856_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9202862 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9202856_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9202862
#print axioms cover_9202856

def root_9202810 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202810_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202810_left_fuel : Nat := 10
def small_9202810_left_count : Nat := 21
def small_9202810_left_encoded : String := "1151E8FD0A0000FE000000071151E8FF08A912F912073D020500010000000007135D8101050000FA00000007135D44FB000000070000000200000000000000011207010200000001000000070000000400000003"
theorem small_9202810_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9202810_left_root small_9202810_left_fuel small_9202810_left_count small_9202810_left_encoded = true := by
  decide +kernel
theorem small_9202810_left_covered : CoveredBy scale carrier boxes small_9202810_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9202810_left_root small_9202810_left_fuel small_9202810_left_count small_9202810_left_encoded small_9202810_left_checked

theorem cover_9202810 : CoveredBy scale carrier boxes root_9202810 := by
  apply coveredBy_split_literal root_9202810 small_9202810_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9202856 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9202810_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9202856
#print axioms cover_9202810

def root_9202805 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202805_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202805_right_fuel : Nat := 1
def small_9202805_right_count : Nat := 1
def small_9202805_right_encoded : String := "00000002"
theorem small_9202805_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9202805_right_root small_9202805_right_fuel small_9202805_right_count small_9202805_right_encoded = true := by
  decide +kernel
theorem small_9202805_right_covered : CoveredBy scale carrier boxes small_9202805_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9202805_right_root small_9202805_right_fuel small_9202805_right_count small_9202805_right_encoded small_9202805_right_checked

theorem cover_9202805 : CoveredBy scale carrier boxes root_9202805 := by
  apply coveredBy_split_literal root_9202805 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9202810 small_9202805_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9202810
  · exact small_9202805_right_covered
#print axioms cover_9202805

def root_9184507 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9184507 : CoveredBy scale carrier boxes root_9184507 := by
  apply coveredBy_split_literal root_9184507 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9184508 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9202805 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9184508
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9202805
#print axioms cover_9184507

def root_9184501 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184501_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184501_left_fuel : Nat := 1
def small_9184501_left_count : Nat := 1
def small_9184501_left_encoded : String := "00000001"
theorem small_9184501_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9184501_left_root small_9184501_left_fuel small_9184501_left_count small_9184501_left_encoded = true := by
  decide +kernel
theorem small_9184501_left_covered : CoveredBy scale carrier boxes small_9184501_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9184501_left_root small_9184501_left_fuel small_9184501_left_count small_9184501_left_encoded small_9184501_left_checked

theorem cover_9184501 : CoveredBy scale carrier boxes root_9184501 := by
  apply coveredBy_split_literal root_9184501 small_9184501_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9184507 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9184501_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9184507
#print axioms cover_9184501

def root_9179625 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9179625 : CoveredBy scale carrier boxes root_9179625 := by
  apply coveredBy_split_literal root_9179625 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9179626 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9184501 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9179626
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9184501
#print axioms cover_9179625

def root_9179619 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9179619_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9179619_left_fuel : Nat := 1
def small_9179619_left_count : Nat := 1
def small_9179619_left_encoded : String := "00000000"
theorem small_9179619_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9179619_left_root small_9179619_left_fuel small_9179619_left_count small_9179619_left_encoded = true := by
  decide +kernel
theorem small_9179619_left_covered : CoveredBy scale carrier boxes small_9179619_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9179619_left_root small_9179619_left_fuel small_9179619_left_count small_9179619_left_encoded small_9179619_left_checked

theorem cover_9179619 : CoveredBy scale carrier boxes root_9179619 := by
  apply coveredBy_split_literal root_9179619 small_9179619_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9179625 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9179619_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9179625
#print axioms cover_9179619

def root_9214379 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9214379 : CoveredBy scale carrier boxes root_9214379 := by
  apply coveredBy_split_literal root_9214379 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3450.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3451.root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3450.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3451.covered
#print axioms cover_9214379

def root_9214373 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9214373_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9214373_left_fuel : Nat := 1
def small_9214373_left_count : Nat := 1
def small_9214373_left_encoded : String := "00000002"
theorem small_9214373_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9214373_left_root small_9214373_left_fuel small_9214373_left_count small_9214373_left_encoded = true := by
  decide +kernel
theorem small_9214373_left_covered : CoveredBy scale carrier boxes small_9214373_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9214373_left_root small_9214373_left_fuel small_9214373_left_count small_9214373_left_encoded small_9214373_left_checked

theorem cover_9214373 : CoveredBy scale carrier boxes root_9214373 := by
  apply coveredBy_split_literal root_9214373 small_9214373_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9214379 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9214373_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9214379
#print axioms cover_9214373

def root_9214372 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9214372_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9214372_right_fuel : Nat := 21
def small_9214372_right_count : Nat := 319
def small_9214372_right_encoded : String := "120700FA08A912FD12073D0608A912FF12073CFE0000000405000102135D44F90CFD9C010F34D10000000000045489FB1386ACFA000000020CFD9BFD0F350D060CFD9BFF0000000600000008000000030F34D106000000030CFD9BFF000000060F34D0FE028001020000000613D7ECF9000000010AD35781000000080000000600000004138670FA0CFD9BFD000000060F34D1060000000300000006000000020F350D00045489FB1386ACFA000000020CFD9BFD0F350D060CFD9BFF000000060F34D0FE0000000600000004000000030F34D106000000030CFD9BFF000000060F34D0FE0000000500000004138670FA0CFD9BFD000000060F34D1060000000300000006000000020000000000000001135D80F9000000010CFD9C010F34D10000000000045489FB1386ACFA000000020CFD9BFD000000080F34D106000000030CFD9BFF0000000800000008000000080F350D00045489FB1386ACFA000000020CFD9BFD0F350D060CFD9BFF0000000800000008000000030F34D106000000030CFD9BFF0F350CFE00000004000000080F34D0FE0C9A87000F87510100000000000000050F878D01000000080000000000000004138670FA0CFD9BFD000000080F34D106000000030CFD9BFF00000008000000080000000200000000120700FE05000102135D44F90CFD9C010F34D10000000000045489FB1386ACFA000000020CFD9BFD0F350D06045489FF1386ACFE0000000400000008000000050000000300000005000000050000000500000001135D80F9000000010CFD9C010F34D10000000000045489FB1386ACFA000000020CFD9BFD0F350D0600000008000000030F34D10600000003045489FF0000000900000005000000080F350D00045489FB1386ACFA000000020CFD9BFD0F350D0600000005000000030000000500000005000000000000000400000003120701060000000308A912FF12073CFE0000000405000102135D44F90CFD9C010F34D10000000000045489FB1386ACFA00000002045489FD1386AD060CFD9BFF000000070F34D0FE000000090000000400000003138671060000000300000009138670FA045489FD1386AD060CFD9BFF00000006000000090000000300000009000000020F350D00045489FB1386ACFA00000002045489FD1386AD060CFD9BFF00000006000000050000000313867106000000030CFD9BFF0F350CFE000000040000000600000005138670FA00000005000000020000000000000001135D80F9000000010CFD9C010F34D10000000000045489FB1386ACFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FE00000009000000080F34D0FE00000009000000040000000300000009138670FA045489FD1386AD060CFD9BFF00000008000000080000000300000009000000020F350D00045489FB1386ACFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040C9A87000F875101000000000C9A86FE00000006000000060F878D010C9A86FE0F878CFF0000000407800102000000060000000800000006000000000F34D0FE00000005000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A87000F87510100000000000000050F878D0100000009000000000F34D0FE0000000500000004138670FA045489FD1386AD060CFD9BFF0F350CFE00000004000000080000000500000003000000050000000200000000120700FE0500010200000005135D80F900000001000000050000000400000002"
theorem small_9214372_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9214372_right_root small_9214372_right_fuel small_9214372_right_count small_9214372_right_encoded = true := by
  decide +kernel
theorem small_9214372_right_covered : CoveredBy scale carrier boxes small_9214372_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9214372_right_root small_9214372_right_fuel small_9214372_right_count small_9214372_right_encoded small_9214372_right_checked

theorem cover_9214372 : CoveredBy scale carrier boxes root_9214372 := by
  apply coveredBy_split_literal root_9214372 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9214373 small_9214372_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9214373
  · exact small_9214372_right_covered
#print axioms cover_9214372

def root_9214367 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9214367_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9214367_right_fuel : Nat := 1
def small_9214367_right_count : Nat := 1
def small_9214367_right_encoded : String := "00000000"
theorem small_9214367_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9214367_right_root small_9214367_right_fuel small_9214367_right_count small_9214367_right_encoded = true := by
  decide +kernel
theorem small_9214367_right_covered : CoveredBy scale carrier boxes small_9214367_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9214367_right_root small_9214367_right_fuel small_9214367_right_count small_9214367_right_encoded small_9214367_right_checked

theorem cover_9214367 : CoveredBy scale carrier boxes root_9214367 := by
  apply coveredBy_split_literal root_9214367 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9214372 small_9214367_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9214372
  · exact small_9214367_right_covered
#print axioms cover_9214367

def root_9213823 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9213823_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9213823_left_fuel : Nat := 20
def small_9213823_left_count : Nat := 255
def small_9213823_left_encoded : String := "120701000000000008A912FB12073CFA0000000208A912FD12073D0608A912FF12073CFE0000000405000102135D44F904548A010000000A1386AD000CFD9BFB0000000A0F34D0FA0CFD9BFD0000000A0000000A000000020000000000000001135D80F90000000104548A0113867100000000000CFD9BFB0000000A0F34D0FA00000008000000021386AD000CFD9BFB0F350CFA000000020CFD9BFD0F350D060000000A000000030000000A0F34D0FA0CFD9BFD000000080F34D106000000030CFD9BFF0F350CFE00000004000000080000000A0000000200000000120700FE05000102135D44F904548A0113867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D060000000A000000030000000A0F34D0FA00000009000000021386AD000CFD9BFB0F350CFA000000020CFD9BFD0F350D06045489FF0000000A138670FE0C9A86FA0000000A0F8750FB0000000A0000000200000004000000030000000A0F34D0FA0CFD9BFD0F350D060000000A000000030000000A000000020000000000000001135D80F90000000104548A0113867100000000000CFD9BFB0000000A0F34D0FA00000009000000021386AD000CFD9BFB0F350CFA000000020CFD9BFD0F350D06045489FF0000000A138670FE0C9A86FA0000000A0F8750FB0000000A0000000200000004000000030000000A0F34D0FA0CFD9BFD0F350D0600000008000000030000000A00000002000000000000000400000003120701060000000308A912FF12073CFE0000000405000102135D44F904548A010000000A1386AD000CFD9BFB0000000A0F34D0FA0000000A000000020000000000000001135D80F90000000104548A0113867100000000000CFD9BFB000000090F34D0FA00000009000000021386AD000CFD9BFB0F350CFA000000020000000A0F34D0FA000000090000000200000000120700FE050001020000000A0000000900000004120700FA08A912FD12073D0608A912FF12073CFE0000000405000102135D44F904548A01000000081386AD00045489FB1386ACFA000000020CFD9BFD000000080F34D106000000030CFD9BFF000000060000000800000008000000000000000100000008120700FE05000102135D44F904548A01000000091386AD00045489FB1386ACFA000000020CFD9BFD0F350D06000000080000000300000009138670FA00000009000000020000000000000001135D80F90000000104548A01000000081386AD00045489FB1386ACFA000000020CFD9BFD000000080000000900000008000000000000000400000003120701060000000308A912FF12073CFE0000000405000102135D44F904548A01000000071386AD00045489FB0000000900000007000000000000000100000009120700FE000000090000000400000002"
theorem small_9213823_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9213823_left_root small_9213823_left_fuel small_9213823_left_count small_9213823_left_encoded = true := by
  decide +kernel
theorem small_9213823_left_covered : CoveredBy scale carrier boxes small_9213823_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9213823_left_root small_9213823_left_fuel small_9213823_left_count small_9213823_left_encoded small_9213823_left_checked

theorem cover_9213823 : CoveredBy scale carrier boxes root_9213823 := by
  apply coveredBy_split_literal root_9213823 small_9213823_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9214367 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9213823_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9214367
#print axioms cover_9213823

def root_9213817 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9213817_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9213817_left_fuel : Nat := 1
def small_9213817_left_count : Nat := 1
def small_9213817_left_encoded : String := "00000004"
theorem small_9213817_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9213817_left_root small_9213817_left_fuel small_9213817_left_count small_9213817_left_encoded = true := by
  decide +kernel
theorem small_9213817_left_covered : CoveredBy scale carrier boxes small_9213817_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9213817_left_root small_9213817_left_fuel small_9213817_left_count small_9213817_left_encoded small_9213817_left_checked

theorem cover_9213817 : CoveredBy scale carrier boxes root_9213817 := by
  apply coveredBy_split_literal root_9213817 small_9213817_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9213823 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9213817_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9213823
#print axioms cover_9213817

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628
