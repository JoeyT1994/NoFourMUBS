import TaoBundleAssembly0034
import TaoBundleChunkBatch0143
import TaoBundleChunkBatch0147
import TaoBundleChunkBatch0148
import TaoBundleChunkBatch0149
import TaoBundleChunkBatch0150
import TaoBundleChunkBatch0151
import TaoBundleChunkBatch0152
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035
def root_1499049 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1499049_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1499049_left_fuel : Nat := 21
def small_1499049_left_count : Nat := 275
def small_1499049_left_encoded : String := "1386AD020CFD9BFB0F350D040C9A86F60F878CF7000000000C9A87040F8750FB07800106128A410700000003078000FE128A7CFF00000004067ECE790000000812EA5902000000010DE7C9F60E6014F700000000000000080E5FD8F70B4D4404108010FB00000006000000020000000800000000128A40FF067ECE790000000812EA5902000000010DE7C9F60E6014F700000000000000060000000600000004128A7D07078000FE128A7CFF00000004067ECE7912EA95020DE7C9F60E6014F70000000000000006000000060000000112EA5902000000010DE7C9F60E6014F7000000000000000600000006128A40FF067ECE7900000006000000060000000400000003000000020F878CFB0000000207800106128A41070000000300000008128A7D07078000FE128A7CFF00000004067ECE790000000812EA5902000000010DE7C9F60E6014F700000000000000080E5FD8F70DE7CA040E5FD8FB08C001060000000800000006000000020000000800000000128A40FF067ECE790000000812EA5902000000010DE7C9F6000000080E5FD8F7000000050000000000000004000000030F8750F70C9A87040F8750FB07800106128A410700000003078000FE128A7CFF00000004067ECE7912EA95020B4D43F610804CF7000000000B4D44040000000600000008000000070000000112EA5902000000010B4D43F610804CF7000000000B4D4404108010FB000000060000000210804CFB000000020640010612FF71070000000308C000FE000000080000000612FFAD070000000600000003108010F70B4D4404108010FB000000060000000210804CFB0000000206400106000000070000000500000000128A40FF067ECE790000000512EA5902000000010B4D43F610804CF700000000000000060000000500000004128A7D07078000FE128A7CFF00000004067ECE790000000512EA5902000000010B4D43F610804CF70000000000000006000000050000000500000003000000020F878CFB0000000207800106128A410700000003078000FE128A7CFF00000004067ECE790000000812EA5902000000010B4D43F610804CF70000000000000008108010F70DE7CA040E5FD8FB064001060000000700000005000000020000000800000000128A40FF067ECE790000000512EA5902000000010B4D43F610804CF700000000000000080000000500000004128A7D07078000FE128A7CFF00000004067ECE790000000512EA5902000000010B4D43F610804CF7000000000DE7CA040E5FD8FB00000005000000020000000500000005000000050000000300000000000000020F34D104000000020C9A86F60F878CF700000000000000080F8750F707800106128A41070000000300000008128A7D07078000FE128A7CFF00000004067ECE790000000812EA5902000000010AD3577B10D13D040B4D43F610804CF70000000000000008000000050000000210D101040000000200000008128A40FF0000000500000004000000030000000000000001"
theorem small_1499049_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1499049_left_root small_1499049_left_fuel small_1499049_left_count small_1499049_left_encoded = true := by
  decide +kernel
theorem small_1499049_left_covered : CoveredBy scale carrier boxes small_1499049_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1499049_left_root small_1499049_left_fuel small_1499049_left_count small_1499049_left_encoded small_1499049_left_checked

theorem cover_1499049 : CoveredBy scale carrier boxes root_1499049 := by
  apply coveredBy_split_literal root_1499049 small_1499049_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1499641 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_1499049_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1499641
#print axioms cover_1499049

def root_1499043 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1499043_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1499043_left_fuel : Nat := 1
def small_1499043_left_count : Nat := 1
def small_1499043_left_encoded : String := "00000000"
theorem small_1499043_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1499043_left_root small_1499043_left_fuel small_1499043_left_count small_1499043_left_encoded = true := by
  decide +kernel
theorem small_1499043_left_covered : CoveredBy scale carrier boxes small_1499043_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1499043_left_root small_1499043_left_fuel small_1499043_left_count small_1499043_left_encoded small_1499043_left_checked

theorem cover_1499043 : CoveredBy scale carrier boxes root_1499043 := by
  apply coveredBy_split_literal root_1499043 small_1499043_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1499049 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_1499043_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1499049
#print axioms cover_1499043

def root_1499042 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1499042_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1499042_right_fuel : Nat := 17
def small_1499042_right_count : Nat := 101
def small_1499042_right_encoded : String := "0F34D0F6045489F91386AD020CFD9BFB0F350D040C9A87040F8750FB0780010600000008128A7D07078000FE00000008128A40FF0AD35777000000080000000600000004000000030000000200000008000000020F34D10400000002000000080000000113867102000000010CFD9BFB0F350D040C9A87040F8750FB07800106128A410700000003078000FE128A7CFF000000040AD3577710D13CF600000000022A45790000000813E1C502000000010B4D4404000000050000000900000008128A40FF0AD3577710D13CF600000000022A457900000006000000060000000600000004128A7D07078000FE128A7CFF000000040AD3577710D13CF600000000022A457913E2010200000006000000010000000610D100F60000000900000000128A40FF000000060000000400000003000000020F878CFB0000000207800106128A410700000003078000FE0000000800000008128A7D07078000FE128A7CFF000000040AD3577710D13CF60000000000000009000000080000000900000003000000020F34D104000000020000000800000000"
theorem small_1499042_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1499042_right_root small_1499042_right_fuel small_1499042_right_count small_1499042_right_encoded = true := by
  decide +kernel
theorem small_1499042_right_covered : CoveredBy scale carrier boxes small_1499042_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1499042_right_root small_1499042_right_fuel small_1499042_right_count small_1499042_right_encoded small_1499042_right_checked

theorem cover_1499042 : CoveredBy scale carrier boxes root_1499042 := by
  apply coveredBy_split_literal root_1499042 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1499043 small_1499042_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1499043
  · exact small_1499042_right_covered
#print axioms cover_1499042

def root_1499036 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1499036_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1499036_left_fuel : Nat := 1
def small_1499036_left_count : Nat := 1
def small_1499036_left_encoded : String := "00000004"
theorem small_1499036_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1499036_left_root small_1499036_left_fuel small_1499036_left_count small_1499036_left_encoded = true := by
  decide +kernel
theorem small_1499036_left_covered : CoveredBy scale carrier boxes small_1499036_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1499036_left_root small_1499036_left_fuel small_1499036_left_count small_1499036_left_encoded small_1499036_left_checked

theorem cover_1499036 : CoveredBy scale carrier boxes root_1499036 := by
  apply coveredBy_split_literal root_1499036 small_1499036_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1499042 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_1499036_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1499042
#print axioms cover_1499036

def root_1499035 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1499035_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1499035_right_fuel : Nat := 18
def small_1499035_right_count : Nat := 141
def small_1499035_right_encoded : String := "135D44FF0CFD9BF70F350CF600000000045489F91386AD020CFD9BFB0F350D040C9A86F60F878CF7000000000C9A87040F8750FB07800106128A410700000003028000FE13D7ECFF00000004067ECE79000000060000000600000006128A7D07028000FE000000060000000500000003000000020F878CFB0000000207800106128A41070000000300000008128A7D0700000005000000030F8750F70C9A87040F8750FB00000005000000020000000500000000000000020F34D104000000020C9A86F60F878CF700000000000000080F8750F700000005000000000000000113867102000000010CFD9BFB0F350D040C9A86F60F878CF7000000000C9A87040F8750FB07800106128A4107000000030000000A00000006000000020F878CFB00000002000000090F8750F70C9A87040F8750FB07800106128A410700000003028000FE000000060000000500000005000000020F878CFB0000000207800106128A410700000003028000FE13D7ECFF00000004022A45790000000513E1C5020000000100000005000000050000000500000000000000020F34D104000000020C9A86F6000000090F8750F7078001060000000900000005000000000F34D0F6045489F91386AD020CFD9BFB0F350D040C9A87040F8750FB07800106128A41070000000300000008128A7D07028000FE0000000600000006000000030000000200000008000000020F34D10400000002000000080000000113867102000000010CFD9BFB00000009000000090000000000000004"
theorem small_1499035_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1499035_right_root small_1499035_right_fuel small_1499035_right_count small_1499035_right_encoded = true := by
  decide +kernel
theorem small_1499035_right_covered : CoveredBy scale carrier boxes small_1499035_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1499035_right_root small_1499035_right_fuel small_1499035_right_count small_1499035_right_encoded small_1499035_right_checked

theorem cover_1499035 : CoveredBy scale carrier boxes root_1499035 := by
  apply coveredBy_split_literal root_1499035 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1499036 small_1499035_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1499036
  · exact small_1499035_right_covered
#print axioms cover_1499035

def root_1499030 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1499030_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1499030_right_fuel : Nat := 1
def small_1499030_right_count : Nat := 1
def small_1499030_right_encoded : String := "00000003"
theorem small_1499030_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1499030_right_root small_1499030_right_fuel small_1499030_right_count small_1499030_right_encoded = true := by
  decide +kernel
theorem small_1499030_right_covered : CoveredBy scale carrier boxes small_1499030_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1499030_right_root small_1499030_right_fuel small_1499030_right_count small_1499030_right_encoded small_1499030_right_checked

theorem cover_1499030 : CoveredBy scale carrier boxes root_1499030 := by
  apply coveredBy_split_literal root_1499030 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1499035 small_1499030_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1499035
  · exact small_1499030_right_covered
#print axioms cover_1499030

def root_1496726 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1496726 : CoveredBy scale carrier boxes root_1496726 := by
  apply coveredBy_split_literal root_1496726 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0586.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1499030 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0586.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1499030
#print axioms cover_1496726

def root_1496721 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1496721_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1496721_right_fuel : Nat := 1
def small_1496721_right_count : Nat := 1
def small_1496721_right_encoded : String := "00000002"
theorem small_1496721_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1496721_right_root small_1496721_right_fuel small_1496721_right_count small_1496721_right_encoded = true := by
  decide +kernel
