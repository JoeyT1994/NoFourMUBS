import TaoBundleAssembly0351
import TaoBundleChunkBatch0465
import TaoBundleChunkBatch0466
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352
def root_4958204 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4958204_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4958204_left_fuel : Nat := 29
def small_4958204_left_count : Nat := 415
def small_4958204_left_encoded : String := "0F34D104000000020C9A86F60F878D010C9A87020F8751030000000107800106128A40FD028001080000000513D7ECFF000000040AD357850000000710D13D040DE7C9F6000000050E5FD90100000000000000070000000200000003000000070F878D0307800106128A40FD028001080000000713D7ECFF000000040AD357850000000610D13D040DE7C9F6000000060E5FD901000000000DE7CA020E5FD9030000000100000007000000060000000200000003128A7CFD0000000302800108000000070000000600000001000000000F875101000000000C9A87020F8751030000000107800106128A40FD0280010813D7B0FF0AD357850000000710D13D0400000007000000020000000413D7ECFF000000040AD3578510D10104000000020000000710D13D040B4D43F610804D010B4D4402108011030000000106400106000000050000000710804D030640010612FF70FD000000070000000300000007000000010000000010801101000000000B4D440210801103000000010640010612FF70FD03C0010800000007000000090000000312FFACFD0000000303C00108000000070000000810804D030640010612FF70FD03C001080000000713A54CFF000000040BE879C5000000071011AD040AA6A2760000000710ED7101000000000BF3E582000000091009290305A00106000000070000000700000001000000020000000312FFACFD0000000303C001080000000713A54CFF000000040BE879C5000000071011AD040AA6A276000000070000000800000002000000010000000200000003128A7CFD000000030280010813D7B0FF000000070000000413D7ECFF000000040AD3578510D10104000000020000000710D13D040B4D43F610804D010B4D4402108011030000000100000007000000070000000010801101000000000B4D440210801103000000010000000810804D0308C0010611FBE8FD03C001080000000700000008000000030000000800000001000000020F878D0307800106128A40FD0280010813D7B0FF0AD357850000000710D13D040B4D43F60000000710801101000000000DE7CA020E5FD903000000010000000700000007000000020000000413D7ECFF000000040AD3578510D10104000000020B4D43F60000000610801101000000000DE7CA020E5FD90300000001000000070000000610D13D040B4D43F610804D010DE7CA020E5FD903000000010640010612FF70FD0000000700000003000000070E601503064001060000000600000006000000010000000010801101000000000DE7CA020E5FD903000000010640010612FF70FD03C001080000000713A54CFF000000040BE879C51011710400000002000000071011AD040AA6A27610EDAD010D4128820EFA11030000000100000007000000070000000010ED7101000000000D4128820EFA11030000000105A0010600000007000000070EFA4D0305A00106133134FD00000007000000030000000700000001000000020000000312FFACFD0000000303C001080000000713A54CFF000000040BE879C5000000071011AD040AA6A27610EDAD01000000070000000010ED7101000000000D4128820EFA110300000001000000070EFA4D0306E00106000000070000000700000001000000020E6015030640010612FF70FD03C0010813A510FF0BE879C5000000071011AD040DAED8830E962502000000010000000600000007000000020000000413A54CFF000000040BE879C5000000061011AD040DAED883000000060E9661020AA6A2760000000610ED71010000000005A00106133134FD04600108000000070000000600000003133170FD000000030000000600000001000000020000000312FFACFD0000000303C0010813A510FF0BE879C5000000061011AD0400000007000000020000000400000006000000010000000200000003128A7CFD000000030280010813D7B0FF0AD357850000000710D13D040B4D43F60000000710801101000000000DE7CA020E5FD903000000010000000700000007000000020000000413D7ECFF000000040AD3578510D10104000000020000000610D13D040B4D43F610804D010DE7CA020E5FD9030000000108C001060000000600000006000000060000000010801101000000000DE7CA020E5FD9030000000108C0010611FBE8FD03C001080000000713A54CFF000000040BE879C5000000061011AD040AA6A2760000000600000008000000020000000311FC24FD0000000303C0010800000007000000050E60150300000006000000010000000200000001"
theorem small_4958204_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4958204_left_root small_4958204_left_fuel small_4958204_left_count small_4958204_left_encoded = true := by
  decide +kernel
