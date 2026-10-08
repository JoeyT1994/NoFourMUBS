import TaoBundleAssembly0227
import TaoBundleChunkBatch0889
import TaoBundleChunkBatch0890
import TaoBundleChunkBatch0891
import TaoBundleChunkBatch0892
import TaoBundleChunkBatch0893
import TaoBundleChunkBatch0894
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228
def root_9515095 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9515095_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9515095_left_fuel : Nat := 33
def small_9515095_left_count : Nat := 473
def small_9515095_left_encoded : String := "0F34D100000000000CFD9C050F34D0FA0CFD9C07000000080F350D060C9A87060F87510700000003000000090F878D07000000080000000300000003000000020F350CFA000000020CFD9C070F34D106000000030C9A86FA000000080F8751050000000207800102128A40F90280010813D7B0FF0AD357810000000810D13D000AD357870000000810D13D060B4D43FA0000000810801105000000020640010212FF70F900000009000000010000000900000003000000000000000413D7ECFF000000040AD35781000000080000000800000001128A7CF9000000010280010800000008000000080F350D060C9A86FA0F878D050C9A87060F8751070000000307800102128A40F9028001080000000513D7ECFF000000040AD357810000000910D13D000DE7C9FA000000050E5FD90500000002000000090000000000000001000000090F878D0707800102128A40F9028001080000000913D7ECFF000000040AD357810000000810D13D000DE7C9FA000000080E5FD905000000020DE7CA060E5FD9070000000300000009000000080000000000000001128A7CF90000000102800108000000090000000800000003000000020F875105000000020C9A87060F8751070000000307800102128A40F90280010813D7B0FF0AD357810000000910D13D0000000009000000000000000413D7ECFF000000040AD3578110D10100000000000000000910D13D000B4D43FA10804D050B4D4406108011070000000306400102000000050000000910804D070640010212FF70F9000000090000000100000009000000030000000210801105000000020B4D440610801107000000030640010212FF70F903C0010800000009000000070000000112FFACF90000000103C00108000000060000000610804D070640010212FF70F903C001080000000913A54CFF000000040BE879C1000000091011AD000AA6A27A0000000910ED7105000000020BF3E586000000071009290705A00102000000070000000600000003000000000000000112FFACF90000000103C001080000000913A54CFF000000040BE879C1000000061011AD000AA6A27A000000090000000600000000000000030000000000000001128A7CF9000000010280010813D7B0FF000000090000000413D7ECFF000000040AD3578110D10100000000000000000910D13D000B4D43FA10804D050B4D4406108011070000000300000009000000090000000210801105000000020B4D440610801107000000030000000610804D0708C0010211FBE8F903C001080000000600000006000000010000000600000003000000000F878D0707800102128A40F90280010813D7B0FF0AD357810000000910D13D000B4D43FA0000000910801105000000020DE7CA060E5FD907000000030000000900000009000000000000000413D7ECFF000000040AD3578110D10100000000000B4D43FA0000000810801105000000020DE7CA060E5FD90700000003000000090000000810D13D000B4D43FA10804D050DE7CA060E5FD907000000030640010212FF70F90000000900000001000000090E601507064001020000000800000008000000030000000210801105000000020DE7CA060E5FD907000000030640010212FF70F903C001080000000913A54CFF000000040BE879C11011710000000000000000091011AD000AA6A27A10EDAD050D4128860EFA11070000000300000009000000090000000210ED7105000000020D4128860EFA11070000000305A0010200000009000000090EFA4D0705A00102133134F900000009000000010000000900000003000000000000000112FFACF90000000103C001080000000913A54CFF000000040BE879C1000000091011AD000AA6A27A10EDAD05000000090000000210ED7105000000020D4128860EFA110700000003000000060EFA4D0706E00102000000090000000900000003000000000E6015070640010212FF70F903C0010813A510FF0BE879C1000000091011AD000DAED8870E962506000000030000000800000009000000000000000413A54CFF000000040BE879C1000000081011AD000DAED887000000080E9661060AA6A27A0000000810ED71050000000205A00102133134F904600108000000090000000800000001133170F9000000010000000800000003000000000000000112FFACF90000000103C0010813A510FF0BE879C1000000081011AD0000000009000000000000000400000008000000030000000000000001128A7CF9000000010280010813D7B0FF0AD357810000000910D13D000B4D43FA0000000910801105000000020DE7CA060E5FD907000000030000000900000009000000000000000413D7ECFF000000040AD3578110D10100000000000000000810D13D000B4D43FA10804D050DE7CA060E5FD9070000000308C001020000000800000008000000080000000210801105000000020DE7CA060E5FD9070000000308C0010211FBE8F903C001080000000913A54CFF000000040BE879C1000000081011AD000AA6A27A0000000800000006000000000000000111FC24F90000000103C0010800000006000000050E6015070000000800000003000000000000000300000003"
theorem small_9515095_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9515095_left_root small_9515095_left_fuel small_9515095_left_count small_9515095_left_encoded = true := by
  decide +kernel
theorem small_9515095_left_covered : CoveredBy scale carrier boxes small_9515095_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9515095_left_root small_9515095_left_fuel small_9515095_left_count small_9515095_left_encoded small_9515095_left_checked

theorem cover_9515095 : CoveredBy scale carrier boxes root_9515095 := by
  apply coveredBy_split_literal root_9515095 small_9515095_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0227.root_9516093 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9515095_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0227.cover_9516093
#print axioms cover_9515095

def root_9515090 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9515090_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9515090_right_fuel : Nat := 1
def small_9515090_right_count : Nat := 1
def small_9515090_right_encoded : String := "00000004"
theorem small_9515090_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9515090_right_root small_9515090_right_fuel small_9515090_right_count small_9515090_right_encoded = true := by
  decide +kernel
theorem small_9515090_right_covered : CoveredBy scale carrier boxes small_9515090_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9515090_right_root small_9515090_right_fuel small_9515090_right_count small_9515090_right_encoded small_9515090_right_checked

theorem cover_9515090 : CoveredBy scale carrier boxes root_9515090 := by
  apply coveredBy_split_literal root_9515090 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9515095 small_9515090_right_root coord4 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9515095
  · exact small_9515090_right_covered
#print axioms cover_9515090

def root_9523362 : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9523362 : CoveredBy scale carrier boxes root_9523362 := by
  apply coveredBy_split_literal root_9523362 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3559.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3560.root coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3559.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3560.covered
#print axioms cover_9523362

def root_9523356 : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9523356_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9523356_left_fuel : Nat := 1
def small_9523356_left_count : Nat := 1
def small_9523356_left_encoded : String := "00000000"
theorem small_9523356_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9523356_left_root small_9523356_left_fuel small_9523356_left_count small_9523356_left_encoded = true := by
  decide +kernel
theorem small_9523356_left_covered : CoveredBy scale carrier boxes small_9523356_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9523356_left_root small_9523356_left_fuel small_9523356_left_count small_9523356_left_encoded small_9523356_left_checked

theorem cover_9523356 : CoveredBy scale carrier boxes root_9523356 := by
  apply coveredBy_split_literal root_9523356 small_9523356_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9523362 coord0 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_9523356_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9523362
#print axioms cover_9523356

