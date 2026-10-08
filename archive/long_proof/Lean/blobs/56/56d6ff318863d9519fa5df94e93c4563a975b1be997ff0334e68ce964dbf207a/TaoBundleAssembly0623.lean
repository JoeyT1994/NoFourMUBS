import TaoBundleAssembly0619
import TaoBundleAssembly0620
import TaoBundleAssembly0622
import TaoBundleChunkBatch0855
import TaoBundleChunkBatch0856
import TaoBundleChunkBatch0857
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623
def root_9127381 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9127381_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9127381_left_fuel : Nat := 22
def small_9127381_left_count : Nat := 267
def small_9127381_left_encoded : String := "0F875101000000000C9A86FE0F878D09078000F8128A7D0307800106128A40FD022A458513E1C504000000020B4D440010801101000000000DE7C9FE000000070000000A10804D010DE7C9FE0E60150908C000F811FC25030640010600000005000000070000000100000007000000040E5FD9090000000408C000F811FC25030640010612FF70FD01152345000000070000000A000000030000000A0000000111FBE90300000001000000070000000013E201040B4D440010801101000000000DE7C9FE0E6015090000000A000000040000000A10804D010DE7C9FE0E60150908C000F80000000600000006000000040E5FD9090000000408C000F811FC25030640010612FF70FD00000006000000030000000A0000000111FBE903000000010000000A000000000000000200000003128A7CFD00000003022A458513E1C504000000020B4D44000000000A10804D010DE7C9FE0E6015090000000A000000040000000A0000000013E201040B4D44000000000A10804D010DE7C9FE0E6015090000000A000000040000000A000000000000000200000001128A41030000000107800106128A40FD022A45850000000713E201040B4D44000000000A10804D010000000A000000000000000200000003128A7CFD000000030000000A000000040F87510900000004078000F8128A7D0307800106128A40FD022A458513E1C504000000020B4D440010801101000000000B4D43FE10804D090000000A000000040000000A10804D010B4D43FE10804D0908C000F811FC25030640010612FF70FD011523450000000713F895040000000A00000002000000030000000A0000000111FBE903000000010000000A00000004108011090000000408C000F811FC25030640010612FF70FD0115234513F85904000000020BF3E5800000000A100929010000000A0000000013F895040BF3E58000000009100929010000000A0000000000000002000000030000000A0000000111FBE903000000010000000A0000000013E201040B4D440010801101000000000B4D43FE10804D090000000A000000040000000A10804D010B4D43FE10804D0908C000F811FC25030640010612FF70FD033F67C50000000A0000000A000000030000000A0000000111FBE903000000010000000A00000004108011090000000408C000F811FC25030640010612FF70FD033F67C50000000A00000009000000030000000A0000000111FBE903000000010000000A000000000000000200000003128A7CFD00000003022A458513E1C504000000020B4D44000000000A10804D010000000A0000000013E201040B4D44000000000A10804D010B4D43FE10804D090000000A000000040000000A000000000000000200000001128A41030000000107800106128A40FD022A45850000000A13E201040B4D44000000000A10804D010000000A000000000000000200000003128A7CFD000000030000000A"
theorem small_9127381_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9127381_left_root small_9127381_left_fuel small_9127381_left_count small_9127381_left_encoded = true := by
  decide +kernel
theorem small_9127381_left_covered : CoveredBy scale carrier boxes small_9127381_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9127381_left_root small_9127381_left_fuel small_9127381_left_count small_9127381_left_encoded small_9127381_left_checked

theorem cover_9127381 : CoveredBy scale carrier boxes root_9127381 := by
  apply coveredBy_split_literal root_9127381 small_9127381_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3418.root coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9127381_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3418.covered
#print axioms cover_9127381

def root_9127375 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9127375_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9127375_left_fuel : Nat := 1
def small_9127375_left_count : Nat := 1
def small_9127375_left_encoded : String := "00000004"
theorem small_9127375_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9127375_left_root small_9127375_left_fuel small_9127375_left_count small_9127375_left_encoded = true := by
  decide +kernel
