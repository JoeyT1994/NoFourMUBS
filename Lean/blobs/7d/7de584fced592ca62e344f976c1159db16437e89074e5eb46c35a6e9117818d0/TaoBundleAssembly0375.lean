import TaoBundleAssembly0374
import TaoBundleChunkBatch0498
import TaoBundleChunkBatch0499
import TaoBundleChunkBatch0500
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375
def root_5313228 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313228_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313228_right_fuel : Nat := 29
def small_5313228_right_count : Nat := 445
def small_5313228_right_encoded : String := "0F34D108000000040C9A86F80F878CF9000000010C9A86FA0F878CFB0000000207800106128A410700000003022A45770000000A00000005128A7D07022A457713E201000AD3577F10D13D080DE7C9F80E6014F9000000010000000A000000080000000410D1010800000004000000080000000013E1C500000000000AD3577F10D13D080DE7C9F8000000060E5FD8F900000006000000010000000410D10108000000040DE7C9F80000000600000008000000030F8750FB07800106128A410700000003022A45770000000A13E1C500000000000AD3577F10D13D080DE7C9F80000000A0E5FD8F90B4D43FA0000000A0000000900000001000000040000000A128A7D07022A457713E201000AD3577F10D13D080DE7C9F80000000A0E5FD8F90B4D43FA0000000A108010FB0000000A00000002000000010000000410D10108000000040000000A0000000013E1C500000000000AD3577F10D13D080DE7C9F80E6014F900000001000000090E5FD8F90B4D43FA0000000600000009000000010000000410D10108000000040000000900000003000000020F8750F90C9A86FA0F878CFB0000000207800106128A410700000003022A45770000000813E1C500000000000AD3577F10D13D080B4D43F810804CF9000000010DE7C9FA000000050E5FD8FB06400106000000050000000800000002000000080000000410D101080000000400000008128A7D07022A45770000000813E1C500000000000AD3577F10D13D080B4D43F810804CF9000000010DE7C9FA000000060E5FD8FB0000000600000002000000080000000410D101080000000400000008000000030F8750FB07800106128A410700000003022A457713E201000AD3577F10D13D080B4D43F810804CF9000000010000000A108010F90B4D43FA00000008108010FB06400106000000080000000800000002000000010000000410D1010800000004000000080000000013E1C500000000000AD3577F10D13D080B4D43F810804CF9000000010B4D43FA10804CFB000000020640010612FF7107000000030000000A12FFAD07011523370000000813F85900000000000BE879BF0000000610117108000000040000000600000003108010FB064001060000000A12FFAD07011523370000000A000000090000000300000002108010F90B4D43FA10804CFB000000020640010612FF710700000003011523370000000813F85900000000000BE879BF000000080000000812FFAD070000000800000003108010FB0640010612FF710700000003011523370000000A13F85900000000000BE879BF1011AD080AA6A27810EDACF9000000010AA6A27A0000000A0000000910ED70F90AA6A27A0000000810ED70FB05A0010613313507000000030000000A13317107008A921700000008000000090000000300000002000000010000000410117108000000040000000A12FFAD070115233713F895000BE879BF1011AD080AA6A27810EDACF900000001000000080000000800000004000000080000000013F85900000000000BE879BF1011AD080AA6A27810EDACF9000000010AA6A27A000000060000000910ED70F90AA6A27A0000000810ED70FB06E001060000000812C8210700000008000000030000000200000001000000041011710800000004000000080000000300000002000000010000000410D10108000000040B4D43F810804CF9000000010000000A108010F90B4D43FA00000008108010FB0640010600000008000000080000000200000001128A7D07022A457713E201000AD3577F10D13D080B4D43F810804CF9000000010B4D43FA10804CFB0000000200000008108010FB08C0010611FBE907000000030000000A11FC2507033F67B70000000813BBF500000000000BE879BF00000008000000080000000300000002108010F90B4D43FA00000008108010FB08C00106000000080000000500000002000000010000000410D1010800000004000000080000000013E1C500000000000AD3577F10D13D080B4D43F810804CF9000000010B4D43FA10804CFB0000000208C0010611FBE9070000000301152337000000080000000600000006108010FB08C0010611FBE907000000030115233713F895000BE879BF1011AD080BF3E578000000061008ECF900000006000000010000000410117108000000040000000800000000000000060000000600000002108010F90B4D43FA10804CFB0000000208C001060000000800000006108010FB08C0010611FBE907000000030115233713F895000BE879BF00000008000000080000000013F85900000000000BE879BF0000000610117108000000040000000611FC25070115233700000005000000060000000300000002000000010000000410D10108000000040B4D43F810804CF9000000010B4D43FA0000000600000009108010F90000000800000001000000030000000200000001"
theorem small_5313228_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5313228_right_root small_5313228_right_fuel small_5313228_right_count small_5313228_right_encoded = true := by
  decide +kernel
