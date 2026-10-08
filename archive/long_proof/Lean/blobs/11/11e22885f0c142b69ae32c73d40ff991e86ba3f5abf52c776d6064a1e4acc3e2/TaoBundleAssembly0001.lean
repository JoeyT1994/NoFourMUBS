import TaoBundleChunkBatch0001
import TaoBundleChunkBatch0002
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001
def root_9 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9 : CoveredBy scale carrier boxes root_9 := by
  apply coveredBy_split_literal root_9 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0001.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0002.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0001.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0002.covered
#print axioms cover_9

def root_6353 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6353 : CoveredBy scale carrier boxes root_6353 := by
  apply coveredBy_split_literal root_6353 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0003.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0004.root coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0003.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0004.covered
#print axioms cover_6353

def root_6347 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6347_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6347_left_fuel : Nat := 1
def small_6347_left_count : Nat := 1
def small_6347_left_encoded : String := "00000001"
theorem small_6347_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6347_left_root small_6347_left_fuel small_6347_left_count small_6347_left_encoded = true := by
  decide +kernel
theorem small_6347_left_covered : CoveredBy scale carrier boxes small_6347_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6347_left_root small_6347_left_fuel small_6347_left_count small_6347_left_encoded small_6347_left_checked

theorem cover_6347 : CoveredBy scale carrier boxes root_6347 := by
  apply coveredBy_split_literal root_6347 small_6347_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_6353 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_6347_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_6353
#print axioms cover_6347

def root_6346 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6346_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6346_right_fuel : Nat := 10
def small_6346_right_count : Nat := 19
def small_6346_right_encoded : String := "0F34D0F8045489FB0000000A138670FA0CFD9BFD0F350CFC00000003045489FF0000000713867108000000040C9A86FC0000000A0F8750FD00000007000000030000000A0000000200000001"
theorem small_6346_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6346_right_root small_6346_right_fuel small_6346_right_count small_6346_right_encoded = true := by
  decide +kernel
theorem small_6346_right_covered : CoveredBy scale carrier boxes small_6346_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6346_right_root small_6346_right_fuel small_6346_right_count small_6346_right_encoded small_6346_right_checked

theorem cover_6346 : CoveredBy scale carrier boxes root_6346 := by
  apply coveredBy_split_literal root_6346 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_6347 small_6346_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_6347
  · exact small_6346_right_covered
#print axioms cover_6346

def root_6340 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6340_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6340_left_fuel : Nat := 1
def small_6340_left_count : Nat := 1
def small_6340_left_encoded : String := "00000000"
theorem small_6340_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6340_left_root small_6340_left_fuel small_6340_left_count small_6340_left_encoded = true := by
  decide +kernel
theorem small_6340_left_covered : CoveredBy scale carrier boxes small_6340_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6340_left_root small_6340_left_fuel small_6340_left_count small_6340_left_encoded small_6340_left_checked

theorem cover_6340 : CoveredBy scale carrier boxes root_6340 := by
  apply coveredBy_split_literal root_6340 small_6340_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_6346 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_6340_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_6346
#print axioms cover_6340

def root_13544 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_13544_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_13544_right_fuel : Nat := 15
def small_13544_right_count : Nat := 87
def small_13544_right_encoded : String := "0F34D0FC045489FF1386AD080C9A86F80F878CF900000001022A457713E200F600000000022A457B0000000913E1C4FA0AD3577D10D13CFC00000003067ECE7F0000000812EA5908000000040000000A000000090000000213E1C4F6022A457B0000000913E1C4FA0AD3577D10D13CFC00000003067ECE7F0000000812EA590800000004000000090000000900000002000000000F8750F900000009000000010000000413867108000000040C9A86F80F878CF900000001022A45770000000A13E1C4F6022A457B0000000A13E1C4FA0AD3577D10D13CFC00000003022A457F13E201080DE7C9F80000000A0000000500000004000000050000000500000002000000000F8750F9022A457713E200F600000000022A457B0000000A13E1C4FA0AD3577D000000080000000A0000000213E1C4F6022A457B0000000913E1C4FA0AD3577D000000080000000500000002000000000000000100000003"
theorem small_13544_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_13544_right_root small_13544_right_fuel small_13544_right_count small_13544_right_encoded = true := by
  decide +kernel
theorem small_13544_right_covered : CoveredBy scale carrier boxes small_13544_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_13544_right_root small_13544_right_fuel small_13544_right_count small_13544_right_encoded small_13544_right_checked

theorem cover_13544 : CoveredBy scale carrier boxes root_13544 := by
  apply coveredBy_split_literal root_13544 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0006.root small_13544_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0006.covered
  · exact small_13544_right_covered
#print axioms cover_13544

def root_13539 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_13539_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_13539_right_fuel : Nat := 1
def small_13539_right_count : Nat := 1
def small_13539_right_encoded : String := "00000002"
theorem small_13539_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_13539_right_root small_13539_right_fuel small_13539_right_count small_13539_right_encoded = true := by
  decide +kernel
theorem small_13539_right_covered : CoveredBy scale carrier boxes small_13539_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_13539_right_root small_13539_right_fuel small_13539_right_count small_13539_right_encoded small_13539_right_checked

theorem cover_13539 : CoveredBy scale carrier boxes root_13539 := by
  apply coveredBy_split_literal root_13539 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_13544 small_13539_right_root coord2 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_13544
  · exact small_13539_right_covered
#print axioms cover_13539

def root_10909 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10909 : CoveredBy scale carrier boxes root_10909 := by
  apply coveredBy_split_literal root_10909 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0005.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_13539 coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0005.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_13539
#print axioms cover_10909

def root_10903 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10903_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10903_left_fuel : Nat := 1
def small_10903_left_count : Nat := 1
def small_10903_left_encoded : String := "00000001"
theorem small_10903_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10903_left_root small_10903_left_fuel small_10903_left_count small_10903_left_encoded = true := by
  decide +kernel
theorem small_10903_left_covered : CoveredBy scale carrier boxes small_10903_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10903_left_root small_10903_left_fuel small_10903_left_count small_10903_left_encoded small_10903_left_checked

theorem cover_10903 : CoveredBy scale carrier boxes root_10903 := by
  apply coveredBy_split_literal root_10903 small_10903_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_10909 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_10903_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_10909
