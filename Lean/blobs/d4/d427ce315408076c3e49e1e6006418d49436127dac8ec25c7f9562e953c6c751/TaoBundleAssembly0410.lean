import TaoBundleAssembly0409
import TaoBundleChunkBatch0555
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410
def root_5898915 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5898915_left_root : ZRayBox := fun j => (#[⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5898915_left_fuel : Nat := 21
def small_5898915_left_count : Nat := 225
def small_5898915_left_encoded : String := "13D7B0F7067ECE8312EA58F8022A457D13E201060B4D43FA10804CFB0000000200000008108010FB0B4D43FE10804CFF00000004014001000000000813F614F7000000000569AC431340D4F8033F67BD0000000513BBF506000000030000000800000001134110F800000001033F67BD0000000813BBF506000000030AA6A27A10EDACFB00000002000000080000000700000008000000020000000313E1C506000000030B4D43FA10804CFB000000020B4D43FE10804CFF00000004014001000000000813F614F7000000000569AC4300000009134110F8000000010115233D000000080000000500000008108010FB0B4D43FE10804CFF000000040140010013F5D8F70569AC431340D4F80115233D000000080000000600000001134110F8000000010115233D00000007000000060000000013F614F7000000000569AC431340D4F80115233D13F895060AA6A27A10EDACFB000000020000000910ED70FB0BF3E57E100928FF00000004000000091008ECFF0000000800000004000000020000000313F85906000000030AA6A27A0000000910ED70FB000000060000000200000001134110F8000000010115233D13F895060AA6A27A10EDACFB000000020BF3E57E100928FF0000000401E0010000000007000000090000000810ED70FB00000007000000020000000313F85906000000030AA6A27A10EDACFB000000020BF3E57E000000091008ECFF01E0010000000007000000090000000410ED70FB0000000600000002108010FF014001000000000813F614F7000000000569AC4300000008134110F8000000010000000800000004000000020000000112EA94F800000001022A457D13E201060B4D43FA10804CFB000000020B4D43FE10804CFF000000040000000800000008108010FB0B4D43FE10804CFF00000004014001000000000713F614F7000000000793F0C3128220F800000007000000010000000700000008000000020000000313E1C506000000030B4D43FA10804CFB000000020B4D43FE10804CFF0000000400000005108010FF0000000800000004108010FB0B4D43FE10804CFF00000004014001000000000713F614F7000000000793F0C3128220F80115233D00000007000000050000000100000005108010FF014001000000000713F614F7000000000793F0C3128220F80115233D0000000813F85906000000030AA6A27A00000008000000070000000100000007000000040000000200000000"
theorem small_5898915_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5898915_left_root small_5898915_left_fuel small_5898915_left_count small_5898915_left_encoded = true := by
  decide +kernel
theorem small_5898915_left_covered : CoveredBy scale carrier boxes small_5898915_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5898915_left_root small_5898915_left_fuel small_5898915_left_count small_5898915_left_encoded small_5898915_left_checked

theorem cover_5898915 : CoveredBy scale carrier boxes root_5898915 := by
  apply coveredBy_split_literal root_5898915 small_5898915_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.root_5899393 coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_5898915_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.cover_5899393
#print axioms cover_5898915

def root_5898910 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5898910_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5898910_right_fuel : Nat := 1
def small_5898910_right_count : Nat := 1
def small_5898910_right_encoded : String := "00000004"
theorem small_5898910_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5898910_right_root small_5898910_right_fuel small_5898910_right_count small_5898910_right_encoded = true := by
  decide +kernel
theorem small_5898910_right_covered : CoveredBy scale carrier boxes small_5898910_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5898910_right_root small_5898910_right_fuel small_5898910_right_count small_5898910_right_encoded small_5898910_right_checked

theorem cover_5898910 : CoveredBy scale carrier boxes root_5898910 := by
  apply coveredBy_split_literal root_5898910 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.root_5898915 small_5898910_right_root coord4 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.cover_5898915
  · exact small_5898910_right_covered
#print axioms cover_5898910

def root_5898336 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5898336_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5898336_left_fuel : Nat := 20
def small_5898336_left_count : Nat := 273
def small_5898336_left_encoded : String := "0F878CFF000000040280010013D7B0F7067ECE8312EA58F8022A457D13E201060B4D43FA10804CFB000000020DE7C9FE000000090E5FD8FF0140010013F5D8F7000000090000000013F614F7000000000569AC4300000009134110F800000001033F67BD0000000A0000000900000004108010FB0DE7C9FE0000000A0E5FD8FF0140010013F5D8F70569AC431340D4F8033F67BD000000080000000900000001000000070000000013F614F7000000000569AC430000000A134110F800000001033F67BD0000000A13BBF506000000030AA6A27A10EDACFB000000020000000A0000000700000004000000020000000313E1C506000000030B4D43FA10804CFB0000000200000009108010FB0DE7C9FE0E6014FF00000004000000090E5FD8FF0140010013F5D8F70569AC4300000006134110F800000001000000060000000013F614F7000000000569AC4300000009134110F8000000010115233D13F895060AA6A27A0000000900000007000000030000000500000004000000020000000112EA94F800000001022A457D13E201060B4D43FA10804CFB000000020DE7C9FE0E6014FF000000040140010013F5D8F70793F0C300000009000000050000000013F614F7000000000793F0C300000009000000050E5FD8FF0140010013F5D8F70793F0C300000008000000070000000013F614F7000000000793F0C3128220F8033F67BD13BC31060BF3E57A100928FB00000002000000080000000A0000000300000005000000010000000500000004108010FB0DE7C9FE000000070E5FD8FF0000000700000004000000020000000313E1C506000000030B4D43FA10804CFB0000000200000005000000050000000013D7ECF700000000067ECE8312EA58F8022A457D13E201060B4D43FA10804CFB000000020000000A0000000A0000000313E1C506000000030B4D43FA10804CFB000000020DE7C9FE000000090E5FD8FF0000000900000004108010FB0DE7C9FE0E6014FF00000004000000090E5FD8FF03C0010013A510F70569AC4300000009134110F8000000010115233D13F895060AA6A27A000000090000000A00000003000000050000000013A54CF7000000000569AC4300000009134110F8000000010115233D0000000A0000000500000004000000020000000112EA94F800000001022A457D13E201060B4D43FA10804CFB000000020DE7C9FE0E6014FF00000004000000050E5FD8FF03C0010013A510F70793F0C3128220F8033F67BD0000000A0000000500000001000000050000000013A54CF7000000000793F0C30000000A0000000500000004108010FB0DE7C9FE0E6014FF000000040000000A0E5FD8FF03C0010013A510F70793F0C3128220F8033F67BD0000000A13BBF506000000030AA6A27A10EDACFB000000020000000A0000000700000001000000070000000013A54CF7000000000793F0C30000000A12825CF800000001033F67BD0000000A0000000500000004000000020000000300000005"
theorem small_5898336_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5898336_left_root small_5898336_left_fuel small_5898336_left_count small_5898336_left_encoded = true := by
  decide +kernel
theorem small_5898336_left_covered : CoveredBy scale carrier boxes small_5898336_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5898336_left_root small_5898336_left_fuel small_5898336_left_count small_5898336_left_encoded small_5898336_left_checked

theorem cover_5898336 : CoveredBy scale carrier boxes root_5898336 := by
  apply coveredBy_split_literal root_5898336 small_5898336_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.root_5898910 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5898336_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.cover_5898910
#print axioms cover_5898336

def root_5898331 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5898331_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5898331_right_fuel : Nat := 1
def small_5898331_right_count : Nat := 1
def small_5898331_right_encoded : String := "00000002"
theorem small_5898331_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5898331_right_root small_5898331_right_fuel small_5898331_right_count small_5898331_right_encoded = true := by
  decide +kernel
theorem small_5898331_right_covered : CoveredBy scale carrier boxes small_5898331_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5898331_right_root small_5898331_right_fuel small_5898331_right_count small_5898331_right_encoded small_5898331_right_checked

theorem cover_5898331 : CoveredBy scale carrier boxes root_5898331 := by
  apply coveredBy_split_literal root_5898331 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.root_5898336 small_5898331_right_root coord2 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.cover_5898336
  · exact small_5898331_right_covered
#print axioms cover_5898331

def root_5897949 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897949_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897949_left_fuel : Nat := 19
def small_5897949_left_count : Nat := 181
def small_5897949_left_encoded : String := "0F878CFB000000020C9A86FE0F878CFF000000040280010013D7B0F7067ECE8312EA58F8000000090000000112EA94F800000001022A457D13E201060DE7C9FA0E6014FB00000002000000050E5FD8FB0DE7C9FE0E6014FF00000004000000050E5FD8FF014001000000000813F614F7000000000793F0C30000000900000005000000040000000200000003000000050000000013D7ECF700000000067ECE8312EA58F8022A457D13E201060DE7C9FA000000090E5FD8FB000000090000000200000003000000090000000112EA94F800000001022A457D13E201060DE7C9FA0E6014FB00000002000000050E5FD8FB0DE7C9FE0E6014FF0000000400000005000000050000000200000003000000050F8750FF0280010013D7B0F7067ECE8312EA58F8022A457D0000000813E1C506000000030DE7C9FA000000080E5FD8FB0B4D43FE0000000900000008000000020000000112EA94F800000001022A457D0000000813E1C506000000030DE7C9FA0E6014FB0000000200000005000000050000000013D7ECF700000000067ECE8312EA58F8022A457D13E201060DE7C9FA0E6014FB00000002000000080E5FD8FB0B4D43FE10804CFF0000000403C001000000000813A54CF7000000000569AC43000000090000000600000008000000020000000313E1C506000000030DE7C9FA0E6014FB00000002000000090E5FD8FB0B4D43FE10804CFF0000000400000009108010FF03C001000000000813A54CF7000000000569AC4300000008134110F8000000010115233D000000060000000500000004000000020000000112EA94F800000001022A457D13E201060DE7C9FA0E6014FB000000020B4D43FE00000006000000060E5FD8FB0B4D43FE10804CFF0000000403C0010013A510F70793F0C300000008000000050000000013A54CF7000000000793F0C30000000600000005108010FF03C0010000000008000000060000000400000002000000030000000500000004"
theorem small_5897949_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5897949_left_root small_5897949_left_fuel small_5897949_left_count small_5897949_left_encoded = true := by
  decide +kernel
theorem small_5897949_left_covered : CoveredBy scale carrier boxes small_5897949_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5897949_left_root small_5897949_left_fuel small_5897949_left_count small_5897949_left_encoded small_5897949_left_checked

theorem cover_5897949 : CoveredBy scale carrier boxes root_5897949 := by
  apply coveredBy_split_literal root_5897949 small_5897949_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.root_5898331 coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5897949_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.cover_5898331
#print axioms cover_5897949

def root_5897943 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897943_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897943_left_fuel : Nat := 1
def small_5897943_left_count : Nat := 1
def small_5897943_left_encoded : String := "00000004"
theorem small_5897943_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5897943_left_root small_5897943_left_fuel small_5897943_left_count small_5897943_left_encoded = true := by
  decide +kernel
theorem small_5897943_left_covered : CoveredBy scale carrier boxes small_5897943_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5897943_left_root small_5897943_left_fuel small_5897943_left_count small_5897943_left_encoded small_5897943_left_checked

theorem cover_5897943 : CoveredBy scale carrier boxes root_5897943 := by
  apply coveredBy_split_literal root_5897943 small_5897943_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.root_5897949 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5897943_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.cover_5897949
#print axioms cover_5897943

def root_5897942 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897942_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897942_right_fuel : Nat := 12
def small_5897942_right_count : Nat := 31
def small_5897942_right_encoded : String := "0F34D0FE0C9A86FA0F878CFB000000020280010000000009000000090F8750FB0280010013D7B0F7067ECE830000000912EA94F800000001022A457D13E201060AD3577F10D13CFE00000004000000050000000500000003000000050000000013D7ECF700000000067ECE830000000A000000050000000200000004"
theorem small_5897942_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5897942_right_root small_5897942_right_fuel small_5897942_right_count small_5897942_right_encoded = true := by
  decide +kernel
theorem small_5897942_right_covered : CoveredBy scale carrier boxes small_5897942_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5897942_right_root small_5897942_right_fuel small_5897942_right_count small_5897942_right_encoded small_5897942_right_checked

theorem cover_5897942 : CoveredBy scale carrier boxes root_5897942 := by
  apply coveredBy_split_literal root_5897942 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.root_5897943 small_5897942_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.cover_5897943
  · exact small_5897942_right_covered
#print axioms cover_5897942

def root_5897936 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897936_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897936_left_fuel : Nat := 1
def small_5897936_left_count : Nat := 1
def small_5897936_left_encoded : String := "00000003"
theorem small_5897936_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5897936_left_root small_5897936_left_fuel small_5897936_left_count small_5897936_left_encoded = true := by
  decide +kernel
theorem small_5897936_left_covered : CoveredBy scale carrier boxes small_5897936_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5897936_left_root small_5897936_left_fuel small_5897936_left_count small_5897936_left_encoded small_5897936_left_checked

theorem cover_5897936 : CoveredBy scale carrier boxes root_5897936 := by
  apply coveredBy_split_literal root_5897936 small_5897936_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.root_5897942 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5897936_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.cover_5897942
#print axioms cover_5897936

def root_5897318 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897318_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897318_left_fuel : Nat := 23
def small_5897318_left_count : Nat := 289
def small_5897318_left_encoded : String := "1386AD060CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE0F878CFF000000040280010013D7B0F7067ECE8312EA58F8067ECE7D0000000A12EA5906000000030DE7C9FA0E6014FB00000002000000080E5FD8FB0000000A000000020000000112EA94F800000001067ECE7D12EA95060DE7C9FA0E6014FB00000002000000080E5FD8FB0DE7C9FE0000000A00000008000000020000000312EA5906000000030DE7C9FA0E6014FB000000020DE7C9FE0E6014FF0000000400000009000000080E5FD8FB0DE7C9FE0E6014FF000000040140010013F5D8F70793F0C30000000812825CF8000000010569AC3D0000000700000005000000000000000A0E5FD8FF0000000800000004000000020000000013D7ECF700000000067ECE830000000A12EA94F800000001067ECE7D0000000A12EA5906000000030DE7C9FA0E6014FB000000020DE7C9FE0000000A0E5FD8FF00000006000000040E5FD8FB0000000A000000020F8750FF028001000000000813D7ECF700000000067ECE8312EA58F8067ECE7D00000006000000080000000112EA94F800000001067ECE7D0000000612EA5906000000030DE7C9FA000000060E5FD8FB0000000600000002000000040F8750FB0C9A86FE0F878CFF000000040280010013D7B0F7067ECE8312EA58F8067ECE7D0000000A12EA5906000000030B4D43FA10804CFB000000020000000A0000000A0000000112EA94F800000001067ECE7D12EA95060B4D43FA10804CFB000000020000000A0000000A0000000312EA5906000000030B4D43FA10804CFB000000020DE7C9FE0E6014FF0000000401400100000000070000000A0E5FD8FF014001000000000713F614F7000000000793F0C3000000080000000700000004108010FB0DE7C9FE000000070E5FD8FF0000000700000004000000020000000013D7ECF700000000067ECE830000000A12EA94F800000001067ECE7D0000000A12EA5906000000030B4D43FA10804CFB000000020000000A0000000A0F8750FF0280010013D7B0F7067ECE830000000812EA94F800000001000000080000000013D7ECF700000000067ECE8312EA58F8067ECE7D0000000512EA5906000000030B4D43FA10804CFB000000020B4D43FE0000000A00000008108010FB00000005000000020000000112EA94F800000001067ECE7D12EA95060B4D43FA00000006108010FB00000005000000020000000312EA5906000000030B4D43FA10804CFB000000020B4D43FE10804CFF0000000403C0010013A510F7000000080000000000000006108010FF0000000600000004108010FB0B4D43FE10804CFF0000000403C0010013A510F70793F0C30000000A000000070000000013A54CF7000000000793F0C30000000A12825CF8000000010000000A108010FF03C001000000000813A54CF7000000000793F0C30000000500000006000000040000000200000004000000020F34D0FE0C9A86FA0F878CFB000000020280010013D7B0F7067ECE830000000912EA94F800000001067ECE7D0000000A12EA5906000000030000000A000000000000000A0F8750FB0000000A000000020000000400000003"
theorem small_5897318_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5897318_left_root small_5897318_left_fuel small_5897318_left_count small_5897318_left_encoded = true := by
  decide +kernel
theorem small_5897318_left_covered : CoveredBy scale carrier boxes small_5897318_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5897318_left_root small_5897318_left_fuel small_5897318_left_count small_5897318_left_encoded small_5897318_left_checked

theorem cover_5897318 : CoveredBy scale carrier boxes root_5897318 := by
  apply coveredBy_split_literal root_5897318 small_5897318_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.root_5897936 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5897318_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.cover_5897936
#print axioms cover_5897318

def root_5897312 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897312_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897312_left_fuel : Nat := 1
def small_5897312_left_count : Nat := 1
def small_5897312_left_encoded : String := "00000002"
theorem small_5897312_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5897312_left_root small_5897312_left_fuel small_5897312_left_count small_5897312_left_encoded = true := by
  decide +kernel
theorem small_5897312_left_covered : CoveredBy scale carrier boxes small_5897312_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5897312_left_root small_5897312_left_fuel small_5897312_left_count small_5897312_left_encoded small_5897312_left_checked

theorem cover_5897312 : CoveredBy scale carrier boxes root_5897312 := by
  apply coveredBy_split_literal root_5897312 small_5897312_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.root_5897318 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5897312_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.cover_5897318
#print axioms cover_5897312

def root_5897311 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897311_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897311_right_fuel : Nat := 15
def small_5897311_right_count : Nat := 69
def small_5897311_right_encoded : String := "0F34D0FA045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040280010013D7B0F7067ECE830000000812EA94F8000000010AD3577B10D13CFA00000002067ECE7D0000000600000008000000080000000013D7ECF700000000067ECE8312EA58F80AD3577B000000060000000600000001000000060F8750FF028001000000000800000006000000040F34D0FE028001000000000900000009000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040280010000000009000000090F8750FF028001000000000813D7ECF700000000067ECE8312EA58F80AD3577B00000009000000050000000100000005000000040000000500000002"
theorem small_5897311_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5897311_right_root small_5897311_right_fuel small_5897311_right_count small_5897311_right_encoded = true := by
  decide +kernel
theorem small_5897311_right_covered : CoveredBy scale carrier boxes small_5897311_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5897311_right_root small_5897311_right_fuel small_5897311_right_count small_5897311_right_encoded small_5897311_right_checked

theorem cover_5897311 : CoveredBy scale carrier boxes root_5897311 := by
  apply coveredBy_split_literal root_5897311 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.root_5897312 small_5897311_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.cover_5897312
  · exact small_5897311_right_covered
#print axioms cover_5897311

def root_5897305 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897305_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897305_left_fuel : Nat := 1
def small_5897305_left_count : Nat := 1
def small_5897305_left_encoded : String := "00000001"
theorem small_5897305_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5897305_left_root small_5897305_left_fuel small_5897305_left_count small_5897305_left_encoded = true := by
  decide +kernel
theorem small_5897305_left_covered : CoveredBy scale carrier boxes small_5897305_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5897305_left_root small_5897305_left_fuel small_5897305_left_count small_5897305_left_encoded small_5897305_left_checked

theorem cover_5897305 : CoveredBy scale carrier boxes root_5897305 := by
  apply coveredBy_split_literal root_5897305 small_5897305_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.root_5897311 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5897305_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.cover_5897311
#print axioms cover_5897305

def root_5896695 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896695_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896695_left_fuel : Nat := 34
def small_5896695_left_count : Nat := 285
def small_5896695_left_encoded : String := "138670F80CFD9BFB0F350CFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE0000000A0F8750FF00000008000000040F8750FB0C9A86FE0000000A0F8750FF0000000500000004000000020F34D0FE0000000A000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE0F878CFF00000004000000090F8750FF0280010013D7B0F7022A458300000008000000080000000013D7ECF700000000022A45830000000913E200F800000001022A457D13E201060DE7C9FA000000090E5FD8FB0B4D43FE0000000900000008000000020000000300000009000000040F8750FB0C9A86FE0F878CFF000000040280010013D7B0F7022A45830000000913E200F800000001022A457D13E201060B4D43FA000000090000000A00000003000000090000000013D7ECF700000000022A45830000000913E200F800000001022A457D0000000A000000090F8750FF0280010013D7B0F7022A458313E1C4F8022A457D0000000513E1C50600000003000000090000000113E200F800000001022A457D13E201060B4D43FA10804CFB0000000200000008108010FB00000005000000020000000313E1C506000000030B4D43FA10804CFB000000020B4D43FE0000000900000008108010FB0B4D43FE10804CFF00000004014001000000000900000009108010FF014001000000000813F614F700000000033F67C3000000050000000800000004000000020000000013D7ECF700000000022A458313E1C4F8022A457D0000000513E1C506000000030B4D43FA00000009108010FB00000005000000020000000113E200F800000001022A457D13E201060B4D43FA10804CFB000000020B4D43FE0000000A108010FF0000000500000004108010FB00000005000000020000000313E1C506000000030B4D43FA10804CFB000000020B4D43FE00000009108010FF03C0010013A510F7000000090000000013A54CF700000000033F67C30000000913BC30F8000000010115233D13F895060BF3E57A000000090000000A000000030000000900000004108010FB0B4D43FE10804CFF0000000403C0010013A510F7000000090000000013A54CF7000000000000000A108010FF03C0010013A510F7033F67C30000000513BC30F8000000010115233D0000000513F85906000000030AA6A27A10EDACFB000000020000000910ED70FB0AA6A27E0000000910ED70FF0000000500000004000000020000000013A54CF700000000033F67C30000000513BC30F8000000010115233D0000000513F85906000000030AA6A27A10EDACFB000000020000000910ED70FB0AA6A27E10EDACFF000000040000000910ED70FF046001001383DCF70000000500000000000000050000000400000002000000040000000200000004000000020F34D0FE00000009000000040F34D0FA045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040000000900000008000000090000000313867106000000030CFD9BFF00000009000000090000000200000001"
theorem small_5896695_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5896695_left_root small_5896695_left_fuel small_5896695_left_count small_5896695_left_encoded = true := by
  decide +kernel
theorem small_5896695_left_covered : CoveredBy scale carrier boxes small_5896695_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5896695_left_root small_5896695_left_fuel small_5896695_left_count small_5896695_left_encoded small_5896695_left_checked

theorem cover_5896695 : CoveredBy scale carrier boxes root_5896695 := by
  apply coveredBy_split_literal root_5896695 small_5896695_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.root_5897305 coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5896695_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.cover_5897305
#print axioms cover_5896695

def root_5896690 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896690_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896690_right_fuel : Nat := 1
def small_5896690_right_count : Nat := 1
def small_5896690_right_encoded : String := "00000000"
theorem small_5896690_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5896690_right_root small_5896690_right_fuel small_5896690_right_count small_5896690_right_encoded = true := by
  decide +kernel
theorem small_5896690_right_covered : CoveredBy scale carrier boxes small_5896690_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5896690_right_root small_5896690_right_fuel small_5896690_right_count small_5896690_right_encoded small_5896690_right_checked

theorem cover_5896690 : CoveredBy scale carrier boxes root_5896690 := by
  apply coveredBy_split_literal root_5896690 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.root_5896695 small_5896690_right_root coord0 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.cover_5896695
  · exact small_5896690_right_covered
#print axioms cover_5896690

def root_5896689 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5896689 : CoveredBy scale carrier boxes root_5896689 := by
  apply coveredBy_split_literal root_5896689 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.root_5896690 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2218.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.cover_5896690
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2218.covered
#print axioms cover_5896689

def root_5896683 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896683_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896683_left_fuel : Nat := 1
def small_5896683_left_count : Nat := 1
def small_5896683_left_encoded : String := "00000004"
theorem small_5896683_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5896683_left_root small_5896683_left_fuel small_5896683_left_count small_5896683_left_encoded = true := by
  decide +kernel
theorem small_5896683_left_covered : CoveredBy scale carrier boxes small_5896683_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5896683_left_root small_5896683_left_fuel small_5896683_left_count small_5896683_left_encoded small_5896683_left_checked

theorem cover_5896683 : CoveredBy scale carrier boxes root_5896683 := by
  apply coveredBy_split_literal root_5896683 small_5896683_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.root_5896689 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5896683_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.cover_5896689
#print axioms cover_5896683

def root_5896682 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896682_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896682_right_fuel : Nat := 11
def small_5896682_right_count : Nat := 41
def small_5896682_right_encoded : String := "120700FE05000100135D44F704548A03000000091386ACF8000000010CFD9BFB0F350CFA00000002045489FD1386AD06045489FF0000000A0000000500000003000000050000000900000000135D80F70000000004548A03138670F80CFD9BFB0F350CFA00000002045489FD0000000A0000000800000009000000011386ACF8000000010CFD9BFB0F350CFA00000002045489FD0000000A000000050000000500000004"
theorem small_5896682_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5896682_right_root small_5896682_right_fuel small_5896682_right_count small_5896682_right_encoded = true := by
  decide +kernel
theorem small_5896682_right_covered : CoveredBy scale carrier boxes small_5896682_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5896682_right_root small_5896682_right_fuel small_5896682_right_count small_5896682_right_encoded small_5896682_right_checked

theorem cover_5896682 : CoveredBy scale carrier boxes root_5896682 := by
  apply coveredBy_split_literal root_5896682 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.root_5896683 small_5896682_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.cover_5896683
  · exact small_5896682_right_covered
#print axioms cover_5896682

def root_5896676 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896676_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896676_left_fuel : Nat := 1
def small_5896676_left_count : Nat := 1
def small_5896676_left_encoded : String := "00000003"
theorem small_5896676_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5896676_left_root small_5896676_left_fuel small_5896676_left_count small_5896676_left_encoded = true := by
  decide +kernel
theorem small_5896676_left_covered : CoveredBy scale carrier boxes small_5896676_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5896676_left_root small_5896676_left_fuel small_5896676_left_count small_5896676_left_encoded small_5896676_left_checked

theorem cover_5896676 : CoveredBy scale carrier boxes root_5896676 := by
  apply coveredBy_split_literal root_5896676 small_5896676_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.root_5896682 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5896676_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.cover_5896682
#print axioms cover_5896676

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410
