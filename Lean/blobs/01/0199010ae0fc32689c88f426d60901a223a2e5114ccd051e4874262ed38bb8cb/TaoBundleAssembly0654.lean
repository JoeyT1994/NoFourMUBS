import TaoBundleChunkBatch0897
import TaoBundleChunkBatch0898
import TaoBundleChunkBatch0899
import TaoBundleChunkBatch0900
import TaoBundleChunkBatch0901
import TaoBundleChunkBatch0902
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654
def root_9591666 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9591666_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9591666_left_fuel : Nat := 26
def small_9591666_left_count : Nat := 343
def small_9591666_left_encoded : String := "13867100000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9BFD000000050F34D0FC0CFD9BFF000000050F34D0FE0C9A87020F8750F90C9A87040F8750FB000000050000000200000005000000010F878CF9000000010C9A87040F8750FB00000005000000020F878CFB00000002022A45810000000513E201000AD3577D0000000510D100FC0AD3577F0000000510D100FE0DE7CA020E5FD8F90000000500000001000000050000000400000003000000000000000400000003000000020F34D104000000020CFD9BFD0F350CFC00000003000000050F34D0FC0CFD9BFF0F350CFE00000004000000050F34D0FE0C9A87020F8750F9022A458113E1C500000000000AD3577B0000000510D10104000000020000000513E201000AD3577B10D13D040AD3577D0000000510D100FC0AD3577F0000000500000009000000030000000210D10104000000020000000900000000000000010F878CF900000001022A458113E1C500000000000AD3577B0000000510D10104000000020000000513E201000AD3577B10D13D040AD3577D0000000510D100FC0AD3577F0000000510D100FE0DE7CA020E5FD8F900000005000000010000000500000004000000030000000210D10104000000020AD3577D0000000510D100FC0AD3577F0000000510D100FE000000090000000400000003000000000000000400000003000000010F34D102000000010CFD9BFB0F350D040CFD9BFD0F350CFC00000003000000050F34D0FC0CFD9BFF0F350CFE00000004000000050F34D0FE0C9A87040F8750FB022A458113E1C500000000000AD357790000000510D10102000000010000000513E201000AD3577910D13D020AD3577D000000050000000A0000000110D10102000000010000000A00000000000000020F878CFB00000002022A458113E1C500000000000AD357790000000510D10102000000010000000513E201000AD3577910D13D020AD3577D0000000510D100FC0AD3577F0000000510D100FE0DE7CA040E5FD8FB00000005000000020000000500000004000000030000000110D10102000000010AD3577D0000000510D100FC0000000A00000003000000000000000400000003000000020F34D104000000020CFD9BFD0F350CFC00000003000000050F34D0FC0CFD9BFF0F350CFE00000004000000050F34D0FE022A458113E1C500000000000AD3577910D13D020AD3577B0000000510D1010400000002000000050000000110D10102000000010AD3577B0000000510D10104000000020000000513E201000AD3577910D13D020AD3577B10D13D040AD3577D0000000510D100FC0AD3577F0000000510D100FE033F67C10000000513BC31000BE879B9000000051011710200000001000000050000000000000004000000030000000210D10104000000020AD3577D0000000510D100FC0AD3577F0000000510D100FE033F67C113BBF500000000000000000513BC31000BE879B91011AD020000000900000001101171020000000109BE353B00000005000000090000000000000004000000030000000110D10102000000010AD3577B10D13D040AD3577D0000000510D100FC0AD3577F0000000510D100FE033F67C113BBF500000000000000000513BC310009BE353911777D020BE879BB00000005101171040000000200000005000000010000000A0000000000000004000000030000000210D10104000000020AD3577D0000000510D100FC0AD3577F0000000510D100FE033F67C113BBF5000000000009BE3539000000050000000613BC310009BE353911777D0209BE353B0000000511774104000000020000000500000001117741020000000109BE353B0000000500000006000000000000000400000003000000000000000400000003"
theorem small_9591666_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9591666_left_root small_9591666_left_fuel small_9591666_left_count small_9591666_left_encoded = true := by
  decide +kernel
theorem small_9591666_left_covered : CoveredBy scale carrier boxes small_9591666_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9591666_left_root small_9591666_left_fuel small_9591666_left_count small_9591666_left_encoded small_9591666_left_checked

theorem cover_9591666 : CoveredBy scale carrier boxes root_9591666 := by
  apply coveredBy_split_literal root_9591666 small_9591666_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3587.root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_9591666_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3587.covered
#print axioms cover_9591666

def root_9591660 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9591660_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9591660_left_fuel : Nat := 1
def small_9591660_left_count : Nat := 1
def small_9591660_left_encoded : String := "00000004"
theorem small_9591660_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9591660_left_root small_9591660_left_fuel small_9591660_left_count small_9591660_left_encoded = true := by
  decide +kernel
theorem small_9591660_left_covered : CoveredBy scale carrier boxes small_9591660_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9591660_left_root small_9591660_left_fuel small_9591660_left_count small_9591660_left_encoded small_9591660_left_checked

