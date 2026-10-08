import TaoBundleAssembly0029
import TaoBundleChunkBatch0123
import TaoBundleChunkBatch0124
import TaoBundleChunkBatch0125
import TaoBundleChunkBatch0126
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030
def root_1277083 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1277083_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1277083_left_fuel : Nat := 21
def small_1277083_left_count : Nat := 219
def small_1277083_left_encoded : String := "13D7B0F9022A457B13E20104067ECE8912EA58FE0B4D43F610804CF70000000000000006108010F70B4D43FC10804CFD00000003014001020000000613F614F900000001033F67BB0000000613BBF504000000020569AC4900000006134110FE000000040AA6A27610EDACF700000000000000060000000A00000006000000000000000412EA94FE000000040B4D43F610804CF7000000000B4D43FC10804CFD000000030000000600000006108010F70B4D43FC10804CFD00000003014001020000000613F614F900000001033F67BB0000000A0000000A00000006000000000000000213E1C50400000002067ECE8912EA58FE0B4D43F610804CF7000000000B4D43FC10804CFD00000003014001020000000613F614F9000000010115233B13F895040569AC4900000006134110FE0000000400000006000000020000000800000006108010F70B4D43FC10804CFD000000030140010213F5D8F90115233B13F895040569AC49000000060000000A0000000213F85904000000020569AC49000000070000000A0000000113F614F9000000010115233B13F895040569AC491340D4FE0AA6A27610EDACF7000000000000000810ED70F70BF3E57C100928FD00000003000000081008ECFD00000006000000030000000000000004134110FE000000040AA6A27610EDACF7000000000BF3E57C100928FD0000000301E0010200000006000000080000000610ED70F70000000A000000000000000213F85904000000020569AC491340D4FE0AA6A2760000000810ED70F7000000070000000000000004134110FE000000040AA6A27610EDACF7000000000BF3E57C000000081008ECFD01E0010200000006000000080000000310ED70F70000000700000000108010FD014001020000000613F614F9000000010115233B0000000613F85904000000020569AC4900000006134110FE000000040000000600000003000000000000000412EA94FE000000040B4D43F610804CF7000000000B4D43FC10804CFD0000000300000005108010FD0000000600000003108010F70B4D43FC10804CFD00000003014001020000000A13F614F9000000010115233B0000000A00000005108010FD014001020000000613F614F9000000010115233B0000000613F85904000000020793F0C9128220FE0AA6A276000000060000000A0000000400000005000000030000000000000001"
theorem small_1277083_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1277083_left_root small_1277083_left_fuel small_1277083_left_count small_1277083_left_encoded = true := by
  decide +kernel
theorem small_1277083_left_covered : CoveredBy scale carrier boxes small_1277083_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1277083_left_root small_1277083_left_fuel small_1277083_left_count small_1277083_left_encoded small_1277083_left_checked

theorem cover_1277083 : CoveredBy scale carrier boxes root_1277083 := by
  apply coveredBy_split_literal root_1277083 small_1277083_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1277547 coord1 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_1277083_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1277547
#print axioms cover_1277083

def root_1277078 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1277078_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1277078_right_fuel : Nat := 1
def small_1277078_right_count : Nat := 1
def small_1277078_right_encoded : String := "00000003"
theorem small_1277078_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1277078_right_root small_1277078_right_fuel small_1277078_right_count small_1277078_right_encoded = true := by
  decide +kernel
theorem small_1277078_right_covered : CoveredBy scale carrier boxes small_1277078_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1277078_right_root small_1277078_right_fuel small_1277078_right_count small_1277078_right_encoded small_1277078_right_checked

theorem cover_1277078 : CoveredBy scale carrier boxes root_1277078 := by
  apply coveredBy_split_literal root_1277078 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1277083 small_1277078_right_root coord3 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1277083
  · exact small_1277078_right_covered
#print axioms cover_1277078

def root_1276488 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1276488_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1276488_left_fuel : Nat := 20
def small_1276488_left_count : Nat := 281
def small_1276488_left_encoded : String := "0F878CFD000000030280010213D7B0F9022A457B13E20104067ECE8912EA58FE0B4D43F610804CF7000000000DE7C9FC000000080E5FD8FD0140010213F5D8F9000000080000000113F614F900000001033F67BB000000090000000800000003108010F70DE7C9FC000000090E5FD8FD0140010213F5D8F9033F67BB13BC31040569AC49000000060000000A0000000213BBF504000000020569AC49000000080000000A0000000113F614F900000001033F67BB0000000913BBF504000000020569AC4900000008134110FE000000040AA6A27610EDACF700000000000000090000000900000003000000000000000412EA94FE000000040B4D43F610804CF7000000000DE7C9FC0E6014FD000000030140010213F5D8F9033F67BB0000000A000000050000000113F614F900000001033F67BB00000009000000050E5FD8FD0140010213F5D8F9033F67BB0000000613BBF504000000020000000A0000000113F614F900000001033F67BB13BC31040793F0C9128220FE0BF3E576100928F70000000000000006000000090000000400000005000000020000000500000003108010F70DE7C9FC0000000A0E5FD8FD0000000A00000003000000000000000213E1C50400000002067ECE8912EA58FE0B4D43F610804CF70000000000000008108010F70DE7C9FC0E6014FD00000003000000080E5FD8FD0140010213F5D8F90115233B13F895040569AC49000000070000000A00000002000000070000000113F614F9000000010115233B13F895040569AC4900000008134110FE000000040AA6A276000000080000000A000000020000000800000003000000000000000412EA94FE000000040B4D43F610804CF70000000000000005000000050000000113D7ECF900000001022A457B13E20104067ECE8912EA58FE0B4D43F610804CF70000000000000009000000090000000412EA94FE000000040B4D43F610804CF7000000000DE7C9FC0E6014FD00000003000000050E5FD8FD03C0010213A510F9033F67BB13BC31040793F0C9000000090000000500000002000000050000000113A54CF900000001033F67BB000000090000000500000003108010F70DE7C9FC0E6014FD00000003000000090E5FD8FD03C0010213A510F9033F67BB13BC31040793F0C9000000090000000A0000000213BBF504000000020793F0C9128220FE0AA6A27610EDACF700000000000000090000000900000004000000050000000113A54CF900000001033F67BB0000000913BBF504000000020793F0C9000000090000000500000003000000000000000213E1C50400000002067ECE8912EA58FE0B4D43F610804CF7000000000DE7C9FC000000080E5FD8FD0000000800000003108010F70DE7C9FC0E6014FD00000003000000080E5FD8FD03C0010213A510F90115233B13F895040569AC4900000008134110FE000000040AA6A276000000080000000900000002000000080000000113A54CF9000000010115233B0000000913F85904000000020569AC49000000080000000500000003000000000000000400000005"
theorem small_1276488_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1276488_left_root small_1276488_left_fuel small_1276488_left_count small_1276488_left_encoded = true := by
  decide +kernel
theorem small_1276488_left_covered : CoveredBy scale carrier boxes small_1276488_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1276488_left_root small_1276488_left_fuel small_1276488_left_count small_1276488_left_encoded small_1276488_left_checked

theorem cover_1276488 : CoveredBy scale carrier boxes root_1276488 := by
  apply coveredBy_split_literal root_1276488 small_1276488_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1277078 coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_1276488_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1277078
#print axioms cover_1276488

def root_1276483 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1276483_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1276483_right_fuel : Nat := 1
def small_1276483_right_count : Nat := 1
def small_1276483_right_encoded : String := "00000000"
theorem small_1276483_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1276483_right_root small_1276483_right_fuel small_1276483_right_count small_1276483_right_encoded = true := by
  decide +kernel
theorem small_1276483_right_covered : CoveredBy scale carrier boxes small_1276483_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1276483_right_root small_1276483_right_fuel small_1276483_right_count small_1276483_right_encoded small_1276483_right_checked

theorem cover_1276483 : CoveredBy scale carrier boxes root_1276483 := by
  apply coveredBy_split_literal root_1276483 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1276488 small_1276483_right_root coord0 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1276488
  · exact small_1276483_right_covered
#print axioms cover_1276483

