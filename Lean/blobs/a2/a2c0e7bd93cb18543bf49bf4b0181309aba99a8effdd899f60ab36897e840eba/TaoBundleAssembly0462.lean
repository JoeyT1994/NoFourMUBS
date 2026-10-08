import TaoBundleAssembly0461
import TaoBundleChunkBatch0631
import TaoBundleChunkBatch0632
import TaoBundleChunkBatch0633
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462
def root_6715303 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6715303_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6715303_left_fuel : Nat := 25
def small_6715303_left_count : Nat := 257
def small_6715303_left_encoded : String := "0F8750FB022A457713E20100022A457D13E200FC00000003022A457F13E200FE000000040DE7CA020E5FD8F90B4D4404108010FB000000090000000210804CFB00000002033F67B713BC3100033F67BD13BC30FC00000003033F67BF13BC30FE000000040D4128820EFA10F900000008000000010000000800000008000000090000000013BBF50000000000033F67BD13BC30FC00000003033F67BF13BC30FE000000040D4128820EFA10F900000009000000010000000913BBF4FE0D4128820EFA10F90BF3E58400000008100928FB0000000202B4D6970000000813D0D100000000000000000A00000001000000080000000400000009000000010E6014F9000000010B4D44040000000810804CFB00000002033F67B70000000813BBF50000000000033F67BD000000080000000913E1C4FE0DE7CA020E5FD8F90B4D4404108010FB033F67B70000000813BBF50000000000000000080000000210804CFB00000002033F67B70000000813BBF50000000000033F67BD0000000800000005000000010E6014F900000001000000080000000413E1C4FC022A457F13E200FE000000040DE7CA020E5FD8F900000009000000010000000913E1C4FE0DE7CA020E5FD8F90B4D44040000000510804CFB0000000200000005000000010000000900000004000000030000000013E1C50000000000022A457D13E200FC00000003022A457F13E200FE000000040DE7CA020E5FD8F90B4D4404108010FB0115233700000009000000090000000210804CFB000000020115233713F89500033F67BD13BC30FC00000003033F67BF13BC30FE000000040D4128820EFA10F90BF3E58400000009100928FB00000002019FB4570000000900000006000000010000000913BBF4FE0D4128820EFA10F90BF3E5841008ECFB0000000600000002100928FB00000002019FB45713EF350003C9F8DD0000000A000000050000000000000005000000010EFA4CF9000000010BF3E58400000007100928FB00000002019FB45700000008000000050000000413BBF4FC033F67BF0000000900000005000000030000000013F8590000000000033F67BD13BC30FC00000003033F67BF13BC30FE000000040D4128820EFA10F900000006000000010000000913BBF4FE000000050000000413BBF4FC0000000500000003000000010E6014F9000000010B4D44040000000910804CFB000000020115233713F89500033F67BD13BC30FC00000003033F67BF0000000900000007000000090000000013F8590000000000033F67BD000000070000000513E1C4FE0DE7CA020E5FD8F90B4D44040000000510804CFB000000020000000500000001000000070000000413E1C4FC022A457F13E200FE000000040DE7CA020E5FD8F9000000090000000100000009000000050000000300000002"
theorem small_6715303_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6715303_left_root small_6715303_left_fuel small_6715303_left_count small_6715303_left_encoded = true := by
  decide +kernel
theorem small_6715303_left_covered : CoveredBy scale carrier boxes small_6715303_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6715303_left_root small_6715303_left_fuel small_6715303_left_count small_6715303_left_encoded small_6715303_left_checked

theorem cover_6715303 : CoveredBy scale carrier boxes root_6715303 := by
  apply coveredBy_split_literal root_6715303 small_6715303_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2528.root coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6715303_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2528.covered
#print axioms cover_6715303

def root_6715297 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6715297_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6715297_left_fuel : Nat := 1
def small_6715297_left_count : Nat := 1
def small_6715297_left_encoded : String := "00000001"
theorem small_6715297_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6715297_left_root small_6715297_left_fuel small_6715297_left_count small_6715297_left_encoded = true := by
  decide +kernel
theorem small_6715297_left_covered : CoveredBy scale carrier boxes small_6715297_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6715297_left_root small_6715297_left_fuel small_6715297_left_count small_6715297_left_encoded small_6715297_left_checked

theorem cover_6715297 : CoveredBy scale carrier boxes root_6715297 := by
  apply coveredBy_split_literal root_6715297 small_6715297_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.root_6715303 coord1 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_6715297_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.cover_6715303
