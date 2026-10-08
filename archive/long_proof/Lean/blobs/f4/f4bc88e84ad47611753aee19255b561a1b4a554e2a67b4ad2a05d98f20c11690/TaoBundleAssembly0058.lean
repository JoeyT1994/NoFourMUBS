import TaoBundleAssembly0057
import TaoBundleChunkBatch0226
import TaoBundleChunkBatch0227
import TaoBundleChunkBatch0228
import TaoBundleChunkBatch0229
import TaoBundleChunkBatch0230
import TaoBundleChunkBatch0231
import TaoBundleChunkBatch0232
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058
def root_2381014 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2381014_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2381014_right_fuel : Nat := 23
def small_2381014_right_count : Nat := 271
def small_2381014_right_encoded : String := "128A7D0307800104128A4105000000020B4D43F610804CF7000000000DE7CA060E5FD8FD0DE7CA080E5FD8FF08C0010211FBE903000000010640010412FF7105000000020BF3E576000000081008ECF70D41288600000008000000080000000012FFAD050BF3E576100928F7000000000D4128860EFA10FD00000008000000030EFA4CFD00000003000000061008ECF70D4128860EFA10FD00000008000000030EFA4CFD000000030D4128880EFA10FF0820010212465D030000000106E00104000000090000000600000008000000040EFA4CFF0000000400000006000000000000000211FC25030000000800000001000000040E6014FF0000000408C0010211FBE903000000010640010412FF7105000000020000000812FFAD05000000060000000200000008000000030E6014FD000000030DE7CA080E5FD8FF08C0010211FBE903000000010640010412FF7105000000020DAED87D0E9661060BF3E576000000061008ECF70D4128880EFA10FF0820010212465D030000000105A00104000000060000000600000006000000040000000600000000000000030000000612FFAD05000000060000000211FC25030000000600000001000000040E6014FF0000000400000006108010F70DE7CA060E5FD8FD0DE7CA080E5FD8FF08C0010211FBE903000000010640010412FF7105000000020AA6A27610EDACF7000000000D412886000000080EFA4CFD000000030D4128880EFA10FF00000008000000040000000810ED70F70D412886000000080EFA4CFD000000030D41288800000009000000080000000012FFAD050AA6A27610EDACF7000000000D4128860EFA10FD00000008000000030EFA4CFD000000030D4128880EFA10FF00000005000000040000000510ED70F70D4128860EFA10FD000000050000000300000005000000000000000211FC250306400104000000080000000500000001000000040E6014FF0000000408C0010211FBE903000000010640010412FF710500000002000000080000000500000005000000030E6014FD000000030DE7CA080E5FD8FF08C0010211FBE903000000010640010412FF7105000000020DAED87D0E9661060AA6A27610EDACF7000000000D4128880EFA10FF00000009000000040EFA4CFF0000000408200102000000060000000510ED70F70D412888000000090000000500000000000000030E962506000000030AA6A27610EDACF7000000000D4128880EFA10FF000000060000000400000005000000050000000500000005000000040000000500000000128A7D050B4D43F610804CF7000000000DE7CA060E5FD8FD0DE7CA080E5FD8FF08C0010211FBE9030000000108C0010411FBE905000000020BF3E576100928F700000000000000061008ECF70D4128860EFA10FD0D4128880EFA10FF000000050000000400000005000000030000000500000000000000050000000500000004000000050000000300000005000000050000000200000001"
theorem small_2381014_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2381014_right_root small_2381014_right_fuel small_2381014_right_count small_2381014_right_encoded = true := by
  decide +kernel
theorem small_2381014_right_covered : CoveredBy scale carrier boxes small_2381014_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2381014_right_root small_2381014_right_fuel small_2381014_right_count small_2381014_right_encoded small_2381014_right_checked

theorem cover_2381014 : CoveredBy scale carrier boxes root_2381014 := by
  apply coveredBy_split_literal root_2381014 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2381015 small_2381014_right_root coord1 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2381015
  · exact small_2381014_right_covered
#print axioms cover_2381014

def root_2381008 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2381008_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2381008_left_fuel : Nat := 1
def small_2381008_left_count : Nat := 1
def small_2381008_left_encoded : String := "00000004"
theorem small_2381008_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2381008_left_root small_2381008_left_fuel small_2381008_left_count small_2381008_left_encoded = true := by
  decide +kernel
theorem small_2381008_left_covered : CoveredBy scale carrier boxes small_2381008_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2381008_left_root small_2381008_left_fuel small_2381008_left_count small_2381008_left_encoded small_2381008_left_checked

theorem cover_2381008 : CoveredBy scale carrier boxes root_2381008 := by
  apply coveredBy_split_literal root_2381008 small_2381008_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2381014 coord4 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_2381008_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2381014
#print axioms cover_2381008

def root_2379584 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2379584 : CoveredBy scale carrier boxes root_2379584 := by
  apply coveredBy_split_literal root_2379584 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0908.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2381008 coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0908.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2381008
#print axioms cover_2379584

def root_2379578 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2379578_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2379578_left_fuel : Nat := 1
def small_2379578_left_count : Nat := 1
def small_2379578_left_encoded : String := "00000003"
theorem small_2379578_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2379578_left_root small_2379578_left_fuel small_2379578_left_count small_2379578_left_encoded = true := by
  decide +kernel
theorem small_2379578_left_covered : CoveredBy scale carrier boxes small_2379578_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2379578_left_root small_2379578_left_fuel small_2379578_left_count small_2379578_left_encoded small_2379578_left_checked

theorem cover_2379578 : CoveredBy scale carrier boxes root_2379578 := by
  apply coveredBy_split_literal root_2379578 small_2379578_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2379584 coord3 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_2379578_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2379584
#print axioms cover_2379578

def root_2377212 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2377212 : CoveredBy scale carrier boxes root_2377212 := by
  apply coveredBy_split_literal root_2377212 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0907.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2379578 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0907.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2379578
#print axioms cover_2377212

def root_2377207 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2377207_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2377207_right_fuel : Nat := 1
def small_2377207_right_count : Nat := 1
def small_2377207_right_encoded : String := "00000000"
theorem small_2377207_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2377207_right_root small_2377207_right_fuel small_2377207_right_count small_2377207_right_encoded = true := by
  decide +kernel
theorem small_2377207_right_covered : CoveredBy scale carrier boxes small_2377207_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2377207_right_root small_2377207_right_fuel small_2377207_right_count small_2377207_right_encoded small_2377207_right_checked

theorem cover_2377207 : CoveredBy scale carrier boxes root_2377207 := by
  apply coveredBy_split_literal root_2377207 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2377212 small_2377207_right_root coord0 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2377212
  · exact small_2377207_right_covered
#print axioms cover_2377207

def root_2374423 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2374423 : CoveredBy scale carrier boxes root_2374423 := by
  apply coveredBy_split_literal root_2374423 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0906.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2377207 coord0 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0906.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2377207
#print axioms cover_2374423

def root_2374418 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2374418_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2374418_right_fuel : Nat := 1
def small_2374418_right_count : Nat := 1
def small_2374418_right_encoded : String := "00000004"
theorem small_2374418_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2374418_right_root small_2374418_right_fuel small_2374418_right_count small_2374418_right_encoded = true := by
  decide +kernel
theorem small_2374418_right_covered : CoveredBy scale carrier boxes small_2374418_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2374418_right_root small_2374418_right_fuel small_2374418_right_count small_2374418_right_encoded small_2374418_right_checked

theorem cover_2374418 : CoveredBy scale carrier boxes root_2374418 := by
  apply coveredBy_split_literal root_2374418 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2374423 small_2374418_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2374423
  · exact small_2374418_right_covered
#print axioms cover_2374418

def root_2374417 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2374417_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2374417_right_fuel : Nat := 30
def small_2374417_right_count : Nat := 373
def small_2374417_right_encoded : String := "0F34D108000000040C9A86F60F878CF7000000000C9A87060F8750FD07800102128A41030000000107800104128A4105000000020AD3577F10D13D080DE7C9F60E6014F7000000000B4D440600000008000000060E5FD8F70B4D44060000000810804CFD000000030640010212FF71030000000106400104000000090000000600000008000000000000000410D101080000000400000006128A7D050AD3577F10D13D080DE7C9F6000000060E5FD8F70B4D4406108010FD064001020000000900000008000000030000000600000000000000040000000600000002128A7D0307800104128A4105000000020AD3577F0000000800000006128A7D05000000060000000200000001000000030F878CFD0000000307800102128A410300000001078001040000000600000006000000060F8750F70C9A87060F8750FD07800102128A41030000000107800104128A4105000000020AD3577F10D13D080B4D43F610804CF7000000000B4D44060000000810804CFD000000030640010212FF7103000000010640010412FF7105000000020000000812FFAD050BE879BF1011AD080BF3E576000000081008ECF7000000080000000000000004000000090000000200000008108010F70B4D4406108010FD000000080000000310804CFD000000030640010212FF7103000000010640010412FF7105000000020BE879BF000000080000000712FFAD050BE879BF1011AD080AA6A276000000080000000A000000040000000A0000000200000008000000000000000410D10108000000040B4D43F60000000800000007128A7D050AD3577F10D13D080B4D43F610804CF7000000000B4D4406108010FD064001020000000A000000080000000310804CFD000000030640010212FF71030000000108C0010411FBE905000000020BE879BF1011AD080BF3E576000000060000000A00000004000000060000000612FFAD030000000600000001108010F70B4D4406108010FD0000000A0000000310804CFD000000030640010212FF71030000000108C0010411FBE905000000020000000A0000000500000005000000000000000410D10108000000040B4D43F600000006108010F70B4D44060000000A000000050000000000000002128A7D0307800104128A4105000000020AD3577F0000000810D101080000000400000007128A7D050AD3577F10D13D080B4D43F610804CF7000000000B4D44060000000800000005000000050000000410D1010800000004000000050000000200000001000000030F878CFD0000000307800102128A41030000000107800104128A4105000000020AD3577F10D13D080B4D43F610804CF7000000000DE7CA060E5FD8FD0640010212FF7103000000010640010412FF7105000000020BE879BF000000060000000600000006000000060000000300000006108010F70DE7CA060E5FD8FD0640010212FF7103000000010640010412FF7105000000020BE879BF1011AD080AA6A27610EDACF7000000000D4128860EFA10FD00000008000000030EFA4CFD000000030000000610ED70F70D4128860EFA10FD00000008000000030EFA4CFD0000000305A00102133135030000000105A00104133135050000000200000007133171050000000600000002133171030000000800000001000000000000000410117108000000040AA6A276000000060000000712FFAD050BE879BF1011AD080AA6A27610EDACF7000000000000000610ED70F70D4128860EFA10FD05A001020000000A0000000500000003000000050000000000000004000000060000000212FFAD030640010412FF7105000000020BE879BF00000008000000060000000500000001000000030E6014FD000000030640010212FF71030000000106400104000000060000000500000005000000000000000410D101080000000400000006128A7D050AD3577F10D13D080B4D43F60000000600000005000000040000000600000002128A7D0307800104128A4105000000020AD3577F10D13D080B4D43F600000006000000050000000400000006000000050000000100000000"
theorem small_2374417_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2374417_right_root small_2374417_right_fuel small_2374417_right_count small_2374417_right_encoded = true := by
  decide +kernel