def root_1276081 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1276081_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1276081_left_fuel : Nat := 19
def small_1276081_left_count : Nat := 189
def small_1276081_left_encoded : String := "0F878CF7000000000C9A86FC0F878CFD000000030280010213D7B0F9022A457B13E20104067ECE8912EA58FE000000080000000412EA94FE000000040DE7C9F60E6014F700000000000000050E5FD8F70DE7C9FC0E6014FD00000003000000050E5FD8FD014001020000000613F614F900000001033F67BB13BC31040793F0C90000000600000005000000020000000500000003000000000000000213E1C50400000002067ECE8900000008000000050000000113D7ECF900000001022A457B13E20104067ECE8912EA58FE0DE7C9F6000000080E5FD8F700000008000000000000000412EA94FE000000040DE7C9F60E6014F700000000000000050E5FD8F70DE7C9FC0E6014FD000000030000000500000005000000000000000213E1C50400000002067ECE8900000008000000050F8750FD0280010213D7B0F9022A457B13E20104000000060000000213E1C50400000002067ECE8912EA58FE0DE7C9F6000000060E5FD8F70B4D43FC0000000800000006000000000000000412EA94FE000000040DE7C9F60E6014F70000000000000005000000050000000113D7ECF900000001022A457B13E20104067ECE8912EA58FE0DE7C9F60E6014F700000000000000060E5FD8F70B4D43FC10804CFD0000000303C001020000000613A54CF900000001033F67BB0000000713BBF504000000020000000800000006000000000000000412EA94FE000000040DE7C9F60E6014F7000000000B4D43FC00000007000000060E5FD8F70B4D43FC10804CFD0000000303C0010213A510F9033F67BB00000006000000050000000113A54CF900000001033F67BB0000000700000005108010FD03C00102000000060000000700000003000000000000000213E1C50400000002067ECE8912EA58FE0DE7C9F60E6014F700000000000000080E5FD8F70B4D43FC10804CFD0000000300000008108010FD03C001020000000613A54CF9000000010115233B0000000613F85904000000020569AC4900000006000000050000000300000000000000040000000500000003"
theorem small_1276081_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1276081_left_root small_1276081_left_fuel small_1276081_left_count small_1276081_left_encoded = true := by
  decide +kernel
theorem small_1276081_left_covered : CoveredBy scale carrier boxes small_1276081_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1276081_left_root small_1276081_left_fuel small_1276081_left_count small_1276081_left_encoded small_1276081_left_checked

theorem cover_1276081 : CoveredBy scale carrier boxes root_1276081 := by
  apply coveredBy_split_literal root_1276081 small_1276081_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1276483 coord0 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_1276081_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1276483
#print axioms cover_1276081

def root_1276075 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1276075_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1276075_left_fuel : Nat := 1
def small_1276075_left_count : Nat := 1
def small_1276075_left_encoded : String := "00000004"
theorem small_1276075_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1276075_left_root small_1276075_left_fuel small_1276075_left_count small_1276075_left_encoded = true := by
  decide +kernel
theorem small_1276075_left_covered : CoveredBy scale carrier boxes small_1276075_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1276075_left_root small_1276075_left_fuel small_1276075_left_count small_1276075_left_encoded small_1276075_left_checked

theorem cover_1276075 : CoveredBy scale carrier boxes root_1276075 := by
  apply coveredBy_split_literal root_1276075 small_1276075_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1276081 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_1276075_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1276081
#print axioms cover_1276075

def root_1275577 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1275577_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1275577_left_fuel : Nat := 28
def small_1275577_left_count : Nat := 233
def small_1275577_left_encoded : String := "138670FE0C9A86F60F878CF7000000000C9A86FC0F878CFD00000003000000080F8750FD0280010213D7B0F9022A457B00000006000000080000000113D7ECF900000001022A457B13E20104022A45890000000613E200FE000000040DE7C9F6000000080E5FD8F70B4D43FC0000000800000006000000000000000213E1C5040000000200000008000000030F8750F70C9A86FC0F878CFD000000030280010213D7B0F9022A457B13E20104022A45890000000813E200FE000000040B4D43F6000000080000000900000002000000080000000113D7ECF900000001022A457B0000000913E1C50400000002000000080F8750FD0280010213D7B0F9022A457B13E20104022A45890000000513E200FE000000040B4D43F610804CF70000000000000006108010F700000005000000000000000213E1C50400000002022A45890000000813E200FE000000040B4D43F610804CF7000000000B4D43FC0000000800000006108010F70B4D43FC10804CFD00000003014001020000000800000008108010FD014001020000000613F614F9000000010115233B0000000513F8590400000002033F67C9000000050000000600000003000000000000000113D7ECF900000001022A457B13E20104022A45890000000513E200FE000000040B4D43F610804CF7000000000B4D43FC00000009108010FD0000000500000003108010F700000005000000000000000213E1C50400000002022A458913E1C4FE0B4D43F600000008108010F700000005000000000000000413E200FE000000040B4D43F610804CF7000000000B4D43FC00000008108010FD03C0010213A510F9000000080000000113A54CF9000000010115233B13F89504033F67C90000000513BC30FE000000040BF3E5760000000800000009000000020000000800000003108010F70B4D43FC10804CFD0000000303C0010213A510F9000000080000000113A54CF90000000100000009108010FD03C0010213A510F90115233B0000000513F8590400000002033F67C90000000513BC30FE000000040AA6A27610EDACF7000000000000000810ED70F70AA6A27C0000000810ED70FD0000000500000003000000000000000113A54CF9000000010115233B0000000513F8590400000002033F67C90000000513BC30FE000000040AA6A27610EDACF7000000000000000810ED70F70AA6A27C10EDACFD000000030000000810ED70FD046001021383DCF900000005000000010000000500000003000000000000000300000000000000030000000000000004"
theorem small_1275577_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1275577_left_root small_1275577_left_fuel small_1275577_left_count small_1275577_left_encoded = true := by
  decide +kernel
theorem small_1275577_left_covered : CoveredBy scale carrier boxes small_1275577_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1275577_left_root small_1275577_left_fuel small_1275577_left_count small_1275577_left_encoded small_1275577_left_checked

theorem cover_1275577 : CoveredBy scale carrier boxes root_1275577 := by
  apply coveredBy_split_literal root_1275577 small_1275577_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1276075 coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_1275577_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1276075
#print axioms cover_1275577

def root_1275571 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1275571_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1275571_left_fuel : Nat := 1
def small_1275571_left_count : Nat := 1
def small_1275571_left_encoded : String := "00000003"
theorem small_1275571_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1275571_left_root small_1275571_left_fuel small_1275571_left_count small_1275571_left_encoded = true := by
  decide +kernel
theorem small_1275571_left_covered : CoveredBy scale carrier boxes small_1275571_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1275571_left_root small_1275571_left_fuel small_1275571_left_count small_1275571_left_encoded small_1275571_left_checked

theorem cover_1275571 : CoveredBy scale carrier boxes root_1275571 := by
  apply coveredBy_split_literal root_1275571 small_1275571_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1275577 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_1275571_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1275577
#print axioms cover_1275571

def root_1275570 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1275570_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1275570_right_fuel : Nat := 14
def small_1275570_right_count : Nat := 45
def small_1275570_right_encoded : String := "0F34D0FC04548A09000000081386ACFE000000040C9A86F60F878CF7000000000280010200000008000000080F8750F70280010213D7B0F9022A457B13E201040AD3577D10D13CFC00000003067ECE890000000812EA94FE000000040000000510D100FC00000008000000030000000213E1C504000000020AD3577D10D13CFC00000003067ECE890000000800000005000000050000000113D7ECF900000001022A457B00000009000000050000000000000003"
theorem small_1275570_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1275570_right_root small_1275570_right_fuel small_1275570_right_count small_1275570_right_encoded = true := by
  decide +kernel
theorem small_1275570_right_covered : CoveredBy scale carrier boxes small_1275570_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1275570_right_root small_1275570_right_fuel small_1275570_right_count small_1275570_right_encoded small_1275570_right_checked

theorem cover_1275570 : CoveredBy scale carrier boxes root_1275570 := by
  apply coveredBy_split_literal root_1275570 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1275571 small_1275570_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1275571
  · exact small_1275570_right_covered
#print axioms cover_1275570

def root_1275564 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1275564_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1275564_left_fuel : Nat := 1
def small_1275564_left_count : Nat := 1
def small_1275564_left_encoded : String := "00000002"
theorem small_1275564_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1275564_left_root small_1275564_left_fuel small_1275564_left_count small_1275564_left_encoded = true := by
  decide +kernel
theorem small_1275564_left_covered : CoveredBy scale carrier boxes small_1275564_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1275564_left_root small_1275564_left_fuel small_1275564_left_count small_1275564_left_encoded small_1275564_left_checked

theorem cover_1275564 : CoveredBy scale carrier boxes root_1275564 := by
  apply coveredBy_split_literal root_1275564 small_1275564_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1275570 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_1275564_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1275570
#print axioms cover_1275564