#print axioms cover_6715297

def root_6714041 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6714041 : CoveredBy scale carrier boxes root_6714041 := by
  apply coveredBy_split_literal root_6714041 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2527.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.root_6715297 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2527.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.cover_6715297
#print axioms cover_6714041

def root_6714036 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6714036_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6714036_right_fuel : Nat := 1
def small_6714036_right_count : Nat := 1
def small_6714036_right_encoded : String := "00000004"
theorem small_6714036_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6714036_right_root small_6714036_right_fuel small_6714036_right_count small_6714036_right_encoded = true := by
  decide +kernel
theorem small_6714036_right_covered : CoveredBy scale carrier boxes small_6714036_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6714036_right_root small_6714036_right_fuel small_6714036_right_count small_6714036_right_encoded small_6714036_right_checked

theorem cover_6714036 : CoveredBy scale carrier boxes root_6714036 := by
  apply coveredBy_split_literal root_6714036 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.root_6714041 small_6714036_right_root coord4 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.cover_6714041
  · exact small_6714036_right_covered
#print axioms cover_6714036

def root_6710798 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6710798 : CoveredBy scale carrier boxes root_6710798 := by
  apply coveredBy_split_literal root_6710798 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0461.root_6710799 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.root_6714036 coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0461.cover_6710799
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.cover_6714036
#print axioms cover_6710798

def root_6710793 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6710793_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6710793_right_fuel : Nat := 1
def small_6710793_right_count : Nat := 1
def small_6710793_right_encoded : String := "00000003"
theorem small_6710793_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6710793_right_root small_6710793_right_fuel small_6710793_right_count small_6710793_right_encoded = true := by
  decide +kernel
theorem small_6710793_right_covered : CoveredBy scale carrier boxes small_6710793_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6710793_right_root small_6710793_right_fuel small_6710793_right_count small_6710793_right_encoded small_6710793_right_checked

theorem cover_6710793 : CoveredBy scale carrier boxes root_6710793 := by
  apply coveredBy_split_literal root_6710793 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.root_6710798 small_6710793_right_root coord3 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.cover_6710798
  · exact small_6710793_right_covered
#print axioms cover_6710793

def root_6700109 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6700109 : CoveredBy scale carrier boxes root_6700109 := by
  apply coveredBy_split_literal root_6700109 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0461.root_6700110 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.root_6710793 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0461.cover_6700110
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.cover_6710793
#print axioms cover_6700109

def root_6700104 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6700104_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6700104_right_fuel : Nat := 1
def small_6700104_right_count : Nat := 1
def small_6700104_right_encoded : String := "00000002"
theorem small_6700104_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6700104_right_root small_6700104_right_fuel small_6700104_right_count small_6700104_right_encoded = true := by
  decide +kernel
theorem small_6700104_right_covered : CoveredBy scale carrier boxes small_6700104_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6700104_right_root small_6700104_right_fuel small_6700104_right_count small_6700104_right_encoded small_6700104_right_checked

theorem cover_6700104 : CoveredBy scale carrier boxes root_6700104 := by
  apply coveredBy_split_literal root_6700104 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.root_6700109 small_6700104_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.cover_6700109
  · exact small_6700104_right_covered
#print axioms cover_6700104

def root_6700103 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6700103 : CoveredBy scale carrier boxes root_6700103 := by
  apply coveredBy_split_literal root_6700103 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.root_6700104 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2529.root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.cover_6700104
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2529.covered
#print axioms cover_6700103

def root_6700098 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6700098_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6700098_right_fuel : Nat := 1
def small_6700098_right_count : Nat := 1
def small_6700098_right_encoded : String := "00000001"
theorem small_6700098_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6700098_right_root small_6700098_right_fuel small_6700098_right_count small_6700098_right_encoded = true := by
  decide +kernel
theorem small_6700098_right_covered : CoveredBy scale carrier boxes small_6700098_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6700098_right_root small_6700098_right_fuel small_6700098_right_count small_6700098_right_encoded small_6700098_right_checked

theorem cover_6700098 : CoveredBy scale carrier boxes root_6700098 := by
  apply coveredBy_split_literal root_6700098 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.root_6700103 small_6700098_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.cover_6700103
  · exact small_6700098_right_covered
#print axioms cover_6700098

