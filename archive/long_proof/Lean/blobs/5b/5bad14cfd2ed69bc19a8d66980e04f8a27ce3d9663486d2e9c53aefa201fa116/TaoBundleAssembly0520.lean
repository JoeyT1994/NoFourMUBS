import TaoBundleAssembly0519
import TaoBundleChunkBatch0714
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520
def root_7553813 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7553813_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7553813_right_fuel : Nat := 17
def small_7553813_right_count : Nat := 155
def small_7553813_right_encoded : String := "120700FE05000102135D45030000000105000106135D4507000000030CFD9BF70F350D0000000005000000000F34D100000000000CFD9BFB0F350D0400000005000000020F34D10400000002045489FF0000000A138670FE0000000600000004135D81070CFD9BF70F350D000CFD9BFB0F350D04045489FF00000005138670FE0000000500000004000000020F34D10400000002045489FF1386ACFE000000040C9A87000F8750F700000005000000000000000A138670FE0C9A87000F8750F700000005000000000F878CF7000000000000000A00000004000000000F34D100000000000CFD9BFB000000080000000A00000003135D810305000106135D4507000000030CFD9BF70F350D000CFD9BFB0F350D04045489FF00000005138670FE0000000500000004000000020F34D1040000000200000006000000000F34D100000000000CFD9BFB0F350D04045489FF1386ACFE000000040C9A87040F8750FB00000005000000020000000A138670FE0C9A87040F8750FB00000005000000020F878CFB000000020000000A00000004000000020000000A135D81070CFD9BF70F350D000CFD9BFB0F350D04045489FF1386ACFE000000040C9A87000F8750F70C9A8704000000050F878CFB0000000207800102000000050000000A000000000F878CF7000000000C9A87040F8750FB07800102000000050000000A000000020000000A138670FE0C9A87000F8750F70C9A8704000000050F878CFB000000020000000A000000000F878CF7000000000C9A87040000000A0000000A00000004000000020F34D104000000020000000A000000000F34D100000000000000000A000000030000000100000004"
theorem small_7553813_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7553813_right_root small_7553813_right_fuel small_7553813_right_count small_7553813_right_encoded = true := by
  decide +kernel
theorem small_7553813_right_covered : CoveredBy scale carrier boxes small_7553813_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7553813_right_root small_7553813_right_fuel small_7553813_right_count small_7553813_right_encoded small_7553813_right_checked

theorem cover_7553813 : CoveredBy scale carrier boxes root_7553813 := by
  apply coveredBy_split_literal root_7553813 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0519.root_7553814 small_7553813_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0519.cover_7553814
  · exact small_7553813_right_covered
#print axioms cover_7553813

def root_7553808 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7553808_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7553808_right_fuel : Nat := 1
def small_7553808_right_count : Nat := 1
def small_7553808_right_encoded : String := "00000002"
theorem small_7553808_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7553808_right_root small_7553808_right_fuel small_7553808_right_count small_7553808_right_encoded = true := by
  decide +kernel
theorem small_7553808_right_covered : CoveredBy scale carrier boxes small_7553808_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7553808_right_root small_7553808_right_fuel small_7553808_right_count small_7553808_right_encoded small_7553808_right_checked

theorem cover_7553808 : CoveredBy scale carrier boxes root_7553808 := by
  apply coveredBy_split_literal root_7553808 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.root_7553813 small_7553808_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.cover_7553813
  · exact small_7553808_right_covered
#print axioms cover_7553808