theorem small_4958204_left_covered : CoveredBy scale carrier boxes small_4958204_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4958204_left_root small_4958204_left_fuel small_4958204_left_count small_4958204_left_encoded small_4958204_left_checked

theorem cover_4958204 : CoveredBy scale carrier boxes root_4958204 := by
  apply coveredBy_split_literal root_4958204 small_4958204_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0351.root_4959080 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4958204_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0351.cover_4959080
#print axioms cover_4958204

def root_4958199 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4958199_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4958199_right_fuel : Nat := 1
def small_4958199_right_count : Nat := 1
def small_4958199_right_encoded : String := "00000001"
theorem small_4958199_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4958199_right_root small_4958199_right_fuel small_4958199_right_count small_4958199_right_encoded = true := by
  decide +kernel
theorem small_4958199_right_covered : CoveredBy scale carrier boxes small_4958199_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4958199_right_root small_4958199_right_fuel small_4958199_right_count small_4958199_right_encoded small_4958199_right_checked

theorem cover_4958199 : CoveredBy scale carrier boxes root_4958199 := by
  apply coveredBy_split_literal root_4958199 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.root_4958204 small_4958199_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.cover_4958204
  · exact small_4958199_right_covered
#print axioms cover_4958199

def root_4957683 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4957683_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4957683_left_fuel : Nat := 27
def small_4957683_left_count : Nat := 255
def small_4957683_left_encoded : String := "0F34D102000000010CFD9C050F34D104000000020C9A86F6000000060F8751010000000007800106128A40FD0280010813D7B0FF0AD357830000000610D13D020AD357850000000610D13D040B4D43F60000000610801101000000000640010612FF70FD00000007000000030000000700000002000000010000000413D7ECFF000000040AD35783000000060000000600000003128A7CFD000000030280010800000006000000060F350D040C9A86F60F878D010C9A87040F8751050000000207800106128A40FD028001080000000513D7ECFF000000040AD357830000000910D13D020DE7C9F6000000050000000900000001000000030000000A0F878D0507800106128A40FD0280010813D7B0FF0AD357830000000610D13D020DE7C9F60000000500000009000000010000000413D7ECFF000000040AD357830000000610D13D020DE7C9F6000000060E5FD901000000000DE7CA040E5FD905000000020640010612FF70FD03C0010800000005000000060000000300000006000000060000000100000003128A7CFD0000000302800108000000090000000600000002000000000F875101000000000C9A87040F8751050000000207800106128A40FD028001080000000913D7ECFF000000040AD357830000000910D13D020B4D43F60000000A000000090000000100000003000000090F878D0507800106128A40FD0280010813D7B0FF0AD357830000000910D13D020B4D43F610804D01000000090000000000000009000000010000000413D7ECFF000000040AD3578310D10102000000010B4D43F6000000060000000910D13D020B4D43F610804D010DE7CA040E5FD905000000020640010612FF70FD03C001080000000913A54CFF000000040BE879C3000000061011AD020BF3E5760000000A0000000900000001000000030000000A0E601505064001060000000600000006000000020000000010801101000000000DE7CA040E5FD905000000020640010612FF70FD03C001080000000913A54CFF000000040BE879C3000000091011AD020AA6A2760000000A000000090000000100000003000000090E6015050640010612FF70FD03C0010813A510FF0BE879C3000000091011AD020DAED8850000000900000009000000010000000413A54CFF000000040BE879C3000000061011AD020DAED885000000060E9661040AA6A276000000060000000900000002000000010000000312FFACFD0000000303C001080000000900000006000000020000000100000003128A7CFD00000003028001080000000913D7ECFF000000040AD357830000000910D13D020B4D43F610804D010DE7CA0400000009000000060000000010801101000000000DE7CA04000000090E6015050000000600000002000000010000000200000002"
theorem small_4957683_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4957683_left_root small_4957683_left_fuel small_4957683_left_count small_4957683_left_encoded = true := by
  decide +kernel
