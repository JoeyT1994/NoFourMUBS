import TaoBundleAssembly0082
import TaoBundleAssembly0086
import TaoBundleAssembly0088
import TaoBundleAssembly0089
import TaoBundleChunkBatch0342
import TaoBundleChunkBatch0343
import TaoBundleChunkBatch0344
import TaoBundleChunkBatch0345
import TaoBundleChunkBatch0346
import TaoBundleChunkBatch0347
import TaoBundleChunkBatch0348
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090
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
  apply coveredBy_split_literal root_3622728 small_3622728_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3623216 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3622728_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3623216
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
  apply coveredBy_split_literal root_3622722 small_3622722_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3622728 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_3622722_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3622728
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
  apply coveredBy_split_literal root_3622721 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3622722 small_3622721_right_root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3622722
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
  apply coveredBy_split_literal root_3622715 small_3622715_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3622721 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3622715_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3622721
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
  apply coveredBy_split_literal root_3622509 small_3622509_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3622715 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3622509_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3622715
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
  apply coveredBy_split_literal root_3622503 small_3622503_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3622509 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_3622503_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3622509
#print axioms cover_3622503

def root_3620055 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3620055 : CoveredBy scale carrier boxes root_3620055 := by
  apply coveredBy_split_literal root_3620055 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1369.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3622503 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1369.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3622503
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
  apply coveredBy_split_literal root_3620050 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3620055 small_3620050_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3620055
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
  apply coveredBy_split_literal root_3620049 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3620050 small_3620049_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3620050
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
  apply coveredBy_split_literal root_3620044 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3620049 small_3620044_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3620049
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
  apply coveredBy_split_literal root_3619906 small_3619906_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3620044 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3619906_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3620044
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
  apply coveredBy_split_literal root_3619900 small_3619900_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3619906 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3619900_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3619906
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
  apply coveredBy_split_literal root_3619899 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3619900 small_3619899_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3619900
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
  apply coveredBy_split_literal root_3619893 small_3619893_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3619899 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3619893_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3619899
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
  apply coveredBy_split_literal root_3619853 small_3619853_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3619893 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3619853_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3619893
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
  apply coveredBy_split_literal root_3619848 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3619853 small_3619848_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3619853
  · exact small_3619848_right_covered
#print axioms cover_3619848

def root_3618198 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3618198 : CoveredBy scale carrier boxes root_3618198 := by
  apply coveredBy_split_literal root_3618198 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1368.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3619848 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1368.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3619848
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
  apply coveredBy_split_literal root_3618193 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3618198 small_3618193_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3618198
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
  apply coveredBy_split_literal root_3618159 small_3618159_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3618193 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3618159_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3618193
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
  apply coveredBy_split_literal root_3618154 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3618159 small_3618154_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3618159
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
  apply coveredBy_split_literal root_3628863 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3628868 small_3628863_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3628868
  · exact small_3628863_right_covered
#print axioms cover_3628863

def root_3628243 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3628243_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3628243_left_fuel : Nat := 23
def small_3628243_left_count : Nat := 299
def small_3628243_left_encoded : String := "1151E907000000030A0001081151E9090000000408A91301120700F608A912FB12073D04050000F8135D8103050001060000000A135D810705000108135D45090000000404548A010000000A1386ACF6000000000CFD9BFB0000000A0F34D10400000002078000F8128A7D0307800106000000060000000600000001128A410300000001078001060000000A000000050000000A0000000300000001135D450300000001050001060000000A135D810705000108135D45090000000404548A010000000A1386ACF6000000000CFD9BFB000000090F34D10400000002000000050000000A00000003000000021207010400000002050000F8135D810305000106135D45070000000305000108135D45090000000404548A01138670F6045489FB0000000A000000050000000000000005135D810904548A01000000070000000500000004135D810705000108135D45090000000404548A01138670F6045489FB1386AD04078000F8128A7D03078001060000000A128A7D070280010800000006000000060000000300000001128A4103000000010000000500000002000000050000000000000005135D810904548A01138670F6045489FB0000000A000000050000000000000005000000040000000300000001135D45030000000105000106135D45070000000300000005135D810705000108135D4509000000040000000500000005000000030000000012073CF60000000008A912FB12073D04050000F8135D810305000106135D45070000000305000108135D4509000000040CFD9C010F34D0F60CFD9BFB00000009000000050000000000000005135D81090CFD9C010000000A0000000500000004135D810705000108135D4509000000040CFD9C010F34D0F60CFD9BFB0F350D040000000600000002000000050000000000000005135D81090CFD9C010F34D0F60CFD9BFB0000000A000000050000000000000005000000040000000300000001135D45030000000105000106135D4507000000030500010800000009135D81090CFD9C010F34D0F60000000A000000000000000500000004135D810705000108135D4509000000040CFD9C010F34D0F60CFD9BFB00000009000000050000000000000005135D81090CFD9C010F34D0F60CFD9BFB0000000A000000050000000000000005000000040000000300000002000000051152250908A91301120700F608A912FB0000000A120701040000000208A9130912070108000000040000000A12073D08050000F80000000A135D450300000001050001060000000A135D810704548A010000000A0000000500000003000000040000000012073CF60000000008A912FB12073D0408A9130912070108000000040000000A12073D08050000F8135D810305000106135D4507000000030000000A135D81070CFD9C010000000A0F350CF6000000000CFD9BFB0000000A0F34D10400000002000000050000000300000001135D45030000000105000106135D4507000000030000000A135D81070CFD9C010000000A0F350CF6000000000CFD9BFB0000000A00000005000000030000000400000002120701040000000208A913090000000612073D08050000F8135D810305000106000000060000000500000001000000050000000400000004"
theorem small_3628243_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3628243_left_root small_3628243_left_fuel small_3628243_left_count small_3628243_left_encoded = true := by
  decide +kernel
theorem small_3628243_left_covered : CoveredBy scale carrier boxes small_3628243_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3628243_left_root small_3628243_left_fuel small_3628243_left_count small_3628243_left_encoded small_3628243_left_checked

theorem cover_3628243 : CoveredBy scale carrier boxes root_3628243 := by
  apply coveredBy_split_literal root_3628243 small_3628243_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3628863 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3628243_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3628863
#print axioms cover_3628243

def root_3628237 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3628237_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3628237_left_fuel : Nat := 1
def small_3628237_left_count : Nat := 1
def small_3628237_left_encoded : String := "00000002"
theorem small_3628237_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3628237_left_root small_3628237_left_fuel small_3628237_left_count small_3628237_left_encoded = true := by
  decide +kernel
theorem small_3628237_left_covered : CoveredBy scale carrier boxes small_3628237_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3628237_left_root small_3628237_left_fuel small_3628237_left_count small_3628237_left_encoded small_3628237_left_checked

theorem cover_3628237 : CoveredBy scale carrier boxes root_3628237 := by
  apply coveredBy_split_literal root_3628237 small_3628237_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3628243 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3628237_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3628243
#print axioms cover_3628237

def root_3618153 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3618153 : CoveredBy scale carrier boxes root_3618153 := by
  apply coveredBy_split_literal root_3618153 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3618154 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3628237 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3618154
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3628237
#print axioms cover_3618153

def root_3618147 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3618147_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3618147_left_fuel : Nat := 1
def small_3618147_left_count : Nat := 1
def small_3618147_left_encoded : String := "00000001"
theorem small_3618147_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3618147_left_root small_3618147_left_fuel small_3618147_left_count small_3618147_left_encoded = true := by
  decide +kernel
