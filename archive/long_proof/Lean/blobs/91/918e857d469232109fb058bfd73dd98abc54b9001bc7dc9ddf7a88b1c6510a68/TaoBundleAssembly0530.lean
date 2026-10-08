import TaoBundleAssembly0446
import TaoBundleAssembly0485
import TaoBundleAssembly0511
import TaoBundleAssembly0529
import TaoBundleChunkBatch0729
import TaoBundleChunkBatch0730
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530
def root_7749446 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7749446 : CoveredBy scale carrier boxes root_7749446 := by
  apply coveredBy_split_literal root_7749446 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0529.root_7749447 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2916.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0529.cover_7749447
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2916.covered
#print axioms cover_7749446

def root_7749445 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7749445 : CoveredBy scale carrier boxes root_7749445 := by
  apply coveredBy_split_literal root_7749445 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.root_7749446 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2917.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.cover_7749446
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2917.covered
#print axioms cover_7749445

def root_7739061 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7739061 : CoveredBy scale carrier boxes root_7739061 := by
  apply coveredBy_split_literal root_7739061 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0529.root_7739062 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.root_7749445 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0529.cover_7739062
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.cover_7749445
#print axioms cover_7739061

def root_7717787 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7717787 : CoveredBy scale carrier boxes root_7717787 := by
  apply coveredBy_split_literal root_7717787 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0529.root_7717788 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.root_7739061 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0529.cover_7717788
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.cover_7739061
#print axioms cover_7717787

def root_7456051 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7456051 : CoveredBy scale carrier boxes root_7456051 := by
  apply coveredBy_split_literal root_7456051 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0529.root_7456052 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.root_7717787 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0529.cover_7456052
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.cover_7717787
#print axioms cover_7456051

def root_7075993 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7075993 : CoveredBy scale carrier boxes root_7075993 := by
  apply coveredBy_split_literal root_7075993 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.root_7075994 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.root_7456051 coord2 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.cover_7075994
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.cover_7456051
#print axioms cover_7075993

def root_6455929 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6455929 : CoveredBy scale carrier boxes root_6455929 := by
  apply coveredBy_split_literal root_6455929 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_6455930 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.root_7075993 coord1 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_6455930
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.cover_7075993
#print axioms cover_6455929

def root_5076037 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5076037 : CoveredBy scale carrier boxes root_5076037 := by
  apply coveredBy_split_literal root_5076037 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_5076038 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.root_6455929 coord1 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_5076038
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.cover_6455929
#print axioms cover_5076037

def root_7761371 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7761371 : CoveredBy scale carrier boxes root_7761371 := by
  apply coveredBy_split_literal root_7761371 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2918.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2919.root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2918.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2919.covered
#print axioms cover_7761371

def root_7761365 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7761365_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7761365_left_fuel : Nat := 1
def small_7761365_left_count : Nat := 1
def small_7761365_left_encoded : String := "00000002"
theorem small_7761365_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7761365_left_root small_7761365_left_fuel small_7761365_left_count small_7761365_left_encoded = true := by
  decide +kernel
theorem small_7761365_left_covered : CoveredBy scale carrier boxes small_7761365_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7761365_left_root small_7761365_left_fuel small_7761365_left_count small_7761365_left_encoded small_7761365_left_checked

theorem cover_7761365 : CoveredBy scale carrier boxes root_7761365 := by
  apply coveredBy_split_literal root_7761365 small_7761365_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.root_7761371 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_7761365_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.cover_7761371
#print axioms cover_7761365

def root_7761364 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7761364_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7761364_right_fuel : Nat := 14
def small_7761364_right_count : Nat := 69
def small_7761364_right_encoded : String := "0F34D0FA045489FD1386ACFC00000003045489FF00000006138670FE0C9A86F8000000060F8750F9022A458113E1C500000000000AD3577B10D13CFA00000002067ECE7D0000000612EA58FC00000006000000030000000613E201000AD3577B10D13CFA00000002067ECE7D000000060000000500000006000000000000000100000004138670FC045489FF1386ACFE000000040C9A86F8000000060000000A138670FE0C9A86F80F878CF900000001022A458113E1C500000000000AD3577B10D13CFA00000002022A457D000000060000000500000005000000050F8750F9022A458113E1C500000000000AD3577B10D13CFA0000000200000005000000050000000500000001000000040000000300000002"
theorem small_7761364_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7761364_right_root small_7761364_right_fuel small_7761364_right_count small_7761364_right_encoded = true := by
  decide +kernel