theorem small_9127375_left_covered : CoveredBy scale carrier boxes small_9127375_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9127375_left_root small_9127375_left_fuel small_9127375_left_count small_9127375_left_encoded small_9127375_left_checked

theorem cover_9127375 : CoveredBy scale carrier boxes root_9127375 := by
  apply coveredBy_split_literal root_9127375 small_9127375_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9127381 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9127375_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9127381
#print axioms cover_9127375

def root_9127243 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9127243_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9127243_left_fuel : Nat := 13
def small_9127243_left_count : Nat := 63
def small_9127243_left_encoded : String := "0F34D0FE0C9A87000F87510100000000078000F8128A7D0307800106128A40FD022A458513E1C504000000020AD357890000000510D13CFE000000040B4D440000000005000000090000000600000003128A7CFD00000003022A458513E1C504000000020AD357890000000910D13CFE000000040000000A13E201040AD357890000000A10D13CFE000000040000000A0000000200000001128A41030000000107800106128A40FD022A4585000000070000000600000003128A7CFD000000030000000A0F878D01078000F8128A7D030780010600000006128A7CFD00000003022A4585000000090000000600000001000000090000000000000004"
theorem small_9127243_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9127243_left_root small_9127243_left_fuel small_9127243_left_count small_9127243_left_encoded = true := by
  decide +kernel
theorem small_9127243_left_covered : CoveredBy scale carrier boxes small_9127243_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9127243_left_root small_9127243_left_fuel small_9127243_left_count small_9127243_left_encoded small_9127243_left_checked

theorem cover_9127243 : CoveredBy scale carrier boxes root_9127243 := by
  apply coveredBy_split_literal root_9127243 small_9127243_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9127375 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9127243_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9127375
#print axioms cover_9127243

def root_9127237 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9127237_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9127237_left_fuel : Nat := 1
def small_9127237_left_count : Nat := 1
def small_9127237_left_encoded : String := "00000002"
theorem small_9127237_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9127237_left_root small_9127237_left_fuel small_9127237_left_count small_9127237_left_encoded = true := by
  decide +kernel
theorem small_9127237_left_covered : CoveredBy scale carrier boxes small_9127237_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9127237_left_root small_9127237_left_fuel small_9127237_left_count small_9127237_left_encoded small_9127237_left_checked

theorem cover_9127237 : CoveredBy scale carrier boxes root_9127237 := by
  apply coveredBy_split_literal root_9127237 small_9127237_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9127243 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9127237_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9127243
#print axioms cover_9127237

def root_9127236 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9127236_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9127236_right_fuel : Nat := 21
def small_9127236_right_count : Nat := 253
def small_9127236_right_encoded : String := "1386AD040CFD9C090F34D0FE0C9A87000F87510100000000078000F800000006128A4103000000010780010600000006128A7CFD00000003067ECE850000000A0000000600000006000000040F350CFE000000040C9A87000F875101000000000C9A86FE0F878D09078000F8128A7D0307800106128A40FD067ECE8512EA5904000000020B4D440010801101000000000DE7C9FE0E60150900000006000000040000000A000000060000000600000003128A7CFD00000003067ECE8512EA5904000000020B4D44000000000A10804D010DE7C9FE0E6015090000000A000000040000000A0000000012EA95040B4D44000000000A000000060000000200000001128A41030000000107800106128A40FD067ECE8512EA5904000000020B4D44000000000A000000060000000600000003128A7CFD00000003067ECE850000000A0000000A000000040F87510900000004078000F8128A7D0307800106128A40FD067ECE8512EA5904000000020B4D440010801101000000000B4D43FE10804D090000000A000000040000000A10804D010B4D43FE10804D0908C000F811FC250306400106000000060000000A0000000111FBE903000000010000000A00000004108011090000000408C000F800000009000000050000000012EA95040B4D44000000000810804D0100000008000000000000000200000003128A7CFD00000003067ECE8512EA5904000000020B4D44000000000A000000050000000500000001128A41030000000107800106128A40FD067ECE8512EA5904000000020B4D440000000008000000050000000500000003000000050F878D010C9A86FE0F878D09078000F8128A7D030780010600000006128A7CFD00000003067ECE8512EA5904000000020DE7CA000E5FD901000000000DE7C9FE0E60150900000006000000040E5FD9090000000408C000F811FC250308C00106000000060000000A000000010000000A000000060000000600000001128A4103000000010780010600000006128A7CFD00000003067ECE8512EA5904000000020DE7CA000E5FD901000000000000000A0000000600000006000000040F87510900000004078000F8128A7D0307800106128A40FD067ECE8512EA5904000000020DE7CA000E5FD901000000000B4D43FE10804D090000000600000004108011090000000408C000F811FC25030640010600000006000000050000000100000005000000060000000600000003128A7CFD00000003067ECE8512EA5904000000020DE7CA000E5FD9010000000000000005000000050000000500000001128A41030000000107800106128A40FD067ECE8512EA5904000000020DE7CA000E5FD9010000000000000005000000050000000500000003000000050000000000000002"
theorem small_9127236_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9127236_right_root small_9127236_right_fuel small_9127236_right_count small_9127236_right_encoded = true := by
  decide +kernel