def root_9531990 : ZRayBox := fun j => (#[⟨⟨(10572672), (11664704)⟩, ⟨(12058112), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9531990 : CoveredBy scale carrier boxes root_9531990 := by
  apply coveredBy_split_literal root_9531990 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3564.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3565.root coord3 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3564.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3565.covered
#print axioms cover_9531990

def root_9531984 : ZRayBox := fun j => (#[⟨⟨(10572672), (11664704)⟩, ⟨(12058112), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9531984_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (11664704)⟩, ⟨(12058112), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (13841408)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9531984_left_fuel : Nat := 1
def small_9531984_left_count : Nat := 1
def small_9531984_left_encoded : String := "00000002"
theorem small_9531984_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9531984_left_root small_9531984_left_fuel small_9531984_left_count small_9531984_left_encoded = true := by
  decide +kernel
theorem small_9531984_left_covered : CoveredBy scale carrier boxes small_9531984_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9531984_left_root small_9531984_left_fuel small_9531984_left_count small_9531984_left_encoded small_9531984_left_checked

theorem cover_9531984 : CoveredBy scale carrier boxes root_9531984 := by
  apply coveredBy_split_literal root_9531984 small_9531984_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9531990 coord2 true (13841408)
  · decide +kernel
  · decide +kernel
  · exact small_9531984_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9531990
#print axioms cover_9531984

def root_9529864 : ZRayBox := fun j => (#[⟨⟨(10572672), (11664704)⟩, ⟨(12058112), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9529864 : CoveredBy scale carrier boxes root_9529864 := by
  apply coveredBy_split_literal root_9529864 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3563.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9531984 coord2 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3563.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9531984
#print axioms cover_9529864

def root_9529858 : ZRayBox := fun j => (#[⟨⟨(10572672), (11664704)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9529858_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (11664704)⟩, ⟨(10897344), (12058112)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9529858_left_fuel : Nat := 1
def small_9529858_left_count : Nat := 1
def small_9529858_left_encoded : String := "00000000"
theorem small_9529858_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9529858_left_root small_9529858_left_fuel small_9529858_left_count small_9529858_left_encoded = true := by
  decide +kernel
theorem small_9529858_left_covered : CoveredBy scale carrier boxes small_9529858_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9529858_left_root small_9529858_left_fuel small_9529858_left_count small_9529858_left_encoded small_9529858_left_checked

theorem cover_9529858 : CoveredBy scale carrier boxes root_9529858 := by
  apply coveredBy_split_literal root_9529858 small_9529858_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9529864 coord0 true (12058112)
  · decide +kernel
  · decide +kernel
  · exact small_9529858_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9529864
#print axioms cover_9529858

def root_9529857 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9529857 : CoveredBy scale carrier boxes root_9529857 := by
  apply coveredBy_split_literal root_9529857 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9529858 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3566.root coord0 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9529858
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3566.covered
#print axioms cover_9529857

def root_9529852 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9529852_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-15552512), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9529852_right_fuel : Nat := 1
def small_9529852_right_count : Nat := 1
def small_9529852_right_encoded : String := "00000004"
theorem small_9529852_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9529852_right_root small_9529852_right_fuel small_9529852_right_count small_9529852_right_encoded = true := by
  decide +kernel
theorem small_9529852_right_covered : CoveredBy scale carrier boxes small_9529852_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9529852_right_root small_9529852_right_fuel small_9529852_right_count small_9529852_right_encoded small_9529852_right_checked

theorem cover_9529852 : CoveredBy scale carrier boxes root_9529852 := by
  apply coveredBy_split_literal root_9529852 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9529857 small_9529852_right_root coord4 true (-15552512)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9529857
  · exact small_9529852_right_covered
#print axioms cover_9529852

def root_9529851 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9529851_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9529851_right_fuel : Nat := 20
def small_9529851_right_count : Nat := 207
def small_9529851_right_encoded : String := "128A7CFF000000040DE7CA000E5FD901000000000B4D43FA10804D050DE7CA060E5FD907000000030640010212FF70F908C0010811FBE8FF0D4128800EFA1101000000000BF3E57A000000071008ED0500000002000000070000000700000004000000070000000112FFACF90000000108C0010811FBE8FF0D4128800EFA1101000000000BF3E57A100929050D412886000000070EFA4D070000000800000003000000021008ED05000000020D412886000000070EFA4D0706E001020000000912C820F90000000100000008000000030EFA4D010BF3E57A000000071008ED05000000020D4128860000000700000007000000000000000411FC24FF00000004000000070E6015070640010212FF70F908C0010811FBE8FF0DAED887000000080E9661060D4128800EFA1101000000000BF3E57A000000081008ED050000000205A00102000000090000000800000008000000030000000411FC24FF00000004000000080000000112FFACF90000000100000008000000030000000210801105000000020DE7CA060E5FD907000000030640010212FF70F908C0010811FBE8FF0D4128800EFA1101000000000AA6A27A00000007000000090EFA4D01000000070000000000000004000000070000000112FFACF90000000108C0010811FBE8FF0D4128800EFA1101000000000AA6A27A10EDAD050D412886000000090000000500000002000000050EFA4D010AA6A27A10EDAD050D412886000000070000000500000002000000050000000000000004000000050E6015070640010212FF70F908C0010811FBE8FF0DAED8870E962506000000030D4128800EFA11010000000000000009000000050E9661060D4128800EFA110100000000000000090EFA4D010AA6A27A10EDAD0505A0010200000008000000050000000200000005000000000000000300000004000000050000000100000005000000030E6015010B4D43FA10804D050DE7CA060E5FD907000000030640010212FF70F9000000070000000112FFACF900000001000000080E60150700000008000000030000000210801105000000020DE7CA060E5FD907000000030640010212FF70F908C0010811FBE8FF00000007000000040000000500000001000000050000000500000000"
theorem small_9529851_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9529851_right_root small_9529851_right_fuel small_9529851_right_count small_9529851_right_encoded = true := by
  decide +kernel
theorem small_9529851_right_covered : CoveredBy scale carrier boxes small_9529851_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9529851_right_root small_9529851_right_fuel small_9529851_right_count small_9529851_right_encoded small_9529851_right_checked

theorem cover_9529851 : CoveredBy scale carrier boxes root_9529851 := by
  apply coveredBy_split_literal root_9529851 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9529852 small_9529851_right_root coord4 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9529852
  · exact small_9529851_right_covered
#print axioms cover_9529851

def root_9529846 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9529846_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-15552512), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9529846_right_fuel : Nat := 1
def small_9529846_right_count : Nat := 1
def small_9529846_right_encoded : String := "00000001"
theorem small_9529846_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9529846_right_root small_9529846_right_fuel small_9529846_right_count small_9529846_right_encoded = true := by
  decide +kernel
theorem small_9529846_right_covered : CoveredBy scale carrier boxes small_9529846_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9529846_right_root small_9529846_right_fuel small_9529846_right_count small_9529846_right_encoded small_9529846_right_checked

theorem cover_9529846 : CoveredBy scale carrier boxes root_9529846 := by
  apply coveredBy_split_literal root_9529846 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9529851 small_9529846_right_root coord1 true (-15552512)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9529851
  · exact small_9529846_right_covered
#print axioms cover_9529846

def root_9529845 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9529845_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9529845_right_fuel : Nat := 23
def small_9529845_right_count : Nat := 263
def small_9529845_right_encoded : String := "128A7CF90000000107800108128A40FF0DE7CA000E5FD901000000000B4D43FA10804D050DE7CA060E5FD9070000000308C0010211FBE8F90640010812FF70FF0D4128800000000A0EFA4D010BF3E57A0000000A1008ED05000000020000000A000000000000000412FFACFF000000040D4128800EFA1101000000000BF3E57A0000000A1008ED05000000020000000A0EFA4D010BF3E57A000000081008ED05000000020D4128860EFA1107000000030820010212465CF906E00108000000060000000800000001000000060EFA4D070000000800000003000000000000000111FC24F9000000010000000A0E60150708C0010211FBE8F90640010812FF70FF0000000A0000000412FFACFF0000000400000008000000010000000A000000030000000210801105000000020DE7CA060E5FD9070000000308C0010211FBE8F90640010812FF70FF0D4128800EFA1101000000000000000A0EFA4D010AA6A27A10EDAD050D4128860EFA110700000003000000060000000A0000000210ED7105000000020D4128860000000600000006000000000000000412FFACFF000000040D4128800EFA1101000000000AA6A27A0000000A000000050EFA4D010AA6A27A10EDAD050D4128860EFA11070000000300000005000000050000000200000005000000000000000111FC24F900000001064001080000000A000000050E60150708C0010211FBE8F90640010812FF70FF0000000A00000004000000050000000100000005000000030E6015010B4D43FA10804D050DE7CA060E5FD9070000000308C0010211FBE8F90640010812FF70FF0DAED881000000080E9661000BF3E57A000000081008ED05000000020D4128860EFA1107000000030820010212465CF905A001080000000600000006000000010000000600000008000000000000000412FFACFF00000004000000080000000111FC24F900000001000000080E60150700000008000000030000000210801105000000020DE7CA060E5FD9070000000308C0010211FBE8F90640010812FF70FF0DAED8810E962500000000000AA6A27A10EDAD050D4128860EFA110700000003000000060000000500000002000000050E9661000AA6A27A10EDAD050D4128860EFA110700000003000000060EFA4D07082001020000000800000005000000030000000210ED7105000000020D41288600000006000000050000000000000004000000050000000100000005000000050000000000000004128A7CFF000000040DE7CA000E5FD901000000000B4D43FA10804D050DE7CA060E5FD9070000000308C0010211FBE8F908C0010811FBE8FF0D4128800EFA1101000000000BF3E57A000000081008ED05000000020D4128860EFA11070000000300000005000000050EFA4D0100000008000000000000000400000005000000010000000500000005000000020000000500000005"
theorem small_9529845_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9529845_right_root small_9529845_right_fuel small_9529845_right_count small_9529845_right_encoded = true := by
  decide +kernel
theorem small_9529845_right_covered : CoveredBy scale carrier boxes small_9529845_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9529845_right_root small_9529845_right_fuel small_9529845_right_count small_9529845_right_encoded small_9529845_right_checked

theorem cover_9529845 : CoveredBy scale carrier boxes root_9529845 := by
  apply coveredBy_split_literal root_9529845 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9529846 small_9529845_right_root coord1 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9529846
  · exact small_9529845_right_covered
#print axioms cover_9529845

def root_9529840 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9529840_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9529840_right_fuel : Nat := 1
def small_9529840_right_count : Nat := 1
def small_9529840_right_encoded : String := "00000003"
theorem small_9529840_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9529840_right_root small_9529840_right_fuel small_9529840_right_count small_9529840_right_encoded = true := by
  decide +kernel
theorem small_9529840_right_covered : CoveredBy scale carrier boxes small_9529840_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9529840_right_root small_9529840_right_fuel small_9529840_right_count small_9529840_right_encoded small_9529840_right_checked

theorem cover_9529840 : CoveredBy scale carrier boxes root_9529840 := by
  apply coveredBy_split_literal root_9529840 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9529845 small_9529840_right_root coord3 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9529845
  · exact small_9529840_right_covered
#print axioms cover_9529840

def root_9528444 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9528444 : CoveredBy scale carrier boxes root_9528444 := by
  apply coveredBy_split_literal root_9528444 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3562.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9529840 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3562.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9529840
#print axioms cover_9528444

def root_9528438 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9528438_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9528438_left_fuel : Nat := 1
def small_9528438_left_count : Nat := 1
def small_9528438_left_encoded : String := "00000002"
theorem small_9528438_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9528438_left_root small_9528438_left_fuel small_9528438_left_count small_9528438_left_encoded = true := by
  decide +kernel
theorem small_9528438_left_covered : CoveredBy scale carrier boxes small_9528438_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9528438_left_root small_9528438_left_fuel small_9528438_left_count small_9528438_left_encoded small_9528438_left_checked

theorem cover_9528438 : CoveredBy scale carrier boxes root_9528438 := by
  apply coveredBy_split_literal root_9528438 small_9528438_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9528444 coord2 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_9528438_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9528444
#print axioms cover_9528438

def root_9527094 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9527094 : CoveredBy scale carrier boxes root_9527094 := by
  apply coveredBy_split_literal root_9527094 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3561.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9528438 coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3561.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9528438
#print axioms cover_9527094

def root_9527089 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9527089_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9527089_right_fuel : Nat := 1
def small_9527089_right_count : Nat := 1
def small_9527089_right_encoded : String := "00000000"
theorem small_9527089_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9527089_right_root small_9527089_right_fuel small_9527089_right_count small_9527089_right_encoded = true := by
  decide +kernel
theorem small_9527089_right_covered : CoveredBy scale carrier boxes small_9527089_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9527089_right_root small_9527089_right_fuel small_9527089_right_count small_9527089_right_encoded small_9527089_right_checked

theorem cover_9527089 : CoveredBy scale carrier boxes root_9527089 := by
  apply coveredBy_split_literal root_9527089 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9527094 small_9527089_right_root coord0 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9527094
  · exact small_9527089_right_covered
#print axioms cover_9527089

def root_9523355 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9523355 : CoveredBy scale carrier boxes root_9523355 := by
  apply coveredBy_split_literal root_9523355 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9523356 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9527089 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9523356
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9527089
#print axioms cover_9523355

def root_9523350 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9523350_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9523350_right_fuel : Nat := 1
def small_9523350_right_count : Nat := 1
def small_9523350_right_encoded : String := "00000003"
theorem small_9523350_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9523350_right_root small_9523350_right_fuel small_9523350_right_count small_9523350_right_encoded = true := by
  decide +kernel
theorem small_9523350_right_covered : CoveredBy scale carrier boxes small_9523350_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9523350_right_root small_9523350_right_fuel small_9523350_right_count small_9523350_right_encoded small_9523350_right_checked

theorem cover_9523350 : CoveredBy scale carrier boxes root_9523350 := by
  apply coveredBy_split_literal root_9523350 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9523355 small_9523350_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9523355
  · exact small_9523350_right_covered
#print axioms cover_9523350

def root_9522544 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9522544_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9522544_left_fuel : Nat := 30
def small_9522544_left_count : Nat := 385
def small_9522544_left_encoded : String := "0F34D106000000030C9A87000F875101000000000C9A86FA0F878D0507800102128A40F907800108128A40FF0AD3578710D10106000000030000000810D13D060B4D440010801101000000000DE7C9FA0000000A0E5FD905000000020000000A10804D010DE7C9FA000000080E5FD905000000020640010212FF70F9064001080000000600000006000000010000000A000000000000000300000004128A7CFF000000040AD357870000000810D13D060B4D440010801101000000000DE7C9FA000000080E5FD9050000000206400102000000060000000A000000080000000300000001128A7CF90000000107800108128A40FF0AD35787000000080000000A00000004128A7CFF0000000400000008000000020F8751050000000207800102128A40F907800108128A40FF0AD3578710D10106000000030B4D44000000000710804D010B4D43FA00000007000000070000000010D13D060B4D440010801101000000000B4D43FA0000000A10801105000000020000000A10804D010B4D43FA10804D050640010212FF70F90640010812FF70FF0000000A0000000412FFACFF000000040BE879C7000000061011AD060BF3E5800000000A10092901000000080000000000000003000000010000000A0000000210801105000000020640010212FF70F90640010812FF70FF0BE879C7000000070000000A0000000412FFACFF000000040BE879C7000000091011AD060BF3E58000000009100929010AA6A27A0000000A000000090000000000000003000000010000000A000000000000000300000004128A7CFF000000040AD3578710D10106000000030B4D440010801101000000000B4D43FA000000060000000910804D01000000080000000010D13D060B4D440010801101000000000B4D43FA10804D0506400102000000090000000A000000020000000910804D010B4D43FA10804D050640010212FF70F908C0010811FBE8FF0BE879C7000000061011AD060BF3E58000000009000000060000000300000004000000080000000112FFACF900000001000000080000000210801105000000020640010212FF70F908C0010811FBE8FF0000000900000004000000050000000100000005000000000000000300000001128A7CF90000000107800108128A40FF0AD3578710D1010600000003000000070000000A00000004128A7CFF000000040AD3578710D10106000000030000000510D13D060B4D440010801101000000000000000A00000005000000030F878D010C9A86FA0F878D0507800102128A40F90780010800000008000000080000000100000008000000020F8751050000000207800102128A40F907800108128A40FF0AD3578710D10106000000030000000810D13D060DE7CA000E5FD901000000000B4D43FA10804D050640010212FF70F90640010812FF70FF0BE879C70000000800000008000000040000000800000001000000080000000210801105000000020640010212FF70F90640010812FF70FF0BE879C710117106000000030D41288000000007000000081011AD060D4128800EFA1101000000000AA6A27A0000000A10ED7105000000020000000A0EFA4D010AA6A27A0000000810ED71050000000205A00102133134F905A00108133134FF0000000700000004133170FF000000040000000800000001133170F9000000010000000A00000000000000030000000412FFACFF000000040BE879C7000000081011AD060D4128800EFA1101000000000AA6A27A0000000810ED71050000000205A0010200000009000000050EFA4D010000000800000000000000030000000112FFACF9000000010640010812FF70FF0BE879C7000000070000000A00000004000000050E6015010B4D43FA0000000810801105000000020640010212FF70F90640010800000008000000050000000100000005000000000000000300000004128A7CFF000000040AD357870000000810D13D060DE7CA000E5FD901000000000B4D43FA0000000800000005000000050000000300000001128A7CF90000000107800108128A40FF0AD357870000000810D13D060DE7CA000E5FD901000000000B4D43FA00000008000000050000000500000003000000040000000500000000"
theorem small_9522544_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9522544_left_root small_9522544_left_fuel small_9522544_left_count small_9522544_left_encoded = true := by
  decide +kernel
theorem small_9522544_left_covered : CoveredBy scale carrier boxes small_9522544_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9522544_left_root small_9522544_left_fuel small_9522544_left_count small_9522544_left_encoded small_9522544_left_checked

theorem cover_9522544 : CoveredBy scale carrier boxes root_9522544 := by
  apply coveredBy_split_literal root_9522544 small_9522544_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9523350 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9522544_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9523350
#print axioms cover_9522544

def root_9522538 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9522538_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9522538_left_fuel : Nat := 1
def small_9522538_left_count : Nat := 1
def small_9522538_left_encoded : String := "00000002"
theorem small_9522538_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9522538_left_root small_9522538_left_fuel small_9522538_left_count small_9522538_left_encoded = true := by
  decide +kernel
theorem small_9522538_left_covered : CoveredBy scale carrier boxes small_9522538_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9522538_left_root small_9522538_left_fuel small_9522538_left_count small_9522538_left_encoded small_9522538_left_checked

theorem cover_9522538 : CoveredBy scale carrier boxes root_9522538 := by
  apply coveredBy_split_literal root_9522538 small_9522538_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9522544 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9522538_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9522544
#print axioms cover_9522538

def root_9522184 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9522184_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9522184_left_fuel : Nat := 19
def small_9522184_left_count : Nat := 161
def small_9522184_left_encoded : String := "0F34D0FA0CFD9C070F34D106000000030C9A87000F87510100000000078001020000000800000008000000080F350D060C9A87000F875101000000000C9A87060F8751070000000307800102128A40F90000000500000001128A7CF90000000107800108128A40FF0000000500000004128A7CFF000000040AD3578510D100FA0B4D440000000005000000080000000210D13CFA000000020B4D440010801101000000000B4D4406108011070000000308C00102000000050000000A0000000A10804D010B4D440610801107000000030000000710804D070000000800000003000000000F878D0707800102128A40F90780010800000005128A7CFF000000040AD3578510D100FA000000080000000210D13CFA000000020B4D440010801101000000000DE7CA06000000050E601507000000080000000310804D01000000080000000000000001128A7CF90000000107800108128A40FF0AD3578510D100FA000000080000000210D13CFA000000020B4D44000000000A10804D01000000080000000000000004128A7CFF0000000400000008000000030F878D010C9A87060F8751070000000307800102128A40F90780010800000005128A7CFF000000040AD3578510D100FA000000080000000210D13CFA000000020DE7CA000E5FD90100000000000000070000000700000001128A7CF90000000107800108128A40FF0AD3578510D100FA000000080000000210D13CFA000000020DE7CA000E5FD901000000000B4D44060000000510804D0700000008000000030E601501000000080000000000000004128A7CFF00000004000000080F878D0707800102128A40F9078001080000000800000008000000010000000800000003000000000000000300000002"
theorem small_9522184_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9522184_left_root small_9522184_left_fuel small_9522184_left_count small_9522184_left_encoded = true := by
  decide +kernel
theorem small_9522184_left_covered : CoveredBy scale carrier boxes small_9522184_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9522184_left_root small_9522184_left_fuel small_9522184_left_count small_9522184_left_encoded small_9522184_left_checked

theorem cover_9522184 : CoveredBy scale carrier boxes root_9522184 := by
  apply coveredBy_split_literal root_9522184 small_9522184_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9522538 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9522184_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9522538
#print axioms cover_9522184

def root_9522179 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9522179_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9522179_right_fuel : Nat := 1
def small_9522179_right_count : Nat := 1
def small_9522179_right_encoded : String := "00000000"
theorem small_9522179_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9522179_right_root small_9522179_right_fuel small_9522179_right_count small_9522179_right_encoded = true := by
  decide +kernel
theorem small_9522179_right_covered : CoveredBy scale carrier boxes small_9522179_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9522179_right_root small_9522179_right_fuel small_9522179_right_count small_9522179_right_encoded small_9522179_right_checked

theorem cover_9522179 : CoveredBy scale carrier boxes root_9522179 := by
  apply coveredBy_split_literal root_9522179 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9522184 small_9522179_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9522184
  · exact small_9522179_right_covered
#print axioms cover_9522179

def root_9521319 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9521319_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9521319_left_fuel : Nat := 33
def small_9521319_left_count : Nat := 411
def small_9521319_left_encoded : String := "0F34D100000000000CFD9C050F34D0FA0CFD9C07000000080F350D060C9A87060F875107000000030780010200000008000000080000000800000003000000020F350CFA000000020CFD9C070F34D106000000030C9A86FA000000080F875105000000020780010200000008000000050F350D060C9A86FA0F878D050C9A87060F8751070000000307800102128A40F907800108128A40FF0AD3578110D10100000000000000000810D13D000DE7C9FA0E6015050B4D44060000000700000008000000020E5FD905000000020B4D44060000000710804D070640010212FF70F9000000070000000112FFACF90000000100000008000000030000000000000004128A7CFF000000040AD35781000000080000000700000001128A7CF90000000107800108128A40FF0AD357810000000810D13D000DE7C9FA000000080E5FD905000000020B4D4406108011070000000308C0010211FBE8F9000000070000000100000009000000080000000000000004128A7CFF00000004000000080F878D0707800102128A40F9078001080000000800000008000000010000000800000003000000020F875105000000020C9A87060F8751070000000307800102128A40F907800108128A40FF0AD3578110D10100000000000B4D43FA000000070000000A10D13D000B4D43FA10804D050B4D44060000000710804D070640010212FF70F90640010812FF70FF0000000700000004000000070000000112FFACF9000000010640010812FF70FF0BE879C1000000091011AD000BF3E57A000000071008ED050000000200000007000000000000000400000007000000030000000210801105000000020B4D440610801107000000030000000710804D070640010212FF70F90640010812FF70FF0BE879C1000000070000000700000004000000070000000112FFACF9000000010640010812FF70FF0BE879C1000000061011AD000AA6A27A0000000700000006000000000000000400000007000000030000000000000004128A7CFF000000040AD3578110D1010000000000000000070000000700000001128A7CF90000000107800108128A40FF0AD3578110D10100000000000B4D43FA0000000810801105000000020B4D4406000000060000000510D13D000B4D43FA10804D050B4D4406108011070000000308C0010211FBE8F9064001080000000600000006000000010000000610804D0708C0010211FBE8F90640010812FF70FF0BE879C1000000081011AD000BF3E57A00000008000000060000000000000004000000080000000111FC24F90000000100000008000000030000000210801105000000020B4D440610801107000000030000000610804D0708C0010211FBE8F90640010800000006000000050000000100000005000000030000000000000004128A7CFF000000040AD3578110D10100000000000000000510D13D000B4D43FA10804D050B4D440600000007000000050000000200000005000000000F878D0707800102128A40F907800108128A40FF0AD3578110D10100000000000000000810D13D000B4D43FA10804D050DE7CA060E5FD907000000030640010212FF70F90640010812FF70FF0BE879C1000000080000000800000004000000080000000100000008000000080000000210801105000000020DE7CA060E5FD907000000030640010212FF70F90640010812FF70FF0BE879C110117100000000000AA6A27A000000080000000A1011AD000AA6A27A10EDAD050D4128860EFA110700000003000000070EFA4D0700000008000000030000000210ED7105000000020D4128860EFA110700000003000000070EFA4D0705A00102133134F90000000A00000001133170F90000000105A00108000000080000000500000003000000000000000412FFACFF000000040BE879C100000008000000070000000112FFACF9000000010640010812FF70FF0BE879C1000000081011AD000AA6A27A10EDAD05000000080000000210ED7105000000020D4128860EFA11070000000306E0010212C7E4F9000000060000000100000005000000050000000000000004000000050E6015070640010212FF70F90640010800000008000000050000000100000005000000030000000000000004128A7CFF000000040AD357810000000810D13D000B4D43FA00000008000000050000000000000001128A7CF90000000107800108128A40FF0AD357810000000810D13D000B4D43FA00000008000000050000000000000004000000050000000300000003"
theorem small_9521319_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9521319_left_root small_9521319_left_fuel small_9521319_left_count small_9521319_left_encoded = true := by
  decide +kernel
theorem small_9521319_left_covered : CoveredBy scale carrier boxes small_9521319_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9521319_left_root small_9521319_left_fuel small_9521319_left_count small_9521319_left_encoded small_9521319_left_checked

theorem cover_9521319 : CoveredBy scale carrier boxes root_9521319 := by
  apply coveredBy_split_literal root_9521319 small_9521319_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9522179 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9521319_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9522179
#print axioms cover_9521319

def root_9521313 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9521313_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9521313_left_fuel : Nat := 1
def small_9521313_left_count : Nat := 1
def small_9521313_left_encoded : String := "00000004"
theorem small_9521313_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9521313_left_root small_9521313_left_fuel small_9521313_left_count small_9521313_left_encoded = true := by
  decide +kernel
theorem small_9521313_left_covered : CoveredBy scale carrier boxes small_9521313_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9521313_left_root small_9521313_left_fuel small_9521313_left_count small_9521313_left_encoded small_9521313_left_checked

theorem cover_9521313 : CoveredBy scale carrier boxes root_9521313 := by
  apply coveredBy_split_literal root_9521313 small_9521313_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9521319 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_9521313_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9521319
#print axioms cover_9521313

def root_9515089 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9515089 : CoveredBy scale carrier boxes root_9515089 := by
  apply coveredBy_split_literal root_9515089 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9515090 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9521313 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9515090
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9521313
#print axioms cover_9515089

def root_9515083 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9515083_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9515083_left_fuel : Nat := 1
def small_9515083_left_count : Nat := 1
def small_9515083_left_encoded : String := "00000001"
theorem small_9515083_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9515083_left_root small_9515083_left_fuel small_9515083_left_count small_9515083_left_encoded = true := by
  decide +kernel
theorem small_9515083_left_covered : CoveredBy scale carrier boxes small_9515083_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9515083_left_root small_9515083_left_fuel small_9515083_left_count small_9515083_left_encoded small_9515083_left_checked

theorem cover_9515083 : CoveredBy scale carrier boxes root_9515083 := by
  apply coveredBy_split_literal root_9515083 small_9515083_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9515089 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_9515083_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9515089
#print axioms cover_9515083

def root_9506061 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9506061 : CoveredBy scale carrier boxes root_9506061 := by
  apply coveredBy_split_literal root_9506061 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0227.root_9506062 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9515083 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0227.cover_9506062
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9515083
#print axioms cover_9506061

def root_9506056 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9506056_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9506056_right_fuel : Nat := 1
def small_9506056_right_count : Nat := 1
def small_9506056_right_encoded : String := "00000003"
theorem small_9506056_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9506056_right_root small_9506056_right_fuel small_9506056_right_count small_9506056_right_encoded = true := by
  decide +kernel
theorem small_9506056_right_covered : CoveredBy scale carrier boxes small_9506056_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9506056_right_root small_9506056_right_fuel small_9506056_right_count small_9506056_right_encoded small_9506056_right_checked

theorem cover_9506056 : CoveredBy scale carrier boxes root_9506056 := by
  apply coveredBy_split_literal root_9506056 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9506061 small_9506056_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9506061
  · exact small_9506056_right_covered
#print axioms cover_9506056

def root_9505750 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9505750_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9505750_left_fuel : Nat := 19
def small_9505750_left_count : Nat := 141
def small_9505750_left_encoded : String := "120701060000000305000102135D44F905000108135D44FF0CFD9C010F34D100000000000CFD9C050F34D0FA0000000600000002000000080F350D000CFD9C050F34D0FA00000006000000020F350CFA0000000204548A07000000061386AD060C9A87000F875101000000000C9A86FA00000006000000070F878D010C9A86FA000000060F8751050000000202800102000000060000000700000000000000030000000000000004135D80FF000000040CFD9C010F34D10000000000000000080F350D000CFD9C050F34D0FA00000006000000020F350CFA0000000204548A07000000061386AD060C9A87000F87510100000000000000060F878D010C9A86FA000000060F8751050000000202800102000000060000000800000000000000030000000000000001135D80F90000000105000108135D44FF0CFD9C010F34D10000000000000000080F350D000CFD9C050F34D0FA00000008000000020F350CFA0000000204548A07000000071386AD060C9A8700000000070F878D010C9A86FA000000070000000700000000000000030000000000000004135D80FF000000040CFD9C010F34D10000000000000000080F350D000CFD9C050F34D0FA00000008000000020F350CFA0000000204548A071386710600000003000000081386AD060C9A87000F875101000000000C9A86FA000000080F8751050000000207800102128A40F907800108000000070000000600000001128A7CF900000001000000070F878D0100000008000000000000000300000000"
theorem small_9505750_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9505750_left_root small_9505750_left_fuel small_9505750_left_count small_9505750_left_encoded = true := by
  decide +kernel
theorem small_9505750_left_covered : CoveredBy scale carrier boxes small_9505750_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9505750_left_root small_9505750_left_fuel small_9505750_left_count small_9505750_left_encoded small_9505750_left_checked

theorem cover_9505750 : CoveredBy scale carrier boxes root_9505750 := by
  apply coveredBy_split_literal root_9505750 small_9505750_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9506056 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9505750_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9506056
#print axioms cover_9505750

def root_9505744 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9505744_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9505744_left_fuel : Nat := 1
def small_9505744_left_count : Nat := 1
def small_9505744_left_encoded : String := "00000002"
theorem small_9505744_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9505744_left_root small_9505744_left_fuel small_9505744_left_count small_9505744_left_encoded = true := by
  decide +kernel
theorem small_9505744_left_covered : CoveredBy scale carrier boxes small_9505744_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9505744_left_root small_9505744_left_fuel small_9505744_left_count small_9505744_left_encoded small_9505744_left_checked

theorem cover_9505744 : CoveredBy scale carrier boxes root_9505744 := by
  apply coveredBy_split_literal root_9505744 small_9505744_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9505750 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9505744_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9505750
#print axioms cover_9505744

def root_9505308 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9505308_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9505308_left_fuel : Nat := 19
def small_9505308_left_count : Nat := 199
def small_9505308_left_encoded : String := "120700FA08A91307120701060000000305000102135D44F905000108135D44FF0CFD9C010000000800000006000000040000000600000001135D80F9000000010000000812073D0605000102135D44F905000108135D44FF0CFD9C010F34D1000000000004548A05138670FA0CFD9C070F34D106000000030000000600000009000000021386ACFA000000020CFD9C070F34D1060000000300000008000000090F350D00000000050000000000000004135D80FF000000040CFD9C010F34D1000000000004548A05138670FA0CFD9C07000000080F350D060C9A87060F87510700000003000000050F878D07000000080000000300000003000000021386ACFA000000020CFD9C07000000080F350D060C9A87060F875107000000030000000500000008000000030F350D0004548A05138670FA0CFD9C07000000060F350D060000000500000003000000021386ACFA000000020CFD9C070F34D10600000003000000060F350D0600000005000000030000000000000001135D80F90000000105000108135D44FF0CFD9C010F34D1000000000004548A05138670FA00000009000000021386ACFA000000020CFD9C0700000008000000090F350D0004548A05138670FA0CFD9C070F34D106000000030C9A87000F87510100000000000000050F878D0100000008000000000F350D060000000500000003000000021386ACFA000000020CFD9C070F34D106000000030C9A87000F8751010000000000000005000000080F350D0600000005000000030000000000000004135D80FF000000040CFD9C010F34D10000000000000000080F350D0004548A05138670FA0CFD9C07000000080F350D060C9A87000F875101000000000C9A8706000000050F878D0700000008000000030F878D010C9A870600000008000000080000000000000003000000021386ACFA000000020CFD9C070F34D10600000003000000080F350D060C9A87000F875101000000000C9A8706000000050F878D07078001020000000500000008000000030F878D010C9A87060F87510700000003078001020000000500000008000000080000000000000003000000000000000300000002"
theorem small_9505308_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9505308_left_root small_9505308_left_fuel small_9505308_left_count small_9505308_left_encoded = true := by
  decide +kernel
theorem small_9505308_left_covered : CoveredBy scale carrier boxes small_9505308_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9505308_left_root small_9505308_left_fuel small_9505308_left_count small_9505308_left_encoded small_9505308_left_checked

theorem cover_9505308 : CoveredBy scale carrier boxes root_9505308 := by
  apply coveredBy_split_literal root_9505308 small_9505308_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9505744 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9505308_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9505744
#print axioms cover_9505308

def root_9505303 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9505303_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9505303_right_fuel : Nat := 1
def small_9505303_right_count : Nat := 1
def small_9505303_right_encoded : String := "00000000"
theorem small_9505303_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9505303_right_root small_9505303_right_fuel small_9505303_right_count small_9505303_right_encoded = true := by
  decide +kernel
theorem small_9505303_right_covered : CoveredBy scale carrier boxes small_9505303_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9505303_right_root small_9505303_right_fuel small_9505303_right_count small_9505303_right_encoded small_9505303_right_checked

theorem cover_9505303 : CoveredBy scale carrier boxes root_9505303 := by
  apply coveredBy_split_literal root_9505303 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9505308 small_9505303_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9505308
  · exact small_9505303_right_covered
#print axioms cover_9505303

def root_9504887 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9504887_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9504887_left_fuel : Nat := 23
def small_9504887_left_count : Nat := 191
def small_9504887_left_encoded : String := "120701000000000008A91305120700FA08A913070000000812073D0605000102135D44F905000108135D44FF04548A01000000081386AD000000000900000000000000040000000800000001135D80F90000000100000008000000030000000212073CFA0000000208A9130712070106000000030000000812073D0605000102135D44F905000108135D44FF04548A0113867100000000000CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9C0700000008000000091386AD000CFD9C050F34D0FA0CFD9C070000000800000009000000020F350CFA000000020CFD9C070F34D10600000003000000080F350D060C9A86FA0F878D0500000009000000020F875105000000020C9A87060000000A0F878D0702800102000000090000000900000003000000030000000000000004135D80FF0000000404548A0113867100000000000CFD9C05000000080F350CFA000000020CFD9C0700000008000000081386AD000CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9C070F34D10600000003000000080F350D060C9A86FA0F878D050000000A000000020000000A000000030000000000000001135D80F90000000105000108135D44FF04548A0113867100000000000CFD9C05000000080F350CFA000000020CFD9C0700000008000000081386AD000CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9C070F34D10600000003000000080F350D060C9A86FA000000090F875105000000020C9A87060F87510700000003000000090F878D0707800102000000080000000800000003000000030000000000000004135D80FF0000000404548A011386710000000000000000081386AD000CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9C070F34D10600000003000000080F350D060C9A86FA0F878D0500000008000000020F875105000000020C9A87060F87510700000003078001020000000A128A7CF9000000010780010800000008000000050F878D070000000800000003000000030000000000000003"
theorem small_9504887_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9504887_left_root small_9504887_left_fuel small_9504887_left_count small_9504887_left_encoded = true := by
  decide +kernel
theorem small_9504887_left_covered : CoveredBy scale carrier boxes small_9504887_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9504887_left_root small_9504887_left_fuel small_9504887_left_count small_9504887_left_encoded small_9504887_left_checked

theorem cover_9504887 : CoveredBy scale carrier boxes root_9504887 := by
  apply coveredBy_split_literal root_9504887 small_9504887_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9505303 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9504887_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9505303
#print axioms cover_9504887

def root_9504882 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9504882_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9504882_right_fuel : Nat := 1
def small_9504882_right_count : Nat := 1
def small_9504882_right_encoded : String := "00000004"
theorem small_9504882_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9504882_right_root small_9504882_right_fuel small_9504882_right_count small_9504882_right_encoded = true := by
  decide +kernel
theorem small_9504882_right_covered : CoveredBy scale carrier boxes small_9504882_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9504882_right_root small_9504882_right_fuel small_9504882_right_count small_9504882_right_encoded small_9504882_right_checked

theorem cover_9504882 : CoveredBy scale carrier boxes root_9504882 := by
  apply coveredBy_split_literal root_9504882 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9504887 small_9504882_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9504887
  · exact small_9504882_right_covered
#print axioms cover_9504882

def root_9504881 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9504881 : CoveredBy scale carrier boxes root_9504881 := by
  apply coveredBy_split_literal root_9504881 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9504882 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3567.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9504882
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3567.covered
#print axioms cover_9504881

def root_9504876 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9504876_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9504876_right_fuel : Nat := 1
def small_9504876_right_count : Nat := 1
def small_9504876_right_encoded : String := "00000003"
theorem small_9504876_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9504876_right_root small_9504876_right_fuel small_9504876_right_count small_9504876_right_encoded = true := by
  decide +kernel
theorem small_9504876_right_covered : CoveredBy scale carrier boxes small_9504876_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9504876_right_root small_9504876_right_fuel small_9504876_right_count small_9504876_right_encoded small_9504876_right_checked

theorem cover_9504876 : CoveredBy scale carrier boxes root_9504876 := by
  apply coveredBy_split_literal root_9504876 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9504881 small_9504876_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9504881
  · exact small_9504876_right_covered
#print axioms cover_9504876

def root_9502746 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9502746 : CoveredBy scale carrier boxes root_9502746 := by
  apply coveredBy_split_literal root_9502746 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3554.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9504876 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3554.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9504876
#print axioms cover_9502746

def root_9502741 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9502741_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9502741_right_fuel : Nat := 1
def small_9502741_right_count : Nat := 1
def small_9502741_right_encoded : String := "00000002"
theorem small_9502741_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9502741_right_root small_9502741_right_fuel small_9502741_right_count small_9502741_right_encoded = true := by
  decide +kernel
theorem small_9502741_right_covered : CoveredBy scale carrier boxes small_9502741_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9502741_right_root small_9502741_right_fuel small_9502741_right_count small_9502741_right_encoded small_9502741_right_checked

theorem cover_9502741 : CoveredBy scale carrier boxes root_9502741 := by
  apply coveredBy_split_literal root_9502741 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9502746 small_9502741_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9502746
  · exact small_9502741_right_covered
#print axioms cover_9502741

def root_9543465 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9543465 : CoveredBy scale carrier boxes root_9543465 := by
  apply coveredBy_split_literal root_9543465 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3568.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3569.root coord1 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3568.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3569.covered
#print axioms cover_9543465

def root_9543459 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9543459_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9543459_left_fuel : Nat := 1
def small_9543459_left_count : Nat := 1
def small_9543459_left_encoded : String := "00000003"
theorem small_9543459_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9543459_left_root small_9543459_left_fuel small_9543459_left_count small_9543459_left_encoded = true := by
  decide +kernel
theorem small_9543459_left_covered : CoveredBy scale carrier boxes small_9543459_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9543459_left_root small_9543459_left_fuel small_9543459_left_count small_9543459_left_encoded small_9543459_left_checked

theorem cover_9543459 : CoveredBy scale carrier boxes root_9543459 := by
  apply coveredBy_split_literal root_9543459 small_9543459_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9543465 coord3 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_9543459_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9543465
#print axioms cover_9543459

def root_9548004 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9548004_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9548004_left_fuel : Nat := 19
def small_9548004_left_count : Nat := 131
def small_9548004_left_encoded : String := "13D7B0F9078000FA128A7D050280010813D7B0FF0AD3578110D10100000000000DE7CA060000000A0E6015070000000A0000000310D13D000DE7CA06000000050E601507014001020000000513F614F90000000108C000FA0000000511FBE90500000002014001080000000513F614FF000000040BE879C10000000A1011AD00000000080000000000000003000000000000000413D7ECFF000000040AD3578110D10100000000000000000A10D13D000DE7CA060E5FD907000000030000000A0E601507014001020000000A13F614F90000000108C000FA11FC250503C0010813A510FF0BE879C10000000A1011AD000DAED8870000000A0000000A00000000000000040000000A0000000211FBE9050000000203C0010813A510FF0BE879C10000000A1011AD000000000A00000000000000040000000A000000030000000000000002128A4105000000020280010813D7B0FF0AD3578110D10100000000000000000A10D13D000DE7CA06000000080E601507014001020000000813F614F900000001064000FA12FFAD05014001080000000813F614FF000000040BE879C10000000A00000008000000020000000800000003000000000000000413D7ECFF000000040AD357810000000A10D13D000DE7CA060000000A0E601507014001020000000A13F614F900000001064000FA12FFAD050000000A000000020000000A000000030000000000000001"
theorem small_9548004_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9548004_left_root small_9548004_left_fuel small_9548004_left_count small_9548004_left_encoded = true := by
  decide +kernel
theorem small_9548004_left_covered : CoveredBy scale carrier boxes small_9548004_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9548004_left_root small_9548004_left_fuel small_9548004_left_count small_9548004_left_encoded small_9548004_left_checked

theorem cover_9548004 : CoveredBy scale carrier boxes root_9548004 := by
  apply coveredBy_split_literal root_9548004 small_9548004_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3570.root coord1 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_9548004_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3570.covered
#print axioms cover_9548004

def root_9547999 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9547999_right_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9547999_right_fuel : Nat := 1
def small_9547999_right_count : Nat := 1
def small_9547999_right_encoded : String := "00000003"
theorem small_9547999_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9547999_right_root small_9547999_right_fuel small_9547999_right_count small_9547999_right_encoded = true := by
  decide +kernel
theorem small_9547999_right_covered : CoveredBy scale carrier boxes small_9547999_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9547999_right_root small_9547999_right_fuel small_9547999_right_count small_9547999_right_encoded small_9547999_right_checked

theorem cover_9547999 : CoveredBy scale carrier boxes root_9547999 := by
  apply coveredBy_split_literal root_9547999 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9548004 small_9547999_right_root coord3 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9548004
  · exact small_9547999_right_covered
#print axioms cover_9547999

def root_9547801 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9547801_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9547801_left_fuel : Nat := 22
def small_9547801_left_count : Nat := 93
def small_9547801_left_encoded : String := "0F875107000000030280010213D7B0F9078000FA128A7D050280010813D7B0FF0AD357810000000500000008000000040000000A000000020000000A0000000113D7ECF900000001078000FA128A7D050280010813D7B0FF0AD3578110D10100000000000000000910D13D000B4D440610801107000000030000000810804D0703C001020000000513A54CF90000000108C000FA000000050000000800000003000000000000000413D7ECFF000000040AD357810000000A10D13D000B4D440610801107000000030000000A10804D0703C001020000000A13A54CF90000000108C000FA11FC250503C0010813A510FF0BE879C1000000091011AD000BF3E58600000005100929070000000A0000000300000000000000040000000A000000020000000A000000030000000000000002128A4105000000020280010813D7B0FF0AD3578110D10100000000000000000A000000080000000413D7ECFF000000040AD357810000000A10D13D000000000800000000"
theorem small_9547801_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9547801_left_root small_9547801_left_fuel small_9547801_left_count small_9547801_left_encoded = true := by
  decide +kernel
theorem small_9547801_left_covered : CoveredBy scale carrier boxes small_9547801_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9547801_left_root small_9547801_left_fuel small_9547801_left_count small_9547801_left_encoded small_9547801_left_checked

theorem cover_9547801 : CoveredBy scale carrier boxes root_9547801 := by
  apply coveredBy_split_literal root_9547801 small_9547801_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9547999 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9547801_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9547999
#print axioms cover_9547801

def root_9547796 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9547796_right_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9547796_right_fuel : Nat := 1
def small_9547796_right_count : Nat := 1
def small_9547796_right_encoded : String := "00000003"
theorem small_9547796_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9547796_right_root small_9547796_right_fuel small_9547796_right_count small_9547796_right_encoded = true := by
  decide +kernel
theorem small_9547796_right_covered : CoveredBy scale carrier boxes small_9547796_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9547796_right_root small_9547796_right_fuel small_9547796_right_count small_9547796_right_encoded small_9547796_right_checked

theorem cover_9547796 : CoveredBy scale carrier boxes root_9547796 := by
  apply coveredBy_split_literal root_9547796 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9547801 small_9547796_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9547801
  · exact small_9547796_right_covered
#print axioms cover_9547796

def root_9543458 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9543458 : CoveredBy scale carrier boxes root_9543458 := by
  apply coveredBy_split_literal root_9543458 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9543459 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9547796 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9543459
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9547796
#print axioms cover_9543458

def root_9543452 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9543452_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9543452_left_fuel : Nat := 1
def small_9543452_left_count : Nat := 1
def small_9543452_left_encoded : String := "00000000"
theorem small_9543452_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9543452_left_root small_9543452_left_fuel small_9543452_left_count small_9543452_left_encoded = true := by
  decide +kernel
theorem small_9543452_left_covered : CoveredBy scale carrier boxes small_9543452_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9543452_left_root small_9543452_left_fuel small_9543452_left_count small_9543452_left_encoded small_9543452_left_checked

theorem cover_9543452 : CoveredBy scale carrier boxes root_9543452 := by
  apply coveredBy_split_literal root_9543452 small_9543452_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9543458 coord0 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_9543452_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9543458
#print axioms cover_9543452

def root_9551576 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9551576_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9551576_left_fuel : Nat := 27
def small_9551576_left_count : Nat := 411
def small_9551576_left_encoded : String := "13D7B0F9078000FA128A7D050280010813D7B0FF0AD3578710D10106000000030DE7CA00000000070E601501000000070000000010D13D060DE7CA00000000050E601501014001020000000513F614F90000000108C000FA0000000511FBE90500000002014001080000000513F614FF000000040BE879C7000000071011AD06000000080000000300000000000000030000000413D7ECFF000000040AD3578710D10106000000030DE7CA000E5FD90100000000000000060000000610D13D060DE7CA000E5FD901000000000140010213F5D8F908C000FA0000000511FBE9050000000203C0010800000005000000060000000113F614F90000000108C000FA11FC250503C0010800000005000000060000000211FBE9050000000203C0010813A510FF0BE879C700000007000000080000000413A54CFF000000040BE879C71011710600000003000000061011AD0600000008000000030E6015010140010213F5D8F908C000FA11FC2505000000060000000211FBE9050000000203C0010813A510FF0BE879C7000000061011AD060DAED8810E962500000000000000000600000006000000030000000413A54CFF000000040BE879C7000000061011AD0600000006000000030000000113F614F90000000108C000FA11FC250503C0010813A510FF0BE879C7000000061011AD060DAED8810E962500000000000000000600000006000000030000000413A54CFF000000040BE879C7000000061011AD060DAED8810E962500000000000000000600000006000000030000000211FBE9050000000203C0010813A510FF0BE879C71011710600000003000000061011AD060DAED8810E9625000000000001E0010213E958F9082000FA00000006000000080000000113E994F900000001082000FA124699050320010800000006000000060000000212465D0500000002032001080000000813C144FF000000040C730AE700000006000000080E9661000000000800000000000000030000000413A54CFF000000040BE879C71011710600000003000000061011AD060DAED8810E9625000000000001E0010213E958F9082000FA000000060000000A0000000113E994F900000001082000FA12469905000000060000000212465D0500000002046001081383DCFF0C730AE7000000060000000A000000040000000A0E96610001E001020000000613E994F900000001082000FA0000000612465D05000000020460010800000008000000060000000000000003000000000000000300000002128A4105000000020280010813D7B0FF0AD3578710D10106000000030000000710D13D060DE7CA00000000080E601501014001020000000813F614F900000001064000FA12FFAD05014001080000000713F614FF000000040BE879C70000000700000008000000020000000800000000000000030000000413D7ECFF000000040AD3578710D10106000000030DE7CA000E5FD901000000000140010213F5D8F9064000FA000000060000000700000001000000070E6015010140010213F5D8F9064000FA0000000612FF71050000000203C0010800000007000000060000000113F614F900000001064000FA12FFAD0503C0010800000007000000060000000212FF71050000000203C0010800000007000000050000000010D13D060DE7CA000E5FD90100000000000000080E6015010140010213F5D8F9064000FA12FFAD0503C0010813A510FF0BE879C7101171060000000300000006000000080000000413A54CFF000000040BE879C71011710600000003000000061011AD06000000080000000300000002000000080000000113F614F900000001064000FA12FFAD0503C0010813A510FF0BE879C710117106000000030DAED8810E9625000000000001E0010200000006000000070E9661000000000700000000000000080000000413A54CFF000000040BE879C710117106000000030DAED8810E9625000000000001E001020000000613E994F90000000106E000FA00000006000000050E96610001E001020000000613E994F90000000106E000FA0000000600000007000000001011AD060DAED8810E9625000000000001E001020000000A13E994F90000000106E000FA12C8210504600108000000080000000A000000020000000800000008000000030000000212FF71050000000203C001080000000813A54CFF000000040BE879C710117106000000030DAED8810E96250000000000000000050000000800000008000000000000000300000001"
theorem small_9551576_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9551576_left_root small_9551576_left_fuel small_9551576_left_count small_9551576_left_encoded = true := by
  decide +kernel
theorem small_9551576_left_covered : CoveredBy scale carrier boxes small_9551576_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9551576_left_root small_9551576_left_fuel small_9551576_left_count small_9551576_left_encoded small_9551576_left_checked

theorem cover_9551576 : CoveredBy scale carrier boxes root_9551576 := by
  apply coveredBy_split_literal root_9551576 small_9551576_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3571.root coord1 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_9551576_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3571.covered
#print axioms cover_9551576

def root_9551571 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9551571_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9551571_right_fuel : Nat := 1
def small_9551571_right_count : Nat := 1
def small_9551571_right_encoded : String := "00000000"
theorem small_9551571_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9551571_right_root small_9551571_right_fuel small_9551571_right_count small_9551571_right_encoded = true := by
  decide +kernel
theorem small_9551571_right_covered : CoveredBy scale carrier boxes small_9551571_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9551571_right_root small_9551571_right_fuel small_9551571_right_count small_9551571_right_encoded small_9551571_right_checked

theorem cover_9551571 : CoveredBy scale carrier boxes root_9551571 := by
  apply coveredBy_split_literal root_9551571 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9551576 small_9551571_right_root coord0 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9551576
  · exact small_9551571_right_covered
#print axioms cover_9551571

def root_9551337 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9551337_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9551337_left_fuel : Nat := 22
def small_9551337_left_count : Nat := 109
def small_9551337_left_encoded : String := "0F875101000000000280010213D7B0F9078000FA128A7D050280010813D7B0FF0AD3578700000005000000080000000413D7ECFF000000040AD3578710D10106000000030000000610D13D060B4D440010801101000000000000000810804D01014001020000000513F614F90000000108C000FA0000000500000008000000000000000300000002128A410500000002028001080000000813D7ECFF000000040AD3578710D101060000000300000007000000080000000113D7ECF900000001078000FA128A7D05028001080000000713D7ECFF000000040AD357870000000710D13D060B4D440010801101000000000000000710804D0103C0010213A510F908C000FA11FC250503C001080000000513A54CFF000000040BE879C7000000061011AD060BF3E58000000005100929010000000700000000000000030000000211FBE9050000000203C001080000000713A54CFF00000004000000070000000113A54CF90000000108C000FA11FC2505000000070000000200000007000000000000000300000002128A410500000002028001080000000713D7ECFF000000040AD357870000000710D13D060000000800000003"
theorem small_9551337_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9551337_left_root small_9551337_left_fuel small_9551337_left_count small_9551337_left_encoded = true := by
  decide +kernel
theorem small_9551337_left_covered : CoveredBy scale carrier boxes small_9551337_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9551337_left_root small_9551337_left_fuel small_9551337_left_count small_9551337_left_encoded small_9551337_left_checked

theorem cover_9551337 : CoveredBy scale carrier boxes root_9551337 := by
  apply coveredBy_split_literal root_9551337 small_9551337_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9551571 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9551337_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9551571
#print axioms cover_9551337

def root_9551331 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9551331_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9551331_left_fuel : Nat := 1
def small_9551331_left_count : Nat := 1
def small_9551331_left_encoded : String := "00000003"
theorem small_9551331_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9551331_left_root small_9551331_left_fuel small_9551331_left_count small_9551331_left_encoded = true := by
  decide +kernel
theorem small_9551331_left_covered : CoveredBy scale carrier boxes small_9551331_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9551331_left_root small_9551331_left_fuel small_9551331_left_count small_9551331_left_encoded small_9551331_left_checked

theorem cover_9551331 : CoveredBy scale carrier boxes root_9551331 := by
  apply coveredBy_split_literal root_9551331 small_9551331_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9551337 coord3 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_9551331_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9551337
#print axioms cover_9551331

def root_9551330 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9551330 : CoveredBy scale carrier boxes root_9551330 := by
  apply coveredBy_split_literal root_9551330 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9551331 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3572.root coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9551331
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3572.covered
#print axioms cover_9551330

def root_9551325 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9551325_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9551325_right_fuel : Nat := 1
def small_9551325_right_count : Nat := 1
def small_9551325_right_encoded : String := "00000000"
theorem small_9551325_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9551325_right_root small_9551325_right_fuel small_9551325_right_count small_9551325_right_encoded = true := by
  decide +kernel
theorem small_9551325_right_covered : CoveredBy scale carrier boxes small_9551325_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9551325_right_root small_9551325_right_fuel small_9551325_right_count small_9551325_right_encoded small_9551325_right_checked

theorem cover_9551325 : CoveredBy scale carrier boxes root_9551325 := by
  apply coveredBy_split_literal root_9551325 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9551330 small_9551325_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9551330
  · exact small_9551325_right_covered
#print axioms cover_9551325

def root_9543451 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9543451 : CoveredBy scale carrier boxes root_9543451 := by
  apply coveredBy_split_literal root_9543451 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9543452 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9551325 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9543452
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9551325
#print axioms cover_9543451

def root_9543446 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9543446_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9543446_right_fuel : Nat := 1
def small_9543446_right_count : Nat := 1
def small_9543446_right_encoded : String := "00000004"
theorem small_9543446_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9543446_right_root small_9543446_right_fuel small_9543446_right_count small_9543446_right_encoded = true := by
  decide +kernel
theorem small_9543446_right_covered : CoveredBy scale carrier boxes small_9543446_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9543446_right_root small_9543446_right_fuel small_9543446_right_count small_9543446_right_encoded small_9543446_right_checked

theorem cover_9543446 : CoveredBy scale carrier boxes root_9543446 := by
  apply coveredBy_split_literal root_9543446 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9543451 small_9543446_right_root coord4 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9543451
  · exact small_9543446_right_covered
#print axioms cover_9543446

def root_9558722 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9558722 : CoveredBy scale carrier boxes root_9558722 := by
  apply coveredBy_split_literal root_9558722 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3573.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3574.root coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3573.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3574.covered
#print axioms cover_9558722

def root_9558717 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9558717_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9558717_right_fuel : Nat := 1
def small_9558717_right_count : Nat := 1
def small_9558717_right_encoded : String := "00000000"
theorem small_9558717_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9558717_right_root small_9558717_right_fuel small_9558717_right_count small_9558717_right_encoded = true := by
  decide +kernel
theorem small_9558717_right_covered : CoveredBy scale carrier boxes small_9558717_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9558717_right_root small_9558717_right_fuel small_9558717_right_count small_9558717_right_encoded small_9558717_right_checked

theorem cover_9558717 : CoveredBy scale carrier boxes root_9558717 := by
  apply coveredBy_split_literal root_9558717 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9558722 small_9558717_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9558722
  · exact small_9558717_right_covered
#print axioms cover_9558717

def root_9558089 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9558089_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9558089_left_fuel : Nat := 30
def small_9558089_left_count : Nat := 299
def small_9558089_left_encoded : String := "0F34D100000000000CFD9C070F34D106000000030280010213D7B0F9078000FA128A7D0507800108128A40FF0AD3578110D10100000000000AD35787000000080000000A10D13D000AD3578710D1010600000003014001020000000613F614F9000000010000000810D13D060140010213F5D8F908C000FA0000000A0000000A0000000113F614F90000000108C000FA11FC25050640010812FF70FF0BE879C10000000A1011AD000BE879C7000000060000000A00000000000000040000000A0000000211FBE905000000020640010812FF70FF0BE879C10000000A1011AD000BE879C70000000A0000000A000000000000000400000005000000030000000000000004128A7CFF000000040AD357810000000A10D13D000AD3578710D10106000000030000000510D13D060000000A000000030000000000000002128A41050000000207800108128A40FF0AD3578110D10100000000000000000510D13D000AD3578710D10106000000030000000510D13D06014001020000000A00000005000000030000000000000004000000050000000113D7ECF900000001078000FA128A7D0507800108128A40FF0AD3578110D10100000000000000000510D13D000AD3578710D10106000000030000000510D13D0603C0010213A510F908C000FA11FC25050640010812FF70FF0BE879C1000000081011AD000BE879C7000000081011AD06032001020000000A13C144F900000001096000FA000000080000000500000003000000000000000400000005000000020000000500000001000000050000000300000000000000040000000500000002000000050F350D060C9A87060F87510700000003028001020000000A13D7ECF900000001078000FA128A7D0507800108128A40FF0AD357810000000A10D13D000000000A000000000000000400000007000000020000000A0F878D070280010213D7B0F9078000FA128A7D0507800108128A40FF0AD357810000000A10D13D000000000A00000000000000040000000A000000020000000A0000000113D7ECF900000001078000FA128A7D0507800108128A40FF0AD3578110D10100000000000000000A10D13D000DE7CA060E5FD9070000000303C001020000000A13A54CF90000000108C000FA11FC25050640010812FF70FF0BE879C10000000A1011AD000000000A000000000000000400000007000000020000000A0E60150703C0010213A510F908C000FA11FC25050000000A000000020000000A0000000113A54CF90000000108C000FA11FC25050640010812FF70FF0BE879C110117100000000000000000A1011AD000DAED8870E96250600000003046001021383DCF9096000FA000000080000000500000001000000050E966106046001020000000A138418F900000001096000FA11AABD050000000A0000000200000005000000030000000000000004000000050000000200000005000000030000000000000004128A7CFF000000040AD357810000000A10D13D000DE7CA060000000A000000050000000000000002128A41050000000207800108128A40FF0AD3578110D10100000000000000000510D13D000DE7CA060E5FD9070000000303C001020000000A00000005000000050000000000000004000000050000000300000003"
theorem small_9558089_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9558089_left_root small_9558089_left_fuel small_9558089_left_count small_9558089_left_encoded = true := by
  decide +kernel
theorem small_9558089_left_covered : CoveredBy scale carrier boxes small_9558089_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9558089_left_root small_9558089_left_fuel small_9558089_left_count small_9558089_left_encoded small_9558089_left_checked

theorem cover_9558089 : CoveredBy scale carrier boxes root_9558089 := by
  apply coveredBy_split_literal root_9558089 small_9558089_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9558717 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9558089_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9558717
#print axioms cover_9558089

def root_9558083 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9558083_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9558083_left_fuel : Nat := 1
def small_9558083_left_count : Nat := 1
def small_9558083_left_encoded : String := "00000004"
theorem small_9558083_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9558083_left_root small_9558083_left_fuel small_9558083_left_count small_9558083_left_encoded = true := by
  decide +kernel
theorem small_9558083_left_covered : CoveredBy scale carrier boxes small_9558083_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9558083_left_root small_9558083_left_fuel small_9558083_left_count small_9558083_left_encoded small_9558083_left_checked

theorem cover_9558083 : CoveredBy scale carrier boxes root_9558083 := by
  apply coveredBy_split_literal root_9558083 small_9558083_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9558089 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_9558083_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9558089
#print axioms cover_9558083

def root_9543445 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9543445 : CoveredBy scale carrier boxes root_9543445 := by
  apply coveredBy_split_literal root_9543445 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9543446 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9558083 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9543446
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9558083
#print axioms cover_9543445

def root_9543440 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9543440_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9543440_right_fuel : Nat := 1
def small_9543440_right_count : Nat := 1
def small_9543440_right_encoded : String := "00000002"
theorem small_9543440_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9543440_right_root small_9543440_right_fuel small_9543440_right_count small_9543440_right_encoded = true := by
  decide +kernel
theorem small_9543440_right_covered : CoveredBy scale carrier boxes small_9543440_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9543440_right_root small_9543440_right_fuel small_9543440_right_count small_9543440_right_encoded small_9543440_right_checked

theorem cover_9543440 : CoveredBy scale carrier boxes root_9543440 := by
  apply coveredBy_split_literal root_9543440 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9543445 small_9543440_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9543445
  · exact small_9543440_right_covered
#print axioms cover_9543440

def root_9543439 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9543439_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9543439_right_fuel : Nat := 28
def small_9543439_right_count : Nat := 427
def small_9543439_right_encoded : String := "135D45050000000205000108135D44FF0CFD9C010F34D100000000000CFD9C070F34D106000000030280010213D7B0F9028000FA13D7ED050280010813D7B0FF0AD3578110D10100000000000AD3578710D10106000000030140010213F5D8F903C000FA13A54D050140010813F5D8FF09BE35410000000A11777D00000000070000000000000004000000050000000200000005000000010000000510D13D06014001020000000A13F614F90000000103C000FA13A54D050140010813F5D8FF09BE35410000000A11777D000BE879C70000000A0000000800000000000000040000000500000002000000050000000310D13D000AD3578710D10106000000030140010213F5D8F903C000FA13A54D05014001080000000713F614FF000000040BE879C100000007000000070000000213A51105000000020140010800000007000000050000000113F614F90000000103C000FA000000070000000510D13D06014001020000000813F614F90000000103C000FA13A54D05014001080000000813F614FF000000040BE879C110117100000000000BE879C71011710600000003000000050000000800000008000000020000000800000003000000000000000413D7ECFF000000040AD3578110D10100000000000000000510D13D000AD3578710D10106000000030000000510D13D060140010213F5D8F903C000FA13A54D0503C0010813A510FF0BE879C10000000A0000000800000004000000050000000200000005000000010000000500000003000000000000000213D7B105000000020280010813D7B0FF0AD3578110D10100000000000000000510D13D000AD3578710D101060000000300000005000000080000000000000004000000050000000113D7ECF900000001028000FA13D7ED050280010813D7B0FF0AD3578110D10100000000000000000510D13D000AD3578710D10106000000030000000510D13D0603C0010213A510F903C000FA13A54D050140010813F5D8FF0BE879C100000007000000070000000400000005000000020000000500000001000000050000000300000000000000040000000500000002000000050F350D060C9A87060F87510700000003000000080F878D070280010213D7B0F9028000FA13D7ED050280010813D7B0FF000000080000000413D7ECFF000000040AD357810000000A0000000800000002000000080000000113D7ECF900000001028000FA13D7ED050280010813D7B0FF0AD3578110D10100000000000DE7CA060E5FD90700000003000000060E60150703C0010213A510F90000000A000000010000000500000003000000080000000413D7ECFF000000040AD3578110D10100000000000000000510D13D000DE7CA060E5FD907000000030000000800000005000000000000000213D7B1050000000202800108000000080000000500000003000000030F350D000CFD9C070F34D106000000030C9A87000F87510100000000000000080F878D010280010213D7B0F9028000FA13D7ED050280010813D7B0FF000000080000000413D7ECFF000000040AD3578710D10106000000030DE7CA000E5FD90100000000000000070E6015010140010213F5D8F903C000FA13A54D0503C00108000000070000000500000002000000050000000100000005000000000000000800000002000000080000000113D7ECF900000001028000FA13D7ED050280010813D7B0FF0AD3578700000007000000080000000413D7ECFF000000040AD3578710D10106000000030000000510D13D060DE7CA000E5FD901000000000000000800000005000000030000000213D7B1050000000202800108000000080000000500000000000000080000000000000004135D80FF000000040CFD9C010F34D100000000000CFD9C070F34D10600000003000000050F350D060C9A87060F875107000000030000000A0F878D07028001020000000A0000000500000003000000030F350D000CFD9C070F34D106000000030C9A87000F875101000000000280010200000009000000090F878D010280010213D7B0F9028000FA13D7ED0507800108128A40FF0AD357870000000910D13D060DE7CA00000000090000000500000003000000040000000500000002000000050000000100000005000000000F350D060C9A87000F87510100000000000000080F878D010C9A87060F87510700000003000000080F878D070280010213D7B0F9028000FA13D7ED0507800108000000080000000900000002000000080000000113D7ECF900000001028000FA13D7ED0507800108128A40FF0DE7CA0000000008000000050000000400000005000000020000000500000003000000000000000300000000"
theorem small_9543439_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9543439_right_root small_9543439_right_fuel small_9543439_right_count small_9543439_right_encoded = true := by
  decide +kernel
theorem small_9543439_right_covered : CoveredBy scale carrier boxes small_9543439_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9543439_right_root small_9543439_right_fuel small_9543439_right_count small_9543439_right_encoded small_9543439_right_checked

theorem cover_9543439 : CoveredBy scale carrier boxes root_9543439 := by
  apply coveredBy_split_literal root_9543439 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9543440 small_9543439_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9543440
  · exact small_9543439_right_covered
#print axioms cover_9543439

def root_9543434 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9543434_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9543434_right_fuel : Nat := 1
def small_9543434_right_count : Nat := 1
def small_9543434_right_encoded : String := "00000001"
theorem small_9543434_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9543434_right_root small_9543434_right_fuel small_9543434_right_count small_9543434_right_encoded = true := by
  decide +kernel
theorem small_9543434_right_covered : CoveredBy scale carrier boxes small_9543434_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9543434_right_root small_9543434_right_fuel small_9543434_right_count small_9543434_right_encoded small_9543434_right_checked

theorem cover_9543434 : CoveredBy scale carrier boxes root_9543434 := by
  apply coveredBy_split_literal root_9543434 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9543439 small_9543434_right_root coord1 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9543439
  · exact small_9543434_right_covered
#print axioms cover_9543434

def root_9564439 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9564439 : CoveredBy scale carrier boxes root_9564439 := by
  apply coveredBy_split_literal root_9564439 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3575.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3576.root coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3575.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3576.covered
#print axioms cover_9564439

def root_9564434 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9564434_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9564434_right_fuel : Nat := 1
def small_9564434_right_count : Nat := 1
def small_9564434_right_encoded : String := "00000004"
theorem small_9564434_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9564434_right_root small_9564434_right_fuel small_9564434_right_count small_9564434_right_encoded = true := by
  decide +kernel
theorem small_9564434_right_covered : CoveredBy scale carrier boxes small_9564434_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9564434_right_root small_9564434_right_fuel small_9564434_right_count small_9564434_right_encoded small_9564434_right_checked

theorem cover_9564434 : CoveredBy scale carrier boxes root_9564434 := by
  apply coveredBy_split_literal root_9564434 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.root_9564439 small_9564434_right_root coord4 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228.cover_9564439
  · exact small_9564434_right_covered
#print axioms cover_9564434

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0228