theorem small_7761364_right_covered : CoveredBy scale carrier boxes small_7761364_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7761364_right_root small_7761364_right_fuel small_7761364_right_count small_7761364_right_encoded small_7761364_right_checked

theorem cover_7761364 : CoveredBy scale carrier boxes root_7761364 := by
  apply coveredBy_split_literal root_7761364 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.root_7761365 small_7761364_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.cover_7761365
  · exact small_7761364_right_covered
#print axioms cover_7761364

def root_7761358 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7761358_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7761358_left_fuel : Nat := 1
def small_7761358_left_count : Nat := 1
def small_7761358_left_encoded : String := "00000001"
theorem small_7761358_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7761358_left_root small_7761358_left_fuel small_7761358_left_count small_7761358_left_encoded = true := by
  decide +kernel
theorem small_7761358_left_covered : CoveredBy scale carrier boxes small_7761358_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7761358_left_root small_7761358_left_fuel small_7761358_left_count small_7761358_left_encoded small_7761358_left_checked

theorem cover_7761358 : CoveredBy scale carrier boxes root_7761358 := by
  apply coveredBy_split_literal root_7761358 small_7761358_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.root_7761364 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_7761358_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.cover_7761364
#print axioms cover_7761358

def root_7761357 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7761357_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7761357_right_fuel : Nat := 16
def small_7761357_right_count : Nat := 75
def small_7761357_right_encoded : String := "0F34D0F80CFD9BFB0F350CFA00000002045489FD1386ACFC00000003045489FF00000006138670FE0C9A86FA000000060000000900000004138670FC045489FF1386ACFE000000040C9A86FA000000060F8750FB022A458113E1C500000000000AD3577910D13CF800000001022A457D0000000613E1C4FC00000006000000030000000613E201000AD3577910D13CF800000001022A457D0000000600000005000000060000000000000002138670FE0C9A86FA0F878CFB00000002022A458113E1C500000000000AD3577910D13CF800000001022A457D000000060000000500000005000000050F8750FB022A458113E1C500000000000AD3577910D13CF8000000010000000500000005000000050000000200000004000000030F34D0FA000000060000000200000001"
theorem small_7761357_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7761357_right_root small_7761357_right_fuel small_7761357_right_count small_7761357_right_encoded = true := by
  decide +kernel
theorem small_7761357_right_covered : CoveredBy scale carrier boxes small_7761357_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7761357_right_root small_7761357_right_fuel small_7761357_right_count small_7761357_right_encoded small_7761357_right_checked

theorem cover_7761357 : CoveredBy scale carrier boxes root_7761357 := by
  apply coveredBy_split_literal root_7761357 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.root_7761358 small_7761357_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.cover_7761358
  · exact small_7761357_right_covered
#print axioms cover_7761357

def root_7761351 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7761351_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7761351_left_fuel : Nat := 1
def small_7761351_left_count : Nat := 1
def small_7761351_left_encoded : String := "00000000"
theorem small_7761351_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7761351_left_root small_7761351_left_fuel small_7761351_left_count small_7761351_left_encoded = true := by
  decide +kernel
theorem small_7761351_left_covered : CoveredBy scale carrier boxes small_7761351_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7761351_left_root small_7761351_left_fuel small_7761351_left_count small_7761351_left_encoded small_7761351_left_checked

theorem cover_7761351 : CoveredBy scale carrier boxes root_7761351 := by
  apply coveredBy_split_literal root_7761351 small_7761351_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.root_7761357 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7761351_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.cover_7761357
#print axioms cover_7761351