def root_7553807 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7553807_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7553807_right_fuel : Nat := 21
def small_7553807_right_count : Nat := 167
def small_7553807_right_encoded : String := "120701040000000208A912FF12073CFE0000000405000102135D45030000000105000106135D4507000000030CFD9BF70F350D00045489FB1386AD040CFD9BFF0F350CFE000000040C9A87000F8750F70C9A86FE0000000600000009000000000F878CF7000000000C9A86FE000000060F8750FF028001020000000600000006000000040F34D0FE00000006000000040000000213867104000000020CFD9BFF0000000600000006000000000F34D10000000000045489FB1386AD040CFD9BFF0000000A0F34D0FE0000000600000004000000020000000A135D81070CFD9BF70F350D00045489FB1386AD040CFD9BFF0F350CFE000000040C9A8700000000090F878CF7000000000C9A86FE00000009000000090000000900000002138671040000000200000009000000000F34D100000000000000000A00000003135D810305000106135D4507000000030CFD9BF70F350D00045489FB1386AD040CFD9BFF0F350CFE000000040C9A87000F8750F700000006000000000F878CF7000000000C9A86FE000000060F8750FF078001020000000600000006000000040F34D0FE000000060000000400000002138671040000000200000006000000000F34D100000000000000000A135D81070CFD9BF70F350D00045489FB1386AD040CFD9BFF0F350CFE000000040C9A87000F8750F70C9A86FE0000000A0F8750FF0780010200000009128A7D03078001060000000A000000050000000100000004000000000F878CF7000000000000000A0F34D0FE0000000A000000040000000213867104000000020000000A000000000F34D100000000000000000A0000000300000001120700FE05000102135D45030000000105000106135D4507000000030CFD9BF7000000060000000A0000000A135D81030000000A0000000100000004"
theorem small_7553807_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7553807_right_root small_7553807_right_fuel small_7553807_right_count small_7553807_right_encoded = true := by
  decide +kernel
theorem small_7553807_right_covered : CoveredBy scale carrier boxes small_7553807_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7553807_right_root small_7553807_right_fuel small_7553807_right_count small_7553807_right_encoded small_7553807_right_checked

theorem cover_7553807 : CoveredBy scale carrier boxes root_7553807 := by
  apply coveredBy_split_literal root_7553807 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.root_7553808 small_7553807_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.cover_7553808
  · exact small_7553807_right_covered
#print axioms cover_7553807

def root_7553802 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7553802_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7553802_right_fuel : Nat := 1
def small_7553802_right_count : Nat := 1
def small_7553802_right_encoded : String := "00000000"
theorem small_7553802_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7553802_right_root small_7553802_right_fuel small_7553802_right_count small_7553802_right_encoded = true := by
  decide +kernel
theorem small_7553802_right_covered : CoveredBy scale carrier boxes small_7553802_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7553802_right_root small_7553802_right_fuel small_7553802_right_count small_7553802_right_encoded small_7553802_right_checked

theorem cover_7553802 : CoveredBy scale carrier boxes root_7553802 := by
  apply coveredBy_split_literal root_7553802 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.root_7553807 small_7553802_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.cover_7553807
  · exact small_7553802_right_covered
#print axioms cover_7553802

def root_7553801 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7553801_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7553801_right_fuel : Nat := 23
def small_7553801_right_count : Nat := 185
def small_7553801_right_encoded : String := "120701000000000008A912FB12073D0408A912FF12073CFE0000000405000102135D45030000000105000106135D450700000003045489F71386AD000CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A87040F8750FB0C9A86FE0000000700000007000000020F878CFB000000020C9A86FE000000080F8750FF028001020000000800000007000000040F34D0FE0000000800000004000000020F34D104000000020CFD9BFF0000000A0F34D0FE00000008000000040000000013867100000000000CFD9BFB0F350D040CFD9BFF0000000800000007000000020000000A135D8107045489F71386AD000CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A87040F8750FB00000008000000020F878CFB000000020C9A86FE000000080F8750FF02800102000000080000000A000000040F34D0FE0000000800000004000000020F34D104000000020000000A0000000013867100000000000CFD9BFB000000080000000A00000003135D810305000106135D450700000003045489F71386AD000CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A8704000000070F878CFB000000020C9A86FE000000070000000700000007000000020F34D104000000020000000A0000000013867100000000000CFD9BFB0000000A0000000A135D8107045489F71386AD000CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A87040F8750FB0C9A86FE0000000A0F8750FF07800102128A410300000001078001060000000700000008128A7D03000000070000000100000004000000020F878CFB000000020000000A0F34D0FE0000000A00000004000000020F34D104000000020000000A0000000013867100000000000000000A0000000300000001120700FE05000102135D45030000000105000106135D450700000003045489F71386AD0000000008000000000000000800000008135D81030000000A000000010000000400000002120701040000000208A912FF0000000A120700FE0000000A00000004"
theorem small_7553801_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7553801_right_root small_7553801_right_fuel small_7553801_right_count small_7553801_right_encoded = true := by
  decide +kernel