theorem small_5313228_right_covered : CoveredBy scale carrier boxes small_5313228_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5313228_right_root small_5313228_right_fuel small_5313228_right_count small_5313228_right_encoded small_5313228_right_checked

theorem cover_5313228 : CoveredBy scale carrier boxes root_5313228 := by
  apply coveredBy_split_literal root_5313228 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0374.root_5313229 small_5313228_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0374.cover_5313229
  · exact small_5313228_right_covered
#print axioms cover_5313228

def root_5313222 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313222_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313222_left_fuel : Nat := 1
def small_5313222_left_count : Nat := 1
def small_5313222_left_encoded : String := "00000002"
theorem small_5313222_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5313222_left_root small_5313222_left_fuel small_5313222_left_count small_5313222_left_encoded = true := by
  decide +kernel
theorem small_5313222_left_covered : CoveredBy scale carrier boxes small_5313222_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5313222_left_root small_5313222_left_fuel small_5313222_left_count small_5313222_left_encoded small_5313222_left_checked

theorem cover_5313222 : CoveredBy scale carrier boxes root_5313222 := by
  apply coveredBy_split_literal root_5313222 small_5313222_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5313228 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5313222_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5313228
#print axioms cover_5313222

def root_5313221 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313221_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313221_right_fuel : Nat := 15
def small_5313221_right_count : Nat := 75
def small_5313221_right_encoded : String := "0F34D0FA0CFD9BFF0F350D080C9A86F80F878CF9000000010C9A8708000000050F878CFF00000004000000050F8750F90C9A87080F8750FF07800106128A41070000000300000005128A7D07022A457713E201000AD3577B00000009000000080000000013E1C500000000000AD3577B10D13CFA000000020B4D43F800000005000000090000000500000003000000040F878CFF0000000407800106128A410700000003022A45770000000800000005128A7D07022A45770000000813E1C500000000000AD3577B10D13CFA000000020B4D43F80000000600000008000000080000000300000001000000040F34D108000000040C9A86F80F878CF9000000010780010600000005128A7D07022A45770000000800000005000000030F8750F9000000080000000100000002"
theorem small_5313221_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5313221_right_root small_5313221_right_fuel small_5313221_right_count small_5313221_right_encoded = true := by
  decide +kernel
theorem small_5313221_right_covered : CoveredBy scale carrier boxes small_5313221_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5313221_right_root small_5313221_right_fuel small_5313221_right_count small_5313221_right_encoded small_5313221_right_checked

theorem cover_5313221 : CoveredBy scale carrier boxes root_5313221 := by
  apply coveredBy_split_literal root_5313221 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5313222 small_5313221_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5313222
  · exact small_5313221_right_covered
#print axioms cover_5313221

def root_5313215 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313215_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313215_left_fuel : Nat := 1
def small_5313215_left_count : Nat := 1
def small_5313215_left_encoded : String := "00000001"
theorem small_5313215_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5313215_left_root small_5313215_left_fuel small_5313215_left_count small_5313215_left_encoded = true := by
  decide +kernel