def root_7761350 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7761350_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7761350_right_fuel : Nat := 24
def small_7761350_right_count : Nat := 261
def small_7761350_right_encoded : String := "1386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD1386ACFC00000003045489FF1386ACFE000000040C9A86F80F878CF9000000010C9A86FA0F878CFB00000002000000060F8750FB00000009000000020F8750F90C9A86FA0F878CFB000000020000000A0F8750FB067ECE8112EA590000000000067ECE7D12EA94FC00000003067ECE7F000000060000000912EA58FC067ECE7F0000000A12EA58FE0B4D43F810804CF9000000010B4D43FA10804CFB000000020000000500000005108010F90B4D43FA0000000A0000000500000001000000040000000312EA9500067ECE7D0000000912EA58FC067ECE7F0000000A0000000500000003000000000000000200000001138670FE0C9A86F80F878CF9000000010C9A86FA0F878CFB00000002067ECE8112EA590000000000067ECE7D000000060000000500000009000000090F8750F90C9A86FA0F878CFB00000002067ECE8112EA590000000000067ECE7D0000000700000005000000070F8750FB067ECE8112EA590000000000067ECE7D12EA94FC00000003022A457F00000009000000050000000512EA9500067ECE7D000000070000000500000000000000020000000100000004138670FC045489FF1386ACFE000000040C9A86F80F878CF9000000010C9A86FA0F878CFB00000002067ECE8112EA590000000000022A457D00000006000000050000000A0F8750FB067ECE8112EA590000000000022A457D13E200FC00000003067ECE7F00000008000000050000000500000008000000020F8750F90C9A86FA0F878CFB000000020000000A0F8750FB067ECE8112EA590000000000022A457D13E200FC00000003067ECE7F0000000A000000050000000512EA9500022A457D0000000A00000005000000000000000200000001138670FE0C9A86F80F878CF9000000010C9A86FA0F878CFB0000000200000005000000050F8750F90C9A86FA0F878CFB0000000200000005000000050000000100000004000000030F34D0FA045489FD1386ACFC00000003045489FF00000006138670FE0C9A86F80F878CF900000001000000060F8750F9067ECE8112EA5900000000000AD3577B0000000700000005000000050000000100000004138670FC045489FF0000000A138670FE0C9A86F80F878CF90000000100000005000000050000000400000003000000020F34D0F80CFD9BFB0F350CFA00000002045489FD1386ACFC00000003045489FF0000000600000009138670FC045489FF1386ACFE000000040C9A86FA0F878CFB00000002000000060F8750FB067ECE8112EA5900000000000AD3577900000008000000050000000500000002138670FE0C9A86FA0F878CFB00000002000000050000000500000004000000030F34D0FA045489FD00000006138670FC0000000600000003000000020000000100000000"
theorem small_7761350_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7761350_right_root small_7761350_right_fuel small_7761350_right_count small_7761350_right_encoded = true := by
  decide +kernel
theorem small_7761350_right_covered : CoveredBy scale carrier boxes small_7761350_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7761350_right_root small_7761350_right_fuel small_7761350_right_count small_7761350_right_encoded small_7761350_right_checked

theorem cover_7761350 : CoveredBy scale carrier boxes root_7761350 := by
  apply coveredBy_split_literal root_7761350 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.root_7761351 small_7761350_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.cover_7761351
  · exact small_7761350_right_covered
#print axioms cover_7761350

def root_7761345 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7761345_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7761345_right_fuel : Nat := 1
def small_7761345_right_count : Nat := 1
def small_7761345_right_encoded : String := "00000004"
theorem small_7761345_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7761345_right_root small_7761345_right_fuel small_7761345_right_count small_7761345_right_encoded = true := by
  decide +kernel
theorem small_7761345_right_covered : CoveredBy scale carrier boxes small_7761345_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7761345_right_root small_7761345_right_fuel small_7761345_right_count small_7761345_right_encoded small_7761345_right_checked

theorem cover_7761345 : CoveredBy scale carrier boxes root_7761345 := by
  apply coveredBy_split_literal root_7761345 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.root_7761350 small_7761345_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.cover_7761350
  · exact small_7761345_right_covered
#print axioms cover_7761345