def root_6700097 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6700097 : CoveredBy scale carrier boxes root_6700097 := by
  apply coveredBy_split_literal root_6700097 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.root_6700098 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2530.root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.cover_6700098
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2530.covered
#print axioms cover_6700097

def root_6700091 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6700091_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6700091_left_fuel : Nat := 1
def small_6700091_left_count : Nat := 1
def small_6700091_left_encoded : String := "00000000"
theorem small_6700091_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6700091_left_root small_6700091_left_fuel small_6700091_left_count small_6700091_left_encoded = true := by
  decide +kernel
theorem small_6700091_left_covered : CoveredBy scale carrier boxes small_6700091_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6700091_left_root small_6700091_left_fuel small_6700091_left_count small_6700091_left_encoded small_6700091_left_checked

theorem cover_6700091 : CoveredBy scale carrier boxes root_6700091 := by
  apply coveredBy_split_literal root_6700091 small_6700091_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.root_6700097 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6700091_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.cover_6700097
#print axioms cover_6700091

def root_6697061 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6697061 : CoveredBy scale carrier boxes root_6697061 := by
  apply coveredBy_split_literal root_6697061 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2521.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.root_6700091 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2521.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.cover_6700091
#print axioms cover_6697061

def root_6697056 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6697056_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6697056_right_fuel : Nat := 1
def small_6697056_right_count : Nat := 1
def small_6697056_right_encoded : String := "00000004"
theorem small_6697056_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6697056_right_root small_6697056_right_fuel small_6697056_right_count small_6697056_right_encoded = true := by
  decide +kernel
theorem small_6697056_right_covered : CoveredBy scale carrier boxes small_6697056_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6697056_right_root small_6697056_right_fuel small_6697056_right_count small_6697056_right_encoded small_6697056_right_checked

theorem cover_6697056 : CoveredBy scale carrier boxes root_6697056 := by
  apply coveredBy_split_literal root_6697056 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.root_6697061 small_6697056_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.cover_6697061
  · exact small_6697056_right_covered
#print axioms cover_6697056

def root_6696212 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6696212_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6696212_left_fuel : Nat := 26
def small_6696212_left_count : Nat := 399
def small_6696212_left_encoded : String := "12073CFE00000004045489F71386AD000CFD9BF90F350D020CFD9BFB0F350D04045489FD1386ACFC000000030CFD9BFF000000050F34D0FE0C9A87020F8750F900000005000000010000000500000004138670FC0CFD9BFF000000070F34D0FE0C9A8702000000070F878CF9000000010C9A87040F8750FB067ECE77000000050000000A00000002000000070000000400000003000000020F34D1040000000200000007000000010F34D102000000010CFD9BFB0F350D04045489FD1386ACFC000000030CFD9BFF000000050F34D0FE0C9A87040F8750FB067ECE77000000050000000A000000020F878CFB00000002067ECE770000000512EA5900000000000AD357790000000510D10102000000010000000500000004138670FC0CFD9BFF0000000A0F34D0FE0C9A87040000000A0F878CFB00000002000000070000000400000003000000020F34D10400000002045489FD1386ACFC000000030CFD9BFF000000050F34D0FE067ECE770000000712EA5900000000000000000700000004000000070000000013867100000000000CFD9BF90F350D020CFD9BFB0F350D04045489FD1386ACFC000000030CFD9BFF0F350CFE00000004000000050F34D0FE0C9A87020F8750F90C9A87040F8750FB00000005000000020F878CFB00000002022A45770000000513E1C50000000000067ECE7D0000000500000007000000010F878CF9000000010C9A87040F8750FB022A45770000000513E1C50000000000067ECE7D0000000512EA58FC0AD3577F0000000510D100FE0DE7CA020E5FD8F90000000500000001000000050000000400000003000000020F878CFB00000002022A45770000000513E1C50000000000067ECE7D0000000512EA58FC0AD3577F0000000510D100FE0DE7CA020E5FD8F90DE7CA040E5FD8FB000000050000000200000005000000010E6014F9000000010DE7CA040E5FD8FB000000050000000200000005000000040000000300000004138670FC0CFD9BFF0F350CFE000000040C9A8702000000070F878CF9000000010000000A0F34D0FE0C9A87020F8750F90C9A87040F8750FB022A457713E20100022A457D00000005000000070000000013E1C50000000000022A457D13E200FC000000030AD3577F0000000510D100FE0B4D4402108010F9000000060000000110804CF9000000010B4D440400000009000000090000000413E1C4FC0AD3577F0000000710D100FE000000070000000400000003000000020F878CFB0000000200000007000000010F878CF9000000010C9A87040F8750FB022A45770000000A0000000A000000020F878CFB00000002022A45770000000713E1C50000000000022A457D13E200FC000000030AD3577F0000000710D100FE0DE7CA02000000070E6014F9000000010000000A00000004000000070000000400000003000000020F34D10400000002045489FD1386ACFC000000030CFD9BFF000000070F34D0FE0C9A8702000000070F878CF900000001022A45770000000713E1C500000000000AD3577B10D13D04067ECE7D0000000500000007000000020000000700000004138670FC0CFD9BFF000000070F34D0FE000000070000000400000003000000010F34D102000000010CFD9BFB0F350D04045489FD1386ACFC000000030CFD9BFF0000000A0F34D0FE0C9A87040F8750FB022A45770000000A0000000A000000020F878CFB00000002022A457713E201000AD357790000000510D10102000000010000000A0000000013E1C500000000000AD3577910D13D02067ECE7D000000050000000A0000000110D10102000000010000000A00000004138670FC0CFD9BFF0000000A0F34D0FE0C9A87040000000A0F878CFB000000020000000A0000000400000003000000020F34D10400000002045489FD1386ACFC000000030CFD9BFF000000070F34D0FE022A457713E201000AD3577910D13D02000000070000000110D10102000000010AD3577B10D13D04067ECE7D000000050000000700000002000000070000000013E1C500000000000AD3577910D13D020AD3577B10D13D04067ECE7D000000050000000700000002000000070000000110D10102000000010AD3577B10D13D04067ECE7D12EA94FC00000003000000050000000A0000000210D10104000000020000000700000004138670FC0CFD9BFF000000070F34D0FE000000070000000400000003"
theorem small_6696212_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6696212_left_root small_6696212_left_fuel small_6696212_left_count small_6696212_left_encoded = true := by
  decide +kernel