theorem small_5313215_left_covered : CoveredBy scale carrier boxes small_5313215_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5313215_left_root small_5313215_left_fuel small_5313215_left_count small_5313215_left_encoded small_5313215_left_checked

theorem cover_5313215 : CoveredBy scale carrier boxes root_5313215 := by
  apply coveredBy_split_literal root_5313215 small_5313215_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5313221 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5313215_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5313221
#print axioms cover_5313215

def root_5313214 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313214_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313214_right_fuel : Nat := 21
def small_5313214_right_count : Nat := 95
def small_5313214_right_encoded : String := "0F34D0F80CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA0F878CFB000000020C9A8708000000050F878CFF00000004000000050F8750FB0C9A87080F8750FF07800106128A41070000000300000005128A7D07022A457713E201000AD3577910D13CF8000000010B4D43FA10804CFB000000020B4D44080000000510804CFF0000000400000005108010FB0B4D44080000000710804CFF0000000408C0010600000007000000070000000210D100F800000005000000010000000013E1C500000000000AD3577910D13CF8000000010B4D43FA00000005108010FB0B4D44080000000500000006000000020000000500000003000000040F878CFF0000000407800106128A4107000000030000000A128A7D07022A45770000000A13E1C500000000000AD3577910D13CF8000000010B4D43FA0000000600000009000000090000000300000002000000040F34D108000000040C9A86FA0000000A0F8750FB0000000A000000020F34D0FA000000050000000200000001"
theorem small_5313214_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5313214_right_root small_5313214_right_fuel small_5313214_right_count small_5313214_right_encoded = true := by
  decide +kernel
theorem small_5313214_right_covered : CoveredBy scale carrier boxes small_5313214_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5313214_right_root small_5313214_right_fuel small_5313214_right_count small_5313214_right_encoded small_5313214_right_checked

theorem cover_5313214 : CoveredBy scale carrier boxes root_5313214 := by
  apply coveredBy_split_literal root_5313214 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5313215 small_5313214_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5313215
  · exact small_5313214_right_covered
#print axioms cover_5313214

def root_5313208 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313208_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5313208_left_fuel : Nat := 1
def small_5313208_left_count : Nat := 1
def small_5313208_left_encoded : String := "00000000"
theorem small_5313208_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5313208_left_root small_5313208_left_fuel small_5313208_left_count small_5313208_left_encoded = true := by
  decide +kernel
theorem small_5313208_left_covered : CoveredBy scale carrier boxes small_5313208_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5313208_left_root small_5313208_left_fuel small_5313208_left_count small_5313208_left_encoded small_5313208_left_checked

theorem cover_5313208 : CoveredBy scale carrier boxes root_5313208 := by
  apply coveredBy_split_literal root_5313208 small_5313208_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5313214 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5313208_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5313214
#print axioms cover_5313208

def root_5311496 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5311496 : CoveredBy scale carrier boxes root_5311496 := by
  apply coveredBy_split_literal root_5311496 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1991.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5313208 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1991.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5313208
#print axioms cover_5311496

def root_5311491 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5311491_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5311491_right_fuel : Nat := 1
def small_5311491_right_count : Nat := 1
def small_5311491_right_encoded : String := "00000003"
theorem small_5311491_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5311491_right_root small_5311491_right_fuel small_5311491_right_count small_5311491_right_encoded = true := by
  decide +kernel
theorem small_5311491_right_covered : CoveredBy scale carrier boxes small_5311491_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5311491_right_root small_5311491_right_fuel small_5311491_right_count small_5311491_right_encoded small_5311491_right_checked

theorem cover_5311491 : CoveredBy scale carrier boxes root_5311491 := by
  apply coveredBy_split_literal root_5311491 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5311496 small_5311491_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5311496
  · exact small_5311491_right_covered
#print axioms cover_5311491

