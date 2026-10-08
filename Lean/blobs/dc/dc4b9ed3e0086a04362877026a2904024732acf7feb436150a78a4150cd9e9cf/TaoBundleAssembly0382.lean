import TaoBundleAssembly0381
import TaoBundleChunkBatch0507
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382
def root_5405886 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5405886_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5405886_left_fuel : Nat := 20
def small_5405886_left_count : Nat := 273
def small_5405886_left_encoded : String := "0F878CFD000000030280010013D7B0F7067ECE8512EA58FA022A457F13E201080B4D43F810804CF9000000010DE7C9FC0000000A0E5FD8FD0140010013F5D8F70000000A0000000013F614F7000000000569AC4500000009134110FA00000002033F67BF000000090000000A00000003108010F90DE7C9FC000000090E5FD8FD0140010013F5D8F70569AC451340D4FA033F67BF000000070000000A00000002000000080000000013F614F7000000000569AC4500000009134110FA00000002033F67BF0000000913BBF508000000040AA6A27810EDACF900000001000000090000000800000003000000010000000413E1C508000000040B4D43F810804CF9000000010000000A108010F90DE7C9FC0E6014FD000000030000000A0E5FD8FD0140010013F5D8F70569AC4500000006134110FA00000002000000060000000013F614F7000000000569AC450000000A134110FA000000020115233F13F895080AA6A2780000000A00000008000000040000000500000003000000010000000212EA94FA00000002022A457F13E201080B4D43F810804CF9000000010DE7C9FC0E6014FD000000030140010013F5D8F70793F0C50000000A000000050000000013F614F7000000000793F0C500000009000000050E5FD8FD0140010013F5D8F70793F0C500000007000000080000000013F614F7000000000793F0C5128220FA033F67BF13BC31080BF3E578100928F90000000100000007000000090000000400000005000000020000000500000003108010F90DE7C9FC000000080E5FD8FD0000000800000003000000010000000413E1C508000000040B4D43F810804CF90000000100000005000000050000000013D7ECF700000000067ECE8512EA58FA022A457F13E201080B4D43F810804CF90000000100000009000000090000000413E1C508000000040B4D43F810804CF9000000010DE7C9FC0000000A0E5FD8FD0000000A00000003108010F90DE7C9FC0E6014FD00000003000000090E5FD8FD03C0010013A510F70569AC450000000A134110FA000000020115233F13F895080AA6A2780000000A0000000900000004000000050000000013A54CF7000000000569AC4500000009134110FA000000020115233F000000090000000500000003000000010000000212EA94FA00000002022A457F13E201080B4D43F810804CF9000000010DE7C9FC0E6014FD00000003000000050E5FD8FD03C0010013A510F70793F0C5128220FA033F67BF000000090000000500000002000000050000000013A54CF7000000000793F0C5000000090000000500000003108010F90DE7C9FC0E6014FD00000003000000090E5FD8FD03C0010013A510F70793F0C5128220FA033F67BF0000000913BBF508000000040AA6A27810EDACF900000001000000090000000800000002000000080000000013A54CF7000000000793F0C50000000912825CFA00000002033F67BF000000090000000500000003000000010000000400000005"
theorem small_5405886_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5405886_left_root small_5405886_left_fuel small_5405886_left_count small_5405886_left_encoded = true := by
  decide +kernel
theorem small_5405886_left_covered : CoveredBy scale carrier boxes small_5405886_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5405886_left_root small_5405886_left_fuel small_5405886_left_count small_5405886_left_encoded small_5405886_left_checked

theorem cover_5405886 : CoveredBy scale carrier boxes root_5405886 := by
  apply coveredBy_split_literal root_5405886 small_5405886_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5406460 coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5405886_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5406460
#print axioms cover_5405886

def root_5405881 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5405881_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5405881_right_fuel : Nat := 1
def small_5405881_right_count : Nat := 1
def small_5405881_right_encoded : String := "00000001"
theorem small_5405881_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5405881_right_root small_5405881_right_fuel small_5405881_right_count small_5405881_right_encoded = true := by
  decide +kernel