def root_7760793 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7760793_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7760793_left_fuel : Nat := 26
def small_7760793_left_count : Nat := 259
def small_7760793_left_encoded : String := "12073CFE0000000404548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD1386ACFC000000030CFD9BFF0F350CFE00000004000000060F34D0FE0C9A86F8000000060F8750F90C9A86FA000000060F8750FB022A458113E1C50000000000067ECE7D0000000612EA58FC0AD3577F0000000610D100FE00000006000000040000000313E20100067ECE7D0000000612EA58FC0AD3577F0000000610D100FE00000006000000040000000300000000000000020000000100000004138670FC0CFD9BFF0F350CFE000000040C9A86F80F878CF900000001000000060F8750F90C9A86FA0000000A0F8750FB0C9A86FE0000000A0F8750FF000000060000000400000002000000010F34D0FE0C9A86F80F878CF9000000010C9A86FA0F878CFB00000002000000060F8750FB022A458113E1C50000000000022A457D0000000613E1C4FC0AD3577F0000000610D100FE0DE7C9F8000000060E5FD8F90B4D43FA000000060000000700000001000000040000000313E20100022A457D0000000613E1C4FC0AD3577F0000000610D100FE00000008000000040000000300000000000000020F8750F90C9A86FA0F878CFB000000020000000A0F8750FB022A458113E1C50000000000022A457D13E200FC000000030AD3577F0000000A10D100FE0B4D43F810804CF900000001000000060000000A0000000413E1C4FC0AD3577F0000000A10D100FE0B4D43F810804CF9000000010B4D43FA0000000A108010FB00000008000000020000000A000000040000000313E20100022A457D13E200FC000000030000000A0000000A00000000000000020000000100000004000000030F34D0FA045489FD00000006138670FC0CFD9BFF000000060F34D0FE000000060000000400000003000000020F34D0F80CFD9BFB0F350CFA00000002045489FD00000006138670FC0CFD9BFF000000060F34D0FE00000006000000040000000300000006000000011386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD1386ACFC000000030CFD9BFF0F350CFE000000040C9A86F8000000060000000A0F34D0FE0C9A86F80F878CF900000001000000060F8750F90000000A0000000100000004138670FC0CFD9BFF0F350CFE000000040C9A86F80F878CF9000000010C9A86FA000000060000000A0000000A0F34D0FE0C9A86F80F878CF9000000010C9A86FA0000000A0F8750FB067ECE8112EA590000000000022A457D00000006000000080000000A000000020F8750F90000000A0000000100000004000000030F34D0FA045489FD000000060000000A000000020F34D0F80CFD9BFB0F350CFA00000002045489FD00000006138670FC0CFD9BFF000000060F34D0FE000000060000000400000003000000060000000100000000"
theorem small_7760793_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7760793_left_root small_7760793_left_fuel small_7760793_left_count small_7760793_left_encoded = true := by
  decide +kernel
theorem small_7760793_left_covered : CoveredBy scale carrier boxes small_7760793_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7760793_left_root small_7760793_left_fuel small_7760793_left_count small_7760793_left_encoded small_7760793_left_checked

theorem cover_7760793 : CoveredBy scale carrier boxes root_7760793 := by
  apply coveredBy_split_literal root_7760793 small_7760793_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.root_7761345 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7760793_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.cover_7761345
#print axioms cover_7760793

def root_7760788 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7760788_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7760788_right_fuel : Nat := 1
def small_7760788_right_count : Nat := 1
def small_7760788_right_encoded : String := "00000003"
theorem small_7760788_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7760788_right_root small_7760788_right_fuel small_7760788_right_count small_7760788_right_encoded = true := by
  decide +kernel
theorem small_7760788_right_covered : CoveredBy scale carrier boxes small_7760788_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7760788_right_root small_7760788_right_fuel small_7760788_right_count small_7760788_right_encoded small_7760788_right_checked

theorem cover_7760788 : CoveredBy scale carrier boxes root_7760788 := by
  apply coveredBy_split_literal root_7760788 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.root_7760793 small_7760788_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.cover_7760793
  · exact small_7760788_right_covered
#print axioms cover_7760788