def root_5309869 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5309869 : CoveredBy scale carrier boxes root_5309869 := by
  apply coveredBy_split_literal root_5309869 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1990.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5311491 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1990.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5311491
#print axioms cover_5309869

def root_5309864 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309864_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309864_right_fuel : Nat := 1
def small_5309864_right_count : Nat := 1
def small_5309864_right_encoded : String := "00000004"
theorem small_5309864_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5309864_right_root small_5309864_right_fuel small_5309864_right_count small_5309864_right_encoded = true := by
  decide +kernel
theorem small_5309864_right_covered : CoveredBy scale carrier boxes small_5309864_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5309864_right_root small_5309864_right_fuel small_5309864_right_count small_5309864_right_encoded small_5309864_right_checked

theorem cover_5309864 : CoveredBy scale carrier boxes root_5309864 := by
  apply coveredBy_split_literal root_5309864 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5309869 small_5309864_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5309869
  · exact small_5309864_right_covered
#print axioms cover_5309864

def root_5309863 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309863_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309863_right_fuel : Nat := 21
def small_5309863_right_count : Nat := 149
def small_5309863_right_encoded : String := "120701080000000405000106135D450700000003045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0000000A000000080000000A0000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FF1386AD080C9A86F80000000A0F8750F90C9A86FA000000070F8750FB0000000A0000000200000001000000040000000A0F34D0FA00000005000000020F34D0F80000000500000001135D8107045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FF1386AD080C9A86F80000000A000000080000000413867108000000040000000A0F34D0FA00000008000000020F34D0F80000000A000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FF1386AD080C9A86F80F878CF9000000010C9A86FA0F878CFB00000002078001060000000A128A7D07022A45770000000813E1C50000000000067ECE7F0000000800000008000000030F8750FB0000000A000000020F8750F90C9A86FA0F878CFB00000002000000080F8750FB07800106128A4107000000030000000A128A7D07022A45770000000813E1C50000000000067ECE7F00000008000000080000000300000002000000010000000413867108000000040C9A86F80F878CF9000000010C9A86FA0000000A0000000A0F8750F90C9A86FA000000080F8750FB07800106000000080000000800000002000000010F34D0FA045489FF0000000800000008000000020F34D0F80CFD9BFB0000000A0F34D0FA00000005000000020000000100000003"
theorem small_5309863_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5309863_right_root small_5309863_right_fuel small_5309863_right_count small_5309863_right_encoded = true := by
  decide +kernel
theorem small_5309863_right_covered : CoveredBy scale carrier boxes small_5309863_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5309863_right_root small_5309863_right_fuel small_5309863_right_count small_5309863_right_encoded small_5309863_right_checked

theorem cover_5309863 : CoveredBy scale carrier boxes root_5309863 := by
  apply coveredBy_split_literal root_5309863 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5309864 small_5309863_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5309864
  · exact small_5309863_right_covered
#print axioms cover_5309863

def root_5309857 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309857_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309857_left_fuel : Nat := 1
def small_5309857_left_count : Nat := 1
def small_5309857_left_encoded : String := "00000002"
theorem small_5309857_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5309857_left_root small_5309857_left_fuel small_5309857_left_count small_5309857_left_encoded = true := by
  decide +kernel
theorem small_5309857_left_covered : CoveredBy scale carrier boxes small_5309857_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5309857_left_root small_5309857_left_fuel small_5309857_left_count small_5309857_left_encoded small_5309857_left_checked

theorem cover_5309857 : CoveredBy scale carrier boxes root_5309857 := by
  apply coveredBy_split_literal root_5309857 small_5309857_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5309863 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5309857_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5309863
#print axioms cover_5309857

