import TaoBundleAssembly0536
import TaoBundleChunkBatch0735
import TaoBundleChunkBatch0736
import TaoBundleChunkBatch0737
import TaoBundleChunkBatch0738
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537
def root_7821975 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821975_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821975_right_fuel : Nat := 19
def small_7821975_right_count : Nat := 75
def small_7821975_right_encoded : String := "1151E8F90A0000FA115224FB000000020A0000FC115225070A0000FE1152250908A91301120701000000000008A912FB12073CFA00000002000000050000000512073D0008A912FB12073CFA0000000200000005120700FA08A913070000000512073CFC0000000308A913090000000512073CFE00000004050000F8135D80F9000000010CFD9C0100000005000000070000000500000002000000000000000400000005000000031151E907000000030A0000FE1152250900000005000000041151E9090000000408A913010000000512073D0000000005000000001151E8FB0A0000FC115225070A0000FE1152250908A9130112070100000000000000000500000005000000041151E9090000000400000005000000031151E90700000003000000050000000200000001"
theorem small_7821975_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7821975_right_root small_7821975_right_fuel small_7821975_right_count small_7821975_right_encoded = true := by
  decide +kernel
theorem small_7821975_right_covered : CoveredBy scale carrier boxes small_7821975_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7821975_right_root small_7821975_right_fuel small_7821975_right_count small_7821975_right_encoded small_7821975_right_checked

theorem cover_7821975 : CoveredBy scale carrier boxes root_7821975 := by
  apply coveredBy_split_literal root_7821975 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.root_7821976 small_7821975_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.cover_7821976
  · exact small_7821975_right_covered
#print axioms cover_7821975

def root_7821970 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821970_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821970_right_fuel : Nat := 1
def small_7821970_right_count : Nat := 1
def small_7821970_right_encoded : String := "00000000"
theorem small_7821970_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7821970_right_root small_7821970_right_fuel small_7821970_right_count small_7821970_right_encoded = true := by
  decide +kernel
theorem small_7821970_right_covered : CoveredBy scale carrier boxes small_7821970_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7821970_right_root small_7821970_right_fuel small_7821970_right_count small_7821970_right_encoded small_7821970_right_checked

theorem cover_7821970 : CoveredBy scale carrier boxes root_7821970 := by
  apply coveredBy_split_literal root_7821970 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7821975 small_7821970_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7821975
  · exact small_7821970_right_covered
#print axioms cover_7821970

def root_7820476 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7820476 : CoveredBy scale carrier boxes root_7820476 := by
  apply coveredBy_split_literal root_7820476 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2940.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7821970 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2940.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7821970
#print axioms cover_7820476

def root_7812930 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7812930 : CoveredBy scale carrier boxes root_7812930 := by
  apply coveredBy_split_literal root_7812930 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.root_7812931 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7820476 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.cover_7812931
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7820476
#print axioms cover_7812930

def root_7831478 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7831478 : CoveredBy scale carrier boxes root_7831478 := by
  apply coveredBy_split_literal root_7831478 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2944.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2945.root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2944.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2945.covered
#print axioms cover_7831478

def root_7831472 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7831472_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7831472_left_fuel : Nat := 1
def small_7831472_left_count : Nat := 1
def small_7831472_left_encoded : String := "00000001"
theorem small_7831472_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7831472_left_root small_7831472_left_fuel small_7831472_left_count small_7831472_left_encoded = true := by
  decide +kernel
theorem small_7831472_left_covered : CoveredBy scale carrier boxes small_7831472_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7831472_left_root small_7831472_left_fuel small_7831472_left_count small_7831472_left_encoded small_7831472_left_checked

theorem cover_7831472 : CoveredBy scale carrier boxes root_7831472 := by
  apply coveredBy_split_literal root_7831472 small_7831472_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7831478 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_7831472_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7831478
#print axioms cover_7831472