theorem small_5405881_right_covered : CoveredBy scale carrier boxes small_5405881_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5405881_right_root small_5405881_right_fuel small_5405881_right_count small_5405881_right_encoded small_5405881_right_checked

theorem cover_5405881 : CoveredBy scale carrier boxes root_5405881 := by
  apply coveredBy_split_literal root_5405881 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.root_5405886 small_5405881_right_root coord1 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.cover_5405886
  · exact small_5405881_right_covered
#print axioms cover_5405881

def root_5405499 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5405499_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5405499_left_fuel : Nat := 19
def small_5405499_left_count : Nat := 181
def small_5405499_left_encoded : String := "0F878CF9000000010C9A86FC0F878CFD000000030280010013D7B0F7067ECE8512EA58FA0000000A0000000212EA94FA00000002022A457F13E201080DE7C9F80E6014F900000001000000050E5FD8F90DE7C9FC0E6014FD00000003000000050E5FD8FD014001000000000713F614F7000000000793F0C50000000A00000005000000030000000100000004000000050000000013D7ECF700000000067ECE8512EA58FA022A457F13E201080DE7C9F80000000A0E5FD8F90000000900000001000000040000000A0000000212EA94FA00000002022A457F13E201080DE7C9F80E6014F900000001000000050E5FD8F90DE7C9FC0E6014FD0000000300000005000000050000000100000004000000050F8750FD0280010013D7B0F7067ECE8512EA58FA022A457F0000000713E1C508000000040DE7C9F8000000070E5FD8F90B4D43FC0000000A00000007000000010000000212EA94FA00000002022A457F0000000713E1C508000000040DE7C9F80E6014F90000000100000005000000050000000013D7ECF700000000067ECE8512EA58FA022A457F13E201080DE7C9F80E6014F900000001000000070E5FD8F90B4D43FC10804CFD0000000303C001000000000713A54CF7000000000569AC45000000090000000600000007000000010000000413E1C508000000040DE7C9F80E6014F9000000010000000A0E5FD8F90B4D43FC10804CFD000000030000000A108010FD03C001000000000713A54CF7000000000569AC4500000007134110FA000000020115233F000000060000000500000003000000010000000212EA94FA00000002022A457F13E201080DE7C9F80E6014F9000000010B4D43FC00000006000000060E5FD8F90B4D43FC10804CFD0000000303C0010013A510F70793F0C500000007000000050000000013A54CF7000000000793F0C50000000600000005108010FD03C0010000000007000000060000000300000001000000040000000500000003"
theorem small_5405499_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5405499_left_root small_5405499_left_fuel small_5405499_left_count small_5405499_left_encoded = true := by
  decide +kernel
theorem small_5405499_left_covered : CoveredBy scale carrier boxes small_5405499_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5405499_left_root small_5405499_left_fuel small_5405499_left_count small_5405499_left_encoded small_5405499_left_checked

theorem cover_5405499 : CoveredBy scale carrier boxes root_5405499 := by
  apply coveredBy_split_literal root_5405499 small_5405499_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.root_5405881 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5405499_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.cover_5405881
#print axioms cover_5405499

def root_5405493 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5405493_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5405493_left_fuel : Nat := 1
def small_5405493_left_count : Nat := 1
def small_5405493_left_encoded : String := "00000004"
theorem small_5405493_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5405493_left_root small_5405493_left_fuel small_5405493_left_count small_5405493_left_encoded = true := by
  decide +kernel
theorem small_5405493_left_covered : CoveredBy scale carrier boxes small_5405493_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5405493_left_root small_5405493_left_fuel small_5405493_left_count small_5405493_left_encoded small_5405493_left_checked

theorem cover_5405493 : CoveredBy scale carrier boxes root_5405493 := by
  apply coveredBy_split_literal root_5405493 small_5405493_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.root_5405499 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5405493_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.cover_5405499
#print axioms cover_5405493