#print axioms cover_10903

def root_10902 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10902_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10902_right_fuel : Nat := 19
def small_10902_right_count : Nat := 135
def small_10902_right_encoded : String := "0F34D0F8045489FB1386ACFA000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FC0F878CFD000000030000000A0F8750FD022A45770000000713E1C4F60AD35779000000060000000600000000000000030000000413867108000000040C9A86FC0000000A0F8750FD022A45770000000A13E1C4F60AD3577910D13CF800000001067ECE7B0000000612EA58FA00000006000000020000000800000000000000030000000A138670FA0CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FC0F878CFD00000003022A45770000000713E1C4F60AD3577910D13CF800000001022A457B13E200FA00000002067ECE7F0000000612EA5908000000040000000A13E1C4FA067ECE7F0000000612EA590800000004000000070000000210D100F80000000700000001000000000F8750FD00000007000000030000000413867108000000040C9A86FC0F878CFD00000003022A45770000000A13E1C4F60AD3577910D13CF800000001022A457B0000000A13E1C4FA022A457F13E201080DE7C9FC0000000A000000050000000400000005000000020000000A000000000F8750FD022A457713E200F6000000000AD3577910D13CF800000001022A457B0000000A000000070000000713E1C4F60AD3577910D13CF800000001022A457B0000000613E1C4FA000000060000000210D100F8000000060000000100000000000000030F34D0FC0000000A000000030000000200000001"
theorem small_10902_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10902_right_root small_10902_right_fuel small_10902_right_count small_10902_right_encoded = true := by
  decide +kernel
theorem small_10902_right_covered : CoveredBy scale carrier boxes small_10902_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10902_right_root small_10902_right_fuel small_10902_right_count small_10902_right_encoded small_10902_right_checked

theorem cover_10902 : CoveredBy scale carrier boxes root_10902 := by
  apply coveredBy_split_literal root_10902 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_10903 small_10902_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_10903
  · exact small_10902_right_covered
#print axioms cover_10902

