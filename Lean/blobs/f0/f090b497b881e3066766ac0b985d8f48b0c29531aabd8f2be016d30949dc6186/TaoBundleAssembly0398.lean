import TaoBundleAssembly0397
import TaoBundleChunkBatch0533
import TaoBundleChunkBatch0534
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398
def root_5683387 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5683387_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5683387_left_fuel : Nat := 19
def small_5683387_left_count : Nat := 223
def small_5683387_left_encoded : String := "1386AD080C9A87000F8750F70C9A86F80F878CF90000000107800104128A410500000002078000FC128A7CFD00000003067ECE7F0000000612EA5908000000040B4D4400108010F70DE7C9F80E6014F90000000100000006000000070000000000000006128A40FD067ECE7F0000000612EA5908000000040B4D4400000000070000000600000003128A7D05078000FC128A7CFD00000003067ECE7F12EA95080B4D440000000007000000060000000412EA5908000000040B4D44000000000710804CF7000000000DE7C9F80E6014F9000000010000000700000007128A40FD067ECE7F000000070000000700000003000000020F8750F907800104128A410500000002078000FC128A7CFD00000003067ECE7F12EA95080B4D44000000000A10804CF7000000000000000A0000000412EA5908000000040B4D4400108010F70B4D43F810804CF90000000100000007000000070000000010804CF7000000000B4D43F810804CF9000000010640010412FF71050000000208C000FC000000060000000612FFAD050000000700000002108010F9064001040000000A0000000500000001128A40FD067ECE7F0000000512EA5908000000040B4D4400000000070000000500000003128A7D05078000FC128A7CFD00000003067ECE7F0000000512EA5908000000040B4D44000000000700000005000000050000000200000001000000000F878CF7000000000C9A86F80F878CF90000000107800104128A41050000000200000006128A7D05078000FC128A7CFD00000003067ECE7F0000000612EA5908000000040DE7CA000E5FD8F70DE7C9F80E6014F900000001000000060E5FD8F908C001040000000600000007000000010000000000000006128A40FD067ECE7F0000000612EA5908000000040DE7CA000E5FD8F700000007000000000000000600000003000000020F8750F907800104128A410500000002078000FC128A7CFD00000003067ECE7F0000000612EA5908000000040DE7CA000E5FD8F70B4D43F810804CF90000000100000006108010F9064001040000000A00000005000000010000000000000006128A40FD067ECE7F0000000512EA5908000000040DE7CA000E5FD8F700000005000000000000000500000003128A7D05078000FC128A7CFD00000003067ECE7F0000000512EA5908000000040DE7CA000E5FD8F700000005000000000000000500000005000000020000000100000004"
theorem small_5683387_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5683387_left_root small_5683387_left_fuel small_5683387_left_count small_5683387_left_encoded = true := by
  decide +kernel
theorem small_5683387_left_covered : CoveredBy scale carrier boxes small_5683387_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5683387_left_root small_5683387_left_fuel small_5683387_left_count small_5683387_left_encoded small_5683387_left_checked

theorem cover_5683387 : CoveredBy scale carrier boxes root_5683387 := by
  apply coveredBy_split_literal root_5683387 small_5683387_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2133.root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5683387_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2133.covered
#print axioms cover_5683387

def root_5683381 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5683381_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5683381_left_fuel : Nat := 1
def small_5683381_left_count : Nat := 1
def small_5683381_left_encoded : String := "00000001"
theorem small_5683381_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5683381_left_root small_5683381_left_fuel small_5683381_left_count small_5683381_left_encoded = true := by
  decide +kernel
theorem small_5683381_left_covered : CoveredBy scale carrier boxes small_5683381_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5683381_left_root small_5683381_left_fuel small_5683381_left_count small_5683381_left_encoded small_5683381_left_checked

theorem cover_5683381 : CoveredBy scale carrier boxes root_5683381 := by
  apply coveredBy_split_literal root_5683381 small_5683381_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.root_5683387 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5683381_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.cover_5683387
