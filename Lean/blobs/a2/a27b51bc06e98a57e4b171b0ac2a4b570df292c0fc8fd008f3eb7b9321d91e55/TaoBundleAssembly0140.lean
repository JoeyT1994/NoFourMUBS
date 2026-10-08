import TaoBundleAssembly0139
import TaoBundleChunkBatch0533
import TaoBundleChunkBatch0534
import TaoBundleChunkBatch0535
import TaoBundleChunkBatch0536
import TaoBundleChunkBatch0537
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140
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
  apply coveredBy_split_literal root_5683380 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5683381 small_5683380_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5683381
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
  apply coveredBy_split_literal root_5683375 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5683380 small_5683375_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5683380
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
  apply coveredBy_split_literal root_5683374 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5683375 small_5683374_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5683375
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
  apply coveredBy_split_literal root_5683368 small_5683368_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5683374 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5683368_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5683374
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
  apply coveredBy_split_literal root_5683367 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5683368 small_5683367_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5683368
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
  apply coveredBy_split_literal root_5683362 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5683367 small_5683362_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5683367
  · exact small_5683362_right_covered
#print axioms cover_5683362

def root_5681086 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5681086 : CoveredBy scale carrier boxes root_5681086 := by
  apply coveredBy_split_literal root_5681086 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2132.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5683362 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2132.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5683362
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
  apply coveredBy_split_literal root_5681080 small_5681080_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5681086 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5681080_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5681086
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
  apply coveredBy_split_literal root_5680886 small_5680886_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5681080 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5680886_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5681080
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
  apply coveredBy_split_literal root_5680880 small_5680880_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5680886 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5680880_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5680886
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
  apply coveredBy_split_literal root_5680879 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5680880 small_5680879_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5680880
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
  apply coveredBy_split_literal root_5680874 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5680879 small_5680874_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5680879
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
  apply coveredBy_split_literal root_5680873 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5680874 small_5680873_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5680874
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
  apply coveredBy_split_literal root_5680867 small_5680867_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5680873 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5680867_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5680873
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
  apply coveredBy_split_literal root_5680859 small_5680859_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5680867 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5680859_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5680867
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
  apply coveredBy_split_literal root_5680854 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5680859 small_5680854_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5680859
  · exact small_5680854_right_covered
#print axioms cover_5680854

def root_5665978 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5665978 : CoveredBy scale carrier boxes root_5665978 := by
  apply coveredBy_split_literal root_5665978 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5665979 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5680854 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5665979
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5680854
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
  apply coveredBy_split_literal root_5665972 small_5665972_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5665978 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5665972_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5665978
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
  apply coveredBy_split_literal root_5689542 small_5689542_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5689548 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5689542_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5689548
#print axioms cover_5689542

def root_5688704 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688704_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688704_left_fuel : Nat := 26
def small_5688704_left_count : Nat := 385
def small_5688704_left_encoded : String := "12073D080CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000009000000040F34D108000000040C9A87000F8750F70C9A86F80F878CF9000000010C9A86FC0F878CFD00000003000000090000000500000005000000000F878CF700000000000000090F34D0FC00000009000000030F350D040CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A87000F8750F70C9A86F80F878CF9000000010C9A8704000000090F878D05000000090000000200000009000000000F878CF70000000000000009000000040F34D108000000040C9A87000F8750F70C9A86F80F878CF9000000010C9A87040F875105000000020C9A86FC0F878CFD000000030AD3577F0000000910D10108000000040B4D4400108010F70000000900000000000000090F8750FD0AD3577F10D13D08000000060000000410D10108000000040B4D44000000000710804CF7000000000DE7C9F80E6014F9000000010000000600000007000000030F878D050C9A86FC0F878CFD00000003000000090F8750FD0AD3577F000000050000000700000003000000020F8750F90C9A87040F875105000000020C9A86FC000000090F8750FD0AD3577F0000000510D101080000000400000005000000030F878D050C9A86FC00000009000000050000000200000001000000000F878CF7000000000C9A86F80F878CF9000000010C9A87040F875105000000020C9A86FC000000090F8750FD00000006000000030F878D050C9A86FC000000090F8750FD0AD3577F0000000510D10108000000040000000900000003000000020F8750F90C9A87040000000900000009000000010F34D0FC0CFD9BFF000000090F34D108000000040C9A87000F8750F700000009000000000000000900000003000000020F34D0F80CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A87000F8750F70C9A86FC000000090F8750FD00000007000000030000000000000009000000040F34D108000000040C9A87000F8750F70C9A86FC0F878CFD000000030AD3577910D13CF8000000010000000910D100F80AD357850000000710D13D040000000700000002000000010F8750FD0000000700000003000000000F878CF7000000000C9A86FC0F878CFD00000003000000090F8750FD0AD3577910D13CF8000000010000000700000007000000030F34D0FC0CFD9BFF000000090F34D1080000000400000009000000030F350D040CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000006000000040F34D108000000040C9A87000F8750F70C9A87040F875105000000020C9A86FC000000060F8750FD00000006000000030F878D050C9A86FC0F878CFD000000030AD3577910D13CF8000000010AD3577F0000000910D10108000000040B4D4400108010F700000009000000000000000910D100F80AD3577F0000000610D10108000000040B4D4400108010F7000000070000000000000006000000010F8750FD0AD3577910D13CF8000000010AD3577F000000070000000710D100F800000006000000010000000300000002000000000F878CF7000000000C9A87040F87510500000002000000060F878D050C9A86FC0F878CFD000000030AD3577900000009000000060F8750FD0000000600000003000000020F34D0FC0CFD9BFF0F350D0800000009000000040F34D108000000040C9A87000F8750F70C9A8704000000090F878D050000000900000002000000000F878CF70000000000000009000000030000000200000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000090F350D040CFD9BFD0F350CFC000000030CFD9BFF000000090F34D108000000040C9A86F80F878CF9000000010C9A870400000009000000090000000900000009000000020F34D0F80CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF000000090F34D108000000040C9A86FC000000090F8750FD0AD357770000000910D10100000000000000000900000003000000090F350D040CFD9BFD000000060F34D0FC0000000900000003000000020000000100000004"
theorem small_5688704_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5688704_left_root small_5688704_left_fuel small_5688704_left_count small_5688704_left_encoded = true := by
  decide +kernel
theorem small_5688704_left_covered : CoveredBy scale carrier boxes small_5688704_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5688704_left_root small_5688704_left_fuel small_5688704_left_count small_5688704_left_encoded small_5688704_left_checked

theorem cover_5688704 : CoveredBy scale carrier boxes root_5688704 := by
  apply coveredBy_split_literal root_5688704 small_5688704_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5689542 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5688704_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5689542
#print axioms cover_5688704

def root_5688698 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688698_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688698_left_fuel : Nat := 1
def small_5688698_left_count : Nat := 1
def small_5688698_left_encoded : String := "00000003"
theorem small_5688698_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5688698_left_root small_5688698_left_fuel small_5688698_left_count small_5688698_left_encoded = true := by
  decide +kernel
theorem small_5688698_left_covered : CoveredBy scale carrier boxes small_5688698_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5688698_left_root small_5688698_left_fuel small_5688698_left_count small_5688698_left_encoded small_5688698_left_checked

theorem cover_5688698 : CoveredBy scale carrier boxes root_5688698 := by
  apply coveredBy_split_literal root_5688698 small_5688698_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5688704 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5688698_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5688704
#print axioms cover_5688698

def root_5688697 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688697_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688697_right_fuel : Nat := 18
def small_5688697_right_count : Nat := 105
def small_5688697_right_encoded : String := "120700FC08A912FF12073D080CFD9BF70F350D000CFD9BF90F350CF800000001000000090F34D0F80CFD9C05000000090F350D04000000090000000200000001000000000F34D10000000000000000090000000412070108000000040CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9C050F34D10400000002045489FD1386ACFC00000003045489FF000000090000000A000000090F350D04045489FD1386ACFC00000003045489FF0000000913867108000000040C9A87000F8750F70C9A86F80000000A0F8750F90000000900000001000000000F878CF70000000000000009138670FC0000000900000003000000020F34D0F80CFD9C050F34D104000000020000000A0F350D04045489FD1386ACFC00000003045489FF1386AD080C9A870000000005000000090000000400000005000000050000000200000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9C05000000090F350D0400000009000000020F34D0F80CFD9C05000000090F350D04045489FD1386ACFC00000003045489FF000000090000000500000005000000020000000100000003"
theorem small_5688697_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5688697_right_root small_5688697_right_fuel small_5688697_right_count small_5688697_right_encoded = true := by
  decide +kernel