def root_5404927 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404927_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404927_left_fuel : Nat := 21
def small_5404927_left_count : Nat := 265
def small_5404927_left_encoded : String := "1386AD080C9A86F80F878CF9000000010C9A86FC0F878CFD000000030280010013D7B0F7067ECE8512EA58FA067ECE7F0000000912EA5908000000040DE7C9F80E6014F900000001000000070E5FD8F900000009000000010000000212EA94FA00000002067ECE7F12EA95080DE7C9F80E6014F900000001000000070E5FD8F90DE7C9FC0000000900000007000000010000000412EA5908000000040DE7C9F80E6014F9000000010DE7C9FC0E6014FD000000030000000A000000070E5FD8F90DE7C9FC0E6014FD000000030140010013F5D8F70793F0C50000000712825CFA000000020569AC3F000000070000000500000000000000090E5FD8FD0000000700000003000000010000000013D7ECF700000000067ECE850000000912EA94FA00000002067ECE7F0000000912EA5908000000040DE7C9F80E6014F9000000010DE7C9FC000000090E5FD8FD00000006000000030E5FD8F900000009000000010F8750FD028001000000000713D7ECF700000000067ECE8512EA58FA067ECE7F00000006000000070000000212EA94FA00000002067ECE7F0000000612EA5908000000040DE7C9F8000000060E5FD8F90000000600000001000000030F8750F90C9A86FC0F878CFD000000030280010013D7B0F7067ECE8512EA58FA067ECE7F0000000912EA5908000000040B4D43F810804CF90000000100000009000000090000000212EA94FA00000002067ECE7F12EA95080B4D43F810804CF90000000100000009000000090000000412EA5908000000040B4D43F810804CF9000000010DE7C9FC0E6014FD000000030140010000000008000000090E5FD8FD014001000000000713F614F7000000000793F0C5000000070000000800000003108010F90DE7C9FC000000080E5FD8FD0000000800000003000000010000000013D7ECF700000000067ECE850000000912EA94FA00000002067ECE7F0000000912EA5908000000040B4D43F810804CF90000000100000009000000090F8750FD0280010013D7B0F7067ECE850000000712EA94FA00000002000000070000000013D7ECF700000000067ECE8512EA58FA067ECE7F0000000512EA5908000000040B4D43F810804CF9000000010B4D43FC0000000900000007108010F900000005000000010000000212EA94FA00000002067ECE7F12EA95080B4D43F800000006108010F900000005000000010000000412EA5908000000040B4D43F810804CF9000000010B4D43FC10804CFD0000000303C0010013A510F7000000070000000000000006108010FD0000000600000003108010F90B4D43FC10804CFD0000000303C0010013A510F70793F0C500000009000000080000000013A54CF7000000000793F0C50000000912825CFA0000000200000009108010FD03C001000000000713A54CF7000000000793F0C500000005000000060000000300000001000000030000000100000004"
theorem small_5404927_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5404927_left_root small_5404927_left_fuel small_5404927_left_count small_5404927_left_encoded = true := by
  decide +kernel
theorem small_5404927_left_covered : CoveredBy scale carrier boxes small_5404927_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5404927_left_root small_5404927_left_fuel small_5404927_left_count small_5404927_left_encoded small_5404927_left_checked

theorem cover_5404927 : CoveredBy scale carrier boxes root_5404927 := by
  apply coveredBy_split_literal root_5404927 small_5404927_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.root_5405493 coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5404927_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.cover_5405493
#print axioms cover_5404927

def root_5404921 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404921_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404921_left_fuel : Nat := 1
def small_5404921_left_count : Nat := 1
def small_5404921_left_encoded : String := "00000003"
theorem small_5404921_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5404921_left_root small_5404921_left_fuel small_5404921_left_count small_5404921_left_encoded = true := by
  decide +kernel
theorem small_5404921_left_covered : CoveredBy scale carrier boxes small_5404921_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5404921_left_root small_5404921_left_fuel small_5404921_left_count small_5404921_left_encoded small_5404921_left_checked

theorem cover_5404921 : CoveredBy scale carrier boxes root_5404921 := by
  apply coveredBy_split_literal root_5404921 small_5404921_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.root_5404927 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5404921_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.cover_5404927
#print axioms cover_5404921

