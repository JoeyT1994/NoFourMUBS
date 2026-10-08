import TaoBundleChunkBatch0342
import TaoBundleChunkBatch0343
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256
def root_3623221 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3623221_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3623221_left_fuel : Nat := 23
def small_3623221_left_count : Nat := 313
def small_3623221_left_encoded : String := "0F878D010C9A87080F87510900000004078000F8128A7D0307800104128A40FB022A458713E1C506000000030DE7C9F60E6015010B4D44080000000610804D0908C000F811FC2503064001040000000500000006000000010000000600000004000000000E5FD901000000000B4D440810801109000000040000000610804D0908C000F811FC25030640010412FF70FB01152347000000060000000600000002000000060000000111FBE90300000001000000060000000413E201060DE7C9F60E6015010B4D440810801109000000040000000610804D0908C000F80000000A0000000A00000004000000000E5FD901000000000B4D440810801109000000040000000610804D0908C000F811FC25030640010412FF70FB0000000A00000002000000060000000111FBE9030000000100000006000000040000000300000002128A7CFB00000002022A458713E1C506000000030DE7C9F60E60150100000006000000000000000613E201060DE7C9F60E6015010000000600000000000000060000000300000001128A41030000000107800104128A40FB022A45870000000713E201060DE7C9F60E6015010000000600000000000000060000000300000002128A7CFB00000002000000060F878D09078000F8128A7D0307800104128A40FB022A458713E1C506000000030DE7C9F60E6015010DE7CA080E5FD909000000040000000800000008000000000E5FD901000000000DE7CA080E5FD9090000000408C000F811FC25030640010412FF70FB0115234713F85906000000030D412876000000080EFA1101000000000D41288800000007000000080000000A0000000212FFACFB000000020115234713F85906000000030D412876000000080000000613F895060D4128760EFA4D01000000060000000000000006000000030000000111FBE903000000010640010412FF70FB01152347000000070000000A00000002000000060E60150908C000F811FC25030000000800000001000000080000000413E201060DE7C9F60000000A0E5FD901000000000DE7CA080E5FD9090000000408C000F80000000A11FBE903000000010000000A0000000A0000000300000002128A7CFB00000002022A458713E1C506000000030DE7C9F60E6015010DE7CA080E5FD909000000040000000800000008000000000E5FD901000000000DE7CA080E5FD9090000000408C000F811FC250308C00104000000060000000600000001000000060E601509000000080000000413E201060DE7C9F60E6015010DE7CA080E5FD9090000000408C000F811FC250308C00104000000060000000600000001000000060000000A000000000E5FD901000000000DE7CA080E5FD9090000000408C000F811FC250308C00104000000060000000600000001000000060E60150908C000F811FC250308C0010411FBE8FB0000000A0000000211FC24FB00000002033F67C700000006000000060000000111FBE9030000000108C001040000000800000005000000040000000300000001128A41030000000107800104128A40FB022A45870000000813E201060DE7C9F60000000A0E5FD901000000000DE7CA080E5FD90900000004064000F80000000600000006000000080000000300000002128A7CFB00000002022A45870000000813E201060DE7C9F60E60150100000008000000000E5FD901000000000DE7CA080000000600000005000000030000000400000000"
theorem small_3623221_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3623221_left_root small_3623221_left_fuel small_3623221_left_count small_3623221_left_encoded = true := by
  decide +kernel
theorem small_3623221_left_covered : CoveredBy scale carrier boxes small_3623221_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3623221_left_root small_3623221_left_fuel small_3623221_left_count small_3623221_left_encoded small_3623221_left_checked

theorem cover_3623221 : CoveredBy scale carrier boxes root_3623221 := by
  apply coveredBy_split_literal root_3623221 small_3623221_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1370.root coord0 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_3623221_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1370.covered
#print axioms cover_3623221

def root_3623216 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3623216_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3623216_right_fuel : Nat := 1
def small_3623216_right_count : Nat := 1
def small_3623216_right_encoded : String := "00000004"
theorem small_3623216_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3623216_right_root small_3623216_right_fuel small_3623216_right_count small_3623216_right_encoded = true := by
  decide +kernel
theorem small_3623216_right_covered : CoveredBy scale carrier boxes small_3623216_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3623216_right_root small_3623216_right_fuel small_3623216_right_count small_3623216_right_encoded small_3623216_right_checked