theorem small_1496721_right_covered : CoveredBy scale carrier boxes small_1496721_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1496721_right_root small_1496721_right_fuel small_1496721_right_count small_1496721_right_encoded small_1496721_right_checked

theorem cover_1496721 : CoveredBy scale carrier boxes root_1496721 := by
  apply coveredBy_split_literal root_1496721 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1496726 small_1496721_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1496726
  · exact small_1496721_right_covered
#print axioms cover_1496721

def root_1496720 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1496720_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1496720_right_fuel : Nat := 19
def small_1496720_right_count : Nat := 67
def small_1496720_right_encoded : String := "120701040000000205000106135D450700000003050000FE00000008135D44FF0000000800000004135D8107050000FE135D80FF000000040CFD9BF70F350CF600000000045489F9000000081386710200000001045489FB1386AD040C9A86F60F878CF700000000000000090F8750F707800106128A410700000003078000FE0000000800000008128A7D07078000FE128A7CFF00000004022A457900000008000000090000000900000003000000000000000213867104000000020C9A86F6000000080F8750F70780010600000008128A7D0700000009000000030000000000000008135D44FF0CFD9BF70F350CF600000000045489F90000000800000009000000080000000400000003"
theorem small_1496720_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1496720_right_root small_1496720_right_fuel small_1496720_right_count small_1496720_right_encoded = true := by
  decide +kernel
theorem small_1496720_right_covered : CoveredBy scale carrier boxes small_1496720_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1496720_right_root small_1496720_right_fuel small_1496720_right_count small_1496720_right_encoded small_1496720_right_checked

theorem cover_1496720 : CoveredBy scale carrier boxes root_1496720 := by
  apply coveredBy_split_literal root_1496720 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1496721 small_1496720_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1496721
  · exact small_1496720_right_covered
#print axioms cover_1496720

def root_1496714 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1496714_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1496714_left_fuel : Nat := 1
def small_1496714_left_count : Nat := 1
def small_1496714_left_encoded : String := "00000001"
theorem small_1496714_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1496714_left_root small_1496714_left_fuel small_1496714_left_count small_1496714_left_encoded = true := by
  decide +kernel
theorem small_1496714_left_covered : CoveredBy scale carrier boxes small_1496714_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1496714_left_root small_1496714_left_fuel small_1496714_left_count small_1496714_left_encoded small_1496714_left_checked

theorem cover_1496714 : CoveredBy scale carrier boxes root_1496714 := by
  apply coveredBy_split_literal root_1496714 small_1496714_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1496720 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1496714_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1496720
#print axioms cover_1496714

def root_1496506 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1496506_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1496506_left_fuel : Nat := 23
def small_1496506_left_count : Nat := 99
def small_1496506_left_encoded : String := "12073D0208A912FB12073D0405000106135D450700000003050000FE00000008135D44FF0000000800000004135D8107050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9BF9000000080F34D102000000010CFD9BFB0F350D040C9A86F60F878CF7000000000C9A87040F8750FB0780010600000008128A7D07078000FE00000008128A40FF00000008000000040000000300000002000000080F8750F70C9A87040F8750FB0780010600000007128A7D07078000FE128A7CFF000000040AD3577900000005000000060000000500000003000000020F878CFB000000020780010600000008128A7D07078000FE00000008000000050000000300000000000000020F34D104000000020000000800000008135D44FF0CFD9BF70F350CF6000000000CFD9BF9000000080F34D102000000010CFD9BFB0F350D040C9A86F60F878CF7000000000C9A8704000000070000000800000007000000020F34D10400000002000000080000000800000004000000030000000212070104000000020000000800000001"
theorem small_1496506_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1496506_left_root small_1496506_left_fuel small_1496506_left_count small_1496506_left_encoded = true := by
  decide +kernel
theorem small_1496506_left_covered : CoveredBy scale carrier boxes small_1496506_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1496506_left_root small_1496506_left_fuel small_1496506_left_count small_1496506_left_encoded small_1496506_left_checked

theorem cover_1496506 : CoveredBy scale carrier boxes root_1496506 := by
  apply coveredBy_split_literal root_1496506 small_1496506_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1496714 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1496506_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1496714
#print axioms cover_1496506

def root_1496500 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1496500_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1496500_left_fuel : Nat := 1
def small_1496500_left_count : Nat := 1
def small_1496500_left_encoded : String := "00000000"
theorem small_1496500_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1496500_left_root small_1496500_left_fuel small_1496500_left_count small_1496500_left_encoded = true := by
  decide +kernel
theorem small_1496500_left_covered : CoveredBy scale carrier boxes small_1496500_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1496500_left_root small_1496500_left_fuel small_1496500_left_count small_1496500_left_encoded small_1496500_left_checked

theorem cover_1496500 : CoveredBy scale carrier boxes root_1496500 := by
  apply coveredBy_split_literal root_1496500 small_1496500_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1496506 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1496500_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1496506
#print axioms cover_1496500

def root_1496499 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1496499_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1496499_right_fuel : Nat := 9
def small_1496499_right_count : Nat := 19
def small_1496499_right_encoded : String := "120700F608A912F900000008120701020000000108A912FB12073D040500010600000008135D8107050000FE0000000800000009000000030000000212070104000000020000000800000000"
theorem small_1496499_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1496499_right_root small_1496499_right_fuel small_1496499_right_count small_1496499_right_encoded = true := by
  decide +kernel
theorem small_1496499_right_covered : CoveredBy scale carrier boxes small_1496499_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1496499_right_root small_1496499_right_fuel small_1496499_right_count small_1496499_right_encoded small_1496499_right_checked

theorem cover_1496499 : CoveredBy scale carrier boxes root_1496499 := by
  apply coveredBy_split_literal root_1496499 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1496500 small_1496499_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1496500
  · exact small_1496499_right_covered
#print axioms cover_1496499

def root_1496494 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1496494_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1496494_right_fuel : Nat := 1
def small_1496494_right_count : Nat := 1
def small_1496494_right_encoded : String := "00000004"
theorem small_1496494_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1496494_right_root small_1496494_right_fuel small_1496494_right_count small_1496494_right_encoded = true := by
  decide +kernel
theorem small_1496494_right_covered : CoveredBy scale carrier boxes small_1496494_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1496494_right_root small_1496494_right_fuel small_1496494_right_count small_1496494_right_encoded small_1496494_right_checked

theorem cover_1496494 : CoveredBy scale carrier boxes root_1496494 := by
  apply coveredBy_split_literal root_1496494 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1496499 small_1496494_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1496499
  · exact small_1496494_right_covered
#print axioms cover_1496494

def root_1481462 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1481462 : CoveredBy scale carrier boxes root_1481462 := by
  apply coveredBy_split_literal root_1481462 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1481463 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1496494 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1481463
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1496494
#print axioms cover_1481462

def root_1481456 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1481456_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1481456_left_fuel : Nat := 1
def small_1481456_left_count : Nat := 1
def small_1481456_left_encoded : String := "00000003"
theorem small_1481456_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1481456_left_root small_1481456_left_fuel small_1481456_left_count small_1481456_left_encoded = true := by
  decide +kernel
theorem small_1481456_left_covered : CoveredBy scale carrier boxes small_1481456_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1481456_left_root small_1481456_left_fuel small_1481456_left_count small_1481456_left_encoded small_1481456_left_checked

theorem cover_1481456 : CoveredBy scale carrier boxes root_1481456 := by
  apply coveredBy_split_literal root_1481456 small_1481456_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1481462 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_1481456_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1481462
#print axioms cover_1481456

def root_1505384 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1505384_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1505384_right_fuel : Nat := 26
def small_1505384_right_count : Nat := 449
def small_1505384_right_encoded : String := "0F34D0F6045489F91386AD020CFD9BFB0F350D040CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A87040F8750FB0C9A86FE000000070F8750FF0000000600000004000000020F878CFB000000020C9A86FE000000070F8750FF00000007000000040F34D0FE00000007000000040F350D060CFD9BFF0F350CFE000000040C9A87040F8750FB0C9A87060F875107000000030C9A86FE0F878CFF000000040AD3577710D13CF600000000067ECE7912EA95020B4D4404108010FB0B4D440610801107000000030DE7C9FE000000080E5FD8FF000000060000000410804D070DE7C9FE000000070E5FD8FF0000000600000004000000030000000210804CFB000000020B4D44060000000810804D070DE7C9FE000000070E5FD8FF0000000600000004000000030000000112EA5902000000010B4D4404108010FB0B4D44060000000700000007000000020000000710D100F6067ECE790000000812EA59020000000100000007000000000F8750FF0AD3577710D13CF600000000067ECE7912EA95020B4D440400000006000000080000000112EA5902000000010B4D44040000000610804CFB000000020B4D4406000000060000000610D100F6067ECE790000000812EA5902000000010B4D4404000000060000000800000000000000040F878D070C9A86FE0F878CFF000000040AD3577710D13CF600000000067ECE7912EA95020B4D4404108010FB000000070000000200000007000000010000000710D100F600000007000000000F8750FF0AD3577710D13CF60000000000000006000000060000000400000003000000020F878CFB000000020C9A87060F875107000000030C9A86FE0F878CFF000000040AD3577710D13CF600000000067ECE790000000812EA5902000000010DE7CA040E5FD8FB000000070000000200000007000000080F8750FF0AD3577710D13CF600000000067ECE790000000812EA5902000000010DE7CA040E5FD8FB0B4D44060000000810804D070000000600000003000000020000000800000008000000040F878D070C9A86FE0F878CFF000000040AD3577710D13CF600000000067ECE7912EA95020DE7CA040000000700000007000000010000000710D100F600000007000000000F8750FF0AD3577710D13CF600000000067ECE7912EA95020DE7CA04000000060E6014FB000000020DE7CA060000000600000006000000010000000710D100F6067ECE7900000008000000070000000000000004000000030F34D0FE0C9A87040F8750FB0C9A87060F875107000000030AD3577710D13CF600000000067ECE7912EA95020000000A0000000100000005000000050F878D070AD35777000000070000000700000003000000020F878CFB000000020C9A87060F875107000000030AD3577710D13CF6000000000000000A10D100F600000005000000000F878D070AD357770000000700000007000000030000000400000003000000020F34D104000000020CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A86FE000000070F8750FF00000007000000040F34D0FE00000007000000040F350D060CFD9BFF0F350CFE000000040C9A87060F875107000000030C9A86FE000000080F8750FF00000008000000040F878D070C9A86FE0F878CFF000000040AD3577710D13CF600000000067ECE790000000A0000000710D100F600000008000000000F8750FF0AD3577710D13CF600000000067ECE7900000008000000070000000800000004000000030F34D0FE0C9A87060000000A0F878D070000000A0000000300000004000000030000000113867102000000010CFD9BFB0F350D040CFD9C070F34D106000000030CFD9BFF00000007000000070F350D060CFD9BFF0F350CFE000000040C9A87040F8750FB0C9A87060F875107000000030C9A86FE0F878CFF00000004000000070F8750FF0AD3577710D13CF600000000022A457913E201020B4D44040000000600000007000000010000000710D100F60000000700000000000000040F878D070000000700000003000000020F878CFB000000020C9A87060F875107000000030C9A86FE0F878CFF00000004000000070F8750FF0AD3577710D13CF600000000022A457913E201020DE7CA040E5FD8FB000000070000000200000007000000010000000710D100F60000000700000000000000040F878D0700000007000000030F34D0FE0C9A87040F8750FB0000000700000002000000070000000400000003000000020F34D104000000020CFD9C070F34D10600000003000000070F350D060CFD9BFF0F350CFE000000040C9A87060F875107000000030C9A86FE0F878CFF000000040AD357770000000710D100F600000007000000000F8750FF0AD3577710D13CF600000000022A4579000000080000000700000008000000040F878D0700000007000000030F34D0FE0C9A87060000000700000007000000040000000300000000"
theorem small_1505384_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1505384_right_root small_1505384_right_fuel small_1505384_right_count small_1505384_right_encoded = true := by
  decide +kernel