def root_5309856 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309856_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309856_right_fuel : Nat := 15
def small_5309856_right_count : Nat := 55
def small_5309856_right_encoded : String := "120700FA08A912FF12073D0805000106135D45070000000300000005135D8107045489F71386AD000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9BFF0F350D080C9A86F800000005000000080000000400000008000000080F34D0F800000005000000010000000013867100000000000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9BFF0F350D080000000500000004000000050000000500000005000000030000000412070108000000040500010600000005135D8107045489F700000008000000050000000300000002"
theorem small_5309856_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5309856_right_root small_5309856_right_fuel small_5309856_right_count small_5309856_right_encoded = true := by
  decide +kernel
theorem small_5309856_right_covered : CoveredBy scale carrier boxes small_5309856_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5309856_right_root small_5309856_right_fuel small_5309856_right_count small_5309856_right_encoded small_5309856_right_checked

theorem cover_5309856 : CoveredBy scale carrier boxes root_5309856 := by
  apply coveredBy_split_literal root_5309856 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5309857 small_5309856_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5309857
  · exact small_5309856_right_covered
#print axioms cover_5309856

def root_5309850 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309850_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309850_left_fuel : Nat := 1
def small_5309850_left_count : Nat := 1
def small_5309850_left_encoded : String := "00000001"
theorem small_5309850_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5309850_left_root small_5309850_left_fuel small_5309850_left_count small_5309850_left_encoded = true := by
  decide +kernel
theorem small_5309850_left_covered : CoveredBy scale carrier boxes small_5309850_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5309850_left_root small_5309850_left_fuel small_5309850_left_count small_5309850_left_encoded small_5309850_left_checked

theorem cover_5309850 : CoveredBy scale carrier boxes root_5309850 := by
  apply coveredBy_split_literal root_5309850 small_5309850_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5309856 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5309850_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5309856
#print axioms cover_5309850

def root_5309849 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309849_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309849_right_fuel : Nat := 16
def small_5309849_right_count : Nat := 47
def small_5309849_right_encoded : String := "120700F808A912FB12073CFA0000000208A912FF12073D0805000106135D45070000000300000005135D8107045489F71386AD00045489F91386ACF8000000010CFD9BFB0000000A0F34D0FA00000005000000020000000A000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFF0F350D080000000500000004000000050000000500000005000000030000000412070108000000040000000A120700FA000000050000000200000001"
theorem small_5309849_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5309849_right_root small_5309849_right_fuel small_5309849_right_count small_5309849_right_encoded = true := by
  decide +kernel
theorem small_5309849_right_covered : CoveredBy scale carrier boxes small_5309849_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5309849_right_root small_5309849_right_fuel small_5309849_right_count small_5309849_right_encoded small_5309849_right_checked

theorem cover_5309849 : CoveredBy scale carrier boxes root_5309849 := by
  apply coveredBy_split_literal root_5309849 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5309850 small_5309849_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5309850
  · exact small_5309849_right_covered
#print axioms cover_5309849

def root_5309843 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309843_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309843_left_fuel : Nat := 1
def small_5309843_left_count : Nat := 1
def small_5309843_left_encoded : String := "00000000"
theorem small_5309843_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5309843_left_root small_5309843_left_fuel small_5309843_left_count small_5309843_left_encoded = true := by
  decide +kernel
theorem small_5309843_left_covered : CoveredBy scale carrier boxes small_5309843_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5309843_left_root small_5309843_left_fuel small_5309843_left_count small_5309843_left_encoded small_5309843_left_checked

theorem cover_5309843 : CoveredBy scale carrier boxes root_5309843 := by
  apply coveredBy_split_literal root_5309843 small_5309843_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5309849 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5309843_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5309849
#print axioms cover_5309843