#print axioms cover_5683381

def root_5683380 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5683380_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5683380_right_fuel : Nat := 15
def small_5683380_right_count : Nat := 89
def small_5683380_right_encoded : String := "0F34D0F8045489FF1386AD080C9A87000F8750F70780010400000006128A7D05078000FC00000006128A40FD0AD357790000000600000006000000030000000200000000000000060000000413867108000000040C9A87000F8750F707800104128A410500000002078000FC128A7CFD000000030AD3577910D13CF800000001022A457F0000000613E1C508000000040B4D4400000000050000000800000006128A40FD0AD3577910D13CF800000001022A457F00000006000000070000000600000003128A7D05078000FC128A7CFD000000030AD3577910D13CF800000001022A457F13E2010800000007000000040000000710D100F80000000800000001128A40FD000000070000000300000002000000000F878CF70000000007800104128A410500000002078000FC0000000600000006128A7D05078000FC128A7CFD000000030AD3577910D13CF8000000010000000800000006000000080000000200000001"
theorem small_5683380_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5683380_right_root small_5683380_right_fuel small_5683380_right_count small_5683380_right_encoded = true := by
  decide +kernel
theorem small_5683380_right_covered : CoveredBy scale carrier boxes small_5683380_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5683380_right_root small_5683380_right_fuel small_5683380_right_count small_5683380_right_encoded small_5683380_right_checked

theorem cover_5683380 : CoveredBy scale carrier boxes root_5683380 := by
  apply coveredBy_split_literal root_5683380 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.root_5683381 small_5683380_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.cover_5683381
  · exact small_5683380_right_covered
#print axioms cover_5683380

def root_5683375 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5683375_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5683375_right_fuel : Nat := 1
def small_5683375_right_count : Nat := 1
def small_5683375_right_encoded : String := "00000000"
theorem small_5683375_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5683375_right_root small_5683375_right_fuel small_5683375_right_count small_5683375_right_encoded = true := by
  decide +kernel
theorem small_5683375_right_covered : CoveredBy scale carrier boxes small_5683375_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5683375_right_root small_5683375_right_fuel small_5683375_right_count small_5683375_right_encoded small_5683375_right_checked

theorem cover_5683375 : CoveredBy scale carrier boxes root_5683375 := by
  apply coveredBy_split_literal root_5683375 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.root_5683380 small_5683375_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.cover_5683380
  · exact small_5683375_right_covered
#print axioms cover_5683375

def root_5683374 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5683374_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5683374_right_fuel : Nat := 31
def small_5683374_right_count : Nat := 265
def small_5683374_right_encoded : String := "0F34D100000000000CFD9BF90F350CF800000001045489FF1386AD080C9A86F80F878CF900000001000000060F8750F907800104128A41050000000200000006128A7D05078000FC128A7CFD000000030AD3577710D13D00067ECE7F0000000512EA5908000000040B4D43F810804CF90000000100000006000000050000000010D101000000000000000006128A40FD000000050000000300000002000000010000000413867108000000040C9A86F80F878CF90000000107800104128A410500000002078000FC0000000600000008128A7D05078000FC128A7CFD000000030AD3577710D13D00022A457F13E201080DE7C9F8000000060E5FD8F9000000060000000100000004000000080000000010D10100000000000000000800000008000000020F8750F907800104128A410500000002078000FC128A7CFD000000030AD3577710D13D00022A457F13E201080B4D43F800000006108010F9064001040000000612FFAD0508C000FC000000060000000500000002000000010000000413E1C508000000040B4D43F810804CF900000001064001040000000812FFAD050000000800000002108010F90640010412FF71050000000208C000FC11FC24FD000000030BE879B71011AD000115233F0000000613F85908000000040AA6A2780000000810ED70F905A001041331350500000002096000FC0000000600000008133171050000000800000002000000010000000010117100000000000000000611FBE8FD0BE879B700000008000000080000000312FFAD0508C000FC11FC24FD000000030BE879B71011AD000115233F13F895080AA6A27810EDACF90000000106E001040000000600000005000000050000000413F85908000000040AA6A2780000000810ED70F900000005000000010000000010117100000000000000000811FBE8FD0BE879B700000005000000080000000300000002000000010000000010D1010000000000022A457F0000000600000008128A40FD0AD3577710D13D00022A457F13E201080B4D43F8000000060000000500000004000000080000000010D10100000000000000000800000003128A7D05078000FC128A7CFD000000030AD3577710D13D00022A457F13E201080B4D43F810804CF90000000108C0010411FBE9050000000208C000FC000000060000000500000005000000050000000413E1C508000000040B4D43F810804CF90000000108C001040000000811FC25050000000800000002108010F908C0010411FBE9050000000208C000FC11FC24FD000000030BE879B7000000051011710000000000000000050000000500000005000000010000000010D1010000000000022A457F13E201080B4D43F810804CF90000000100000006000000050000000400000008128A40FD0AD357770000000510D1010000000000000000050000000300000002000000010F34D0F80000000600000001"
theorem small_5683374_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5683374_right_root small_5683374_right_fuel small_5683374_right_count small_5683374_right_encoded = true := by
  decide +kernel