def root_5404920 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404920_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404920_right_fuel : Nat := 14
def small_5404920_right_count : Nat := 55
def small_5404920_right_encoded : String := "0F34D0FC045489FF1386AD080C9A86F80F878CF9000000010280010013D7B0F7067ECE850000000912EA94FA000000020AD3577D10D13CFC00000003067ECE7F0000000912EA590800000004000000090000000900000000000000090F8750F900000009000000010000000413867108000000040C9A86F80F878CF900000001028001000000000A0000000A0F8750F90280010013D7B0F7067ECE850000000A12EA94FA000000020AD3577D10D13CFC0000000300000005000000050000000013D7ECF700000000067ECE8500000009000000050000000100000003"
theorem small_5404920_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5404920_right_root small_5404920_right_fuel small_5404920_right_count small_5404920_right_encoded = true := by
  decide +kernel
theorem small_5404920_right_covered : CoveredBy scale carrier boxes small_5404920_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5404920_right_root small_5404920_right_fuel small_5404920_right_count small_5404920_right_encoded small_5404920_right_checked

theorem cover_5404920 : CoveredBy scale carrier boxes root_5404920 := by
  apply coveredBy_split_literal root_5404920 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.root_5404921 small_5404920_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.cover_5404921
  · exact small_5404920_right_covered
#print axioms cover_5404920

def root_5404914 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404914_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404914_left_fuel : Nat := 1
def small_5404914_left_count : Nat := 1
def small_5404914_left_encoded : String := "00000002"
theorem small_5404914_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5404914_left_root small_5404914_left_fuel small_5404914_left_count small_5404914_left_encoded = true := by
  decide +kernel
theorem small_5404914_left_covered : CoveredBy scale carrier boxes small_5404914_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5404914_left_root small_5404914_left_fuel small_5404914_left_count small_5404914_left_encoded small_5404914_left_checked

theorem cover_5404914 : CoveredBy scale carrier boxes root_5404914 := by
  apply coveredBy_split_literal root_5404914 small_5404914_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.root_5404920 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5404914_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.cover_5404920
#print axioms cover_5404914

def root_5404356 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404356_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404356_left_fuel : Nat := 32
def small_5404356_left_count : Nat := 261
def small_5404356_left_encoded : String := "138670FA0CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F80F878CF9000000010C9A86FC000000090F8750FD00000007000000030F8750F90C9A86FC000000090F8750FD0000000500000003000000010000000413867108000000040C9A86F80F878CF9000000010C9A86FC0F878CFD000000030000000A0F8750FD0280010013D7B0F7022A458500000007000000070000000013D7ECF700000000022A45850000000A13E200FA00000002022A457F13E201080DE7C9F80000000A0E5FD8F90B4D43FC000000090000000700000001000000040000000A000000030F8750F90C9A86FC0F878CFD000000030280010013D7B0F7022A45850000000A13E200FA00000002022A457F13E201080B4D43F80000000A00000009000000040000000A0000000013D7ECF700000000022A45850000000913E200FA00000002022A457F000000090000000A0F8750FD0280010013D7B0F7022A458513E1C4FA022A457F0000000513E1C508000000040000000A0000000213E200FA00000002022A457F13E201080B4D43F810804CF90000000100000007108010F900000005000000010000000413E1C508000000040B4D43F810804CF9000000010B4D43FC0000000A00000007108010F90B4D43FC10804CFD00000003014001000000000A0000000A108010FD014001000000000713F614F700000000033F67C5000000050000000700000003000000010000000013D7ECF700000000022A458513E1C4FA022A457F0000000513E1C508000000040B4D43F80000000A108010F900000005000000010000000213E200FA00000002022A457F13E201080B4D43F810804CF9000000010B4D43FC00000009108010FD0000000500000003108010F900000005000000010000000413E1C508000000040B4D43F810804CF9000000010B4D43FC0000000A108010FD03C0010013A510F70000000A0000000013A54CF700000000033F67C50000000A13BC30FA000000020115233F13F895080BF3E5780000000A00000009000000040000000A00000003108010F90B4D43FC10804CFD0000000303C0010013A510F70000000A0000000013A54CF70000000000000009108010FD03C0010013A510F7033F67C50000000513BC30FA000000020115233F0000000513F85908000000040AA6A27810EDACF9000000010000000A10ED70F90AA6A27C0000000A10ED70FD0000000500000003000000010000000013A54CF700000000033F67C50000000513BC30FA000000020115233F0000000513F85908000000040AA6A27810EDACF9000000010000000A10ED70F90AA6A27C10EDACFD000000030000000A10ED70FD046001001383DCF70000000500000000000000050000000300000001000000030000000100000003000000010F34D0FC045489FF0000000913867108000000040000000A0000000300000002"
theorem small_5404356_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5404356_left_root small_5404356_left_fuel small_5404356_left_count small_5404356_left_encoded = true := by
  decide +kernel