theorem cover_3623216 : CoveredBy scale carrier boxes root_3623216 := by
  apply coveredBy_split_literal root_3623216 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.root_3623221 small_3623216_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.cover_3623221
  · exact small_3623216_right_covered
#print axioms cover_3623216

def root_3622728 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3622728_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3622728_left_fuel : Nat := 28
def small_3622728_left_count : Nat := 231
def small_3622728_left_encoded : String := "0F34D108000000040C9A86F60F878D01078000F8128A7D0307800104128A40FB0000000A00000002128A7CFB00000002022A45870000000813E201060AD357890000000A10D13D080DE7C9F6000000080E5FD901000000000000000A00000004000000030000000100000008000000000F87510100000000078000F8128A7D0307800104128A40FB022A458713E1C506000000030AD3578910D10108000000040000000810D13D080B4D43F610804D0108C000F811FC250300000008000000010000000800000000108011010000000008C000F811FC25030640010412FF70FB0115234713F85906000000030BE879C9000000081011AD080AA6A2760000000810ED710100000000096000F811AABD0305A0010400000008133170FB00000002000000080000000100000008000000040000000A0000000212FFACFB000000020115234713F85906000000030BE879C9000000081011AD080AA6A2760000000810ED710100000000000000050000000413F895060BE879C91011710800000004000000081011AD080AA6A27610EDAD01096000F80000000A00000005000000000000000500000004000000030000000111FBE903000000010640010412FF70FB01152347000000080000000A0000000212FFACFB000000020115234700000008000000050000000413E201060AD3578910D10108000000040000000A10D13D080B4D43F60000000A108011010000000008C000F80000000A11FBE903000000010000000A000000040000000300000002128A7CFB00000002022A458713E1C506000000030AD3578910D10108000000040000000810D13D080B4D43F610804D0108C000F811FC250300000008000000010000000800000000108011010000000008C000F811FC250308C0010411FBE8FB0115234713F85906000000030BE879C9000000080000000500000005000000020000000500000001000000050000000413E201060AD3578910D10108000000040B4D43F610804D0100000008000000000000000510D13D080B4D43F610804D0108C000F811FC250308C0010411FBE8FB0000000A000000020000000500000001000000050000000000000005000000040000000300000001128A41030000000107800104128A40FB022A458713E1C506000000030AD35789000000080000000813E201060AD357890000000A10D13D080B4D43F60000000A00000005000000040000000300000002128A7CFB00000002022A458713E1C506000000030AD35789000000080000000500000005"
theorem small_3622728_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3622728_left_root small_3622728_left_fuel small_3622728_left_count small_3622728_left_encoded = true := by
  decide +kernel
theorem small_3622728_left_covered : CoveredBy scale carrier boxes small_3622728_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3622728_left_root small_3622728_left_fuel small_3622728_left_count small_3622728_left_encoded small_3622728_left_checked

theorem cover_3622728 : CoveredBy scale carrier boxes root_3622728 := by
  apply coveredBy_split_literal root_3622728 small_3622728_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.root_3623216 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3622728_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.cover_3623216
#print axioms cover_3622728

def root_3622722 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3622722_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3622722_left_fuel : Nat := 1
def small_3622722_left_count : Nat := 1
def small_3622722_left_encoded : String := "00000003"
theorem small_3622722_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3622722_left_root small_3622722_left_fuel small_3622722_left_count small_3622722_left_encoded = true := by
  decide +kernel
theorem small_3622722_left_covered : CoveredBy scale carrier boxes small_3622722_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3622722_left_root small_3622722_left_fuel small_3622722_left_count small_3622722_left_encoded small_3622722_left_checked

theorem cover_3622722 : CoveredBy scale carrier boxes root_3622722 := by
  apply coveredBy_split_literal root_3622722 small_3622722_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.root_3622728 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_3622722_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.cover_3622728
#print axioms cover_3622722