theorem small_5688697_right_covered : CoveredBy scale carrier boxes small_5688697_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5688697_right_root small_5688697_right_fuel small_5688697_right_count small_5688697_right_encoded small_5688697_right_checked

theorem cover_5688697 : CoveredBy scale carrier boxes root_5688697 := by
  apply coveredBy_split_literal root_5688697 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5688698 small_5688697_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5688698
  · exact small_5688697_right_covered
#print axioms cover_5688697

def root_5688692 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688692_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688692_right_fuel : Nat := 1
def small_5688692_right_count : Nat := 1
def small_5688692_right_encoded : String := "00000002"
theorem small_5688692_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5688692_right_root small_5688692_right_fuel small_5688692_right_count small_5688692_right_encoded = true := by
  decide +kernel
theorem small_5688692_right_covered : CoveredBy scale carrier boxes small_5688692_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5688692_right_root small_5688692_right_fuel small_5688692_right_count small_5688692_right_encoded small_5688692_right_checked

theorem cover_5688692 : CoveredBy scale carrier boxes root_5688692 := by
  apply coveredBy_split_literal root_5688692 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5688697 small_5688692_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5688697
  · exact small_5688692_right_covered
#print axioms cover_5688692

def root_5688444 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688444_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688444_left_fuel : Nat := 17
def small_5688444_left_count : Nat := 115
def small_5688444_left_encoded : String := "120701040000000208A912FD12073CFC0000000308A912FF12073D080CFD9BF70F350D000CFD9BF90F350CF80000000104548A05000000091386AD040CFD9BFD0F350CFC000000030CFD9BFF000000050F34D108000000040000000500000009000000020F34D0F804548A0513867104000000020CFD9BFD0F350CFC0000000300000007000000091386AD040CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000009000000040F34D108000000040C9A8700000000070000000A0F34D0FC00000009000000030000000200000001000000000F34D100000000000CFD9BF900000009000000090000000412070108000000040CFD9BF70F350D000CFD9BF90F350CF80000000104548A0513867104000000020000000A1386AD040CFD9BFD0F350CFC00000003045489FF000000050000000A0F34D0FC0000000A00000003000000020F34D0F80000000A00000001000000000F34D100000000000CFD9BF90F350CF80000000104548A05000000091386AD040CFD9BFD0000000A00000009000000020F34D0F80000000A00000001120700FC08A912FF0000000912070108000000040CFD9BF70F350D000CFD9BF90000000900000009000000000F34D100000000000000000900000003"
theorem small_5688444_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5688444_left_root small_5688444_left_fuel small_5688444_left_count small_5688444_left_encoded = true := by
  decide +kernel
theorem small_5688444_left_covered : CoveredBy scale carrier boxes small_5688444_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5688444_left_root small_5688444_left_fuel small_5688444_left_count small_5688444_left_encoded small_5688444_left_checked

theorem cover_5688444 : CoveredBy scale carrier boxes root_5688444 := by
  apply coveredBy_split_literal root_5688444 small_5688444_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5688692 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5688444_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5688692
#print axioms cover_5688444

def root_5688438 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688438_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688438_left_fuel : Nat := 1
def small_5688438_left_count : Nat := 1
def small_5688438_left_encoded : String := "00000001"
theorem small_5688438_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5688438_left_root small_5688438_left_fuel small_5688438_left_count small_5688438_left_encoded = true := by
  decide +kernel
theorem small_5688438_left_covered : CoveredBy scale carrier boxes small_5688438_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5688438_left_root small_5688438_left_fuel small_5688438_left_count small_5688438_left_encoded small_5688438_left_checked

theorem cover_5688438 : CoveredBy scale carrier boxes root_5688438 := by
  apply coveredBy_split_literal root_5688438 small_5688438_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5688444 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5688438_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5688444
#print axioms cover_5688438

def root_5688437 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688437_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688437_right_fuel : Nat := 24
def small_5688437_right_count : Nat := 479
def small_5688437_right_encoded : String := "120700F808A91305120701040000000208A912FD12073CFC0000000308A912FF12073D080CFD9BF70F350D00045489F91386ACF80000000104548A0513867104000000020CFD9BFD00000007000000091386AD040CFD9BFD0F350CFC000000030CFD9BFF0F350D080000000700000004000000070F34D0FC000000090000000300000002138670F804548A0513867104000000020CFD9BFD000000070F34D0FC0000000A000000031386AD040CFD9BFD0F350CFC000000030CFD9BFF0F350D080000000600000004000000070F34D0FC0CFD9BFF000000090000000A000000030000000200000001000000000F34D10000000000045489F91386ACF80000000104548A0513867104000000020CFD9BFD00000007000000091386AD040CFD9BFD0F350CFC000000030CFD9BFF00000006000000070000000900000002138670F804548A0513867104000000020CFD9BFD000000070F34D0FC00000007000000031386AD040CFD9BFD000000060F34D0FC0CFD9BFF00000006000000090000000300000002000000010000000412070108000000040CFD9BF70F350D00045489F90000000A0000000A000000000F34D100000000000000000A120700FC08A912FF12073D080CFD9BF70F350D0000000009000000000F34D10000000000045489F900000009138670F800000009000000010000000412070108000000040000000A0000000312073D0408A912FD12073CFC0000000308A912FF12073D080CFD9BF70F350D00045489F91386ACF8000000010CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000006000000040F34D108000000040C9A87000F8750F70C9A86FC0F878CFD00000003067ECE790000000A000000070F8750FD0000000700000003000000000F878CF7000000000C9A86FC0F878CFD00000003067ECE790000000A000000060F8750FD00000006000000030F34D0FC0CFD9BFF000000090F34D108000000040C9A87000F8750F70000000A0000000000000009000000030F350D040CFD9BFD000000060F34D0FC0CFD9BFF000000060F34D108000000040C9A87000F8750F70C9A8704000000060F878D05067ECE7900000009000000060000000200000000000000060000000300000002138670F80CFD9C050F34D104000000020CFD9BFD000000060F34D0FC0CFD9BFF000000060F34D108000000040C9A87000F8750F70000000A0000000000000006000000030000000600000001000000000F34D10000000000045489F91386ACF8000000010CFD9C050F34D104000000020CFD9BFD000000060000000900000006000000060000000412070108000000040CFD9BF70F350D00045489F91386ACF8000000010CFD9C050F34D104000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A87000F8750F70000000A000000000000000A000000040000000A0F34D0FC0000000A000000030F350D040CFD9BFD0F350CFC00000003045489FF1386AD080C9A87000F8750F70C9A87040F875105000000020C9A86FC000000060F8750FD00000006000000030F878D050C9A86FC0000000A0F8750FD000000070000000300000002000000000F878CF7000000000C9A8704000000060F878D050C9A86FC000000060F8750FD0000000600000003000000020000000413867108000000040C9A87000F8750F70C9A87040F875105000000020C9A86FC000000050F8750FD00000008000000030000000A000000000F878CF7000000000C9A87040F875105000000020C9A86FC00000005000000080000000A0F34D0FC045489FF1386AD080C9A8700000000050F878CF7000000000C9A8704000000050000000A00000004000000050000000300000002138670F80CFD9C050F34D104000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A8700000000070000000800000004000000080F34D0FC0000000A000000030F350D040CFD9BFD0F350CFC00000003045489FF0000000613867108000000040C9A870000000005000000080F34D0FC00000005000000030000000200000001000000000F34D10000000000045489F91386ACF8000000010CFD9C050F34D104000000020CFD9BFD0000000A0F34D0FC0000000A000000030F350D040CFD9BFD0F350CFC00000003045489FF0000000613867108000000040C9A8704000000080F878D0500000008000000020F34D0FC045489FF00000006000000050000000300000002138670F80CFD9C050F34D104000000020CFD9BFD0000000A0F34D0FC0000000A000000030F350D040CFD9BFD000000060F34D0FC00000005000000030000000200000001120700FC08A912FF12073D080CFD9BF70F350D00045489F91386ACF8000000010CFD9C05000000090F350D04045489FD1386ACFC000000030CFD9BFF00000006000000050000000500000002138670F80CFD9C05000000090000000500000001000000000F34D10000000000000000090000000412070108000000040CFD9BF70F350D00045489F91386ACF8000000010CFD9C050F34D104000000020000000A0000000500000005000000000F34D10000000000045489F91386ACF8000000010CFD9C050F34D10400000002000000090000000500000005000000030000000200000001"
theorem small_5688437_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5688437_right_root small_5688437_right_fuel small_5688437_right_count small_5688437_right_encoded = true := by
  decide +kernel