theorem small_5683374_right_covered : CoveredBy scale carrier boxes small_5683374_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5683374_right_root small_5683374_right_fuel small_5683374_right_count small_5683374_right_encoded small_5683374_right_checked

theorem cover_5683374 : CoveredBy scale carrier boxes root_5683374 := by
  apply coveredBy_split_literal root_5683374 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.root_5683375 small_5683374_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.cover_5683375
  · exact small_5683374_right_covered
#print axioms cover_5683374

def root_5683368 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5683368_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5683368_left_fuel : Nat := 1
def small_5683368_left_count : Nat := 1
def small_5683368_left_encoded : String := "00000003"
theorem small_5683368_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5683368_left_root small_5683368_left_fuel small_5683368_left_count small_5683368_left_encoded = true := by
  decide +kernel
theorem small_5683368_left_covered : CoveredBy scale carrier boxes small_5683368_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5683368_left_root small_5683368_left_fuel small_5683368_left_count small_5683368_left_encoded small_5683368_left_checked

theorem cover_5683368 : CoveredBy scale carrier boxes root_5683368 := by
  apply coveredBy_split_literal root_5683368 small_5683368_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.root_5683374 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5683368_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.cover_5683374
#print axioms cover_5683368

def root_5683367 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5683367_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5683367_right_fuel : Nat := 18
def small_5683367_right_count : Nat := 139
def small_5683367_right_encoded : String := "135D44FD0CFD9BF70F350D000CFD9BF90F350CF800000001045489FF1386AD080C9A87000F8750F70C9A86F80F878CF90000000107800104128A410500000002028000FC13D7ECFD00000003067ECE7F000000060000000700000007128A7D05028000FC0000000700000005000000020F8750F90000000500000001000000000F878CF7000000000C9A86F80F878CF90000000107800104128A41050000000200000006128A7D0500000005000000020F8750F900000005000000010000000413867108000000040C9A87000F8750F70C9A86F80F878CF90000000107800104128A41050000000200000009000000070F8750F907800104128A410500000002028000FC00000007000000050000000500000001000000000F878CF7000000000C9A86F80F878CF900000001000000080F8750F907800104128A410500000002028000FC13D7ECFD00000003022A457F0000000513E1C50800000004000000050000000500000005000000010F34D0F8045489FF1386AD080C9A87000F8750F707800104128A41050000000200000006128A7D05028000FC0000000700000007000000020000000000000006000000040000000800000001000000000F34D100000000000CFD9BF90F350CF800000001045489FF1386AD080C9A86F80F878CF900000001000000060F8750F900000005000000010000000413867108000000040C9A86F8000000080F8750F9078001040000000800000005000000010F34D0F8000000080000000100000003"
theorem small_5683367_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5683367_right_root small_5683367_right_fuel small_5683367_right_count small_5683367_right_encoded = true := by
  decide +kernel