theorem small_3618147_left_covered : CoveredBy scale carrier boxes small_3618147_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3618147_left_root small_3618147_left_fuel small_3618147_left_count small_3618147_left_encoded small_3618147_left_checked

theorem cover_3618147 : CoveredBy scale carrier boxes root_3618147 := by
  apply coveredBy_split_literal root_3618147 small_3618147_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3618153 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3618147_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3618153
#print axioms cover_3618147

def root_3585827 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3585827 : CoveredBy scale carrier boxes root_3585827 := by
  apply coveredBy_split_literal root_3585827 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.root_3585828 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3618147 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0089.cover_3585828
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3618147
#print axioms cover_3585827

def root_3585822 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3585822_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3585822_right_fuel : Nat := 1
def small_3585822_right_count : Nat := 1
def small_3585822_right_encoded : String := "00000000"
theorem small_3585822_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3585822_right_root small_3585822_right_fuel small_3585822_right_count small_3585822_right_encoded = true := by
  decide +kernel
theorem small_3585822_right_covered : CoveredBy scale carrier boxes small_3585822_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3585822_right_root small_3585822_right_fuel small_3585822_right_count small_3585822_right_encoded small_3585822_right_checked

theorem cover_3585822 : CoveredBy scale carrier boxes root_3585822 := by
  apply coveredBy_split_literal root_3585822 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3585827 small_3585822_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3585827
  · exact small_3585822_right_covered
#print axioms cover_3585822

def root_3633591 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633591_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633591_right_fuel : Nat := 12
def small_3633591_right_count : Nat := 73
def small_3633591_right_encoded : String := "135D45010000000005000104135D44FB0CFD9C030F34D0F804548A0713867106000000030CFD9C09000000070000000700000007000000010F350CF80000000104548A0713867106000000030CFD9C090F34D10800000004000000070F350D0800000008000000041386AD060CFD9C090F34D10800000004000000070F350D0800000008000000040000000300000002135D80FB000000020CFD9C030F34D0F804548A0713867106000000030CFD9C09000000070000000700000007000000010F350CF80000000104548A0713867106000000030CFD9C090F34D10800000004000000070F350D080C9A86F8000000080F8751030000000100000008000000041386AD060CFD9C090F34D10800000004000000070F350D08000000080000000400000003"
theorem small_3633591_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633591_right_root small_3633591_right_fuel small_3633591_right_count small_3633591_right_encoded = true := by
  decide +kernel
theorem small_3633591_right_covered : CoveredBy scale carrier boxes small_3633591_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633591_right_root small_3633591_right_fuel small_3633591_right_count small_3633591_right_encoded small_3633591_right_checked

theorem cover_3633591 : CoveredBy scale carrier boxes root_3633591 := by
  apply coveredBy_split_literal root_3633591 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1373.root small_3633591_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1373.covered
  · exact small_3633591_right_covered
#print axioms cover_3633591

def root_3633586 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633586_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633586_right_fuel : Nat := 1
def small_3633586_right_count : Nat := 1
def small_3633586_right_encoded : String := "00000004"
theorem small_3633586_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633586_right_root small_3633586_right_fuel small_3633586_right_count small_3633586_right_encoded = true := by
  decide +kernel
theorem small_3633586_right_covered : CoveredBy scale carrier boxes small_3633586_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633586_right_root small_3633586_right_fuel small_3633586_right_count small_3633586_right_encoded small_3633586_right_checked

theorem cover_3633586 : CoveredBy scale carrier boxes root_3633586 := by
  apply coveredBy_split_literal root_3633586 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3633591 small_3633586_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3633591
  · exact small_3633586_right_covered
#print axioms cover_3633586

def root_3633476 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633476_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633476_left_fuel : Nat := 16
def small_3633476_left_count : Nat := 53
def small_3633476_left_encoded : String := "1207010800000004050000F6135D810105000104135D44FB0CFD9C03000000070F350CF80000000104548A07138671060000000304548A09000000061386AD080C9A86F8000000060F87510300000001078000F60000000600000007000000040000000700000002135D80FB000000020CFD9C03000000070F350CF80000000104548A07138671060000000304548A09000000071386AD080C9A86F8000000070F87510300000001078000F6128A7D01000000070000000000000007000000040000000700000000135D45010000000000000007"
theorem small_3633476_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633476_left_root small_3633476_left_fuel small_3633476_left_count small_3633476_left_encoded = true := by
  decide +kernel
theorem small_3633476_left_covered : CoveredBy scale carrier boxes small_3633476_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633476_left_root small_3633476_left_fuel small_3633476_left_count small_3633476_left_encoded small_3633476_left_checked

theorem cover_3633476 : CoveredBy scale carrier boxes root_3633476 := by
  apply coveredBy_split_literal root_3633476 small_3633476_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3633586 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3633476_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3633586
#print axioms cover_3633476

def root_3633470 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633470_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633470_left_fuel : Nat := 1
def small_3633470_left_count : Nat := 1
def small_3633470_left_encoded : String := "00000003"
theorem small_3633470_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633470_left_root small_3633470_left_fuel small_3633470_left_count small_3633470_left_encoded = true := by
  decide +kernel
theorem small_3633470_left_covered : CoveredBy scale carrier boxes small_3633470_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633470_left_root small_3633470_left_fuel small_3633470_left_count small_3633470_left_encoded small_3633470_left_checked

theorem cover_3633470 : CoveredBy scale carrier boxes root_3633470 := by
  apply coveredBy_split_literal root_3633470 small_3633470_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3633476 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3633470_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3633476
#print axioms cover_3633470

def root_3633469 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633469_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633469_right_fuel : Nat := 18
def small_3633469_right_count : Nat := 99
def small_3633469_right_encoded : String := "12073D0608A9130912070108000000040000000712073D08050000F6135D810105000104135D44FB0CFD9C030F34D0F800000007000000010F350CF8000000010CFD9C070F34D106000000030CFD9C090F34D10800000004000000070F350D080C9A86F80F878D03000000070000000100000009000000040F350D06000000090000000300000002135D80FB000000020CFD9C030F34D0F800000007000000010F350CF8000000010CFD9C070F34D106000000030CFD9C090F34D10800000004000000070F350D080C9A86F80F878D0300000007000000010F875103000000010C9A87080F87510900000004000000080F878D090000000700000004000000040F350D060CFD9C0900000007000000070000000300000000135D45010000000005000104135D44FB0CFD9C030F34D0F800000007000000010F350CF8000000010CFD9C070F34D10600000003000000070000000700000002135D80FB000000020CFD9C03000000070F350CF8000000010CFD9C070F34D1060000000300000007000000070000000400000003"
theorem small_3633469_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633469_right_root small_3633469_right_fuel small_3633469_right_count small_3633469_right_encoded = true := by
  decide +kernel
theorem small_3633469_right_covered : CoveredBy scale carrier boxes small_3633469_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633469_right_root small_3633469_right_fuel small_3633469_right_count small_3633469_right_encoded small_3633469_right_checked

theorem cover_3633469 : CoveredBy scale carrier boxes root_3633469 := by
  apply coveredBy_split_literal root_3633469 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3633470 small_3633469_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3633470
  · exact small_3633469_right_covered
#print axioms cover_3633469

def root_3633463 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633463_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633463_left_fuel : Nat := 1
def small_3633463_left_count : Nat := 1
def small_3633463_left_encoded : String := "00000001"
theorem small_3633463_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633463_left_root small_3633463_left_fuel small_3633463_left_count small_3633463_left_encoded = true := by
  decide +kernel