def root_3622721 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3622721_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3622721_right_fuel : Nat := 21
def small_3622721_right_count : Nat := 285
def small_3622721_right_encoded : String := "1386AD060CFD9C090F34D108000000040C9A86F60F878D010000000A000000000F87510100000000078000F8128A7D03078001040000000A128A7CFB00000002067ECE8712EA5906000000030AD3578910D10108000000040000000A10D13D080B4D43F610804D010000000A0000000000000005000000040000000A00000001128A410300000001078001040000000A000000050F350D080C9A86F60F878D010C9A87080F87510900000004078000F8128A7D0307800104128A40FB067ECE8712EA5906000000030DE7C9F60E6015010000000A000000000E5FD901000000000B4D44081080110900000004000000060000000A0000000A00000002128A7CFB00000002067ECE8712EA5906000000030DE7C9F60E60150100000006000000000000000612EA95060DE7C9F60E6015010000000600000000000000060000000300000001128A41030000000107800104128A40FB067ECE8712EA5906000000030DE7C9F60E6015010000000600000000000000060000000A00000002128A7CFB00000002067ECE8700000006000000060F878D09078000F8128A7D03078001040000000A128A7CFB00000002067ECE8712EA5906000000030DE7C9F60E6015010000000A000000000E5FD901000000000DE7CA080E5FD9090000000408C000F811FC250308C00104000000060000000600000001000000060000000A0000000A00000001128A410300000001078001040000000A128A7CFB00000002067ECE8712EA5906000000030DE7C9F60000000A0E5FD90100000000000000050000000A00000004000000000F875101000000000C9A87080F87510900000004078000F8128A7D0307800104128A40FB067ECE8712EA5906000000030B4D43F610804D010B4D440810801109000000040000000610804D0908C000F811FC2503064001040000000A000000060000000111FBE9030000000100000006000000040000000010801101000000000B4D440810801109000000040000000610804D0908C000F800000008000000050000000412EA95060B4D43F610804D010B4D4408000000060000000A00000000000000090000000300000002128A7CFB00000002067ECE8712EA5906000000030B4D43F610804D010000000600000000000000050000000500000001128A41030000000107800104128A40FB067ECE8712EA5906000000030B4D43F610804D010000000600000000000000050000000500000002000000050F878D09078000F8128A7D0307800104128A40FB067ECE8712EA5906000000030B4D43F610804D010000000A0000000010801101000000000DE7CA080E5FD9090000000408C000F811FC250306400104000000090000000500000001000000050000000A0000000A00000002128A7CFB00000002067ECE8712EA5906000000030B4D43F610804D010DE7CA080E5FD90900000004000000050000000500000000000000050000000500000001128A41030000000107800104128A40FB067ECE8712EA5906000000030B4D43F610804D010000000A0000000000000005000000050000000200000005000000040000000400000003"
theorem small_3622721_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3622721_right_root small_3622721_right_fuel small_3622721_right_count small_3622721_right_encoded = true := by
  decide +kernel
theorem small_3622721_right_covered : CoveredBy scale carrier boxes small_3622721_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3622721_right_root small_3622721_right_fuel small_3622721_right_count small_3622721_right_encoded small_3622721_right_checked

theorem cover_3622721 : CoveredBy scale carrier boxes root_3622721 := by
  apply coveredBy_split_literal root_3622721 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.root_3622722 small_3622721_right_root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.cover_3622722
  · exact small_3622721_right_covered
#print axioms cover_3622721

def root_3622715 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3622715_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3622715_left_fuel : Nat := 1
def small_3622715_left_count : Nat := 1
def small_3622715_left_encoded : String := "00000000"
theorem small_3622715_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3622715_left_root small_3622715_left_fuel small_3622715_left_count small_3622715_left_encoded = true := by
  decide +kernel
theorem small_3622715_left_covered : CoveredBy scale carrier boxes small_3622715_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3622715_left_root small_3622715_left_fuel small_3622715_left_count small_3622715_left_encoded small_3622715_left_checked

theorem cover_3622715 : CoveredBy scale carrier boxes root_3622715 := by
  apply coveredBy_split_literal root_3622715 small_3622715_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.root_3622721 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3622715_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.cover_3622721
#print axioms cover_3622715