def root_7831471 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7831471_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7831471_right_fuel : Nat := 8
def small_7831471_right_count : Nat := 19
def small_7831471_right_encoded : String := "0F34D0F804548A07138670FC078000FA128A7CFB0000000207800108128A40FF000000060000000400000009128A40FB07800108000000070000000900000002000000030000000500000001"
theorem small_7831471_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7831471_right_root small_7831471_right_fuel small_7831471_right_count small_7831471_right_encoded = true := by
  decide +kernel
theorem small_7831471_right_covered : CoveredBy scale carrier boxes small_7831471_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7831471_right_root small_7831471_right_fuel small_7831471_right_count small_7831471_right_encoded small_7831471_right_checked

theorem cover_7831471 : CoveredBy scale carrier boxes root_7831471 := by
  apply coveredBy_split_literal root_7831471 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7831472 small_7831471_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7831472
  · exact small_7831471_right_covered
#print axioms cover_7831471

def root_7831465 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7831465_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7831465_left_fuel : Nat := 1
def small_7831465_left_count : Nat := 1
def small_7831465_left_encoded : String := "00000000"
theorem small_7831465_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7831465_left_root small_7831465_left_fuel small_7831465_left_count small_7831465_left_encoded = true := by
  decide +kernel
theorem small_7831465_left_covered : CoveredBy scale carrier boxes small_7831465_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7831465_left_root small_7831465_left_fuel small_7831465_left_count small_7831465_left_encoded small_7831465_left_checked

theorem cover_7831465 : CoveredBy scale carrier boxes root_7831465 := by
  apply coveredBy_split_literal root_7831465 small_7831465_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7831471 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7831465_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7831471
#print axioms cover_7831465

def root_7831464 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7831464_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7831464_right_fuel : Nat := 23
def small_7831464_right_count : Nat := 191
def small_7831464_right_encoded : String := "1386AD000CFD9BF90F350CF80000000104548A07138670FC0C9A86F80F878CF900000001078000FA128A7CFB0000000207800108128A40FF067ECE8112EA590000000000022A458700000006000000050000000500000004128A7CFF00000004067ECE810000000900000005128A40FB07800108128A40FF067ECE8112EA590000000000022A458700000009000000050000000500000004128A7CFF00000004067ECE810000000900000005000000020F8750F9078000FA128A7CFB0000000207800108128A40FF067ECE8112EA590000000000022A458713E1C4FC0B4D43F800000006108010F908C000FA0000000600000009000000010000000313E200FC000000030B4D43F810804CF90000000100000005108010F908C000FA11FC24FB000000020000000511FBE8FB064001080000000812FFACFF000000040569AC410000000900000005000000020000000112EA9500022A458713E1C4FC0000000600000003000000050000000000000004128A7CFF00000004067ECE8112EA590000000000022A45870000000913E200FC000000030B4D43F800000009108010F908C000FA00000007000000090000000112EA9500022A4587000000090000000500000000128A40FB07800108128A40FF067ECE8112EA590000000000022A458713E1C4FC0B4D43F800000009108010F9064000FA00000009000000080000000100000003000000080000000800000004128A7CFF00000004067ECE8112EA590000000000022A45870000000913E200FC000000030B4D43F800000009108010F9064000FA00000009000000090000000112EA9500022A45870000000900000005000000000000000200000001000000031386ACFC000000030C9A86F80F878CF900000001000000050F8750F9078000FA128A7CFB0000000200000005128A40FB0780010800000008128A7CFF00000004067ECE8112EA590000000000067ECE8712EA58FC0B4D43F800000005108010F9000000080000000100000003000000050000000500000002000000010F34D0F8000000050000000100000000"
theorem small_7831464_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7831464_right_root small_7831464_right_fuel small_7831464_right_count small_7831464_right_encoded = true := by
  decide +kernel
theorem small_7831464_right_covered : CoveredBy scale carrier boxes small_7831464_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7831464_right_root small_7831464_right_fuel small_7831464_right_count small_7831464_right_encoded small_7831464_right_checked