theorem small_3633463_left_covered : CoveredBy scale carrier boxes small_3633463_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633463_left_root small_3633463_left_fuel small_3633463_left_count small_3633463_left_encoded small_3633463_left_checked

theorem cover_3633463 : CoveredBy scale carrier boxes root_3633463 := by
  apply coveredBy_split_literal root_3633463 small_3633463_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3633469 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3633463_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3633469
#print axioms cover_3633463

def root_3633369 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633369_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633369_left_fuel : Nat := 15
def small_3633369_left_count : Nat := 45
def small_3633369_left_encoded : String := "120700F808A91307120701060000000308A9130912070108000000040000000612073D08050000F6135D810105000104135D44FB04548A03000000071386ACF80000000104548A071386710600000003000000060000000700000002135D80FB0000000204548A03000000071386ACF80000000104548A0713867106000000030CFD9C0900000007000000070000000700000000000000070000000412073D0608A9130900000007000000070000000300000001"
theorem small_3633369_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633369_left_root small_3633369_left_fuel small_3633369_left_count small_3633369_left_encoded = true := by
  decide +kernel
theorem small_3633369_left_covered : CoveredBy scale carrier boxes small_3633369_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633369_left_root small_3633369_left_fuel small_3633369_left_count small_3633369_left_encoded small_3633369_left_checked

theorem cover_3633369 : CoveredBy scale carrier boxes root_3633369 := by
  apply coveredBy_split_literal root_3633369 small_3633369_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3633463 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3633369_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3633463
#print axioms cover_3633369

def root_3633364 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633364_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633364_right_fuel : Nat := 1
def small_3633364_right_count : Nat := 1
def small_3633364_right_encoded : String := "00000004"
theorem small_3633364_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633364_right_root small_3633364_right_fuel small_3633364_right_count small_3633364_right_encoded = true := by
  decide +kernel
theorem small_3633364_right_covered : CoveredBy scale carrier boxes small_3633364_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633364_right_root small_3633364_right_fuel small_3633364_right_count small_3633364_right_encoded small_3633364_right_checked

theorem cover_3633364 : CoveredBy scale carrier boxes root_3633364 := by
  apply coveredBy_split_literal root_3633364 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3633369 small_3633364_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3633369
  · exact small_3633364_right_covered
#print axioms cover_3633364

def root_3633126 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633126_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633126_left_fuel : Nat := 16
def small_3633126_left_count : Nat := 109
def small_3633126_left_encoded : String := "1151E9090000000408A91303120700F808A913071207010600000003050000F6000000080000000812073D06050000F6135D810105000104135D44FB0000000800000002000000080000000000000008000000030000000112073CF80000000108A913071207010600000003050000F6135D810105000104135D44FB0500010800000008135D81090CFD9C030F34D0F80000000800000001000000080000000400000002135D80FB000000020500010800000008135D81090CFD9C030F34D0F800000008000000010F350CF80000000104548A071386710600000003000000080000000800000004000000000000000812073D06050000F6135D810105000104135D44FB0500010800000008135D81090CFD9C030F34D0F800000008000000010F350CF8000000010CFD9C070F34D1060000000300000008000000080000000400000002135D80FB0000000205000108135D45090000000400000008135D81090CFD9C030F34D0F800000008000000010F350CF8000000010CFD9C070F34D1060000000300000008000000080000000400000000135D45010000000005000104135D44FB00000008000000020000000800000003"
theorem small_3633126_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633126_left_root small_3633126_left_fuel small_3633126_left_count small_3633126_left_encoded = true := by
  decide +kernel
theorem small_3633126_left_covered : CoveredBy scale carrier boxes small_3633126_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633126_left_root small_3633126_left_fuel small_3633126_left_count small_3633126_left_encoded small_3633126_left_checked

theorem cover_3633126 : CoveredBy scale carrier boxes root_3633126 := by
  apply coveredBy_split_literal root_3633126 small_3633126_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3633364 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3633126_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3633364
#print axioms cover_3633126

def root_3633121 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633121_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633121_right_fuel : Nat := 1
def small_3633121_right_count : Nat := 1
def small_3633121_right_encoded : String := "00000003"
theorem small_3633121_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633121_right_root small_3633121_right_fuel small_3633121_right_count small_3633121_right_encoded = true := by
  decide +kernel
theorem small_3633121_right_covered : CoveredBy scale carrier boxes small_3633121_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633121_right_root small_3633121_right_fuel small_3633121_right_count small_3633121_right_encoded small_3633121_right_checked

theorem cover_3633121 : CoveredBy scale carrier boxes root_3633121 := by
  apply coveredBy_split_literal root_3633121 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3633126 small_3633121_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3633126
  · exact small_3633121_right_covered
#print axioms cover_3633121

def root_3633017 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633017_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633017_left_fuel : Nat := 12
def small_3633017_left_count : Nat := 51
def small_3633017_left_encoded : String := "1151E907000000030A0001081151E9090000000408A91303120700F8050000F600000008000000080000000112073CF800000001050000F6135D810105000104000000090000000900000000000000091152250908A91303120700F808A913090000000712073D08050000F60000000700000009000000040000000112073CF80000000108A913090000000712073D08050000F6135D8101050001040000000A0000000700000000135D45010000000005000104135D44FB0000000A00000002000000070000000400000004"
theorem small_3633017_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633017_left_root small_3633017_left_fuel small_3633017_left_count small_3633017_left_encoded = true := by
  decide +kernel
theorem small_3633017_left_covered : CoveredBy scale carrier boxes small_3633017_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633017_left_root small_3633017_left_fuel small_3633017_left_count small_3633017_left_encoded small_3633017_left_checked

theorem cover_3633017 : CoveredBy scale carrier boxes root_3633017 := by
  apply coveredBy_split_literal root_3633017 small_3633017_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3633121 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3633017_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3633121
#print axioms cover_3633017

def root_3633012 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633012_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633012_right_fuel : Nat := 1
def small_3633012_right_count : Nat := 1
def small_3633012_right_encoded : String := "00000002"
theorem small_3633012_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633012_right_root small_3633012_right_fuel small_3633012_right_count small_3633012_right_encoded = true := by
  decide +kernel
theorem small_3633012_right_covered : CoveredBy scale carrier boxes small_3633012_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633012_right_root small_3633012_right_fuel small_3633012_right_count small_3633012_right_encoded small_3633012_right_checked

theorem cover_3633012 : CoveredBy scale carrier boxes root_3633012 := by
  apply coveredBy_split_literal root_3633012 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3633017 small_3633012_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3633017
  · exact small_3633012_right_covered
#print axioms cover_3633012

def root_3633011 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3633011 : CoveredBy scale carrier boxes root_3633011 := by
  apply coveredBy_split_literal root_3633011 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3633012 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1374.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3633012
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1374.covered
#print axioms cover_3633011

def root_3633006 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633006_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633006_right_fuel : Nat := 1
def small_3633006_right_count : Nat := 1
def small_3633006_right_encoded : String := "00000001"
theorem small_3633006_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633006_right_root small_3633006_right_fuel small_3633006_right_count small_3633006_right_encoded = true := by
  decide +kernel
theorem small_3633006_right_covered : CoveredBy scale carrier boxes small_3633006_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633006_right_root small_3633006_right_fuel small_3633006_right_count small_3633006_right_encoded small_3633006_right_checked

theorem cover_3633006 : CoveredBy scale carrier boxes root_3633006 := by
  apply coveredBy_split_literal root_3633006 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3633011 small_3633006_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3633011
  · exact small_3633006_right_covered
#print axioms cover_3633006