theorem small_5683367_right_covered : CoveredBy scale carrier boxes small_5683367_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5683367_right_root small_5683367_right_fuel small_5683367_right_count small_5683367_right_encoded small_5683367_right_checked

theorem cover_5683367 : CoveredBy scale carrier boxes root_5683367 := by
  apply coveredBy_split_literal root_5683367 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.root_5683368 small_5683367_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.cover_5683368
  · exact small_5683367_right_covered
#print axioms cover_5683367

def root_5683362 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5683362_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5683362_right_fuel : Nat := 1
def small_5683362_right_count : Nat := 1
def small_5683362_right_encoded : String := "00000002"
theorem small_5683362_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5683362_right_root small_5683362_right_fuel small_5683362_right_count small_5683362_right_encoded = true := by
  decide +kernel
theorem small_5683362_right_covered : CoveredBy scale carrier boxes small_5683362_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5683362_right_root small_5683362_right_fuel small_5683362_right_count small_5683362_right_encoded small_5683362_right_checked

theorem cover_5683362 : CoveredBy scale carrier boxes root_5683362 := by
  apply coveredBy_split_literal root_5683362 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.root_5683367 small_5683362_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.cover_5683367
  · exact small_5683362_right_covered
#print axioms cover_5683362

def root_5681086 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5681086 : CoveredBy scale carrier boxes root_5681086 := by
  apply coveredBy_split_literal root_5681086 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2132.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.root_5683362 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2132.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.cover_5683362
#print axioms cover_5681086

def root_5681080 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5681080_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5681080_left_fuel : Nat := 1
def small_5681080_left_count : Nat := 1
def small_5681080_left_encoded : String := "00000004"
theorem small_5681080_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5681080_left_root small_5681080_left_fuel small_5681080_left_count small_5681080_left_encoded = true := by
  decide +kernel
theorem small_5681080_left_covered : CoveredBy scale carrier boxes small_5681080_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5681080_left_root small_5681080_left_fuel small_5681080_left_count small_5681080_left_encoded small_5681080_left_checked

theorem cover_5681080 : CoveredBy scale carrier boxes root_5681080 := by
  apply coveredBy_split_literal root_5681080 small_5681080_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.root_5681086 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5681080_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.cover_5681086
#print axioms cover_5681080

def root_5680886 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5680886_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5680886_left_fuel : Nat := 21
def small_5680886_left_count : Nat := 93
def small_5680886_left_encoded : String := "12073D0805000104135D450500000002050000FC00000006135D44FD0000000600000003135D8105050000FC135D80FD000000030CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFF000000060F34D108000000040C9A87000F8750F70C9A86F80F878CF9000000010780010400000006128A7D05078000FC00000006128A40FD0000000600000003000000020F8750F9078001040000000A128A7D05078000FC128A7CFD000000030AD3577F0000000500000007000000050000000200000001000000000F878CF7000000000C9A86F8000000060F8750F90780010400000006128A7D05078000FC0000000600000005000000020000000100000006000000000F34D1000000000000000006135D44FD0CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFF000000060F34D108000000040C9A87000000000A0F878CF7000000000C9A86F8000000060000000500000006000000000F34D1000000000000000006000000030000000200000004"
theorem small_5680886_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5680886_left_root small_5680886_left_fuel small_5680886_left_count small_5680886_left_encoded = true := by
  decide +kernel
theorem small_5680886_left_covered : CoveredBy scale carrier boxes small_5680886_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5680886_left_root small_5680886_left_fuel small_5680886_left_count small_5680886_left_encoded small_5680886_left_checked

theorem cover_5680886 : CoveredBy scale carrier boxes root_5680886 := by
  apply coveredBy_split_literal root_5680886 small_5680886_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.root_5681080 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5680886_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.cover_5681080
#print axioms cover_5680886