def root_1274880 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1274880_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1274880_left_fuel : Nat := 25
def small_1274880_left_count : Nat := 319
def small_1274880_left_encoded : String := "1386AD040CFD9BFD0F350CFC0000000304548A09138670FE0C9A86F60F878CF7000000000C9A86FC000000090F8750FD00000006000000030F8750F70C9A86FC000000090F8750FD000000050000000300000000000000041386ACFE000000040C9A86F60F878CF7000000000C9A86FC0F878CFD000000030280010213D7B0F9067ECE7B12EA9504067ECE890000000612EA94FE000000040DE7C9F60E6014F700000000000000060E5FD8F70DE7C9FC0000000900000006000000000000000212EA590400000002067ECE8912EA58FE0DE7C9F60E6014F700000000000000060E5FD8F700000009000000000000000412EA94FE000000040DE7C9F60E6014F7000000000DE7C9FC0E6014FD0000000300000008000000060E5FD8F70DE7C9FC0E6014FD000000030140010213F5D8F90569AC3B000000061340D504000000020000000800000001000000090E5FD8FD0000000600000003000000000000000113D7ECF900000001067ECE7B0000000912EA590400000002067ECE890000000912EA94FE000000040DE7C9F60E6014F7000000000DE7C9FC000000090E5FD8FD00000007000000030E5FD8F700000009000000000F8750FD028001020000000613D7ECF900000001067ECE7B0000000712EA590400000002067ECE890000000612EA94FE000000040DE7C9F6000000070E5FD8F70000000700000000000000030F8750F70C9A86FC0F878CFD000000030280010213D7B0F9067ECE7B12EA9504067ECE890000000912EA94FE000000040B4D43F610804CF70000000000000009000000090000000212EA590400000002067ECE8912EA58FE0B4D43F610804CF70000000000000009000000090000000412EA94FE000000040B4D43F610804CF7000000000DE7C9FC0E6014FD00000003014001020000000A000000090E5FD8FD014001020000000613F614F9000000010569AC3B000000061340D504000000020793F0C9000000060000000A00000003108010F70DE7C9FC000000090E5FD8FD0000000A00000003000000000000000113D7ECF900000001067ECE7B0000000912EA590400000002067ECE890000000912EA94FE000000040B4D43F610804CF70000000000000009000000090F8750FD0280010213D7B0F9067ECE7B0000000612EA590400000002067ECE890000000612EA94FE00000004000000060000000113D7ECF900000001067ECE7B12EA9504067ECE890000000512EA94FE000000040B4D43F600000007108010F700000005000000000000000212EA590400000002067ECE8912EA58FE0B4D43F610804CF7000000000B4D43FC0000000900000006108010F700000005000000000000000412EA94FE000000040B4D43F610804CF7000000000B4D43FC10804CFD0000000303C0010213A510F9000000060000000100000007108010FD0000000600000003108010F70B4D43FC10804CFD0000000303C0010213A510F90569AC3B000000091340D504000000020793F0C9000000060000000A0000000113A54CF9000000010569AC3B000000091340D5040000000200000009108010FD03C001020000000613A54CF9000000010569AC3B000000051340D5040000000200000007000000030000000000000003000000000F34D0FC04548A09000000091386ACFE000000040C9A86F60F878CF7000000000280010213D7B0F9067ECE7B0000000912EA5904000000020AD3577D000000080000000800000001000000090F8750F700000009000000000000000300000002"
theorem small_1274880_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1274880_left_root small_1274880_left_fuel small_1274880_left_count small_1274880_left_encoded = true := by
  decide +kernel
theorem small_1274880_left_covered : CoveredBy scale carrier boxes small_1274880_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1274880_left_root small_1274880_left_fuel small_1274880_left_count small_1274880_left_encoded small_1274880_left_checked

theorem cover_1274880 : CoveredBy scale carrier boxes root_1274880 := by
  apply coveredBy_split_literal root_1274880 small_1274880_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1275564 coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_1274880_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1275564
#print axioms cover_1274880

def root_1274874 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1274874_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1274874_left_fuel : Nat := 1
def small_1274874_left_count : Nat := 1
def small_1274874_left_encoded : String := "00000000"
theorem small_1274874_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1274874_left_root small_1274874_left_fuel small_1274874_left_count small_1274874_left_encoded = true := by
  decide +kernel
theorem small_1274874_left_covered : CoveredBy scale carrier boxes small_1274874_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1274874_left_root small_1274874_left_fuel small_1274874_left_count small_1274874_left_encoded small_1274874_left_checked

theorem cover_1274874 : CoveredBy scale carrier boxes root_1274874 := by
  apply coveredBy_split_literal root_1274874 small_1274874_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1274880 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_1274874_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1274880
#print axioms cover_1274874

def root_1274873 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1274873_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1274873_right_fuel : Nat := 17
def small_1274873_right_count : Nat := 95
def small_1274873_right_encoded : String := "0F34D0F6045489FB1386AD040CFD9BFD0F350CFC0000000304548A09138670FE0C9A86FC0F878CFD000000030000000800000006000000041386ACFE000000040C9A86FC0F878CFD000000030280010213D7B0F90AD3577710D13CF600000000067ECE7B0000000612EA59040000000200000008000000060000000113D7ECF9000000010AD3577710D13CF600000000067ECE7B0000000712EA590400000002067ECE890000000800000007000000070F8750FD028001020000000600000007000000030F34D0FC04548A09000000081386ACFE00000004028001020000000800000008000000030000000213867104000000020CFD9BFD0F350CFC0000000304548A09000000081386ACFE000000040C9A86FC0F878CFD000000030280010200000008000000080F8750FD028001020000000613D7ECF9000000010AD3577710D13CF600000000022A457B13E20104067ECE890000000600000005000000020000000500000005000000030F34D0FC000000080000000300000000"
theorem small_1274873_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1274873_right_root small_1274873_right_fuel small_1274873_right_count small_1274873_right_encoded = true := by
  decide +kernel
theorem small_1274873_right_covered : CoveredBy scale carrier boxes small_1274873_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1274873_right_root small_1274873_right_fuel small_1274873_right_count small_1274873_right_encoded small_1274873_right_checked

theorem cover_1274873 : CoveredBy scale carrier boxes root_1274873 := by
  apply coveredBy_split_literal root_1274873 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1274874 small_1274873_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1274874
  · exact small_1274873_right_covered
#print axioms cover_1274873

def root_1274868 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1274868_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1274868_right_fuel : Nat := 1
def small_1274868_right_count : Nat := 1
def small_1274868_right_encoded : String := "00000001"
theorem small_1274868_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1274868_right_root small_1274868_right_fuel small_1274868_right_count small_1274868_right_encoded = true := by
  decide +kernel
theorem small_1274868_right_covered : CoveredBy scale carrier boxes small_1274868_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1274868_right_root small_1274868_right_fuel small_1274868_right_count small_1274868_right_encoded small_1274868_right_checked

theorem cover_1274868 : CoveredBy scale carrier boxes root_1274868 := by
  apply coveredBy_split_literal root_1274868 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1274873 small_1274868_right_root coord1 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1274873
  · exact small_1274868_right_covered
#print axioms cover_1274868

def root_1274867 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1274867 : CoveredBy scale carrier boxes root_1274867 := by
  apply coveredBy_split_literal root_1274867 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1274868 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0493.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1274868
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0493.covered
#print axioms cover_1274867

def root_1274862 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1274862_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1274862_right_fuel : Nat := 1
def small_1274862_right_count : Nat := 1
def small_1274862_right_encoded : String := "00000004"
theorem small_1274862_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1274862_right_root small_1274862_right_fuel small_1274862_right_count small_1274862_right_encoded = true := by
  decide +kernel
theorem small_1274862_right_covered : CoveredBy scale carrier boxes small_1274862_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1274862_right_root small_1274862_right_fuel small_1274862_right_count small_1274862_right_encoded small_1274862_right_checked

theorem cover_1274862 : CoveredBy scale carrier boxes root_1274862 := by
  apply coveredBy_split_literal root_1274862 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1274867 small_1274862_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1274867
  · exact small_1274862_right_covered
#print axioms cover_1274862

def root_1274861 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1274861 : CoveredBy scale carrier boxes root_1274861 := by
  apply coveredBy_split_literal root_1274861 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1274862 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0494.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1274862
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0494.covered
#print axioms cover_1274861

def root_1274855 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1274855_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1274855_left_fuel : Nat := 1
def small_1274855_left_count : Nat := 1
def small_1274855_left_encoded : String := "00000003"
theorem small_1274855_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1274855_left_root small_1274855_left_fuel small_1274855_left_count small_1274855_left_encoded = true := by
  decide +kernel
theorem small_1274855_left_covered : CoveredBy scale carrier boxes small_1274855_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1274855_left_root small_1274855_left_fuel small_1274855_left_count small_1274855_left_encoded small_1274855_left_checked

theorem cover_1274855 : CoveredBy scale carrier boxes root_1274855 := by
  apply coveredBy_split_literal root_1274855 small_1274855_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1274861 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1274855_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1274861
#print axioms cover_1274855

def root_1274854 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1274854_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1274854_right_fuel : Nat := 13
def small_1274854_right_count : Nat := 55
def small_1274854_right_encoded : String := "120700FC08A91309120700FE05000102135D44F90CFD9BF70F350CF600000000045489FB1386AD04045489FD1386ACFC0000000304548A09000000080000000900000008000000021386710400000002000000080000000800000001135D80F9000000010CFD9BF70F350CF600000000045489FB1386AD04045489FD00000009138670FC0000000600000003000000021386710400000002000000060F34D0F600000008000000000000000412073CFE0000000405000102135D44F90CFD9BF70F350CF6000000000000000500000005000000010000000500000003"
theorem small_1274854_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1274854_right_root small_1274854_right_fuel small_1274854_right_count small_1274854_right_encoded = true := by
  decide +kernel