theorem cover_9591660 : CoveredBy scale carrier boxes root_9591660 := by
  apply coveredBy_split_literal root_9591660 small_9591660_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9591666 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9591660_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9591666
#print axioms cover_9591660

def root_9591659 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9591659 : CoveredBy scale carrier boxes root_9591659 := by
  apply coveredBy_split_literal root_9591659 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9591660 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3588.root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9591660
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3588.covered
#print axioms cover_9591659

def root_9591653 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9591653_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9591653_left_fuel : Nat := 1
def small_9591653_left_count : Nat := 1
def small_9591653_left_encoded : String := "00000003"
theorem small_9591653_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9591653_left_root small_9591653_left_fuel small_9591653_left_count small_9591653_left_encoded = true := by
  decide +kernel
theorem small_9591653_left_covered : CoveredBy scale carrier boxes small_9591653_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9591653_left_root small_9591653_left_fuel small_9591653_left_count small_9591653_left_encoded small_9591653_left_checked

theorem cover_9591653 : CoveredBy scale carrier boxes root_9591653 := by
  apply coveredBy_split_literal root_9591653 small_9591653_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9591659 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9591653_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9591659
#print axioms cover_9591653

def root_9603907 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9603907 : CoveredBy scale carrier boxes root_9603907 := by
  apply coveredBy_split_literal root_9603907 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3591.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3592.root coord4 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3591.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3592.covered
#print axioms cover_9603907

def root_9603902 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9603902_right_root : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9603902_right_fuel : Nat := 1
def small_9603902_right_count : Nat := 1
def small_9603902_right_encoded : String := "00000003"
theorem small_9603902_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9603902_right_root small_9603902_right_fuel small_9603902_right_count small_9603902_right_encoded = true := by
  decide +kernel
theorem small_9603902_right_covered : CoveredBy scale carrier boxes small_9603902_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9603902_right_root small_9603902_right_fuel small_9603902_right_count small_9603902_right_encoded small_9603902_right_checked

theorem cover_9603902 : CoveredBy scale carrier boxes root_9603902 := by
  apply coveredBy_split_literal root_9603902 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9603907 small_9603902_right_root coord3 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9603907
  · exact small_9603902_right_covered
#print axioms cover_9603902

def root_9601564 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9601564 : CoveredBy scale carrier boxes root_9601564 := by
  apply coveredBy_split_literal root_9601564 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3590.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9603902 coord3 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3590.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9603902
#print axioms cover_9601564

def root_9601558 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9601558_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9601558_left_fuel : Nat := 1
def small_9601558_left_count : Nat := 1
def small_9601558_left_encoded : String := "00000000"
theorem small_9601558_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9601558_left_root small_9601558_left_fuel small_9601558_left_count small_9601558_left_encoded = true := by
  decide +kernel
theorem small_9601558_left_covered : CoveredBy scale carrier boxes small_9601558_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9601558_left_root small_9601558_left_fuel small_9601558_left_count small_9601558_left_encoded small_9601558_left_checked

theorem cover_9601558 : CoveredBy scale carrier boxes root_9601558 := by
  apply coveredBy_split_literal root_9601558 small_9601558_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9601564 coord0 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_9601558_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9601564
#print axioms cover_9601558

def root_9601557 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9601557 : CoveredBy scale carrier boxes root_9601557 := by
  apply coveredBy_split_literal root_9601557 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9601558 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3593.root coord0 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9601558
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3593.covered
#print axioms cover_9601557

def root_9601551 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9601551_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9601551_left_fuel : Nat := 1
def small_9601551_left_count : Nat := 1
def small_9601551_left_encoded : String := "00000002"
theorem small_9601551_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9601551_left_root small_9601551_left_fuel small_9601551_left_count small_9601551_left_encoded = true := by
  decide +kernel
theorem small_9601551_left_covered : CoveredBy scale carrier boxes small_9601551_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9601551_left_root small_9601551_left_fuel small_9601551_left_count small_9601551_left_encoded small_9601551_left_checked

theorem cover_9601551 : CoveredBy scale carrier boxes root_9601551 := by
  apply coveredBy_split_literal root_9601551 small_9601551_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9601557 coord2 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_9601551_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9601557
#print axioms cover_9601551