theorem small_2374417_right_covered : CoveredBy scale carrier boxes small_2374417_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2374417_right_root small_2374417_right_fuel small_2374417_right_count small_2374417_right_encoded small_2374417_right_checked

theorem cover_2374417 : CoveredBy scale carrier boxes root_2374417 := by
  apply coveredBy_split_literal root_2374417 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2374418 small_2374417_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2374418
  · exact small_2374417_right_covered
#print axioms cover_2374417

def root_2374412 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2374412_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2374412_right_fuel : Nat := 1
def small_2374412_right_count : Nat := 1
def small_2374412_right_encoded : String := "00000003"
theorem small_2374412_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2374412_right_root small_2374412_right_fuel small_2374412_right_count small_2374412_right_encoded = true := by
  decide +kernel
theorem small_2374412_right_covered : CoveredBy scale carrier boxes small_2374412_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2374412_right_root small_2374412_right_fuel small_2374412_right_count small_2374412_right_encoded small_2374412_right_checked

theorem cover_2374412 : CoveredBy scale carrier boxes root_2374412 := by
  apply coveredBy_split_literal root_2374412 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2374417 small_2374412_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2374417
  · exact small_2374412_right_covered
#print axioms cover_2374412

def root_2374411 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2374411_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2374411_right_fuel : Nat := 31
def small_2374411_right_count : Nat := 395
def small_2374411_right_encoded : String := "0F34D106000000030CFD9BFF0F350D080C9A86F60F878CF7000000000C9A87080F8750FF07800102128A41030000000107800104128A4105000000020AD3577D10D13D060DE7C9F60E6014F7000000000B4D440800000007000000060E5FD8F70B4D44080000000710804CFF000000040640010212FF7103000000010000000712FFAD030000000600000001000000000000000310D101060000000300000006128A7D050AD3577D000000070000000600000002128A7D0307800104128A4105000000020AD3577D10D13D060DE7C9F6000000060E5FD8F70B4D4408108010FF08C0010211FBE90300000001000000070000000A0000000400000006000000000000000300000006128A7D05000000060000000200000001000000040F878CFF0000000407800102128A410300000001078001040000000600000006000000060F8750F70C9A87080F8750FF07800102128A41030000000107800104128A4105000000020AD3577D10D13D060B4D43F610804CF7000000000B4D44080000000710804CFF000000040640010212FF7103000000010640010412FF710500000002000000070000000712FFAD030640010412FF7105000000020BE879BD1011AD060BF3E576000000071008ECF70000000700000000000000030000000A0000000700000001108010F70B4D4408108010FF000000070000000410804CFF000000040640010212FF7103000000010640010412FF7105000000020BE879BD00000007000000070000000712FFAD030640010412FF7105000000020BE879BD1011AD060AA6A276000000070000000900000003000000090000000700000001000000000000000310D10106000000030B4D43F60000000700000008128A7D050AD3577D0000000710D10106000000030000000700000002128A7D0307800104128A4105000000020AD3577D10D13D060B4D43F610804CF7000000000B4D4408108010FF08C0010211FBE90300000001064001040000000900000007000000090000000410804CFF0000000408C0010211FBE903000000010640010412FF7105000000020BE879BD1011AD060BF3E576000000060000000900000003000000060000000611FC25030000000600000001108010F70B4D4408108010FF000000090000000410804CFF0000000408C0010211FBE9030000000106400104000000090000000500000005000000000000000310D10106000000030B4D43F600000006108010F70B4D4408000000090000000500000000128A7D050AD3577D10D13D060B4D43F610804CF7000000000B4D44080000000700000005000000050000000310D1010600000003000000050000000200000001000000040F878CFF0000000407800102128A41030000000107800104128A4105000000020AD3577D10D13D060B4D43F610804CF7000000000DE7CA080E5FD8FF0640010212FF7103000000010640010412FF7105000000020BE879BD000000060000000600000006000000060000000400000006108010F70DE7CA080E5FD8FF0640010212FF7103000000010640010412FF7105000000020BE879BD1011AD060AA6A27610EDACF7000000000D4128880EFA10FF00000007000000040EFA4CFF000000040000000610ED70F70D4128880EFA10FF00000007000000040EFA4CFF0000000405A001021331350300000001000000081331710305A00104000000060000000500000001000000000000000310117106000000030AA6A276000000060000000812FFAD050BE879BD00000007000000060000000212FFAD030640010412FF7105000000020BE879BD1011AD060AA6A27610EDACF7000000000000000610ED70F70D4128880EFA10FF06E0010212C7E50300000001000000090000000500000004000000050000000000000003000000060000000500000001000000040E6014FF000000040640010212FF71030000000106400104000000060000000500000005000000000000000310D101060000000300000006128A7D050AD3577D10D13D060B4D43F60000000600000005000000030000000600000002128A7D0307800104128A4105000000020AD3577D10D13D060B4D43F600000006000000050000000300000006000000050000000100000000000000040F34D108000000040C9A86F6000000060F8750F707800102000000060000000500000000"
theorem small_2374411_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2374411_right_root small_2374411_right_fuel small_2374411_right_count small_2374411_right_encoded = true := by
  decide +kernel
theorem small_2374411_right_covered : CoveredBy scale carrier boxes small_2374411_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2374411_right_root small_2374411_right_fuel small_2374411_right_count small_2374411_right_encoded small_2374411_right_checked

theorem cover_2374411 : CoveredBy scale carrier boxes root_2374411 := by
  apply coveredBy_split_literal root_2374411 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2374412 small_2374411_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2374412
  · exact small_2374411_right_covered
#print axioms cover_2374411

def root_2374405 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2374405_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2374405_left_fuel : Nat := 1
def small_2374405_left_count : Nat := 1
def small_2374405_left_encoded : String := "00000000"
theorem small_2374405_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2374405_left_root small_2374405_left_fuel small_2374405_left_count small_2374405_left_encoded = true := by
  decide +kernel
theorem small_2374405_left_covered : CoveredBy scale carrier boxes small_2374405_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2374405_left_root small_2374405_left_fuel small_2374405_left_count small_2374405_left_encoded small_2374405_left_checked

theorem cover_2374405 : CoveredBy scale carrier boxes root_2374405 := by
  apply coveredBy_split_literal root_2374405 small_2374405_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2374411 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_2374405_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2374411
#print axioms cover_2374405

def root_2374404 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2374404_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2374404_right_fuel : Nat := 21
def small_2374404_right_count : Nat := 177
def small_2374404_right_encoded : String := "0F34D0F60CFD9BFD0F350D060CFD9BFF0F350D080C9A87060F8750FD0C9A87080F8750FF07800102128A41030000000100000005128A7D0307800104128A41050000000200000005128A7D050AD3577710D13CF6000000000B4D4406108010FD0B4D4408108010FF08C00102000000050000000800000004000000080000000310804CFD000000030B4D4408108010FF000000070000000410804CFF000000040000000610D100F60B4D44060000000500000006000000000000000200000001000000040F878CFF0000000407800102128A4103000000010780010400000005128A7D050AD3577710D13CF6000000000B4D4406108010FD0DE7CA08000000050E6014FF00000004000000060000000310804CFD000000030000000610D100F6000000060000000000000002128A7D0307800104128A4105000000020AD3577710D13CF6000000000B4D44060000000810804CFD000000030000000610D100F60000000600000000128A7D05000000060000000200000001000000030F878CFD000000030C9A87080F8750FF07800102128A4103000000010780010400000005128A7D050AD3577710D13CF6000000000DE7CA060E5FD8FD00000007000000030000000710D100F6000000060000000000000002128A7D0307800104128A4105000000020AD3577710D13CF6000000000DE7CA060E5FD8FD0B4D44080000000510804CFF0000000400000006000000030E6014FD000000030000000610D100F60000000600000000128A7D05000000060000000200000001000000040F878CFF0000000407800102128A41030000000107800104000000060000000600000006000000040F34D108000000040C9A87060F8750FD0780010200000006000000060000000300000006000000030F34D106000000030CFD9BFF0F350D080C9A87080F8750FF0780010200000006000000060000000400000006000000040000000600000000"
theorem small_2374404_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2374404_right_root small_2374404_right_fuel small_2374404_right_count small_2374404_right_encoded = true := by
  decide +kernel