def root_10897 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10897_right_root : ZRayBox := fun j => (#[⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10897_right_fuel : Nat := 1
def small_10897_right_count : Nat := 1
def small_10897_right_encoded : String := "00000000"
theorem small_10897_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10897_right_root small_10897_right_fuel small_10897_right_count small_10897_right_encoded = true := by
  decide +kernel
theorem small_10897_right_covered : CoveredBy scale carrier boxes small_10897_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10897_right_root small_10897_right_fuel small_10897_right_count small_10897_right_encoded small_10897_right_checked

theorem cover_10897 : CoveredBy scale carrier boxes root_10897 := by
  apply coveredBy_split_literal root_10897 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_10902 small_10897_right_root coord0 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_10902
  · exact small_10897_right_covered
#print axioms cover_10897

def root_6339 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6339 : CoveredBy scale carrier boxes root_6339 := by
  apply coveredBy_split_literal root_6339 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_6340 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_10897 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_6340
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_10897
#print axioms cover_6339

def root_6333 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6333_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6333_left_fuel : Nat := 1
def small_6333_left_count : Nat := 1
def small_6333_left_encoded : String := "00000004"
theorem small_6333_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6333_left_root small_6333_left_fuel small_6333_left_count small_6333_left_encoded = true := by
  decide +kernel
theorem small_6333_left_covered : CoveredBy scale carrier boxes small_6333_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6333_left_root small_6333_left_fuel small_6333_left_count small_6333_left_encoded small_6333_left_checked

theorem cover_6333 : CoveredBy scale carrier boxes root_6333 := by
  apply coveredBy_split_literal root_6333 small_6333_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_6339 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6333_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_6339
#print axioms cover_6333

def root_5925 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5925_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5925_left_fuel : Nat := 22
def small_5925_left_count : Nat := 191
def small_5925_left_encoded : String := "12073D08045489F71386ACF6000000000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9BFD0F350CFC000000030CFD9BFF000000050F34D108000000040C9A86F80F878CF900000001000000070F8750F900000005000000010F34D0FC0000000900000003138670FA0CFD9BFD0F350CFC000000030CFD9BFF000000070F34D108000000040C9A86F80F878CF900000001000000070F8750F90C9A86FC0F878CFD00000003067ECE77000000070000000900000007000000010F34D0FC0CFD9BFF000000090F34D108000000040000000900000003000000020F34D0F8045489FB1386ACFA000000020CFD9BFD0F350CFC000000030000000700000007138670FA0CFD9BFD00000007000000070000000200000001138670F60CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9BFD0F350CFC000000030CFD9BFF000000090F34D108000000040C9A86F80F878CF9000000010C9A86FC000000090F8750FD022A4577000000070000000900000003000000090F34D0FC0000000900000003138670FA0CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86F80000000700000009000000040F34D108000000040C9A86F80F878CF9000000010C9A86FC0F878CFD00000003022A45770000000700000009000000070F8750F90C9A86FC0F878CFD00000003000000090F8750FD022A457713E200F600000000022A457B000000070000000713E1C4F6022A457B0000000913E1C4FA0AD3577F0000000610D101080000000400000006000000020000000000000003000000010F34D0FC0CFD9BFF000000090F34D108000000040000000900000003000000020F34D0F8045489FB1386ACFA000000020CFD9BFD0F350CFC000000030CFD9BFF000000070F34D10800000004000000070F34D0FC0000000900000003138670FA0CFD9BFD0F350CFC000000030CFD9BFF000000070F34D10800000004000000070F34D0FC0CFD9BFF000000070F34D10800000004022A457700000007000000090000000300000002000000010000000000000004"
theorem small_5925_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5925_left_root small_5925_left_fuel small_5925_left_count small_5925_left_encoded = true := by
  decide +kernel
theorem small_5925_left_covered : CoveredBy scale carrier boxes small_5925_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5925_left_root small_5925_left_fuel small_5925_left_count small_5925_left_encoded small_5925_left_checked

theorem cover_5925 : CoveredBy scale carrier boxes root_5925 := by
  apply coveredBy_split_literal root_5925 small_5925_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_6333 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5925_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_6333
#print axioms cover_5925

def root_5919 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5919_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5919_left_fuel : Nat := 1
def small_5919_left_count : Nat := 1
def small_5919_left_encoded : String := "00000003"
theorem small_5919_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5919_left_root small_5919_left_fuel small_5919_left_count small_5919_left_encoded = true := by
  decide +kernel
theorem small_5919_left_covered : CoveredBy scale carrier boxes small_5919_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5919_left_root small_5919_left_fuel small_5919_left_count small_5919_left_encoded small_5919_left_checked

theorem cover_5919 : CoveredBy scale carrier boxes root_5919 := by
  apply coveredBy_split_literal root_5919 small_5919_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_5925 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5919_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_5925
#print axioms cover_5919

def root_5918 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5918_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5918_right_fuel : Nat := 10
def small_5918_right_count : Nat := 33
def small_5918_right_encoded : String := "120700FC08A912FF12073D08045489F71386ACF6000000000CFD9BF90F350CF8000000010000000900000009138670F60CFD9BF9000000090000000900000000000000041207010800000004045489F70000000A138670F60CFD9BF90F350CF800000001045489FB00000009138670FA0000000A000000020000000A0000000000000003"
theorem small_5918_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5918_right_root small_5918_right_fuel small_5918_right_count small_5918_right_encoded = true := by
  decide +kernel
theorem small_5918_right_covered : CoveredBy scale carrier boxes small_5918_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5918_right_root small_5918_right_fuel small_5918_right_count small_5918_right_encoded small_5918_right_checked

theorem cover_5918 : CoveredBy scale carrier boxes root_5918 := by
  apply coveredBy_split_literal root_5918 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_5919 small_5918_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_5919
  · exact small_5918_right_covered
#print axioms cover_5918

def root_5913 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5913_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5913_right_fuel : Nat := 1
def small_5913_right_count : Nat := 1
def small_5913_right_encoded : String := "00000002"
theorem small_5913_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5913_right_root small_5913_right_fuel small_5913_right_count small_5913_right_encoded = true := by
  decide +kernel
theorem small_5913_right_covered : CoveredBy scale carrier boxes small_5913_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5913_right_root small_5913_right_fuel small_5913_right_count small_5913_right_encoded small_5913_right_checked

theorem cover_5913 : CoveredBy scale carrier boxes root_5913 := by
  apply coveredBy_split_literal root_5913 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_5918 small_5913_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_5918
  · exact small_5913_right_covered
#print axioms cover_5913

def root_5121 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5121_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5121_left_fuel : Nat := 31
def small_5121_left_count : Nat := 371
def small_5121_left_encoded : String := "12073CFA0000000208A912FD12073CFC0000000308A912FF12073D08045489F71386ACF6000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002000000090F34D0FA0CFD9BFD0000000500000009000000020F34D0F80CFD9BFB0F350CFA000000020CFD9BFD00000005000000070F34D0FA0CFD9BFD0F350CFC0000000300000007000000070000000200000001138670F60CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002000000090F34D0FA0CFD9BFD0F350CFC000000030CFD9BFF000000050F34D108000000040000000900000009000000020F34D0F80CFD9BFB0F350CFA000000020CFD9BFD0F350CFC000000030CFD9BFF000000050F34D108000000040C9A86FA0000000900000007000000090F34D0FA0CFD9BFD0F350CFC000000030CFD9BFF000000070F34D108000000040C9A86FC000000090000000700000009000000020000000100000000000000041207010800000004045489F71386ACF6000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F80F878CF9000000010000000A000000090000000413867108000000040C9A86F80000000A0F8750F90C9A86FA0000000A0000000A000000010000000A0F34D0FA0CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F80F878CF9000000010C9A86FC0000000A0F8750FD067ECE770000000512EA58F60000000A00000000000000030F8750F90C9A86FC000000090F8750FD0000000500000003000000010000000413867108000000040C9A86F80F878CF9000000010000000A0F8750F90C9A86FC0F878CFD000000030000000A0F8750FD067ECE770000000A12EA58F60AD3577B0000000A10D100FA022A457F0000000913E1C508000000040000000A000000020000000000000003000000010000000A000000020F34D0F80000000A00000001138670F60CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F80F878CF9000000010C9A86FA000000090F8750FB0000000900000002000000090000000413867108000000040C9A86F80F878CF9000000010C9A86FA0000000A0F8750FB0000000A000000020F8750F90C9A86FA0F878CFB000000020C9A86FC000000090F8750FD022A45770000000900000009000000030F8750FB0000000900000002000000010F34D0FC00000009000000030F34D0FA0CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F80F878CF9000000010C9A86FC0F878CFD00000003000000090F8750FD022A457713E200F6000000000AD3577B0000000510D100FA067ECE7F0000000512EA590800000004000000090000000213E1C4F60AD3577B0000000910D100FA000000090000000200000000000000030F8750F900000009000000010000000413867108000000040C9A86F80F878CF9000000010C9A86FC0F878CFD000000030000000A0F8750FD022A45770000000A13E1C4F60AD3577B0000000A10D100FA022A457F00000006000000080000000200000000000000030F8750F90C9A86FC0F878CFD00000003022A457700000009000000090F8750FD022A457713E200F6000000000AD3577B10D13CFA00000002022A457F0000000913E1C508000000040B4D43F80000000A0000000910D100FA022A457F0000000913E1C508000000040B4D43F810804CF9000000010B4D43FC0000000A00000008108010F90B4D43FC00000009108010FD033F67B7000000090000000900000003000000010000000213E1C4F60AD3577B10D13CFA000000020000000910D100FA022A457F0000000913E1C508000000040B4D43F810804CF9000000010B4D43FC000000090000000600000009000000020000000000000003000000010F34D0FC0000000A00000003000000020F34D0F80CFD9BFB0000000A0F34D0FA0000000A000000020000000100000000120700FC08A912FF12073D08000000090000000412070108000000040000000A00000003"
theorem small_5121_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5121_left_root small_5121_left_fuel small_5121_left_count small_5121_left_encoded = true := by
  decide +kernel
theorem small_5121_left_covered : CoveredBy scale carrier boxes small_5121_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5121_left_root small_5121_left_fuel small_5121_left_count small_5121_left_encoded small_5121_left_checked

theorem cover_5121 : CoveredBy scale carrier boxes root_5121 := by
  apply coveredBy_split_literal root_5121 small_5121_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_5913 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5121_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_5913
#print axioms cover_5121

def root_5115 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5115_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5115_left_fuel : Nat := 1
def small_5115_left_count : Nat := 1
def small_5115_left_encoded : String := "00000001"
theorem small_5115_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5115_left_root small_5115_left_fuel small_5115_left_count small_5115_left_encoded = true := by
  decide +kernel
theorem small_5115_left_covered : CoveredBy scale carrier boxes small_5115_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5115_left_root small_5115_left_fuel small_5115_left_count small_5115_left_encoded small_5115_left_checked

theorem cover_5115 : CoveredBy scale carrier boxes root_5115 := by
  apply coveredBy_split_literal root_5115 small_5115_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_5121 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5115_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_5121
#print axioms cover_5115

def root_5114 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5114_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5114_right_fuel : Nat := 16
def small_5114_right_count : Nat := 93
def small_5114_right_encoded : String := "120700F808A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073D08045489F71386ACF600000000045489F91386ACF8000000010CFD9BFB0000000A0000000700000007138670F6045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350CFC0000000300000007000000070F34D0FA0CFD9BFD0F350CFC00000003000000070000000700000002138670F80CFD9BFB0000000A0000000700000001000000000000000412070108000000040000000A0000000A120700FA08A912FD12073CFC0000000308A912FF12073D08045489F700000007138670F6045489F91386ACF800000001045489FB1386ACFA000000020CFD9BFD000000070000000700000007138670F8000000070000000100000000000000041207010800000004045489F70000000A138670F6045489F91386ACF800000001045489FB0000000A138670FA0000000A000000020000000A00000000120700FC0000000A000000030000000200000001"
theorem small_5114_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5114_right_root small_5114_right_fuel small_5114_right_count small_5114_right_encoded = true := by
  decide +kernel
theorem small_5114_right_covered : CoveredBy scale carrier boxes small_5114_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5114_right_root small_5114_right_fuel small_5114_right_count small_5114_right_encoded small_5114_right_checked

theorem cover_5114 : CoveredBy scale carrier boxes root_5114 := by
  apply coveredBy_split_literal root_5114 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_5115 small_5114_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_5115
  · exact small_5114_right_covered
#print axioms cover_5114

def root_5109 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5109_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5109_right_fuel : Nat := 1
def small_5109_right_count : Nat := 1
def small_5109_right_encoded : String := "00000000"
theorem small_5109_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5109_right_root small_5109_right_fuel small_5109_right_count small_5109_right_encoded = true := by
  decide +kernel
theorem small_5109_right_covered : CoveredBy scale carrier boxes small_5109_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5109_right_root small_5109_right_fuel small_5109_right_count small_5109_right_encoded small_5109_right_checked

theorem cover_5109 : CoveredBy scale carrier boxes root_5109 := by
  apply coveredBy_split_literal root_5109 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_5114 small_5109_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_5114
  · exact small_5109_right_covered
#print axioms cover_5109

def root_4041 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4041_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4041_left_fuel : Nat := 36
def small_4041_left_count : Nat := 495
def small_4041_left_encoded : String := "12073CF60000000008A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073D080CFD9BF70F350CF6000000000CFD9BF9000000050F34D0F800000007000000010F34D0F60CFD9BF90F350CF8000000010CFD9BFB000000050F34D0FA00000005000000020F34D0F80CFD9BFB000000050000000700000001000000000000000412070108000000040CFD9BF70F350CF6000000000CFD9BF90F350CF8000000010CFD9BFB0000000A0F34D0FA0000000A000000020000000A0F34D0F60CFD9BF90F350CF8000000010CFD9BFB0000000A0F34D0FA0CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F8000000050F8750F900000005000000010000000413867108000000040000000A0000000A000000020000000A00000000120700FC08A912FF12073D08000000090000000412070108000000040000000A00000003120700FA08A912FD12073CFC0000000308A912FF12073D080CFD9BF70F350CF6000000000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9BFD000000050F34D0FC0000000500000003138670FA0CFD9BFD000000050F34D0FC0CFD9BFF000000050F34D108000000040C9A86F6000000070000000700000003000000020F34D0F800000007000000010F34D0F60CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9BFD000000050F34D0FC0000000900000003138670FA0CFD9BFD0F350CFC000000030CFD9BFF000000050F34D10800000004000000070F34D0FC0CFD9BFF000000070F34D108000000040C9A86F8000000070000000900000003000000020F34D0F8045489FB000000070000000700000001000000000000000412070108000000040CFD9BF70F350CF6000000000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F60F878CF7000000000C9A86F8000000050F8750F900000005000000010F8750F700000005000000000000000413867108000000040C9A86F60000000A0000000A0000000A138670FA0CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F6000000070F8750F700000007000000000000000413867108000000040C9A86F60F878CF7000000000C9A86F80F878CF9000000010000000A0F8750F90C9A86FC0F878CFD000000030000000A0F8750FD022A457B000000070000000700000003000000010F8750F70C9A86F80000000A0F8750F90C9A86FC0000000A0000000700000001000000000F34D0FC0000000A00000003000000020F34D0F80000000A000000010F34D0F60CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F80F878CF9000000010C9A86FC0000000A000000070F8750F90C9A86FC0F878CFD000000030AD3577700000005000000090F8750FD0000000500000003000000010000000413867108000000040C9A86F80F878CF9000000010000000A0F8750F90C9A86FC0F878CFD000000030000000A0F8750FD0AD357770000000A10D100F6067ECE7B0000000A12EA58FA022A457F0000000713E1C508000000040000000A000000020000000000000003000000010000000A138670FA0CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F80F878CF9000000010C9A86FC0F878CFD0000000300000007000000070F8750F90C9A86FC0F878CFD000000030AD3577710D13CF6000000000000000710D100F6022A457B13E200FA00000002067ECE7F0000000512EA5908000000040000000700000007000000000F8750FD0000000700000003000000010000000413867108000000040C9A86F80F878CF9000000010C9A86FC0F878CFD000000030000000A0F8750FD0AD357770000000710D100F60000000700000000000000030F8750F90C9A86FC0F878CFD000000030AD357770000000A10D100F6022A457B0000000A13E1C4FA022A457F000000080000000600000002000000000F8750FD0AD3577710D13CF600000000022A457B13E200FA00000002022A457F0000000713E1C508000000040B4D43F800000007000000060000000710D100F6022A457B13E200FA00000002022A457F0000000713E1C508000000040B4D43F810804CF9000000010B4D43FC0000000A00000007108010F90B4D43FC10804CFD0000000300000006108010FD09BE353700000006117740F60000000700000000000000030000000113E1C4FA022A457F0000000713E1C508000000040B4D43F810804CF90000000100000007108010F90B4D43FC000000060000000700000001000000020000000000000003000000010F34D0FC0000000A00000003000000020F34D0F8045489FB0000000A138670FA0000000A000000020000000100000000120700FC08A912FF12073D080CFD9BF70F350CF6000000000CFD9BF90F350CF800000001045489FB0000000900000009000000090F34D0F60CFD9BF90F350CF8000000010000000900000009000000000000000412070108000000040000000A0000000300000002120700F808A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073D08000000070000000412070108000000040000000A0000000A120700FA08A912FD12073CFC0000000308A912FF12073D08000000070000000412070108000000040000000A0000000A0000000200000001"
theorem small_4041_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4041_left_root small_4041_left_fuel small_4041_left_count small_4041_left_encoded = true := by
  decide +kernel
theorem small_4041_left_covered : CoveredBy scale carrier boxes small_4041_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4041_left_root small_4041_left_fuel small_4041_left_count small_4041_left_encoded small_4041_left_checked

theorem cover_4041 : CoveredBy scale carrier boxes root_4041 := by
  apply coveredBy_split_literal root_4041 small_4041_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_5109 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4041_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_5109
#print axioms cover_4041

def root_4035 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4035_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4035_left_fuel : Nat := 1
def small_4035_left_count : Nat := 1
def small_4035_left_encoded : String := "00000004"
theorem small_4035_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4035_left_root small_4035_left_fuel small_4035_left_count small_4035_left_encoded = true := by
  decide +kernel
theorem small_4035_left_covered : CoveredBy scale carrier boxes small_4035_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4035_left_root small_4035_left_fuel small_4035_left_count small_4035_left_encoded small_4035_left_checked

theorem cover_4035 : CoveredBy scale carrier boxes root_4035 := by
  apply coveredBy_split_literal root_4035 small_4035_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_4041 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4035_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_4041
#print axioms cover_4035

def root_3831 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3831_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3831_left_fuel : Nat := 16
def small_3831_left_count : Nat := 99
def small_3831_left_encoded : String := "1151E8FF08A912F712073CF60000000008A912F912073CF80000000108A912FB12073CFA0000000208A912FD00000005120700FC05000108000000050000000700000003120700FA08A912FD12073CFC00000003050001080000000500000007120700FC0500010800000007000000070000000300000002120700F808A912FB12073CFA0000000208A912FD12073CFC00000003050001080000000500000007000000070000000700000001120700F608A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073CFC0000000305000108000000050000000900000009120700FA08A912FD12073CFC0000000305000108135D44FF045489F7000000050000000900000004135D80FF00000004045489F71386ACF60000000000000007138670F60CFD9BF90F350CF800000001000000090000000900000000120700FC000000090000000300000002120700F808A912FB12073CFA0000000208A912FD12073CFC000000030500010800000009000000090000000700000007000000010000000000000004"
theorem small_3831_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3831_left_root small_3831_left_fuel small_3831_left_count small_3831_left_encoded = true := by
  decide +kernel
theorem small_3831_left_covered : CoveredBy scale carrier boxes small_3831_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3831_left_root small_3831_left_fuel small_3831_left_count small_3831_left_encoded small_3831_left_checked

theorem cover_3831 : CoveredBy scale carrier boxes root_3831 := by
  apply coveredBy_split_literal root_3831 small_3831_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_4035 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3831_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_4035
#print axioms cover_3831

def root_3825 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3825_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3825_left_fuel : Nat := 1
def small_3825_left_count : Nat := 1
def small_3825_left_encoded : String := "00000003"
theorem small_3825_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3825_left_root small_3825_left_fuel small_3825_left_count small_3825_left_encoded = true := by
  decide +kernel
theorem small_3825_left_covered : CoveredBy scale carrier boxes small_3825_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3825_left_root small_3825_left_fuel small_3825_left_count small_3825_left_encoded small_3825_left_checked

theorem cover_3825 : CoveredBy scale carrier boxes root_3825 := by
  apply coveredBy_split_literal root_3825 small_3825_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_3831 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3825_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_3831
#print axioms cover_3825

def root_17893 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_17893_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_17893_left_fuel : Nat := 28
def small_17893_left_count : Nat := 325
def small_17893_left_encoded : String := "12073CFA0000000208A912FF12073D08050000FC135D80FD00000003045489F71386ACF6000000000CFD9BF9000000050F34D0F80000000700000001138670F60CFD9BF90F350CF8000000010CFD9BFB000000050F34D0FA00000005000000020F34D0F80CFD9BFB00000005000000070000000100000000135D44FD045489F700000005138670F60CFD9BF9000000050F34D0F80CFD9BFB0000000500000007000000010000000000000003000000041207010800000004050000FC135D80FD00000003045489F71386ACF6000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FF0000000513867108000000040C9A86F80F878CF900000001000000080F8750F900000005000000010F34D0FA045489FF1386AD080C9A86F80F878CF900000001000000070F8750F900000005000000010000000413867108000000040C9A86F80F878CF900000001078000FC128A7CFD00000003067ECE770000000800000008000000080F8750F9078000FC128A7CFD00000003067ECE770000000512EA58F60AD3577B0000000510D100FA022A457F0000000513E1C508000000040B4D43F800000008108010F908C000FC0000000500000008000000010000000200000000128A40FD067ECE770000000512EA58F60AD3577B0000000510D100FA0000000800000002000000000000000300000001000000020F34D0F80CFD9BFB000000080F34D0FA045489FF00000007000000080000000200000001138670F60CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FF1386AD080C9A86F80F878CF9000000010C9A86FA0F878CFB00000002078000FC00000005000000060F8750FB00000005000000020F8750F900000005000000010000000413867108000000040C9A86F80F878CF900000001000000080F8750F90C9A86FA0F878CFB00000002078000FC128A7CFD00000003022A45770000000800000008000000080F8750FB0000000800000002000000010F34D0FA045489FF1386AD080C9A86F80F878CF900000001078000FC128A7CFD00000003022A457713E200F6000000000AD3577B000000050000000700000006000000060F8750F9078000FC128A7CFD00000003022A4577000000050000000600000006000000010000000413867108000000040C9A86F80F878CF900000001078000FC128A7CFD00000003022A45770000000800000006000000060F8750F9078000FC128A7CFD00000003022A457713E200F6000000000AD3577B10D13CFA00000002022A457F000000050000000810D100FA022A457F13E201080B4D43F800000006108010F900000006000000010000000413E1C508000000040B4D43F800000006108010F908C000FC11FC24FD000000030000000800000006000000010000000213E1C4F60AD3577B0000000610D100FA000000060000000200000000128A40FD000000060000000300000001000000020F34D0F80CFD9BFB0F350CFA00000002045489FF1386AD080000000800000004000000080F34D0FA045489FF1386AD08078000FC128A7CFD0000000300000007000000060000000400000008000000020000000100000000135D44FD045489F71386ACF6000000000CFD9BF90F350CF8000000010CFD9BFB000000050F34D0FA045489FF0000000500000008000000020F34D0F80000000800000001138670F60CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FF00000005000000080F34D0FA00000006000000020F34D0F800000008000000010000000000000003"
theorem small_17893_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_17893_left_root small_17893_left_fuel small_17893_left_count small_17893_left_encoded = true := by
  decide +kernel
theorem small_17893_left_covered : CoveredBy scale carrier boxes small_17893_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_17893_left_root small_17893_left_fuel small_17893_left_count small_17893_left_encoded small_17893_left_checked

theorem cover_17893 : CoveredBy scale carrier boxes root_17893 := by
  apply coveredBy_split_literal root_17893 small_17893_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0007.root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_17893_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0007.covered
#print axioms cover_17893

def root_17887 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_17887_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_17887_left_fuel : Nat := 1
def small_17887_left_count : Nat := 1
def small_17887_left_encoded : String := "00000001"
theorem small_17887_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_17887_left_root small_17887_left_fuel small_17887_left_count small_17887_left_encoded = true := by
  decide +kernel
theorem small_17887_left_covered : CoveredBy scale carrier boxes small_17887_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_17887_left_root small_17887_left_fuel small_17887_left_count small_17887_left_encoded small_17887_left_checked

theorem cover_17887 : CoveredBy scale carrier boxes root_17887 := by
  apply coveredBy_split_literal root_17887 small_17887_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_17893 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_17887_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_17893
#print axioms cover_17887

def root_17886 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_17886_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_17886_right_fuel : Nat := 14
def small_17886_right_count : Nat := 81
def small_17886_right_encoded : String := "120700F808A912FB12073CFA0000000208A912FF12073D08050000FC135D80FD00000003045489F71386ACF600000000045489F900000007138670F80000000700000001138670F6045489F91386ACF8000000010CFD9BFB0F350CFA000000020000000700000007138670F80CFD9BFB00000008000000070000000100000000135D44FD045489F71386ACF600000000045489F90000000700000008138670F6045489F91386ACF8000000010CFD9BFB0000000800000007000000080000000000000003000000041207010800000004050000FC135D80FD00000003045489F7000000080000000800000008120700FA08A912FF000000071207010800000004050000FC135D80FD00000003045489F700000007138670F6045489F91386ACF800000001045489FB00000007000000070000000700000000000000070000000200000001"
theorem small_17886_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_17886_right_root small_17886_right_fuel small_17886_right_count small_17886_right_encoded = true := by
  decide +kernel
theorem small_17886_right_covered : CoveredBy scale carrier boxes small_17886_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_17886_right_root small_17886_right_fuel small_17886_right_count small_17886_right_encoded small_17886_right_checked

theorem cover_17886 : CoveredBy scale carrier boxes root_17886 := by
  apply coveredBy_split_literal root_17886 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_17887 small_17886_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_17887
  · exact small_17886_right_covered
#print axioms cover_17886

def root_17881 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_17881_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_17881_right_fuel : Nat := 1
def small_17881_right_count : Nat := 1
def small_17881_right_encoded : String := "00000000"
theorem small_17881_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_17881_right_root small_17881_right_fuel small_17881_right_count small_17881_right_encoded = true := by
  decide +kernel
theorem small_17881_right_covered : CoveredBy scale carrier boxes small_17881_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_17881_right_root small_17881_right_fuel small_17881_right_count small_17881_right_encoded small_17881_right_checked

theorem cover_17881 : CoveredBy scale carrier boxes root_17881 := by
  apply coveredBy_split_literal root_17881 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_17886 small_17881_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_17886
  · exact small_17881_right_covered
#print axioms cover_17881

def root_17481 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_17481_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_17481_left_fuel : Nat := 25
def small_17481_left_count : Nat := 191
def small_17481_left_encoded : String := "12073CF60000000008A912F912073CF80000000108A912FB12073CFA0000000208A912FF000000051207010800000004050000FC135D80FD000000030CFD9BF70F350CF6000000000CFD9BF9000000050F34D0F800000007000000010F34D0F60CFD9BF90F350CF8000000010CFD9BFB000000050F34D0FA045489FF0000000513867108000000040C9A86F80F878CF900000001078000FC0000000A000000070F8750F90000000500000001000000020F34D0F80CFD9BFB00000007000000070000000100000000135D44FD0CFD9BF7000000050F34D0F60CFD9BF9000000050F34D0F800000007000000010000000000000003120700FA08A912FF12073D08050000FC135D80FD000000030CFD9BF7000000070F34D0F6000000070000000000000007000000041207010800000004050000FC135D80FD000000030CFD9BF70F350CF6000000000CFD9BF90F350CF800000001045489FB1386ACFA00000002045489FF0000000513867108000000040C9A86F60000000700000007138670FA045489FF0000000713867108000000040000000700000002000000070F34D0F60CFD9BF90F350CF800000001045489FB1386ACFA00000002045489FF0000000713867108000000040C9A86F80F878CF900000001000000070F8750F9078000FC128A7CFD000000030AD357770000000510D100F6067ECE7B000000050000000700000000128A40FD0AD357770000000510D100F600000007000000000000000300000001138670FA045489FF0000000713867108000000040C9A86F8000000070F8750F9078000FC128A7CFD000000030AD357770000000710D100F6022A457B0000000700000007000000000000000700000001000000020F34D0F8000000070000000100000000135D44FD0CFD9BF7000000070F34D0F60CFD9BF90F350CF800000001045489FB000000070000000700000007000000000000000300000002120700F808A912FB12073CFA0000000208A912FF12073D08050000FC0000000700000007000000041207010800000004000000070000000700000001"
theorem small_17481_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_17481_left_root small_17481_left_fuel small_17481_left_count small_17481_left_encoded = true := by
  decide +kernel
theorem small_17481_left_covered : CoveredBy scale carrier boxes small_17481_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_17481_left_root small_17481_left_fuel small_17481_left_count small_17481_left_encoded small_17481_left_checked

theorem cover_17481 : CoveredBy scale carrier boxes root_17481 := by
  apply coveredBy_split_literal root_17481 small_17481_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_17881 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_17481_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_17881
#print axioms cover_17481

def root_17475 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_17475_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_17475_left_fuel : Nat := 1
def small_17475_left_count : Nat := 1
def small_17475_left_encoded : String := "00000004"
theorem small_17475_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_17475_left_root small_17475_left_fuel small_17475_left_count small_17475_left_encoded = true := by
  decide +kernel
theorem small_17475_left_covered : CoveredBy scale carrier boxes small_17475_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_17475_left_root small_17475_left_fuel small_17475_left_count small_17475_left_encoded small_17475_left_checked

theorem cover_17475 : CoveredBy scale carrier boxes root_17475 := by
  apply coveredBy_split_literal root_17475 small_17475_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_17481 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_17475_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_17481
#print axioms cover_17475

def root_17355 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_17355_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_17355_left_fuel : Nat := 15
def small_17355_left_count : Nat := 59
def small_17355_left_encoded : String := "1151E8FF08A912F712073CF60000000008A912F900000005120700F808A912FB000000050000000700000001120700F608A912F912073CF80000000108A912FB00000005120700FA050000FC000000070000000700000002120700F808A912FB12073CFA00000002050000FC135D80FD000000030500010800000005135D80FF00000004045489F700000005138670F6045489F9000000050000000900000000135D44FD0500010800000005135D80FF00000004045489F700000005138670F6045489F900000005000000080000000000000003120700FA0000000700000002000000010000000000000004"
theorem small_17355_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_17355_left_root small_17355_left_fuel small_17355_left_count small_17355_left_encoded = true := by
  decide +kernel
theorem small_17355_left_covered : CoveredBy scale carrier boxes small_17355_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_17355_left_root small_17355_left_fuel small_17355_left_count small_17355_left_encoded small_17355_left_checked

theorem cover_17355 : CoveredBy scale carrier boxes root_17355 := by
  apply coveredBy_split_literal root_17355 small_17355_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_17475 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_17355_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_17475
#print axioms cover_17355

def root_17350 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_17350_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_17350_right_fuel : Nat := 1
def small_17350_right_count : Nat := 1
def small_17350_right_encoded : String := "00000003"
theorem small_17350_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_17350_right_root small_17350_right_fuel small_17350_right_count small_17350_right_encoded = true := by
  decide +kernel
theorem small_17350_right_covered : CoveredBy scale carrier boxes small_17350_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_17350_right_root small_17350_right_fuel small_17350_right_count small_17350_right_encoded small_17350_right_checked

theorem cover_17350 : CoveredBy scale carrier boxes root_17350 := by
  apply coveredBy_split_literal root_17350 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_17355 small_17350_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_17355
  · exact small_17350_right_covered
#print axioms cover_17350

def root_3824 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3824 : CoveredBy scale carrier boxes root_3824 := by
  apply coveredBy_split_literal root_3824 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_3825 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_17350 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_3825
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_17350
#print axioms cover_3824

def root_3818 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3818_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3818_left_fuel : Nat := 1
def small_3818_left_count : Nat := 1
def small_3818_left_encoded : String := "00000002"
theorem small_3818_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3818_left_root small_3818_left_fuel small_3818_left_count small_3818_left_encoded = true := by
  decide +kernel
theorem small_3818_left_covered : CoveredBy scale carrier boxes small_3818_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3818_left_root small_3818_left_fuel small_3818_left_count small_3818_left_encoded small_3818_left_checked

theorem cover_3818 : CoveredBy scale carrier boxes root_3818 := by
  apply coveredBy_split_literal root_3818 small_3818_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_3824 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3818_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_3824
#print axioms cover_3818

def root_3817 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3817_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3817_right_fuel : Nat := 29
def small_3817_right_count : Nat := 401
def small_3817_right_encoded : String := "1151E8FB0A0000FC115224FD000000030A0001081151E8FF08A912F712073CF60000000008A912F90000000500000009120700F608A912F900000009120700F800000009000000010000000000000004115224FF0000000408A912F712073CF60000000008A912F912073CF80000000108A912FD12073CFC0000000308A912FF000000051207010800000004050000FA135D80FB000000020CFD9BF70000000A0F34D0F60000000A00000000135D44FB0CFD9BF7000000050F34D0F60000000A0000000000000002120700FC0000000A00000003120700F80000000A00000001120700F608A912F912073CF80000000108A912FD12073CFC0000000308A912FF12073D08050000FA135D80FB00000002045489F71386ACF6000000000CFD9BF90000000500000009138670F60CFD9BF90F350CF800000001000000090F34D0F80CFD9BFD00000005000000070000000100000000135D44FB045489F700000005138670F60CFD9BF9000000050F34D0F80CFD9BFD0000000500000007000000010000000000000002000000041207010800000004050000FA135D80FB00000002045489F71386ACF6000000000CFD9BF90F350CF8000000010CFD9BFD0F350CFC00000003045489FF000000050000000A0000000A0000000A138670F60CFD9BF90F350CF8000000010CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F80F878CF90000000100000009000000090000000413867108000000040C9A86F80000000A0F8750F90C9A86FC000000090F8750FD078000FA000000090000000900000003000000010000000A0000000A00000000135D44FB045489F71386ACF6000000000CFD9BF90F350CF8000000010CFD9BFD000000050000000A0000000A138670F60CFD9BF90F350CF8000000010CFD9BFD0F350CFC00000003045489FF0000000513867108000000040C9A86F80000000A0F8750F90C9A86FC0000000A0F8750FD0000000500000003000000010F34D0FC00000009000000030F34D0F80000000A000000010000000000000002120700FC08A912FF0000000912070108000000040000000A00000003120700F808A912FD12073CFC0000000308A912FF12073D08050000FA135D80FB00000002045489F70000000A138670F6045489F91386ACF8000000010CFD9BFD0F350CFC0000000300000007000000070000000A00000000135D44FB045489F70000000A138670F6045489F91386ACF8000000010CFD9BFD0F350CFC0000000300000007000000070000000A00000000000000020000000412070108000000040000000A0000000A00000001000000001151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A912F712073CF60000000008A912F900000005120700F808A912FF000000050000000800000001120700F608A912F912073CF80000000108A912FF000000051207010800000004050000FA135D80FB00000002050000FC135D80FD00000003045489F71386ACF6000000000CFD9BF9000000050F34D0F80000000700000001138670F60CFD9BF90F350CF800000001045489FF0000000513867108000000040C9A86F80F878CF900000001000000080F8750F900000005000000010F34D0F8000000080000000100000000135D44FD045489F700000005138670F60CFD9BF900000005000000080000000000000003135D44FB050000FC135D80FD00000003045489F700000005138670F60CFD9BF9000000050F34D0F8045489FF00000005000000080000000100000000135D44FD045489F700000005138670F60CFD9BF90000000500000008000000000000000300000002120700F808A912FF12073D08050000FA135D80FB00000002050000FC135D80FD00000003045489F71386ACF600000000045489F90000000500000008138670F6045489F91386ACF8000000010CFD9BFF000000050F34D1080000000400000007138670F80000000A0000000100000000135D44FD045489F7000000050000000800000003135D44FB050000FC135D80FD00000003045489F700000005138670F6045489F900000005138670F80CFD9BFF00000005000000080000000100000000135D44FD045489F700000005138670F6045489F90000000500000008000000000000000300000002000000041207010800000004050000FA00000008135D44FB000000080000000200000001000000000000000300000002"
theorem small_3817_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3817_right_root small_3817_right_fuel small_3817_right_count small_3817_right_encoded = true := by
  decide +kernel
theorem small_3817_right_covered : CoveredBy scale carrier boxes small_3817_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3817_right_root small_3817_right_fuel small_3817_right_count small_3817_right_encoded small_3817_right_checked

theorem cover_3817 : CoveredBy scale carrier boxes root_3817 := by
  apply coveredBy_split_literal root_3817 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_3818 small_3817_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_3818
  · exact small_3817_right_covered
#print axioms cover_3817

def root_3811 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3811_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3811_left_fuel : Nat := 1
def small_3811_left_count : Nat := 1
def small_3811_left_encoded : String := "00000001"
theorem small_3811_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3811_left_root small_3811_left_fuel small_3811_left_count small_3811_left_encoded = true := by
  decide +kernel
theorem small_3811_left_covered : CoveredBy scale carrier boxes small_3811_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3811_left_root small_3811_left_fuel small_3811_left_count small_3811_left_encoded small_3811_left_checked

theorem cover_3811 : CoveredBy scale carrier boxes root_3811 := by
  apply coveredBy_split_literal root_3811 small_3811_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_3817 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3811_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_3817
#print axioms cover_3811

def root_23504 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_23504_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_23504_left_fuel : Nat := 24
def small_23504_left_count : Nat := 135
def small_23504_left_encoded : String := "12073CFA0000000208A912FD12073CFC0000000308A912FF12073D08050000F8135D80F900000001045489F71386ACF600000000000000090000000900000009000000041207010800000004050000F8135D80F900000001045489F71386ACF6000000000CFD9BFB0F350CFA000000020CFD9BFD0F350CFC00000003045489FF0000000513867108000000040C9A86FA0000000900000009000000090F34D0FA0CFD9BFD0F350CFC00000003045489FF0000000913867108000000040C9A86FC0F878CFD00000003000000090F8750FD078000F8128A7CF900000001067ECE770000000512EA58F60AD3577B0000000510D100FA000000090000000200000000128A40F9067ECE77000000050000000900000001000000030F34D0FC000000090000000300000002138670F60CFD9BFB0F350CFA000000020CFD9BFD0F350CFC00000003045489FF00000009138671080000000400000009000000090F34D0FA0CFD9BFD0F350CFC00000003045489FF0000000913867108000000040C9A86FC000000090F8750FD078000F8128A7CF900000001022A457713E200F6000000000AD3577B0000000910D100FA0000000900000002000000090000000900000003000000090000000200000000135D44F9045489F71386ACF6000000000CFD9BFB000000090F34D0FA0000000900000002138670F60CFD9BFB000000090F34D0FA00000009000000020000000000000001120700FC0000000900000003"
theorem small_23504_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_23504_left_root small_23504_left_fuel small_23504_left_count small_23504_left_encoded = true := by
  decide +kernel
theorem small_23504_left_covered : CoveredBy scale carrier boxes small_23504_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_23504_left_root small_23504_left_fuel small_23504_left_count small_23504_left_encoded small_23504_left_checked

theorem cover_23504 : CoveredBy scale carrier boxes root_23504 := by
  apply coveredBy_split_literal root_23504 small_23504_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0008.root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_23504_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0008.covered
#print axioms cover_23504

def root_23499 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_23499_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_23499_right_fuel : Nat := 1
def small_23499_right_count : Nat := 1
def small_23499_right_encoded : String := "00000000"
theorem small_23499_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_23499_right_root small_23499_right_fuel small_23499_right_count small_23499_right_encoded = true := by
  decide +kernel
theorem small_23499_right_covered : CoveredBy scale carrier boxes small_23499_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_23499_right_root small_23499_right_fuel small_23499_right_count small_23499_right_encoded small_23499_right_checked

theorem cover_23499 : CoveredBy scale carrier boxes root_23499 := by
  apply coveredBy_split_literal root_23499 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_23504 small_23499_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_23504
  · exact small_23499_right_covered
#print axioms cover_23499

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001