theorem small_4957683_left_covered : CoveredBy scale carrier boxes small_4957683_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4957683_left_root small_4957683_left_fuel small_4957683_left_count small_4957683_left_encoded small_4957683_left_checked

theorem cover_4957683 : CoveredBy scale carrier boxes root_4957683 := by
  apply coveredBy_split_literal root_4957683 small_4957683_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.root_4958199 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4957683_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.cover_4958199
#print axioms cover_4957683

def root_4957677 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4957677_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4957677_left_fuel : Nat := 1
def small_4957677_left_count : Nat := 1
def small_4957677_left_encoded : String := "00000000"
theorem small_4957677_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4957677_left_root small_4957677_left_fuel small_4957677_left_count small_4957677_left_encoded = true := by
  decide +kernel
theorem small_4957677_left_covered : CoveredBy scale carrier boxes small_4957677_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4957677_left_root small_4957677_left_fuel small_4957677_left_count small_4957677_left_encoded small_4957677_left_checked

theorem cover_4957677 : CoveredBy scale carrier boxes root_4957677 := by
  apply coveredBy_split_literal root_4957677 small_4957677_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.root_4957683 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4957677_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.cover_4957683
#print axioms cover_4957677

def root_4957569 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4957569_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4957569_left_fuel : Nat := 13
def small_4957569_left_count : Nat := 51
def small_4957569_left_encoded : String := "0F34D0F60CFD9C030F34D102000000010CFD9C05000000060F350D040C9A87040F875105000000020780010600000005128A7CFD000000030280010800000005000000060F878D050000000600000002000000020F350D020CFD9C050F34D104000000020C9A87020F87510300000001000000070F878D0300000006000000010F350D040C9A8702000000050F878D030C9A8704000000050F878D050780010600000005128A7CFD000000030280010800000005000000060000000200000001000000020000000100000000"
theorem small_4957569_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4957569_left_root small_4957569_left_fuel small_4957569_left_count small_4957569_left_encoded = true := by
  decide +kernel
theorem small_4957569_left_covered : CoveredBy scale carrier boxes small_4957569_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4957569_left_root small_4957569_left_fuel small_4957569_left_count small_4957569_left_encoded small_4957569_left_checked

theorem cover_4957569 : CoveredBy scale carrier boxes root_4957569 := by
  apply coveredBy_split_literal root_4957569 small_4957569_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.root_4957677 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4957569_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.cover_4957677
#print axioms cover_4957569

def root_4957564 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4957564_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4957564_right_fuel : Nat := 1
def small_4957564_right_count : Nat := 1
def small_4957564_right_encoded : String := "00000004"
theorem small_4957564_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4957564_right_root small_4957564_right_fuel small_4957564_right_count small_4957564_right_encoded = true := by
  decide +kernel
theorem small_4957564_right_covered : CoveredBy scale carrier boxes small_4957564_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4957564_right_root small_4957564_right_fuel small_4957564_right_count small_4957564_right_encoded small_4957564_right_checked

theorem cover_4957564 : CoveredBy scale carrier boxes root_4957564 := by
  apply coveredBy_split_literal root_4957564 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.root_4957569 small_4957564_right_root coord4 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.cover_4957569
  · exact small_4957564_right_covered
#print axioms cover_4957564

def root_4975253 : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4975253 : CoveredBy scale carrier boxes root_4975253 := by
  apply coveredBy_split_literal root_4975253 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1861.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1862.root coord1 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1861.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1862.covered
#print axioms cover_4975253

def root_4975247 : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4975247_left_root : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (13841408)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4975247_left_fuel : Nat := 1
def small_4975247_left_count : Nat := 1
def small_4975247_left_encoded : String := "00000000"
theorem small_4975247_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4975247_left_root small_4975247_left_fuel small_4975247_left_count small_4975247_left_encoded = true := by
  decide +kernel
theorem small_4975247_left_covered : CoveredBy scale carrier boxes small_4975247_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4975247_left_root small_4975247_left_fuel small_4975247_left_count small_4975247_left_encoded small_4975247_left_checked