theorem small_2374404_right_covered : CoveredBy scale carrier boxes small_2374404_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2374404_right_root small_2374404_right_fuel small_2374404_right_count small_2374404_right_encoded small_2374404_right_checked

theorem cover_2374404 : CoveredBy scale carrier boxes root_2374404 := by
  apply coveredBy_split_literal root_2374404 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2374405 small_2374404_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2374405
  · exact small_2374404_right_covered
#print axioms cover_2374404

def root_2374399 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2374399_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2374399_right_fuel : Nat := 1
def small_2374399_right_count : Nat := 1
def small_2374399_right_encoded : String := "00000002"
theorem small_2374399_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2374399_right_root small_2374399_right_fuel small_2374399_right_count small_2374399_right_encoded = true := by
  decide +kernel
theorem small_2374399_right_covered : CoveredBy scale carrier boxes small_2374399_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2374399_right_root small_2374399_right_fuel small_2374399_right_count small_2374399_right_encoded small_2374399_right_checked

theorem cover_2374399 : CoveredBy scale carrier boxes root_2374399 := by
  apply coveredBy_split_literal root_2374399 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2374404 small_2374399_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2374404
  · exact small_2374399_right_covered
#print axioms cover_2374399

def root_2369043 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2369043 : CoveredBy scale carrier boxes root_2369043 := by
  apply coveredBy_split_literal root_2369043 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2369044 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2374399 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2369044
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2374399
#print axioms cover_2369043

def root_2369038 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2369038_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2369038_right_fuel : Nat := 1
def small_2369038_right_count : Nat := 1
def small_2369038_right_encoded : String := "00000001"
theorem small_2369038_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2369038_right_root small_2369038_right_fuel small_2369038_right_count small_2369038_right_encoded = true := by
  decide +kernel
theorem small_2369038_right_covered : CoveredBy scale carrier boxes small_2369038_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2369038_right_root small_2369038_right_fuel small_2369038_right_count small_2369038_right_encoded small_2369038_right_checked

theorem cover_2369038 : CoveredBy scale carrier boxes root_2369038 := by
  apply coveredBy_split_literal root_2369038 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2369043 small_2369038_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2369043
  · exact small_2369038_right_covered
#print axioms cover_2369038

def root_2361206 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2361206 : CoveredBy scale carrier boxes root_2361206 := by
  apply coveredBy_split_literal root_2361206 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.root_2361207 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2369038 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0057.cover_2361207
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2369038
#print axioms cover_2361206

def root_2361201 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2361201_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2361201_right_fuel : Nat := 1
def small_2361201_right_count : Nat := 1
def small_2361201_right_encoded : String := "00000004"
theorem small_2361201_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2361201_right_root small_2361201_right_fuel small_2361201_right_count small_2361201_right_encoded = true := by
  decide +kernel
theorem small_2361201_right_covered : CoveredBy scale carrier boxes small_2361201_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2361201_right_root small_2361201_right_fuel small_2361201_right_count small_2361201_right_encoded small_2361201_right_checked

theorem cover_2361201 : CoveredBy scale carrier boxes root_2361201 := by
  apply coveredBy_split_literal root_2361201 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2361206 small_2361201_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2361206
  · exact small_2361201_right_covered
#print axioms cover_2361201

def root_2361200 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2361200_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2361200_right_fuel : Nat := 19
def small_2361200_right_count : Nat := 137
def small_2361200_right_encoded : String := "120701080000000405000102135D45030000000105000104135D4505000000020CFD9BF70F350CF6000000000CFD9BFD0F350D06045489FF1386AD080C9A86F60F878CF700000000000000090F8750F70C9A8706000000070F878CFD00000003028001020000000900000007000000000000000400000009000000030F34D10600000003000000060F34D0F60CFD9BFD000000090000000600000000135D81050CFD9BF70F350CF6000000000CFD9BFD0F350D06045489FF1386AD080C9A86F6000000090F8750F70C9A87060F8750FD00000009000000030F878CFD00000003028001020000000600000006000000000000000400000009000000030F34D10600000003000000060F34D0F6000000060000000000000002135D810305000104135D4505000000020CFD9BF70F350CF6000000000CFD9BFD0F350D06045489FF1386AD080C9A86F60F878CF70000000000000007000000070000000400000007000000030F34D10600000003000000060F34D0F60000000600000000135D81050CFD9BF70F350CF6000000000CFD9BFD0F350D06045489FF1386AD080C9A86F60F878CF700000000000000060F8750F70C9A87060F8750FD07800102128A410300000001078001040000000700000009128A7D030000000700000001000000030F878CFD00000003000000060000000000000004138671080000000400000006000000030F34D10600000003000000060F34D0F600000006000000000000000200000001"
theorem small_2361200_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2361200_right_root small_2361200_right_fuel small_2361200_right_count small_2361200_right_encoded = true := by
  decide +kernel
theorem small_2361200_right_covered : CoveredBy scale carrier boxes small_2361200_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2361200_right_root small_2361200_right_fuel small_2361200_right_count small_2361200_right_encoded small_2361200_right_checked

theorem cover_2361200 : CoveredBy scale carrier boxes root_2361200 := by
  apply coveredBy_split_literal root_2361200 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2361201 small_2361200_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2361201
  · exact small_2361200_right_covered
#print axioms cover_2361200

def root_2361195 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2361195_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2361195_right_fuel : Nat := 1
def small_2361195_right_count : Nat := 1
def small_2361195_right_encoded : String := "00000003"
theorem small_2361195_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2361195_right_root small_2361195_right_fuel small_2361195_right_count small_2361195_right_encoded = true := by
  decide +kernel
theorem small_2361195_right_covered : CoveredBy scale carrier boxes small_2361195_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2361195_right_root small_2361195_right_fuel small_2361195_right_count small_2361195_right_encoded small_2361195_right_checked

theorem cover_2361195 : CoveredBy scale carrier boxes root_2361195 := by
  apply coveredBy_split_literal root_2361195 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2361200 small_2361195_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2361200
  · exact small_2361195_right_covered
#print axioms cover_2361195

def root_2361194 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2361194_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2361194_right_fuel : Nat := 21
def small_2361194_right_count : Nat := 157
def small_2361194_right_encoded : String := "120701060000000308A912FF12073D0805000102135D45030000000105000104135D4505000000020CFD9BF70F350CF600000000045489FD1386AD060CFD9BFF0F350D080C9A86F60F878CF7000000000000000A0F8750F70C9A8708000000080F878CFF0000000402800102000000080000000A00000000000000040F34D10800000004000000060000000313867106000000030CFD9BFF0000000A000000060F34D0F6045489FD1386AD060CFD9BFF0000000A00000006000000030000000600000000135D81050CFD9BF70F350CF600000000045489FD1386AD060CFD9BFF0F350D080C9A86F60F878CF7000000000000000800000008000000040F34D10800000004000000060000000313867106000000030CFD9BFF00000006000000060F34D0F6000000060000000000000002135D810305000104135D4505000000020CFD9BF70F350CF600000000045489FD1386AD060CFD9BFF0F350D080C9A86F60000000A0F8750F70C9A87080F8750FF0000000A000000040F878CFF0000000407800102000000060000000600000000000000040F34D10800000004000000060000000313867106000000030CFD9BFF00000006000000060F34D0F60000000600000000135D81050CFD9BF70F350CF600000000045489FD1386AD060CFD9BFF0F350D080C9A86F60F878CF700000000000000060F8750F70C9A87080F8750FF0780010200000008128A7D0307800104000000060000000500000001000000040F878CFF000000040000000600000000000000040F34D1080000000400000006000000031386710600000003000000060F34D0F60000000600000000000000020000000100000004120701080000000400000006"
theorem small_2361194_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2361194_right_root small_2361194_right_fuel small_2361194_right_count small_2361194_right_encoded = true := by
  decide +kernel
theorem small_2361194_right_covered : CoveredBy scale carrier boxes small_2361194_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2361194_right_root small_2361194_right_fuel small_2361194_right_count small_2361194_right_encoded small_2361194_right_checked

theorem cover_2361194 : CoveredBy scale carrier boxes root_2361194 := by
  apply coveredBy_split_literal root_2361194 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2361195 small_2361194_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2361195
  · exact small_2361194_right_covered
#print axioms cover_2361194

def root_2361188 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2361188_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2361188_left_fuel : Nat := 1
def small_2361188_left_count : Nat := 1
def small_2361188_left_encoded : String := "00000000"
theorem small_2361188_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2361188_left_root small_2361188_left_fuel small_2361188_left_count small_2361188_left_encoded = true := by
  decide +kernel
theorem small_2361188_left_covered : CoveredBy scale carrier boxes small_2361188_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2361188_left_root small_2361188_left_fuel small_2361188_left_count small_2361188_left_encoded small_2361188_left_checked

theorem cover_2361188 : CoveredBy scale carrier boxes root_2361188 := by
  apply coveredBy_split_literal root_2361188 small_2361188_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2361194 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_2361188_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2361194
#print axioms cover_2361188