def root_7760112 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7760112_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7760112_left_fuel : Nat := 28
def small_7760112_left_count : Nat := 311
def small_7760112_left_encoded : String := "12073CFC0000000308A912FF12073CFE0000000404548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFD000000060F34D0FC0CFD9BFF000000060F34D0FE0000000600000004000000030F34D0FA00000006000000020F34D0F800000006000000011386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350CFC00000003000000060F34D0FC0CFD9BFF000000060F34D0FE0000000600000004000000030F34D0FA00000006000000020F34D0F8000000060000000100000000120700FE04548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350CFC00000003045489FF00000006138670FE0C9A86F80F878CF900000001000000060F8750F90C9A86FA0F878CFB00000002000000060F8750FB0C9A86FC000000090F8750FD00000006000000030000000200000001000000040F34D0FC045489FF1386ACFE000000040C9A86F8000000060F8750F90C9A86FA000000060F8750FB022A458113E1C500000000000AD3577D0000000610D100FC000000060000000313E201000AD3577D0000000610D100FC0000000600000003000000000000000200000001138670FE0C9A86F80F878CF9000000010C9A86FA0F878CFB00000002000000060F8750FB00000009000000020F8750F90C9A86FA0F878CFB00000002022A458113E1C500000000000AD3577D0000000610D100FC022A457F0000000613E1C4FE0B4D43F80000000600000008000000040000000313E201000AD3577D0000000610D100FC022A457F000000060000000700000003000000000F8750FB022A458113E1C500000000000AD3577D10D13CFC00000003022A457F000000060000000910D100FC022A457F13E200FE000000040B4D43F810804CF90000000100000006108010F90B4D43FA10804CFB0000000200000006000000090000000113E1C4FE0B4D43F800000009108010F90B4D43FA10804CFB00000002000000070000000900000001000000040000000313E201000AD3577D0000000910D100FC022A457F00000009000000090000000300000000000000020000000100000004000000030F34D0FA0CFD9BFD000000060F34D0FC0000000600000003000000020F34D0F80CFD9BFB0F350CFA000000020CFD9BFD000000060F34D0FC000000060000000300000006000000011386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350CFC00000003045489FF1386ACFE000000040C9A86F8000000060F8750F90000000600000001138670FE0C9A86F8000000090F8750F90C9A86FA0F878CFB00000002000000090000000900000001000000040F34D0FC045489FF1386ACFE000000040C9A86F80F878CF900000001000000060F8750F90C9A86FA0F878CFB00000002000000060F8750FB000000090000000200000001138670FE0C9A86F80F878CF900000001000000090F8750F90C9A86FA0F878CFB00000002067ECE8112EA5900000000000AD3577D0000000610D100FC022A457F00000006000000070000000300000009000000090000000100000004000000030F34D0FA0CFD9BFD000000060F34D0FC0000000600000003000000020F34D0F80CFD9BFB0F350CFA000000020CFD9BFD000000060F34D0FC000000060000000300000006000000010000000000000004"
theorem small_7760112_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7760112_left_root small_7760112_left_fuel small_7760112_left_count small_7760112_left_encoded = true := by
  decide +kernel
theorem small_7760112_left_covered : CoveredBy scale carrier boxes small_7760112_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7760112_left_root small_7760112_left_fuel small_7760112_left_count small_7760112_left_encoded small_7760112_left_checked

theorem cover_7760112 : CoveredBy scale carrier boxes root_7760112 := by
  apply coveredBy_split_literal root_7760112 small_7760112_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.root_7760788 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7760112_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.cover_7760788
#print axioms cover_7760112

def root_7760106 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7760106_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7760106_left_fuel : Nat := 1
def small_7760106_left_count : Nat := 1
def small_7760106_left_encoded : String := "00000002"
theorem small_7760106_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7760106_left_root small_7760106_left_fuel small_7760106_left_count small_7760106_left_encoded = true := by
  decide +kernel
theorem small_7760106_left_covered : CoveredBy scale carrier boxes small_7760106_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7760106_left_root small_7760106_left_fuel small_7760106_left_count small_7760106_left_encoded small_7760106_left_checked

theorem cover_7760106 : CoveredBy scale carrier boxes root_7760106 := by
  apply coveredBy_split_literal root_7760106 small_7760106_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.root_7760112 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7760106_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.cover_7760112
#print axioms cover_7760106