theorem cover_4975247 : CoveredBy scale carrier boxes root_4975247 := by
  apply coveredBy_split_literal root_4975247 small_4975247_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.root_4975253 coord0 true (13841408)
  · decide +kernel
  · decide +kernel
  · exact small_4975247_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.cover_4975253
#print axioms cover_4975247

def root_4972385 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4972385 : CoveredBy scale carrier boxes root_4972385 := by
  apply coveredBy_split_literal root_4972385 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1860.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.root_4975247 coord0 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1860.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.cover_4975247
#print axioms cover_4972385

def root_4972380 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4972380_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-15552512), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4972380_right_fuel : Nat := 1
def small_4972380_right_count : Nat := 1
def small_4972380_right_encoded : String := "00000004"
theorem small_4972380_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4972380_right_root small_4972380_right_fuel small_4972380_right_count small_4972380_right_encoded = true := by
  decide +kernel
theorem small_4972380_right_covered : CoveredBy scale carrier boxes small_4972380_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4972380_right_root small_4972380_right_fuel small_4972380_right_count small_4972380_right_encoded small_4972380_right_checked

theorem cover_4972380 : CoveredBy scale carrier boxes root_4972380 := by
  apply coveredBy_split_literal root_4972380 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.root_4972385 small_4972380_right_root coord4 true (-15552512)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.cover_4972385
  · exact small_4972380_right_covered
#print axioms cover_4972380

def root_4972379 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4972379_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4972379_right_fuel : Nat := 20
def small_4972379_right_count : Nat := 225
def small_4972379_right_encoded : String := "128A7CFF000000040B4D43F610804D010DE7CA020E5FD903000000010DE7CA040E5FD905000000020640010612FF70FD08C0010811FBE8FF0BF3E576000000091008ED01000000000D412882000000090000000900000004000000090000000312FFACFD0000000308C0010811FBE8FF0BF3E576100929010D4128820EFA110300000001000000090EFA4D030000000600000001000000001008ED01000000000D4128820EFA110300000001000000090EFA4D030D4128840EFA11050000000206E001060000000712C820FD00000003000000060EFA4D050000000600000002000000010000000411FC24FF00000004000000090E6015050640010612FF70FD000000090000000312FFACFD0000000300000006000000020E6015030DE7CA040E5FD905000000020640010612FF70FD08C0010811FBE8FF0DAED883000000060E9661020BF3E576000000061008ED01000000000D4128840EFA11050000000205A00106000000070000000600000006000000010000000411FC24FF00000004000000060000000312FFACFD00000003000000060E6015050000000600000002000000010000000010801101000000000DE7CA020E5FD903000000010DE7CA040E5FD905000000020640010612FF70FD08C0010811FBE8FF0AA6A27610EDAD010D412882000000090EFA4D030D4128840EFA1105000000020000000700000009000000010000000010ED7101000000000D412882000000090EFA4D030D41288400000007000000070000000100000004000000090000000312FFACFD0000000308C0010811FBE8FF0AA6A27610EDAD010D4128820EFA110300000001000000090EFA4D030D4128840EFA1105000000020000000500000005000000010000000010ED7101000000000D4128820EFA110300000001000000050000000500000004000000050E6015050640010612FF70FD08C0010811FBE8FF0000000900000004000000050000000300000005000000020E6015030DE7CA040E5FD905000000020640010612FF70FD08C0010811FBE8FF0DAED8830E962502000000010AA6A27610EDAD010D4128840EFA110500000002000000060000000500000000000000050E9661020AA6A27610EDAD010D4128840EFA110500000002000000070EFA4D0505A001060000000600000005000000020000000010ED7101000000000D412884000000070000000500000001000000040000000500000003000000050000000500000001"
theorem small_4972379_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4972379_right_root small_4972379_right_fuel small_4972379_right_count small_4972379_right_encoded = true := by
  decide +kernel
theorem small_4972379_right_covered : CoveredBy scale carrier boxes small_4972379_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4972379_right_root small_4972379_right_fuel small_4972379_right_count small_4972379_right_encoded small_4972379_right_checked

theorem cover_4972379 : CoveredBy scale carrier boxes root_4972379 := by
  apply coveredBy_split_literal root_4972379 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.root_4972380 small_4972379_right_root coord4 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.cover_4972380
  · exact small_4972379_right_covered