def root_2361187 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2361187_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2361187_right_fuel : Nat := 21
def small_2361187_right_count : Nat := 233
def small_2361187_right_encoded : String := "120700F608A912FD12073D0608A912FF12073D0805000102135D45030000000105000104135D450500000002045489F71386ACF6000000000CFD9BFD0F350D0600000005000000030F34D106000000030CFD9BFF0000000A0F34D1080000000400000006138670F60CFD9BFD0F350D0600000005000000030F34D106000000030CFD9BFF0000000A0F34D108000000040000000900000000135D8105045489F71386ACF6000000000CFD9BFD0F350D060CFD9BFF0F350D0800000005000000040F34D1080000000400000009000000030F34D106000000030CFD9BFF0F350D080C9A87080F8750FF0000000500000004000000060000000400000006138670F60CFD9BFD0F350D060CFD9BFF0F350D08000000050000000400000009000000030F34D106000000030CFD9BFF0F350D080C9A87080F8750FF00000005000000040F878CFF000000040000000600000004000000060000000000000002135D810305000104135D450500000002045489F71386ACF6000000000CFD9BFD0F350D060CFD9BFF0F350D0800000005000000040F34D108000000040C9A87060F8750FD000000050000000300000006000000030F34D106000000030CFD9BFF0000000A00000006138670F60CFD9BFD0F350D060CFD9BFF0F350D0800000005000000040F34D108000000040C9A87060F8750FD00000005000000030F878CFD0000000300000006000000030F34D106000000030000000A00000000135D8105045489F71386ACF6000000000CFD9BFD0F350D060CFD9BFF0F350D080C9A87060F8750FD0C9A8708000000050F878CFF00000004078001020000000500000006000000030F878CFD000000030C9A87080F8750FF0780010200000005000000060000000400000006000000040F34D1080000000400000006000000030F34D1060000000300000006138670F60CFD9BFD0F350D060CFD9BFF0F350D080C9A87060F8750FD0C9A8708000000050F878CFF0000000400000006000000030F878CFD000000030C9A870800000006000000060000000400000006000000030F34D106000000030000000600000000000000020000000100000004120701080000000405000102135D45030000000105000104135D450500000002045489F7000000090000000900000006135D8103000000060000000100000003120701060000000308A912FF12073D0805000102135D45030000000105000104135D450500000002045489F70000000A0000000A00000006135D81030000000600000001000000040000000600000000"
theorem small_2361187_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2361187_right_root small_2361187_right_fuel small_2361187_right_count small_2361187_right_encoded = true := by
  decide +kernel
theorem small_2361187_right_covered : CoveredBy scale carrier boxes small_2361187_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2361187_right_root small_2361187_right_fuel small_2361187_right_count small_2361187_right_encoded small_2361187_right_checked

theorem cover_2361187 : CoveredBy scale carrier boxes root_2361187 := by
  apply coveredBy_split_literal root_2361187 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2361188 small_2361187_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2361188
  · exact small_2361187_right_covered
#print axioms cover_2361187

def root_2361181 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2361181_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2361181_left_fuel : Nat := 1
def small_2361181_left_count : Nat := 1
def small_2361181_left_encoded : String := "00000004"
theorem small_2361181_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2361181_left_root small_2361181_left_fuel small_2361181_left_count small_2361181_left_encoded = true := by
  decide +kernel
theorem small_2361181_left_covered : CoveredBy scale carrier boxes small_2361181_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2361181_left_root small_2361181_left_fuel small_2361181_left_count small_2361181_left_encoded small_2361181_left_checked

theorem cover_2361181 : CoveredBy scale carrier boxes root_2361181 := by
  apply coveredBy_split_literal root_2361181 small_2361181_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2361187 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2361181_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2361187
#print axioms cover_2361181

def root_2359497 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2359497 : CoveredBy scale carrier boxes root_2359497 := by
  apply coveredBy_split_literal root_2359497 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0902.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2361181 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0902.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2361181
#print axioms cover_2359497

def root_2359491 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2359491_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2359491_left_fuel : Nat := 1
def small_2359491_left_count : Nat := 1
def small_2359491_left_encoded : String := "00000003"
theorem small_2359491_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2359491_left_root small_2359491_left_fuel small_2359491_left_count small_2359491_left_encoded = true := by
  decide +kernel
theorem small_2359491_left_covered : CoveredBy scale carrier boxes small_2359491_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2359491_left_root small_2359491_left_fuel small_2359491_left_count small_2359491_left_encoded small_2359491_left_checked

theorem cover_2359491 : CoveredBy scale carrier boxes root_2359491 := by
  apply coveredBy_split_literal root_2359491 small_2359491_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2359497 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2359491_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2359497
#print axioms cover_2359491

def root_2357529 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2357529 : CoveredBy scale carrier boxes root_2357529 := by
  apply coveredBy_split_literal root_2357529 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0901.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2359491 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0901.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2359491
#print axioms cover_2357529

def root_2357523 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2357523_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2357523_left_fuel : Nat := 1
def small_2357523_left_count : Nat := 1
def small_2357523_left_encoded : String := "00000002"
theorem small_2357523_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2357523_left_root small_2357523_left_fuel small_2357523_left_count small_2357523_left_encoded = true := by
  decide +kernel
theorem small_2357523_left_covered : CoveredBy scale carrier boxes small_2357523_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2357523_left_root small_2357523_left_fuel small_2357523_left_count small_2357523_left_encoded small_2357523_left_checked

theorem cover_2357523 : CoveredBy scale carrier boxes root_2357523 := by
  apply coveredBy_split_literal root_2357523 small_2357523_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2357529 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2357523_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2357529
#print axioms cover_2357523

def root_2390339 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2390339_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2390339_left_fuel : Nat := 24
def small_2390339_left_count : Nat := 275
def small_2390339_left_encoded : String := "1151E8FF08A912F712073CF60000000008A9130512070104000000020000000712073D0405000102135D45030000000105000106135D44FD05000108135D44FF0CFD9BF7000000070F34D0F6000000050000000000000004135D80FF000000040CFD9BF70F350CF6000000000CFD9C050F34D10400000002000000070F350D040C9A86F60F878CF7000000000000000500000006000000020F34D0F60CFD9C050F34D1040000000200000007000000050000000000000003135D80FD000000030500010800000007135D80FF000000040CFD9BF70F350CF6000000000CFD9C05000000070F350D040C9A86F6000000070F8750F70C9A87040F87510500000002000000060000000700000000000000020F34D0F60000000700000000135D810305000106135D44FD05000108135D44FF0CFD9BF70F350CF6000000000CFD9C05000000070F350D040C9A86F60000000700000006000000020F34D0F6000000070000000000000004135D80FF000000040CFD9BF70F350CF6000000000CFD9C050F34D104000000020000000A0F350D040C9A86F60F878CF7000000000C9A87040F8751050000000207800102000000050000000A0000000A0F8750F70000000A00000000000000020F34D0F60CFD9C050F34D10400000002000000070F350D040C9A8704000000050F878D050780010200000005128A7D030280010600000005000000070000000100000002000000020000000000000003135D80FD0000000305000108135D44FF0CFD9BF7000000070F34D0F6000000070000000000000004135D80FF000000040CFD9BF70F350CF6000000000CFD9C050F34D10400000002000000070F350D040C9A86F60F878CF7000000000C9A87040F8751050000000207800102128A41030000000107800106128A40FD000000070000000300000007128A7D0307800106128A40FD0000000A000000030000000700000001000000070F8750F70C9A87040F87510500000002078001020000000A128A7D03078001060000000A0000000A000000010F878D05000000070000000200000000000000020F34D0F60CFD9C05000000070F350D040C9A87040F875105000000020780010200000005128A7D03078001060000000500000007000000010000000700000002000000000000000100000002120700F608A9130512070104000000020000000712073D0405000102135D4503000000010500010600000005135D80FD000000030500010800000005135D80FF00000004045489F70000000700000005135D810305000106135D44FD0500010800000005135D80FF00000004045489F71386ACF6000000000CFD9C050F34D1040000000200000007000000050000000500000003135D80FD000000030500010800000007135D80FF00000004045489F71386ACF6000000000CFD9C05000000070F350D040C9A8704000000050000000700000002138670F60CFD9C05000000070F350D0400000005000000020000000000000001000000020000000000000004"
theorem small_2390339_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2390339_left_root small_2390339_left_fuel small_2390339_left_count small_2390339_left_encoded = true := by
  decide +kernel
theorem small_2390339_left_covered : CoveredBy scale carrier boxes small_2390339_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2390339_left_root small_2390339_left_fuel small_2390339_left_count small_2390339_left_encoded small_2390339_left_checked

theorem cover_2390339 : CoveredBy scale carrier boxes root_2390339 := by
  apply coveredBy_split_literal root_2390339 small_2390339_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0911.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2390339_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0911.covered
#print axioms cover_2390339

def root_2390334 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2390334_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2390334_right_fuel : Nat := 1
def small_2390334_right_count : Nat := 1
def small_2390334_right_encoded : String := "00000003"
theorem small_2390334_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2390334_right_root small_2390334_right_fuel small_2390334_right_count small_2390334_right_encoded = true := by
  decide +kernel
theorem small_2390334_right_covered : CoveredBy scale carrier boxes small_2390334_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2390334_right_root small_2390334_right_fuel small_2390334_right_count small_2390334_right_encoded small_2390334_right_checked

theorem cover_2390334 : CoveredBy scale carrier boxes root_2390334 := by
  apply coveredBy_split_literal root_2390334 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2390339 small_2390334_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2390339
  · exact small_2390334_right_covered
#print axioms cover_2390334

def root_2390333 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2390333 : CoveredBy scale carrier boxes root_2390333 := by
  apply coveredBy_split_literal root_2390333 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2390334 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0912.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2390334
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0912.covered
#print axioms cover_2390333

def root_2390328 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2390328_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2390328_right_fuel : Nat := 1
def small_2390328_right_count : Nat := 1
def small_2390328_right_encoded : String := "00000002"
theorem small_2390328_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2390328_right_root small_2390328_right_fuel small_2390328_right_count small_2390328_right_encoded = true := by
  decide +kernel
theorem small_2390328_right_covered : CoveredBy scale carrier boxes small_2390328_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2390328_right_root small_2390328_right_fuel small_2390328_right_count small_2390328_right_encoded small_2390328_right_checked