def root_3638710 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3638710_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3638710_left_fuel : Nat := 18
def small_3638710_left_count : Nat := 95
def small_3638710_left_encoded : String := "1151E9090000000408A913071207010600000003050000F6135D8101050000F8135D810305000104135D44FB0500010800000008135D810904548A07138671060000000300000008000000080000000400000002135D80FB000000020500010800000008135D810904548A071386710600000003078000F6128A7D01078000F800000008128A4103000000010000000600000000000000081386AD06078000F6128A7D01078000F800000008128A410300000001000000060000000000000008000000030000000400000001135D45030000000105000104135D44FB0000000900000002135D80FB000000020500010800000006135D810904548A0700000006000000050000000400000000135D450100000000050000F800000008135D45030000000105000104000000090000000612073D06050000F6135D8101050000F8135D81030500010400000009135D80FB000000020500010800000009135D810900000009000000040000000100000009000000000000000900000003"
theorem small_3638710_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3638710_left_root small_3638710_left_fuel small_3638710_left_count small_3638710_left_encoded = true := by
  decide +kernel
theorem small_3638710_left_covered : CoveredBy scale carrier boxes small_3638710_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3638710_left_root small_3638710_left_fuel small_3638710_left_count small_3638710_left_encoded small_3638710_left_checked

theorem cover_3638710 : CoveredBy scale carrier boxes root_3638710 := by
  apply coveredBy_split_literal root_3638710 small_3638710_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1375.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3638710_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1375.covered
#print axioms cover_3638710

def root_3638705 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3638705_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3638705_right_fuel : Nat := 1
def small_3638705_right_count : Nat := 1
def small_3638705_right_encoded : String := "00000003"
theorem small_3638705_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3638705_right_root small_3638705_right_fuel small_3638705_right_count small_3638705_right_encoded = true := by
  decide +kernel
theorem small_3638705_right_covered : CoveredBy scale carrier boxes small_3638705_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3638705_right_root small_3638705_right_fuel small_3638705_right_count small_3638705_right_encoded small_3638705_right_checked

theorem cover_3638705 : CoveredBy scale carrier boxes root_3638705 := by
  apply coveredBy_split_literal root_3638705 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3638710 small_3638705_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3638710
  · exact small_3638705_right_covered
#print axioms cover_3638705

def root_3638653 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3638653_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3638653_left_fuel : Nat := 10
def small_3638653_left_count : Nat := 23
def small_3638653_left_encoded : String := "1151E907000000030A0001081151E90900000004000000051152250908A9130912070108000000040000000712073D08050000F60000000A135D450100000000050000F80000000A135D4503000000010000000A0000000400000004"
theorem small_3638653_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3638653_left_root small_3638653_left_fuel small_3638653_left_count small_3638653_left_encoded = true := by
  decide +kernel
theorem small_3638653_left_covered : CoveredBy scale carrier boxes small_3638653_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3638653_left_root small_3638653_left_fuel small_3638653_left_count small_3638653_left_encoded small_3638653_left_checked

theorem cover_3638653 : CoveredBy scale carrier boxes root_3638653 := by
  apply coveredBy_split_literal root_3638653 small_3638653_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3638705 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3638653_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3638705
#print axioms cover_3638653

def root_3638648 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3638648_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3638648_right_fuel : Nat := 1
def small_3638648_right_count : Nat := 1
def small_3638648_right_encoded : String := "00000002"
theorem small_3638648_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3638648_right_root small_3638648_right_fuel small_3638648_right_count small_3638648_right_encoded = true := by
  decide +kernel
theorem small_3638648_right_covered : CoveredBy scale carrier boxes small_3638648_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3638648_right_root small_3638648_right_fuel small_3638648_right_count small_3638648_right_encoded small_3638648_right_checked

theorem cover_3638648 : CoveredBy scale carrier boxes root_3638648 := by
  apply coveredBy_split_literal root_3638648 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3638653 small_3638648_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3638653
  · exact small_3638648_right_covered
#print axioms cover_3638648

def root_3638647 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3638647_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3638647_right_fuel : Nat := 22
def small_3638647_right_count : Nat := 175
def small_3638647_right_encoded : String := "115224FB000000020A0001061151E907000000030A0001081151E90900000004000000051152250908A912FB12073D0408A9130912070108000000040000000712073D08050000F6135D8101050000F8135D810305000106000000060000000500000001000000050000000000000005000000040000000212070104000000020000000500000004115225070A0001081151E9090000000408A912FB12073D0408A913071207010600000003050000F6135D8101050000F8135D81030500010800000006135D81090CFD9BFB0F350D0404548A07000000060000000500000002000000050000000400000001135D4503000000010000000500000000135D4501000000000000000512073D06050000F6135D8101050000F8135D81030500010800000006000000050000000100000005000000000000000500000003000000021207010400000002000000051152250908A912FB12073D0408A91307120701060000000308A9130912070108000000040000000512073D08050000F6135D8101050000F8135D81030CFD9BFB0F350D0404548A0713867106000000030CFD9C090F34D1080000000400000005000000051386AD060CFD9C090F34D10800000004000000050000000500000003000000020F34D1040000000200000005000000010000000500000000000000050000000412073D0608A913091207010800000004050000F6135D8101050000F8135D81030CFD9BFB0F350D040CFD9C070F34D10600000003000000050000000700000002000000070000000100000005000000000000000512073D08050000F6135D8101050000F8135D81030CFD9BFB0F350D040CFD9C070F34D106000000030000000500000005000000020000000500000001000000050000000000000005000000040000000300000002120701040000000208A91307120701060000000300000005000000050000000400000003"
theorem small_3638647_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3638647_right_root small_3638647_right_fuel small_3638647_right_count small_3638647_right_encoded = true := by
  decide +kernel
theorem small_3638647_right_covered : CoveredBy scale carrier boxes small_3638647_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3638647_right_root small_3638647_right_fuel small_3638647_right_count small_3638647_right_encoded small_3638647_right_checked

theorem cover_3638647 : CoveredBy scale carrier boxes root_3638647 := by
  apply coveredBy_split_literal root_3638647 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3638648 small_3638647_right_root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3638648
  · exact small_3638647_right_covered
#print axioms cover_3638647

def root_3638641 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3638641_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3638641_left_fuel : Nat := 1
def small_3638641_left_count : Nat := 1
def small_3638641_left_encoded : String := "00000001"
theorem small_3638641_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3638641_left_root small_3638641_left_fuel small_3638641_left_count small_3638641_left_encoded = true := by
  decide +kernel
theorem small_3638641_left_covered : CoveredBy scale carrier boxes small_3638641_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3638641_left_root small_3638641_left_fuel small_3638641_left_count small_3638641_left_encoded small_3638641_left_checked

theorem cover_3638641 : CoveredBy scale carrier boxes root_3638641 := by
  apply coveredBy_split_literal root_3638641 small_3638641_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3638647 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3638641_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3638647
#print axioms cover_3638641

def root_3633005 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3633005 : CoveredBy scale carrier boxes root_3633005 := by
  apply coveredBy_split_literal root_3633005 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3633006 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3638641 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3633006
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3638641
#print axioms cover_3633005

def root_3632999 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3632999_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3632999_left_fuel : Nat := 1
def small_3632999_left_count : Nat := 1
def small_3632999_left_encoded : String := "00000000"
theorem small_3632999_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3632999_left_root small_3632999_left_fuel small_3632999_left_count small_3632999_left_encoded = true := by
  decide +kernel