#print axioms cover_4972379

def root_4972374 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4972374_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-15552512), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4972374_right_fuel : Nat := 1
def small_4972374_right_count : Nat := 1
def small_4972374_right_encoded : String := "00000003"
theorem small_4972374_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4972374_right_root small_4972374_right_fuel small_4972374_right_count small_4972374_right_encoded = true := by
  decide +kernel
theorem small_4972374_right_covered : CoveredBy scale carrier boxes small_4972374_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4972374_right_root small_4972374_right_fuel small_4972374_right_count small_4972374_right_encoded small_4972374_right_checked

theorem cover_4972374 : CoveredBy scale carrier boxes root_4972374 := by
  apply coveredBy_split_literal root_4972374 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.root_4972379 small_4972374_right_root coord3 true (-15552512)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.cover_4972379
  · exact small_4972374_right_covered
#print axioms cover_4972374

def root_4972373 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4972373_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4972373_right_fuel : Nat := 23
def small_4972373_right_count : Nat := 271
def small_4972373_right_encoded : String := "128A7CFD0000000307800108128A40FF0B4D43F610804D010DE7CA020E5FD903000000010DE7CA040E5FD9050000000208C0010611FBE8FD0640010812FF70FF0BF3E5760000000A1008ED01000000000D4128820EFA1103000000010000000A0000000A0000000412FFACFF000000040BF3E576100929010D4128820EFA1103000000010D4128840000000A0EFA4D0500000006000000020EFA4D030000000600000001000000001008ED01000000000D4128820EFA1103000000010D4128840000000A0EFA4D050820010612465CFD06E0010800000008000000060000000300000008000000020EFA4D030D4128840000000A0000000A000000010000000311FC24FD000000030000000A0E60150508C0010611FBE8FD0640010812FF70FF0DAED885000000060E9661040BF3E576000000061008ED01000000000D4128820EFA1103000000010820010612465CFD05A001080000000600000006000000030000000600000006000000020000000412FFACFF00000004000000060000000311FC24FD0000000300000006000000020E6015030DE7CA040E5FD9050000000208C0010611FBE8FD0640010812FF70FF0000000A0000000412FFACFF0000000400000006000000030000000A0E6015050000000600000002000000010000000010801101000000000DE7CA020E5FD903000000010DE7CA040E5FD9050000000208C0010611FBE8FD0640010812FF70FF0AA6A27610EDAD010D4128820EFA1103000000010000000A0000000A0000000010ED7101000000000D4128820EFA110300000001000000080000000A0000000412FFACFF000000040AA6A27610EDAD010D4128820EFA1103000000010D41288400000008000000050EFA4D030D4128840000000A00000005000000010000000010ED7101000000000D4128820EFA11030000000100000005000000050000000311FC24FD00000003064001080000000A000000050E60150508C0010611FBE8FD0640010812FF70FF0DAED8850E962504000000020AA6A27610EDAD010D4128820EFA110300000001000000060000000500000000000000050E9661040AA6A27610EDAD010D4128820EFA110300000001000000080EFA4D03082001060000000600000005000000010000000010ED7101000000000D41288200000008000000050000000200000004000000050000000300000005000000020E6015030DE7CA040E5FD9050000000208C0010611FBE8FD0640010812FF70FF0000000A00000004000000050000000300000005000000050000000100000004128A7CFF000000040B4D43F610804D010DE7CA020E5FD903000000010DE7CA040E5FD9050000000208C0010611FBE8FD08C0010811FBE8FF0BF3E5761009290100000006000000001008ED01000000000D4128820EFA1103000000010D4128840EFA1105000000020000000500000005000000050000000400000005000000030000000500000005000000050000000000000005"
theorem small_4972373_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4972373_right_root small_4972373_right_fuel small_4972373_right_count small_4972373_right_encoded = true := by
  decide +kernel
theorem small_4972373_right_covered : CoveredBy scale carrier boxes small_4972373_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4972373_right_root small_4972373_right_fuel small_4972373_right_count small_4972373_right_encoded small_4972373_right_checked