theorem small_9127236_right_covered : CoveredBy scale carrier boxes small_9127236_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9127236_right_root small_9127236_right_fuel small_9127236_right_count small_9127236_right_encoded small_9127236_right_checked

theorem cover_9127236 : CoveredBy scale carrier boxes root_9127236 := by
  apply coveredBy_split_literal root_9127236 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9127237 small_9127236_right_root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9127237
  · exact small_9127236_right_covered
#print axioms cover_9127236

def root_9127231 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9127231_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9127231_right_fuel : Nat := 1
def small_9127231_right_count : Nat := 1
def small_9127231_right_encoded : String := "00000000"
theorem small_9127231_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9127231_right_root small_9127231_right_fuel small_9127231_right_count small_9127231_right_encoded = true := by
  decide +kernel
theorem small_9127231_right_covered : CoveredBy scale carrier boxes small_9127231_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9127231_right_root small_9127231_right_fuel small_9127231_right_count small_9127231_right_encoded small_9127231_right_checked

theorem cover_9127231 : CoveredBy scale carrier boxes root_9127231 := by
  apply coveredBy_split_literal root_9127231 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9127236 small_9127231_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9127236
  · exact small_9127231_right_covered
#print axioms cover_9127231

def root_9126659 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9126659_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9126659_left_fuel : Nat := 32
def small_9126659_left_count : Nat := 267
def small_9126659_left_encoded : String := "0F34D1000000000004548A0513867104000000020CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FE0F878D09078000F8128A7D0307800106128A40FD0000000600000003128A7CFD000000030AD3578110D10100000000000000000910D13D00022A45850000000913E201040DE7C9FE000000060E5FD909000000040000000600000002000000000000000100000009000000040F87510900000004078000F8128A7D0307800106128A40FD0AD3578110D1010000000000022A4585000000090000000610D13D00022A458513E1C504000000020B4D43FE10804D0908C000F811FC250300000009000000010000000900000004108011090000000408C000F811FC25030640010612FF70FD0BE879C11011710000000000000000061011AD000115234513F85904000000020AA6A27E0000000910ED710900000004096000F811AABD0305A0010600000006133170FD0000000300000009000000010000000900000006000000000000000312FFACFD000000030BE879C11011710000000000000000091011AD000115234513F85904000000020AA6A27E0000000910ED7109000000040000000513F895040AA6A27E10EDAD09096000F80000000600000005000000040000000500000002000000000000000111FBE903000000010640010612FF70FD0BE879C100000009000000090000000312FFACFD000000030BE879C1000000090000000513E201040B4D43FE00000006108011090000000408C000F80000000611FBE9030000000100000006000000020000000000000003128A7CFD000000030AD3578110D1010000000000022A45850000000913E201040B4D43FE10804D090000000600000004000000050000000210D13D00022A458513E1C504000000020B4D43FE10804D0908C000F811FC250300000009000000010000000900000004108011090000000408C000F811FC250308C0010611FBE8FD0BE879C1101171000000000000000005000000050000000300000005000000010000000513E201040B4D43FE10804D0908C000F811FC250308C0010611FBE8FD00000006000000030000000500000001000000050000000400000005000000020000000000000001128A41030000000107800106128A40FD0AD3578110D10100000000000000000910D13D00022A45850000000913E201040B4D43FE0000000600000005000000020000000000000003128A7CFD000000030AD3578110D101000000000000000005000000051386AD040CFD9C09000000060F350CFE000000040C9A86FE0F878D0900000006000000040F87510900000004078000F8128A7D030780010600000006128A7CFD000000030AD3578110D10100000000000000000610D13D00067ECE8512EA5904000000020B4D43FE10804D09000000060000000400000005000000050000000000000001128A41030000000107800106000000060000000500000002"
theorem small_9126659_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9126659_left_root small_9126659_left_fuel small_9126659_left_count small_9126659_left_encoded = true := by
  decide +kernel