theorem cover_7831464 : CoveredBy scale carrier boxes root_7831464 := by
  apply coveredBy_split_literal root_7831464 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7831465 small_7831464_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7831465
  · exact small_7831464_right_covered
#print axioms cover_7831464

def root_7831458 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7831458_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7831458_left_fuel : Nat := 1
def small_7831458_left_count : Nat := 1
def small_7831458_left_encoded : String := "00000004"
theorem small_7831458_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7831458_left_root small_7831458_left_fuel small_7831458_left_count small_7831458_left_encoded = true := by
  decide +kernel
theorem small_7831458_left_covered : CoveredBy scale carrier boxes small_7831458_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7831458_left_root small_7831458_left_fuel small_7831458_left_count small_7831458_left_encoded small_7831458_left_checked

theorem cover_7831458 : CoveredBy scale carrier boxes root_7831458 := by
  apply coveredBy_split_literal root_7831458 small_7831458_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7831464 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7831458_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7831464
#print axioms cover_7831458

def root_7829632 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7829632 : CoveredBy scale carrier boxes root_7829632 := by
  apply coveredBy_split_literal root_7829632 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2943.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7831458 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2943.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7831458
#print axioms cover_7829632

def root_7829626 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829626_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829626_left_fuel : Nat := 1
def small_7829626_left_count : Nat := 1
def small_7829626_left_encoded : String := "00000002"
theorem small_7829626_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7829626_left_root small_7829626_left_fuel small_7829626_left_count small_7829626_left_encoded = true := by
  decide +kernel
theorem small_7829626_left_covered : CoveredBy scale carrier boxes small_7829626_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7829626_left_root small_7829626_left_fuel small_7829626_left_count small_7829626_left_encoded small_7829626_left_checked

theorem cover_7829626 : CoveredBy scale carrier boxes root_7829626 := by
  apply coveredBy_split_literal root_7829626 small_7829626_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7829632 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7829626_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7829632
#print axioms cover_7829626

def root_7829625 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829625_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829625_right_fuel : Nat := 22
def small_7829625_right_count : Nat := 261
def small_7829625_right_encoded : String := "135D44FB05000108135D44FF04548A0113867100000000000CFD9BF90F350CF80000000104548A07000000071386ACFC000000030C9A86F8000000070F8750F90000000800000001000000071386AD000CFD9BF90F350CF80000000104548A07138670FC0000000800000003000000080F34D0F800000007000000010000000000000004135D80FF0000000404548A0113867100000000000CFD9BF90F350CF80000000104548A07138670FC0C9A86F80F878CF900000001028000FA13D7ECFB000000020780010800000007128A7CFF0000000400000009000000070F8750F9028000FA13D7ECFB0000000207800108128A40FF022A45810000000713E20100022A458713E1C4FC0B4D43F800000007108010F9000000090000000100000003000000080000000000000004128A7CFF00000004022A458113E1C50000000000022A4587000000090000000A13E20100022A45870000000913E200FC000000030B4D43F800000009108010F900000009000000010000000013D7B0FB0780010800000007128A7CFF00000004022A458100000007000000090000000200000001000000031386ACFC000000030C9A86F80F878CF900000001028000FA13D7ECFB0000000207800108128A40FF0000000700000004128A7CFF00000004022A45810000000A13E20100067ECE8700000009000000050000000013D7B0FB0780010800000007128A7CFF000000040000000A000000020F8750F9028000FA13D7ECFB0000000207800108128A40FF022A458113E1C50000000000067ECE8700000007000000080000000800000004128A7CFF00000004022A458113E1C50000000000067ECE8712EA58FC0000000A000000030000000A13E20100067ECE8712EA58FC0B4D43F800000008108010F9000000080000000100000003000000080000000013D7B0FB0780010800000008128A7CFF00000004022A458113E1C50000000000067ECE8700000007000000060000000800000002000000010F34D0F804548A07000000071386ACFC00000003028000FA13D7ECFB0000000207800108000000070000000A00000007000000011386AD000CFD9BF90F350CF80000000104548A07138670FC0C9A86F80F878CF900000001028000FA13D7ECFB0000000207800108128A40FF0000000800000004128A7CFF00000004067ECE810000000900000009000000080F8750F9028000FA13D7ECFB0000000207800108128A40FF0000000800000004128A7CFF00000004067ECE8112EA590000000000022A45870000000900000008000000080000000800000001000000031386ACFC000000030C9A86F8000000080F8750F900000008000000010F34D0F804548A07138670FC028000FA13D7ECFB000000020780010800000005128A7CFF0000000400000005000000070000000300000005000000010000000000000002"
theorem small_7829625_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7829625_right_root small_7829625_right_fuel small_7829625_right_count small_7829625_right_encoded = true := by
  decide +kernel