theorem small_1274854_right_covered : CoveredBy scale carrier boxes small_1274854_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1274854_right_root small_1274854_right_fuel small_1274854_right_count small_1274854_right_encoded small_1274854_right_checked

theorem cover_1274854 : CoveredBy scale carrier boxes root_1274854 := by
  apply coveredBy_split_literal root_1274854 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1274855 small_1274854_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1274855
  · exact small_1274854_right_covered
#print axioms cover_1274854

def root_1274848 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1274848_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1274848_left_fuel : Nat := 1
def small_1274848_left_count : Nat := 1
def small_1274848_left_encoded : String := "00000002"
theorem small_1274848_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1274848_left_root small_1274848_left_fuel small_1274848_left_count small_1274848_left_encoded = true := by
  decide +kernel
theorem small_1274848_left_covered : CoveredBy scale carrier boxes small_1274848_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1274848_left_root small_1274848_left_fuel small_1274848_left_count small_1274848_left_encoded small_1274848_left_checked

theorem cover_1274848 : CoveredBy scale carrier boxes root_1274848 := by
  apply coveredBy_split_literal root_1274848 small_1274848_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1274854 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1274848_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1274854
#print axioms cover_1274848

def root_1272928 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1272928 : CoveredBy scale carrier boxes root_1272928 := by
  apply coveredBy_split_literal root_1272928 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0491.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1274848 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0491.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1274848
#print axioms cover_1272928

def root_1272922 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1272922_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1272922_left_fuel : Nat := 1
def small_1272922_left_count : Nat := 1
def small_1272922_left_encoded : String := "00000000"
theorem small_1272922_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1272922_left_root small_1272922_left_fuel small_1272922_left_count small_1272922_left_encoded = true := by
  decide +kernel
theorem small_1272922_left_covered : CoveredBy scale carrier boxes small_1272922_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1272922_left_root small_1272922_left_fuel small_1272922_left_count small_1272922_left_encoded small_1272922_left_checked

theorem cover_1272922 : CoveredBy scale carrier boxes root_1272922 := by
  apply coveredBy_split_literal root_1272922 small_1272922_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1272928 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1272922_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1272928
#print axioms cover_1272922

def root_1272921 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1272921_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1272921_right_fuel : Nat := 19
def small_1272921_right_count : Nat := 199
def small_1272921_right_encoded : String := "120700F608A912FB12073D0408A912FD12073CFC0000000308A91309120700FE05000102135D44F9045489F71386ACF6000000000CFD9BFB0F350D040CFD9BFD0000000600000009000000020F34D104000000020CFD9BFD0F350CFC00000003000000060F34D0FC0000000800000003138670F60CFD9BFB000000070F34D104000000020CFD9BFD00000006000000080000000000000001135D80F900000001045489F71386ACF6000000000CFD9BFB000000070F34D1040000000200000007000000070000000412073CFE0000000405000102135D44F9045489F71386ACF6000000000CFD9BFB0F350D0400000007000000020F34D104000000020CFD9BFD000000070F34D0FC0CFD9C090F34D0FE00000007000000040000000500000003138670F600000007000000000000000100000007120700FC08A913090000000912073CFE0000000405000102135D44F9045489F71386ACF6000000000CFD9BFB0F350D0400000009000000020F34D1040000000200000005138670F60CFD9BFB00000007000000050000000000000001135D80F900000001045489F71386ACF6000000000CFD9BFB0000000700000005000000050000000300000002120701040000000208A912FD12073CFC0000000308A91309120700FE05000102135D44F9045489F71386ACF600000000045489FB1386AD040CFD9BFD0F350CFC0000000304548A09000000061386ACFE000000040C9A86FC000000070000000600000008000000021386710400000002000000080000000800000001135D80F900000001045489F71386ACF600000000045489FB1386AD040CFD9BFD000000070F34D0FC00000008000000030000000213867104000000020CFD9BFD0F350CFC0000000304548A09000000080000000500000005138670F6045489FB1386AD040CFD9BFD00000007000000050000000200000005000000000000000412073CFE0000000405000102135D44F9045489F71386ACF600000000045489FB1386AD040CFD9BFD0F350CFC0000000300000005000000050000000200000005000000050000000100000005120700FC08A9130900000008000000050000000300000000"
theorem small_1272921_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1272921_right_root small_1272921_right_fuel small_1272921_right_count small_1272921_right_encoded = true := by
  decide +kernel
theorem small_1272921_right_covered : CoveredBy scale carrier boxes small_1272921_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1272921_right_root small_1272921_right_fuel small_1272921_right_count small_1272921_right_encoded small_1272921_right_checked

theorem cover_1272921 : CoveredBy scale carrier boxes root_1272921 := by
  apply coveredBy_split_literal root_1272921 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1272922 small_1272921_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1272922
  · exact small_1272921_right_covered
#print axioms cover_1272921

def root_1272916 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1272916_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1272916_right_fuel : Nat := 1
def small_1272916_right_count : Nat := 1
def small_1272916_right_encoded : String := "00000004"
theorem small_1272916_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1272916_right_root small_1272916_right_fuel small_1272916_right_count small_1272916_right_encoded = true := by
  decide +kernel
theorem small_1272916_right_covered : CoveredBy scale carrier boxes small_1272916_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1272916_right_root small_1272916_right_fuel small_1272916_right_count small_1272916_right_encoded small_1272916_right_checked

theorem cover_1272916 : CoveredBy scale carrier boxes root_1272916 := by
  apply coveredBy_split_literal root_1272916 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1272921 small_1272916_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1272921
  · exact small_1272916_right_covered
#print axioms cover_1272916

def root_1272915 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1272915_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1272915_right_fuel : Nat := 24
def small_1272915_right_count : Nat := 307
def small_1272915_right_encoded : String := "1151E9090000000408A912F712073CF60000000008A912FB12073D0408A912FD12073CFC0000000305000102135D44F9050000FE135D81090CFD9BF70F350CF6000000000CFD9BFB0F350D040CFD9BFD0F350CFC00000003000000080F34D0FC0000000A00000003000000020F34D104000000020CFD9BFD0F350CFC000000030C9A86F60F878CF7000000000C9A86FC0000000A0F8750FD00000008000000030000000A0F34D0FC00000005000000030F34D0F60CFD9BFB0F350D040000000700000002000000050000000000000004135D4509000000040CFD9BF70F350CF6000000000CFD9BFB0F350D040CFD9BFD0F350CFC00000003000000080F34D0FC0000000A00000003000000020F34D104000000020CFD9BFD0000000A0F34D0FC00000005000000030F34D0F60CFD9BFB0F350D040000000700000002000000050000000000000001135D80F900000001050000FE135D81090CFD9BF70F350CF6000000000CFD9BFB0F350D040CFD9BFD000000070F34D0FC0000000700000003000000020F34D104000000020CFD9BFD0F350CFC000000030C9A86F60F878CF700000000000000070F8750F70C9A86FC0000000A00000008000000000F34D0FC00000005000000030F34D0F6000000070000000000000004135D4509000000040CFD9BF70F350CF6000000000CFD9BFB0F350D040CFD9BFD000000070F34D0FC0000000700000003000000020F34D104000000020CFD9BFD0F350CFC000000030C9A86F60F878CF700000000000000070F8750F70C9A86FC0000000A00000008000000000F34D0FC00000005000000030F34D0F60000000700000000120700FC05000102135D44F9050000FE135D81090CFD9BF70F350CF6000000000000000500000005000000040000000500000001135D80F900000001050000FE00000005135D450900000004000000050000000300000002120701040000000208A912FD12073CFC0000000305000102135D44F9050000FE135D81090CFD9BF70F350CF600000000045489FB1386AD040CFD9BFD0F350CFC000000030C9A86F60F878CF700000000000000050000000A0000000500000002000000050000000500000004135D4509000000040CFD9BF70F350CF600000000045489FB1386AD040CFD9BFD0000000A0000000500000002000000050000000500000001135D80F900000001050000FE135D81090CFD9BF70F350CF600000000045489FB1386AD040CFD9BFD0F350CFC000000030C9A86F60F878CF700000000000000050F8750F70C9A86FC0000000A0F8750FD0780010200000008128A7CF9000000010000000800000003000000000000000500000002000000050000000500000004135D4509000000040CFD9BF70F350CF600000000045489FB1386AD040CFD9BFD0F350CFC000000030C9A86F60F878CF7000000000C9A86FC000000050F8750FD078001020000000500000007000000030F8750F70000000A00000000000000050000000213867104000000020CFD9BFD0F350CFC000000030C9A86F6000000050F8750F70C9A86FC000000050F8750FD0000000A0000000300000000000000050F34D0F6000000050000000000000005120700F608A912FB12073D0408A912FD12073CFC0000000305000102135D44F9050000FE0000000700000005000000010000000700000005000000020000000500000000"
theorem small_1272915_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1272915_right_root small_1272915_right_fuel small_1272915_right_count small_1272915_right_encoded = true := by
  decide +kernel
theorem small_1272915_right_covered : CoveredBy scale carrier boxes small_1272915_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1272915_right_root small_1272915_right_fuel small_1272915_right_count small_1272915_right_encoded small_1272915_right_checked