def root_9601089 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9601089_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9601089_left_fuel : Nat := 20
def small_9601089_left_count : Nat := 221
def small_9601089_left_encoded : String := "0F8750FB022A458113E1C50000000000067ECE7D12EA94FC00000003067ECE7F12EA94FE000000040DE7CA020E5FD8F90B4D4404108010FB000000060000000210804CFB00000002011523410000000513F895000793F0BD000000050000000600000000000000010E6014F9000000010B4D4404108010FB0115234113F85900000000000793F0BD000000050000000A000000070000000210804CFB000000020115234113F85900000000000793F0BD00000005128220FC0793F0BF00000005128220FE0DAED879000000050E9625020000000100000005000000040000000313F895000793F0BD00000007128220FC0793F0BF0000000A00000007000000030000000012EA58FE0DE7CA020E5FD8F90B4D44040000000710804CFB000000020115234113F85900000000000793F0BD00000007128220FC0569AC3F0000000600000006000000030000000700000001000000070000000412EA58FC067ECE7F12EA94FE000000040DE7CA020E5FD8F90B4D4404108010FB000000060000000210804CFB000000020115234113F85900000000000569AC3D134110FC000000030793F0BF00000005000000061340D4FC0793F0BF00000006000000060000000313F895000000000600000000000000010E6014F9000000010B4D44040000000A10804CFB000000020115234113F85900000000000569AC3D134110FC000000030000000A000000090000000A12EA58FE0DE7CA020E5FD8F90B4D4404108010FB000000060000000210804CFB000000020115234113F85900000000000569AC3D134110FC000000030569AC3F00000006000000061340D4FC0569AC3F00000006000000060000000313F895000569AC3D000000060000000600000000000000010E6014F9000000010B4D4404108010FB000000070000000210804CFB000000020115234113F85900000000000569AC3D000000071340D4FC0569AC3F00000009000000070000000300000007000000040000000313E20100067ECE7D12EA94FC00000003067ECE7F12EA94FE000000040DE7CA020E5FD8F90000000600000001000000070000000712EA58FC067ECE7F12EA94FE000000040DE7CA020E5FD8F900000006000000010E6014F9000000010B4D44040000000A10804CFB00000002033F67C10000000A0000000A12EA58FE0DE7CA020E5FD8F900000006000000010000000700000004000000030000000000000002"
theorem small_9601089_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9601089_left_root small_9601089_left_fuel small_9601089_left_count small_9601089_left_encoded = true := by
  decide +kernel
theorem small_9601089_left_covered : CoveredBy scale carrier boxes small_9601089_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9601089_left_root small_9601089_left_fuel small_9601089_left_count small_9601089_left_encoded small_9601089_left_checked

theorem cover_9601089 : CoveredBy scale carrier boxes root_9601089 := by
  apply coveredBy_split_literal root_9601089 small_9601089_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9601551 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9601089_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9601551
#print axioms cover_9601089

def root_9601083 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9601083_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9601083_left_fuel : Nat := 1
def small_9601083_left_count : Nat := 1
def small_9601083_left_encoded : String := "00000001"
theorem small_9601083_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9601083_left_root small_9601083_left_fuel small_9601083_left_count small_9601083_left_encoded = true := by
  decide +kernel
theorem small_9601083_left_covered : CoveredBy scale carrier boxes small_9601083_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9601083_left_root small_9601083_left_fuel small_9601083_left_count small_9601083_left_encoded small_9601083_left_checked

theorem cover_9601083 : CoveredBy scale carrier boxes root_9601083 := by
  apply coveredBy_split_literal root_9601083 small_9601083_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9601089 coord1 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_9601083_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9601089
#print axioms cover_9601083

def root_9600481 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9600481_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9600481_left_fuel : Nat := 22
def small_9600481_left_count : Nat := 289
def small_9600481_left_encoded : String := "0F8750F90C9A87040F8750FB022A458113E1C50000000000067ECE7D12EA94FC00000003067ECE7F12EA94FE000000040B4D4402000000060000000612EA58FE0B4D440200000006000000060000000412EA58FC067ECE7F12EA94FE000000040B4D4402000000060000000612EA58FE0B4D44020000000600000006000000040000000313E20100067ECE7D12EA94FC00000003067ECE7F000000060000000612EA58FC067ECE7F00000006000000060000000300000000000000020F878CFB00000002022A458113E1C50000000000067ECE7D12EA94FC00000003067ECE7F12EA94FE000000040B4D4402108010F90DE7CA040E5FD8FB00000006000000020E6014FB000000020115234113F85900000000000793F0BD0000000500000007000000080000000110804CF9000000010DE7CA040E5FD8FB011523410000000513F895000793F0BD000000050000000600000000000000020E6014FB000000020115234113F85900000000000793F0BD00000005128220FC0793F0BF00000005128220FE0DAED87B000000050E9625040000000200000005000000040000000313F895000793F0BD12825CFC000000030793F0BF0000000500000009000000080000000012EA58FE0B4D4402108010F90DE7CA040E5FD8FB00000006000000020E6014FB00000002000000090000000110804CF9000000010DE7CA040E5FD8FB0115234113F85900000000000793F0BD12825CFC000000030569AC3F0000000500000006128220FC0569AC3F00000006000000060000000313F895000000000600000000000000020E6014FB000000020115234113F85900000000000793F0BD00000009128220FC0569AC3F134110FE00000004000000090000000900000003000000090000000412EA58FC067ECE7F12EA94FE000000040B4D4402108010F9000000080000000110804CF9000000010DE7CA040E5FD8FB0115234113F85900000000000569AC3D134110FC000000030793F0BF00000005000000060000000800000008000000020000000812EA58FE0B4D4402108010F90DE7CA040E5FD8FB0000000600000002000000080000000110804CF9000000010DE7CA040E5FD8FB0115234113F85900000000000569AC3D134110FC000000030569AC3F00000006000000061340D4FC0569AC3F00000006000000060000000313F895000569AC3D000000060000000600000000000000020E6014FB000000020115234113F85900000000000569AC3D134110FC000000030569AC3F000000080000000A0000000800000008000000040000000313E20100067ECE7D12EA94FC00000003067ECE7F12EA94FE000000040B4D4402108010F9000000080000000110804CF9000000010DE7CA040E5FD8FB00000006000000020000000812EA58FE0B4D4402108010F90DE7CA0400000006000000060000000110804CF9000000010DE7CA040E5FD8FB00000006000000020E6014FB00000002033F67C100000009000000090000000412EA58FC067ECE7F0000000812EA58FE0B4D44020000000810804CF9000000010DE7CA040E5FD8FB00000006000000020000000800000004000000030000000000000001"
theorem small_9600481_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9600481_left_root small_9600481_left_fuel small_9600481_left_count small_9600481_left_encoded = true := by
  decide +kernel