theorem small_3632999_left_covered : CoveredBy scale carrier boxes small_3632999_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3632999_left_root small_3632999_left_fuel small_3632999_left_count small_3632999_left_encoded small_3632999_left_checked

theorem cover_3632999 : CoveredBy scale carrier boxes root_3632999 := by
  apply coveredBy_split_literal root_3632999 small_3632999_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3633005 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3632999_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3633005
#print axioms cover_3632999

def root_3585821 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3585821 : CoveredBy scale carrier boxes root_3585821 := by
  apply coveredBy_split_literal root_3585821 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3585822 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3632999 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3585822
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3632999
#print axioms cover_3585821

def root_3541663 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3541663 : CoveredBy scale carrier boxes root_3541663 := by
  apply coveredBy_split_literal root_3541663 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0088.root_3541664 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3585821 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0088.cover_3541664
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3585821
#print axioms cover_3541663

def root_3531213 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3531213 : CoveredBy scale carrier boxes root_3531213 := by
  apply coveredBy_split_literal root_3531213 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0086.root_3531214 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3541663 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0086.cover_3531214
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3541663
#print axioms cover_3531213

def root_3447769 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3447769 : CoveredBy scale carrier boxes root_3447769 := by
  apply coveredBy_split_literal root_3447769 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0086.root_3447770 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3531213 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0086.cover_3447770
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3531213
#print axioms cover_3447769

def root_3334847 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3334847 : CoveredBy scale carrier boxes root_3334847 := by
  apply coveredBy_split_literal root_3334847 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0082.root_3334848 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3447769 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0082.cover_3334848
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3447769
#print axioms cover_3334847

def root_3644345 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3644345 : CoveredBy scale carrier boxes root_3644345 := by
  apply coveredBy_split_literal root_3644345 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1377.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1378.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1377.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1378.covered
#print axioms cover_3644345

def root_3644340 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3644340_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3644340_right_fuel : Nat := 1
def small_3644340_right_count : Nat := 1
def small_3644340_right_encoded : String := "00000004"
theorem small_3644340_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3644340_right_root small_3644340_right_fuel small_3644340_right_count small_3644340_right_encoded = true := by
  decide +kernel
theorem small_3644340_right_covered : CoveredBy scale carrier boxes small_3644340_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3644340_right_root small_3644340_right_fuel small_3644340_right_count small_3644340_right_encoded small_3644340_right_checked

theorem cover_3644340 : CoveredBy scale carrier boxes root_3644340 := by
  apply coveredBy_split_literal root_3644340 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3644345 small_3644340_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3644345
  · exact small_3644340_right_covered
#print axioms cover_3644340

def root_3644339 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3644339_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3644339_right_fuel : Nat := 24
def small_3644339_right_count : Nat := 343
def small_3644339_right_encoded : String := "1151E9090000000408A91301120700F608A91303120700F808A91305120701040000000208A912FD00000009120700FC050000FE135D810904548A01138670F600000009000000000000000600000004000000060000000312073D0408A912FD00000009120700FC050000FE135D810904548A010000000900000009000000040000000900000003000000020000000112073CF80000000108A91305120701040000000208A912FD00000009120700FC050000FE135D810904548A01138670F60CFD9C030F34D0F800000009000000010F350CF80000000104548A0513867104000000020000000900000009000000001386ACF6000000000CFD9C030F34D0F800000009000000010F350CF80000000104548A051386710400000002000000090000000900000004135D450900000004000000090000000312073D0408A912FD00000009120700FC050000FE135D810904548A01138670F60CFD9C030F34D0F800000009000000010F350CF8000000010CFD9C050F34D104000000020000000900000009000000001386ACF6000000000CFD9C030F34D0F800000009000000010F350CF8000000010CFD9C050F34D10400000002000000090000000900000004135D45090000000404548A01138670F600000009000000000000000900000003000000020000000012073CF60000000008A91303120700F808A91305120701040000000208A912FD00000009120700FC050000FE135D81090CFD9C010F34D0F600000006000000000000000600000004000000060000000312073D0408A912FD00000009120700FC050000FE135D81090CFD9C010F34D0F604548A030000000900000009000000000F350CF60000000004548A03138670F80CFD9C050000000600000009000000011386ACF8000000010CFD9C050F34D10400000002000000090000000900000004135D4509000000040CFD9C010F34D0F600000009000000000000000900000003000000020000000112073CF80000000108A91305120701040000000208A912FD00000009120700FC050000FE135D81090CFD9C010F34D0F60CFD9C030F34D0F800000009000000010F350CF80000000104548A0513867104000000020000000900000009000000000F350CF6000000000CFD9C030F34D0F804548A050000000600000009000000010F350CF80000000104548A051386710400000002045489FD00000009138670FC0C9A86F6000000090F875101000000000C9A86F8000000060F8751030000000100000009000000031386AD04045489FD00000009138670FC0C9A86F6000000090F8751010000000000000009000000030000000200000004135D4509000000040CFD9C010F34D0F60000000900000000000000090000000312073D0408A912FD12073CFC00000003050000FE135D81090CFD9C010F34D0F60000000900000000000000090000000400000009120700FC050000FE135D81090CFD9C010F34D0F60CFD9C030F34D0F80CFD9C050F34D104000000020000000900000009000000010F350CF8000000010CFD9C050F34D10400000002000000090F350D04045489FD000000090000000500000002000000000F350CF6000000000CFD9C030F34D0F80CFD9C050F34D10400000002000000090F350D04045489FD000000090000000500000002000000010F350CF8000000010CFD9C050F34D10400000002045489FD00000009138670FC0C9A86F6000000090F8751010000000000000005000000030F350D040000000A0000000200000004135D4509000000040CFD9C010F34D0F60CFD9C030000000900000009000000000F350CF6000000000CFD9C030F34D0F800000009000000010F350CF8000000010CFD9C050F34D1040000000200000009000000050000000300000002"
theorem small_3644339_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3644339_right_root small_3644339_right_fuel small_3644339_right_count small_3644339_right_encoded = true := by
  decide +kernel
theorem small_3644339_right_covered : CoveredBy scale carrier boxes small_3644339_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3644339_right_root small_3644339_right_fuel small_3644339_right_count small_3644339_right_encoded small_3644339_right_checked

theorem cover_3644339 : CoveredBy scale carrier boxes root_3644339 := by
  apply coveredBy_split_literal root_3644339 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3644340 small_3644339_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3644340
  · exact small_3644339_right_covered
#print axioms cover_3644339

def root_3644333 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3644333_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3644333_left_fuel : Nat := 1
def small_3644333_left_count : Nat := 1
def small_3644333_left_encoded : String := "00000003"
theorem small_3644333_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3644333_left_root small_3644333_left_fuel small_3644333_left_count small_3644333_left_encoded = true := by
  decide +kernel
theorem small_3644333_left_covered : CoveredBy scale carrier boxes small_3644333_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3644333_left_root small_3644333_left_fuel small_3644333_left_count small_3644333_left_encoded small_3644333_left_checked

theorem cover_3644333 : CoveredBy scale carrier boxes root_3644333 := by
  apply coveredBy_split_literal root_3644333 small_3644333_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3644339 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3644333_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3644339
#print axioms cover_3644333