theorem small_1505384_right_covered : CoveredBy scale carrier boxes small_1505384_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1505384_right_root small_1505384_right_fuel small_1505384_right_count small_1505384_right_encoded small_1505384_right_checked

theorem cover_1505384 : CoveredBy scale carrier boxes root_1505384 := by
  apply coveredBy_split_literal root_1505384 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0589.root small_1505384_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0589.covered
  · exact small_1505384_right_covered
#print axioms cover_1505384

def root_1505378 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1505378_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1505378_left_fuel : Nat := 1
def small_1505378_left_count : Nat := 1
def small_1505378_left_encoded : String := "00000004"
theorem small_1505378_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1505378_left_root small_1505378_left_fuel small_1505378_left_count small_1505378_left_encoded = true := by
  decide +kernel
theorem small_1505378_left_covered : CoveredBy scale carrier boxes small_1505378_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1505378_left_root small_1505378_left_fuel small_1505378_left_count small_1505378_left_encoded small_1505378_left_checked

theorem cover_1505378 : CoveredBy scale carrier boxes root_1505378 := by
  apply coveredBy_split_literal root_1505378 small_1505378_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1505384 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1505378_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1505384
#print axioms cover_1505378

def root_1505377 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1505377_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1505377_right_fuel : Nat := 16
def small_1505377_right_count : Nat := 93
def small_1505377_right_encoded : String := "120700FE0CFD9BF70F350CF600000000045489F91386AD020CFD9BFB0F350D040CFD9C070000000A0F350D060000000A00000003000000020F34D104000000020000000A0000000113867102000000010CFD9BFB0F350D040CFD9C070F34D10600000003000000070F350D06045489FF1386ACFE000000040C9A86F60F878CF7000000000C9A87040F8750FB0000000700000002000000070F8750F70C9A87040F8750FB0000000A000000020000000A00000000138670FE0000000A0000000400000003000000020F34D104000000020000000A0F34D0F6045489F91386AD020CFD9BFB0F350D040CFD9C070000000A0F350D06045489FF1386ACFE000000040C9A8704000000050000000A0000000500000003000000020F34D104000000020000000A0000000113867102000000010CFD9BFB0F350D040CFD9C07000000070F350D060000000500000003000000020F34D104000000020CFD9C07000000070F350D0600000005000000030000000000000004"
theorem small_1505377_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1505377_right_root small_1505377_right_fuel small_1505377_right_count small_1505377_right_encoded = true := by
  decide +kernel
theorem small_1505377_right_covered : CoveredBy scale carrier boxes small_1505377_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1505377_right_root small_1505377_right_fuel small_1505377_right_count small_1505377_right_encoded small_1505377_right_checked

theorem cover_1505377 : CoveredBy scale carrier boxes root_1505377 := by
  apply coveredBy_split_literal root_1505377 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1505378 small_1505377_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1505378
  · exact small_1505377_right_covered
#print axioms cover_1505377

def root_1505372 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1505372_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1505372_right_fuel : Nat := 1
def small_1505372_right_count : Nat := 1
def small_1505372_right_encoded : String := "00000003"
theorem small_1505372_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1505372_right_root small_1505372_right_fuel small_1505372_right_count small_1505372_right_encoded = true := by
  decide +kernel
theorem small_1505372_right_covered : CoveredBy scale carrier boxes small_1505372_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1505372_right_root small_1505372_right_fuel small_1505372_right_count small_1505372_right_encoded small_1505372_right_checked

theorem cover_1505372 : CoveredBy scale carrier boxes root_1505372 := by
  apply coveredBy_split_literal root_1505372 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1505377 small_1505372_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1505377
  · exact small_1505372_right_covered
#print axioms cover_1505372

def root_1505242 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1505242_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1505242_left_fuel : Nat := 14
def small_1505242_left_count : Nat := 57
def small_1505242_left_encoded : String := "120701060000000308A912FF12073CFE000000040CFD9BF70F350CF600000000045489F91386AD020CFD9BFB0F350D0404548A071386710600000003000000071386AD060CFD9BFF0F350CFE00000004000000050F34D0FE000000070000000400000003000000020F34D104000000020000000A0000000113867102000000010CFD9BFB000000070F34D10400000002000000070F34D0F6045489F91386AD020CFD9BFB000000070F34D1040000000200000007000000010000000700000000120700FE0CFD9BF70F350CF6000000000000000A0F34D0F6000000070000000000000004"
theorem small_1505242_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1505242_left_root small_1505242_left_fuel small_1505242_left_count small_1505242_left_encoded = true := by
  decide +kernel
theorem small_1505242_left_covered : CoveredBy scale carrier boxes small_1505242_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1505242_left_root small_1505242_left_fuel small_1505242_left_count small_1505242_left_encoded small_1505242_left_checked

theorem cover_1505242 : CoveredBy scale carrier boxes root_1505242 := by
  apply coveredBy_split_literal root_1505242 small_1505242_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1505372 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1505242_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1505372
#print axioms cover_1505242

def root_1505237 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1505237_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1505237_right_fuel : Nat := 1
def small_1505237_right_count : Nat := 1
def small_1505237_right_encoded : String := "00000002"
theorem small_1505237_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1505237_right_root small_1505237_right_fuel small_1505237_right_count small_1505237_right_encoded = true := by
  decide +kernel
theorem small_1505237_right_covered : CoveredBy scale carrier boxes small_1505237_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1505237_right_root small_1505237_right_fuel small_1505237_right_count small_1505237_right_encoded small_1505237_right_checked

theorem cover_1505237 : CoveredBy scale carrier boxes root_1505237 := by
  apply coveredBy_split_literal root_1505237 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1505242 small_1505237_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1505242
  · exact small_1505237_right_covered
#print axioms cover_1505237

def root_1505236 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1505236_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1505236_right_fuel : Nat := 27
def small_1505236_right_count : Nat := 331
def small_1505236_right_encoded : String := "120701040000000208A91307120701060000000308A912FF12073CFE000000040CFD9BF70F350CF600000000045489F91386AD020000000A00000001000000070F34D0F6045489F91386AD02045489FB00000007138671040000000200000007000000010000000700000000120700FE0CFD9BF7000000070F34D0F600000007000000000000000412073D0608A912FF12073CFE000000040CFD9BF70F350CF600000000045489F91386AD02045489FB1386AD040CFD9C070F34D106000000030000000A0F350D060CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A87060000000A0F878D070000000A000000030000000A0000000A000000030000000213867104000000020CFD9C070000000A0F350D060CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A87060000000A0000000A0000000A0000000A00000003000000011386710200000001045489FB1386AD040CFD9C070F34D106000000030CFD9BFF000000070000000A0F350D060CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A87060F875107000000030C9A86FE0F878CFF00000004022A45790000000A000000070F8750FF022A457913E20102067ECE7B12EA95040DE7C9F600000007000000090000000212EA590400000002000000080000000100000007000000040F878D0700000007000000030F8750F70C9A87060F875107000000030C9A86FE0000000A0F8750FF022A45790000000A13E1C50200000001067ECE7B000000070000000A000000040F878D070C9A86FE000000070F8750FF000000050000000400000003000000000F34D0FE0000000A00000004000000030000000213867104000000020CFD9C070F34D106000000030CFD9BFF000000070000000A0F350D060CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A87060F875107000000030C9A86FE0F878CFF000000040000000A0F8750FF022A45790000000800000009000000040F878D070C9A86FE000000070F8750FF0000000700000004000000030F8750F70C9A87060000000A0F878D070000000A00000003000000000F34D0FE0000000A00000004000000030F34D0F6045489F91386AD02045489FB1386AD040CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A86FE000000070F8750FF00000007000000040000000A0F350D060CFD9BFF0F350CFE000000040C9A8706000000080F878D070C9A86FE000000080F8750FF0000000800000004000000030F34D0FE0000000A00000004000000030000000213867104000000020CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A86FE000000070F8750FF0AD357770000000700000008000000040000000A0F350D060CFD9BFF000000080000000A00000003000000011386710200000001045489FB1386AD040CFD9C070F34D10600000003000000070F350D060CFD9BFF0F350CFE000000040C9A87060F875107000000030C9A86FE00000008000000090F878D0700000007000000030F34D0FE0C9A87060F87510700000003000000050000000700000004000000030000000213867104000000020CFD9C070F34D10600000003000000070F350D060CFD9BFF0F350CFE000000040C9A87060F87510700000003000000080F878D070C9A86FE0000000700000009000000030F34D0FE0C9A87060000000500000007000000040000000300000000120700FE0CFD9BF70F350CF6000000000000000A0F34D0F6045489F90000000A1386710200000001045489FB0000000A13867104000000020000000A000000000000000400000003"
theorem small_1505236_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1505236_right_root small_1505236_right_fuel small_1505236_right_count small_1505236_right_encoded = true := by
  decide +kernel