theorem small_5404356_left_covered : CoveredBy scale carrier boxes small_5404356_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5404356_left_root small_5404356_left_fuel small_5404356_left_count small_5404356_left_encoded small_5404356_left_checked

theorem cover_5404356 : CoveredBy scale carrier boxes root_5404356 := by
  apply coveredBy_split_literal root_5404356 small_5404356_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.root_5404914 coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5404356_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.cover_5404914
#print axioms cover_5404356

def root_5404350 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404350_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404350_left_fuel : Nat := 1
def small_5404350_left_count : Nat := 1
def small_5404350_left_encoded : String := "00000001"
theorem small_5404350_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5404350_left_root small_5404350_left_fuel small_5404350_left_count small_5404350_left_encoded = true := by
  decide +kernel
theorem small_5404350_left_covered : CoveredBy scale carrier boxes small_5404350_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5404350_left_root small_5404350_left_fuel small_5404350_left_count small_5404350_left_encoded small_5404350_left_checked

theorem cover_5404350 : CoveredBy scale carrier boxes root_5404350 := by
  apply coveredBy_split_literal root_5404350 small_5404350_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.root_5404356 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5404350_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.cover_5404356
#print axioms cover_5404350

def root_5404349 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404349_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404349_right_fuel : Nat := 17
def small_5404349_right_count : Nat := 91
def small_5404349_right_encoded : String := "0F34D0F804548A05138670FA0CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FC0F878CFD000000030000000A000000070000000413867108000000040000000A0000000A000000021386ACFA000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FC0F878CFD000000030280010013D7B0F70AD3577910D13CF800000001067ECE850000000712EA94FA00000002067ECE7F0000000600000007000000070000000013D7ECF7000000000AD3577910D13CF800000001067ECE850000000900000006000000060F8750FD028001000000000700000006000000030000000413867108000000040C9A86FC0F878CFD00000003028001000000000A0000000A0F8750FD028001000000000713D7ECF7000000000AD3577910D13CF800000001067ECE8512EA58FA00000007000000020000000500000005000000030F34D0FC045489FF1386AD08028001000000000A00000009000000040000000A0000000300000001"
theorem small_5404349_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5404349_right_root small_5404349_right_fuel small_5404349_right_count small_5404349_right_encoded = true := by
  decide +kernel
theorem small_5404349_right_covered : CoveredBy scale carrier boxes small_5404349_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5404349_right_root small_5404349_right_fuel small_5404349_right_count small_5404349_right_encoded small_5404349_right_checked

theorem cover_5404349 : CoveredBy scale carrier boxes root_5404349 := by
  apply coveredBy_split_literal root_5404349 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.root_5404350 small_5404349_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.cover_5404350
  · exact small_5404349_right_covered
#print axioms cover_5404349

def root_5404344 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404344_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404344_right_fuel : Nat := 1
def small_5404344_right_count : Nat := 1
def small_5404344_right_encoded : String := "00000000"
theorem small_5404344_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5404344_right_root small_5404344_right_fuel small_5404344_right_count small_5404344_right_encoded = true := by
  decide +kernel
theorem small_5404344_right_covered : CoveredBy scale carrier boxes small_5404344_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5404344_right_root small_5404344_right_fuel small_5404344_right_count small_5404344_right_encoded small_5404344_right_checked

theorem cover_5404344 : CoveredBy scale carrier boxes root_5404344 := by
  apply coveredBy_split_literal root_5404344 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.root_5404349 small_5404344_right_root coord0 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.cover_5404349
  · exact small_5404344_right_covered
#print axioms cover_5404344

def root_5404343 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5404343 : CoveredBy scale carrier boxes root_5404343 := by
  apply coveredBy_split_literal root_5404343 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.root_5404344 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2025.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.cover_5404344
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2025.covered
#print axioms cover_5404343