theorem small_6696212_left_covered : CoveredBy scale carrier boxes small_6696212_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6696212_left_root small_6696212_left_fuel small_6696212_left_count small_6696212_left_encoded small_6696212_left_checked

theorem cover_6696212 : CoveredBy scale carrier boxes root_6696212 := by
  apply coveredBy_split_literal root_6696212 small_6696212_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.root_6697056 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6696212_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.cover_6697056
#print axioms cover_6696212

def root_6696207 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6696207_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6696207_right_fuel : Nat := 1
def small_6696207_right_count : Nat := 1
def small_6696207_right_encoded : String := "00000003"
theorem small_6696207_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6696207_right_root small_6696207_right_fuel small_6696207_right_count small_6696207_right_encoded = true := by
  decide +kernel
theorem small_6696207_right_covered : CoveredBy scale carrier boxes small_6696207_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6696207_right_root small_6696207_right_fuel small_6696207_right_count small_6696207_right_encoded small_6696207_right_checked

theorem cover_6696207 : CoveredBy scale carrier boxes root_6696207 := by
  apply coveredBy_split_literal root_6696207 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.root_6696212 small_6696207_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.cover_6696212
  · exact small_6696207_right_covered
#print axioms cover_6696207

def root_6695223 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6695223_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6695223_left_fuel : Nat := 28
def small_6695223_left_count : Nat := 467
def small_6695223_left_encoded : String := "12073CFC0000000308A912FF12073CFE00000004045489F71386AD000CFD9BF90F350D020CFD9BFB000000050F34D1040000000200000005000000010F34D102000000010CFD9BFB000000050F34D10400000002000000050000000013867100000000000CFD9BF90F350D020CFD9BFB000000050F34D104000000020CFD9BFD000000050F34D0FC0CFD9BFF000000050F34D0FE0C9A87020F8750F90000000500000001000000050000000400000003000000010F34D102000000010CFD9BFB0F350D040CFD9BFD000000050F34D0FC0CFD9BFF000000050F34D0FE0C9A87040F8750FB0000000500000002000000050000000400000003000000020F34D104000000020CFD9BFD000000050F34D0FC0CFD9BFF000000050F34D0FE022A45770000000513E1C500000000000AD357790000000510D1010200000001000000050000000400000003120700FE045489F71386AD000CFD9BF90F350D020CFD9BFB0F350D040CFD9BFD0F350CFC00000003045489FF00000005000000080F34D0FC045489FF1386ACFE000000040C9A87020F8750F9000000050000000100000005138670FE0C9A87020F8750F90C9A8704000000080F878CFB00000002067ECE77000000050000000900000001000000080000000400000003000000020F34D104000000020CFD9BFD000000090F34D0FC045489FF1386ACFE000000040C9A87020F8750F9067ECE770000000500000009000000010F878CF900000001067ECE770000000512EA5900000000000AD3577B0000000510D101040000000200000005138670FE0C9A8702000000090F878CF900000001000000080000000400000003000000010F34D102000000010CFD9BFB0F350D0400000008000000020F34D104000000020CFD9BFD000000080F34D0FC045489FF1386ACFE00000004067ECE770000000812EA5900000000000000000800000008000000030000000013867100000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9BFD0F350CFC00000003045489FF00000005138670FE0C9A87020000000900000008000000040F34D0FC045489FF1386ACFE000000040C9A87020F8750F90C9A87040F8750FB00000005000000020F878CFB00000002022A45770000000513E1C500000000000AD3577D0000000510D100FC067ECE7F0000000512EA58FE0B4D440200000009000000050000000400000003000000010F878CF9000000010C9A87040F8750FB022A45770000000513E1C500000000000AD3577D0000000510D100FC067ECE7F000000050000000800000003000000020F878CFB00000002022A45770000000513E1C500000000000AD3577D0000000510D100FC067ECE7F0000000512EA58FE0DE7CA020E5FD8F90DE7CA040E5FD8FB000000050000000200000005000000010E6014F900000001000000080000000400000003138670FE0C9A87020F8750F90C9A87040F8750FB022A457713E201000AD3577D0000000510D100FC00000008000000030000000013E1C500000000000AD3577D10D13CFC000000030000000810D100FC022A457F13E200FE000000040B4D4402108010F9000000060000000110804CF900000001000000080000000700000003000000020F878CFB00000002022A45770000000900000009000000010F878CF9000000010C9A8704000000080F878CFB00000002022A45770000000813E1C500000000000AD3577D0000000810D100FC022A457F13E200FE000000040DE7CA020E5FD8F90DE7CA040000000800000009000000010000000800000008000000030000000400000003000000020F34D104000000020CFD9BFD0F350CFC00000003000000090F34D0FC045489FF1386ACFE000000040C9A87020F8750F9022A45770000000900000009000000010F878CF900000001022A457713E201000AD3577B0000000510D1010400000002000000090000000013E1C500000000000AD3577B10D13D040AD3577D0000000510D100FC067ECE7F0000000500000009000000030000000210D101040000000200000009138670FE0C9A8702000000090F878CF900000001000000090000000400000003000000010F34D102000000010CFD9BFB0F350D040CFD9BFD000000080F34D0FC045489FF1386ACFE000000040C9A8704000000080F878CFB00000002022A45770000000813E1C500000000000AD3577910D13D020AD3577D0000000510D100FC000000080000000300000001000000080000000800000003000000020F34D104000000020CFD9BFD0F350CFC00000003000000080F34D0FC045489FF1386ACFE00000004022A457713E201000AD3577910D13D020AD3577B0000000510D10104000000020AD3577D0000000510D100FC067ECE7F00000005000000060000000300000001000000080000000013E1C500000000000AD3577910D13D020AD3577B10D13D040AD3577D0000000510D100FC067ECE7F0000000500000008000000030000000210D10104000000020AD3577D0000000910D100FC067ECE7F12EA94FE000000040000000500000008000000030000000110D101020000000100000008000000080000000300000004"
theorem small_6695223_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6695223_left_root small_6695223_left_fuel small_6695223_left_count small_6695223_left_encoded = true := by
  decide +kernel