def root_7760105 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7760105_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7760105_right_fuel : Nat := 11
def small_7760105_right_count : Nat := 29
def small_7760105_right_encoded : String := "120700FA08A912FD12073CFC0000000308A912FF00000006120700FE0000000600000004120700FC08A912FF00000006120700FE04548A011386710000000000000000061386AD000CFD9BF90F350CF800000001045489FB0000000A000000060000000600000000000000040000000300000002"
theorem small_7760105_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7760105_right_root small_7760105_right_fuel small_7760105_right_count small_7760105_right_encoded = true := by
  decide +kernel
theorem small_7760105_right_covered : CoveredBy scale carrier boxes small_7760105_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7760105_right_root small_7760105_right_fuel small_7760105_right_count small_7760105_right_encoded small_7760105_right_checked

theorem cover_7760105 : CoveredBy scale carrier boxes root_7760105 := by
  apply coveredBy_split_literal root_7760105 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.root_7760106 small_7760105_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.cover_7760106
  · exact small_7760105_right_covered
#print axioms cover_7760105

def root_7760099 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7760099_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7760099_left_fuel : Nat := 1
def small_7760099_left_count : Nat := 1
def small_7760099_left_encoded : String := "00000001"
theorem small_7760099_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7760099_left_root small_7760099_left_fuel small_7760099_left_count small_7760099_left_encoded = true := by
  decide +kernel
theorem small_7760099_left_covered : CoveredBy scale carrier boxes small_7760099_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7760099_left_root small_7760099_left_fuel small_7760099_left_count small_7760099_left_encoded small_7760099_left_checked

theorem cover_7760099 : CoveredBy scale carrier boxes root_7760099 := by
  apply coveredBy_split_literal root_7760099 small_7760099_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.root_7760105 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7760099_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.cover_7760105
#print axioms cover_7760099

def root_7760098 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7760098_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7760098_right_fuel : Nat := 14
def small_7760098_right_count : Nat := 37
def small_7760098_right_encoded : String := "120700F808A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF00000006120700FE0000000600000004120700FC08A912FF00000006120700FE04548A011386710000000000000000061386AD00045489F91386ACF8000000010CFD9BFB0F350CFA00000002000000090000000600000006000000000000000400000003120700FA000000060000000200000001"
theorem small_7760098_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7760098_right_root small_7760098_right_fuel small_7760098_right_count small_7760098_right_encoded = true := by
  decide +kernel
theorem small_7760098_right_covered : CoveredBy scale carrier boxes small_7760098_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7760098_right_root small_7760098_right_fuel small_7760098_right_count small_7760098_right_encoded small_7760098_right_checked

theorem cover_7760098 : CoveredBy scale carrier boxes root_7760098 := by
  apply coveredBy_split_literal root_7760098 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.root_7760099 small_7760098_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.cover_7760099
  · exact small_7760098_right_covered
#print axioms cover_7760098

def root_7760092 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7760092_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7760092_left_fuel : Nat := 1
def small_7760092_left_count : Nat := 1
def small_7760092_left_encoded : String := "00000000"
theorem small_7760092_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7760092_left_root small_7760092_left_fuel small_7760092_left_count small_7760092_left_encoded = true := by
  decide +kernel
theorem small_7760092_left_covered : CoveredBy scale carrier boxes small_7760092_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7760092_left_root small_7760092_left_fuel small_7760092_left_count small_7760092_left_encoded small_7760092_left_checked

theorem cover_7760092 : CoveredBy scale carrier boxes root_7760092 := by
  apply coveredBy_split_literal root_7760092 small_7760092_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.root_7760098 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7760092_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.cover_7760098
#print axioms cover_7760092