def root_5404337 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404337_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404337_left_fuel : Nat := 1
def small_5404337_left_count : Nat := 1
def small_5404337_left_encoded : String := "00000004"
theorem small_5404337_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5404337_left_root small_5404337_left_fuel small_5404337_left_count small_5404337_left_encoded = true := by
  decide +kernel
theorem small_5404337_left_covered : CoveredBy scale carrier boxes small_5404337_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5404337_left_root small_5404337_left_fuel small_5404337_left_count small_5404337_left_encoded small_5404337_left_checked

theorem cover_5404337 : CoveredBy scale carrier boxes root_5404337 := by
  apply coveredBy_split_literal root_5404337 small_5404337_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.root_5404343 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5404337_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.cover_5404343
#print axioms cover_5404337

def root_5403945 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403945_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403945_left_fuel : Nat := 20
def small_5403945_left_count : Nat := 179
def small_5403945_left_encoded : String := "12073D0805000100135D44F70CFD9BF90F350CF80000000104548A05138670FA0CFD9BFD000000050F34D0FC0CFD9BFF000000050F34D108000000040000000900000003000000021386ACFA000000020CFD9BFD0F350CFC000000030CFD9BFF000000050F34D108000000040C9A86F80F878CF9000000010C9A86FC0F878CFD000000030280010013D7B0F7067ECE850000000712EA94FA000000020000000700000000000000090F8750FD00000007000000030F8750F90C9A86FC0F878CFD000000030280010013D7B0F70000000900000000000000090F8750FD0000000500000003000000010F34D0FC0CFD9BFF0F350D080C9A86F80F878CF9000000010000000900000009000000040F34D1080000000400000009000000030F34D0F804548A05138670FA0CFD9BFD0F350CFC000000030CFD9BFF00000005000000070F34D0FC0000000900000003000000021386ACFA000000020CFD9BFD0F350CFC000000030CFD9BFF000000060F34D108000000040C9A86FC00000006000000060F34D0FC0CFD9BFF000000090F34D1080000000400000009000000030000000100000000135D80F7000000000CFD9BF90F350CF80000000104548A05138670FA0CFD9BFD0F350CFC000000030CFD9BFF000000050F34D10800000004000000090F34D0FC0CFD9BFF000000090F34D108000000040000000900000003000000021386ACFA000000020CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000006000000040F34D108000000040C9A86F80F878CF900000001000000060F8750F90C9A86FC000000090F8750FD0000000600000003000000010F34D0FC0CFD9BFF0F350D080C9A86F80000000600000009000000040F34D1080000000400000009000000030F34D0F804548A05138670FA0CFD9BFD000000090F34D0FC0000000900000003000000021386ACFA000000020CFD9BFD000000060F34D0FC00000009000000030000000100000004"
theorem small_5403945_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5403945_left_root small_5403945_left_fuel small_5403945_left_count small_5403945_left_encoded = true := by
  decide +kernel
theorem small_5403945_left_covered : CoveredBy scale carrier boxes small_5403945_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5403945_left_root small_5403945_left_fuel small_5403945_left_count small_5403945_left_encoded small_5403945_left_checked

theorem cover_5403945 : CoveredBy scale carrier boxes root_5403945 := by
  apply coveredBy_split_literal root_5403945 small_5403945_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.root_5404337 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5403945_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.cover_5404337
#print axioms cover_5403945

def root_5403939 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403939_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403939_left_fuel : Nat := 1
def small_5403939_left_count : Nat := 1
def small_5403939_left_encoded : String := "00000003"
theorem small_5403939_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5403939_left_root small_5403939_left_fuel small_5403939_left_count small_5403939_left_encoded = true := by
  decide +kernel
theorem small_5403939_left_covered : CoveredBy scale carrier boxes small_5403939_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5403939_left_root small_5403939_left_fuel small_5403939_left_count small_5403939_left_encoded small_5403939_left_checked

theorem cover_5403939 : CoveredBy scale carrier boxes root_5403939 := by
  apply coveredBy_split_literal root_5403939 small_5403939_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.root_5403945 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5403939_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.cover_5403945
#print axioms cover_5403939

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382