def root_3622509 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3622509_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3622509_left_fuel : Nat := 17
def small_3622509_left_count : Nat := 97
def small_3622509_left_encoded : String := "0F34D0F604548A0713867106000000030CFD9C090F34D10800000004000000080F350D080C9A87080F87510900000004078000F8128A7D0307800104128A40FB0AD357810000000A10D13CF600000000022A458713E1C506000000030B4D440800000005000000080000000A00000002128A7CFB000000020AD3578110D100F6000000080000000010D13CF600000000022A45870000000613E20106000000060000000300000001128A41030000000107800104128A40FB0AD357810000000610D13CF600000000022A4587000000060000000600000002128A7CFB00000002000000060F878D09078000F8128A7D03078001040000000A128A7CFB000000020AD357810000000810D13CF60000000000000008000000010000000800000004000000041386AD060CFD9C090F34D108000000040000000A0F350D080C9A87080F87510900000004078000F80000000A128A410300000001078001040000000A128A7CFB000000020AD35781000000060000000A0000000A000000040000000300000000"
theorem small_3622509_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3622509_left_root small_3622509_left_fuel small_3622509_left_count small_3622509_left_encoded = true := by
  decide +kernel
theorem small_3622509_left_covered : CoveredBy scale carrier boxes small_3622509_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3622509_left_root small_3622509_left_fuel small_3622509_left_count small_3622509_left_encoded small_3622509_left_checked

theorem cover_3622509 : CoveredBy scale carrier boxes root_3622509 := by
  apply coveredBy_split_literal root_3622509 small_3622509_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.root_3622715 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3622509_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.cover_3622715
#print axioms cover_3622509

def root_3622503 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3622503_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3622503_left_fuel : Nat := 1
def small_3622503_left_count : Nat := 1
def small_3622503_left_encoded : String := "00000002"
theorem small_3622503_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3622503_left_root small_3622503_left_fuel small_3622503_left_count small_3622503_left_encoded = true := by
  decide +kernel
theorem small_3622503_left_covered : CoveredBy scale carrier boxes small_3622503_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3622503_left_root small_3622503_left_fuel small_3622503_left_count small_3622503_left_encoded small_3622503_left_checked

theorem cover_3622503 : CoveredBy scale carrier boxes root_3622503 := by
  apply coveredBy_split_literal root_3622503 small_3622503_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.root_3622509 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_3622503_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.cover_3622509
#print axioms cover_3622503

def root_3620055 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3620055 : CoveredBy scale carrier boxes root_3620055 := by
  apply coveredBy_split_literal root_3620055 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1369.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.root_3622503 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1369.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.cover_3622503
#print axioms cover_3620055

def root_3620050 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3620050_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3620050_right_fuel : Nat := 1
def small_3620050_right_count : Nat := 1
def small_3620050_right_encoded : String := "00000001"
theorem small_3620050_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3620050_right_root small_3620050_right_fuel small_3620050_right_count small_3620050_right_encoded = true := by
  decide +kernel
theorem small_3620050_right_covered : CoveredBy scale carrier boxes small_3620050_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3620050_right_root small_3620050_right_fuel small_3620050_right_count small_3620050_right_encoded small_3620050_right_checked

theorem cover_3620050 : CoveredBy scale carrier boxes root_3620050 := by
  apply coveredBy_split_literal root_3620050 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.root_3620055 small_3620050_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.cover_3620055
  · exact small_3620050_right_covered
#print axioms cover_3620050