theorem small_9600481_left_covered : CoveredBy scale carrier boxes small_9600481_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9600481_left_root small_9600481_left_fuel small_9600481_left_count small_9600481_left_encoded small_9600481_left_checked

theorem cover_9600481 : CoveredBy scale carrier boxes root_9600481 := by
  apply coveredBy_split_literal root_9600481 small_9600481_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9601083 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9600481_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9601083
#print axioms cover_9600481

def root_9600475 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9600475_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9600475_left_fuel : Nat := 1
def small_9600475_left_count : Nat := 1
def small_9600475_left_encoded : String := "00000004"
theorem small_9600475_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9600475_left_root small_9600475_left_fuel small_9600475_left_count small_9600475_left_encoded = true := by
  decide +kernel
theorem small_9600475_left_covered : CoveredBy scale carrier boxes small_9600475_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9600475_left_root small_9600475_left_fuel small_9600475_left_count small_9600475_left_encoded small_9600475_left_checked

theorem cover_9600475 : CoveredBy scale carrier boxes root_9600475 := by
  apply coveredBy_split_literal root_9600475 small_9600475_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9600481 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_9600475_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9600481
#print axioms cover_9600475

def root_9600474 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9600474 : CoveredBy scale carrier boxes root_9600474 := by
  apply coveredBy_split_literal root_9600474 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9600475 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3594.root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9600475
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3594.covered
#print axioms cover_9600474

def root_9600468 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9600468_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9600468_left_fuel : Nat := 1
def small_9600468_left_count : Nat := 1
def small_9600468_left_encoded : String := "00000003"
theorem small_9600468_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9600468_left_root small_9600468_left_fuel small_9600468_left_count small_9600468_left_encoded = true := by
  decide +kernel
theorem small_9600468_left_covered : CoveredBy scale carrier boxes small_9600468_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9600468_left_root small_9600468_left_fuel small_9600468_left_count small_9600468_left_encoded small_9600468_left_checked

theorem cover_9600468 : CoveredBy scale carrier boxes root_9600468 := by
  apply coveredBy_split_literal root_9600468 small_9600468_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9600474 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_9600468_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9600474
#print axioms cover_9600468

def root_9600467 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9600467 : CoveredBy scale carrier boxes root_9600467 := by
  apply coveredBy_split_literal root_9600467 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9600468 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3595.root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9600468
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3595.covered
#print axioms cover_9600467

def root_9600462 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9600462_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9600462_right_fuel : Nat := 1
def small_9600462_right_count : Nat := 1
def small_9600462_right_encoded : String := "00000002"
theorem small_9600462_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9600462_right_root small_9600462_right_fuel small_9600462_right_count small_9600462_right_encoded = true := by
  decide +kernel
theorem small_9600462_right_covered : CoveredBy scale carrier boxes small_9600462_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9600462_right_root small_9600462_right_fuel small_9600462_right_count small_9600462_right_encoded small_9600462_right_checked

theorem cover_9600462 : CoveredBy scale carrier boxes root_9600462 := by
  apply coveredBy_split_literal root_9600462 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9600467 small_9600462_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9600467
  · exact small_9600462_right_covered
#print axioms cover_9600462

def root_9612709 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9612709_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9612709_right_fuel : Nat := 26
def small_9612709_right_count : Nat := 109
def small_9612709_right_encoded : String := "138670FC045489FF1386ACFE000000040C9A87020F8750F900000008000000010F878CF900000001022A458113E1C500000000000AD3577B10D13D04022A457D13E200FC00000003067ECE7F0000000812EA58FE0DE7CA020E5FD8F900000008000000010E6014F9000000010115234113F85900000000000BE879BB1011AD04033F67BD13BC30FC000000030569AC3F000000081340D4FE0DAED8790E9661020000000500000001000000050000000400000008000000021011710400000002033F67BD13BC30FC000000030569AC3F000000071340D4FE0000000800000004000000070000000800000004000000080000000210D10104000000020000000800000008138670FE0C9A87020F8750F9022A458113E1C500000000000AD3577B10D13D04022A457D13E200FC00000003022A457F000000080000000500000005000000020000000500000005000000010F878CF900000001022A458113E1C500000000000AD3577B10D13D04022A457D13E200FC00000003022A457F13E200FE000000040DE7CA02000000050E6014F9000000010000000500000005000000050000000200000005000000050000000400000003"
theorem small_9612709_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9612709_right_root small_9612709_right_fuel small_9612709_right_count small_9612709_right_encoded = true := by
  decide +kernel