theorem small_5688437_right_covered : CoveredBy scale carrier boxes small_5688437_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5688437_right_root small_5688437_right_fuel small_5688437_right_count small_5688437_right_encoded small_5688437_right_checked

theorem cover_5688437 : CoveredBy scale carrier boxes root_5688437 := by
  apply coveredBy_split_literal root_5688437 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5688438 small_5688437_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5688438
  · exact small_5688437_right_covered
#print axioms cover_5688437

def root_5688432 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688432_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688432_right_fuel : Nat := 1
def small_5688432_right_count : Nat := 1
def small_5688432_right_encoded : String := "00000000"
theorem small_5688432_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5688432_right_root small_5688432_right_fuel small_5688432_right_count small_5688432_right_encoded = true := by
  decide +kernel
theorem small_5688432_right_covered : CoveredBy scale carrier boxes small_5688432_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5688432_right_root small_5688432_right_fuel small_5688432_right_count small_5688432_right_encoded small_5688432_right_checked

theorem cover_5688432 : CoveredBy scale carrier boxes root_5688432 := by
  apply coveredBy_split_literal root_5688432 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5688437 small_5688432_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5688437
  · exact small_5688432_right_covered
#print axioms cover_5688432

def root_5688431 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5688431 : CoveredBy scale carrier boxes root_5688431 := by
  apply coveredBy_split_literal root_5688431 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5688432 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2135.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5688432
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2135.covered
#print axioms cover_5688431

def root_5688425 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688425_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688425_left_fuel : Nat := 1
def small_5688425_left_count : Nat := 1
def small_5688425_left_encoded : String := "00000004"
theorem small_5688425_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5688425_left_root small_5688425_left_fuel small_5688425_left_count small_5688425_left_encoded = true := by
  decide +kernel
theorem small_5688425_left_covered : CoveredBy scale carrier boxes small_5688425_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5688425_left_root small_5688425_left_fuel small_5688425_left_count small_5688425_left_encoded small_5688425_left_checked

theorem cover_5688425 : CoveredBy scale carrier boxes root_5688425 := by
  apply coveredBy_split_literal root_5688425 small_5688425_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5688431 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5688425_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5688431
#print axioms cover_5688425

def root_5688257 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688257_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688257_left_fuel : Nat := 17
def small_5688257_left_count : Nat := 79
def small_5688257_left_encoded : String := "1151E8FF08A912F712073D0008A912F912073CF80000000108A913050000000912073D0408A912FD12073CFC0000000305000108135D44FF0CFD9BF70F350D000CFD9BF90000000900000006000000000000000900000004135D80FF000000040CFD9BF70F350D000CFD9BF90F350CF800000001000000090F34D0F80CFD9C05000000090000000600000001000000000F34D1000000000000000009120700FC000000090000000300000002120700F808A91305120701040000000208A912FD12073CFC00000003000000090000000912073D0408A912FD00000006120700FC0000000600000003000000020000000100000000120701000000000008A912F912073CF80000000108A913050000000900000009120700F808A91305120701040000000208A912FD0000000600000009000000060000000100000004"
theorem small_5688257_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5688257_left_root small_5688257_left_fuel small_5688257_left_count small_5688257_left_encoded = true := by
  decide +kernel
theorem small_5688257_left_covered : CoveredBy scale carrier boxes small_5688257_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5688257_left_root small_5688257_left_fuel small_5688257_left_count small_5688257_left_encoded small_5688257_left_checked

theorem cover_5688257 : CoveredBy scale carrier boxes root_5688257 := by
  apply coveredBy_split_literal root_5688257 small_5688257_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5688425 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5688257_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5688425
#print axioms cover_5688257

def root_5688251 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688251_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688251_left_fuel : Nat := 1
def small_5688251_left_count : Nat := 1
def small_5688251_left_encoded : String := "00000003"
theorem small_5688251_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5688251_left_root small_5688251_left_fuel small_5688251_left_count small_5688251_left_encoded = true := by
  decide +kernel
theorem small_5688251_left_covered : CoveredBy scale carrier boxes small_5688251_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5688251_left_root small_5688251_left_fuel small_5688251_left_count small_5688251_left_encoded small_5688251_left_checked

theorem cover_5688251 : CoveredBy scale carrier boxes root_5688251 := by
  apply coveredBy_split_literal root_5688251 small_5688251_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5688257 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5688251_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5688257
#print axioms cover_5688251

def root_5688250 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5688250 : CoveredBy scale carrier boxes root_5688250 := by
  apply coveredBy_split_literal root_5688250 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5688251 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2136.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5688251
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2136.covered
#print axioms cover_5688250

def root_5688245 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688245_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5688245_right_fuel : Nat := 1
def small_5688245_right_count : Nat := 1
def small_5688245_right_encoded : String := "00000002"
theorem small_5688245_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5688245_right_root small_5688245_right_fuel small_5688245_right_count small_5688245_right_encoded = true := by
  decide +kernel
theorem small_5688245_right_covered : CoveredBy scale carrier boxes small_5688245_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5688245_right_root small_5688245_right_fuel small_5688245_right_count small_5688245_right_encoded small_5688245_right_checked

theorem cover_5688245 : CoveredBy scale carrier boxes root_5688245 := by
  apply coveredBy_split_literal root_5688245 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5688250 small_5688245_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5688250
  · exact small_5688245_right_covered
#print axioms cover_5688245

def root_5665971 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5665971 : CoveredBy scale carrier boxes root_5665971 := by
  apply coveredBy_split_literal root_5665971 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5665972 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5688245 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5665972
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5688245
#print axioms cover_5665971

def root_5665965 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5665965_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5665965_left_fuel : Nat := 1
def small_5665965_left_count : Nat := 1
def small_5665965_left_encoded : String := "00000001"
theorem small_5665965_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5665965_left_root small_5665965_left_fuel small_5665965_left_count small_5665965_left_encoded = true := by
  decide +kernel
theorem small_5665965_left_covered : CoveredBy scale carrier boxes small_5665965_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5665965_left_root small_5665965_left_fuel small_5665965_left_count small_5665965_left_encoded small_5665965_left_checked

theorem cover_5665965 : CoveredBy scale carrier boxes root_5665965 := by
  apply coveredBy_split_literal root_5665965 small_5665965_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5665971 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5665965_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5665971
#print axioms cover_5665965

def root_5698127 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5698127_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5698127_right_fuel : Nat := 20
def small_5698127_right_count : Nat := 65
def small_5698127_right_encoded : String := "120701000000000008A912FD12073CFC0000000308A912FF000000091207010800000004050000F8135D80F90000000105000104135D450500000002045489F71386AD000CFD9BFD0F350CFC00000003045489FF0000000913867108000000040C9A86FC000000070F8750FD078000F8000000070000000900000003000000090000000000000009135D8105045489F71386AD000CFD9BFD0F350CFC00000003045489FF0000000913867108000000040C9A86FC000000090F8750FD078000F8128A7CF900000001000000090000000900000003000000090000000013867100000000000000000900000002135D44F90000000900000001120700FC0000000900000003"
theorem small_5698127_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5698127_right_root small_5698127_right_fuel small_5698127_right_count small_5698127_right_encoded = true := by
  decide +kernel