theorem cover_2390328 : CoveredBy scale carrier boxes root_2390328 := by
  apply coveredBy_split_literal root_2390328 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2390333 small_2390328_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2390333
  · exact small_2390328_right_covered
#print axioms cover_2390328

def root_2357522 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2357522 : CoveredBy scale carrier boxes root_2357522 := by
  apply coveredBy_split_literal root_2357522 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2357523 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2390328 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2357523
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2390328
#print axioms cover_2357522

def root_2357516 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2357516_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2357516_left_fuel : Nat := 1
def small_2357516_left_count : Nat := 1
def small_2357516_left_encoded : String := "00000001"
theorem small_2357516_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2357516_left_root small_2357516_left_fuel small_2357516_left_count small_2357516_left_encoded = true := by
  decide +kernel
theorem small_2357516_left_covered : CoveredBy scale carrier boxes small_2357516_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2357516_left_root small_2357516_left_fuel small_2357516_left_count small_2357516_left_encoded small_2357516_left_checked

theorem cover_2357516 : CoveredBy scale carrier boxes root_2357516 := by
  apply coveredBy_split_literal root_2357516 small_2357516_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2357522 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2357516_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2357522
#print axioms cover_2357516

def root_2397799 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2397799 : CoveredBy scale carrier boxes root_2397799 := by
  apply coveredBy_split_literal root_2397799 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0913.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0914.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0913.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0914.covered
#print axioms cover_2397799

def root_2397793 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2397793_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2397793_left_fuel : Nat := 1
def small_2397793_left_count : Nat := 1
def small_2397793_left_encoded : String := "00000003"
theorem small_2397793_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2397793_left_root small_2397793_left_fuel small_2397793_left_count small_2397793_left_encoded = true := by
  decide +kernel
theorem small_2397793_left_covered : CoveredBy scale carrier boxes small_2397793_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2397793_left_root small_2397793_left_fuel small_2397793_left_count small_2397793_left_encoded small_2397793_left_checked

theorem cover_2397793 : CoveredBy scale carrier boxes root_2397793 := by
  apply coveredBy_split_literal root_2397793 small_2397793_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2397799 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2397793_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2397799
#print axioms cover_2397793

def root_2396781 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2396781_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2396781_left_fuel : Nat := 28
def small_2396781_left_count : Nat := 471
def small_2396781_left_encoded : String := "1151E8FD0A0001081151E8FF08A912F712073CF60000000008A9130312070102000000010000000812073D0205000104135D45050000000205000106135D44FD05000108135D44FF0CFD9BF7000000080F34D0F60000000500000000000000040000000800000003135D80FD0000000305000108135D44FF0CFD9BF70F350CF6000000000CFD9C030F34D10200000001000000080F350D020C9A86F60F878CF7000000000000000500000006000000010F34D0F60CFD9C030F34D1020000000100000008000000050000000000000004135D80FF000000040CFD9BF70F350CF6000000000CFD9C03000000080F350D020C9A86F6000000080F8750F70C9A87020F87510300000001000000060000000800000000000000010F34D0F60000000800000000135D810505000106135D44FD05000108135D44FF0CFD9BF70F350CF6000000000CFD9C03000000080F350D020C9A86F60000000800000006000000010F34D0F6000000080000000000000004135D80FF000000040CFD9BF7000000080F34D0F6000000080000000000000003135D80FD0000000305000108135D44FF0CFD9BF70F350CF6000000000CFD9C030F34D10200000001000000090F350D020C9A86F60F878CF7000000000C9A87020F87510300000001078001040000000500000009000000090F8750F70000000900000000000000010F34D0F60CFD9C030F34D10200000001000000080F350D020C9A8702000000050F878D030780010400000005128A7D050780010600000005128A7CFD00000003000000090000000200000001000000010000000000000004135D80FF000000040CFD9BF70F350CF6000000000CFD9C030F34D10200000001000000080F350D020C9A86F60F878CF7000000000C9A87020F8751030000000107800104128A4105000000020780010600000008128A7CFD0000000307800108128A40FF000000080000000400000008128A7D050780010600000008128A7CFD0000000307800108128A40FF00000009000000040000000800000002000000080F8750F70C9A87020F875103000000010780010400000009128A7D050780010600000009128A7CFD0000000300000009000000020F878D03000000080000000100000000000000010F34D0F60CFD9C03000000080F350D020C9A87020F875103000000010780010400000005128A7D050780010600000005128A7CFD00000003078001080000000500000008000000020000000800000001000000000000000200000001120700F608A9130312070102000000010000000812073D0205000104135D4505000000020500010600000005135D80FD000000030500010800000005135D80FF00000004045489F70000000800000005135D810505000106135D44FD05000108000000050000000800000003135D80FD0000000305000108135D44FF045489F71386ACF6000000000CFD9C030F34D1020000000100000008000000050000000500000004135D80FF00000004045489F71386ACF6000000000CFD9C03000000080F350D020C9A8702000000050000000800000001138670F60CFD9C03000000080F350D0200000005000000010000000000000002000000010000000000000004115224FF0000000408A912F712073CF60000000008A9130312070102000000010000000812073D0208A912FF12073D0805000104135D4505000000020500010600000008135D80FD000000030CFD9BF70F350CF6000000000CFD9C03000000080F350D020CFD9BFF000000080F34D1080000000400000007000000010F34D0F60000000800000000135D810505000106135D44FD0CFD9BF7000000080F34D0F6000000080000000000000003135D80FD000000030CFD9BF70F350CF6000000000CFD9C030F34D10200000001000000080F350D020CFD9BFF0F350D080C9A86F6000000080F8750F70C9A87020F87510300000001000000080000000800000000000000040F34D1080000000400000008000000010F34D0F60CFD9C03000000080F350D020CFD9BFF000000080F34D108000000040000000800000001000000000000000200000004120701080000000405000104135D4505000000020500010600000008135D80FD000000030CFD9BF7000000080F34D0F60000000800000000135D81050500010600000008135D80FD000000030CFD9BF70F350CF6000000000CFD9C03000000070F350D02045489FF0000000700000007000000010F34D0F600000008000000000000000200000001120700F608A9130312070102000000010000000812073D0208A912FF12073D0805000104135D4505000000020500010600000008135D80FD00000003045489F700000008138670F60000000800000000135D81050500010600000008135D80FD00000003045489F71386ACF6000000000CFD9C03000000080F350D020CFD9BFF000000080F34D108000000040000000600000001138670F60CFD9C03000000080F350D020CFD9BFF000000080000000600000001000000000000000200000004120701080000000405000104135D45050000000200000008135D810505000106000000080000000600000002000000010000000000000003"
theorem small_2396781_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2396781_left_root small_2396781_left_fuel small_2396781_left_count small_2396781_left_encoded = true := by
  decide +kernel
theorem small_2396781_left_covered : CoveredBy scale carrier boxes small_2396781_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2396781_left_root small_2396781_left_fuel small_2396781_left_count small_2396781_left_encoded small_2396781_left_checked

theorem cover_2396781 : CoveredBy scale carrier boxes root_2396781 := by
  apply coveredBy_split_literal root_2396781 small_2396781_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2397793 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2396781_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2397793
#print axioms cover_2396781

def root_2396775 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2396775_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2396775_left_fuel : Nat := 1
def small_2396775_left_count : Nat := 1
def small_2396775_left_encoded : String := "00000002"
theorem small_2396775_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2396775_left_root small_2396775_left_fuel small_2396775_left_count small_2396775_left_encoded = true := by
  decide +kernel
theorem small_2396775_left_covered : CoveredBy scale carrier boxes small_2396775_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2396775_left_root small_2396775_left_fuel small_2396775_left_count small_2396775_left_encoded small_2396775_left_checked

theorem cover_2396775 : CoveredBy scale carrier boxes root_2396775 := by
  apply coveredBy_split_literal root_2396775 small_2396775_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2396781 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2396775_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2396781
#print axioms cover_2396775

def root_2403233 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2403233 : CoveredBy scale carrier boxes root_2403233 := by
  apply coveredBy_split_literal root_2403233 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0915.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0916.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0915.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0916.covered
#print axioms cover_2403233

def root_2403228 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2403228_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2403228_right_fuel : Nat := 1
def small_2403228_right_count : Nat := 1
def small_2403228_right_encoded : String := "00000002"
theorem small_2403228_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2403228_right_root small_2403228_right_fuel small_2403228_right_count small_2403228_right_encoded = true := by
  decide +kernel
theorem small_2403228_right_covered : CoveredBy scale carrier boxes small_2403228_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2403228_right_root small_2403228_right_fuel small_2403228_right_count small_2403228_right_encoded small_2403228_right_checked

theorem cover_2403228 : CoveredBy scale carrier boxes root_2403228 := by
  apply coveredBy_split_literal root_2403228 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2403233 small_2403228_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2403233
  · exact small_2403228_right_covered
#print axioms cover_2403228

def root_2396774 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2396774 : CoveredBy scale carrier boxes root_2396774 := by
  apply coveredBy_split_literal root_2396774 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2396775 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2403228 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2396775
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2403228
#print axioms cover_2396774

def root_2396769 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2396769_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2396769_right_fuel : Nat := 1
def small_2396769_right_count : Nat := 1
def small_2396769_right_encoded : String := "00000001"
theorem small_2396769_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2396769_right_root small_2396769_right_fuel small_2396769_right_count small_2396769_right_encoded = true := by
  decide +kernel
theorem small_2396769_right_covered : CoveredBy scale carrier boxes small_2396769_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2396769_right_root small_2396769_right_fuel small_2396769_right_count small_2396769_right_encoded small_2396769_right_checked