theorem small_9612709_right_covered : CoveredBy scale carrier boxes small_9612709_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9612709_right_root small_9612709_right_fuel small_9612709_right_count small_9612709_right_encoded small_9612709_right_checked

theorem cover_9612709 : CoveredBy scale carrier boxes root_9612709 := by
  apply coveredBy_split_literal root_9612709 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3596.root small_9612709_right_root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3596.covered
  · exact small_9612709_right_covered
#print axioms cover_9612709

def root_9612703 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9612703_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9612703_left_fuel : Nat := 1
def small_9612703_left_count : Nat := 1
def small_9612703_left_encoded : String := "00000002"
theorem small_9612703_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9612703_left_root small_9612703_left_fuel small_9612703_left_count small_9612703_left_encoded = true := by
  decide +kernel
theorem small_9612703_left_covered : CoveredBy scale carrier boxes small_9612703_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9612703_left_root small_9612703_left_fuel small_9612703_left_count small_9612703_left_encoded small_9612703_left_checked

theorem cover_9612703 : CoveredBy scale carrier boxes root_9612703 := by
  apply coveredBy_split_literal root_9612703 small_9612703_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9612709 coord2 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_9612703_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9612709
#print axioms cover_9612703

def root_9600461 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9600461 : CoveredBy scale carrier boxes root_9600461 := by
  apply coveredBy_split_literal root_9600461 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9600462 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9612703 coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9600462
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9612703
#print axioms cover_9600461

def root_9600456 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9600456_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9600456_right_fuel : Nat := 1
def small_9600456_right_count : Nat := 1
def small_9600456_right_encoded : String := "00000001"
theorem small_9600456_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9600456_right_root small_9600456_right_fuel small_9600456_right_count small_9600456_right_encoded = true := by
  decide +kernel
theorem small_9600456_right_covered : CoveredBy scale carrier boxes small_9600456_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9600456_right_root small_9600456_right_fuel small_9600456_right_count small_9600456_right_encoded small_9600456_right_checked

theorem cover_9600456 : CoveredBy scale carrier boxes root_9600456 := by
  apply coveredBy_split_literal root_9600456 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9600461 small_9600456_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9600461
  · exact small_9600456_right_covered
#print axioms cover_9600456

def root_9615896 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9615896_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9615896_right_fuel : Nat := 1
def small_9615896_right_count : Nat := 1
def small_9615896_right_encoded : String := "00000002"
theorem small_9615896_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9615896_right_root small_9615896_right_fuel small_9615896_right_count small_9615896_right_encoded = true := by
  decide +kernel
theorem small_9615896_right_covered : CoveredBy scale carrier boxes small_9615896_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9615896_right_root small_9615896_right_fuel small_9615896_right_count small_9615896_right_encoded small_9615896_right_checked

theorem cover_9615896 : CoveredBy scale carrier boxes root_9615896 := by
  apply coveredBy_split_literal root_9615896 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3597.root small_9615896_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3597.covered
  · exact small_9615896_right_covered
#print axioms cover_9615896

def root_9619069 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9619069 : CoveredBy scale carrier boxes root_9619069 := by
  apply coveredBy_split_literal root_9619069 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3598.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3599.root coord0 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3598.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3599.covered
#print axioms cover_9619069

def root_9619063 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9619063_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9619063_left_fuel : Nat := 1
def small_9619063_left_count : Nat := 1
def small_9619063_left_encoded : String := "00000004"
theorem small_9619063_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9619063_left_root small_9619063_left_fuel small_9619063_left_count small_9619063_left_encoded = true := by
  decide +kernel
theorem small_9619063_left_covered : CoveredBy scale carrier boxes small_9619063_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9619063_left_root small_9619063_left_fuel small_9619063_left_count small_9619063_left_encoded small_9619063_left_checked

theorem cover_9619063 : CoveredBy scale carrier boxes root_9619063 := by
  apply coveredBy_split_literal root_9619063 small_9619063_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9619069 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_9619063_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9619069
#print axioms cover_9619063