theorem small_5698127_right_covered : CoveredBy scale carrier boxes small_5698127_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5698127_right_root small_5698127_right_fuel small_5698127_right_count small_5698127_right_encoded small_5698127_right_checked

theorem cover_5698127 : CoveredBy scale carrier boxes root_5698127 := by
  apply coveredBy_split_literal root_5698127 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2137.root small_5698127_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2137.covered
  · exact small_5698127_right_covered
#print axioms cover_5698127

def root_5698121 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5698121_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5698121_left_fuel : Nat := 1
def small_5698121_left_count : Nat := 1
def small_5698121_left_encoded : String := "00000004"
theorem small_5698121_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5698121_left_root small_5698121_left_fuel small_5698121_left_count small_5698121_left_encoded = true := by
  decide +kernel
theorem small_5698121_left_covered : CoveredBy scale carrier boxes small_5698121_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5698121_left_root small_5698121_left_fuel small_5698121_left_count small_5698121_left_encoded small_5698121_left_checked

theorem cover_5698121 : CoveredBy scale carrier boxes root_5698121 := by
  apply coveredBy_split_literal root_5698121 small_5698121_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5698127 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5698121_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5698127
#print axioms cover_5698121

def root_5698059 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5698059_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5698059_left_fuel : Nat := 10
def small_5698059_left_count : Nat := 29
def small_5698059_left_encoded : String := "1151E8FF08A912F712073D0008A912FD12073CFC00000003050000F8135D80F900000001050001040000000600000009135D44F905000104135D450500000002000000060000000900000001120700FC050000F8000000090000000A000000030000000012070100000000000000000900000004"
theorem small_5698059_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5698059_left_root small_5698059_left_fuel small_5698059_left_count small_5698059_left_encoded = true := by
  decide +kernel
theorem small_5698059_left_covered : CoveredBy scale carrier boxes small_5698059_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5698059_left_root small_5698059_left_fuel small_5698059_left_count small_5698059_left_encoded small_5698059_left_checked

theorem cover_5698059 : CoveredBy scale carrier boxes root_5698059 := by
  apply coveredBy_split_literal root_5698059 small_5698059_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5698121 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5698059_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5698121
#print axioms cover_5698059

def root_5698053 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5698053_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5698053_left_fuel : Nat := 1
def small_5698053_left_count : Nat := 1
def small_5698053_left_encoded : String := "00000003"
theorem small_5698053_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5698053_left_root small_5698053_left_fuel small_5698053_left_count small_5698053_left_encoded = true := by
  decide +kernel
theorem small_5698053_left_covered : CoveredBy scale carrier boxes small_5698053_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5698053_left_root small_5698053_left_fuel small_5698053_left_count small_5698053_left_encoded small_5698053_left_checked

theorem cover_5698053 : CoveredBy scale carrier boxes root_5698053 := by
  apply coveredBy_split_literal root_5698053 small_5698053_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5698059 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5698053_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5698059
#print axioms cover_5698053

def root_5698052 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5698052 : CoveredBy scale carrier boxes root_5698052 := by
  apply coveredBy_split_literal root_5698052 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5698053 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2138.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5698053
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2138.covered
#print axioms cover_5698052

def root_5698046 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5698046_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5698046_left_fuel : Nat := 1
def small_5698046_left_count : Nat := 1
def small_5698046_left_encoded : String := "00000002"
theorem small_5698046_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5698046_left_root small_5698046_left_fuel small_5698046_left_count small_5698046_left_encoded = true := by
  decide +kernel
theorem small_5698046_left_covered : CoveredBy scale carrier boxes small_5698046_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5698046_left_root small_5698046_left_fuel small_5698046_left_count small_5698046_left_encoded small_5698046_left_checked

theorem cover_5698046 : CoveredBy scale carrier boxes root_5698046 := by
  apply coveredBy_split_literal root_5698046 small_5698046_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5698052 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5698046_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5698052
#print axioms cover_5698046

def root_5698045 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5698045 : CoveredBy scale carrier boxes root_5698045 := by
  apply coveredBy_split_literal root_5698045 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5698046 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2139.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5698046
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2139.covered
#print axioms cover_5698045

def root_5698040 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5698040_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5698040_right_fuel : Nat := 1
def small_5698040_right_count : Nat := 1
def small_5698040_right_encoded : String := "00000001"
theorem small_5698040_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5698040_right_root small_5698040_right_fuel small_5698040_right_count small_5698040_right_encoded = true := by
  decide +kernel
theorem small_5698040_right_covered : CoveredBy scale carrier boxes small_5698040_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5698040_right_root small_5698040_right_fuel small_5698040_right_count small_5698040_right_encoded small_5698040_right_checked

theorem cover_5698040 : CoveredBy scale carrier boxes root_5698040 := by
  apply coveredBy_split_literal root_5698040 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5698045 small_5698040_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5698045
  · exact small_5698040_right_covered
#print axioms cover_5698040

def root_5665964 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5665964 : CoveredBy scale carrier boxes root_5665964 := by
  apply coveredBy_split_literal root_5665964 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5665965 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5698040 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5665965
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5698040
#print axioms cover_5665964

def root_5665958 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5665958_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5665958_left_fuel : Nat := 1
def small_5665958_left_count : Nat := 1
def small_5665958_left_encoded : String := "00000000"
theorem small_5665958_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5665958_left_root small_5665958_left_fuel small_5665958_left_count small_5665958_left_encoded = true := by
  decide +kernel
theorem small_5665958_left_covered : CoveredBy scale carrier boxes small_5665958_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5665958_left_root small_5665958_left_fuel small_5665958_left_count small_5665958_left_encoded small_5665958_left_checked

theorem cover_5665958 : CoveredBy scale carrier boxes root_5665958 := by
  apply coveredBy_split_literal root_5665958 small_5665958_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5665964 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5665958_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5665964
#print axioms cover_5665958

def root_5652744 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5652744 : CoveredBy scale carrier boxes root_5652744 := by
  apply coveredBy_split_literal root_5652744 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5652745 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5665958 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5652745
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5665958
#print axioms cover_5652744

def root_5711187 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5711187_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5711187_right_fuel : Nat := 14
def small_5711187_right_count : Nat := 39
def small_5711187_right_encoded : String := "120701000000000008A912F912073CF80000000108A91309120701080000000405000104135D450500000002050000FC135D80FD00000003045489F7000000080000000800000008135D8105050000FC135D80FD00000003045489F71386AD000CFD9BF90F350CF800000001000000080000000800000000138671000000000000000008000000080000000200000008120700F80000000800000001"
theorem small_5711187_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5711187_right_root small_5711187_right_fuel small_5711187_right_count small_5711187_right_encoded = true := by
  decide +kernel
theorem small_5711187_right_covered : CoveredBy scale carrier boxes small_5711187_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5711187_right_root small_5711187_right_fuel small_5711187_right_count small_5711187_right_encoded small_5711187_right_checked

theorem cover_5711187 : CoveredBy scale carrier boxes root_5711187 := by
  apply coveredBy_split_literal root_5711187 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2142.root small_5711187_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2142.covered
  · exact small_5711187_right_covered
#print axioms cover_5711187

def root_5711182 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5711182_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5711182_right_fuel : Nat := 1
def small_5711182_right_count : Nat := 1
def small_5711182_right_encoded : String := "00000004"
theorem small_5711182_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5711182_right_root small_5711182_right_fuel small_5711182_right_count small_5711182_right_encoded = true := by
  decide +kernel
theorem small_5711182_right_covered : CoveredBy scale carrier boxes small_5711182_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5711182_right_root small_5711182_right_fuel small_5711182_right_count small_5711182_right_encoded small_5711182_right_checked

theorem cover_5711182 : CoveredBy scale carrier boxes root_5711182 := by
  apply coveredBy_split_literal root_5711182 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5711187 small_5711182_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5711187
  · exact small_5711182_right_covered
#print axioms cover_5711182