theorem small_1505236_right_covered : CoveredBy scale carrier boxes small_1505236_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1505236_right_root small_1505236_right_fuel small_1505236_right_count small_1505236_right_encoded small_1505236_right_checked

theorem cover_1505236 : CoveredBy scale carrier boxes root_1505236 := by
  apply coveredBy_split_literal root_1505236 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1505237 small_1505236_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1505237
  · exact small_1505236_right_covered
#print axioms cover_1505236

def root_1505230 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1505230_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1505230_left_fuel : Nat := 1
def small_1505230_left_count : Nat := 1
def small_1505230_left_encoded : String := "00000001"
theorem small_1505230_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1505230_left_root small_1505230_left_fuel small_1505230_left_count small_1505230_left_encoded = true := by
  decide +kernel
theorem small_1505230_left_covered : CoveredBy scale carrier boxes small_1505230_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1505230_left_root small_1505230_left_fuel small_1505230_left_count small_1505230_left_encoded small_1505230_left_checked

theorem cover_1505230 : CoveredBy scale carrier boxes root_1505230 := by
  apply coveredBy_split_literal root_1505230 small_1505230_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1505236 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1505230_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1505236
#print axioms cover_1505230

def root_1504038 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1504038 : CoveredBy scale carrier boxes root_1504038 := by
  apply coveredBy_split_literal root_1504038 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0588.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1505230 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0588.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1505230
#print axioms cover_1504038

def root_1504032 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1504032_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1504032_left_fuel : Nat := 1
def small_1504032_left_count : Nat := 1
def small_1504032_left_encoded : String := "00000000"
theorem small_1504032_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1504032_left_root small_1504032_left_fuel small_1504032_left_count small_1504032_left_encoded = true := by
  decide +kernel
theorem small_1504032_left_covered : CoveredBy scale carrier boxes small_1504032_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1504032_left_root small_1504032_left_fuel small_1504032_left_count small_1504032_left_encoded small_1504032_left_checked

theorem cover_1504032 : CoveredBy scale carrier boxes root_1504032 := by
  apply coveredBy_split_literal root_1504032 small_1504032_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1504038 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1504032_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1504038
#print axioms cover_1504032

def root_1504031 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1504031 : CoveredBy scale carrier boxes root_1504031 := by
  apply coveredBy_split_literal root_1504031 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1504032 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0590.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1504032
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0590.covered
#print axioms cover_1504031

def root_1504025 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1504025_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1504025_left_fuel : Nat := 1
def small_1504025_left_count : Nat := 1
def small_1504025_left_encoded : String := "00000004"
theorem small_1504025_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1504025_left_root small_1504025_left_fuel small_1504025_left_count small_1504025_left_encoded = true := by
  decide +kernel
theorem small_1504025_left_covered : CoveredBy scale carrier boxes small_1504025_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1504025_left_root small_1504025_left_fuel small_1504025_left_count small_1504025_left_encoded small_1504025_left_checked

theorem cover_1504025 : CoveredBy scale carrier boxes root_1504025 := by
  apply coveredBy_split_literal root_1504025 small_1504025_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1504031 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1504025_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1504031
#print axioms cover_1504025

def root_1504024 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1504024 : CoveredBy scale carrier boxes root_1504024 := by
  apply coveredBy_split_literal root_1504024 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1504025 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0591.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1504025
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0591.covered
#print axioms cover_1504024

def root_1504019 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1504019_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1504019_right_fuel : Nat := 1
def small_1504019_right_count : Nat := 1
def small_1504019_right_encoded : String := "00000003"
theorem small_1504019_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1504019_right_root small_1504019_right_fuel small_1504019_right_count small_1504019_right_encoded = true := by
  decide +kernel
theorem small_1504019_right_covered : CoveredBy scale carrier boxes small_1504019_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1504019_right_root small_1504019_right_fuel small_1504019_right_count small_1504019_right_encoded small_1504019_right_checked

theorem cover_1504019 : CoveredBy scale carrier boxes root_1504019 := by
  apply coveredBy_split_literal root_1504019 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1504024 small_1504019_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1504024
  · exact small_1504019_right_covered
#print axioms cover_1504019

def root_1481455 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1481455 : CoveredBy scale carrier boxes root_1481455 := by
  apply coveredBy_split_literal root_1481455 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1481456 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1504019 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1481456
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1504019
#print axioms cover_1481455

def root_1481449 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1481449_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1481449_left_fuel : Nat := 1
def small_1481449_left_count : Nat := 1
def small_1481449_left_encoded : String := "00000002"
theorem small_1481449_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1481449_left_root small_1481449_left_fuel small_1481449_left_count small_1481449_left_encoded = true := by
  decide +kernel
theorem small_1481449_left_covered : CoveredBy scale carrier boxes small_1481449_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1481449_left_root small_1481449_left_fuel small_1481449_left_count small_1481449_left_encoded small_1481449_left_checked

theorem cover_1481449 : CoveredBy scale carrier boxes root_1481449 := by
  apply coveredBy_split_literal root_1481449 small_1481449_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1481455 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1481449_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1481455
#print axioms cover_1481449

def root_1470819 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1470819 : CoveredBy scale carrier boxes root_1470819 := by
  apply coveredBy_split_literal root_1470819 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1470820 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1481449 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1470820
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1481449
#print axioms cover_1470819

def root_1470813 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1470813_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1470813_left_fuel : Nat := 1
def small_1470813_left_count : Nat := 1
def small_1470813_left_encoded : String := "00000001"
theorem small_1470813_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1470813_left_root small_1470813_left_fuel small_1470813_left_count small_1470813_left_encoded = true := by
  decide +kernel
theorem small_1470813_left_covered : CoveredBy scale carrier boxes small_1470813_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1470813_left_root small_1470813_left_fuel small_1470813_left_count small_1470813_left_encoded small_1470813_left_checked

theorem cover_1470813 : CoveredBy scale carrier boxes root_1470813 := by
  apply coveredBy_split_literal root_1470813 small_1470813_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1470819 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1470813_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1470819
#print axioms cover_1470813

def root_1469025 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1469025 : CoveredBy scale carrier boxes root_1469025 := by
  apply coveredBy_split_literal root_1469025 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0572.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1470813 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0572.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1470813
#print axioms cover_1469025

def root_1469019 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1469019_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1469019_left_fuel : Nat := 1
def small_1469019_left_count : Nat := 1
def small_1469019_left_encoded : String := "00000000"
theorem small_1469019_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1469019_left_root small_1469019_left_fuel small_1469019_left_count small_1469019_left_encoded = true := by
  decide +kernel
theorem small_1469019_left_covered : CoveredBy scale carrier boxes small_1469019_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1469019_left_root small_1469019_left_fuel small_1469019_left_count small_1469019_left_encoded small_1469019_left_checked

theorem cover_1469019 : CoveredBy scale carrier boxes root_1469019 := by
  apply coveredBy_split_literal root_1469019 small_1469019_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1469025 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1469019_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1469025
#print axioms cover_1469019

def root_1515373 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1515373_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1515373_left_fuel : Nat := 20
def small_1515373_left_count : Nat := 97
def small_1515373_left_encoded : String := "12073D0208A912FB12073D0408A912FF12073CFE00000004050000F6135D80F70000000005000106135D4507000000030CFD9BF90F350D020CFD9BFB0000000A0000000A000000010F34D102000000010CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A87040F8750FB00000009000000020F878CFB000000020000000A0F34D0FE0000000A00000004000000020F34D104000000020000000A135D81070CFD9BF90F350D020CFD9BFB0000000A0000000A000000010F34D102000000010CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A87040F8750FB0C9A86FE000000090F8750FF0000000900000004000000020F878CFB000000020000000A0F34D0FE0000000A00000004000000020F34D104000000020000000A00000003135D44F705000106135D4507000000030CFD9BF9000000070F34D102000000010000000A135D81070CFD9BF90000000A0F34D102000000010000000A0000000300000000120700FE0000000A000000040000000212070104000000020000000A00000001"
theorem small_1515373_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1515373_left_root small_1515373_left_fuel small_1515373_left_count small_1515373_left_encoded = true := by
  decide +kernel
theorem small_1515373_left_covered : CoveredBy scale carrier boxes small_1515373_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1515373_left_root small_1515373_left_fuel small_1515373_left_count small_1515373_left_encoded small_1515373_left_checked

theorem cover_1515373 : CoveredBy scale carrier boxes root_1515373 := by
  apply coveredBy_split_literal root_1515373 small_1515373_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0593.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1515373_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0593.covered
#print axioms cover_1515373

def root_1515367 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1515367_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1515367_left_fuel : Nat := 1
def small_1515367_left_count : Nat := 1
def small_1515367_left_encoded : String := "00000004"
theorem small_1515367_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1515367_left_root small_1515367_left_fuel small_1515367_left_count small_1515367_left_encoded = true := by
  decide +kernel
theorem small_1515367_left_covered : CoveredBy scale carrier boxes small_1515367_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1515367_left_root small_1515367_left_fuel small_1515367_left_count small_1515367_left_encoded small_1515367_left_checked

theorem cover_1515367 : CoveredBy scale carrier boxes root_1515367 := by
  apply coveredBy_split_literal root_1515367 small_1515367_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1515373 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1515367_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1515373
#print axioms cover_1515367

def root_1515366 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1515366 : CoveredBy scale carrier boxes root_1515366 := by
  apply coveredBy_split_literal root_1515366 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1515367 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0594.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1515367
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0594.covered
#print axioms cover_1515366