theorem small_6695223_left_covered : CoveredBy scale carrier boxes small_6695223_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6695223_left_root small_6695223_left_fuel small_6695223_left_count small_6695223_left_encoded small_6695223_left_checked

theorem cover_6695223 : CoveredBy scale carrier boxes root_6695223 := by
  apply coveredBy_split_literal root_6695223 small_6695223_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.root_6696207 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6695223_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.cover_6696207
#print axioms cover_6695223

def root_6695218 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6695218_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6695218_right_fuel : Nat := 1
def small_6695218_right_count : Nat := 1
def small_6695218_right_encoded : String := "00000002"
theorem small_6695218_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6695218_right_root small_6695218_right_fuel small_6695218_right_count small_6695218_right_encoded = true := by
  decide +kernel
theorem small_6695218_right_covered : CoveredBy scale carrier boxes small_6695218_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6695218_right_root small_6695218_right_fuel small_6695218_right_count small_6695218_right_encoded small_6695218_right_checked

theorem cover_6695218 : CoveredBy scale carrier boxes root_6695218 := by
  apply coveredBy_split_literal root_6695218 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.root_6695223 small_6695218_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.cover_6695223
  · exact small_6695218_right_covered
#print axioms cover_6695218

def root_6695217 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6695217_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6695217_right_fuel : Nat := 23
def small_6695217_right_count : Nat := 231
def small_6695217_right_encoded : String := "120701040000000208A912FD12073CFC0000000308A912FF12073CFE00000004045489F71386AD000CFD9BF90F350D02045489FB0000000500000007000000010F34D10200000001045489FB0000000513867104000000020CFD9BFD00000005000000070000000013867100000000000CFD9BF90F350D02045489FB1386AD040CFD9BFD00000005000000070000000200000007000000010F34D10200000001045489FB1386AD040CFD9BFD000000050F34D0FC0CFD9BFF000000050F34D0FE022A45770000000513E1C500000000000AD357790000000510D10102000000010000000500000004000000030000000213867104000000020CFD9BFD0F350CFC000000030000000500000007120700FE045489F71386AD000CFD9BF90F350D0200000009000000010F34D10200000001045489FB1386AD040CFD9BFD000000090F34D0FC045489FF00000006000000060000000300000002000000090000000013867100000000000CFD9BF90F350D0200000009000000010F34D10200000001045489FB1386AD040CFD9BFD000000090F34D0FC045489FF1386ACFE00000004022A457700000009000000090000000900000003000000020000000900000004120700FC08A912FF12073CFE00000004045489F70000000713867100000000000CFD9BF90F350D0200000007000000010F34D10200000001045489FB0000000700000007120700FE045489F71386AD000CFD9BF90F350D02045489FB1386AD04045489FD1386ACFC00000003045489FF0000000700000009000000070000000200000007000000010F34D10200000001045489FB1386AD04045489FD000000060000000600000002000000060000000013867100000000000CFD9BF90F350D02045489FB1386AD04045489FD1386ACFC00000003045489FF1386ACFE000000040C9A8702000000070F878CF9000000010000000700000009138670FC045489FF00000007138670FE0C9A8702000000070F878CF900000001022A45770000000613E1C50000000000067ECE7B12EA9504022A457D000000060000000500000002000000050000000400000003000000021386710400000002045489FD0000000900000007000000010F34D10200000001045489FB1386AD04045489FD1386ACFC00000003045489FF1386ACFE00000004022A45770000000613E1C5000000000000000006138670FE0000000600000004138670FC045489FF000000060000000600000003000000021386710400000002000000060000000400000003"
theorem small_6695217_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6695217_right_root small_6695217_right_fuel small_6695217_right_count small_6695217_right_encoded = true := by
  decide +kernel
theorem small_6695217_right_covered : CoveredBy scale carrier boxes small_6695217_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6695217_right_root small_6695217_right_fuel small_6695217_right_count small_6695217_right_encoded small_6695217_right_checked

theorem cover_6695217 : CoveredBy scale carrier boxes root_6695217 := by
  apply coveredBy_split_literal root_6695217 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.root_6695218 small_6695217_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.cover_6695218
  · exact small_6695217_right_covered
#print axioms cover_6695217

def root_6695212 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6695212_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6695212_right_fuel : Nat := 1
def small_6695212_right_count : Nat := 1
def small_6695212_right_encoded : String := "00000001"
theorem small_6695212_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6695212_right_root small_6695212_right_fuel small_6695212_right_count small_6695212_right_encoded = true := by
  decide +kernel
theorem small_6695212_right_covered : CoveredBy scale carrier boxes small_6695212_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6695212_right_root small_6695212_right_fuel small_6695212_right_count small_6695212_right_encoded small_6695212_right_checked

theorem cover_6695212 : CoveredBy scale carrier boxes root_6695212 := by
  apply coveredBy_split_literal root_6695212 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.root_6695217 small_6695212_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462.cover_6695217
  · exact small_6695212_right_covered
#print axioms cover_6695212

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0462