theorem cover_1272915 : CoveredBy scale carrier boxes root_1272915 := by
  apply coveredBy_split_literal root_1272915 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1272916 small_1272915_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1272916
  · exact small_1272915_right_covered
#print axioms cover_1272915

def root_1272909 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1272909_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1272909_left_fuel : Nat := 1
def small_1272909_left_count : Nat := 1
def small_1272909_left_encoded : String := "00000003"
theorem small_1272909_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1272909_left_root small_1272909_left_fuel small_1272909_left_count small_1272909_left_encoded = true := by
  decide +kernel
theorem small_1272909_left_covered : CoveredBy scale carrier boxes small_1272909_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1272909_left_root small_1272909_left_fuel small_1272909_left_count small_1272909_left_encoded small_1272909_left_checked

theorem cover_1272909 : CoveredBy scale carrier boxes root_1272909 := by
  apply coveredBy_split_literal root_1272909 small_1272909_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1272915 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1272909_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1272915
#print axioms cover_1272909

def root_1286936 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1286936 : CoveredBy scale carrier boxes root_1286936 := by
  apply coveredBy_split_literal root_1286936 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0495.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0496.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0495.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0496.covered
#print axioms cover_1286936

def root_1286930 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1286930_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1286930_left_fuel : Nat := 1
def small_1286930_left_count : Nat := 1
def small_1286930_left_encoded : String := "00000002"
theorem small_1286930_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1286930_left_root small_1286930_left_fuel small_1286930_left_count small_1286930_left_encoded = true := by
  decide +kernel
theorem small_1286930_left_covered : CoveredBy scale carrier boxes small_1286930_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1286930_left_root small_1286930_left_fuel small_1286930_left_count small_1286930_left_encoded small_1286930_left_checked

theorem cover_1286930 : CoveredBy scale carrier boxes root_1286930 := by
  apply coveredBy_split_literal root_1286930 small_1286930_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1286936 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1286930_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1286936
#print axioms cover_1286930

def root_1286654 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1286654_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1286654_left_fuel : Nat := 16
def small_1286654_left_count : Nat := 127
def small_1286654_left_encoded : String := "12073D0408A91309120700FE05000102135D44F9050000FC135D80FD000000030CFD9BF700000005000000060000000600000001135D80F900000001050000FC135D80FD000000030CFD9BF70F350CF6000000000CFD9BFB000000050F34D1040000000204548A0900000005000000070F34D0F60000000700000000135D44FD0CFD9BF70000000500000006000000030000000412073CFE0000000405000102135D44F9050000FC135D80FD000000030CFD9BF70F350CF6000000000CFD9BFB0F350D040CFD9C090000000500000008000000020F34D104000000020CFD9C090F34D0FE0C9A86F60F878CF700000000000000060F8750F70000000800000000000000040F350CFE00000004000000080F34D0F60CFD9BFB000000070F34D104000000020CFD9C090F34D0FE00000006000000040000000700000000135D44FD0CFD9BF70F350CF600000000000000080F34D0F60CFD9BFB000000070F34D104000000020CFD9C090000000600000007000000000000000300000001135D80F900000001050000FC135D80FD000000030CFD9BF70F350CF6000000000CFD9BFB0F350D0400000007000000020F34D104000000020CFD9C090F34D0FE0000000700000004000000070F34D0F60000000700000000135D44FD0CFD9BF70F350CF600000000000000080F34D0F600000007000000000000000300000002"
theorem small_1286654_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1286654_left_root small_1286654_left_fuel small_1286654_left_count small_1286654_left_encoded = true := by
  decide +kernel
theorem small_1286654_left_covered : CoveredBy scale carrier boxes small_1286654_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1286654_left_root small_1286654_left_fuel small_1286654_left_count small_1286654_left_encoded small_1286654_left_checked

theorem cover_1286654 : CoveredBy scale carrier boxes root_1286654 := by
  apply coveredBy_split_literal root_1286654 small_1286654_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1286930 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1286654_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1286930
#print axioms cover_1286654

def root_1286648 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1286648_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1286648_left_fuel : Nat := 1
def small_1286648_left_count : Nat := 1
def small_1286648_left_encoded : String := "00000000"
theorem small_1286648_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1286648_left_root small_1286648_left_fuel small_1286648_left_count small_1286648_left_encoded = true := by
  decide +kernel
theorem small_1286648_left_covered : CoveredBy scale carrier boxes small_1286648_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1286648_left_root small_1286648_left_fuel small_1286648_left_count small_1286648_left_encoded small_1286648_left_checked

theorem cover_1286648 : CoveredBy scale carrier boxes root_1286648 := by
  apply coveredBy_split_literal root_1286648 small_1286648_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1286654 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1286648_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1286654
#print axioms cover_1286648

def root_1286647 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1286647_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1286647_right_fuel : Nat := 15
def small_1286647_right_count : Nat := 81
def small_1286647_right_encoded : String := "120700F608A912FB12073D0408A91309120700FE0500010200000006000000070000000412073CFE0000000405000102135D44F9050000FC0000000700000007000000010000000700000002120701040000000208A91309120700FE0500010200000006135D80F900000001050000FC135D80FD00000003045489F70000000700000006000000060000000412073CFE0000000405000102135D44F9050000FC135D80FD00000003045489F71386ACF600000000045489FB1386AD040CFD9C090000000600000005000000020000000500000005135D44FD045489F71386ACF600000000045489FB0000000600000005000000050000000300000001135D80F900000001050000FC135D80FD00000003045489F71386ACF600000000045489FB000000070000000500000005135D44FD045489F700000007000000050000000300000000"
theorem small_1286647_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1286647_right_root small_1286647_right_fuel small_1286647_right_count small_1286647_right_encoded = true := by
  decide +kernel
theorem small_1286647_right_covered : CoveredBy scale carrier boxes small_1286647_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1286647_right_root small_1286647_right_fuel small_1286647_right_count small_1286647_right_encoded small_1286647_right_checked

theorem cover_1286647 : CoveredBy scale carrier boxes root_1286647 := by
  apply coveredBy_split_literal root_1286647 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1286648 small_1286647_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1286648
  · exact small_1286647_right_covered
#print axioms cover_1286647

def root_1286642 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1286642_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1286642_right_fuel : Nat := 1
def small_1286642_right_count : Nat := 1
def small_1286642_right_encoded : String := "00000004"
theorem small_1286642_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1286642_right_root small_1286642_right_fuel small_1286642_right_count small_1286642_right_encoded = true := by
  decide +kernel
theorem small_1286642_right_covered : CoveredBy scale carrier boxes small_1286642_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1286642_right_root small_1286642_right_fuel small_1286642_right_count small_1286642_right_encoded small_1286642_right_checked

theorem cover_1286642 : CoveredBy scale carrier boxes root_1286642 := by
  apply coveredBy_split_literal root_1286642 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1286647 small_1286642_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1286647
  · exact small_1286642_right_covered
#print axioms cover_1286642

def root_1286641 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1286641_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1286641_right_fuel : Nat := 25
def small_1286641_right_count : Nat := 297
def small_1286641_right_encoded : String := "1151E9090000000408A912F712073CF60000000008A912FB12073D0405000102135D44F9050000FC135D80FD00000003050000FE135D81090CFD9BF7000000080F34D0F6000000070000000000000004135D4509000000040CFD9BF70000000800000008135D44FD000000080000000300000001135D80F900000001050000FC135D80FD00000003050000FE135D81090CFD9BF70F350CF600000000000000080000000700000004135D4509000000040CFD9BF70F350CF6000000000000000800000007135D44FD050000FE00000008000000080000000300000002120701040000000205000102135D44F9050000FC135D80FD00000003050000FE135D81090CFD9BF70F350CF600000000045489FB1386AD040C9A86F60F878CF700000000028001020000000800000008000000080000000213867104000000020C9A86F6000000090F8750F700000009000000000F34D0F6000000050000000000000004135D4509000000040CFD9BF70F350CF600000000045489FB1386AD040C9A86F60F878CF70000000002800102000000060000000800000008000000021386710400000002000000090F34D0F60000000500000000135D44FD050000FE135D81090CFD9BF70F350CF600000000000000080F34D0F6000000090000000000000004135D4509000000040CFD9BF7000000090F34D0F600000009000000000000000300000001135D80F900000001050000FC135D80FD00000003050000FE135D81090CFD9BF70F350CF600000000045489FB1386AD040C9A86F60F878CF700000000078001020000000800000007000000080000000213867104000000020C9A86F60F878CF7000000000780010200000005128A7CF900000001000000050F8750F707800102128A40F9078000FC0000000A0000000800000001128A7CF900000001078000FC128A7CFD00000003078000FE000000050000000800000008000000000F34D0F6045489FB00000007000000050000000000000004135D4509000000040CFD9BF70F350CF600000000045489FB1386AD040C9A86F60F878CF7000000000780010200000008128A7CF90000000100000007000000080000000213867104000000020C9A86F60F878CF70000000007800102128A40F90000000900000001128A7CF900000001078000FC00000005128A40FD00000009000000030F8750F707800102128A40F9078000FC0000000A0000000800000001128A7CF900000001078000FC128A7CFD00000003028000FE0000000813D7B10900000004022A457B000000080000000900000008000000000F34D0F6045489FB000000070000000500000000135D44FD050000FE135D81090CFD9BF70F350CF600000000045489FB0000000813867104000000020C9A86F600000009000000080F34D0F6045489FB000000071386710400000002000000090000000000000004135D4509000000040CFD9BF70F350CF600000000045489FB000000081386710400000002000000090F34D0F6045489FB00000007000000090000000000000003120700F608A912FB0000000712070104000000020500010200000005135D80F900000001050000FC00000005135D44FD050000FE00000005135D450900000004000000070000000300000000"
theorem small_1286641_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1286641_right_root small_1286641_right_fuel small_1286641_right_count small_1286641_right_encoded = true := by
  decide +kernel