theorem small_7553801_right_covered : CoveredBy scale carrier boxes small_7553801_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7553801_right_root small_7553801_right_fuel small_7553801_right_count small_7553801_right_encoded small_7553801_right_checked

theorem cover_7553801 : CoveredBy scale carrier boxes root_7553801 := by
  apply coveredBy_split_literal root_7553801 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.root_7553802 small_7553801_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.cover_7553802
  · exact small_7553801_right_covered
#print axioms cover_7553801

def root_7553795 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7553795_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7553795_left_fuel : Nat := 1
def small_7553795_left_count : Nat := 1
def small_7553795_left_encoded : String := "00000004"
theorem small_7553795_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7553795_left_root small_7553795_left_fuel small_7553795_left_count small_7553795_left_encoded = true := by
  decide +kernel
theorem small_7553795_left_covered : CoveredBy scale carrier boxes small_7553795_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7553795_left_root small_7553795_left_fuel small_7553795_left_count small_7553795_left_encoded small_7553795_left_checked

theorem cover_7553795 : CoveredBy scale carrier boxes root_7553795 := by
  apply coveredBy_split_literal root_7553795 small_7553795_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.root_7553801 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7553795_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.cover_7553801
#print axioms cover_7553795

def root_7585759 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7585759_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7585759_left_fuel : Nat := 25
def small_7585759_left_count : Nat := 371
def small_7585759_left_encoded : String := "13D7B10700000003078000FE128A7CFF000000040AD3577B10D13D040DE7CA000E5FD8F703C0010213A5110300000001014001060000000513F6150708C000FE0000000511FBE8FF0BE879BB0000000A00000009000000040000000313A54D030140010613F5D9070000000308C000FE0000000511FBE8FF000000060000000413F6150708C000FE11FC24FF000000040000000611FBE8FF0BE879BB1011AD040000000A00000002101171040000000200000006000000040000000300000001000000000E6014F70000000003C0010213A51103000000010140010613F5D9070000000308C000FE0000000511FBE8FF0BE879BB1011AD040DAED877000000060E962500000000000000000600000002000000060000000413F6150708C000FE11FC24FF000000040BE879BB1011AD040DAED877000000060E9625000000000000000006000000020000000611FBE8FF0BE879BB1011AD040DAED8770E9661000000000A000000000E962500000000000320010213C109030000000101E001060000000613E99507082000FE000000060000000A0000000313C1450301E001060000000613E99507082000FE0000000612465CFF0C730ADB0000000A0000000600000004000000030000000100000002101171040000000200000006000000040000000313A54D030140010613F5D9070000000308C000FE0000000611FBE8FF0BE879BB1011AD040000000600000002000000060000000413F6150708C000FE11FC24FF000000040BE879BB1011AD040DAED877000000060E9625000000000000000006000000020000000611FBE8FF0BE879BB1011AD040DAED8770E966100046001021383DD030000000101E001060000000613E99507082000FE000000060000000A000000031384190301E001060000000613E99507082000FE000000060000000A0000000300000001000000000E96250000000000046001021383DD030000000101E001060000000613E99507082000FE0000000612465CFF0C730ADB000000070000000600000004000000031384190301E001060000000613E99507082000FE00000006000000070000000300000001000000021011710400000002000000060000000400000003000000010000000210D10104000000020DE7CA000E5FD8F7000000060000000000000006128A40FF0AD3577B10D13D040DE7CA000E5FD8F70000000A000000000E6014F70000000003C0010213A51103000000010140010613F5D90700000003064000FE12FFACFF000000040BE879BB0000000A1011710400000002000000060000000A13F61507064000FE12FFACFF000000040BE879BB0000000A10117104000000020DAED8770E96610000000009000000000E96250000000000032001020000000913C1450300000009000000010000000A0000000313A54D030140010613F5D90700000003064000FE12FFACFF000000040BE879BB1011AD040000000A000000021011710400000002000000060000000A13F61507064000FE12FFACFF000000040BE879BB1011AD040DAED8770000000A0E96250000000000046001021383DD03000000010000000A1384190301E001060000000713E9950706E000FE000000070000000500000003000000010000000210117104000000020DAED8770E966100046001021383DD03000000010000000600000006000000000E96250000000000046001021383DD030000000101E001060000000613E9950706E000FE0000000600000005000000031384190301E0010600000006000000050000000112FF70FF0BE879BB0000000A10117104000000020DAED877000000080E96250000000000000000050000000400000003000000010000000210D10104000000020DE7CA000E5FD8F703C001020000000913A54D0301400106000000060000000900000001000000000E6014F70000000003C0010213A51103000000010140010613F5D90700000003064000FE00000006000000090000000913A54D03014001060000000613F61507064000FE0000000600000005000000030000000100000004"
theorem small_7585759_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7585759_left_root small_7585759_left_fuel small_7585759_left_count small_7585759_left_encoded = true := by
  decide +kernel