theorem small_7829625_right_covered : CoveredBy scale carrier boxes small_7829625_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7829625_right_root small_7829625_right_fuel small_7829625_right_count small_7829625_right_encoded small_7829625_right_checked

theorem cover_7829625 : CoveredBy scale carrier boxes root_7829625 := by
  apply coveredBy_split_literal root_7829625 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7829626 small_7829625_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7829626
  · exact small_7829625_right_covered
#print axioms cover_7829625

def root_7829620 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829620_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829620_right_fuel : Nat := 1
def small_7829620_right_count : Nat := 1
def small_7829620_right_encoded : String := "00000003"
theorem small_7829620_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7829620_right_root small_7829620_right_fuel small_7829620_right_count small_7829620_right_encoded = true := by
  decide +kernel
theorem small_7829620_right_covered : CoveredBy scale carrier boxes small_7829620_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7829620_right_root small_7829620_right_fuel small_7829620_right_count small_7829620_right_encoded small_7829620_right_checked

theorem cover_7829620 : CoveredBy scale carrier boxes root_7829620 := by
  apply coveredBy_split_literal root_7829620 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7829625 small_7829620_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7829625
  · exact small_7829620_right_covered
#print axioms cover_7829620

def root_7829619 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829619_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829619_right_fuel : Nat := 24
def small_7829619_right_count : Nat := 173
def small_7829619_right_encoded : String := "12073CFC00000003050000FA135D80FB0000000205000108135D44FF04548A0113867100000000000CFD9BF90F350CF8000000010CFD9C070F34D0FC0C9A86F80F878CF900000001000000050F8750F9078000FA128A7CFB000000020000000500000008000000010000000300000005000000050000000500000004135D80FF0000000404548A0113867100000000000CFD9BF90F350CF8000000010CFD9C070F34D0FC0C9A86F80F878CF900000001000000050F8750F9078000FA128A7CFB000000020780010800000005128A7CFF0000000400000005128A40FB07800108128A40FF0000000800000004128A7CFF00000004022A458113E1C500000000000AD3578710D100FC0B4D43F810804CF90000000100000005108010F900000006000000010000000300000005000000050000000200000001000000030F350CFC000000030C9A86F8000000050F8750F90C9A86FC000000050F8751070000000300000005000000010F34D0F800000005000000011386AD000CFD9BF90F350CF8000000010CFD9C070F34D0FC0000000500000003000000050000000500000000135D44FB05000108135D44FF04548A0113867100000000000CFD9BF9000000080F34D0F800000005000000010000000800000004135D80FF0000000404548A0113867100000000000CFD9BF90F350CF8000000010CFD9C070F34D0FC0C9A86F80F878CF900000001028000FA13D7ECFB000000020780010800000008128A7CFF00000004022A45810000000A00000005000000080F8750F90000000800000001000000030F350CFC000000030C9A86F8000000080F8750F900000008000000010F34D0F80CFD9C070F34D0FC000000050000000300000005000000011386AD000CFD9BF90F350CF8000000010CFD9C070F34D0FC0000000800000003000000080F34D0F800000005000000010000000000000002"
theorem small_7829619_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7829619_right_root small_7829619_right_fuel small_7829619_right_count small_7829619_right_encoded = true := by
  decide +kernel