theorem small_1286641_right_covered : CoveredBy scale carrier boxes small_1286641_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1286641_right_root small_1286641_right_fuel small_1286641_right_count small_1286641_right_encoded small_1286641_right_checked

theorem cover_1286641 : CoveredBy scale carrier boxes root_1286641 := by
  apply coveredBy_split_literal root_1286641 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1286642 small_1286641_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1286642
  · exact small_1286641_right_covered
#print axioms cover_1286641

def root_1286636 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1286636_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1286636_right_fuel : Nat := 1
def small_1286636_right_count : Nat := 1
def small_1286636_right_encoded : String := "00000003"
theorem small_1286636_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1286636_right_root small_1286636_right_fuel small_1286636_right_count small_1286636_right_encoded = true := by
  decide +kernel
theorem small_1286636_right_covered : CoveredBy scale carrier boxes small_1286636_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1286636_right_root small_1286636_right_fuel small_1286636_right_count small_1286636_right_encoded small_1286636_right_checked

theorem cover_1286636 : CoveredBy scale carrier boxes root_1286636 := by
  apply coveredBy_split_literal root_1286636 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1286641 small_1286636_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1286641
  · exact small_1286636_right_covered
#print axioms cover_1286636

def root_1272908 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1272908 : CoveredBy scale carrier boxes root_1272908 := by
  apply coveredBy_split_literal root_1272908 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1272909 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1286636 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1272909
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1286636
#print axioms cover_1272908

def root_1272902 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1272902_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1272902_left_fuel : Nat := 1
def small_1272902_left_count : Nat := 1
def small_1272902_left_encoded : String := "00000002"
theorem small_1272902_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1272902_left_root small_1272902_left_fuel small_1272902_left_count small_1272902_left_encoded = true := by
  decide +kernel
theorem small_1272902_left_covered : CoveredBy scale carrier boxes small_1272902_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1272902_left_root small_1272902_left_fuel small_1272902_left_count small_1272902_left_encoded small_1272902_left_checked

theorem cover_1272902 : CoveredBy scale carrier boxes root_1272902 := by
  apply coveredBy_split_literal root_1272902 small_1272902_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1272908 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1272902_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1272908
#print axioms cover_1272902

def root_1271912 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1271912_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1271912_left_fuel : Nat := 31
def small_1271912_left_count : Nat := 469
def small_1271912_left_encoded : String := "1151E8FB0A0000FC115224FD000000030A0000FE1152250908A912F712073CF60000000008A912FD12073CFC0000000308A91309120700FE05000102135D44F90500010400000006135D80FB000000020CFD9BF7000000050000000600000001135D80F9000000010500010400000007135D80FB000000020CFD9BF70F350CF6000000000CFD9BFD000000050F34D0FC0000000700000003000000070000000412073CFE0000000405000102135D44F905000104135D44FB0000000700000002135D80FB000000020CFD9BF70F350CF6000000000CFD9BFD0F350CFC000000030CFD9C0900000005000000070F34D0FC0CFD9C090F34D0FE000000070000000400000007000000030F34D0F600000007000000000000000100000007120700FC08A91309120700FE05000102135D44F905000104135D44FB0CFD9BF70F350CF600000000045489FD00000005138670FC04548A09000000051386ACFE000000040C9A86F60F878CF700000000000000070F8750F702800102000000050000000700000000000000030F34D0F6045489FD00000006138670FC00000006000000030000000000000002135D80FB000000020CFD9BF70F350CF600000000045489FD1386ACFC0000000304548A09000000051386ACFE000000040C9A86F60F878CF700000000000000090F8750F70000000500000000138670FC04548A09138670FE0C9A86F60F878CF700000000000000090F8750F70000000500000000000000041386ACFE000000040C9A86F60F878CF7000000000280010200000009000000090F8750F70280010213D7B0F907800104128A40FB022A457D0000000513E1C4FC067ECE8900000005000000090000000300000002000000090000000113D7ECF90000000107800104128A40FB022A457D0000000513E1C4FC067ECE89000000050000000700000003000000020000000900000000000000030F34D0F6045489FD00000009138670FC00000009000000030000000000000001135D80F90000000105000104135D44FB0CFD9BF70F350CF600000000045489FD00000007138670FC04548A09138670FE0C9A86F6000000070F8750F700000005000000000000000400000007000000030000000700000002135D80FB000000020CFD9BF70F350CF600000000045489FD1386ACFC0000000304548A09138670FE0C9A86F6000000070F8750F700000005000000000000000400000007138670FC04548A09138670FE0C9A86F60F878CF7000000000780010200000009000000070F8750F707800102128A40F907800104000000050000000900000001128A7CF90000000107800104128A40FB00000007000000020000000900000000000000041386ACFE000000040C9A86F6000000070F8750F707800102128A40F907800104128A40FB000000070000000200000009000000010000000700000000000000030F34D0F600000007000000000000000412073CFE0000000405000102135D44F905000104135D44FB0CFD9BF70F350CF600000000045489FD00000007138670FC0CFD9C090F34D0FE000000070000000400000007000000030000000700000002135D80FB000000020CFD9BF70F350CF600000000045489FD1386ACFC000000030CFD9C090F34D0FE0C9A86F6000000070F8750F70280010213D7B0F90780010400000007000000090000000100000007000000000000000400000007138670FC0CFD9C090F34D0FE0C9A86F60F878CF7000000000280010200000009000000070F8750F70280010213D7B0F907800104128A40FB022A457D000000070000000A00000002000000090000000113D7ECF90000000107800104128A40FB00000007000000020000000900000000000000040F350CFE000000040C9A86F60F878CF7000000000C9A86FE00000007000000090F8750F70000000A00000000000000030F34D0F6045489FD00000007138670FC0CFD9C090000000900000007000000030000000000000001135D80F9000000010500010400000007135D80FB000000020CFD9BF70F350CF600000000045489FD00000007138670FC0CFD9C090F34D0FE000000070000000400000007000000030000000700000003120700F608A912FD00000007120700FC08A91309120700FE0000000700000004000000070000000300000000000000041151E9090000000408A912F712073CF60000000008A912FD12073CFC0000000305000102135D44F90500010400000007135D80FB00000002050000FE00000007135D450900000004000000070000000100000007120700FC05000102135D44F905000104135D44FB050000FE00000007135D4509000000040000000700000002135D80FB00000002050000FE135D81090CFD9BF70F350CF600000000045489FD00000007000000050000000700000004135D4509000000040CFD9BF70000000A00000005000000010000000700000003120700F600000007000000001151E8FD0A0000FE1152250908A912F712073CF60000000008A913090000000512073CFE00000004050001020000000800000007120700F60000000700000000000000041151E90900000004000000070000000300000002"
theorem small_1271912_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1271912_left_root small_1271912_left_fuel small_1271912_left_count small_1271912_left_encoded = true := by
  decide +kernel
theorem small_1271912_left_covered : CoveredBy scale carrier boxes small_1271912_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1271912_left_root small_1271912_left_fuel small_1271912_left_count small_1271912_left_encoded small_1271912_left_checked

theorem cover_1271912 : CoveredBy scale carrier boxes root_1271912 := by
  apply coveredBy_split_literal root_1271912 small_1271912_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1272902 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1271912_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1272902
#print axioms cover_1271912

def root_1271907 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1271907_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1271907_right_fuel : Nat := 1
def small_1271907_right_count : Nat := 1
def small_1271907_right_encoded : String := "00000001"
theorem small_1271907_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1271907_right_root small_1271907_right_fuel small_1271907_right_count small_1271907_right_encoded = true := by
  decide +kernel
theorem small_1271907_right_covered : CoveredBy scale carrier boxes small_1271907_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1271907_right_root small_1271907_right_fuel small_1271907_right_count small_1271907_right_encoded small_1271907_right_checked

theorem cover_1271907 : CoveredBy scale carrier boxes root_1271907 := by
  apply coveredBy_split_literal root_1271907 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1271912 small_1271907_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1271912
  · exact small_1271907_right_covered
#print axioms cover_1271907