theorem small_9126659_left_covered : CoveredBy scale carrier boxes small_9126659_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9126659_left_root small_9126659_left_fuel small_9126659_left_count small_9126659_left_encoded small_9126659_left_checked

theorem cover_9126659 : CoveredBy scale carrier boxes root_9126659 := by
  apply coveredBy_split_literal root_9126659 small_9126659_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9127231 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9126659_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9127231
#print axioms cover_9126659

def root_9126653 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9126653_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9126653_left_fuel : Nat := 1
def small_9126653_left_count : Nat := 1
def small_9126653_left_encoded : String := "00000003"
theorem small_9126653_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9126653_left_root small_9126653_left_fuel small_9126653_left_count small_9126653_left_encoded = true := by
  decide +kernel
theorem small_9126653_left_covered : CoveredBy scale carrier boxes small_9126653_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9126653_left_root small_9126653_left_fuel small_9126653_left_count small_9126653_left_encoded small_9126653_left_checked

theorem cover_9126653 : CoveredBy scale carrier boxes root_9126653 := by
  apply coveredBy_split_literal root_9126653 small_9126653_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9126659 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_9126653_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9126659
#print axioms cover_9126653

def root_9124199 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9124199 : CoveredBy scale carrier boxes root_9124199 := by
  apply coveredBy_split_literal root_9124199 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3417.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9126653 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3417.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9126653
#print axioms cover_9124199

def root_9124194 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124194_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124194_right_fuel : Nat := 1
def small_9124194_right_count : Nat := 1
def small_9124194_right_encoded : String := "00000001"
theorem small_9124194_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9124194_right_root small_9124194_right_fuel small_9124194_right_count small_9124194_right_encoded = true := by
  decide +kernel
theorem small_9124194_right_covered : CoveredBy scale carrier boxes small_9124194_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9124194_right_root small_9124194_right_fuel small_9124194_right_count small_9124194_right_encoded small_9124194_right_checked

theorem cover_9124194 : CoveredBy scale carrier boxes root_9124194 := by
  apply coveredBy_split_literal root_9124194 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9124199 small_9124194_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9124199
  · exact small_9124194_right_covered
#print axioms cover_9124194