def root_5309463 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309463_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309463_left_fuel : Nat := 32
def small_5309463_left_count : Nat := 179
def small_5309463_left_encoded : String := "12073D0008A912F912073CF80000000108A912FB12073CFA0000000208A912FF12073D0805000106135D4507000000030CFD9BF70000000A0F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0000000A0F34D0FA0CFD9BFF0F350D080C9A86F80000000A000000080000000400000008000000020000000A135D81070CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFB0000000A0F34D0FA00000008000000020000000A000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86F80F878CF9000000010C9A86FA0F878CFB000000020C9A87080F8750FF078001060000000A128A7D070AD357770000000810D10100000000000DE7C9F80000000A0000000800000003000000040000000A0F8750FB0000000A000000020F8750F90C9A86FA0F878CFB000000020C9A87080F8750FF07800106000000080000000800000004000000080F8750FB0C9A87080F8750FF07800106128A4107000000030000000A128A7D070AD357770000000810D10100000000000B4D43F810804CF9000000010B4D43FA00000008108010FB0000000A000000020000000900000003000000040000000A0000000200000001000000040F34D108000000040000000A0F34D0FA0CFD9BFF0F350D080C9A86F80F878CF90000000100000008000000080000000400000008000000020F34D0F80CFD9BFB0000000A0F34D0FA0000000A0000000200000001000000030000000412070108000000040000000A120700FA08A912FF12073D0805000106135D4507000000030CFD9BF7000000080F34D100000000000CFD9BF90000000800000005135D81070CFD9BF7000000080F34D100000000000CFD9BF90F350CF8000000010000000800000008000000030000000412070108000000040000000800000002120700F808A912FB0000000A120700FA00000005000000020000000100000000"
theorem small_5309463_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5309463_left_root small_5309463_left_fuel small_5309463_left_count small_5309463_left_encoded = true := by
  decide +kernel
theorem small_5309463_left_covered : CoveredBy scale carrier boxes small_5309463_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5309463_left_root small_5309463_left_fuel small_5309463_left_count small_5309463_left_encoded small_5309463_left_checked

theorem cover_5309463 : CoveredBy scale carrier boxes root_5309463 := by
  apply coveredBy_split_literal root_5309463 small_5309463_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5309843 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5309463_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5309843
#print axioms cover_5309463

def root_5309457 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309457_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309457_left_fuel : Nat := 1
def small_5309457_left_count : Nat := 1
def small_5309457_left_encoded : String := "00000004"
theorem small_5309457_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5309457_left_root small_5309457_left_fuel small_5309457_left_count small_5309457_left_encoded = true := by
  decide +kernel
theorem small_5309457_left_covered : CoveredBy scale carrier boxes small_5309457_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5309457_left_root small_5309457_left_fuel small_5309457_left_count small_5309457_left_encoded small_5309457_left_checked

theorem cover_5309457 : CoveredBy scale carrier boxes root_5309457 := by
  apply coveredBy_split_literal root_5309457 small_5309457_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5309463 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5309457_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5309463
#print axioms cover_5309457

def root_5307111 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5307111 : CoveredBy scale carrier boxes root_5307111 := by
  apply coveredBy_split_literal root_5307111 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1989.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5309457 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1989.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5309457
#print axioms cover_5307111

def root_5307105 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5307105_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5307105_left_fuel : Nat := 1
def small_5307105_left_count : Nat := 1
def small_5307105_left_encoded : String := "00000003"
theorem small_5307105_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5307105_left_root small_5307105_left_fuel small_5307105_left_count small_5307105_left_encoded = true := by
  decide +kernel
theorem small_5307105_left_covered : CoveredBy scale carrier boxes small_5307105_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5307105_left_root small_5307105_left_fuel small_5307105_left_count small_5307105_left_encoded small_5307105_left_checked

theorem cover_5307105 : CoveredBy scale carrier boxes root_5307105 := by
  apply coveredBy_split_literal root_5307105 small_5307105_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5307111 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5307105_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5307111
#print axioms cover_5307105

def root_5324451 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5324451 : CoveredBy scale carrier boxes root_5324451 := by
  apply coveredBy_split_literal root_5324451 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1996.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1997.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1996.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1997.covered
#print axioms cover_5324451