def root_1515360 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1515360_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1515360_left_fuel : Nat := 1
def small_1515360_left_count : Nat := 1
def small_1515360_left_encoded : String := "00000003"
theorem small_1515360_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1515360_left_root small_1515360_left_fuel small_1515360_left_count small_1515360_left_encoded = true := by
  decide +kernel
theorem small_1515360_left_covered : CoveredBy scale carrier boxes small_1515360_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1515360_left_root small_1515360_left_fuel small_1515360_left_count small_1515360_left_encoded small_1515360_left_checked

theorem cover_1515360 : CoveredBy scale carrier boxes root_1515360 := by
  apply coveredBy_split_literal root_1515360 small_1515360_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1515366 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_1515360_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1515366
#print axioms cover_1515360

def root_1515359 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1515359_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1515359_right_fuel : Nat := 33
def small_1515359_right_count : Nat := 477
def small_1515359_right_encoded : String := "115225070A0000FE115224FF0000000408A912F912073D0208A912FB12073D0408A9130712070106000000030000000A12073D0608A912FF12073CFE00000004050000F6135D80F7000000000CFD9BF90F350D020CFD9BFB0000000A0000000A000000010F34D102000000010CFD9BFB0F350D040CFD9C070000000A0F350D060CFD9BFF0F350CFE000000040C9A87040F8750FB0C9A87060000000A00000005000000020000000A0000000A00000003000000020F34D104000000020000000A135D44F70CFD9BF90000000A0F34D102000000010000000A00000000120700FE0000000A00000004000000030000000212070104000000020000000A00000001120701020000000108A912FB12073D0408A91307120701060000000308A912FF12073CFE00000004050000F6135D80F700000000045489F91386AD020CFD9BFB000000050000000A00000001138671020000000100000008000000050000000A12073D0608A912FF12073CFE00000004050000F6135D80F700000000045489F91386AD020CFD9BFB0F350D040CFD9C070F34D106000000030CFD9BFF000000050000000A0F350D060CFD9BFF0F350CFE000000040C9A87040F8750FB0C9A87060F875107000000030C9A86FE0F878CFF00000004000000090F8750FF00000005000000040F878D070000000500000003000000020F878CFB000000020C9A87060F875107000000030C9A86FE0000000A0F8750FF00000005000000040F878D0700000005000000030F34D0FE0000000A0000000400000003000000020F34D104000000020CFD9C070000000A0F350D060000000A000000030000000113867102000000010CFD9BFB0F350D040CFD9C070F34D106000000030CFD9BFF0F350CFE0000000400000005000000080F350D060CFD9BFF0F350CFE000000040C9A87040F8750FB0C9A87060F875107000000030C9A86FE0F878CFF00000004078000F6128A7CF700000000022A45790000000800000008000000080F8750FF00000008000000040F878D070000000800000003000000020F878CFB000000020C9A87060F875107000000030C9A86FE0F878CFF00000004078000F6128A7CF700000000022A45790000000A13E1C502000000010DE7CA0400000008000000070000000A0F8750FF078000F6128A7CF700000000022A45790000000513E1C502000000010000000500000005000000040F878D070C9A86FE0F878CFF00000004078000F6000000080000000500000005000000030F34D0FE0C9A87040F8750FB0C9A87060F87510700000003078000F6128A7CF700000000022A45790000000900000008000000090F878D070000000800000003000000020F878CFB000000020000000A0000000400000003000000020F34D104000000020CFD9C070F34D106000000030000000A0F350D060CFD9BFF0F350CFE000000040C9A87060F875107000000030C9A86FE0F878CFF000000040000000A0F8750FF078000F6128A7CF700000000022A45790000000513E1C502000000010AD3577B0000000510D10104000000020000000500000005000000040F878D070C9A86FE0000000A00000005000000030F34D0FE0000000A0000000400000003135D44F7045489F91386AD020CFD9BFB0F350D040CFD9C070000000A0F350D060CFD9BFF0F350CFE00000004000000050000000A00000003000000020F34D104000000020000000A0000000113867102000000010CFD9BFB0F350D040CFD9C070F34D10600000003000000050F350D060CFD9BFF0F350CFE000000040C9A870400000008000000050F34D0FE0000000A0000000400000003000000020F34D104000000020CFD9C070000000A0F350D060000000A0000000300000000120700FE050000F6135D80F700000000045489F90000000A13867102000000010CFD9BFB0000000A0000000A0000000A000000040000000300000002120701040000000208A913070000000A12073D0608A912FF12073CFE00000004050000F6135D80F700000000045489F91386AD02045489FB0000000A0000000A000000011386710200000001045489FB1386AD040CFD9C070000000A0F350D060CFD9BFF0F350CFE000000040C9A87060000000A0000000A0000000A000000030000000213867104000000020CFD9C070000000A0F350D060000000A000000030000000A0000000A000000031151E8FF08A912F912073D0208A912FB12073D0408A913070000000512073D06050000F6135D80F700000000050000FE135D80FF000000040CFD9BF9000000050F34D102000000010000000500000005000000050000000300000002120701040000000208A913070000000512073D06050000F6135D80F700000000050000FE135D80FF000000040CFD9BF90000000A0F34D102000000010000000500000005000000050000000300000001120701020000000108A912FB12073D0408A913070000000512073D06050000F6135D80F700000000050000FE135D80FF00000004045489F91386AD020CFD9BFB000000050F34D10400000002000000050000000113867102000000010CFD9BFB000000050F34D1040000000200000005000000050000000500000003000000021207010400000002000000050000000400000003"
theorem small_1515359_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1515359_right_root small_1515359_right_fuel small_1515359_right_count small_1515359_right_encoded = true := by
  decide +kernel
theorem small_1515359_right_covered : CoveredBy scale carrier boxes small_1515359_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1515359_right_root small_1515359_right_fuel small_1515359_right_count small_1515359_right_encoded small_1515359_right_checked

theorem cover_1515359 : CoveredBy scale carrier boxes root_1515359 := by
  apply coveredBy_split_literal root_1515359 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1515360 small_1515359_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1515360
  · exact small_1515359_right_covered
#print axioms cover_1515359

def root_1515353 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1515353_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1515353_left_fuel : Nat := 1
def small_1515353_left_count : Nat := 1
def small_1515353_left_encoded : String := "00000002"
theorem small_1515353_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1515353_left_root small_1515353_left_fuel small_1515353_left_count small_1515353_left_encoded = true := by
  decide +kernel
theorem small_1515353_left_covered : CoveredBy scale carrier boxes small_1515353_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1515353_left_root small_1515353_left_fuel small_1515353_left_count small_1515353_left_encoded small_1515353_left_checked

theorem cover_1515353 : CoveredBy scale carrier boxes root_1515353 := by
  apply coveredBy_split_literal root_1515353 small_1515353_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1515359 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1515353_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1515359
#print axioms cover_1515353

def root_1514225 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1514225 : CoveredBy scale carrier boxes root_1514225 := by
  apply coveredBy_split_literal root_1514225 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0592.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1515353 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0592.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1515353
#print axioms cover_1514225

def root_1514219 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1514219_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1514219_left_fuel : Nat := 1
def small_1514219_left_count : Nat := 1
def small_1514219_left_encoded : String := "00000001"
theorem small_1514219_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1514219_left_root small_1514219_left_fuel small_1514219_left_count small_1514219_left_encoded = true := by
  decide +kernel
theorem small_1514219_left_covered : CoveredBy scale carrier boxes small_1514219_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1514219_left_root small_1514219_left_fuel small_1514219_left_count small_1514219_left_encoded small_1514219_left_checked

theorem cover_1514219 : CoveredBy scale carrier boxes root_1514219 := by
  apply coveredBy_split_literal root_1514219 small_1514219_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1514225 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1514219_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1514225
#print axioms cover_1514219

def root_1513887 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1513887_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1513887_left_fuel : Nat := 19
def small_1513887_left_count : Nat := 159
def small_1513887_left_encoded : String := "1151E8F90A0001041151E8FB0A0001061151E907000000030A0000FE115224FF0000000408A912FF12073CFE00000004050000F6135D80F7000000000500010200000007135D80F90000000105000104000000070000000700000007120700FE050000F600000009000000070000000400000007115225070A0000FE115224FF0000000408A913070000000A12073D0608A912FF12073CFE00000004050000F6135D80F70000000005000102135D44F905000104000000060000000A00000001135D80F90000000105000104135D44FB0CFD9C070000000500000009000000020000000A135D44F705000102000000060000000A00000000120700FE0000000A00000004000000031151E8FF00000005000000040000000300000002115224FB000000020A0001061151E907000000030A0000FE115224FF0000000408A912FB12073D0408A912FF12073CFE00000004050000F6135D80F70000000005000102000000080000000A135D44F705000102135D44F900000008000000010000000A00000000120700FE050000F60000000A00000007000000040000000212070104000000020000000A1151E8FF08A912FB12073D04050000F600000008135D44F70500010200000008135D80F900000001050001060000000700000005000000000000000212070104000000020000000800000004115225070A0000FE115224FF0000000408A912FB12073D0408A913070000000A0000000A000000020000000A1151E8FF08A912FB12073D0408A913070000000512073D06050000F6135D80F70000000005000102135D44F900000005000000010000000500000005000000030000000212070104000000020000000A000000040000000300000001"
theorem small_1513887_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1513887_left_root small_1513887_left_fuel small_1513887_left_count small_1513887_left_encoded = true := by
  decide +kernel
theorem small_1513887_left_covered : CoveredBy scale carrier boxes small_1513887_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1513887_left_root small_1513887_left_fuel small_1513887_left_count small_1513887_left_encoded small_1513887_left_checked

theorem cover_1513887 : CoveredBy scale carrier boxes root_1513887 := by
  apply coveredBy_split_literal root_1513887 small_1513887_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1514219 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1513887_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1514219
#print axioms cover_1513887

def root_1513882 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1513882_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1513882_right_fuel : Nat := 1
def small_1513882_right_count : Nat := 1
def small_1513882_right_encoded : String := "00000000"
theorem small_1513882_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1513882_right_root small_1513882_right_fuel small_1513882_right_count small_1513882_right_encoded = true := by
  decide +kernel