def root_3620049 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3620049_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3620049_right_fuel : Nat := 21
def small_3620049_right_count : Nat := 251
def small_3620049_right_encoded : String := "135D45030000000105000104135D44FB0CFD9C010F34D0F604548A0713867106000000030CFD9C09000000080F350D080C9A87080F87510900000004028000F8000000080000000700000008000000040000000A000000000F350CF60000000004548A0713867106000000030CFD9C090F34D10800000004000000080F350D080C9A86F60F878D010C9A87080F87510900000004028000F813D7ED0302800104000000070000000700000001000000070F878D090000000800000004000000000F875101000000000C9A87080F87510900000004028000F813D7ED03028001040000000913D7ECFB00000002022A4587000000060000000600000001000000070F878D09028000F813D7ED03028001040000000913D7ECFB00000002022A458713E1C506000000030B4D43F6000000080000000900000009000000010000000900000004000000041386AD060CFD9C090F34D108000000040000000A0F350D080C9A86F60F878D010C9A8708000000090000000A0000000000000009000000040000000300000002135D80FB000000020CFD9C010F34D0F604548A0713867106000000030CFD9C0900000008000000081386AD060CFD9C090F34D10800000004000000080F350D080C9A87080F87510900000004028000F813D7ED03078001040000000A128A7CFB000000020000000600000001000000080000000A0000000400000003000000000F350CF60000000004548A0713867106000000030CFD9C090F34D108000000040C9A86F6000000080F87510100000000028000F813D7ED0307800104000000080000000500000001000000050F350D080C9A86F60F878D010C9A87080F87510900000004028000F813D7ED0307800104000000060000000600000001000000060F878D090000000800000004000000000F875101000000000C9A87080F87510900000004028000F813D7ED0307800104000000060000000500000001000000050F878D09028000F813D7ED0307800104128A40FB022A458713E1C5060000000300000005000000050000000200000005000000010000000500000004000000041386AD060CFD9C090F34D108000000040C9A86F60F878D010000000A000000000F87510100000000000000050F350D080C9A86F60F878D010C9A87080F87510900000004028000F813D7ED0307800104128A40FB067ECE87000000060000000600000002000000060000000113D7B103000000010780010400000006000000050F878D09028000F813D7ED03078001040000000A128A7CFB00000002000000050000000113D7B1030000000107800104000000080000000500000004000000000F875101000000000C9A87080F8751090000000400000005000000050000000400000003"
theorem small_3620049_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3620049_right_root small_3620049_right_fuel small_3620049_right_count small_3620049_right_encoded = true := by
  decide +kernel
theorem small_3620049_right_covered : CoveredBy scale carrier boxes small_3620049_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3620049_right_root small_3620049_right_fuel small_3620049_right_count small_3620049_right_encoded small_3620049_right_checked

theorem cover_3620049 : CoveredBy scale carrier boxes root_3620049 := by
  apply coveredBy_split_literal root_3620049 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.root_3620050 small_3620049_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.cover_3620050
  · exact small_3620049_right_covered
#print axioms cover_3620049

def root_3620044 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3620044_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3620044_right_fuel : Nat := 1
def small_3620044_right_count : Nat := 1
def small_3620044_right_encoded : String := "00000004"
theorem small_3620044_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3620044_right_root small_3620044_right_fuel small_3620044_right_count small_3620044_right_encoded = true := by
  decide +kernel
theorem small_3620044_right_covered : CoveredBy scale carrier boxes small_3620044_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3620044_right_root small_3620044_right_fuel small_3620044_right_count small_3620044_right_encoded small_3620044_right_checked

theorem cover_3620044 : CoveredBy scale carrier boxes root_3620044 := by
  apply coveredBy_split_literal root_3620044 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.root_3620049 small_3620044_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.cover_3620049
  · exact small_3620044_right_covered
#print axioms cover_3620044

def root_3619906 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3619906_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3619906_left_fuel : Nat := 19
def small_3619906_left_count : Nat := 65
def small_3619906_left_encoded : String := "1207010800000004050000F8135D810305000104135D44FB0000000A00000002135D80FB000000020CFD9C010000000A0F350CF60000000004548A07138671060000000304548A0913867108000000040C9A86F6000000080F87510100000000078000F80000000A000000081386AD080C9A86F60F878D0100000008000000000F87510100000000078000F8128A7D0307800104128A40FB0000000A00000002128A7CFB00000002022A4587000000080000000A0000000100000008000000040000000A00000001135D45030000000105000104135D44FB0000000A00000002135D80FB000000020CFD9C010000000A0F350CF60000000004548A07000000080000000A"
theorem small_3619906_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3619906_left_root small_3619906_left_fuel small_3619906_left_count small_3619906_left_encoded = true := by
  decide +kernel
theorem small_3619906_left_covered : CoveredBy scale carrier boxes small_3619906_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3619906_left_root small_3619906_left_fuel small_3619906_left_count small_3619906_left_encoded small_3619906_left_checked

theorem cover_3619906 : CoveredBy scale carrier boxes root_3619906 := by
  apply coveredBy_split_literal root_3619906 small_3619906_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.root_3620044 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3619906_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.cover_3620044
#print axioms cover_3619906

def root_3619900 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3619900_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3619900_left_fuel : Nat := 1
def small_3619900_left_count : Nat := 1
def small_3619900_left_encoded : String := "00000003"
theorem small_3619900_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3619900_left_root small_3619900_left_fuel small_3619900_left_count small_3619900_left_encoded = true := by
  decide +kernel