def root_5711150 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5711150_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5711150_left_fuel : Nat := 7
def small_5711150_left_count : Nat := 15
def small_5711150_left_encoded : String := "1151E9090000000408A912F712073D0008A912F912073CF800000001050001040000000500000008120700F800000005000000010000000000000008"
theorem small_5711150_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5711150_left_root small_5711150_left_fuel small_5711150_left_count small_5711150_left_encoded = true := by
  decide +kernel
theorem small_5711150_left_covered : CoveredBy scale carrier boxes small_5711150_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5711150_left_root small_5711150_left_fuel small_5711150_left_count small_5711150_left_encoded small_5711150_left_checked

theorem cover_5711150 : CoveredBy scale carrier boxes root_5711150 := by
  apply coveredBy_split_literal root_5711150 small_5711150_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5711182 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5711150_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5711182
#print axioms cover_5711150

def root_5711145 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5711145_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5711145_right_fuel : Nat := 1
def small_5711145_right_count : Nat := 1
def small_5711145_right_encoded : String := "00000003"
theorem small_5711145_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5711145_right_root small_5711145_right_fuel small_5711145_right_count small_5711145_right_encoded = true := by
  decide +kernel
theorem small_5711145_right_covered : CoveredBy scale carrier boxes small_5711145_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5711145_right_root small_5711145_right_fuel small_5711145_right_count small_5711145_right_encoded small_5711145_right_checked

theorem cover_5711145 : CoveredBy scale carrier boxes root_5711145 := by
  apply coveredBy_split_literal root_5711145 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5711150 small_5711145_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5711150
  · exact small_5711145_right_covered
#print axioms cover_5711145

def root_5708131 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5708131 : CoveredBy scale carrier boxes root_5708131 := by
  apply coveredBy_split_literal root_5708131 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2141.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5711145 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2141.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5711145
#print axioms cover_5708131

def root_5708125 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5708125_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5708125_left_fuel : Nat := 1
def small_5708125_left_count : Nat := 1
def small_5708125_left_encoded : String := "00000002"
theorem small_5708125_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5708125_left_root small_5708125_left_fuel small_5708125_left_count small_5708125_left_encoded = true := by
  decide +kernel
theorem small_5708125_left_covered : CoveredBy scale carrier boxes small_5708125_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5708125_left_root small_5708125_left_fuel small_5708125_left_count small_5708125_left_encoded small_5708125_left_checked

theorem cover_5708125 : CoveredBy scale carrier boxes root_5708125 := by
  apply coveredBy_split_literal root_5708125 small_5708125_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5708131 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5708125_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5708131
#print axioms cover_5708125

def root_5708124 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5708124 : CoveredBy scale carrier boxes root_5708124 := by
  apply coveredBy_split_literal root_5708124 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5708125 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2143.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5708125
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2143.covered
#print axioms cover_5708124

def root_5708118 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5708118_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5708118_left_fuel : Nat := 1
def small_5708118_left_count : Nat := 1
def small_5708118_left_encoded : String := "00000001"
theorem small_5708118_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5708118_left_root small_5708118_left_fuel small_5708118_left_count small_5708118_left_encoded = true := by
  decide +kernel
theorem small_5708118_left_covered : CoveredBy scale carrier boxes small_5708118_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5708118_left_root small_5708118_left_fuel small_5708118_left_count small_5708118_left_encoded small_5708118_left_checked

theorem cover_5708118 : CoveredBy scale carrier boxes root_5708118 := by
  apply coveredBy_split_literal root_5708118 small_5708118_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5708124 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5708118_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5708124
#print axioms cover_5708118

def root_5716064 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5716064 : CoveredBy scale carrier boxes root_5716064 := by
  apply coveredBy_split_literal root_5716064 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2144.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2145.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2144.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2145.covered
#print axioms cover_5716064

def root_5716058 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5716058_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5716058_left_fuel : Nat := 1
def small_5716058_left_count : Nat := 1
def small_5716058_left_encoded : String := "00000001"
theorem small_5716058_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5716058_left_root small_5716058_left_fuel small_5716058_left_count small_5716058_left_encoded = true := by
  decide +kernel
theorem small_5716058_left_covered : CoveredBy scale carrier boxes small_5716058_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5716058_left_root small_5716058_left_fuel small_5716058_left_count small_5716058_left_encoded small_5716058_left_checked

theorem cover_5716058 : CoveredBy scale carrier boxes root_5716058 := by
  apply coveredBy_split_literal root_5716058 small_5716058_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5716064 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5716058_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5716064
#print axioms cover_5716058

def root_5716057 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5716057_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5716057_right_fuel : Nat := 19
def small_5716057_right_count : Nat := 183
def small_5716057_right_encoded : String := "135D44F905000104135D4505000000020CFD9BF70F350D000CFD9BFD0F350CFC0000000304548A0913867108000000040C9A8700000000080F878CF7000000000C9A86FC000000080F8750FD00000008000000031386AD080C9A8700000000060F878CF7000000000C9A86FC0F878CFD00000003028000F8000000060000000600000006000000040F34D0FC04548A091386710800000004000000080000000700000003000000000F34D100000000000CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86FC000000070F8750FD028000F813D7ECF900000001028001040000000713D7ED050AD3577710D13D00022A4589000000090000000600000000000000070000000213D7B0F9028001040000000713D7ED050AD3577700000009000000070000000200000001000000030000000700000007135D81050CFD9BF70F350D000CFD9BFD0F350CFC0000000304548A0913867108000000040C9A8700000000060F878CF7000000000C9A86FC0F878CFD00000003028000F80000000600000006000000061386AD080C9A8700000000060F878CF7000000000C9A86FC0F878CFD000000030000000600000006000000040F34D0FC04548A0913867108000000040C9A8700000000060F878CF700000000000000091386AD080C9A8700000000060F878CF700000000028000F800000006000000060000000400000003000000000F34D100000000000CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86FC0F878CFD00000003028000F813D7ECF900000001078001040000000900000009000000090F8750FD028000F813D7ECF90000000107800104128A4105000000020AD3577710D13D00000000060000000010D1010000000000000000090000000613D7B0F90000000500000001000000031386AD080C9A86FC0F878CFD00000003028000F8000000060000000600000006000000040F34D0FC04548A090000000900000007000000030000000200000001"
theorem small_5716057_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5716057_right_root small_5716057_right_fuel small_5716057_right_count small_5716057_right_encoded = true := by
  decide +kernel
theorem small_5716057_right_covered : CoveredBy scale carrier boxes small_5716057_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5716057_right_root small_5716057_right_fuel small_5716057_right_count small_5716057_right_encoded small_5716057_right_checked

theorem cover_5716057 : CoveredBy scale carrier boxes root_5716057 := by
  apply coveredBy_split_literal root_5716057 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5716058 small_5716057_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5716058
  · exact small_5716057_right_covered
#print axioms cover_5716057

def root_5716051 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5716051_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5716051_left_fuel : Nat := 1
def small_5716051_left_count : Nat := 1
def small_5716051_left_encoded : String := "00000004"
theorem small_5716051_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5716051_left_root small_5716051_left_fuel small_5716051_left_count small_5716051_left_encoded = true := by
  decide +kernel
theorem small_5716051_left_covered : CoveredBy scale carrier boxes small_5716051_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5716051_left_root small_5716051_left_fuel small_5716051_left_count small_5716051_left_encoded small_5716051_left_checked

theorem cover_5716051 : CoveredBy scale carrier boxes root_5716051 := by
  apply coveredBy_split_literal root_5716051 small_5716051_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5716057 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5716051_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5716057
#print axioms cover_5716051