def root_9619062 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9619062_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9619062_right_fuel : Nat := 26
def small_9619062_right_count : Nat := 199
def small_9619062_right_encoded : String := "138670FE022A458113E1C500000000000AD3577910D13D020AD3577B10D13D04067ECE7D12EA94FC00000003022A457F13E200FE000000040115234113F85900000000000BE879B91011AD0200000009000000010000000813F895000BE879B91011AD02000000090000000110117102000000010BE879BB0000000700000009000000000000000912EA58FC022A457F13E200FE000000040115234113F85900000000000BE879B91011AD020BE879BB1011AD040569AC3D134110FC00000003033F67BF00000006000000091340D4FC0000000500000003000000021011710400000002000000060000000110117102000000010000000613F895000BE879B91011AD020BE879BB1011AD040569AC3D134110FC00000003033F67BF13BC30FE00000004019FB46113EEF900000000000C730AD90FA7450200000005000000010000000500000005000000050000000500000002000000050000000110117102000000010BE879BB1011AD040000000500000002000000050000000013E1C4FE0115234113F85900000000000BE879B91011AD020000000500000001000000050000000500000004000000030000000210D1010400000002067ECE7D0000000912EA58FC022A457F0000000600000005000000030000000110D10102000000010AD3577B10D13D04067ECE7D0000000812EA58FC022A457F0000000600000005000000030000000210D10104000000020000000613E201000AD3577910D13D020AD3577B10D13D04067ECE7D12EA94FC00000003022A457F13E200FE00000004033F67C113BBF500000000000BE879B91011AD020000000900000001101171020000000100000007000000070000000712EA58FC022A457F13E200FE00000004033F67C113BBF500000000000BE879B91011AD020000000500000001000000050000000500000005000000030000000210D1010400000002067ECE7D0000000912EA58FC00000005000000030000000110D10102000000010AD3577B10D13D04067ECE7D0000000712EA58FC00000005000000030000000210D1010400000002067ECE7D12EA94FC0000000300000009000000050000000000000004"
theorem small_9619062_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9619062_right_root small_9619062_right_fuel small_9619062_right_count small_9619062_right_encoded = true := by
  decide +kernel
theorem small_9619062_right_covered : CoveredBy scale carrier boxes small_9619062_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9619062_right_root small_9619062_right_fuel small_9619062_right_count small_9619062_right_encoded small_9619062_right_checked

theorem cover_9619062 : CoveredBy scale carrier boxes root_9619062 := by
  apply coveredBy_split_literal root_9619062 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9619063 small_9619062_right_root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9619063
  · exact small_9619062_right_covered
#print axioms cover_9619062

def root_9619056 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9619056_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9619056_left_fuel : Nat := 1
def small_9619056_left_count : Nat := 1
def small_9619056_left_encoded : String := "00000003"
theorem small_9619056_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9619056_left_root small_9619056_left_fuel small_9619056_left_count small_9619056_left_encoded = true := by
  decide +kernel
theorem small_9619056_left_covered : CoveredBy scale carrier boxes small_9619056_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9619056_left_root small_9619056_left_fuel small_9619056_left_count small_9619056_left_encoded small_9619056_left_checked

theorem cover_9619056 : CoveredBy scale carrier boxes root_9619056 := by
  apply coveredBy_split_literal root_9619056 small_9619056_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9619062 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_9619056_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9619062
#print axioms cover_9619056

def root_9619055 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9619055_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9619055_right_fuel : Nat := 27
def small_9619055_right_count : Nat := 247
def small_9619055_right_encoded : String := "138670FC045489FF1386ACFE00000004022A458113E1C500000000000AD3577910D13D020AD3577B10D13D04022A457D13E200FC00000003067ECE7F12EA94FE000000040115234113F85900000000000BE879B91011AD020BE879BB1011AD040000000A00000002000000070000000110117102000000010000000A13F895000BE879B91011AD0200000008000000010000000A0000000012EA58FE0115234113F85900000000000BE879B91011AD020BE879BB1011AD04033F67BD13BC30FC000000030569AC3F000000061340D4FE000000050000000413BBF4FC0000000500000003000000021011710400000002000000060000000110117102000000010000000613F895000BE879B91011AD020BE879BB1011AD04033F67BD13BC30FC000000030569AC3F134110FE00000004019FB46113EEF900000000000C730AD9000000080000000500000005000000050000000500000002000000050000000110117102000000010BE879BB1011AD04000000050000000200000005000000000000000413E1C4FC067ECE7F0000000A12EA58FE0115234113F85900000000000BE879B91011AD020000000500000001000000050000000500000004000000030000000210D1010400000002022A457D13E200FC00000003067ECE7F0000000712EA58FE000000060000000413E1C4FC067ECE7F0000000712EA58FE0000000500000004000000030000000110D10102000000010AD3577B10D13D04022A457D13E200FC00000003067ECE7F0000000A12EA58FE00000006000000040000000A0000000210D10104000000020000000613E201000AD3577910D13D020AD3577B10D13D04022A457D13E200FC00000003067ECE7F12EA94FE00000004033F67C113BBF500000000000BE879B9000000080000000A0000000812EA58FE033F67C113BBF500000000000BE879B91011AD02000000050000000100000005000000050000000413E1C4FC067ECE7F0000000800000005000000030000000210D1010400000002022A457D13E200FC00000003067ECE7F0000000812EA58FE0000000500000004000000080000000110D10102000000010AD3577B10D13D04022A457D13E200FC00000003067ECE7F0000000A12EA58FE00000005000000040000000A0000000210D1010400000002022A457D13E200FC00000003067ECE7F00000006000000050000000500000000138670FE022A458113E1C500000000000AD3577910D13D020AD3577B10D13D040000000500000002000000050000000110D10102000000010AD3577B10D13D0400000005000000020000000513E201000AD3577910D13D02000000050000000100000005000000000000000400000003"
theorem small_9619055_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9619055_right_root small_9619055_right_fuel small_9619055_right_count small_9619055_right_encoded = true := by
  decide +kernel