theorem small_1513882_right_covered : CoveredBy scale carrier boxes small_1513882_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1513882_right_root small_1513882_right_fuel small_1513882_right_count small_1513882_right_encoded small_1513882_right_checked

theorem cover_1513882 : CoveredBy scale carrier boxes root_1513882 := by
  apply coveredBy_split_literal root_1513882 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1513887 small_1513882_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1513887
  · exact small_1513882_right_covered
#print axioms cover_1513882

def root_1469018 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1469018 : CoveredBy scale carrier boxes root_1469018 := by
  apply coveredBy_split_literal root_1469018 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1469019 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1513882 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1469019
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1513882
#print axioms cover_1469018

def root_1522569 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1522569 : CoveredBy scale carrier boxes root_1522569 := by
  apply coveredBy_split_literal root_1522569 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0595.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0596.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0595.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0596.covered
#print axioms cover_1522569

def root_1469017 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1469017 : CoveredBy scale carrier boxes root_1469017 := by
  apply coveredBy_split_literal root_1469017 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1469018 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1522569 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1469018
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1522569
#print axioms cover_1469017

def root_1526696 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1526696_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1526696_left_fuel : Nat := 23
def small_1526696_left_count : Nat := 435
def small_1526696_left_encoded : String := "1151E8F90A0001041151E8FB0A0001061151E907000000030A0001081151E8FF000000070000000400000007115225070A0001081151E8FF08A912F712073CF60000000008A913070000000512073D0605000102135D44F90500010400000007135D80FB0000000205000108135D44FF00000005000000040000000500000001135D80F9000000010500010400000007135D80FB0000000205000108135D44FF00000005000000040000000500000003120700F608A91307120701060000000305000102135D44F905000104135D44FB000000050000000200000005000000010000000512073D0605000102135D44F90000000700000001135D80F90000000105000104135D44FB05000108135D44FF00000007000000040000000700000002135D80FB0000000205000108135D44FF000000080000000400000007000000030000000000000004115224FF0000000408A912F712073CF60000000008A91307120701060000000308A912FF0000000512070108000000040000000512073D060000000700000003120700F608A91307120701060000000308A912FF12073D0805000102135D44F905000104000000070000000500000001135D80F90000000105000104135D44FB0000000500000002000000050000000412070108000000040000000712073D0608A912FF0000000712070108000000040000000700000003000000000000000300000002115224FB000000020A0001061151E907000000030A0001081151E8FF0000000800000004115224FF0000000408A912F712073CF60000000008A912FB12073D0408A912FF12073D0805000102135D44F9000000070000000100000007000000040000000700000002120701040000000208A912FF12073D080500010200000008135D80F9000000010500010600000007135D81070CFD9BF70F350CF6000000000000000700000007000000030000000400000007120700F60000000700000000115225070A0001081151E8FF08A912F712073CF60000000008A912FB12073D0408A9130712070106000000030000000512073D0605000102135D44F905000108135D44FF0CFD9BF70F350CF600000000000000050000000800000004135D80FF000000040CFD9BF7000000050F34D0F6000000080000000000000001135D80F90000000105000108135D44FF0CFD9BF7000000050F34D0F6000000080000000000000004135D80FF000000040CFD9BF7000000050F34D0F60CFD9BFB000000050F34D1040000000200000005000000000000000300000002120701040000000208A9130712070106000000030000000512073D060500010200000008135D80F9000000010500010800000008135D80FF000000040CFD9BF7000000050000000800000003120700F608A912FB12073D0408A91307120701060000000305000102135D44F905000108135D44FF00000008000000040000000500000001135D80F90000000105000108135D44FF00000005000000040000000500000008000000021207010400000002000000080000000000000004115224FF0000000408A912F712073CF60000000008A912FB12073D0408A91307120701060000000308A912FF0000000512070108000000040000000512073D0608A912FF12073D0805000102135D44F90CFD9BF70F350CF6000000000CFD9BFB000000050F34D10400000002000000050F34D0F60CFD9BFB000000070F34D104000000020CFD9C0700000005000000070000000000000001135D80F9000000010CFD9BF70F350CF600000000000000050F34D0F60CFD9BFB000000070000000700000000000000041207010800000004000000070000000300000002120701040000000208A9130712070106000000030000000512073D0608A912FF12073D0805000102135D44F90CFD9BF70F350CF600000000045489FB000000051386710400000002000000050F34D0F6045489FB1386AD040CFD9C0700000007000000080000000213867104000000020CFD9C0700000008000000080000000000000001135D80F9000000010CFD9BF7000000050F34D0F6045489FB000000051386710400000002000000050000000000000004120701080000000405000102135D44F900000005000000010000000500000003120700F608A912FB12073D0408A91307120701060000000308A912FF12073D0805000102135D44F9045489F7000000050000000700000001000000050000000412070108000000040000000512073D0608A912FF12073D080000000700000004000000070000000300000002120701040000000208A91307120701060000000308A912FF000000050000000712073D0608A912FF12073D08050001020000000800000007000000040000000700000003000000000000000300000001"
theorem small_1526696_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1526696_left_root small_1526696_left_fuel small_1526696_left_count small_1526696_left_encoded = true := by
  decide +kernel
theorem small_1526696_left_covered : CoveredBy scale carrier boxes small_1526696_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1526696_left_root small_1526696_left_fuel small_1526696_left_count small_1526696_left_encoded small_1526696_left_checked

theorem cover_1526696 : CoveredBy scale carrier boxes root_1526696 := by
  apply coveredBy_split_literal root_1526696 small_1526696_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0597.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1526696_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0597.covered
#print axioms cover_1526696

def root_1526690 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1526690_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1526690_left_fuel : Nat := 1
def small_1526690_left_count : Nat := 1
def small_1526690_left_encoded : String := "00000000"
theorem small_1526690_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1526690_left_root small_1526690_left_fuel small_1526690_left_count small_1526690_left_encoded = true := by
  decide +kernel
theorem small_1526690_left_covered : CoveredBy scale carrier boxes small_1526690_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1526690_left_root small_1526690_left_fuel small_1526690_left_count small_1526690_left_encoded small_1526690_left_checked

theorem cover_1526690 : CoveredBy scale carrier boxes root_1526690 := by
  apply coveredBy_split_literal root_1526690 small_1526690_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1526696 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1526690_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1526696
#print axioms cover_1526690

def root_1526689 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1526689_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1526689_right_fuel : Nat := 23
def small_1526689_right_count : Nat := 321
def small_1526689_right_encoded : String := "1151E8F70A0001021151E8F90A0001041151E8FB0A0001061151E9070000000300000007115225070A0001081151E8FF0000000500000004115224FF0000000408A913070000000512073D0600000007000000030000000300000002115224FB000000020A0001061151E907000000030A0001081151E8FF08A912FB12073D04050000F6135D80F70000000005000102135D44F90000000800000001135D80F900000001050001060000000700000005135D44F700000005000000000000000212070104000000020000000800000004115224FF0000000408A912FB12073D0408A912FF12073D08050000F6135D80F70000000005000102135D44F9000000070000000100000007135D44F705000102135D44F900000005000000010000000500000000000000040000000700000002120701040000000208A912FF12073D08050000F6135D80F70000000005000102135D44F905000106000000080000000500000001135D80F900000001050001060000000700000005135D44F70000000500000000000000041207010800000004050000F60000000700000005115225070A0001081151E8FF08A912FB0000000512070104000000020000000500000004115224FF0000000408A912FB12073D0408A913070000000512073D0608A912FF0000000512070108000000040000000500000003000000021207010400000002000000050000000300000001115224F9000000010A0001041151E8FB0A0001061151E907000000030A0001081151E8FF08A912F9000000071207010200000001050000F6135D80F7000000000500010400000007135D80FB0000000200000007000000070000000400000007115225070A0001081151E8FF08A912F90000000512070102000000010000000500000004115224FF0000000408A912F912073D0208A913070000000512073D060000000700000003000000011207010200000001000000050000000300000002115224FB000000020A0001061151E907000000030A0001081151E8FF08A912F912073D0208A912FB12073D04050000F6135D80F7000000000500010600000007135D810705000108135D44FF00000005000000040000000500000003135D44F705000106000000070000000500000000000000021207010400000002050000F6135D80F70000000005000106135D450700000003050001080000000800000007135D81070000000500000003135D44F7000000050000000000000001120701020000000108A912FB12073D04050000F6135D80F70000000005000106135D45070000000305000108135D44FF045489F90000000713867102000000010CFD9BFB00000005000000070000000400000007135D81070000000500000003135D44F70000000500000000000000021207010400000002050000F6135D80F70000000005000106135D45070000000305000108135D44FF045489F900000005000000090000000400000005000000050000000500000004115224FF0000000408A912F912073D0208A912FB12073D0408A912FF12073D08050000F60000000700000005000000040000000700000002120701040000000208A912FF000000050000000700000001120701020000000108A912FB12073D0408A912FF000000050000000700000002120701040000000200000005115225070A0001081151E8FF08A912F912073D0208A912FB000000051207010400000002000000050000000112070102000000010000000500000004000000050000000300000000"
theorem small_1526689_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1526689_right_root small_1526689_right_fuel small_1526689_right_count small_1526689_right_encoded = true := by
  decide +kernel
theorem small_1526689_right_covered : CoveredBy scale carrier boxes small_1526689_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1526689_right_root small_1526689_right_fuel small_1526689_right_count small_1526689_right_encoded small_1526689_right_checked

theorem cover_1526689 : CoveredBy scale carrier boxes root_1526689 := by
  apply coveredBy_split_literal root_1526689 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1526690 small_1526689_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1526690
  · exact small_1526689_right_covered
#print axioms cover_1526689

def root_1526688 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1526688 : CoveredBy scale carrier boxes root_1526688 := by
  apply coveredBy_split_literal root_1526688 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1526689 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0598.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1526689
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0598.covered
#print axioms cover_1526688