def root_5716050 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5716050_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5716050_right_fuel : Nat := 18
def small_5716050_right_count : Nat := 245
def small_5716050_right_encoded : String := "12073D08050000F8135D80F90000000105000104135D4505000000020CFD9BF70F350D000CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A8700000000050F878CF7000000000C9A86FC000000050F8750FD078000F800000005128A40F90000000600000001000000030000000500000005000000000F34D100000000000CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A86FC000000050F8750FD078000F800000005128A40F9028001040000000513D7ED05000000060000000200000001000000030F350D0800000005000000040F34D0FC0000000500000003135D81050CFD9BF70F350D000CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A87000F8750F70C9A86FC0000000A00000006000000000F878CF7000000000C9A86FC0000000A0F8750FD00000006000000030000000A0F34D0FC0CFD9C090F34D108000000040C9A8700000000050000000A0000000500000003000000000F34D100000000000CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A86FC0000000A0F8750FD0000000A000000030000000A0F34D0FC0000000A0000000300000002135D44F905000104135D4505000000020CFD9BF70F350D000CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A8700000000060F878CF7000000000C9A86FC0F878CFD0000000300000006000000060F350D080C9A8700000000050F878CF7000000000C9A86FC000000050F8750FD0C9A8708000000050000000600000003000000040F34D0FC0000000500000003000000000F34D100000000000CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A86FC000000070F8750FD028000F80000000600000006000000030F350D080C9A86FC0F878CFD00000003000000050F8750FD0C9A87080F87510900000004000000050000000600000003000000040F34D0FC0000000700000003135D81050CFD9BF70F350D000CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A8700000000060F878CF7000000000C9A86FC0F878CFD0000000300000006000000060F350D080C9A87000F8750F70C9A86FC0000000A00000006000000000000000A000000040F34D0FC0CFD9C090F34D108000000040C9A8700000000060F878CF700000000028000F800000006000000060000000A00000003000000000F34D100000000000CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A86FC0F878CFD00000003028000F80000000600000006000000060000000A0F34D0FC0CFD9C090F34D10800000004000000070000000A00000003000000020000000100000004"
theorem small_5716050_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5716050_right_root small_5716050_right_fuel small_5716050_right_count small_5716050_right_encoded = true := by
  decide +kernel
theorem small_5716050_right_covered : CoveredBy scale carrier boxes small_5716050_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5716050_right_root small_5716050_right_fuel small_5716050_right_count small_5716050_right_encoded small_5716050_right_checked

theorem cover_5716050 : CoveredBy scale carrier boxes root_5716050 := by
  apply coveredBy_split_literal root_5716050 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5716051 small_5716050_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5716051
  · exact small_5716050_right_covered
#print axioms cover_5716050

def root_5716044 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5716044_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5716044_left_fuel : Nat := 1
def small_5716044_left_count : Nat := 1
def small_5716044_left_encoded : String := "00000003"
theorem small_5716044_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5716044_left_root small_5716044_left_fuel small_5716044_left_count small_5716044_left_encoded = true := by
  decide +kernel
theorem small_5716044_left_covered : CoveredBy scale carrier boxes small_5716044_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5716044_left_root small_5716044_left_fuel small_5716044_left_count small_5716044_left_encoded small_5716044_left_checked

theorem cover_5716044 : CoveredBy scale carrier boxes root_5716044 := by
  apply coveredBy_split_literal root_5716044 small_5716044_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5716050 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5716044_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5716050
#print axioms cover_5716044

def root_5716043 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5716043_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5716043_right_fuel : Nat := 16
def small_5716043_right_count : Nat := 83
def small_5716043_right_encoded : String := "120700FC08A913091207010800000004050000F8135D80F9000000010500010400000005135D81050CFD9BF70F350D00045489FD1386ACFC0000000304548A0913867108000000040C9A8700000000050F878CF700000000000000070000000500000005000000000F34D100000000000000000700000002135D44F90500010400000007135D81050CFD9BF70F350D00045489FD1386ACFC0000000304548A09000000091386AD080C9A8700000000060000000700000004138670FC0000000700000003000000000F34D1000000000000000007000000020000000112073D08050000F800000005135D44F90500010400000005135D81050CFD9BF70F350D00045489FD1386ACFC000000030CFD9C090F34D108000000040C9A870000000005000000070000000500000005000000000F34D100000000000000000700000002000000010000000400000003"
theorem small_5716043_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5716043_right_root small_5716043_right_fuel small_5716043_right_count small_5716043_right_encoded = true := by
  decide +kernel
theorem small_5716043_right_covered : CoveredBy scale carrier boxes small_5716043_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5716043_right_root small_5716043_right_fuel small_5716043_right_count small_5716043_right_encoded small_5716043_right_checked

theorem cover_5716043 : CoveredBy scale carrier boxes root_5716043 := by
  apply coveredBy_split_literal root_5716043 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5716044 small_5716043_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5716044
  · exact small_5716043_right_covered
#print axioms cover_5716043

def root_5716038 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5716038_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5716038_right_fuel : Nat := 1
def small_5716038_right_count : Nat := 1
def small_5716038_right_encoded : String := "00000000"
theorem small_5716038_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5716038_right_root small_5716038_right_fuel small_5716038_right_count small_5716038_right_encoded = true := by
  decide +kernel
theorem small_5716038_right_covered : CoveredBy scale carrier boxes small_5716038_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5716038_right_root small_5716038_right_fuel small_5716038_right_count small_5716038_right_encoded small_5716038_right_checked

theorem cover_5716038 : CoveredBy scale carrier boxes root_5716038 := by
  apply coveredBy_split_literal root_5716038 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5716043 small_5716038_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5716043
  · exact small_5716038_right_covered
#print axioms cover_5716038

def root_5716037 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5716037_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5716037_right_fuel : Nat := 25
def small_5716037_right_count : Nat := 257
def small_5716037_right_encoded : String := "120701000000000008A912FD12073CFC0000000308A913091207010800000004050000F8135D80F90000000105000104135D45050000000200000007135D8105045489F71386AD000CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86FC0F878CFD00000003078000F8128A7CF9000000010780010400000007128A7D050000000900000002000000090F8750FD078000F8128A7CF90000000107800104128A410500000002067ECE7712EA9500022A458900000009000000070000000000000007128A7D05067ECE7712EA9500022A4589000000090000000A0000000012EA590000000000022A4589000000090000000800000002128A40F907800104128A41050000000200000007128A7D05067ECE7700000009000000090000000200000001000000031386AD080C9A86FC0F878CFD00000003000000070F8750FD078000F8128A7CF90000000100000008128A40F90780010400000007128A7D050000000A000000020000000100000003000000040F34D0FC00000007000000030000000013867100000000000CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86FC000000070F8750FD078000F8128A7CF9000000010780010400000007128A7D05022A45770000000700000007000000020000000900000003000000070000000700000002135D44F90500010400000007135D8105045489F71386AD000CFD9BFD0F350CFC0000000304548A091386710800000004000000091386AD080C9A86FC000000070F8750FD028000F813D7ECF9000000010780010400000007000000060000000600000003000000040F34D0FC000000070000000300000000138671000000000000000007000000020000000112073D08050000F8135D80F90000000105000104135D450500000002045489F71386AD000CFD9BFD0F350CFC000000030CFD9C090F34D108000000040000000700000007000000070000000000000007135D8105045489F71386AD000CFD9BFD0000000A0F34D0FC0000000A000000030000000013867100000000000CFD9BFD0F350CFC000000030CFD9C090F34D1080000000400000007000000080F34D0FC000000070000000300000002135D44F905000104135D450500000002045489F71386AD000CFD9BFD0F350CFC000000030CFD9C090F34D108000000040000000700000007000000070000000000000007135D8105045489F71386AD000CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A86FC00000007000000060000000A0F34D0FC00000007000000030000000013867100000000000CFD9BFD0F350CFC000000030CFD9C090F34D10800000004000000070000000700000007000000020000000100000004120700FC08A913091207010800000004000000070000000700000003"
theorem small_5716037_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5716037_right_root small_5716037_right_fuel small_5716037_right_count small_5716037_right_encoded = true := by
  decide +kernel
theorem small_5716037_right_covered : CoveredBy scale carrier boxes small_5716037_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5716037_right_root small_5716037_right_fuel small_5716037_right_count small_5716037_right_encoded small_5716037_right_checked

theorem cover_5716037 : CoveredBy scale carrier boxes root_5716037 := by
  apply coveredBy_split_literal root_5716037 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5716038 small_5716037_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5716038
  · exact small_5716037_right_covered
#print axioms cover_5716037

def root_5716032 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5716032_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5716032_right_fuel : Nat := 1
def small_5716032_right_count : Nat := 1
def small_5716032_right_encoded : String := "00000004"
theorem small_5716032_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5716032_right_root small_5716032_right_fuel small_5716032_right_count small_5716032_right_encoded = true := by
  decide +kernel