theorem cover_4972373 : CoveredBy scale carrier boxes root_4972373 := by
  apply coveredBy_split_literal root_4972373 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.root_4972374 small_4972373_right_root coord3 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.cover_4972374
  · exact small_4972373_right_covered
#print axioms cover_4972373

def root_4972368 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4972368_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4972368_right_fuel : Nat := 1
def small_4972368_right_count : Nat := 1
def small_4972368_right_encoded : String := "00000002"
theorem small_4972368_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4972368_right_root small_4972368_right_fuel small_4972368_right_count small_4972368_right_encoded = true := by
  decide +kernel
theorem small_4972368_right_covered : CoveredBy scale carrier boxes small_4972368_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4972368_right_root small_4972368_right_fuel small_4972368_right_count small_4972368_right_encoded small_4972368_right_checked

theorem cover_4972368 : CoveredBy scale carrier boxes root_4972368 := by
  apply coveredBy_split_literal root_4972368 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.root_4972373 small_4972368_right_root coord2 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.cover_4972373
  · exact small_4972368_right_covered
#print axioms cover_4972368

def root_4970952 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4970952 : CoveredBy scale carrier boxes root_4970952 := by
  apply coveredBy_split_literal root_4970952 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1859.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.root_4972368 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1859.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.cover_4972368
#print axioms cover_4970952

def root_4970947 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4970947_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4970947_right_fuel : Nat := 1
def small_4970947_right_count : Nat := 1
def small_4970947_right_encoded : String := "00000001"
theorem small_4970947_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4970947_right_root small_4970947_right_fuel small_4970947_right_count small_4970947_right_encoded = true := by
  decide +kernel
theorem small_4970947_right_covered : CoveredBy scale carrier boxes small_4970947_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4970947_right_root small_4970947_right_fuel small_4970947_right_count small_4970947_right_encoded small_4970947_right_checked

theorem cover_4970947 : CoveredBy scale carrier boxes root_4970947 := by
  apply coveredBy_split_literal root_4970947 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.root_4970952 small_4970947_right_root coord1 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.cover_4970952
  · exact small_4970947_right_covered
#print axioms cover_4970947

def root_4968573 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4968573 : CoveredBy scale carrier boxes root_4968573 := by
  apply coveredBy_split_literal root_4968573 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1858.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.root_4970947 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1858.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.cover_4970947
#print axioms cover_4968573

def root_4968567 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4968567_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4968567_left_fuel : Nat := 1
def small_4968567_left_count : Nat := 1
def small_4968567_left_encoded : String := "00000000"
theorem small_4968567_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4968567_left_root small_4968567_left_fuel small_4968567_left_count small_4968567_left_encoded = true := by
  decide +kernel
theorem small_4968567_left_covered : CoveredBy scale carrier boxes small_4968567_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4968567_left_root small_4968567_left_fuel small_4968567_left_count small_4968567_left_encoded small_4968567_left_checked

theorem cover_4968567 : CoveredBy scale carrier boxes root_4968567 := by
  apply coveredBy_split_literal root_4968567 small_4968567_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.root_4968573 coord0 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_4968567_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.cover_4968573
#print axioms cover_4968567

def root_4965783 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4965783 : CoveredBy scale carrier boxes root_4965783 := by
  apply coveredBy_split_literal root_4965783 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1857.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.root_4968567 coord0 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1857.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.cover_4968567
#print axioms cover_4965783

def root_4965778 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4965778_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4965778_right_fuel : Nat := 1
def small_4965778_right_count : Nat := 1
def small_4965778_right_encoded : String := "00000002"
theorem small_4965778_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4965778_right_root small_4965778_right_fuel small_4965778_right_count small_4965778_right_encoded = true := by
  decide +kernel
theorem small_4965778_right_covered : CoveredBy scale carrier boxes small_4965778_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4965778_right_root small_4965778_right_fuel small_4965778_right_count small_4965778_right_encoded small_4965778_right_checked

theorem cover_4965778 : CoveredBy scale carrier boxes root_4965778 := by
  apply coveredBy_split_literal root_4965778 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.root_4965783 small_4965778_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352.cover_4965783
  · exact small_4965778_right_covered
#print axioms cover_4965778

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0352