def root_1469016 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1469016 : CoveredBy scale carrier boxes root_1469016 := by
  apply coveredBy_split_literal root_1469016 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1469017 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1526688 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1469017
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1526688
#print axioms cover_1469016

def root_1458600 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1458600 : CoveredBy scale carrier boxes root_1458600 := by
  apply coveredBy_split_literal root_1458600 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1458601 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1469016 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1458601
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1469016
#print axioms cover_1458600

def root_1267586 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1267586 : CoveredBy scale carrier boxes root_1267586 := by
  apply coveredBy_split_literal root_1267586 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1267587 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1458600 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1267587
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1458600
#print axioms cover_1267586

def root_1533416 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1533416 : CoveredBy scale carrier boxes root_1533416 := by
  apply coveredBy_split_literal root_1533416 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0599.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0600.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0599.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0600.covered
#print axioms cover_1533416

def root_1533410 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1533410_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1533410_left_fuel : Nat := 1
def small_1533410_left_count : Nat := 1
def small_1533410_left_encoded : String := "00000000"
theorem small_1533410_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1533410_left_root small_1533410_left_fuel small_1533410_left_count small_1533410_left_encoded = true := by
  decide +kernel
theorem small_1533410_left_covered : CoveredBy scale carrier boxes small_1533410_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1533410_left_root small_1533410_left_fuel small_1533410_left_count small_1533410_left_encoded small_1533410_left_checked

theorem cover_1533410 : CoveredBy scale carrier boxes root_1533410 := by
  apply coveredBy_split_literal root_1533410 small_1533410_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1533416 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1533410_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1533416
#print axioms cover_1533410

def root_1537926 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1537926 : CoveredBy scale carrier boxes root_1537926 := by
  apply coveredBy_split_literal root_1537926 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0601.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0602.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0601.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0602.covered
#print axioms cover_1537926

def root_1537921 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1537921_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1537921_right_fuel : Nat := 1
def small_1537921_right_count : Nat := 1
def small_1537921_right_encoded : String := "00000000"
theorem small_1537921_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1537921_right_root small_1537921_right_fuel small_1537921_right_count small_1537921_right_encoded = true := by
  decide +kernel
theorem small_1537921_right_covered : CoveredBy scale carrier boxes small_1537921_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1537921_right_root small_1537921_right_fuel small_1537921_right_count small_1537921_right_encoded small_1537921_right_checked

theorem cover_1537921 : CoveredBy scale carrier boxes root_1537921 := by
  apply coveredBy_split_literal root_1537921 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1537926 small_1537921_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1537926
  · exact small_1537921_right_covered
#print axioms cover_1537921

def root_1533409 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1533409 : CoveredBy scale carrier boxes root_1533409 := by
  apply coveredBy_split_literal root_1533409 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1533410 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1537921 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1533410
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1537921
#print axioms cover_1533409

def root_1546328 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1546328 : CoveredBy scale carrier boxes root_1546328 := by
  apply coveredBy_split_literal root_1546328 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0605.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0606.root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0605.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0606.covered
#print axioms cover_1546328

def root_1546322 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1546322_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1546322_left_fuel : Nat := 1
def small_1546322_left_count : Nat := 1
def small_1546322_left_encoded : String := "00000002"
theorem small_1546322_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1546322_left_root small_1546322_left_fuel small_1546322_left_count small_1546322_left_encoded = true := by
  decide +kernel
theorem small_1546322_left_covered : CoveredBy scale carrier boxes small_1546322_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1546322_left_root small_1546322_left_fuel small_1546322_left_count small_1546322_left_encoded small_1546322_left_checked

theorem cover_1546322 : CoveredBy scale carrier boxes root_1546322 := by
  apply coveredBy_split_literal root_1546322 small_1546322_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1546328 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_1546322_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1546328
#print axioms cover_1546322

def root_1546321 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1546321_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1546321_right_fuel : Nat := 21
def small_1546321_right_count : Nat := 197
def small_1546321_right_encoded : String := "1386AD0404548A09138670FE0C9A86F60F878CF70000000007800102128A40F9078000FC128A7CFD00000003067ECE8512EA590400000002022A4589000000080000000500000005128A40FD067ECE8512EA590400000002022A45890000000A00000005000000050000000300000001128A7CF900000001078000FC128A7CFD00000003067ECE850000000A00000005128A40FD067ECE850000000A00000005000000030F8750F707800102128A40F9078000FC128A7CFD00000003067ECE8512EA590400000002022A458913E1C4FE0B4D43F600000008108010F7064001020000000800000008000000000000000413E200FE000000040B4D43F610804CF70000000000000005108010F70640010212FF70F908C000FC11FC24FD0000000300000005000000090000000112FFACF90000000108C000FC11FC24FD000000030000000511FBE8FD0569AC450000000A00000005000000030000000012EA9504022A458913E1C4FE00000008000000040000000500000002128A40FD067ECE8512EA590400000002022A458913E1C4FE0B4D43F60000000A108010F7064001020000000A0000000A000000000000000400000009000000090000000300000001128A7CF900000001078000FC128A7CFD00000003067ECE8512EA590400000002022A45890000000A13E200FE000000040B4D43F60000000A108010F708C0010211FBE8F908C000FC000000050000000A000000010000000A0000000012EA9504022A45890000000A0000000500000002128A40FD067ECE8512EA590400000002022A45890000000A13E200FE000000040B4D43F60000000A108010F708C001020000000A0000000A0000000012EA9504022A45890000000A00000005000000020000000300000000000000041386ACFE000000040C9A86F60F878CF700000000000000050F8750F707800102128A40F9078000FC000000050000000900000001128A7CF900000001078000FC00000005128A40FD067ECE8512EA590400000002067ECE8912EA58FE0B4D43F600000005108010F70000000900000000000000040000000500000005000000030000000000000002"
theorem small_1546321_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1546321_right_root small_1546321_right_fuel small_1546321_right_count small_1546321_right_encoded = true := by
  decide +kernel
theorem small_1546321_right_covered : CoveredBy scale carrier boxes small_1546321_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1546321_right_root small_1546321_right_fuel small_1546321_right_count small_1546321_right_encoded small_1546321_right_checked

theorem cover_1546321 : CoveredBy scale carrier boxes root_1546321 := by
  apply coveredBy_split_literal root_1546321 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1546322 small_1546321_right_root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1546322
  · exact small_1546321_right_covered
#print axioms cover_1546321

def root_1546315 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1546315_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1546315_left_fuel : Nat := 1
def small_1546315_left_count : Nat := 1
def small_1546315_left_encoded : String := "00000000"
theorem small_1546315_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1546315_left_root small_1546315_left_fuel small_1546315_left_count small_1546315_left_encoded = true := by
  decide +kernel
theorem small_1546315_left_covered : CoveredBy scale carrier boxes small_1546315_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1546315_left_root small_1546315_left_fuel small_1546315_left_count small_1546315_left_encoded small_1546315_left_checked

theorem cover_1546315 : CoveredBy scale carrier boxes root_1546315 := by
  apply coveredBy_split_literal root_1546315 small_1546315_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1546321 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_1546315_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1546321
#print axioms cover_1546315

def root_1546314 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1546314_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1546314_right_fuel : Nat := 9
def small_1546314_right_count : Nat := 21
def small_1546314_right_encoded : String := "0F34D0F604548A05138671040000000204548A09138670FE07800102128A40F9078000FC000000080000000600000001128A7CF900000001078000FC0000000A0000000A00000004000000050000000500000000"
theorem small_1546314_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1546314_right_root small_1546314_right_fuel small_1546314_right_count small_1546314_right_encoded = true := by
  decide +kernel
theorem small_1546314_right_covered : CoveredBy scale carrier boxes small_1546314_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1546314_right_root small_1546314_right_fuel small_1546314_right_count small_1546314_right_encoded small_1546314_right_checked

theorem cover_1546314 : CoveredBy scale carrier boxes root_1546314 := by
  apply coveredBy_split_literal root_1546314 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1546315 small_1546314_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1546315
  · exact small_1546314_right_covered
#print axioms cover_1546314

def root_1546308 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1546308_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1546308_left_fuel : Nat := 1
def small_1546308_left_count : Nat := 1
def small_1546308_left_encoded : String := "00000003"
theorem small_1546308_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1546308_left_root small_1546308_left_fuel small_1546308_left_count small_1546308_left_encoded = true := by
  decide +kernel
theorem small_1546308_left_covered : CoveredBy scale carrier boxes small_1546308_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1546308_left_root small_1546308_left_fuel small_1546308_left_count small_1546308_left_encoded small_1546308_left_checked

theorem cover_1546308 : CoveredBy scale carrier boxes root_1546308 := by
  apply coveredBy_split_literal root_1546308 small_1546308_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1546314 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_1546308_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1546314
#print axioms cover_1546308

def root_1546307 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1546307_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1546307_right_fuel : Nat := 20
def small_1546307_right_count : Nat := 215
def small_1546307_right_encoded : String := "135D44FD0CFD9BF70F350CF60000000004548A05138671040000000204548A09138670FE0C9A86F60F878CF7000000000780010200000006128A7CF900000001028000FC0000000A000000060F8750F707800102128A40F9028000FC13D7ECFD00000003022A45850000000613E20104022A458913E1C4FE0B4D43F600000006108010F70000000A000000000000000400000009000000020000000600000001128A7CF900000001028000FC13D7ECFD00000003022A458513E1C50400000002022A45890000000A0000000713E20104022A45890000000A13E200FE000000040B4D43F60000000A108010F70000000A000000000000000213D7B0FD022A4585000000060000000A0000000300000000000000041386ACFE000000040C9A86F60F878CF70000000007800102128A40F90000000600000001128A7CF900000001028000FC13D7ECFD00000003022A45850000000713E20104067ECE890000000A000000050000000213D7B0FD00000007000000030F8750F707800102128A40F9028000FC13D7ECFD00000003022A458513E1C50400000002067ECE890000000600000009000000090000000600000001128A7CF900000001028000FC13D7ECFD00000003022A458513E1C50400000002067ECE8912EA58FE00000007000000040000000713E20104067ECE8912EA58FE0B4D43F600000009108010F7000000090000000000000004000000090000000213D7B0FD022A458513E1C50400000002067ECE8900000006000000070000000900000003000000001386AD0404548A09138670FE0C9A86F60F878CF70000000007800102128A40F90000000900000001128A7CF900000001028000FC13D7ECFD00000003067ECE850000000A0000000A000000090F8750F707800102128A40F90000000900000001128A7CF900000001028000FC13D7ECFD00000003067ECE8512EA590400000002022A45890000000A00000009000000090000000900000000000000041386ACFE000000040C9A86F6000000090F8750F70000000900000000000000020F34D0F604548A05138671040000000204548A09000000061386ACFE000000040780010200000006000000071386AD0404548A09138670FE0780010200000006128A7CF900000001028000FC00000005000000060000000400000005000000020000000000000003"
theorem small_1546307_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1546307_right_root small_1546307_right_fuel small_1546307_right_count small_1546307_right_encoded = true := by
  decide +kernel