def root_5324446 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5324446_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5324446_right_fuel : Nat := 1
def small_5324446_right_count : Nat := 1
def small_5324446_right_encoded : String := "00000004"
theorem small_5324446_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5324446_right_root small_5324446_right_fuel small_5324446_right_count small_5324446_right_encoded = true := by
  decide +kernel
theorem small_5324446_right_covered : CoveredBy scale carrier boxes small_5324446_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5324446_right_root small_5324446_right_fuel small_5324446_right_count small_5324446_right_encoded small_5324446_right_checked

theorem cover_5324446 : CoveredBy scale carrier boxes root_5324446 := by
  apply coveredBy_split_literal root_5324446 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5324451 small_5324446_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5324451
  · exact small_5324446_right_covered
#print axioms cover_5324446

def root_5331676 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5331676 : CoveredBy scale carrier boxes root_5331676 := by
  apply coveredBy_split_literal root_5331676 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1999.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2000.root coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1999.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2000.covered
#print axioms cover_5331676

def root_5331671 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331671_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331671_right_fuel : Nat := 1
def small_5331671_right_count : Nat := 1
def small_5331671_right_encoded : String := "00000004"
theorem small_5331671_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5331671_right_root small_5331671_right_fuel small_5331671_right_count small_5331671_right_encoded = true := by
  decide +kernel
theorem small_5331671_right_covered : CoveredBy scale carrier boxes small_5331671_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5331671_right_root small_5331671_right_fuel small_5331671_right_count small_5331671_right_encoded small_5331671_right_checked

theorem cover_5331671 : CoveredBy scale carrier boxes root_5331671 := by
  apply coveredBy_split_literal root_5331671 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5331676 small_5331671_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5331676
  · exact small_5331671_right_covered
#print axioms cover_5331671

def root_5331670 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331670_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331670_right_fuel : Nat := 23
def small_5331670_right_count : Nat := 275
def small_5331670_right_encoded : String := "1207010800000004045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D10600000003045489FF00000008000000080F350D06045489FF1386AD080C9A86F80F878CF9000000010C9A86FA0F878CFB00000002000000080F8750FB0C9A8706000000080F878D07000000080000000300000002000000080000000413867108000000040C9A86F80F878CF9000000010C9A86FA000000080F8750FB0C9A870600000008000000080000000200000008000000030F34D0FA00000008000000020F34D0F80CFD9BFB0F350CFA000000020CFD9C070F34D10600000003045489FF1386AD080C9A86FA000000060F8750FB00000006000000020000000413867108000000040C9A86FA000000060F8750FB067ECE770000000A00000006000000020F350D06045489FF1386AD080C9A86FA0000000A0F8750FB0000000A000000020000000413867108000000040000000A000000030F34D0FA0CFD9C07000000080F350D06045489FF00000008000000080000000300000002000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D10600000003045489FF000000061386710800000004000000060F350D06045489FF1386AD080C9A86F80F878CF9000000010C9A86FA0F878CFB000000020C9A87060F87510700000003022A45770000000800000006000000060F8750FB0C9A87060F87510700000003022A457713E20100067ECE7F12EA95080DE7C9F800000006000000080000000412EA59080000000400000008000000000000000600000006000000020F8750F90C9A86FA0F878CFB00000002000000080F8750FB0C9A87060F87510700000003022A45770000000813E1C50000000000067ECE7F00000006000000080F878D07000000050000000300000002000000010000000413867108000000040C9A86F80F878CF9000000010C9A86FA0F878CFB000000020C9A870600000008000000060F8750FB0C9A87060F87510700000003022A457700000008000000090F878D070000000600000003000000020F8750F90C9A86FA000000080F8750FB0C9A8706000000080F878D0700000008000000030000000200000001000000030F34D0FA0CFD9C07000000080F350D06045489FF000000080000000800000003000000020F34D0F80CFD9BFB0F350CFA000000020CFD9C070F34D10600000003000000060F350D06045489FF1386AD080C9A86FA0F878CFB000000020C9A87060F875107000000030000000A000000060F8750FB00000009000000020000000413867108000000040C9A86FA0F878CFB000000020C9A87060F875107000000030000000A000000060F8750FB0000000900000002000000030F34D0FA0CFD9C070F34D10600000003000000060F350D06045489FF1386AD080C9A87060F8751070000000300000005000000060000000413867108000000040C9A87060000000500000006000000030000000200000001"
theorem small_5331670_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5331670_right_root small_5331670_right_fuel small_5331670_right_count small_5331670_right_encoded = true := by
  decide +kernel