theorem small_7829619_right_covered : CoveredBy scale carrier boxes small_7829619_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7829619_right_root small_7829619_right_fuel small_7829619_right_count small_7829619_right_encoded small_7829619_right_checked

theorem cover_7829619 : CoveredBy scale carrier boxes root_7829619 := by
  apply coveredBy_split_literal root_7829619 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7829620 small_7829619_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7829620
  · exact small_7829619_right_covered
#print axioms cover_7829619

def root_7829613 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829613_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829613_left_fuel : Nat := 1
def small_7829613_left_count : Nat := 1
def small_7829613_left_encoded : String := "00000001"
theorem small_7829613_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7829613_left_root small_7829613_left_fuel small_7829613_left_count small_7829613_left_encoded = true := by
  decide +kernel
theorem small_7829613_left_covered : CoveredBy scale carrier boxes small_7829613_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7829613_left_root small_7829613_left_fuel small_7829613_left_count small_7829613_left_encoded small_7829613_left_checked

theorem cover_7829613 : CoveredBy scale carrier boxes root_7829613 := by
  apply coveredBy_split_literal root_7829613 small_7829613_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7829619 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7829613_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7829619
#print axioms cover_7829613

def root_7829612 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829612_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829612_right_fuel : Nat := 9
def small_7829612_right_count : Nat := 21
def small_7829612_right_encoded : String := "120700F808A91307120700FC050000FA135D80FB0000000205000108135D44FF04548A0100000007000000050000000400000005135D44FB05000108000000070000000700000002000000030000000500000001"
theorem small_7829612_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7829612_right_root small_7829612_right_fuel small_7829612_right_count small_7829612_right_encoded = true := by
  decide +kernel
theorem small_7829612_right_covered : CoveredBy scale carrier boxes small_7829612_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7829612_right_root small_7829612_right_fuel small_7829612_right_count small_7829612_right_encoded small_7829612_right_checked

theorem cover_7829612 : CoveredBy scale carrier boxes root_7829612 := by
  apply coveredBy_split_literal root_7829612 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7829613 small_7829612_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7829613
  · exact small_7829612_right_covered
#print axioms cover_7829612

def root_7829606 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829606_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829606_left_fuel : Nat := 1
def small_7829606_left_count : Nat := 1
def small_7829606_left_encoded : String := "00000000"
theorem small_7829606_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7829606_left_root small_7829606_left_fuel small_7829606_left_count small_7829606_left_encoded = true := by
  decide +kernel
theorem small_7829606_left_covered : CoveredBy scale carrier boxes small_7829606_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7829606_left_root small_7829606_left_fuel small_7829606_left_count small_7829606_left_encoded small_7829606_left_checked

theorem cover_7829606 : CoveredBy scale carrier boxes root_7829606 := by
  apply coveredBy_split_literal root_7829606 small_7829606_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7829612 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7829606_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7829612
#print axioms cover_7829606

def root_7829605 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829605_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829605_right_fuel : Nat := 19
def small_7829605_right_count : Nat := 73
def small_7829605_right_encoded : String := "12073D0008A912F912073CF80000000108A91307120700FC050000FA135D80FB0000000205000108135D44FF0CFD9C010F34D100000000000CFD9BF90F350CF80000000104548A07138670FC0C9A86F800000008000000050000000300000005000000050000000500000004135D80FF000000040CFD9C010F34D100000000000CFD9BF90F350CF80000000104548A07138670FC0C9A86F8000000050F8750F9078000FA00000005000000080000000100000003000000050000000500000005135D44FB05000108135D44FF0000000800000004135D80FF000000040CFD9C010F34D100000000000CFD9BF90F350CF80000000104548A07138670FC00000008000000030000000500000005000000050000000200000003000000050000000500000000"
theorem small_7829605_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7829605_right_root small_7829605_right_fuel small_7829605_right_count small_7829605_right_encoded = true := by
  decide +kernel
theorem small_7829605_right_covered : CoveredBy scale carrier boxes small_7829605_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7829605_right_root small_7829605_right_fuel small_7829605_right_count small_7829605_right_encoded small_7829605_right_checked