theorem small_7585759_left_covered : CoveredBy scale carrier boxes small_7585759_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7585759_left_root small_7585759_left_fuel small_7585759_left_count small_7585759_left_encoded small_7585759_left_checked

theorem cover_7585759 : CoveredBy scale carrier boxes root_7585759 := by
  apply coveredBy_split_literal root_7585759 small_7585759_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2855.root coord3 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_7585759_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2855.covered
#print axioms cover_7585759

def root_7585754 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7585754_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16645888), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7585754_right_fuel : Nat := 1
def small_7585754_right_count : Nat := 1
def small_7585754_right_encoded : String := "00000001"
theorem small_7585754_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7585754_right_root small_7585754_right_fuel small_7585754_right_count small_7585754_right_encoded = true := by
  decide +kernel
theorem small_7585754_right_covered : CoveredBy scale carrier boxes small_7585754_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7585754_right_root small_7585754_right_fuel small_7585754_right_count small_7585754_right_encoded small_7585754_right_checked

theorem cover_7585754 : CoveredBy scale carrier boxes root_7585754 := by
  apply coveredBy_split_literal root_7585754 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.root_7585759 small_7585754_right_root coord1 true (16645888)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.cover_7585759
  · exact small_7585754_right_covered
#print axioms cover_7585754

def root_7585470 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7585470_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7585470_left_fuel : Nat := 19
def small_7585470_left_count : Nat := 135
def small_7585470_left_encoded : String := "13D7B103000000010280010613D7B10700000003078000FE128A7CFF000000040AD3577B10D13D040DE7CA00000000050E6014F700000000014001020000000513F61503014001060000000513F6150708C000FE0000000511FBE8FF0BE879BB1011AD040000000A00000002000000090000000400000003000000010000000210D10104000000020DE7CA00000000090E6014F70000000000000009128A40FF0AD3577B10D13D040DE7CA000000000A0E6014F700000000014001020000000A13F61503014001060000000A13F61507064000FE12FFACFF000000040BE879BB0000000A000000090000000A00000003000000010000000210D1010400000002000000090000000413D7ED07078000FE128A7CFF000000040AD3577B10D13D040DE7CA000E5FD8F700000009000000000E6014F700000000014001020000000913F6150303C0010613A511070000000308C000FE11FC24FF000000040BE879BB1011AD040DAED8770000000900000009000000020000000911FBE8FF0BE879BB1011AD040000000900000002000000090000000413A54D0708C000FE000000090000000900000003000000010000000210D101040000000200000009128A40FF0AD3577B10D13D040DE7CA00000000090E6014F700000000014001020000000913F6150303C0010613A5110700000003064000FE12FFACFF000000040000000900000009000000090000000100000002000000090000000400000003"
theorem small_7585470_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7585470_left_root small_7585470_left_fuel small_7585470_left_count small_7585470_left_encoded = true := by
  decide +kernel
theorem small_7585470_left_covered : CoveredBy scale carrier boxes small_7585470_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7585470_left_root small_7585470_left_fuel small_7585470_left_count small_7585470_left_encoded small_7585470_left_checked

theorem cover_7585470 : CoveredBy scale carrier boxes root_7585470 := by
  apply coveredBy_split_literal root_7585470 small_7585470_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.root_7585754 coord1 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_7585470_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.cover_7585754
#print axioms cover_7585470