theorem small_5716032_right_covered : CoveredBy scale carrier boxes small_5716032_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5716032_right_root small_5716032_right_fuel small_5716032_right_count small_5716032_right_encoded small_5716032_right_checked

theorem cover_5716032 : CoveredBy scale carrier boxes root_5716032 := by
  apply coveredBy_split_literal root_5716032 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5716037 small_5716032_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5716037
  · exact small_5716032_right_covered
#print axioms cover_5716032

def root_5715940 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5715940_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5715940_left_fuel : Nat := 14
def small_5715940_left_count : Nat := 43
def small_5715940_left_encoded : String := "1151E9090000000408A912F712073D0008A912FD12073CFC00000003050000F800000005135D44F90500010400000005135D81050500010800000005135D81090CFD9BF70000000A0F34D100000000000000000A000000040000000200000001120700FC000000050000000300000000120701000000000008A912FD12073CFC00000003050000F800000005135D44F905000104000000050000000A00000001120700FC0000000500000003"
theorem small_5715940_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5715940_left_root small_5715940_left_fuel small_5715940_left_count small_5715940_left_encoded = true := by
  decide +kernel
theorem small_5715940_left_covered : CoveredBy scale carrier boxes small_5715940_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5715940_left_root small_5715940_left_fuel small_5715940_left_count small_5715940_left_encoded small_5715940_left_checked

theorem cover_5715940 : CoveredBy scale carrier boxes root_5715940 := by
  apply coveredBy_split_literal root_5715940 small_5715940_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5716032 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5715940_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5716032
#print axioms cover_5715940

def root_5715934 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5715934_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5715934_left_fuel : Nat := 1
def small_5715934_left_count : Nat := 1
def small_5715934_left_encoded : String := "00000003"
theorem small_5715934_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5715934_left_root small_5715934_left_fuel small_5715934_left_count small_5715934_left_encoded = true := by
  decide +kernel
theorem small_5715934_left_covered : CoveredBy scale carrier boxes small_5715934_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5715934_left_root small_5715934_left_fuel small_5715934_left_count small_5715934_left_encoded small_5715934_left_checked

theorem cover_5715934 : CoveredBy scale carrier boxes root_5715934 := by
  apply coveredBy_split_literal root_5715934 small_5715934_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5715940 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5715934_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5715940
#print axioms cover_5715934

def root_5722715 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722715_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722715_left_fuel : Nat := 23
def small_5722715_left_count : Nat := 327
def small_5722715_left_encoded : String := "13D7B10500000002078000FC128A7CFD00000003022A458913E1C508000000040DE7CA000E5FD8F708C000F811FC24F9000000010140010413F5D9050000000208C000FC11FC24FD00000003011523490000000A000000050000000A13F6150508C000FC11FC24FD000000030115234913F85908000000040D4128800000000A0EFA4CF7000000000000000A13F895080D412880000000050EFA4CF700000000096000F80000000511AA80F900000009000000010000000411FBE8FD011523490000000A00000009000000030000000211FBE8F9014001040000000A13F6150508C000FC11FC24FD00000003011523490000000813F895080D412880000000080EFA4CF7000000000000000A000000040000000A0000000200000001000000000E6014F70000000008C000F811FC24F9000000010140010413F5D9050000000208C000FC11FC24FD00000003011523490000000A000000050000000A13F6150508C000FC11FC24FD000000030115234913F85908000000040DAED8770E966100096000F811AABCF9000000010000000A0000000A000000000E96250000000000096000F811AABCF9000000010000000A0000000A13F895080DAED8770E966100096000F80000000511AA80F901E001040000000513E99505096000FC000000050000000A0000000200000001000000000E96250000000000096000F80000000511AA80F900000007000000010000000411FBE8FD011523490000000A13F895080DAED8770E96610000000009000000000E96250000000000096000F8000000080000000A00000004000000030000000211FBE8F9014001040000000A13F6150508C000FC11FC24FD00000003011523490000000A13F895080DAED8770E966100082000F8124698F90000000101E00104000000070000000A0000000A000000000E9625000000000000000007000000040000000A000000020000000113E201080DE7CA000E5FD8F708C000F811FC24F9000000010000000911FBE8F90140010413F5D905000000020000000913F6150508C000FC11FC24FD00000003033F67C913BBF508000000040D412880000000060EFA4CF7000000000000000900000006000000090000000200000001000000000E6014F70000000008C000F811FC24F9000000010140010413F5D9050000000208C000FC0000000511FBE8FD000000090000000313F6150508C000FC11FC24FD00000003033F67C913BBF508000000040DAED8770E9661000000000500000000000000050000000511FBE8FD00000009000000030000000211FBE8F90140010413F5D9050000000208C000FC11FC24FD000000030000000711FBE8FD033F67C90000000A000000090000000313F6150508C000FC11FC24FD00000003033F67C913BBF508000000040DAED8770E966100082000F8124698F90000000101E001040000000513E99505096000FC00000005000000090000000212465CF901E00104000000070000000600000001000000000E962500000000000000000713BC31080DAED8770E96610000000006000000000E96250000000000000000070000000411FBE8FD033F67C913BBF508000000040DAED8770E96610000000009000000000E96250000000000082000F8000000090000000A0000000900000003000000020000000100000004128A40FD022A458913E1C508000000040DE7CA000000000A0E6014F70000000008C000F811FC24F9000000010000000A0000000A13E201080DE7CA00000000090E6014F70000000008C000F80000000911FBE8F900000009000000010000000400000003"
theorem small_5722715_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5722715_left_root small_5722715_left_fuel small_5722715_left_count small_5722715_left_encoded = true := by
  decide +kernel
theorem small_5722715_left_covered : CoveredBy scale carrier boxes small_5722715_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5722715_left_root small_5722715_left_fuel small_5722715_left_count small_5722715_left_encoded small_5722715_left_checked

theorem cover_5722715 : CoveredBy scale carrier boxes root_5722715 := by
  apply coveredBy_split_literal root_5722715 small_5722715_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2146.root coord2 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_5722715_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2146.covered
#print axioms cover_5722715

def root_5722709 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722709_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-15553280)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722709_left_fuel : Nat := 1
def small_5722709_left_count : Nat := 1
def small_5722709_left_encoded : String := "00000001"
theorem small_5722709_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5722709_left_root small_5722709_left_fuel small_5722709_left_count small_5722709_left_encoded = true := by
  decide +kernel
theorem small_5722709_left_covered : CoveredBy scale carrier boxes small_5722709_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5722709_left_root small_5722709_left_fuel small_5722709_left_count small_5722709_left_encoded small_5722709_left_checked

theorem cover_5722709 : CoveredBy scale carrier boxes root_5722709 := by
  apply coveredBy_split_literal root_5722709 small_5722709_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5722715 coord1 true (-15553280)
  · decide +kernel
  · decide +kernel
  · exact small_5722709_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5722715
#print axioms cover_5722709