theorem small_5331670_right_covered : CoveredBy scale carrier boxes small_5331670_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5331670_right_root small_5331670_right_fuel small_5331670_right_count small_5331670_right_encoded small_5331670_right_checked

theorem cover_5331670 : CoveredBy scale carrier boxes root_5331670 := by
  apply coveredBy_split_literal root_5331670 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5331671 small_5331670_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5331671
  · exact small_5331670_right_covered
#print axioms cover_5331670

def root_5331665 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331665_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331665_right_fuel : Nat := 1
def small_5331665_right_count : Nat := 1
def small_5331665_right_encoded : String := "00000003"
theorem small_5331665_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5331665_right_root small_5331665_right_fuel small_5331665_right_count small_5331665_right_encoded = true := by
  decide +kernel
theorem small_5331665_right_covered : CoveredBy scale carrier boxes small_5331665_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5331665_right_root small_5331665_right_fuel small_5331665_right_count small_5331665_right_encoded small_5331665_right_checked

theorem cover_5331665 : CoveredBy scale carrier boxes root_5331665 := by
  apply coveredBy_split_literal root_5331665 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5331670 small_5331665_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5331670
  · exact small_5331665_right_covered
#print axioms cover_5331665

def root_5331489 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331489_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331489_left_fuel : Nat := 14
def small_5331489_left_count : Nat := 79
def small_5331489_left_encoded : String := "120701060000000308A912FF12073D08045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA0000000204548A07000000051386AD060CFD9BFF000000050F34D1080000000400000005000000030F34D0FA00000008000000020F34D0F80CFD9BFB0F350CFA0000000204548A07000000061386AD060CFD9BFF000000060F34D1080000000400000006000000030F34D0FA0000000600000002000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB000000060F34D0FA00000006000000020F34D0F80000000600000001000000041207010800000004045489F71386AD000CFD9BF90F350CF800000001000000080F34D0F80CFD9BFB000000060F34D0FA0000000600000002000000010000000013867100000000000CFD9BF9000000060F34D0F80000000600000001"
theorem small_5331489_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5331489_left_root small_5331489_left_fuel small_5331489_left_count small_5331489_left_encoded = true := by
  decide +kernel
theorem small_5331489_left_covered : CoveredBy scale carrier boxes small_5331489_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5331489_left_root small_5331489_left_fuel small_5331489_left_count small_5331489_left_encoded small_5331489_left_checked

theorem cover_5331489 : CoveredBy scale carrier boxes root_5331489 := by
  apply coveredBy_split_literal root_5331489 small_5331489_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5331665 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5331489_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5331665
#print axioms cover_5331489

def root_5331483 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331483_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331483_left_fuel : Nat := 1
def small_5331483_left_count : Nat := 1
def small_5331483_left_encoded : String := "00000002"
theorem small_5331483_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5331483_left_root small_5331483_left_fuel small_5331483_left_count small_5331483_left_encoded = true := by
  decide +kernel
theorem small_5331483_left_covered : CoveredBy scale carrier boxes small_5331483_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5331483_left_root small_5331483_left_fuel small_5331483_left_count small_5331483_left_encoded small_5331483_left_checked

theorem cover_5331483 : CoveredBy scale carrier boxes root_5331483 := by
  apply coveredBy_split_literal root_5331483 small_5331483_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.root_5331489 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5331483_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375.cover_5331489
#print axioms cover_5331483

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0375