theorem small_9619055_right_covered : CoveredBy scale carrier boxes small_9619055_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9619055_right_root small_9619055_right_fuel small_9619055_right_count small_9619055_right_encoded small_9619055_right_checked

theorem cover_9619055 : CoveredBy scale carrier boxes root_9619055 := by
  apply coveredBy_split_literal root_9619055 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9619056 small_9619055_right_root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9619056
  · exact small_9619055_right_covered
#print axioms cover_9619055

def root_9619049 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9619049_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9619049_left_fuel : Nat := 1
def small_9619049_left_count : Nat := 1
def small_9619049_left_encoded : String := "00000002"
theorem small_9619049_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9619049_left_root small_9619049_left_fuel small_9619049_left_count small_9619049_left_encoded = true := by
  decide +kernel
theorem small_9619049_left_covered : CoveredBy scale carrier boxes small_9619049_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9619049_left_root small_9619049_left_fuel small_9619049_left_count small_9619049_left_encoded small_9619049_left_checked

theorem cover_9619049 : CoveredBy scale carrier boxes root_9619049 := by
  apply coveredBy_split_literal root_9619049 small_9619049_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9619055 coord2 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_9619049_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9619055
#print axioms cover_9619049

def root_9615895 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9615895 : CoveredBy scale carrier boxes root_9615895 := by
  apply coveredBy_split_literal root_9615895 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9615896 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9619049 coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9615896
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9619049
#print axioms cover_9615895

def root_9615889 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9615889_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9615889_left_fuel : Nat := 1
def small_9615889_left_count : Nat := 1
def small_9615889_left_encoded : String := "00000001"
theorem small_9615889_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9615889_left_root small_9615889_left_fuel small_9615889_left_count small_9615889_left_encoded = true := by
  decide +kernel
theorem small_9615889_left_covered : CoveredBy scale carrier boxes small_9615889_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9615889_left_root small_9615889_left_fuel small_9615889_left_count small_9615889_left_encoded small_9615889_left_checked

theorem cover_9615889 : CoveredBy scale carrier boxes root_9615889 := by
  apply coveredBy_split_literal root_9615889 small_9615889_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9615895 coord1 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_9615889_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9615895
#print axioms cover_9615889

def root_9600455 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9600455 : CoveredBy scale carrier boxes root_9600455 := by
  apply coveredBy_split_literal root_9600455 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9600456 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9615889 coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9600456
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9615889
#print axioms cover_9600455

def root_9600449 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9600449_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9600449_left_fuel : Nat := 1
def small_9600449_left_count : Nat := 1
def small_9600449_left_encoded : String := "00000000"
theorem small_9600449_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9600449_left_root small_9600449_left_fuel small_9600449_left_count small_9600449_left_encoded = true := by
  decide +kernel
theorem small_9600449_left_covered : CoveredBy scale carrier boxes small_9600449_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9600449_left_root small_9600449_left_fuel small_9600449_left_count small_9600449_left_encoded small_9600449_left_checked

theorem cover_9600449 : CoveredBy scale carrier boxes root_9600449 := by
  apply coveredBy_split_literal root_9600449 small_9600449_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9600455 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9600449_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9600455
#print axioms cover_9600449

def root_9600448 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9600448 : CoveredBy scale carrier boxes root_9600448 := by
  apply coveredBy_split_literal root_9600448 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9600449 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3600.root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9600449
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3600.covered
#print axioms cover_9600448

def root_9600443 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9600443_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9600443_right_fuel : Nat := 1
def small_9600443_right_count : Nat := 1
def small_9600443_right_encoded : String := "00000004"
theorem small_9600443_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9600443_right_root small_9600443_right_fuel small_9600443_right_count small_9600443_right_encoded = true := by
  decide +kernel
theorem small_9600443_right_covered : CoveredBy scale carrier boxes small_9600443_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9600443_right_root small_9600443_right_fuel small_9600443_right_count small_9600443_right_encoded small_9600443_right_checked

theorem cover_9600443 : CoveredBy scale carrier boxes root_9600443 := by
  apply coveredBy_split_literal root_9600443 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9600448 small_9600443_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9600448
  · exact small_9600443_right_covered
#print axioms cover_9600443

def root_9597725 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9597725 : CoveredBy scale carrier boxes root_9597725 := by
  apply coveredBy_split_literal root_9597725 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3589.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9600443 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3589.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9600443
#print axioms cover_9597725

def root_9597720 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9597720_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9597720_right_fuel : Nat := 1
def small_9597720_right_count : Nat := 1
def small_9597720_right_encoded : String := "00000003"
theorem small_9597720_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9597720_right_root small_9597720_right_fuel small_9597720_right_count small_9597720_right_encoded = true := by
  decide +kernel
theorem small_9597720_right_covered : CoveredBy scale carrier boxes small_9597720_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9597720_right_root small_9597720_right_fuel small_9597720_right_count small_9597720_right_encoded small_9597720_right_checked

theorem cover_9597720 : CoveredBy scale carrier boxes root_9597720 := by
  apply coveredBy_split_literal root_9597720 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9597725 small_9597720_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9597725
  · exact small_9597720_right_covered
#print axioms cover_9597720