def root_3644332 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3644332_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3644332_right_fuel : Nat := 19
def small_3644332_right_count : Nat := 141
def small_3644332_right_encoded : String := "1151E8FD0A0000FE1152250908A91301120700F608A91303120700F808A913050000000512073D0408A913090000000500000009000000020000000112073CF80000000108A9130512070104000000020000000512073D0408A913090000000A12073CFE0000000400000009000000020000000012073CF60000000008A91303120700F808A9130512070104000000020000000512073D0408A91309120700FE050000FC135D80FD000000030CFD9C01000000050F350CF60000000004548A03000000051386ACF8000000010CFD9C050000000500000009000000050000000412073CFE0000000400000009000000020000000112073CF80000000108A91305120701040000000208A913090000000512073CFE00000004050000FC135D80FD000000030CFD9C0100000005000000090000000512073D0408A91309120700FE050000FC135D80FD000000030CFD9C010000000A0F350CF6000000000CFD9C030F34D0F80000000A000000010000000A135D44FD0CFD9C01000000050F350CF6000000000CFD9C03000000050000000A000000030000000412073CFE00000004050000FC135D80FD000000030CFD9C010F34D0F600000009000000000F350CF6000000000CFD9C030F34D0F8000000090000000100000009135D44FD0CFD9C010F34D0F60000000900000000000000090000000300000002000000041151E9090000000408A91301120700F6000000090000000012073CF60000000008A91303120700F800000009000000010000000900000003"
theorem small_3644332_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3644332_right_root small_3644332_right_fuel small_3644332_right_count small_3644332_right_encoded = true := by
  decide +kernel
theorem small_3644332_right_covered : CoveredBy scale carrier boxes small_3644332_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3644332_right_root small_3644332_right_fuel small_3644332_right_count small_3644332_right_encoded small_3644332_right_checked

theorem cover_3644332 : CoveredBy scale carrier boxes root_3644332 := by
  apply coveredBy_split_literal root_3644332 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3644333 small_3644332_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3644333
  · exact small_3644332_right_covered
#print axioms cover_3644332

def root_3644327 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3644327_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3644327_right_fuel : Nat := 1
def small_3644327_right_count : Nat := 1
def small_3644327_right_encoded : String := "00000002"
theorem small_3644327_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3644327_right_root small_3644327_right_fuel small_3644327_right_count small_3644327_right_encoded = true := by
  decide +kernel
theorem small_3644327_right_covered : CoveredBy scale carrier boxes small_3644327_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3644327_right_root small_3644327_right_fuel small_3644327_right_count small_3644327_right_encoded small_3644327_right_checked

theorem cover_3644327 : CoveredBy scale carrier boxes root_3644327 := by
  apply coveredBy_split_literal root_3644327 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3644332 small_3644327_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3644332
  · exact small_3644327_right_covered
#print axioms cover_3644327

def root_3643657 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3643657_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3643657_left_fuel : Nat := 22
def small_3643657_left_count : Nat := 313
def small_3643657_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0000FE1152250908A91301120700F608A91303120700F808A912FD12073CFC0000000308A913090000000A12073CFE00000004050001040000000A00000009120700FC08A913090000000A12073CFE00000004050001040000000A135D810504548A01000000070000000A00000002000000030000000112073CF80000000108A912FD12073CFC000000030000000A120700FC08A913090000000A12073CFE0000000405000104135D4505000000020000000A135D810504548A01138670F60CFD9C030000000A0000000A000000000000000A00000002000000030000000012073CF60000000008A91303120700F808A912FD12073CFC0000000308A91309120700FE050001040000000A135D81050CFD9C010000000A0000000A000000020000000412073CFE0000000405000104135D4505000000020CFD9C010000000A0000000A135D81050CFD9C010F34D0F60000000A000000000F350CF60000000004548A03138670F80CFD9BFD000000090F34D0FC0000000A00000003000000011386ACF8000000010CFD9BFD000000090000000A00000002120700FC08A913090000000A12073CFE00000004050001040000000A0000000A000000030000000112073CF80000000108A912FD12073CFC0000000308A913090000000A12073CFE000000040000000A0000000A000000041151E9090000000408A91301120700F608A91303120700F808A912FD00000009120700FC050001040000000900000007000000030000000112073CF80000000108A912FD12073CFC0000000300000009120700FC05000104135D450500000002050000FE135D810904548A01138670F60CFD9C030000000700000005000000000000000A00000004135D45090000000400000009135D8105050000FE135D810904548A01138670F60CFD9C030000000900000009000000001386ACF6000000000CFD9C03000000090000000900000004135D4509000000040000000900000002000000030000000012073CF60000000008A91303120700F808A912FD12073CFC0000000300000009120700FC05000104135D450500000002050000FE0000000A135D45090000000400000009135D8105050000FE135D81090CFD9C010F34D0F600000007000000000000000A00000004135D4509000000040000000900000002000000030000000112073CF80000000108A912FD12073CFC0000000305000104135D4505000000020000000A135D8105050000FE135D81090000000A000000040000000900000002120700FC05000104135D450500000002050000FE0000000A135D45090000000400000005135D8105050000FE135D81090CFD9C010F34D0F60000000A000000000000000500000004135D4509000000040CFD9C010F34D0F600000009000000000000000500000002000000031151E8FD0A0000FE1152250908A91301120700F608A91303120700F80000000A000000010000000A0000000012073CF60000000008A91303120700F808A91309120700FE050001040000000A135D8105050000FC135D80FD000000030000000A0000000A000000020000000412073CFE00000004000000090000000112073CF80000000108A913090000000A12073CFE000000040500010400000008135D81050000000A00000002000000041151E9090000000408A91301120700F600000009000000000000000900000003"
theorem small_3643657_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3643657_left_root small_3643657_left_fuel small_3643657_left_count small_3643657_left_encoded = true := by
  decide +kernel
theorem small_3643657_left_covered : CoveredBy scale carrier boxes small_3643657_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3643657_left_root small_3643657_left_fuel small_3643657_left_count small_3643657_left_encoded small_3643657_left_checked

theorem cover_3643657 : CoveredBy scale carrier boxes root_3643657 := by
  apply coveredBy_split_literal root_3643657 small_3643657_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3644327 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3643657_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3644327
#print axioms cover_3643657

def root_3643652 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3643652_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3643652_right_fuel : Nat := 1
def small_3643652_right_count : Nat := 1
def small_3643652_right_encoded : String := "00000001"
theorem small_3643652_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3643652_right_root small_3643652_right_fuel small_3643652_right_count small_3643652_right_encoded = true := by
  decide +kernel
theorem small_3643652_right_covered : CoveredBy scale carrier boxes small_3643652_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3643652_right_root small_3643652_right_fuel small_3643652_right_count small_3643652_right_encoded small_3643652_right_checked

theorem cover_3643652 : CoveredBy scale carrier boxes root_3643652 := by
  apply coveredBy_split_literal root_3643652 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3643657 small_3643652_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3643657
  · exact small_3643652_right_covered
#print axioms cover_3643652

def root_3643651 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3643651 : CoveredBy scale carrier boxes root_3643651 := by
  apply coveredBy_split_literal root_3643651 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3643652 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1379.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3643652
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1379.covered
#print axioms cover_3643651

def root_3643646 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3643646_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3643646_right_fuel : Nat := 1
def small_3643646_right_count : Nat := 1
def small_3643646_right_encoded : String := "00000000"
theorem small_3643646_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3643646_right_root small_3643646_right_fuel small_3643646_right_count small_3643646_right_encoded = true := by
  decide +kernel
theorem small_3643646_right_covered : CoveredBy scale carrier boxes small_3643646_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3643646_right_root small_3643646_right_fuel small_3643646_right_count small_3643646_right_encoded small_3643646_right_checked

theorem cover_3643646 : CoveredBy scale carrier boxes root_3643646 := by
  apply coveredBy_split_literal root_3643646 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3643651 small_3643646_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3643651
  · exact small_3643646_right_covered