theorem small_3619900_left_covered : CoveredBy scale carrier boxes small_3619900_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3619900_left_root small_3619900_left_fuel small_3619900_left_count small_3619900_left_encoded small_3619900_left_checked

theorem cover_3619900 : CoveredBy scale carrier boxes root_3619900 := by
  apply coveredBy_split_literal root_3619900 small_3619900_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.root_3619906 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3619900_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.cover_3619906
#print axioms cover_3619900

def root_3619899 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3619899_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3619899_right_fuel : Nat := 23
def small_3619899_right_count : Nat := 93
def small_3619899_right_encoded : String := "12073D0608A9130912070108000000040000000A12073D08050000F8135D810305000104135D44FB0000000A00000002135D80FB000000020CFD9C010000000A0F350CF6000000000CFD9C070F34D106000000030CFD9C090F34D108000000040000000A0F350D080C9A86F60F878D010C9A87080F87510900000004078000F80000000A128A4103000000010000000A0000000A000000000F875101000000000C9A87080F87510900000004078000F8128A7D030780010400000009128A7CFB000000020AD35787000000060000000500000001000000090F878D09078000F80000000A0000000900000004000000040000000A00000001135D45030000000105000104135D44FB0000000A00000002135D80FB000000020CFD9C010000000A0F350CF6000000000CFD9C070F34D106000000030CFD9C090F34D108000000040000000A0F350D080C9A86F60F878D010C9A8708000000090000000A0000000000000009000000040000000A0000000400000003"
theorem small_3619899_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3619899_right_root small_3619899_right_fuel small_3619899_right_count small_3619899_right_encoded = true := by
  decide +kernel
theorem small_3619899_right_covered : CoveredBy scale carrier boxes small_3619899_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3619899_right_root small_3619899_right_fuel small_3619899_right_count small_3619899_right_encoded small_3619899_right_checked

theorem cover_3619899 : CoveredBy scale carrier boxes root_3619899 := by
  apply coveredBy_split_literal root_3619899 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.root_3619900 small_3619899_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.cover_3619900
  · exact small_3619899_right_covered
#print axioms cover_3619899

def root_3619893 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3619893_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3619893_left_fuel : Nat := 1
def small_3619893_left_count : Nat := 1
def small_3619893_left_encoded : String := "00000000"
theorem small_3619893_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3619893_left_root small_3619893_left_fuel small_3619893_left_count small_3619893_left_encoded = true := by
  decide +kernel
theorem small_3619893_left_covered : CoveredBy scale carrier boxes small_3619893_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3619893_left_root small_3619893_left_fuel small_3619893_left_count small_3619893_left_encoded small_3619893_left_checked

theorem cover_3619893 : CoveredBy scale carrier boxes root_3619893 := by
  apply coveredBy_split_literal root_3619893 small_3619893_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.root_3619899 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3619893_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.cover_3619899
#print axioms cover_3619893

def root_3619853 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3619853_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3619853_left_fuel : Nat := 9
def small_3619853_left_count : Nat := 19
def small_3619853_left_encoded : String := "120700F608A91307120701060000000308A9130912070108000000040000000812073D08050000F80000000A135D450300000001050001040000000A00000008000000040000000A00000000"
theorem small_3619853_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3619853_left_root small_3619853_left_fuel small_3619853_left_count small_3619853_left_encoded = true := by
  decide +kernel
theorem small_3619853_left_covered : CoveredBy scale carrier boxes small_3619853_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3619853_left_root small_3619853_left_fuel small_3619853_left_count small_3619853_left_encoded small_3619853_left_checked

theorem cover_3619853 : CoveredBy scale carrier boxes root_3619853 := by
  apply coveredBy_split_literal root_3619853 small_3619853_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.root_3619893 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3619853_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.cover_3619893
#print axioms cover_3619853

def root_3619848 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3619848_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3619848_right_fuel : Nat := 1
def small_3619848_right_count : Nat := 1
def small_3619848_right_encoded : String := "00000004"
theorem small_3619848_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3619848_right_root small_3619848_right_fuel small_3619848_right_count small_3619848_right_encoded = true := by
  decide +kernel