def root_1271906 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1271906 : CoveredBy scale carrier boxes root_1271906 := by
  apply coveredBy_split_literal root_1271906 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1271907 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0497.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1271907
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0497.covered
#print axioms cover_1271906

def root_1271900 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1271900_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1271900_left_fuel : Nat := 1
def small_1271900_left_count : Nat := 1
def small_1271900_left_encoded : String := "00000000"
theorem small_1271900_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1271900_left_root small_1271900_left_fuel small_1271900_left_count small_1271900_left_encoded = true := by
  decide +kernel
theorem small_1271900_left_covered : CoveredBy scale carrier boxes small_1271900_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1271900_left_root small_1271900_left_fuel small_1271900_left_count small_1271900_left_encoded small_1271900_left_checked

theorem cover_1271900 : CoveredBy scale carrier boxes root_1271900 := by
  apply coveredBy_split_literal root_1271900 small_1271900_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1271906 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1271900_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1271906
#print axioms cover_1271900

def root_1296969 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1296969 : CoveredBy scale carrier boxes root_1296969 := by
  apply coveredBy_split_literal root_1296969 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0499.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0500.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0499.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0500.covered
#print axioms cover_1296969

def root_1296963 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1296963_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1296963_left_fuel : Nat := 1
def small_1296963_left_count : Nat := 1
def small_1296963_left_encoded : String := "00000000"
theorem small_1296963_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1296963_left_root small_1296963_left_fuel small_1296963_left_count small_1296963_left_encoded = true := by
  decide +kernel
theorem small_1296963_left_covered : CoveredBy scale carrier boxes small_1296963_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1296963_left_root small_1296963_left_fuel small_1296963_left_count small_1296963_left_encoded small_1296963_left_checked

theorem cover_1296963 : CoveredBy scale carrier boxes root_1296963 := by
  apply coveredBy_split_literal root_1296963 small_1296963_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1296969 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_1296963_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1296969
#print axioms cover_1296963

def root_1296962 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1296962_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1296962_right_fuel : Nat := 21
def small_1296962_right_count : Nat := 141
def small_1296962_right_encoded : String := "135D44F705000102135D44F9045489FB1386AD040CFD9BFD0F350CFC0000000304548A09000000051386ACFE000000040C9A86FC0000000A0F8750FD00000005000000030F34D0FC04548A09000000090000000A000000030000000213867104000000020CFD9BFD0F350CFC0000000304548A09138670FE0C9A86FC0F878CFD00000003000000070F8750FD0000000500000003000000041386ACFE000000040C9A86FC0000000A0F8750FD0000000A000000030F34D0FC04548A0900000007000000070000000300000001135D80F900000001045489FB1386AD040CFD9BFD0F350CFC0000000304548A09000000051386ACFE000000040C9A86FC0F878CFD00000003028000F600000009000000090F8750FD00000008000000030F34D0FC04548A090000000900000006000000030000000213867104000000020CFD9BFD0F350CFC0000000304548A09138670FE0C9A86FC000000090F8750FD028000F613D7ECF70000000007800102128A40F900000005000000010000000913D7B0F7000000050000000000000003000000041386ACFE000000040C9A86FC0F878CFD00000003000000060F8750FD028000F613D7ECF70000000007800102128A40F9022A457B13E20104067ECE8900000005000000080000000213E1C50400000002067ECE8912EA58FE0B4D43FC0000000600000008000000040000000600000001128A7CF9000000010000000613D7B0F707800102000000080000000600000000000000030F34D0FC000000060000000300000000"
theorem small_1296962_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1296962_right_root small_1296962_right_fuel small_1296962_right_count small_1296962_right_encoded = true := by
  decide +kernel
theorem small_1296962_right_covered : CoveredBy scale carrier boxes small_1296962_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1296962_right_root small_1296962_right_fuel small_1296962_right_count small_1296962_right_encoded small_1296962_right_checked

theorem cover_1296962 : CoveredBy scale carrier boxes root_1296962 := by
  apply coveredBy_split_literal root_1296962 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1296963 small_1296962_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1296963
  · exact small_1296962_right_covered
#print axioms cover_1296962

def root_1296957 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1296957_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1296957_right_fuel : Nat := 1
def small_1296957_right_count : Nat := 1
def small_1296957_right_encoded : String := "00000004"
theorem small_1296957_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1296957_right_root small_1296957_right_fuel small_1296957_right_count small_1296957_right_encoded = true := by
  decide +kernel
theorem small_1296957_right_covered : CoveredBy scale carrier boxes small_1296957_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1296957_right_root small_1296957_right_fuel small_1296957_right_count small_1296957_right_encoded small_1296957_right_checked

theorem cover_1296957 : CoveredBy scale carrier boxes root_1296957 := by
  apply coveredBy_split_literal root_1296957 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1296962 small_1296957_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1296962
  · exact small_1296957_right_covered
#print axioms cover_1296957

def root_1296956 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1296956_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1296956_right_fuel : Nat := 30
def small_1296956_right_count : Nat := 497
def small_1296956_right_encoded : String := "12073CFE00000004050000F6135D80F70000000005000102135D44F9045489FB1386AD040CFD9BFD0F350CFC000000030CFD9C090F34D0FE0C9A86FC0000000A0F8750FD078000F6128A7CF700000000028001020000000A13D7ECF900000001067ECE7B0000000812EA5904000000020000000A0000000800000003000000040000000A0F34D0FC0000000A000000030000000213867104000000020CFD9BFD0F350CFC000000030CFD9C090F34D0FE0C9A86FC0F878CFD00000003078000F6128A7CF700000000028001020000000A13D7ECF900000001022A457B0000000A000000050000000A0F8750FD078000F6128A7CF700000000028001020000000A13D7ECF900000001022A457B13E201040AD3578910D100FE0B4D43FC0000000A0000000A000000040000000A0000000213E1C504000000020AD3578910D100FE0B4D43FC0000000A108010FD0000000A0000000300000004000000050000000A00000003000000040000000A0F34D0FC0CFD9C090F34D0FE0000000500000004000000050000000300000001135D80F900000001045489FB1386AD040CFD9BFD0F350CFC000000030CFD9C090F34D0FE0C9A86FC0F878CFD00000003078000F6128A7CF70000000007800102128A40F9067ECE7B12EA95040AD35789000000090000000A0000000212EA5904000000020AD35789000000090000000A00000001128A7CF900000001067ECE7B0000000912EA59040000000200000009128A40F707800102128A40F90000000A00000001128A7CF90000000100000009000000000F8750FD078000F6128A7CF70000000007800102128A40F9067ECE7B0000000812EA5904000000020AD3578910D100FE00000008000000040000000800000001128A7CF900000001067ECE7B0000000812EA5904000000020AD3578910D100FE000000080000000400000008128A40F7000000080000000000000003000000040F350CFE000000040C9A86FC0F878CFD000000030C9A86FE0F878D09078000F6128A7CF700000000078001020000000A128A7CF900000001067ECE7B0000000812EA5904000000020DE7C9FC000000050000000800000008000000040F875109000000040000000A0F8750FD0C9A86FE0000000800000008000000030F34D0FC0CFD9C090F34D0FE078000F6128A7CF700000000078001020000000900000006128A40F707800102000000090000000600000000000000040F350CFE000000040C9A86FE0F878D09078000F6128A7CF700000000000000050000000A000000040F8751090000000400000005000000030000000213867104000000020CFD9BFD0F350CFC000000030CFD9C090F34D0FE0C9A86FC0F878CFD00000003078000F6128A7CF70000000007800102128A40F9022A457B13E201040AD3578910D100FE0DE7C9FC000000060E5FD8FD08C000F611FC24F700000000064001020000000A000000060000000A00000003000000040000000500000002000000050000000100000006128A40F707800102128A40F9022A457B0000000A000000060000000100000006000000000F8750FD078000F6128A7CF70000000007800102128A40F9022A457B13E201040AD3578910D100FE0B4D43FC10804CFD0000000308C000F611FC24F7000000000640010212FF70F90000000A0000000112FFACF900000001033F67BB0000000813BBF504000000020000000611FBE8F70000000800000000108010FD00000008000000030000000410D13CFE00000004000000080000000213E1C504000000020AD3578910D100FE0B4D43FC10804CFD0000000308C000F611FC24F7000000000000000511FBE8F70000000600000000108010FD08C000F611FC24F7000000000640010212FF70F90115233B00000008000000050000000112FFACF9000000010115233B00000008000000050000000800000003000000040000000500000001128A7CF900000001022A457B13E201040AD3578910D100FE0B4D43FC00000006000000080000000410D13CFE00000004000000080000000213E1C504000000020AD3578910D100FE000000060000000400000005128A40F707800102128A40F9022A457B0000000813E1C504000000020AD3578910D100FE0B4D43FC0000000600000008000000040000000800000001128A7CF900000001022A457B00000008000000060000000000000003000000040F350CFE000000040C9A86FC0F878CFD000000030C9A86FE0F878D09078000F6000000050000000A000000040F87510900000004000000050F8750FD0C9A86FE0F878D09078000F6128A7CF70000000007800102128A40F90000000A00000001128A7CF900000001022A457B000000080000000500000008000000040F87510900000004078000F6128A7CF70000000007800102000000050000000800000008000000030F34D0FC0CFD9C090F34D0FE00000006000000040000000500000003135D44F705000102135D44F9045489FB0000000A13867104000000020000000A00000001135D80F900000001045489FB1386AD040CFD9BFD0F350CFC000000030CFD9C090F34D0FE0C9A86FC0000000A0000000800000004000000080F34D0FC0000000A000000030000000213867104000000020CFD9BFD0F350CFC000000030CFD9C090F34D0FE0C9A86FC0F878CFD00000003000000060F8750FD0000000800000003000000040000000A0F34D0FC0CFD9C090F34D0FE0000000600000004000000060000000300000000"
theorem small_1296956_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1296956_right_root small_1296956_right_fuel small_1296956_right_count small_1296956_right_encoded = true := by
  decide +kernel