def root_9591652 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9591652 : CoveredBy scale carrier boxes root_9591652 := by
  apply coveredBy_split_literal root_9591652 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9591653 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9597720 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9591653
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9597720
#print axioms cover_9591652

def root_9591647 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9591647_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9591647_right_fuel : Nat := 1
def small_9591647_right_count : Nat := 1
def small_9591647_right_encoded : String := "00000002"
theorem small_9591647_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9591647_right_root small_9591647_right_fuel small_9591647_right_count small_9591647_right_encoded = true := by
  decide +kernel
theorem small_9591647_right_covered : CoveredBy scale carrier boxes small_9591647_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9591647_right_root small_9591647_right_fuel small_9591647_right_count small_9591647_right_encoded small_9591647_right_checked

theorem cover_9591647 : CoveredBy scale carrier boxes root_9591647 := by
  apply coveredBy_split_literal root_9591647 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9591652 small_9591647_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9591652
  · exact small_9591647_right_covered
#print axioms cover_9591647

def root_9591646 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9591646 : CoveredBy scale carrier boxes root_9591646 := by
  apply coveredBy_split_literal root_9591646 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9591647 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3601.root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9591647
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3601.covered
#print axioms cover_9591646

def root_9591641 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9591641_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9591641_right_fuel : Nat := 1
def small_9591641_right_count : Nat := 1
def small_9591641_right_encoded : String := "00000001"
theorem small_9591641_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9591641_right_root small_9591641_right_fuel small_9591641_right_count small_9591641_right_encoded = true := by
  decide +kernel
theorem small_9591641_right_covered : CoveredBy scale carrier boxes small_9591641_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9591641_right_root small_9591641_right_fuel small_9591641_right_count small_9591641_right_encoded small_9591641_right_checked

theorem cover_9591641 : CoveredBy scale carrier boxes root_9591641 := by
  apply coveredBy_split_literal root_9591641 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9591646 small_9591641_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9591646
  · exact small_9591641_right_covered
#print axioms cover_9591641

def root_9629236 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9629236 : CoveredBy scale carrier boxes root_9629236 := by
  apply coveredBy_split_literal root_9629236 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3602.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3603.root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3602.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3603.covered
#print axioms cover_9629236

def root_9629230 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9629230_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9629230_left_fuel : Nat := 1
def small_9629230_left_count : Nat := 1
def small_9629230_left_encoded : String := "00000001"
theorem small_9629230_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9629230_left_root small_9629230_left_fuel small_9629230_left_count small_9629230_left_encoded = true := by
  decide +kernel
theorem small_9629230_left_covered : CoveredBy scale carrier boxes small_9629230_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9629230_left_root small_9629230_left_fuel small_9629230_left_count small_9629230_left_encoded small_9629230_left_checked

theorem cover_9629230 : CoveredBy scale carrier boxes root_9629230 := by
  apply coveredBy_split_literal root_9629230 small_9629230_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9629236 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9629230_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9629236
#print axioms cover_9629230

def root_9591640 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9591640 : CoveredBy scale carrier boxes root_9591640 := by
  apply coveredBy_split_literal root_9591640 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9591641 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9629230 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9591641
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9629230
#print axioms cover_9591640

def root_9591634 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9591634_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9591634_left_fuel : Nat := 1
def small_9591634_left_count : Nat := 1
def small_9591634_left_encoded : String := "00000000"
theorem small_9591634_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9591634_left_root small_9591634_left_fuel small_9591634_left_count small_9591634_left_encoded = true := by
  decide +kernel
theorem small_9591634_left_covered : CoveredBy scale carrier boxes small_9591634_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9591634_left_root small_9591634_left_fuel small_9591634_left_count small_9591634_left_encoded small_9591634_left_checked

theorem cover_9591634 : CoveredBy scale carrier boxes root_9591634 := by
  apply coveredBy_split_literal root_9591634 small_9591634_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9591640 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9591634_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9591640
#print axioms cover_9591634

def root_9632742 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9632742 : CoveredBy scale carrier boxes root_9632742 := by
  apply coveredBy_split_literal root_9632742 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3604.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3605.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3604.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3605.covered
#print axioms cover_9632742

def root_9632737 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9632737_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9632737_right_fuel : Nat := 1
def small_9632737_right_count : Nat := 1
def small_9632737_right_encoded : String := "00000000"
theorem small_9632737_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9632737_right_root small_9632737_right_fuel small_9632737_right_count small_9632737_right_encoded = true := by
  decide +kernel
theorem small_9632737_right_covered : CoveredBy scale carrier boxes small_9632737_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9632737_right_root small_9632737_right_fuel small_9632737_right_count small_9632737_right_encoded small_9632737_right_checked

theorem cover_9632737 : CoveredBy scale carrier boxes root_9632737 := by
  apply coveredBy_split_literal root_9632737 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9632742 small_9632737_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9632742
  · exact small_9632737_right_covered
#print axioms cover_9632737

def root_9591633 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9591633 : CoveredBy scale carrier boxes root_9591633 := by
  apply coveredBy_split_literal root_9591633 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9591634 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9632737 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9591634
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9632737
#print axioms cover_9591633

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654