theorem cover_7829605 : CoveredBy scale carrier boxes root_7829605 := by
  apply coveredBy_split_literal root_7829605 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7829606 small_7829605_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7829606
  · exact small_7829605_right_covered
#print axioms cover_7829605

def root_7829600 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829600_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829600_right_fuel : Nat := 1
def small_7829600_right_count : Nat := 1
def small_7829600_right_encoded : String := "00000004"
theorem small_7829600_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7829600_right_root small_7829600_right_fuel small_7829600_right_count small_7829600_right_encoded = true := by
  decide +kernel
theorem small_7829600_right_covered : CoveredBy scale carrier boxes small_7829600_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7829600_right_root small_7829600_right_fuel small_7829600_right_count small_7829600_right_encoded small_7829600_right_checked

theorem cover_7829600 : CoveredBy scale carrier boxes root_7829600 := by
  apply coveredBy_split_literal root_7829600 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7829605 small_7829600_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7829605
  · exact small_7829600_right_covered
#print axioms cover_7829600

def root_7829599 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7829599 : CoveredBy scale carrier boxes root_7829599 := by
  apply coveredBy_split_literal root_7829599 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7829600 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2946.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7829600
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2946.covered
#print axioms cover_7829599

def root_7829594 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829594_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829594_right_fuel : Nat := 1
def small_7829594_right_count : Nat := 1
def small_7829594_right_encoded : String := "00000003"
theorem small_7829594_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7829594_right_root small_7829594_right_fuel small_7829594_right_count small_7829594_right_encoded = true := by
  decide +kernel
theorem small_7829594_right_covered : CoveredBy scale carrier boxes small_7829594_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7829594_right_root small_7829594_right_fuel small_7829594_right_count small_7829594_right_encoded small_7829594_right_checked

theorem cover_7829594 : CoveredBy scale carrier boxes root_7829594 := by
  apply coveredBy_split_literal root_7829594 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7829599 small_7829594_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7829599
  · exact small_7829594_right_covered
#print axioms cover_7829594

def root_7829593 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7829593 : CoveredBy scale carrier boxes root_7829593 := by
  apply coveredBy_split_literal root_7829593 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7829594 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2947.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7829594
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2947.covered
#print axioms cover_7829593

def root_7829588 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829588_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829588_right_fuel : Nat := 1
def small_7829588_right_count : Nat := 1
def small_7829588_right_encoded : String := "00000002"
theorem small_7829588_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7829588_right_root small_7829588_right_fuel small_7829588_right_count small_7829588_right_encoded = true := by
  decide +kernel
theorem small_7829588_right_covered : CoveredBy scale carrier boxes small_7829588_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7829588_right_root small_7829588_right_fuel small_7829588_right_count small_7829588_right_encoded small_7829588_right_checked

theorem cover_7829588 : CoveredBy scale carrier boxes root_7829588 := by
  apply coveredBy_split_literal root_7829588 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7829593 small_7829588_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7829593
  · exact small_7829588_right_covered
#print axioms cover_7829588

def root_7826934 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7826934 : CoveredBy scale carrier boxes root_7826934 := by
  apply coveredBy_split_literal root_7826934 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2942.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7829588 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2942.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7829588
#print axioms cover_7826934

def root_7826928 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7826928_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7826928_left_fuel : Nat := 1
def small_7826928_left_count : Nat := 1
def small_7826928_left_encoded : String := "00000001"
theorem small_7826928_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7826928_left_root small_7826928_left_fuel small_7826928_left_count small_7826928_left_encoded = true := by
  decide +kernel
theorem small_7826928_left_covered : CoveredBy scale carrier boxes small_7826928_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7826928_left_root small_7826928_left_fuel small_7826928_left_count small_7826928_left_encoded small_7826928_left_checked

theorem cover_7826928 : CoveredBy scale carrier boxes root_7826928 := by
  apply coveredBy_split_literal root_7826928 small_7826928_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7826934 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7826928_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7826934