def root_9124193 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124193_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124193_right_fuel : Nat := 21
def small_9124193_right_count : Nat := 251
def small_9124193_right_encoded : String := "135D45030000000105000106135D44FD0CFD9C010F34D1000000000004548A0513867104000000020CFD9C09000000060F350CFE0000000400000009000000060F350D0004548A0513867104000000020CFD9C090F34D0FE0C9A87000F87510100000000028000F8000000060000000700000006000000040F350CFE000000040C9A87000F875101000000000C9A86FE0F878D09028000F813D7ED030280010600000007000000070000000100000007000000040F87510900000004028000F813D7ED03028001060000000813D7ECFD00000003022A4585000000070000000800000001000000070F878D010C9A86FE0F878D0900000009000000040F87510900000004028000F813D7ED03028001060000000813D7ECFD00000003022A458513E1C504000000020DE7CA000000000800000009000000080000000100000008000000001386AD040CFD9C090F34D0FE00000006000000040F350CFE000000040C9A8700000000080F878D010000000800000000000000020000000000000003135D80FD000000030CFD9C010F34D1000000000004548A0513867104000000020CFD9C09000000090F350CFE000000040C9A86FE000000090F87510900000004028000F813D7ED0307800106000000090000000500000001000000051386AD040CFD9C09000000060F350CFE000000040C9A86FE0F878D0900000006000000040F8751090000000400000005000000020F350D0004548A0513867104000000020CFD9C090F34D0FE00000009000000040F350CFE000000040C9A87000F875101000000000C9A86FE0F878D09028000F813D7ED03078001060000000A0000000A0000000100000007000000040F87510900000004028000F813D7ED03078001060000000A0000000500000001000000050F878D010C9A86FE0F878D0900000009000000040F87510900000004028000F813D7ED0307800106128A40FD022A458513E1C50400000002000000050000000500000003000000050000000100000005000000001386AD040CFD9C090F34D0FE0C9A87000F87510100000000028000F813D7ED030780010600000006128A7CFD000000030000000A000000010000000900000006000000040F350CFE000000040C9A87000F875101000000000C9A86FE0F878D09028000F813D7ED0307800106128A40FD067ECE850000000A00000006000000030000000A0000000113D7B10300000001078001060000000800000005000000040F87510900000004000000050F878D010C9A86FE0F878D09028000F813D7ED030780010600000006128A7CFD00000003000000050000000113D7B10300000001078001060000000600000005000000040F8751090000000400000005000000000000000200000000"
theorem small_9124193_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9124193_right_root small_9124193_right_fuel small_9124193_right_count small_9124193_right_encoded = true := by
  decide +kernel
theorem small_9124193_right_covered : CoveredBy scale carrier boxes small_9124193_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9124193_right_root small_9124193_right_fuel small_9124193_right_count small_9124193_right_encoded small_9124193_right_checked

theorem cover_9124193 : CoveredBy scale carrier boxes root_9124193 := by
  apply coveredBy_split_literal root_9124193 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9124194 small_9124193_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9124194
  · exact small_9124193_right_covered
#print axioms cover_9124193

def root_9124187 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124187_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124187_left_fuel : Nat := 1
def small_9124187_left_count : Nat := 1
def small_9124187_left_encoded : String := "00000004"
theorem small_9124187_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9124187_left_root small_9124187_left_fuel small_9124187_left_count small_9124187_left_encoded = true := by
  decide +kernel
theorem small_9124187_left_covered : CoveredBy scale carrier boxes small_9124187_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9124187_left_root small_9124187_left_fuel small_9124187_left_count small_9124187_left_encoded small_9124187_left_checked

theorem cover_9124187 : CoveredBy scale carrier boxes root_9124187 := by
  apply coveredBy_split_literal root_9124187 small_9124187_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9124193 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9124187_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9124193
#print axioms cover_9124187

def root_9124169 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124169_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124169_left_fuel : Nat := 5
def small_9124169_left_count : Nat := 9
def small_9124169_left_encoded : String := "120700FE050000F800000006135D45030000000105000106000000060000000900000004"
theorem small_9124169_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9124169_left_root small_9124169_left_fuel small_9124169_left_count small_9124169_left_encoded = true := by
  decide +kernel
theorem small_9124169_left_covered : CoveredBy scale carrier boxes small_9124169_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9124169_left_root small_9124169_left_fuel small_9124169_left_count small_9124169_left_encoded small_9124169_left_checked

theorem cover_9124169 : CoveredBy scale carrier boxes root_9124169 := by
  apply coveredBy_split_literal root_9124169 small_9124169_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9124187 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9124169_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9124187
#print axioms cover_9124169

def root_9124163 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124163_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124163_left_fuel : Nat := 1
def small_9124163_left_count : Nat := 1
def small_9124163_left_encoded : String := "00000002"
theorem small_9124163_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9124163_left_root small_9124163_left_fuel small_9124163_left_count small_9124163_left_encoded = true := by
  decide +kernel