theorem small_3619848_right_covered : CoveredBy scale carrier boxes small_3619848_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3619848_right_root small_3619848_right_fuel small_3619848_right_count small_3619848_right_encoded small_3619848_right_checked

theorem cover_3619848 : CoveredBy scale carrier boxes root_3619848 := by
  apply coveredBy_split_literal root_3619848 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.root_3619853 small_3619848_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.cover_3619853
  · exact small_3619848_right_covered
#print axioms cover_3619848

def root_3618198 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3618198 : CoveredBy scale carrier boxes root_3618198 := by
  apply coveredBy_split_literal root_3618198 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1368.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.root_3619848 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1368.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.cover_3619848
#print axioms cover_3618198

def root_3618193 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3618193_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3618193_right_fuel : Nat := 1
def small_3618193_right_count : Nat := 1
def small_3618193_right_encoded : String := "00000003"
theorem small_3618193_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3618193_right_root small_3618193_right_fuel small_3618193_right_count small_3618193_right_encoded = true := by
  decide +kernel
theorem small_3618193_right_covered : CoveredBy scale carrier boxes small_3618193_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3618193_right_root small_3618193_right_fuel small_3618193_right_count small_3618193_right_encoded small_3618193_right_checked

theorem cover_3618193 : CoveredBy scale carrier boxes root_3618193 := by
  apply coveredBy_split_literal root_3618193 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.root_3618198 small_3618193_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.cover_3618198
  · exact small_3618193_right_covered
#print axioms cover_3618193

def root_3618159 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3618159_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3618159_left_fuel : Nat := 9
def small_3618159_left_count : Nat := 17
def small_3618159_left_encoded : String := "1151E907000000030A0001081151E9090000000408A913010000000A12073CF600000000050000F8135D810305000104000000090000000900000001000000090000000A"
theorem small_3618159_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3618159_left_root small_3618159_left_fuel small_3618159_left_count small_3618159_left_encoded = true := by
  decide +kernel
theorem small_3618159_left_covered : CoveredBy scale carrier boxes small_3618159_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3618159_left_root small_3618159_left_fuel small_3618159_left_count small_3618159_left_encoded small_3618159_left_checked

theorem cover_3618159 : CoveredBy scale carrier boxes root_3618159 := by
  apply coveredBy_split_literal root_3618159 small_3618159_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.root_3618193 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3618159_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.cover_3618193
#print axioms cover_3618159

def root_3618154 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3618154_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3618154_right_fuel : Nat := 1
def small_3618154_right_count : Nat := 1
def small_3618154_right_encoded : String := "00000002"
theorem small_3618154_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3618154_right_root small_3618154_right_fuel small_3618154_right_count small_3618154_right_encoded = true := by
  decide +kernel
theorem small_3618154_right_covered : CoveredBy scale carrier boxes small_3618154_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3618154_right_root small_3618154_right_fuel small_3618154_right_count small_3618154_right_encoded small_3618154_right_checked

theorem cover_3618154 : CoveredBy scale carrier boxes root_3618154 := by
  apply coveredBy_split_literal root_3618154 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.root_3618159 small_3618154_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.cover_3618159
  · exact small_3618154_right_covered
#print axioms cover_3618154

def root_3628868 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3628868 : CoveredBy scale carrier boxes root_3628868 := by
  apply coveredBy_split_literal root_3628868 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1371.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1372.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1371.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1372.covered
#print axioms cover_3628868

def root_3628863 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3628863_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3628863_right_fuel : Nat := 1
def small_3628863_right_count : Nat := 1
def small_3628863_right_encoded : String := "00000003"
theorem small_3628863_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3628863_right_root small_3628863_right_fuel small_3628863_right_count small_3628863_right_encoded = true := by
  decide +kernel
theorem small_3628863_right_covered : CoveredBy scale carrier boxes small_3628863_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3628863_right_root small_3628863_right_fuel small_3628863_right_count small_3628863_right_encoded small_3628863_right_checked

theorem cover_3628863 : CoveredBy scale carrier boxes root_3628863 := by
  apply coveredBy_split_literal root_3628863 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.root_3628868 small_3628863_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.cover_3628868
  · exact small_3628863_right_covered
#print axioms cover_3628863

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256