#print axioms cover_7826928

def root_7839125 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7839125_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7839125_right_fuel : Nat := 33
def small_7839125_right_count : Nat := 359
def small_7839125_right_encoded : String := "1151E907000000030A0001081151E8FF08A91301120701000000000008A912FB12073CFA00000002050000F8135D80F900000001050000FC135D81070500010800000005135D80FF0000000404548A0113867100000000000CFD9BFB0F350CFA000000020C9A86FA000000050F8750FB078000F8000000050000000900000002000000050000000500000003135D4507000000030500010800000005135D80FF0000000404548A0113867100000000000CFD9BFB000000090000000500000005135D44F9050000FC135D81070500010800000009135D80FF0000000404548A01000000091386AD000CFD9BFB00000009000000050000000000000003135D4507000000030500010800000009135D80FF0000000404548A01000000091386AD000CFD9BFB00000009000000050000000000000001120700FA000000050000000212073D0008A912FB12073CFA00000002050000F800000005135D44F9050000FC00000005135D4507000000030000000500000001000000050000000000000004115224FF0000000408A91301120701000000000008A912FB12073CFA0000000208A912FF12073D08050000F8135D80F900000001050000FC135D810704548A0113867100000000000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA000000070F8750FB0C9A87080F8750FF078000F800000005128A40F9078000FC00000005128A41070000000300000005000000010000000400000007000000020000000400000007000000071386AD000CFD9BFB0F350CFA000000020CFD9BFF0F350D08000000050000000400000005000000050000000000000003135D45070000000304548A0113867100000000000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA0F878CFB000000020C9A870800000005000000070F8750FB0C9A87080F8750FF078000F8128A7CF9000000010000000500000009000000040F878CFF00000004078000F8128A7CF900000001028000FC0000000513D7B10700000003022A458113E1C500000000000B4D43FA00000005108010FB0DE7CA0800000005000000070000000200000005128A40F9028000FC0000000713D7B10700000003022A458113E1C5000000000000000007000000070000000100000002000000040F34D10800000004000000070F34D0FA00000005000000021386AD000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA000000050F8750FB0C9A8708000000050F878CFF000000040000000500000002000000040F34D10800000004000000070F34D0FA000000050000000200000000135D44F9050000FC135D810704548A011386710000000000000000070000000700000003135D45070000000304548A0113867100000000000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA000000090F8750FB0000000900000002000000040F34D10800000004000000070F34D0FA00000007000000021386AD000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA000000070F8750FB0C9A87080000000A0000000700000002000000040F34D10800000004000000070F34D0FA0000000700000002000000000000000100000004120701080000000400000007120700FA000000070000000212073D0008A912FB12073CFA0000000208A912FF12073D08050000F8135D80F900000001050000FC00000005135D45070000000300000005135D44F9050000FC135D81070CFD9C010F34D10000000000000000070000000500000003135D4507000000030CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA000000050F8750FB0C9A8708000000050F878CFF000000040000000700000002000000040F34D10800000004000000070F34D0FA00000005000000020F350D0000000005000000000000000100000004120701080000000400000007120700FA000000050000000200000000"
theorem small_7839125_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7839125_right_root small_7839125_right_fuel small_7839125_right_count small_7839125_right_encoded = true := by
  decide +kernel
theorem small_7839125_right_covered : CoveredBy scale carrier boxes small_7839125_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7839125_right_root small_7839125_right_fuel small_7839125_right_count small_7839125_right_encoded small_7839125_right_checked

theorem cover_7839125 : CoveredBy scale carrier boxes root_7839125 := by
  apply coveredBy_split_literal root_7839125 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2948.root small_7839125_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2948.covered
  · exact small_7839125_right_covered
#print axioms cover_7839125

def root_7839119 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7839119_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7839119_left_fuel : Nat := 1
def small_7839119_left_count : Nat := 1
def small_7839119_left_encoded : String := "00000002"
theorem small_7839119_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7839119_left_root small_7839119_left_fuel small_7839119_left_count small_7839119_left_encoded = true := by
  decide +kernel