theorem small_9124163_left_covered : CoveredBy scale carrier boxes small_9124163_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9124163_left_root small_9124163_left_fuel small_9124163_left_count small_9124163_left_encoded small_9124163_left_checked

theorem cover_9124163 : CoveredBy scale carrier boxes root_9124163 := by
  apply coveredBy_split_literal root_9124163 small_9124163_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9124169 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9124163_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9124169
#print axioms cover_9124163

def root_9124162 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124162_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124162_right_fuel : Nat := 23
def small_9124162_right_count : Nat := 91
def small_9124162_right_encoded : String := "12073D0408A913090000000612073CFE00000004050000F8135D810305000106135D44FD0000000600000003135D80FD000000030CFD9C010F34D10000000000000000060F350D000CFD9C050F34D104000000020CFD9C09000000060F350CFE000000040C9A87000F875101000000000C9A86FE0F878D09078000F800000006128A41030000000100000006000000040F87510900000004078000F8128A7D030780010600000008128A7CFD000000030AD357850000000A0000000500000001000000080F878D010C9A86FE000000060F87510900000004078000F8000000060000000800000000000000060000000000000001135D45030000000105000106135D44FD0000000600000003135D80FD000000030CFD9C010F34D10000000000000000060F350D000CFD9C050F34D104000000020CFD9C09000000060F350CFE000000040C9A8700000000080F878D010C9A86FE000000060000000500000000000000060000000000000002"
theorem small_9124162_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9124162_right_root small_9124162_right_fuel small_9124162_right_count small_9124162_right_encoded = true := by
  decide +kernel
theorem small_9124162_right_covered : CoveredBy scale carrier boxes small_9124162_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9124162_right_root small_9124162_right_fuel small_9124162_right_count small_9124162_right_encoded small_9124162_right_checked

theorem cover_9124162 : CoveredBy scale carrier boxes root_9124162 := by
  apply coveredBy_split_literal root_9124162 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9124163 small_9124162_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9124163
  · exact small_9124162_right_covered
#print axioms cover_9124162

def root_9124157 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124157_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124157_right_fuel : Nat := 1
def small_9124157_right_count : Nat := 1
def small_9124157_right_encoded : String := "00000000"
theorem small_9124157_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9124157_right_root small_9124157_right_fuel small_9124157_right_count small_9124157_right_encoded = true := by
  decide +kernel
theorem small_9124157_right_covered : CoveredBy scale carrier boxes small_9124157_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9124157_right_root small_9124157_right_fuel small_9124157_right_count small_9124157_right_encoded small_9124157_right_checked

theorem cover_9124157 : CoveredBy scale carrier boxes root_9124157 := by
  apply coveredBy_split_literal root_9124157 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9124162 small_9124157_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9124162
  · exact small_9124157_right_covered
#print axioms cover_9124157

def root_9123965 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9123965_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9123965_left_fuel : Nat := 25
def small_9123965_left_count : Nat := 91
def small_9123965_left_encoded : String := "120701000000000008A91305120701040000000208A913090000000612073CFE00000004050000F8135D810305000106135D44FD0000000600000003135D80FD0000000304548A01138671000000000004548A0513867104000000020CFD9C09000000060F350CFE000000040C9A86FE000000060F87510900000004078000F80000000600000009000000061386AD0004548A0513867104000000020CFD9C09000000060F350CFE000000040C9A86FE0F878D0900000009000000040F87510900000004078000F8128A7D0307800106128A40FD0000000600000003128A7CFD00000003067ECE8112EA5900000000000000000912EA9500022A45850000000900000006000000000000000100000009000000060000000000000001135D45030000000105000106135D44FD0000000600000003135D80FD0000000304548A01138671000000000004548A0500000009000000061386AD0004548A0500000009000000060000000000000006"
theorem small_9123965_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9123965_left_root small_9123965_left_fuel small_9123965_left_count small_9123965_left_encoded = true := by
  decide +kernel