def root_7760091 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7760091_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7760091_right_fuel : Nat := 23
def small_7760091_right_count : Nat := 419
def small_7760091_right_encoded : String := "12073D0008A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073CFE000000040CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350CFC00000003000000090F34D0FC0CFD9BFF000000060F34D0FE0C9A86F8000000060000000A00000004000000030F34D0FA00000006000000020F34D0F800000006000000010F350D000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFD000000090000000A000000090F34D0F8000000090000000100000000120700FE0CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFD000000090F34D0FC045489FF0000000900000009000000030F34D0FA0CFD9BFD000000060F34D0FC045489FF00000006138670FE0C9A86F8000000060F8750F900000007000000010000000400000003000000020F34D0F80CFD9BFB0000000900000009000000010F350D000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002000000090F34D0FA0CFD9BFD000000090F34D0FC000000090000000300000002000000090000000000000004120700FC08A912FF12073CFE000000040CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD1386ACFC000000030CFD9BFF0000000A0F34D0FE0000000A00000004138670FC0CFD9BFF0000000A0F34D0FE0000000A00000004000000030000000A0F34D0F80CFD9BFB0F350CFA00000002045489FD00000006138670FC0CFD9BFF000000060F34D0FE0C9A86FA000000060F8750FB000000080000000200000004000000030F34D0FA0000000600000002000000010F350D000CFD9BF90F350CF8000000010000000A0F34D0F80CFD9BFB0F350CFA00000002045489FD0000000A0000000A0000000A0000000100000000120700FE0CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD1386ACFC00000003045489FF1386ACFE000000040C9A86F80F878CF900000001000000090F8750F90C9A86FA0000000A0000000900000001138670FE0C9A86F8000000090F8750F90C9A86FA00000007000000050000000100000004138670FC045489FF1386ACFE000000040C9A86F80F878CF9000000010C9A86FA0000000A000000080000000A138670FE0C9A86F80F878CF900000001000000050000000500000004000000030F34D0FA045489FD1386ACFC00000003045489FF0000000A138670FE0C9A86F80F878CF9000000010000000A00000007000000040000000A000000020F34D0F80CFD9BFB0F350CFA00000002045489FD00000009138670FC045489FF1386ACFE000000040C9A86FA0F878CFB00000002000000090000000800000005000000030F34D0FA045489FD00000006138670FC045489FF00000006000000050000000300000002000000010F350D000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD00000009138670FC045489FF0000000A138670FE0C9A8700000000090000000500000004000000030F34D0FA0000000A000000020F34D0F80CFD9BFB000000090000000900000001000000000000000400000003120700FA08A912FD12073CFC0000000308A912FF12073CFE000000040CFD9C010F34D100000000000000000600000006120700FE0CFD9C010F34D10000000000000000060F350D000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9BFD000000060000000A000000060F34D0F800000006000000010000000000000004120700FC08A912FF0000000A120700FE0CFD9C010F34D100000000000CFD9BF90F350CF8000000010000000A0000000A0F350D000000000A00000000000000040000000300000002120700F808A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073CFE000000040CFD9C010F34D10000000000000000060000000600000009120700FC08A912FF12073CFE000000040CFD9C010F34D10000000000000000060F350D00045489F91386ACF8000000010CFD9BFB0F350CFA00000002045489FD00000006138670FC0CFD9BFF00000006000000090000000300000006138670F8000000060000000100000000120700FE0CFD9C010F34D10000000000045489F900000009000000090F350D0000000009000000000000000400000003120700FA08A912FD00000006120700FC08A912FF00000006120700FE000000060000000400000003000000020000000100000000"
theorem small_7760091_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7760091_right_root small_7760091_right_fuel small_7760091_right_count small_7760091_right_encoded = true := by
  decide +kernel
theorem small_7760091_right_covered : CoveredBy scale carrier boxes small_7760091_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7760091_right_root small_7760091_right_fuel small_7760091_right_count small_7760091_right_encoded small_7760091_right_checked

theorem cover_7760091 : CoveredBy scale carrier boxes root_7760091 := by
  apply coveredBy_split_literal root_7760091 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.root_7760092 small_7760091_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.cover_7760092
  · exact small_7760091_right_covered
#print axioms cover_7760091

def root_7760085 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7760085_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7760085_left_fuel : Nat := 1
def small_7760085_left_count : Nat := 1
def small_7760085_left_encoded : String := "00000004"
theorem small_7760085_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7760085_left_root small_7760085_left_fuel small_7760085_left_count small_7760085_left_encoded = true := by
  decide +kernel
theorem small_7760085_left_covered : CoveredBy scale carrier boxes small_7760085_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7760085_left_root small_7760085_left_fuel small_7760085_left_count small_7760085_left_encoded small_7760085_left_checked

theorem cover_7760085 : CoveredBy scale carrier boxes root_7760085 := by
  apply coveredBy_split_literal root_7760085 small_7760085_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.root_7760091 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7760085_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530.cover_7760091
#print axioms cover_7760085

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0530