theorem small_7839119_left_covered : CoveredBy scale carrier boxes small_7839119_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7839119_left_root small_7839119_left_fuel small_7839119_left_count small_7839119_left_encoded small_7839119_left_checked

theorem cover_7839119 : CoveredBy scale carrier boxes root_7839119 := by
  apply coveredBy_split_literal root_7839119 small_7839119_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7839125 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7839119_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7839125
#print axioms cover_7839119

def root_7844549 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7844549_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7844549_right_fuel : Nat := 19
def small_7844549_right_count : Nat := 199
def small_7844549_right_encoded : String := "128A40F9078000FA128A7CFB0000000207800108128A40FF022A458113E1C50000000000022A45870000000513E200FC00000003064000F812FFACF90000000108C000FA11FC24FB000000020640010812FF70FF01152341000000050000000A0000000412FFACFF0000000401152341000000050000000711FBE8FB000000050000000212FF70F9000000050000000113E20100022A458713E1C4FC064000F812FFACF90000000108C000FA0000000A11FBE8FB00000005000000020000000A0000000313E200FC00000003064000F812FFACF90000000108C000FA11FC24FB00000002064001080000000A0000000711FBE8FB064001080000000A12FFACFF00000004033F67C113BBF50000000000033F67C70000000500000007000000070000000212FF70F90000000A000000010000000000000004128A7CFF00000004022A458113E1C50000000000022A45870000000513E200FC00000003064000F812FFACF90000000108C000FA0000000711FBE8FB08C0010811FBE8FF0000000500000004000000070000000212FF70F9000000070000000113E20100022A458713E1C4FC00000007000000030000000700000000128A40FB07800108128A40FF022A45810000000513E20100022A45870000000513E200FC00000003064000F812FFACF900000001064000FA12FFACFB000000020640010812FF70FF033F67C100000005000000080000000412FFACFF00000004033F67C10000000513BC3100033F67C700000005000000080000000012FF70FB064001080000000612FFACFF00000004000000060000000212FF70F9064000FA12FFACFB00000002064001080000000612FFACFF000000040000000600000006000000010000000000000004128A7CFF00000004022A45810000000513E20100022A45870000000513E200FC00000003064000F812FFACF900000001064000FA12FFACFB0000000208C0010811FBE8FF033F67C10000000500000007000000040000000712FF70FB08C001080000000611FC24FF00000004000000060000000212FF70F9064000FA12FFACFB00000002000000070000000600000001000000000000000200000001"
theorem small_7844549_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7844549_right_root small_7844549_right_fuel small_7844549_right_count small_7844549_right_encoded = true := by
  decide +kernel
theorem small_7844549_right_covered : CoveredBy scale carrier boxes small_7844549_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7844549_right_root small_7844549_right_fuel small_7844549_right_count small_7844549_right_encoded small_7844549_right_checked

theorem cover_7844549 : CoveredBy scale carrier boxes root_7844549 := by
  apply coveredBy_split_literal root_7844549 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2950.root small_7844549_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2950.covered
  · exact small_7844549_right_covered
#print axioms cover_7844549

def root_7844544 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7844544_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7844544_right_fuel : Nat := 1
def small_7844544_right_count : Nat := 1
def small_7844544_right_encoded : String := "00000003"
theorem small_7844544_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7844544_right_root small_7844544_right_fuel small_7844544_right_count small_7844544_right_encoded = true := by
  decide +kernel
theorem small_7844544_right_covered : CoveredBy scale carrier boxes small_7844544_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7844544_right_root small_7844544_right_fuel small_7844544_right_count small_7844544_right_encoded small_7844544_right_checked

theorem cover_7844544 : CoveredBy scale carrier boxes root_7844544 := by
  apply coveredBy_split_literal root_7844544 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7844549 small_7844544_right_root coord3 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7844549
  · exact small_7844544_right_covered
#print axioms cover_7844544

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537