#print axioms cover_3643646

def root_3654415 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3654415 : CoveredBy scale carrier boxes root_3654415 := by
  apply coveredBy_split_literal root_3654415 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1382.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1383.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1382.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1383.covered
#print axioms cover_3654415

def root_3654409 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3654409_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3654409_left_fuel : Nat := 1
def small_3654409_left_count : Nat := 1
def small_3654409_left_encoded : String := "00000001"
theorem small_3654409_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3654409_left_root small_3654409_left_fuel small_3654409_left_count small_3654409_left_encoded = true := by
  decide +kernel
theorem small_3654409_left_covered : CoveredBy scale carrier boxes small_3654409_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3654409_left_root small_3654409_left_fuel small_3654409_left_count small_3654409_left_encoded small_3654409_left_checked

theorem cover_3654409 : CoveredBy scale carrier boxes root_3654409 := by
  apply coveredBy_split_literal root_3654409 small_3654409_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3654415 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3654409_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3654415
#print axioms cover_3654409

def root_3653105 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3653105 : CoveredBy scale carrier boxes root_3653105 := by
  apply coveredBy_split_literal root_3653105 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1381.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3654409 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1381.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3654409
#print axioms cover_3653105

def root_3653100 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3653100_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3653100_right_fuel : Nat := 1
def small_3653100_right_count : Nat := 1
def small_3653100_right_encoded : String := "00000004"
theorem small_3653100_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3653100_right_root small_3653100_right_fuel small_3653100_right_count small_3653100_right_encoded = true := by
  decide +kernel
theorem small_3653100_right_covered : CoveredBy scale carrier boxes small_3653100_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3653100_right_root small_3653100_right_fuel small_3653100_right_count small_3653100_right_encoded small_3653100_right_checked

theorem cover_3653100 : CoveredBy scale carrier boxes root_3653100 := by
  apply coveredBy_split_literal root_3653100 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3653105 small_3653100_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3653105
  · exact small_3653100_right_covered
#print axioms cover_3653100

def root_3653099 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3653099 : CoveredBy scale carrier boxes root_3653099 := by
  apply coveredBy_split_literal root_3653099 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3653100 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1384.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3653100
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1384.covered
#print axioms cover_3653099

def root_3653093 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3653093_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3653093_left_fuel : Nat := 1
def small_3653093_left_count : Nat := 1
def small_3653093_left_encoded : String := "00000003"
theorem small_3653093_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3653093_left_root small_3653093_left_fuel small_3653093_left_count small_3653093_left_encoded = true := by
  decide +kernel
theorem small_3653093_left_covered : CoveredBy scale carrier boxes small_3653093_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3653093_left_root small_3653093_left_fuel small_3653093_left_count small_3653093_left_encoded small_3653093_left_checked

theorem cover_3653093 : CoveredBy scale carrier boxes root_3653093 := by
  apply coveredBy_split_literal root_3653093 small_3653093_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3653099 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3653093_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3653099
#print axioms cover_3653093

def root_3653092 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3653092_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3653092_right_fuel : Nat := 21
def small_3653092_right_count : Nat := 205
def small_3653092_right_encoded : String := "1151E8FD0A0000FE1152250908A91303120700F808A913050000000512073D0408A913090000000512073CFE00000004050000F6135D8101050000FC135D80FD0000000304548A0300000009000000090000000900000000135D450100000000050000FC135D80FD0000000304548A03000000051386ACF8000000010CFD9C050000000500000009135D44FD0000000500000003000000020000000112073CF80000000108A91305120701040000000208A913090000000512073CFE00000004050000F6135D81010000000500000000135D450100000000050000FC00000005135D44FD000000050000000312073D0408A91309120700FE050000F6135D8101050000FC135D80FD000000030CFD9C030F34D0F80CFD9C05000000050F350D040000000A00000002000000010F350CF8000000010000000A135D44FD0CFD9C03000000050F350CF800000001000000050000000300000000135D450100000000050000FC135D80FD000000030CFD9C03000000050F350CF8000000010CFD9C050000000500000006135D44FD00000005000000030000000412073CFE00000004050000F6135D8101050000FC135D80FD000000030CFD9C030F34D0F800000009000000010F350CF8000000010CFD9C050F34D104000000020000000900000009135D44FD0CFD9C030F34D0F80000000900000001000000090000000300000000135D450100000000050000FC135D80FD000000030CFD9C030F34D0F80CFD9C050F34D10400000002000000050F350D040CFD9C090F34D0FE00000009000000040000000900000002000000010F350CF8000000010CFD9C050F34D104000000020CFD9C0900000005000000090F350D040CFD9C090F34D0FE0C9A86F80000000600000008000000040F350CFE000000040000000800000002135D44FD0CFD9C030F34D0F80CFD9C050000000500000009000000010F350CF8000000010CFD9C050F34D10400000002000000090F350D040CFD9C090F34D0FE0C9A86F800000006000000080000000400000008000000020000000300000002000000041151E9090000000408A91303120700F8000000090000000112073CF80000000108A913051207010400000002000000090000000900000003"
theorem small_3653092_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3653092_right_root small_3653092_right_fuel small_3653092_right_count small_3653092_right_encoded = true := by
  decide +kernel
theorem small_3653092_right_covered : CoveredBy scale carrier boxes small_3653092_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3653092_right_root small_3653092_right_fuel small_3653092_right_count small_3653092_right_encoded small_3653092_right_checked

theorem cover_3653092 : CoveredBy scale carrier boxes root_3653092 := by
  apply coveredBy_split_literal root_3653092 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3653093 small_3653092_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3653093
  · exact small_3653092_right_covered
#print axioms cover_3653092

def root_3653087 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3653087_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3653087_right_fuel : Nat := 1
def small_3653087_right_count : Nat := 1
def small_3653087_right_encoded : String := "00000002"
theorem small_3653087_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3653087_right_root small_3653087_right_fuel small_3653087_right_count small_3653087_right_encoded = true := by
  decide +kernel
theorem small_3653087_right_covered : CoveredBy scale carrier boxes small_3653087_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3653087_right_root small_3653087_right_fuel small_3653087_right_count small_3653087_right_encoded small_3653087_right_checked

theorem cover_3653087 : CoveredBy scale carrier boxes root_3653087 := by
  apply coveredBy_split_literal root_3653087 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3653092 small_3653087_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3653092
  · exact small_3653087_right_covered
#print axioms cover_3653087

def root_3651895 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3651895 : CoveredBy scale carrier boxes root_3651895 := by
  apply coveredBy_split_literal root_3651895 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1380.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3653087 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1380.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3653087
#print axioms cover_3651895

def root_3651890 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3651890_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3651890_right_fuel : Nat := 1
def small_3651890_right_count : Nat := 1
def small_3651890_right_encoded : String := "00000001"
theorem small_3651890_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3651890_right_root small_3651890_right_fuel small_3651890_right_count small_3651890_right_encoded = true := by
  decide +kernel
theorem small_3651890_right_covered : CoveredBy scale carrier boxes small_3651890_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3651890_right_root small_3651890_right_fuel small_3651890_right_count small_3651890_right_encoded small_3651890_right_checked

theorem cover_3651890 : CoveredBy scale carrier boxes root_3651890 := by
  apply coveredBy_split_literal root_3651890 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3651895 small_3651890_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3651895
  · exact small_3651890_right_covered
#print axioms cover_3651890