def root_5722708 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722708_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722708_right_fuel : Nat := 23
def small_5722708_right_count : Nat := 229
def small_5722708_right_encoded : String := "128A40F90280010413D7B10500000002078000FC128A7CFD00000003022A458913E1C508000000040DE7CA000000000A0E6014F700000000064000F812FFACF900000001014001040000000A0000000A0000000A13E201080DE7CA000E5FD8F7064000F812FFACF9000000010140010413F5D9050000000208C000FC11FC24FD0000000300000006000000060000000600000006000000000E6014F700000000064000F812FFACF9000000010140010413F5D9050000000208C000FC000000070000000A13F6150508C000FC11FC24FD00000003033F67C913BBF508000000040DAED8770E9661000000000600000000000000070000000611FBE8FD033F67C90000000A00000006000000030000000212FF70F90140010413F5D9050000000208C000FC000000070000000A13F6150508C000FC0000000600000006000000020000000100000004128A40FD022A45890000000A13E201080DE7CA000E5FD8F700000009000000000E6014F700000000064000F812FFACF900000001014001040000000913F61505064000FC12FFACFD00000003033F67C90000000A0000000600000009000000020000000A000000040000000313D7ED05078000FC128A7CFD00000003022A458913E1C508000000040DE7CA000E5FD8F7064000F812FFACF90000000103C0010413A511050000000208C000FC000000080000000A0000000600000006000000000E6014F700000000064000F812FFACF90000000103C0010413A511050000000208C000FC11FC24FD00000003011523490000000A13F895080DAED8770E96610000000006000000000E9625000000000006E000F812C820F90000000103200104000000070000000600000006000000040000000A13A54D0508C000FC11FC24FD000000030115234913F85908000000040000000500000006000000050000000212FF70F903C0010413A511050000000208C000FC0000000800000005000000050000000113E201080DE7CA00000000060E6014F700000000064000F812FFACF90000000103C0010413A511050000000208C000FC11FC24FD000000030000000600000006000000060000000600000004128A40FD022A458913E1C508000000040DE7CA000E5FD8F700000005000000000000000513E201080DE7CA00000000060E6014F700000000064000F812FFACF90000000103C0010413A5110500000002064000FC12FFACFD000000030000000600000005000000050000000500000004000000030000000200000001"
theorem small_5722708_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5722708_right_root small_5722708_right_fuel small_5722708_right_count small_5722708_right_encoded = true := by
  decide +kernel
theorem small_5722708_right_covered : CoveredBy scale carrier boxes small_5722708_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5722708_right_root small_5722708_right_fuel small_5722708_right_count small_5722708_right_encoded small_5722708_right_checked

theorem cover_5722708 : CoveredBy scale carrier boxes root_5722708 := by
  apply coveredBy_split_literal root_5722708 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5722709 small_5722708_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5722709
  · exact small_5722708_right_covered
#print axioms cover_5722708

def root_5722702 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722702_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722702_left_fuel : Nat := 1
def small_5722702_left_count : Nat := 1
def small_5722702_left_encoded : String := "00000000"
theorem small_5722702_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5722702_left_root small_5722702_left_fuel small_5722702_left_count small_5722702_left_encoded = true := by
  decide +kernel
theorem small_5722702_left_covered : CoveredBy scale carrier boxes small_5722702_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5722702_left_root small_5722702_left_fuel small_5722702_left_count small_5722702_left_encoded small_5722702_left_checked

theorem cover_5722702 : CoveredBy scale carrier boxes root_5722702 := by
  apply coveredBy_split_literal root_5722702 small_5722702_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5722708 coord0 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_5722702_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5722708
#print axioms cover_5722702

def root_5722518 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722518_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722518_left_fuel : Nat := 19
def small_5722518_left_count : Nat := 87
def small_5722518_left_encoded : String := "0F8750F7078000F8128A7CF9000000010280010413D7B10500000002078000FC128A7CFD00000003022A458913E1C508000000040B4D44000000000810804CF70000000008C000F811FC24F90000000101400104000000090000000900000008000000090000000913D7ED05078000FC128A7CFD00000003022A458913E1C508000000040B4D4400108010F7000000080000000010804CF70000000008C000F811FC24F90000000103C0010413A51105000000020000000913A54D0508C000FC11FC24FD00000003011523490000000800000006000000090000000211FBE8F903C0010413A511050000000200000008000000060000000100000006128A40FD000000090000000300000002128A40F90280010413D7B10500000002078000FC00000008128A40FD022A45890000000A000000060000000313D7ED05078000FC128A7CFD000000030000000600000006000000020000000100000000"
theorem small_5722518_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5722518_left_root small_5722518_left_fuel small_5722518_left_count small_5722518_left_encoded = true := by
  decide +kernel
theorem small_5722518_left_covered : CoveredBy scale carrier boxes small_5722518_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5722518_left_root small_5722518_left_fuel small_5722518_left_count small_5722518_left_encoded small_5722518_left_checked

theorem cover_5722518 : CoveredBy scale carrier boxes root_5722518 := by
  apply coveredBy_split_literal root_5722518 small_5722518_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5722702 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5722518_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5722702
#print axioms cover_5722518

def root_5722512 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722512_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722512_left_fuel : Nat := 1
def small_5722512_left_count : Nat := 1
def small_5722512_left_encoded : String := "00000004"
theorem small_5722512_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5722512_left_root small_5722512_left_fuel small_5722512_left_count small_5722512_left_encoded = true := by
  decide +kernel
theorem small_5722512_left_covered : CoveredBy scale carrier boxes small_5722512_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5722512_left_root small_5722512_left_fuel small_5722512_left_count small_5722512_left_encoded small_5722512_left_checked

theorem cover_5722512 : CoveredBy scale carrier boxes root_5722512 := by
  apply coveredBy_split_literal root_5722512 small_5722512_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5722518 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5722512_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5722518
#print axioms cover_5722512

def root_5722511 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722511_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722511_right_fuel : Nat := 19
def small_5722511_right_count : Nat := 99
def small_5722511_right_encoded : String := "1386AD080C9A87000F8750F7078000F80000000900000006000000000F878CF700000000078000F8128A7CF9000000010280010413D7B10500000002078000FC128A7CFD00000003067ECE8912EA5908000000040DE7CA000E5FD8F700000009000000000E6014F70000000008C000F80000000911FBE8F901400104000000090000000900000001000000090000000913D7ED05078000FC128A7CFD00000003067ECE8912EA5908000000040DE7CA00000000060E6014F70000000008C000F811FC24F90000000103C00104000000090000000911FBE8F90000000600000001000000060000000900000002128A40F90280010413D7B10500000002078000FC128A7CFD00000003067ECE8912EA5908000000040DE7CA00000000060E6014F700000000064000F812FFACF9000000010140010413F5D9050000000208C000FC0000000700000006000000060000000600000006128A40FD067ECE8912EA59080000000400000009000000060000000313D7ED05078000FC0000000600000006000000020000000100000004"
theorem small_5722511_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5722511_right_root small_5722511_right_fuel small_5722511_right_count small_5722511_right_encoded = true := by
  decide +kernel
theorem small_5722511_right_covered : CoveredBy scale carrier boxes small_5722511_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5722511_right_root small_5722511_right_fuel small_5722511_right_count small_5722511_right_encoded small_5722511_right_checked

theorem cover_5722511 : CoveredBy scale carrier boxes root_5722511 := by
  apply coveredBy_split_literal root_5722511 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5722512 small_5722511_right_root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5722512
  · exact small_5722511_right_covered
#print axioms cover_5722511

def root_5722506 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722506_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722506_right_fuel : Nat := 1
def small_5722506_right_count : Nat := 1
def small_5722506_right_encoded : String := "00000000"
theorem small_5722506_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5722506_right_root small_5722506_right_fuel small_5722506_right_count small_5722506_right_encoded = true := by
  decide +kernel
theorem small_5722506_right_covered : CoveredBy scale carrier boxes small_5722506_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5722506_right_root small_5722506_right_fuel small_5722506_right_count small_5722506_right_encoded small_5722506_right_checked

theorem cover_5722506 : CoveredBy scale carrier boxes root_5722506 := by
  apply coveredBy_split_literal root_5722506 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5722511 small_5722506_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5722511
  · exact small_5722506_right_covered
#print axioms cover_5722506

def root_5722505 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5722505 : CoveredBy scale carrier boxes root_5722505 := by
  apply coveredBy_split_literal root_5722505 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5722506 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2147.root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5722506
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2147.covered
#print axioms cover_5722505

def root_5722499 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722499_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722499_left_fuel : Nat := 1
def small_5722499_left_count : Nat := 1
def small_5722499_left_encoded : String := "00000003"
theorem small_5722499_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5722499_left_root small_5722499_left_fuel small_5722499_left_count small_5722499_left_encoded = true := by
  decide +kernel
theorem small_5722499_left_covered : CoveredBy scale carrier boxes small_5722499_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5722499_left_root small_5722499_left_fuel small_5722499_left_count small_5722499_left_encoded small_5722499_left_checked

theorem cover_5722499 : CoveredBy scale carrier boxes root_5722499 := by
  apply coveredBy_split_literal root_5722499 small_5722499_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5722505 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5722499_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5722505
#print axioms cover_5722499

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140