theorem small_1296956_right_covered : CoveredBy scale carrier boxes small_1296956_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1296956_right_root small_1296956_right_fuel small_1296956_right_count small_1296956_right_encoded small_1296956_right_checked

theorem cover_1296956 : CoveredBy scale carrier boxes root_1296956 := by
  apply coveredBy_split_literal root_1296956 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1296957 small_1296956_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1296957
  · exact small_1296956_right_covered
#print axioms cover_1296956

def root_1296950 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1296950_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1296950_left_fuel : Nat := 1
def small_1296950_left_count : Nat := 1
def small_1296950_left_encoded : String := "00000003"
theorem small_1296950_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1296950_left_root small_1296950_left_fuel small_1296950_left_count small_1296950_left_encoded = true := by
  decide +kernel
theorem small_1296950_left_covered : CoveredBy scale carrier boxes small_1296950_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1296950_left_root small_1296950_left_fuel small_1296950_left_count small_1296950_left_encoded small_1296950_left_checked

theorem cover_1296950 : CoveredBy scale carrier boxes root_1296950 := by
  apply coveredBy_split_literal root_1296950 small_1296950_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1296956 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1296950_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1296956
#print axioms cover_1296950

def root_1296949 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1296949_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1296949_right_fuel : Nat := 15
def small_1296949_right_count : Nat := 91
def small_1296949_right_encoded : String := "120700FC08A91309120700FE050000F6135D80F70000000005000102135D44F9045489FB1386AD04045489FD1386ACFC0000000304548A09000000091386ACFE00000004078000F60000000900000009138670FC04548A09000000070000000600000003000000021386710400000002045489FD1386ACFC0000000304548A090000000700000006000000060000000100000006135D44F705000102135D44F9045489FB1386AD04045489FD1386ACFC0000000304548A0900000007000000060000000600000002000000060000000100000006000000000000000412073CFE00000004050000F6135D80F70000000005000102135D44F9045489FB1386AD04045489FD0000000A00000005000000020000000500000001135D80F900000001045489FB1386AD04045489FD1386ACFC000000030CFD9C090F34D0FE000000050000000400000005000000050000000200000005135D44F7050001020000000A000000060000000000000003"
theorem small_1296949_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1296949_right_root small_1296949_right_fuel small_1296949_right_count small_1296949_right_encoded = true := by
  decide +kernel
theorem small_1296949_right_covered : CoveredBy scale carrier boxes small_1296949_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1296949_right_root small_1296949_right_fuel small_1296949_right_count small_1296949_right_encoded small_1296949_right_checked

theorem cover_1296949 : CoveredBy scale carrier boxes root_1296949 := by
  apply coveredBy_split_literal root_1296949 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1296950 small_1296949_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1296950
  · exact small_1296949_right_covered
#print axioms cover_1296949

def root_1296943 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1296943_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1296943_left_fuel : Nat := 1
def small_1296943_left_count : Nat := 1
def small_1296943_left_encoded : String := "00000002"
theorem small_1296943_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1296943_left_root small_1296943_left_fuel small_1296943_left_count small_1296943_left_encoded = true := by
  decide +kernel
theorem small_1296943_left_covered : CoveredBy scale carrier boxes small_1296943_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1296943_left_root small_1296943_left_fuel small_1296943_left_count small_1296943_left_encoded small_1296943_left_checked

theorem cover_1296943 : CoveredBy scale carrier boxes root_1296943 := by
  apply coveredBy_split_literal root_1296943 small_1296943_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1296949 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1296943_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1296949
#print axioms cover_1296943

def root_1295057 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1295057 : CoveredBy scale carrier boxes root_1295057 := by
  apply coveredBy_split_literal root_1295057 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0498.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1296943 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0498.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1296943
#print axioms cover_1295057

def root_1295052 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1295052_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1295052_right_fuel : Nat := 1
def small_1295052_right_count : Nat := 1
def small_1295052_right_encoded : String := "00000004"
theorem small_1295052_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1295052_right_root small_1295052_right_fuel small_1295052_right_count small_1295052_right_encoded = true := by
  decide +kernel
theorem small_1295052_right_covered : CoveredBy scale carrier boxes small_1295052_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1295052_right_root small_1295052_right_fuel small_1295052_right_count small_1295052_right_encoded small_1295052_right_checked

theorem cover_1295052 : CoveredBy scale carrier boxes root_1295052 := by
  apply coveredBy_split_literal root_1295052 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1295057 small_1295052_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1295057
  · exact small_1295052_right_covered
#print axioms cover_1295052

def root_1295051 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1295051_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1295051_right_fuel : Nat := 16
def small_1295051_right_count : Nat := 117
def small_1295051_right_encoded : String := "1151E9090000000408A912FB12073D0408A912FD12073CFC00000003050000F6135D80F70000000005000102135D44F9050000FE135D81090CFD9BFB000000080F34D104000000020000000A00000004135D4509000000040000000A00000001135D80F900000001050000FE135D81090CFD9BFB000000080F34D104000000020CFD9BFD0000000A0F34D0FC0000000A0000000300000004135D4509000000040CFD9BFB000000080F34D104000000020000000A135D44F70500010200000008135D80F900000001050000FE000000080000000800000000120700FC050000F6135D80F700000000050001020000000A135D80F900000001050000FE135D81090CFD9BFB0000000A0000000500000004135D450900000004000000090000000A0000000300000002120701040000000208A912FD12073CFC00000003050000F6135D80F700000000050001020000000A135D80F900000001050000FE135D8109045489FB1386AD040CFD9BFD0000000A0F34D0FC0000000A000000030000000213867104000000020CFD9BFD0000000A0F34D0FC000000050000000300000004135D450900000004045489FB0000000A13867104000000020000000A0000000A120700FC050000F6000000050000000A00000003"
theorem small_1295051_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1295051_right_root small_1295051_right_fuel small_1295051_right_count small_1295051_right_encoded = true := by
  decide +kernel
theorem small_1295051_right_covered : CoveredBy scale carrier boxes small_1295051_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1295051_right_root small_1295051_right_fuel small_1295051_right_count small_1295051_right_encoded small_1295051_right_checked

theorem cover_1295051 : CoveredBy scale carrier boxes root_1295051 := by
  apply coveredBy_split_literal root_1295051 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1295052 small_1295051_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1295052
  · exact small_1295051_right_covered
#print axioms cover_1295051

def root_1295045 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1295045_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1295045_left_fuel : Nat := 1
def small_1295045_left_count : Nat := 1
def small_1295045_left_encoded : String := "00000003"
theorem small_1295045_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1295045_left_root small_1295045_left_fuel small_1295045_left_count small_1295045_left_encoded = true := by
  decide +kernel
theorem small_1295045_left_covered : CoveredBy scale carrier boxes small_1295045_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1295045_left_root small_1295045_left_fuel small_1295045_left_count small_1295045_left_encoded small_1295045_left_checked

theorem cover_1295045 : CoveredBy scale carrier boxes root_1295045 := by
  apply coveredBy_split_literal root_1295045 small_1295045_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1295051 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1295045_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1295051
#print axioms cover_1295045

def root_1295044 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1295044 : CoveredBy scale carrier boxes root_1295044 := by
  apply coveredBy_split_literal root_1295044 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1295045 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0501.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1295045
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0501.covered
#print axioms cover_1295044

def root_1295038 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1295038_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1295038_left_fuel : Nat := 1
def small_1295038_left_count : Nat := 1
def small_1295038_left_encoded : String := "00000002"
theorem small_1295038_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1295038_left_root small_1295038_left_fuel small_1295038_left_count small_1295038_left_encoded = true := by
  decide +kernel
theorem small_1295038_left_covered : CoveredBy scale carrier boxes small_1295038_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1295038_left_root small_1295038_left_fuel small_1295038_left_count small_1295038_left_encoded small_1295038_left_checked

theorem cover_1295038 : CoveredBy scale carrier boxes root_1295038 := by
  apply coveredBy_split_literal root_1295038 small_1295038_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1295044 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1295038_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1295044
#print axioms cover_1295038

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030