def root_5680880 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5680880_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5680880_left_fuel : Nat := 1
def small_5680880_left_count : Nat := 1
def small_5680880_left_encoded : String := "00000001"
theorem small_5680880_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5680880_left_root small_5680880_left_fuel small_5680880_left_count small_5680880_left_encoded = true := by
  decide +kernel
theorem small_5680880_left_covered : CoveredBy scale carrier boxes small_5680880_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5680880_left_root small_5680880_left_fuel small_5680880_left_count small_5680880_left_encoded small_5680880_left_checked

theorem cover_5680880 : CoveredBy scale carrier boxes root_5680880 := by
  apply coveredBy_split_literal root_5680880 small_5680880_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.root_5680886 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5680880_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.cover_5680886
#print axioms cover_5680880

def root_5680879 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5680879_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5680879_right_fuel : Nat := 7
def small_5680879_right_count : Nat := 13
def small_5680879_right_encoded : String := "120700F808A912FF0000000612070108000000040500010400000006135D8105050000FC00000006000000080000000200000001"
theorem small_5680879_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5680879_right_root small_5680879_right_fuel small_5680879_right_count small_5680879_right_encoded = true := by
  decide +kernel
theorem small_5680879_right_covered : CoveredBy scale carrier boxes small_5680879_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5680879_right_root small_5680879_right_fuel small_5680879_right_count small_5680879_right_encoded small_5680879_right_checked

theorem cover_5680879 : CoveredBy scale carrier boxes root_5680879 := by
  apply coveredBy_split_literal root_5680879 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.root_5680880 small_5680879_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.cover_5680880
  · exact small_5680879_right_covered
#print axioms cover_5680879

def root_5680874 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5680874_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5680874_right_fuel : Nat := 1
def small_5680874_right_count : Nat := 1
def small_5680874_right_encoded : String := "00000000"
theorem small_5680874_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5680874_right_root small_5680874_right_fuel small_5680874_right_count small_5680874_right_encoded = true := by
  decide +kernel
theorem small_5680874_right_covered : CoveredBy scale carrier boxes small_5680874_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5680874_right_root small_5680874_right_fuel small_5680874_right_count small_5680874_right_encoded small_5680874_right_checked

theorem cover_5680874 : CoveredBy scale carrier boxes root_5680874 := by
  apply coveredBy_split_literal root_5680874 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.root_5680879 small_5680874_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.cover_5680879
  · exact small_5680874_right_covered
#print axioms cover_5680874

def root_5680873 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5680873_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5680873_right_fuel : Nat := 25
def small_5680873_right_count : Nat := 99
def small_5680873_right_encoded : String := "120701000000000008A912F912073CF80000000108A912FF00000006120701080000000405000104135D450500000002050000FC00000006135D44FD0000000600000003135D8105050000FC135D80FD00000003045489F71386AD000CFD9BF90F350CF800000001045489FF0000000613867108000000040C9A86F80F878CF900000001000000080F8750F907800104128A410500000002078000FC0000000600000006128A7D05078000FC128A7CFD00000003067ECE7712EA9500022A457F00000006000000080000000012EA59000000000000000008000000080000000200000001000000060000000013867100000000000CFD9BF90F350CF800000001045489FF0000000613867108000000040C9A86F8000000060F8750F90780010400000006128A7D0500000008000000020000000100000006135D44FD045489F71386AD000CFD9BF90F350CF800000001045489FF0000000600000008000000060000000013867100000000000CFD9BF90F350CF8000000010000000800000006000000030000000200000006"
theorem small_5680873_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5680873_right_root small_5680873_right_fuel small_5680873_right_count small_5680873_right_encoded = true := by
  decide +kernel
theorem small_5680873_right_covered : CoveredBy scale carrier boxes small_5680873_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5680873_right_root small_5680873_right_fuel small_5680873_right_count small_5680873_right_encoded small_5680873_right_checked

theorem cover_5680873 : CoveredBy scale carrier boxes root_5680873 := by
  apply coveredBy_split_literal root_5680873 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.root_5680874 small_5680873_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.cover_5680874
  · exact small_5680873_right_covered