theorem small_9123965_left_covered : CoveredBy scale carrier boxes small_9123965_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9123965_left_root small_9123965_left_fuel small_9123965_left_count small_9123965_left_encoded small_9123965_left_checked

theorem cover_9123965 : CoveredBy scale carrier boxes root_9123965 := by
  apply coveredBy_split_literal root_9123965 small_9123965_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9124157 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9123965_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9124157
#print axioms cover_9123965

def root_9123960 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9123960_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9123960_right_fuel : Nat := 1
def small_9123960_right_count : Nat := 1
def small_9123960_right_encoded : String := "00000004"
theorem small_9123960_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9123960_right_root small_9123960_right_fuel small_9123960_right_count small_9123960_right_encoded = true := by
  decide +kernel
theorem small_9123960_right_covered : CoveredBy scale carrier boxes small_9123960_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9123960_right_root small_9123960_right_fuel small_9123960_right_count small_9123960_right_encoded small_9123960_right_checked

theorem cover_9123960 : CoveredBy scale carrier boxes root_9123960 := by
  apply coveredBy_split_literal root_9123960 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9123965 small_9123960_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9123965
  · exact small_9123960_right_covered
#print axioms cover_9123960

def root_9123959 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9123959 : CoveredBy scale carrier boxes root_9123959 := by
  apply coveredBy_split_literal root_9123959 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9123960 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3419.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9123960
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3419.covered
#print axioms cover_9123959

def root_9123954 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9123954_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9123954_right_fuel : Nat := 1
def small_9123954_right_count : Nat := 1
def small_9123954_right_encoded : String := "00000003"
theorem small_9123954_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9123954_right_root small_9123954_right_fuel small_9123954_right_count small_9123954_right_encoded = true := by
  decide +kernel
theorem small_9123954_right_covered : CoveredBy scale carrier boxes small_9123954_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9123954_right_root small_9123954_right_fuel small_9123954_right_count small_9123954_right_encoded small_9123954_right_checked

theorem cover_9123954 : CoveredBy scale carrier boxes root_9123954 := by
  apply coveredBy_split_literal root_9123954 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9123959 small_9123954_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9123959
  · exact small_9123954_right_covered
#print axioms cover_9123954

def root_9123953 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9123953 : CoveredBy scale carrier boxes root_9123953 := by
  apply coveredBy_split_literal root_9123953 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9123954 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3420.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9123954
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3420.covered
#print axioms cover_9123953

def root_9123948 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9123948_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9123948_right_fuel : Nat := 1
def small_9123948_right_count : Nat := 1
def small_9123948_right_encoded : String := "00000002"
theorem small_9123948_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9123948_right_root small_9123948_right_fuel small_9123948_right_count small_9123948_right_encoded = true := by
  decide +kernel
theorem small_9123948_right_covered : CoveredBy scale carrier boxes small_9123948_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9123948_right_root small_9123948_right_fuel small_9123948_right_count small_9123948_right_encoded small_9123948_right_checked

theorem cover_9123948 : CoveredBy scale carrier boxes root_9123948 := by
  apply coveredBy_split_literal root_9123948 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9123953 small_9123948_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9123953
  · exact small_9123948_right_covered
#print axioms cover_9123948

def root_9123676 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9123676_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9123676_left_fuel : Nat := 20
def small_9123676_left_count : Nat := 127
def small_9123676_left_encoded : String := "1151E905000000020A0001061151E8FD0A0000FE000000061151E9090000000408A9130112070100000000000000000612073D00050000F800000006135D450300000001000000060000000000000003115224FD000000030A0000FE1152250908A91301120701000000000008A912FD00000006120701060000000308A91309000000060000000712073D0008A912FD12073D0608A913090000000612073CFE00000004050000F8135D810305000104135D45050000000200000006135D81050CFD9C010F34D10000000000000000060F350D000CFD9BFD000000060F34D106000000030000000A000000000000000200000001135D45030000000105000104135D45050000000200000006135D81050CFD9C010F34D10000000000000000060F350D000CFD9BFD0000000600000005000000000000000200000003120701060000000308A91309120700FE050000F800000006135D4503000000010500010400000006135D81050CFD9C010F34D100000000000000000500000005000000020000000412073CFE00000004050000F8135D8103050001040000000700000005000000010000000500000000000000041151E9090000000408A9130112070100000000000000000712073D0008A912FD12073D06050000F8135D8103050001040000000A000000050000000100000005000000030000000500000000"
theorem small_9123676_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9123676_left_root small_9123676_left_fuel small_9123676_left_count small_9123676_left_encoded = true := by
  decide +kernel