def root_7585464 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7585464_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7585464_left_fuel : Nat := 1
def small_7585464_left_count : Nat := 1
def small_7585464_left_encoded : String := "00000000"
theorem small_7585464_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7585464_left_root small_7585464_left_fuel small_7585464_left_count small_7585464_left_encoded = true := by
  decide +kernel
theorem small_7585464_left_covered : CoveredBy scale carrier boxes small_7585464_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7585464_left_root small_7585464_left_fuel small_7585464_left_count small_7585464_left_encoded small_7585464_left_checked

theorem cover_7585464 : CoveredBy scale carrier boxes root_7585464 := by
  apply coveredBy_split_literal root_7585464 small_7585464_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.root_7585470 coord0 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_7585464_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.cover_7585470
#print axioms cover_7585464

def root_7585242 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7585242_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7585242_left_fuel : Nat := 22
def small_7585242_left_count : Nat := 105
def small_7585242_left_encoded : String := "0F8750F70280010213D7B103000000010280010613D7B10700000003078000FE128A7CFF000000040AD3577B0000000A000000050000000913D7ED07078000FE00000009000000090000000313D7ED030280010613D7B10700000003078000FE128A7CFF000000040AD3577B10D13D040B4D4400108010F70000000A0000000010804CF70000000003C001020000000513A54D03014001060000000513F6150708C000FE000000050000000A00000003000000010000000210D101040000000200000006128A40FF0AD3577B0000000A10D1010400000002000000090000000413D7ED07078000FE128A7CFF000000040AD3577B10D13D040B4D4400108010F7000000090000000010804CF70000000003C001020000000913A54D0303C0010613A511070000000308C000FE11FC24FF000000040BE879BB1011AD040BF3E58000000005100928F7000000000000000900000002000000060000000913A54D0708C000FE000000090000000900000003000000010000000200000009128A40FF0AD3577B10D13D040000000A000000020000000900000004000000030000000100000000"
theorem small_7585242_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7585242_left_root small_7585242_left_fuel small_7585242_left_count small_7585242_left_encoded = true := by
  decide +kernel
theorem small_7585242_left_covered : CoveredBy scale carrier boxes small_7585242_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7585242_left_root small_7585242_left_fuel small_7585242_left_count small_7585242_left_encoded small_7585242_left_checked

theorem cover_7585242 : CoveredBy scale carrier boxes root_7585242 := by
  apply coveredBy_split_literal root_7585242 small_7585242_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.root_7585464 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7585242_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.cover_7585464
#print axioms cover_7585242

def root_7585236 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7585236_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7585236_left_fuel : Nat := 1
def small_7585236_left_count : Nat := 1
def small_7585236_left_encoded : String := "00000002"
theorem small_7585236_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7585236_left_root small_7585236_left_fuel small_7585236_left_count small_7585236_left_encoded = true := by
  decide +kernel
theorem small_7585236_left_covered : CoveredBy scale carrier boxes small_7585236_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7585236_left_root small_7585236_left_fuel small_7585236_left_count small_7585236_left_encoded small_7585236_left_checked

theorem cover_7585236 : CoveredBy scale carrier boxes root_7585236 := by
  apply coveredBy_split_literal root_7585236 small_7585236_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.root_7585242 coord2 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_7585236_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.cover_7585242
#print axioms cover_7585236

def root_7582672 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7582672 : CoveredBy scale carrier boxes root_7582672 := by
  apply coveredBy_split_literal root_7582672 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2854.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.root_7585236 coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2854.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.cover_7585236
#print axioms cover_7582672

def root_7582667 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582667_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582667_right_fuel : Nat := 1
def small_7582667_right_count : Nat := 1
def small_7582667_right_encoded : String := "00000000"
theorem small_7582667_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7582667_right_root small_7582667_right_fuel small_7582667_right_count small_7582667_right_encoded = true := by
  decide +kernel
theorem small_7582667_right_covered : CoveredBy scale carrier boxes small_7582667_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7582667_right_root small_7582667_right_fuel small_7582667_right_count small_7582667_right_encoded small_7582667_right_checked

theorem cover_7582667 : CoveredBy scale carrier boxes root_7582667 := by
  apply coveredBy_split_literal root_7582667 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.root_7582672 small_7582667_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.cover_7582672
  · exact small_7582667_right_covered
#print axioms cover_7582667

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520