#print axioms cover_5680873

def root_5680867 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5680867_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5680867_left_fuel : Nat := 1
def small_5680867_left_count : Nat := 1
def small_5680867_left_encoded : String := "00000004"
theorem small_5680867_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5680867_left_root small_5680867_left_fuel small_5680867_left_count small_5680867_left_encoded = true := by
  decide +kernel
theorem small_5680867_left_covered : CoveredBy scale carrier boxes small_5680867_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5680867_left_root small_5680867_left_fuel small_5680867_left_count small_5680867_left_encoded small_5680867_left_checked

theorem cover_5680867 : CoveredBy scale carrier boxes root_5680867 := by
  apply coveredBy_split_literal root_5680867 small_5680867_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.root_5680873 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5680867_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.cover_5680873
#print axioms cover_5680867

def root_5680859 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5680859_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5680859_left_fuel : Nat := 2
def small_5680859_left_count : Nat := 3
def small_5680859_left_encoded : String := "1151E8FF0000000600000004"
theorem small_5680859_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5680859_left_root small_5680859_left_fuel small_5680859_left_count small_5680859_left_encoded = true := by
  decide +kernel
theorem small_5680859_left_covered : CoveredBy scale carrier boxes small_5680859_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5680859_left_root small_5680859_left_fuel small_5680859_left_count small_5680859_left_encoded small_5680859_left_checked

theorem cover_5680859 : CoveredBy scale carrier boxes root_5680859 := by
  apply coveredBy_split_literal root_5680859 small_5680859_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.root_5680867 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5680859_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.cover_5680867
#print axioms cover_5680859

def root_5680854 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5680854_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5680854_right_fuel : Nat := 1
def small_5680854_right_count : Nat := 1
def small_5680854_right_encoded : String := "00000003"
theorem small_5680854_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5680854_right_root small_5680854_right_fuel small_5680854_right_count small_5680854_right_encoded = true := by
  decide +kernel
theorem small_5680854_right_covered : CoveredBy scale carrier boxes small_5680854_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5680854_right_root small_5680854_right_fuel small_5680854_right_count small_5680854_right_encoded small_5680854_right_checked

theorem cover_5680854 : CoveredBy scale carrier boxes root_5680854 := by
  apply coveredBy_split_literal root_5680854 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.root_5680859 small_5680854_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.cover_5680859
  · exact small_5680854_right_covered
#print axioms cover_5680854

def root_5665978 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5665978 : CoveredBy scale carrier boxes root_5665978 := by
  apply coveredBy_split_literal root_5665978 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5665979 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.root_5680854 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5665979
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.cover_5680854
#print axioms cover_5665978

def root_5665972 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5665972_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5665972_left_fuel : Nat := 1
def small_5665972_left_count : Nat := 1
def small_5665972_left_encoded : String := "00000002"
theorem small_5665972_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5665972_left_root small_5665972_left_fuel small_5665972_left_count small_5665972_left_encoded = true := by
  decide +kernel
theorem small_5665972_left_covered : CoveredBy scale carrier boxes small_5665972_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5665972_left_root small_5665972_left_fuel small_5665972_left_count small_5665972_left_encoded small_5665972_left_checked

theorem cover_5665972 : CoveredBy scale carrier boxes root_5665972 := by
  apply coveredBy_split_literal root_5665972 small_5665972_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.root_5665978 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5665972_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.cover_5665978
#print axioms cover_5665972