theorem small_9123676_left_covered : CoveredBy scale carrier boxes small_9123676_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9123676_left_root small_9123676_left_fuel small_9123676_left_count small_9123676_left_encoded small_9123676_left_checked

theorem cover_9123676 : CoveredBy scale carrier boxes root_9123676 := by
  apply coveredBy_split_literal root_9123676 small_9123676_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9123948 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9123676_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9123948
#print axioms cover_9123676

def root_9123670 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9123670_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9123670_left_fuel : Nat := 1
def small_9123670_left_count : Nat := 1
def small_9123670_left_encoded : String := "00000001"
theorem small_9123670_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9123670_left_root small_9123670_left_fuel small_9123670_left_count small_9123670_left_encoded = true := by
  decide +kernel
theorem small_9123670_left_covered : CoveredBy scale carrier boxes small_9123670_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9123670_left_root small_9123670_left_fuel small_9123670_left_count small_9123670_left_encoded small_9123670_left_checked

theorem cover_9123670 : CoveredBy scale carrier boxes root_9123670 := by
  apply coveredBy_split_literal root_9123670 small_9123670_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9123676 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9123670_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9123676
#print axioms cover_9123670

def root_9094838 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9094838 : CoveredBy scale carrier boxes root_9094838 := by
  apply coveredBy_split_literal root_9094838 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.root_9094839 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9123670 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.cover_9094839
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9123670
#print axioms cover_9094838

def root_9094833 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9094833_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9094833_right_fuel : Nat := 1
def small_9094833_right_count : Nat := 1
def small_9094833_right_encoded : String := "00000000"
theorem small_9094833_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9094833_right_root small_9094833_right_fuel small_9094833_right_count small_9094833_right_encoded = true := by
  decide +kernel
theorem small_9094833_right_covered : CoveredBy scale carrier boxes small_9094833_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9094833_right_root small_9094833_right_fuel small_9094833_right_count small_9094833_right_encoded small_9094833_right_checked

theorem cover_9094833 : CoveredBy scale carrier boxes root_9094833 := by
  apply coveredBy_split_literal root_9094833 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9094838 small_9094833_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9094838
  · exact small_9094833_right_covered
#print axioms cover_9094833

def root_9081921 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9081921 : CoveredBy scale carrier boxes root_9081921 := by
  apply coveredBy_split_literal root_9081921 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.root_9081922 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9094833 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.cover_9081922
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9094833
#print axioms cover_9081921

def root_9076507 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9076507 : CoveredBy scale carrier boxes root_9076507 := by
  apply coveredBy_split_literal root_9076507 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_9076508 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9081921 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_9076508
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9081921
#print axioms cover_9076507

def root_9138022 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9138022 : CoveredBy scale carrier boxes root_9138022 := by
  apply coveredBy_split_literal root_9138022 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3421.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3422.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3421.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3422.covered
#print axioms cover_9138022

def root_9076506 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9076506 : CoveredBy scale carrier boxes root_9076506 := by
  apply coveredBy_split_literal root_9076506 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9076507 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.root_9138022 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9076507
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623.cover_9138022
#print axioms cover_9076506

def root_9141380 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9141380 : CoveredBy scale carrier boxes root_9141380 := by
  apply coveredBy_split_literal root_9141380 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3423.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3424.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3423.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3424.covered
#print axioms cover_9141380

def root_9146410 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9146410 : CoveredBy scale carrier boxes root_9146410 := by
  apply coveredBy_split_literal root_9146410 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3425.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3426.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3425.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3426.covered
#print axioms cover_9146410

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0623