def root_3651889 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3651889_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3651889_right_fuel : Nat := 31
def small_3651889_right_count : Nat := 485
def small_3651889_right_encoded : String := "1151E903000000010A0001041151E905000000020A0000FC115224FD000000030A0000FE1152250908A912FD12073CFC000000030000000A0000000A000000040000000A1151E8FD0A0000FE1152250908A913090000000800000008000000040000000800000003115225050A0000FC115224FD000000030A0000FE1152250908A91305120701040000000208A912FD12073CFC0000000308A91309120700FE050000F60000000A135D450100000000050000F80000000A0000000A0000000412073CFE00000004050000F6135D8101050000F8135D810304548A0513867104000000020CFD9BFD0F350CFC000000030000000A0000000A1386AD040000000A00000002000000010000000A00000000135D450100000000050000F8135D810304548A0513867104000000020CFD9BFD0F350CFC000000030CFD9C09000000050F350CFE000000040C9A86FC000000070000000A0F34D0FC0CFD9C090000000A0F350CFE000000040000000A000000031386AD040CFD9BFD0F350CFC000000030CFD9C090000000A0F350CFE000000040C9A86FC0000000A0000000A0F34D0FC0000000A000000030000000200000001135D45030000000104548A0513867104000000020CFD9BFD000000070000000A1386AD040000000A00000002120700FC08A913090000000A12073CFE00000004050000F6135D8101050000F8135D81030000000A000000010000000A00000000135D450100000000050000F8135D810304548A051386710400000002045489FD0000000A0000000A0000000A000000010000000A0000000312073D0408A912FD12073CFC0000000308A91309120700FE050000F60000000A135D450100000000050000F80000000A0000000A0000000412073CFE00000004050000F6135D8101050000F8135D81030CFD9C050000000A0000000A000000010000000A00000000135D450100000000050000F8135D81030CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9C090000000A0F350CFE00000004000000080000000A0F350D040CFD9BFD0F350CFC000000030000000A0000000A0000000200000001135D4503000000010CFD9C050000000A0000000A120700FC0000000A0000000300000002000000041151E9090000000408A91305120701040000000208A912FD12073CFC00000003050000F6135D8101050000F8000000090000000800000000135D450100000000050000F8135D8103050000FE135D810904548A0513867104000000020CFD9BFD000000090F34D0FC028000F60000000913D7B10100000000078000F800000009000000080000000300000009000000040000000800000001135D45030000000100000008120700FC050000F6135D8101050000F8135D8103050000FE135D810904548A051386710400000002045489FD1386ACFC00000003078000F600000009128A4101000000000000000A138670FC078000F6128A7D01078000F8128A7D030000000A000000010000000A00000000128A410100000000078000F8128A7D030000000A000000010000000A000000031386AD04045489FD0000000A000000050000000200000004135D45090000000404548A051386710400000002045489FD00000008000000050000000500000001135D450300000001050000FE0000000A0000000800000000135D450100000000050000F8135D8103050000FE135D810904548A051386710400000002045489FD1386ACFC00000003028000F613D7ED01078000F8128A7D03078000FE0000000A00000009000000010000000A0000000013D7B10100000000078000F8128A7D03078000FE128A7D09022A458513E1C50400000002067ECE7D000000070000000A0000000A0000000400000009000000010000000A000000050000000500000004135D45090000000404548A051386710400000002045489FD00000008000000050000000500000001135D450300000001050000FE0000000A000000080000000312073D0408A912FD12073CFC00000003050000F6000000080000000800000005000000021151E8FD0A0000FE1152250908A91305120701040000000208A91309120700FE000000050000000412073CFE00000004050000F6135D8101050000F8135D8103050000FC0000000A0000000A000000010000000A00000000135D450100000000050000F8135D8103050000FC135D80FD0000000304548A05000000051386AD040CFD9C09000000050F350CFE000000040000000800000002135D44FD04548A05000000051386AD040000000A000000020000000300000001135D450300000001050000FC135D80FD000000030000000A0000000A12073D0408A91309120700FE050000F60000000A135D450100000000050000F8135D8103050000FC000000060000000A00000001135D4503000000010000000A0000000412073CFE00000004050000F6135D8101050000F8135D8103050000FC000000080000000A000000010000000800000000135D450100000000050000F8135D8103050000FC135D80FD000000030CFD9C050F34D104000000020CFD9C09000000080000000800000008135D44FD0CFD9C050000000A0000000800000003000000010000000800000002000000041151E9090000000408A91305120701040000000200000009000000080000000300000002"
theorem small_3651889_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3651889_right_root small_3651889_right_fuel small_3651889_right_count small_3651889_right_encoded = true := by
  decide +kernel
theorem small_3651889_right_covered : CoveredBy scale carrier boxes small_3651889_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3651889_right_root small_3651889_right_fuel small_3651889_right_count small_3651889_right_encoded small_3651889_right_checked

theorem cover_3651889 : CoveredBy scale carrier boxes root_3651889 := by
  apply coveredBy_split_literal root_3651889 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3651890 small_3651889_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3651890
  · exact small_3651889_right_covered
#print axioms cover_3651889

def root_3651883 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3651883_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3651883_left_fuel : Nat := 1
def small_3651883_left_count : Nat := 1
def small_3651883_left_encoded : String := "00000000"
theorem small_3651883_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3651883_left_root small_3651883_left_fuel small_3651883_left_count small_3651883_left_encoded = true := by
  decide +kernel
theorem small_3651883_left_covered : CoveredBy scale carrier boxes small_3651883_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3651883_left_root small_3651883_left_fuel small_3651883_left_count small_3651883_left_encoded small_3651883_left_checked

theorem cover_3651883 : CoveredBy scale carrier boxes root_3651883 := by
  apply coveredBy_split_literal root_3651883 small_3651883_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3651889 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3651883_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3651889
#print axioms cover_3651883

def root_3643645 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3643645 : CoveredBy scale carrier boxes root_3643645 := by
  apply coveredBy_split_literal root_3643645 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3643646 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3651883 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3643646
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3651883
#print axioms cover_3643645

def root_3642265 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3642265 : CoveredBy scale carrier boxes root_3642265 := by
  apply coveredBy_split_literal root_3642265 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1376.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3643645 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1376.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3643645
#print axioms cover_3642265

def root_3660402 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3660402 : CoveredBy scale carrier boxes root_3660402 := by
  apply coveredBy_split_literal root_3660402 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1385.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1386.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1385.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1386.covered
#print axioms cover_3660402

def root_3642264 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3642264 : CoveredBy scale carrier boxes root_3642264 := by
  apply coveredBy_split_literal root_3642264 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3642265 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3660402 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3642265
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3660402
#print axioms cover_3642264

def root_3666507 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3666507 : CoveredBy scale carrier boxes root_3666507 := by
  apply coveredBy_split_literal root_3666507 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1388.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1389.root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1388.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1389.covered
#print axioms cover_3666507

def root_3666501 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3666501_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3666501_left_fuel : Nat := 1
def small_3666501_left_count : Nat := 1
def small_3666501_left_encoded : String := "00000002"
theorem small_3666501_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3666501_left_root small_3666501_left_fuel small_3666501_left_count small_3666501_left_encoded = true := by
  decide +kernel
theorem small_3666501_left_covered : CoveredBy scale carrier boxes small_3666501_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3666501_left_root small_3666501_left_fuel small_3666501_left_count small_3666501_left_encoded small_3666501_left_checked

theorem cover_3666501 : CoveredBy scale carrier boxes root_3666501 := by
  apply coveredBy_split_literal root_3666501 small_3666501_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3666507 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_3666501_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3666507
#print axioms cover_3666501

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090