theorem cover_2396769 : CoveredBy scale carrier boxes root_2396769 := by
  apply coveredBy_split_literal root_2396769 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2396774 small_2396769_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2396774
  · exact small_2396769_right_covered
#print axioms cover_2396769

def root_2357515 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2357515 : CoveredBy scale carrier boxes root_2357515 := by
  apply coveredBy_split_literal root_2357515 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2357516 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2396769 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2357516
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2396769
#print axioms cover_2357515

def root_2357509 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2357509_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2357509_left_fuel : Nat := 1
def small_2357509_left_count : Nat := 1
def small_2357509_left_encoded : String := "00000000"
theorem small_2357509_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2357509_left_root small_2357509_left_fuel small_2357509_left_count small_2357509_left_encoded = true := by
  decide +kernel
theorem small_2357509_left_covered : CoveredBy scale carrier boxes small_2357509_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2357509_left_root small_2357509_left_fuel small_2357509_left_count small_2357509_left_encoded small_2357509_left_checked

theorem cover_2357509 : CoveredBy scale carrier boxes root_2357509 := by
  apply coveredBy_split_literal root_2357509 small_2357509_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2357515 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2357509_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2357515
#print axioms cover_2357509

def root_2412438 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2412438_right_root : ZRayBox := fun j => (#[⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2412438_right_fuel : Nat := 28
def small_2412438_right_count : Nat := 351
def small_2412438_right_encoded : String := "128A40F70280010213D7B103000000010280010413D7B105000000020AD3577F10D13D080DE7CA06000000060E6014FD00000003064000F612FFACF700000000014001020000000613F61503014001040000000613F615050BE879BF00000006000000070000000200000001000000060000000410D10108000000040000000713D7ED050AD3577F10D13D080DE7CA060E5FD8FD00000006000000030E6014FD00000003064000F612FFACF7000000000140010213F5D9030000000103C0010413A51105000000020BE879BF0000000610117108000000040000000913A54D050BE879BF1011AD0800000006000000041011710800000004000000090000000213F6150303C0010413A51105000000020BE879BF0000000610117108000000040DAED87D0E96610600000006000000030E9625060000000306E000F6000000070000000713A54D050BE879BF1011AD080DAED87D000000060E9625060000000306E000F612C820F70000000001E001020000000813E9950304600104000000060000000800000001000000060000000410117108000000040DAED87D0E96610606E000F6000000090000000A000000030E9625060000000306E000F60000000912C7E4F701E00102000000090000000500000000000000020000000112FF70F7014001020000000613F6150303C001040000000613A54D050BE879BF0000000610117108000000040DAED87D000000060E96250600000003000000050000000200000001000000000000000410D10108000000040DE7CA060E5FD8FD064000F612FFACF7000000000000000700000007000000030E6014FD00000003064000F612FFACF700000000014001020000000913F6150303C0010400000007000000090000000112FF70F70140010213F5D9030000000103C00104000000070000000913F6150303C00104000000070000000500000001000000000000000213D7ED030280010413D7B105000000020AD3577F10D13D080DE7CA06000000070E6014FD00000003064000F612FFACF7000000000000000700000007000000040000000713D7ED050AD3577F10D13D080DE7CA060E5FD8FD064000F612FFACF70000000003C0010213A511030000000103C001040000000613A54D050BE879BF000000061011710800000004000000070000000213A54D0303C001040000000713A54D050BE879BF1011AD08000000060000000400000007000000020000000112FF70F703C001020000000613A54D0303C0010400000006000000050000000100000000000000030E6014FD00000003064000F612FFACF70000000003C0010213A511030000000103C0010413A51105000000020BE879BF1011AD080DAED87D000000060E9625060000000306E000F612C820F700000000032001020000000613C145030000000700000001000000060000000410117108000000040000000713A54D050BE879BF1011AD080DAED87D0E96610606E000F612C820F700000000032001020000000613C145030460010400000006000000050000000100000006000000030E9625060000000306E000F612C820F7000000000320010213C1090300000001046001041383DD05000000020C730ADF000000060FA7090800000004000000050000000500000005000000050000000410117108000000040DAED87D0E96610600000007000000030E96250600000003000000050000000213A54D0303C0010413A51105000000020BE879BF1011AD080DAED87D00000007000000070000000400000007000000050000000112FF70F703C0010213A511030000000103C0010413A51105000000020BE879BF00000006000000070000000500000005000000000000000410D10108000000040DE7CA06000000070E6014FD00000003064000F612FFACF7000000000000000700000005000000020000000100000000"
theorem small_2412438_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2412438_right_root small_2412438_right_fuel small_2412438_right_count small_2412438_right_encoded = true := by
  decide +kernel
theorem small_2412438_right_covered : CoveredBy scale carrier boxes small_2412438_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2412438_right_root small_2412438_right_fuel small_2412438_right_count small_2412438_right_encoded small_2412438_right_checked

theorem cover_2412438 : CoveredBy scale carrier boxes root_2412438 := by
  apply coveredBy_split_literal root_2412438 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0918.root small_2412438_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0918.covered
  · exact small_2412438_right_covered
#print axioms cover_2412438

def root_2412432 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2412432_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2412432_left_fuel : Nat := 1
def small_2412432_left_count : Nat := 1
def small_2412432_left_encoded : String := "00000003"
theorem small_2412432_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2412432_left_root small_2412432_left_fuel small_2412432_left_count small_2412432_left_encoded = true := by
  decide +kernel
theorem small_2412432_left_covered : CoveredBy scale carrier boxes small_2412432_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2412432_left_root small_2412432_left_fuel small_2412432_left_count small_2412432_left_encoded small_2412432_left_checked

theorem cover_2412432 : CoveredBy scale carrier boxes root_2412432 := by
  apply coveredBy_split_literal root_2412432 small_2412432_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2412438 coord3 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_2412432_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2412438
#print axioms cover_2412432

def root_2412212 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2412212_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2412212_left_fuel : Nat := 22
def small_2412212_left_count : Nat := 103
def small_2412212_left_encoded : String := "0F8750FD078000F6128A7CF7000000000280010213D7B103000000010280010413D7B105000000020AD3577F000000060000000513D7ED050AD3577F10D13D080B4D4406108010FD000000060000000310804CFD0000000308C000F600000005000000060000000410D1010800000004000000070000000213D7ED03028001040000000713D7ED050AD3577F10D13D080B4D4406108010FD000000070000000310804CFD0000000308C000F611FC24F70000000003C0010213A511030000000103C001040000000513A54D050BE879BF1011AD080BF3E58600000005100928FD00000003000000070000000400000007000000020000000711FBE8F703C0010213A511030000000103C001040000000613A54D050000000700000002000000070000000000000004000000070000000200000001128A40F70280010213D7B10300000001028001040000000613D7ED050AD3577F0000000610D1010800000004000000070000000213D7ED03028001040000000713D7ED050AD3577F10D13D0800000006000000040000000700000002000000010000000000000003"
theorem small_2412212_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2412212_left_root small_2412212_left_fuel small_2412212_left_count small_2412212_left_encoded = true := by
  decide +kernel
theorem small_2412212_left_covered : CoveredBy scale carrier boxes small_2412212_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2412212_left_root small_2412212_left_fuel small_2412212_left_count small_2412212_left_encoded small_2412212_left_checked

theorem cover_2412212 : CoveredBy scale carrier boxes root_2412212 := by
  apply coveredBy_split_literal root_2412212 small_2412212_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2412432 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_2412212_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2412432
#print axioms cover_2412212

def root_2412206 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2412206_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2412206_left_fuel : Nat := 1
def small_2412206_left_count : Nat := 1
def small_2412206_left_encoded : String := "00000004"
theorem small_2412206_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2412206_left_root small_2412206_left_fuel small_2412206_left_count small_2412206_left_encoded = true := by
  decide +kernel
theorem small_2412206_left_covered : CoveredBy scale carrier boxes small_2412206_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2412206_left_root small_2412206_left_fuel small_2412206_left_count small_2412206_left_encoded small_2412206_left_checked

theorem cover_2412206 : CoveredBy scale carrier boxes root_2412206 := by
  apply coveredBy_split_literal root_2412206 small_2412206_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2412212 coord4 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_2412206_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2412212
#print axioms cover_2412206

def root_2409870 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2409870 : CoveredBy scale carrier boxes root_2409870 := by
  apply coveredBy_split_literal root_2409870 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0917.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2412206 coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0917.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2412206
#print axioms cover_2409870

def root_2409865 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2409865_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2409865_right_fuel : Nat := 1
def small_2409865_right_count : Nat := 1
def small_2409865_right_encoded : String := "00000003"
theorem small_2409865_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2409865_right_root small_2409865_right_fuel small_2409865_right_count small_2409865_right_encoded = true := by
  decide +kernel
theorem small_2409865_right_covered : CoveredBy scale carrier boxes small_2409865_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2409865_right_root small_2409865_right_fuel small_2409865_right_count small_2409865_right_encoded small_2409865_right_checked

theorem cover_2409865 : CoveredBy scale carrier boxes root_2409865 := by
  apply coveredBy_split_literal root_2409865 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2409870 small_2409865_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2409870
  · exact small_2409865_right_covered
#print axioms cover_2409865

def root_2415960 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2415960_right_root : ZRayBox := fun j => (#[⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2415960_right_fuel : Nat := 28
def small_2415960_right_count : Nat := 341
def small_2415960_right_encoded : String := "128A40F70280010213D7B103000000010280010413D7B105000000020AD3577D10D13D060DE7CA08000000060E6014FF00000004064000F612FFACF700000000014001020000000613F61503014001040000000613F615050BE879BD00000006000000080000000200000001000000060000000310D10106000000030000000813D7ED050AD3577D10D13D060DE7CA08000000080E6014FF00000004064000F612FFACF700000000000000080000000800000003000000080000000213D7ED030280010413D7B105000000020AD3577D10D13D060DE7CA080E5FD8FF00000006000000040E6014FF00000004064000F612FFACF70000000003C0010213A51103000000010140010413F5D905000000020BE879BD0000000610117106000000030000000A13F615050BE879BD0000000610117106000000030DAED87F0E96610800000006000000040E9625080000000406E000F600000008000000080000000213A54D030140010413F5D905000000020BE879BD1011AD06000000060000000310117106000000030000000A13F615050BE879BD1011AD060DAED87F000000060E9625080000000406E000F612C820F700000000046001021383DD03000000010000000600000007000000060000000310117106000000030DAED87F0E96610806E000F60000000A00000009000000040E9625080000000406E000F60000000A12C7E4F7046001021383DD03000000010000000A0000000500000000000000020000000112FF70F703C001020000000613A54D03014001040000000613F615050BE879BD0000000610117106000000030DAED87F000000060E96250800000004000000050000000200000001000000000000000310D10106000000030DE7CA080E5FD8FF064000F612FFACF7000000000000000800000008000000040E6014FF00000004064000F612FFACF70000000003C00102000000080000000A12FF70F703C001020000000813A54D03014001040000000A00000005000000010000000013D7ED050AD3577D10D13D060DE7CA080E5FD8FF064000F612FFACF70000000003C001020000000813A54D0303C0010413A51105000000020BE879BD0000000610117106000000030000000813A54D050BE879BD1011AD06000000060000000300000008000000020000000112FF70F703C001020000000613A54D0303C0010400000006000000050000000100000000000000040E6014FF00000004064000F612FFACF70000000003C0010213A511030000000103C0010413A51105000000020BE879BD1011AD060DAED87F000000060E9625080000000406E000F612C820F700000000032001020000000613C1450303200104000000060000000800000001000000060000000310117106000000030000000813A54D050BE879BD1011AD060DAED87F000000080000000800000003000000080000000213A54D0303C0010413A51105000000020BE879BD1011AD060DAED87F0E96610806E000F612C820F7000000000460010200000006138419030320010400000006000000050000000100000006000000040E9625080000000406E000F612C820F700000000046001021383DD03000000010320010413C10905000000020C730ADD000000060FA7090600000003000000050000000500000005000000050000000310117106000000030DAED87F0E96610800000008000000040E9625080000000400000005000000050000000112FF70F703C0010213A511030000000103C0010413A51105000000020BE879BD00000006000000080000000500000005000000000000000310D10106000000030DE7CA08000000080E6014FF00000004064000F612FFACF7000000000000000800000005000000020000000100000000"
theorem small_2415960_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2415960_right_root small_2415960_right_fuel small_2415960_right_count small_2415960_right_encoded = true := by
  decide +kernel
theorem small_2415960_right_covered : CoveredBy scale carrier boxes small_2415960_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2415960_right_root small_2415960_right_fuel small_2415960_right_count small_2415960_right_encoded small_2415960_right_checked

theorem cover_2415960 : CoveredBy scale carrier boxes root_2415960 := by
  apply coveredBy_split_literal root_2415960 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0919.root small_2415960_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0919.covered
  · exact small_2415960_right_covered
#print axioms cover_2415960

def root_2415954 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2415954_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2415954_left_fuel : Nat := 1
def small_2415954_left_count : Nat := 1
def small_2415954_left_encoded : String := "00000004"
theorem small_2415954_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2415954_left_root small_2415954_left_fuel small_2415954_left_count small_2415954_left_encoded = true := by
  decide +kernel
theorem small_2415954_left_covered : CoveredBy scale carrier boxes small_2415954_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2415954_left_root small_2415954_left_fuel small_2415954_left_count small_2415954_left_encoded small_2415954_left_checked

theorem cover_2415954 : CoveredBy scale carrier boxes root_2415954 := by
  apply coveredBy_split_literal root_2415954 small_2415954_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2415960 coord4 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_2415954_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2415960
#print axioms cover_2415954

def root_2415744 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2415744_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2415744_left_fuel : Nat := 22
def small_2415744_left_count : Nat := 97
def small_2415744_left_encoded : String := "0F8750FF078000F6128A7CF7000000000280010213D7B103000000010280010413D7B105000000020AD3577D00000006000000050000000813D7ED030280010413D7B105000000020AD3577D10D13D060B4D4408108010FF000000060000000410804CFF0000000408C000F600000005000000060000000310D10106000000030000000813D7ED050AD3577D10D13D060B4D4408108010FF000000080000000410804CFF0000000408C000F611FC24F70000000003C001020000000813A54D0303C0010413A51105000000020BE879BD1011AD060BF3E58800000005100928FF00000004000000080000000300000008000000080000000111FBE8F703C001020000000813A54D0300000008000000010000000000000003000000080000000200000001128A40F70280010213D7B103000000010000000813D7ED030280010413D7B105000000020AD3577D0000000610D10106000000030000000813D7ED050AD3577D10D13D0600000006000000030000000800000002000000010000000000000004"
theorem small_2415744_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2415744_left_root small_2415744_left_fuel small_2415744_left_count small_2415744_left_encoded = true := by
  decide +kernel
theorem small_2415744_left_covered : CoveredBy scale carrier boxes small_2415744_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2415744_left_root small_2415744_left_fuel small_2415744_left_count small_2415744_left_encoded small_2415744_left_checked

theorem cover_2415744 : CoveredBy scale carrier boxes root_2415744 := by
  apply coveredBy_split_literal root_2415744 small_2415744_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2415954 coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_2415744_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2415954
#print axioms cover_2415744

def root_2415739 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2415739_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2415739_right_fuel : Nat := 1
def small_2415739_right_count : Nat := 1
def small_2415739_right_encoded : String := "00000004"
theorem small_2415739_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2415739_right_root small_2415739_right_fuel small_2415739_right_count small_2415739_right_encoded = true := by
  decide +kernel
theorem small_2415739_right_covered : CoveredBy scale carrier boxes small_2415739_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2415739_right_root small_2415739_right_fuel small_2415739_right_count small_2415739_right_encoded small_2415739_right_checked

theorem cover_2415739 : CoveredBy scale carrier boxes root_2415739 := by
  apply coveredBy_split_literal root_2415739 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2415744 small_2415739_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2415744
  · exact small_2415739_right_covered
#print axioms cover_2415739

def root_2419152 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2419152 : CoveredBy scale carrier boxes root_2419152 := by
  apply coveredBy_split_literal root_2419152 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0920.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0921.root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0920.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0921.covered
#print axioms cover_2419152

def root_2419146 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2419146_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2419146_left_fuel : Nat := 1
def small_2419146_left_count : Nat := 1
def small_2419146_left_encoded : String := "00000004"
theorem small_2419146_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2419146_left_root small_2419146_left_fuel small_2419146_left_count small_2419146_left_encoded = true := by
  decide +kernel
theorem small_2419146_left_covered : CoveredBy scale carrier boxes small_2419146_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2419146_left_root small_2419146_left_fuel small_2419146_left_count small_2419146_left_encoded small_2419146_left_checked

theorem cover_2419146 : CoveredBy scale carrier boxes root_2419146 := by
  apply coveredBy_split_literal root_2419146 small_2419146_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2419152 coord4 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_2419146_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2419152
#print axioms cover_2419146

def root_2415738 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2415738 : CoveredBy scale carrier boxes root_2415738 := by
  apply coveredBy_split_literal root_2415738 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2415739 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2419146 coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2415739
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2419146
#print axioms cover_2415738

def root_2415732 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2415732_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2415732_left_fuel : Nat := 1
def small_2415732_left_count : Nat := 1
def small_2415732_left_encoded : String := "00000003"
theorem small_2415732_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2415732_left_root small_2415732_left_fuel small_2415732_left_count small_2415732_left_encoded = true := by
  decide +kernel
theorem small_2415732_left_covered : CoveredBy scale carrier boxes small_2415732_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2415732_left_root small_2415732_left_fuel small_2415732_left_count small_2415732_left_encoded small_2415732_left_checked

theorem cover_2415732 : CoveredBy scale carrier boxes root_2415732 := by
  apply coveredBy_split_literal root_2415732 small_2415732_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2415738 coord3 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_2415732_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2415738
#print axioms cover_2415732

def root_2409864 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2409864 : CoveredBy scale carrier boxes root_2409864 := by
  apply coveredBy_split_literal root_2409864 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2409865 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2415732 coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2409865
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2415732
#print axioms cover_2409864

def root_2409858 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2409858_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2409858_left_fuel : Nat := 1
def small_2409858_left_count : Nat := 1
def small_2409858_left_encoded : String := "00000002"
theorem small_2409858_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2409858_left_root small_2409858_left_fuel small_2409858_left_count small_2409858_left_encoded = true := by
  decide +kernel
theorem small_2409858_left_covered : CoveredBy scale carrier boxes small_2409858_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2409858_left_root small_2409858_left_fuel small_2409858_left_count small_2409858_left_encoded small_2409858_left_checked

theorem cover_2409858 : CoveredBy scale carrier boxes root_2409858 := by
  apply coveredBy_split_literal root_2409858 small_2409858_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2409864 coord2 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_2409858_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2409864
#print axioms cover_2409858

def root_2423400 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2423400 : CoveredBy scale carrier boxes root_2423400 := by
  apply coveredBy_split_literal root_2423400 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0922.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0923.root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0922.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0923.covered
#print axioms cover_2423400

def root_2423395 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2423395_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2423395_right_fuel : Nat := 1
def small_2423395_right_count : Nat := 1
def small_2423395_right_encoded : String := "00000003"
theorem small_2423395_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2423395_right_root small_2423395_right_fuel small_2423395_right_count small_2423395_right_encoded = true := by
  decide +kernel
theorem small_2423395_right_covered : CoveredBy scale carrier boxes small_2423395_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2423395_right_root small_2423395_right_fuel small_2423395_right_count small_2423395_right_encoded small_2423395_right_checked

theorem cover_2423395 : CoveredBy scale carrier boxes root_2423395 := by
  apply coveredBy_split_literal root_2423395 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2423400 small_2423395_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2423400
  · exact small_2423395_right_covered
#print axioms cover_2423395

def root_2423394 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2423394_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2423394_right_fuel : Nat := 29
def small_2423394_right_count : Nat := 301
def small_2423394_right_encoded : String := "0F34D106000000030CFD9BFF0F350D080C9A87080F8750FF078000F6128A7CF700000000028001020000000813D7ED0307800104128A4105000000020AD3577D10D13D06000000080000000300000008000000070000000100000008000000040F878CFF00000004078000F6128A7CF7000000000280010213D7B1030000000107800104128A4105000000020AD3577D10D13D060000000800000003000000080000000813D7ED0307800104128A4105000000020AD3577D10D13D060DE7CA080E5FD8FF08C000F611FC24F70000000003C001020000000813A54D030640010412FF7105000000020BE879BD1011AD06000000080000000300000008000000070000000100000008000000040E6014FF0000000408C000F611FC24F70000000003C0010213A51103000000010000000813A54D030640010412FF7105000000020BE879BD1011AD060DAED87F0E966108096000F611AABCF7000000000000000800000008000000040E96250800000004096000F611AABCF7000000000460010200000006000000050000000500000003101171060000000300000008000000050000000111FBE8F703C001020000000800000005000000000000000310D101060000000300000008128A7D050AD3577D10D13D060DE7CA08000000080000000500000003000000080000000200000001128A40F7028001020000000813D7ED0307800104128A4105000000020AD3577D10D13D060DE7CA080E5FD8FF064000F6000000080000000500000004000000050000000310D101060000000300000005000000050000000100000000000000040F34D10800000004078000F6128A7CF7000000000280010213D7B1030000000107800104128A4105000000020AD3577D10D13D060AD3577F10D13D0808C000F611FC24F700000000014001020000000813F615030640010412FF7105000000020BE879BD1011AD060BE879BF00000008000000080000000300000008000000080000000111FBE8F7014001020000000813F615030640010412FF7105000000020BE879BD1011AD060BE879BF000000080000000800000003000000080000000500000001000000000000000410D101080000000408C000F60000000611FBE8F7014001020000000900000005000000000000000310D10106000000030AD3577F0000000800000006128A7D050AD3577D10D13D060AD3577F10D13D08000000080000000410D10108000000040000000500000003000000080000000213D7ED0307800104128A4105000000020AD3577D10D13D060AD3577F10D13D0808C000F611FC24F70000000003C0010213A51103000000010640010412FF7105000000020BE879BD1011AD060BE879BF1011AD08096000F60000000611AA80F703200102000000080000000500000000000000040000000600000003000000060000000500000005000000050000000410D1010800000004000000050000000310D1010600000003000000050000000500000001128A40F70280010213D7B1030000000107800104128A4105000000020AD3577D10D13D060AD3577F10D13D08064000F612FFACF700000000014001020000000800000005000000050000000410D1010800000004000000050000000310D101060000000300000005000000050000000500000000"
theorem small_2423394_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2423394_right_root small_2423394_right_fuel small_2423394_right_count small_2423394_right_encoded = true := by
  decide +kernel
theorem small_2423394_right_covered : CoveredBy scale carrier boxes small_2423394_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2423394_right_root small_2423394_right_fuel small_2423394_right_count small_2423394_right_encoded small_2423394_right_checked

theorem cover_2423394 : CoveredBy scale carrier boxes root_2423394 := by
  apply coveredBy_split_literal root_2423394 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2423395 small_2423394_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2423395
  · exact small_2423394_right_covered
#print axioms cover_2423394

def root_2423389 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2423389_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2423389_right_fuel : Nat := 1
def small_2423389_right_count : Nat := 1
def small_2423389_right_encoded : String := "00000002"
theorem small_2423389_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2423389_right_root small_2423389_right_fuel small_2423389_right_count small_2423389_right_encoded = true := by
  decide +kernel
theorem small_2423389_right_covered : CoveredBy scale carrier boxes small_2423389_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2423389_right_root small_2423389_right_fuel small_2423389_right_count small_2423389_right_encoded small_2423389_right_checked

theorem cover_2423389 : CoveredBy scale carrier boxes root_2423389 := by
  apply coveredBy_split_literal root_2423389 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2423394 small_2423389_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2423394
  · exact small_2423389_right_covered
#print axioms cover_2423389

def root_2409857 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2409857 : CoveredBy scale carrier boxes root_2409857 := by
  apply coveredBy_split_literal root_2409857 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2409858 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2423389 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2409858
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2423389
#print axioms cover_2409857

def root_2409851 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2409851_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2409851_left_fuel : Nat := 1
def small_2409851_left_count : Nat := 1
def small_2409851_left_encoded : String := "00000001"
theorem small_2409851_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2409851_left_root small_2409851_left_fuel small_2409851_left_count small_2409851_left_encoded = true := by
  decide +kernel
theorem small_2409851_left_covered : CoveredBy scale carrier boxes small_2409851_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2409851_left_root small_2409851_left_fuel small_2409851_left_count small_2409851_left_encoded small_2409851_left_checked

theorem cover_2409851 : CoveredBy scale carrier boxes root_2409851 := by
  apply coveredBy_split_literal root_2409851 small_2409851_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2409857 coord1 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_2409851_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2409857
#print axioms cover_2409851

def root_2428532 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2428532 : CoveredBy scale carrier boxes root_2428532 := by
  apply coveredBy_split_literal root_2428532 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0924.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0925.root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0924.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0925.covered
#print axioms cover_2428532

def root_2428526 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2428526_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2428526_left_fuel : Nat := 1
def small_2428526_left_count : Nat := 1
def small_2428526_left_encoded : String := "00000002"
theorem small_2428526_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2428526_left_root small_2428526_left_fuel small_2428526_left_count small_2428526_left_encoded = true := by
  decide +kernel
theorem small_2428526_left_covered : CoveredBy scale carrier boxes small_2428526_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2428526_left_root small_2428526_left_fuel small_2428526_left_count small_2428526_left_encoded small_2428526_left_checked

theorem cover_2428526 : CoveredBy scale carrier boxes root_2428526 := by
  apply coveredBy_split_literal root_2428526 small_2428526_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2428532 coord2 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_2428526_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2428532
#print axioms cover_2428526

def root_2428525 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2428525 : CoveredBy scale carrier boxes root_2428525 := by
  apply coveredBy_split_literal root_2428525 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2428526 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0926.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2428526
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0926.covered
#print axioms cover_2428525

def root_2428520 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2428520_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2428520_right_fuel : Nat := 1
def small_2428520_right_count : Nat := 1
def small_2428520_right_encoded : String := "00000001"
theorem small_2428520_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2428520_right_root small_2428520_right_fuel small_2428520_right_count small_2428520_right_encoded = true := by
  decide +kernel
theorem small_2428520_right_covered : CoveredBy scale carrier boxes small_2428520_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2428520_right_root small_2428520_right_fuel small_2428520_right_count small_2428520_right_encoded small_2428520_right_checked

theorem cover_2428520 : CoveredBy scale carrier boxes root_2428520 := by
  apply coveredBy_split_literal root_2428520 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2428525 small_2428520_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2428525
  · exact small_2428520_right_covered
#print axioms cover_2428520

def root_2409850 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2409850 : CoveredBy scale carrier boxes root_2409850 := by
  apply coveredBy_split_literal root_2409850 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2409851 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2428520 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2409851
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2428520
#print axioms cover_2409850

def root_2409844 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2409844_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2409844_left_fuel : Nat := 1
def small_2409844_left_count : Nat := 1
def small_2409844_left_encoded : String := "00000000"
theorem small_2409844_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2409844_left_root small_2409844_left_fuel small_2409844_left_count small_2409844_left_encoded = true := by
  decide +kernel
theorem small_2409844_left_covered : CoveredBy scale carrier boxes small_2409844_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2409844_left_root small_2409844_left_fuel small_2409844_left_count small_2409844_left_encoded small_2409844_left_checked

theorem cover_2409844 : CoveredBy scale carrier boxes root_2409844 := by
  apply coveredBy_split_literal root_2409844 small_2409844_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2409850 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_2409844_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2409850
#print axioms cover_2409844

def root_2409843 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2409843 : CoveredBy scale carrier boxes root_2409843 := by
  apply coveredBy_split_literal root_2409843 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2409844 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0927.root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2409844
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0927.covered
#print axioms cover_2409843

def root_2409838 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2409838_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2409838_right_fuel : Nat := 1
def small_2409838_right_count : Nat := 1
def small_2409838_right_encoded : String := "00000004"
theorem small_2409838_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2409838_right_root small_2409838_right_fuel small_2409838_right_count small_2409838_right_encoded = true := by
  decide +kernel
theorem small_2409838_right_covered : CoveredBy scale carrier boxes small_2409838_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2409838_right_root small_2409838_right_fuel small_2409838_right_count small_2409838_right_encoded small_2409838_right_checked

theorem cover_2409838 : CoveredBy scale carrier boxes root_2409838 := by
  apply coveredBy_split_literal root_2409838 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.root_2409843 small_2409838_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058.cover_2409843
  · exact small_2409838_right_covered
#print axioms cover_2409838

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0058