theorem small_1546307_right_covered : CoveredBy scale carrier boxes small_1546307_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1546307_right_root small_1546307_right_fuel small_1546307_right_count small_1546307_right_encoded small_1546307_right_checked

theorem cover_1546307 : CoveredBy scale carrier boxes root_1546307 := by
  apply coveredBy_split_literal root_1546307 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1546308 small_1546307_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1546308
  · exact small_1546307_right_covered
#print axioms cover_1546307

def root_1546301 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1546301_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1546301_left_fuel : Nat := 1
def small_1546301_left_count : Nat := 1
def small_1546301_left_encoded : String := "00000001"
theorem small_1546301_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1546301_left_root small_1546301_left_fuel small_1546301_left_count small_1546301_left_encoded = true := by
  decide +kernel
theorem small_1546301_left_covered : CoveredBy scale carrier boxes small_1546301_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1546301_left_root small_1546301_left_fuel small_1546301_left_count small_1546301_left_encoded small_1546301_left_checked

theorem cover_1546301 : CoveredBy scale carrier boxes root_1546301 := by
  apply coveredBy_split_literal root_1546301 small_1546301_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1546307 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_1546301_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1546307
#print axioms cover_1546301

def root_1544343 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1544343 : CoveredBy scale carrier boxes root_1544343 := by
  apply coveredBy_split_literal root_1544343 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0604.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1546301 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0604.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1546301
#print axioms cover_1544343

def root_1544338 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1544338_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1544338_right_fuel : Nat := 1
def small_1544338_right_count : Nat := 1
def small_1544338_right_encoded : String := "00000004"
theorem small_1544338_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1544338_right_root small_1544338_right_fuel small_1544338_right_count small_1544338_right_encoded = true := by
  decide +kernel
theorem small_1544338_right_covered : CoveredBy scale carrier boxes small_1544338_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1544338_right_root small_1544338_right_fuel small_1544338_right_count small_1544338_right_encoded small_1544338_right_checked

theorem cover_1544338 : CoveredBy scale carrier boxes root_1544338 := by
  apply coveredBy_split_literal root_1544338 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1544343 small_1544338_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1544343
  · exact small_1544338_right_covered
#print axioms cover_1544338

def root_1544337 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1544337_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1544337_right_fuel : Nat := 24
def small_1544337_right_count : Nat := 175
def small_1544337_right_encoded : String := "12073CFE0000000405000102135D44F9050000FC135D80FD000000030CFD9BF70F350CF60000000004548A0513867104000000020CFD9C090F34D0FE0C9A86F60F878CF700000000000000050F8750F7028001020000000913D7ECF900000001078000FC128A7CFD0000000300000005000000090000000000000004000000050000000500000005135D44FD0CFD9BF70F350CF60000000004548A05138671040000000200000009000000090F34D0F600000005000000000000000300000001135D80F900000001050000FC135D80FD000000030CFD9BF70F350CF60000000004548A0513867104000000020CFD9C090F34D0FE0C9A86F60F878CF700000000000000050F8750F707800102128A40F9078000FC128A7CFD0000000300000005128A40FD000000090000000300000001128A7CF900000001078000FC128A7CFD0000000300000005128A40FD022A458513E1C504000000020AD3578910D100FE0B4D43F610804CF70000000000000005108010F700000008000000000000000400000005000000050000000300000000000000040F350CFE000000040C9A86F6000000050F8750F70C9A86FE000000050F8751090000000400000005000000001386AD040CFD9C090F34D0FE000000050000000400000005000000020F34D0F60000000500000000135D44FD0CFD9BF70F350CF60000000004548A0513867104000000020CFD9C090F34D0FE0C9A86F60F878CF7000000000780010200000009128A7CF900000001028000FC13D7ECFD00000003022A45850000000700000005000000090F8750F70000000900000000000000040F350CFE000000040C9A86F6000000090F8750F700000009000000001386AD040CFD9C090F34D0FE000000090000000400000009000000020F34D0F604548A0513867104000000020CFD9C090F34D0FE000000050000000400000005000000050000000000000003"
theorem small_1544337_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1544337_right_root small_1544337_right_fuel small_1544337_right_count small_1544337_right_encoded = true := by
  decide +kernel
theorem small_1544337_right_covered : CoveredBy scale carrier boxes small_1544337_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1544337_right_root small_1544337_right_fuel small_1544337_right_count small_1544337_right_encoded small_1544337_right_checked

theorem cover_1544337 : CoveredBy scale carrier boxes root_1544337 := by
  apply coveredBy_split_literal root_1544337 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1544338 small_1544337_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1544338
  · exact small_1544337_right_covered
#print axioms cover_1544337

def root_1544331 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1544331_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1544331_left_fuel : Nat := 1
def small_1544331_left_count : Nat := 1
def small_1544331_left_encoded : String := "00000002"
theorem small_1544331_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1544331_left_root small_1544331_left_fuel small_1544331_left_count small_1544331_left_encoded = true := by
  decide +kernel
theorem small_1544331_left_covered : CoveredBy scale carrier boxes small_1544331_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1544331_left_root small_1544331_left_fuel small_1544331_left_count small_1544331_left_encoded small_1544331_left_checked

theorem cover_1544331 : CoveredBy scale carrier boxes root_1544331 := by
  apply coveredBy_split_literal root_1544331 small_1544331_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1544337 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1544331_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1544337
#print axioms cover_1544331

def root_1544330 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1544330_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1544330_right_fuel : Nat := 18
def small_1544330_right_count : Nat := 69
def small_1544330_right_encoded : String := "12073D0408A91309120700FE05000102135D44F9050000FC135D80FD000000030CFD9BF70F350CF6000000000CFD9C050F34D1040000000204548A09138670FE0C9A86F60000000900000005000000040000000500000005000000050000000900000001135D80F900000001050000FC135D80FD000000030CFD9BF70F350CF6000000000CFD9C050F34D1040000000204548A09138670FE0C9A86F6000000050F8750F70780010200000005128A7CF900000001000000050000000000000004000000050000000500000005135D44FD0CFD9BF70F350CF6000000000CFD9C050F34D1040000000204548A09138670FE000000090000000400000005000000050000000500000003000000040000000500000002"
theorem small_1544330_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1544330_right_root small_1544330_right_fuel small_1544330_right_count small_1544330_right_encoded = true := by
  decide +kernel
theorem small_1544330_right_covered : CoveredBy scale carrier boxes small_1544330_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1544330_right_root small_1544330_right_fuel small_1544330_right_count small_1544330_right_encoded small_1544330_right_checked

theorem cover_1544330 : CoveredBy scale carrier boxes root_1544330 := by
  apply coveredBy_split_literal root_1544330 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1544331 small_1544330_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1544331
  · exact small_1544330_right_covered
#print axioms cover_1544330

def root_1544324 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1544324_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1544324_left_fuel : Nat := 1
def small_1544324_left_count : Nat := 1
def small_1544324_left_encoded : String := "00000000"
theorem small_1544324_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1544324_left_root small_1544324_left_fuel small_1544324_left_count small_1544324_left_encoded = true := by
  decide +kernel
theorem small_1544324_left_covered : CoveredBy scale carrier boxes small_1544324_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1544324_left_root small_1544324_left_fuel small_1544324_left_count small_1544324_left_encoded small_1544324_left_checked

theorem cover_1544324 : CoveredBy scale carrier boxes root_1544324 := by
  apply coveredBy_split_literal root_1544324 small_1544324_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1544330 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1544324_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1544330
#print axioms cover_1544324

def root_1544323 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1544323_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1544323_right_fuel : Nat := 13
def small_1544323_right_count : Nat := 31
def small_1544323_right_encoded : String := "120700F608A91305120701040000000208A91309120700FE05000102135D44F9050000FC135D80FD00000003045489F71386ACF60000000004548A050000000600000005000000050000000600000001135D80F900000001050000FC00000005135D44FD000000060000000300000004000000050000000500000000"
theorem small_1544323_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1544323_right_root small_1544323_right_fuel small_1544323_right_count small_1544323_right_encoded = true := by
  decide +kernel
theorem small_1544323_right_covered : CoveredBy scale carrier boxes small_1544323_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1544323_right_root small_1544323_right_fuel small_1544323_right_count small_1544323_right_encoded small_1544323_right_checked

theorem cover_1544323 : CoveredBy scale carrier boxes root_1544323 := by
  apply coveredBy_split_literal root_1544323 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1544324 small_1544323_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1544324
  · exact small_1544323_right_covered
#print axioms cover_1544323

def root_1544318 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1544318_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1544318_right_fuel : Nat := 1
def small_1544318_right_count : Nat := 1
def small_1544318_right_encoded : String := "00000004"
theorem small_1544318_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1544318_right_root small_1544318_right_fuel small_1544318_right_count small_1544318_right_encoded = true := by
  decide +kernel
theorem small_1544318_right_covered : CoveredBy scale carrier boxes small_1544318_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1544318_right_root small_1544318_right_fuel small_1544318_right_count small_1544318_right_encoded small_1544318_right_checked

theorem cover_1544318 : CoveredBy scale carrier boxes root_1544318 := by
  apply coveredBy_split_literal root_1544318 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1544323 small_1544318_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1544323
  · exact small_1544318_right_covered
#print axioms cover_1544318

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035