def root_5689548 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5689548_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5689548_right_fuel : Nat := 26
def small_5689548_right_count : Nat := 319
def small_5689548_right_encoded : String := "0F34D100000000000CFD9BF90F350CF8000000010CFD9C050F34D104000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F80F878CF9000000010C9A86FC0000000A0F8750FD000000050000000300000009000000040000000A0F34D0FC00000009000000030F350D040CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F80F878CF9000000010C9A87040F875105000000020C9A86FC0F878CFD00000003000000090F8750FD0AD3577710D13D00067ECE7F0000000612EA5908000000040DE7C9F80E6014F900000001000000060E5FD8F900000009000000010000000010D101000000000000000006000000030F878D050C9A86FC0F878CFD00000003000000090F8750FD0AD3577710D13D00067ECE7F000000090000000A0000000010D10100000000000000000900000003000000020F8750F90C9A87040F875105000000020C9A86FC000000090F8750FD0AD357770000000900000009000000030F878D050000000900000002000000010000000413867108000000040C9A86F80F878CF9000000010C9A87040F875105000000020C9A86FC0F878CFD000000030AD357770000000A10D10100000000000000000A0F8750FD0AD3577710D13D00022A457F13E201080DE7C9F80000000A0E5FD8F90B4D440410801105000000020B4D43FC0000000A108010FD0000000A000000030000000A00000001000000040000000A0000000010D1010000000000022A457F13E201080DE7C9F80000000A0E5FD8F90000000A000000010000000400000008000000030F878D050C9A86FC0000000A0F8750FD0000000A00000003000000020F8750F90C9A87040F875105000000020C9A86FC0F878CFD000000030AD3577710D13D00022A457F000000090000000A00000000000000090F8750FD0AD3577710D13D00022A457F13E201080B4D43F810804CF9000000010B4D4404000000090000000A00000009000000040000000A0000000010D1010000000000022A457F000000090000000A000000030F878D050C9A86FC0000000A0F8750FD0000000A0000000300000002000000010F34D0FC045489FF0000000913867108000000040C9A86F80F878CF9000000010C9A87040F875105000000020AD3577700000009000000090000000A0F8750F9000000090000000100000003000000020F34D0F80CFD9C050F34D104000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FC0000000A0F8750FD0000000A00000003000000040000000A0F34D0FC0000000A000000030F350D040CFD9BFD0F350CFC00000003045489FF1386AD080C9A87040F875105000000020C9A86FC000000060F8750FD00000006000000030F878D050C9A86FC0F878CFD000000030AD3577710D13D000AD357790000000A10D100F800000006000000010000000010D10100000000000AD3577900000009000000060F8750FD0AD3577710D13D000AD3577910D13CF800000001067ECE7F000000060000000A000000060000000010D10100000000000000000600000003000000020000000413867108000000040C9A87040F875105000000020C9A86FC0F878CFD000000030AD357770000000A10D10100000000000000000A0F8750FD0AD357770000000800000008000000030F878D050000000A000000020F34D0FC045489FF1386AD080C9A8704000000090F878D0500000009000000020000000413867108000000040C9A87040000000A0000000A000000030000000200000001"
theorem small_5689548_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5689548_right_root small_5689548_right_fuel small_5689548_right_count small_5689548_right_encoded = true := by
  decide +kernel
theorem small_5689548_right_covered : CoveredBy scale carrier boxes small_5689548_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5689548_right_root small_5689548_right_fuel small_5689548_right_count small_5689548_right_encoded small_5689548_right_checked

theorem cover_5689548 : CoveredBy scale carrier boxes root_5689548 := by
  apply coveredBy_split_literal root_5689548 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2134.root small_5689548_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2134.covered
  · exact small_5689548_right_covered
#print axioms cover_5689548

def root_5689542 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5689542_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5689542_left_fuel : Nat := 1
def small_5689542_left_count : Nat := 1
def small_5689542_left_encoded : String := "00000004"
theorem small_5689542_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5689542_left_root small_5689542_left_fuel small_5689542_left_count small_5689542_left_encoded = true := by
  decide +kernel
theorem small_5689542_left_covered : CoveredBy scale carrier boxes small_5689542_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5689542_left_root small_5689542_left_fuel small_5689542_left_count small_5689542_left_encoded small_5689542_left_checked

theorem cover_5689542 : CoveredBy scale carrier boxes root_5689542 := by
  apply coveredBy_split_literal root_5689542 small_5689542_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.root_5689548 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5689542_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398.cover_5689548
#print axioms cover_5689542

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0398
