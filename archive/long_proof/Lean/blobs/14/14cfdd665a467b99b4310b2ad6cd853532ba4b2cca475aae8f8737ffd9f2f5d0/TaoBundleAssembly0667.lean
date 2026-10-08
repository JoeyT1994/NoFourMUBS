import TaoBundleAssembly0666
import TaoBundleChunkBatch0926
import TaoBundleChunkBatch0927
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667
def root_9876537 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9876537_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9876537_right_fuel : Nat := 30
def small_9876537_right_count : Nat := 249
def small_9876537_right_encoded : String := "138670FA045489FF1386ACFE0000000407800100128A410100000000028001020000000713D7ED03078000FC128A7D07022A457B13E200FA00000002067ECE7F0000000712EA58FE0640010012FF71010000000003C0010213A51103000000010000000713A54D0308C000FC11FC2507033F67BB13BC30FA000000020569AC3F000000071340D4FE05A0010013313501000000000000000513317101046001020000000713841903096000FC11AABD07000000060000000311AA8107000000030000000500000001000000000000000413BBF4FA0569AC3F0000000600000005000000020000000311FBE90700000003000000070000000112FFAD0103C001020000000713A54D0308C000FC11FC2507033F67BB13BC30FA000000020569AC3F000000061340D4FE06E0010012C7E50100000000046001020000000600000006000000060000000400000006000000030000000700000001000000000000000413E1C4FA067ECE7F0000000612EA58FE064001000000000700000006000000040000000200000003128A4107000000030000000700000001128A7D01028001020000000713D7ED03078000FC128A7D07022A457B13E200FA00000002067ECE7F0000000612EA58FE08C001000000000700000006000000040000000600000003000000070000000100000000138670FE07800100128A4101000000000280010213D7B103000000010000000513D7ED03078000FC128A7D07022A457B13E200FA00000002022A457F13E200FE00000004064001000000000512FFAD0103C001020000000513A54D0308C000FC0000000511FBE90700000003000000050000000100000000000000050000000500000003128A4107000000030000000500000001128A7D010280010213D7B10300000001078000FC128A7D07022A457B13E200FA00000002022A457F00000007000000050000000500000003128A4107000000030000000713D7ED03078000FC128A7D07022A457B13E200FA00000002022A457F13E200FE0000000408C0010011FBE9010000000003C0010213A511030000000108C000FC11FC250700000006000000030000000713A54D0308C000FC11FC2507033F67BB0000000A000000050000000311FBE90700000003033F67BB13BC30FA00000002033F67BF0000000700000005000000050000000111FC250103C001020000000613A54D0308C000FC0000000611FBE9070000000300000007000000010000000013E1C4FE08C00100000000050000000A0000000413E1C4FA022A457F00000006000000050000000200000003128A410700000003022A457B13E200FA00000002022A457F00000007000000050000000500000001000000000000000400000002"
theorem small_9876537_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9876537_right_root small_9876537_right_fuel small_9876537_right_count small_9876537_right_encoded = true := by
  decide +kernel
theorem small_9876537_right_covered : CoveredBy scale carrier boxes small_9876537_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9876537_right_root small_9876537_right_fuel small_9876537_right_count small_9876537_right_encoded small_9876537_right_checked

theorem cover_9876537 : CoveredBy scale carrier boxes root_9876537 := by
  apply coveredBy_split_literal root_9876537 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9876538 small_9876537_right_root coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9876538
  · exact small_9876537_right_covered
#print axioms cover_9876537

def root_9876532 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9876532_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9876532_right_fuel : Nat := 1
def small_9876532_right_count : Nat := 1
def small_9876532_right_encoded : String := "00000003"
theorem small_9876532_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9876532_right_root small_9876532_right_fuel small_9876532_right_count small_9876532_right_encoded = true := by
  decide +kernel
theorem small_9876532_right_covered : CoveredBy scale carrier boxes small_9876532_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9876532_right_root small_9876532_right_fuel small_9876532_right_count small_9876532_right_encoded small_9876532_right_checked

theorem cover_9876532 : CoveredBy scale carrier boxes root_9876532 := by
  apply coveredBy_split_literal root_9876532 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9876537 small_9876532_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9876537
  · exact small_9876532_right_covered
#print axioms cover_9876532

def root_9876531 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9876531_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9876531_right_fuel : Nat := 17
def small_9876531_right_count : Nat := 65
def small_9876531_right_encoded : String := "135D450700000003045489FB1386ACFA00000002045489FF1386ACFE00000004078001000000000700000007138670FE07800100128A410100000000028001020000000813D7ED03028000FC13D7ED07067ECE7B0000000612EA58FA022A457F13E200FE000000040640010000000006000000070000000500000002000000030000000600000001128A7D01028001020000000813D7ED03028000FC13D7ED07067ECE7B0000000812EA58FA022A457F0000000700000008000000020000000300000008000000010000000000000004138670FA045489FF00000007138670FE07800100128A41010000000000000005128A7D0100000007000000000000000400000002"
theorem small_9876531_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9876531_right_root small_9876531_right_fuel small_9876531_right_count small_9876531_right_encoded = true := by
  decide +kernel
theorem small_9876531_right_covered : CoveredBy scale carrier boxes small_9876531_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9876531_right_root small_9876531_right_fuel small_9876531_right_count small_9876531_right_encoded small_9876531_right_checked

theorem cover_9876531 : CoveredBy scale carrier boxes root_9876531 := by
  apply coveredBy_split_literal root_9876531 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9876532 small_9876531_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9876532
  · exact small_9876531_right_covered
#print axioms cover_9876531

def root_9876525 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9876525_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9876525_left_fuel : Nat := 1
def small_9876525_left_count : Nat := 1
def small_9876525_left_encoded : String := "00000001"
theorem small_9876525_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9876525_left_root small_9876525_left_fuel small_9876525_left_count small_9876525_left_encoded = true := by
  decide +kernel
theorem small_9876525_left_covered : CoveredBy scale carrier boxes small_9876525_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9876525_left_root small_9876525_left_fuel small_9876525_left_count small_9876525_left_encoded small_9876525_left_checked

theorem cover_9876525 : CoveredBy scale carrier boxes root_9876525 := by
  apply coveredBy_split_literal root_9876525 small_9876525_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9876531 coord1 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_9876525_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9876531
#print axioms cover_9876525

def root_9880364 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9880364 : CoveredBy scale carrier boxes root_9880364 := by
  apply coveredBy_split_literal root_9880364 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3702.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3703.root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3702.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3703.covered
#print axioms cover_9880364

def root_9880358 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9880358_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9880358_left_fuel : Nat := 1
def small_9880358_left_count : Nat := 1
def small_9880358_left_encoded : String := "00000002"
theorem small_9880358_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9880358_left_root small_9880358_left_fuel small_9880358_left_count small_9880358_left_encoded = true := by
  decide +kernel
theorem small_9880358_left_covered : CoveredBy scale carrier boxes small_9880358_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9880358_left_root small_9880358_left_fuel small_9880358_left_count small_9880358_left_encoded small_9880358_left_checked

theorem cover_9880358 : CoveredBy scale carrier boxes root_9880358 := by
  apply coveredBy_split_literal root_9880358 small_9880358_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9880364 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_9880358_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9880364
#print axioms cover_9880358

def root_9885534 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9885534 : CoveredBy scale carrier boxes root_9885534 := by
  apply coveredBy_split_literal root_9885534 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3704.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3705.root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3704.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3705.covered
#print axioms cover_9885534

def root_9885529 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9885529_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9885529_right_fuel : Nat := 1
def small_9885529_right_count : Nat := 1
def small_9885529_right_encoded : String := "00000002"
theorem small_9885529_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9885529_right_root small_9885529_right_fuel small_9885529_right_count small_9885529_right_encoded = true := by
  decide +kernel
theorem small_9885529_right_covered : CoveredBy scale carrier boxes small_9885529_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9885529_right_root small_9885529_right_fuel small_9885529_right_count small_9885529_right_encoded small_9885529_right_checked

theorem cover_9885529 : CoveredBy scale carrier boxes root_9885529 := by
  apply coveredBy_split_literal root_9885529 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9885534 small_9885529_right_root coord2 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9885534
  · exact small_9885529_right_covered
#print axioms cover_9885529

def root_9880357 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9880357 : CoveredBy scale carrier boxes root_9880357 := by
  apply coveredBy_split_literal root_9880357 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9880358 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9885529 coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9880358
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9885529
#print axioms cover_9880357

def root_9880352 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9880352_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9880352_right_fuel : Nat := 1
def small_9880352_right_count : Nat := 1
def small_9880352_right_encoded : String := "00000003"
theorem small_9880352_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9880352_right_root small_9880352_right_fuel small_9880352_right_count small_9880352_right_encoded = true := by
  decide +kernel
theorem small_9880352_right_covered : CoveredBy scale carrier boxes small_9880352_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9880352_right_root small_9880352_right_fuel small_9880352_right_count small_9880352_right_encoded small_9880352_right_checked

theorem cover_9880352 : CoveredBy scale carrier boxes root_9880352 := by
  apply coveredBy_split_literal root_9880352 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9880357 small_9880352_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9880357
  · exact small_9880352_right_covered
#print axioms cover_9880352

def root_9880351 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9880351_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9880351_right_fuel : Nat := 23
def small_9880351_right_count : Nat := 315
def small_9880351_right_encoded : String := "135D450700000003045489FB1386ACFA00000002045489FF1386ACFE0000000407800100128A41010000000007800102128A410300000001028000FC13D7ED07067ECE7B12EA94FA00000002067ECE7F000000050000000612EA58FA067ECE7F0000000712EA58FE06400100000000060000000700000004000000020000000313D7B10700000003067ECE7B0000000600000007128A7D03028000FC13D7ED07067ECE7B0000000512EA58FA067ECE7F000000050000000600000002000000030000000600000001128A7D0107800102128A410300000001028000FC13D7ED07067ECE7B000000050000000700000003000000070000000900000000138670FE07800100128A410100000000078001020000000600000006128A7D0107800102128A410300000001028000FC13D7ED07067ECE7B12EA94FA000000020000000612EA58FA022A457F13E200FE0000000408C0010011FBE901000000000640010200000007000000060000000913E1C4FE08C001000000000611FC25010640010200000008000000060000000000000004000000020000000313D7B10700000003067ECE7B0000000612EA58FA022A457F000000060000000600000002128A7D03028000FC13D7ED07067ECE7B0000000612EA58FA00000009000000020000000300000006000000010000000000000004138670FA045489FF1386ACFE0000000407800100128A4101000000000780010200000007128A7D03028000FC13D7ED07022A457B13E200FA00000002067ECE7F0000000712EA58FE0640010000000006000000090000000413E1C4FA067ECE7F0000000712EA58FE0640010012FF71010000000008C00102000000070000000A0000000700000004000000020000000313D7B10700000003022A457B13E200FA00000002000000070000000700000001128A7D010780010200000007128A7D03028000FC13D7ED07022A457B000000090000000700000003000000070000000100000000138670FE07800100128A41010000000007800102128A410300000001028000FC13D7ED07022A457B13E200FA00000002022A457F13E200FE000000040640010012FF7101000000000000000612FFAD01064001020000000712FFAD0303C000FC13A54D07033F67BB00000006000000050000000300000006000000010000000000000005000000050000000313D7B10700000003022A457B0000000600000005128A7D03028000FC13D7ED07022A457B13E200FA00000002022A457F000000060000000613E1C4FA022A457F13E200FE00000004064001000000000512FFAD0108C001020000000511FC250300000009000000010000000000000005000000020000000313D7B10700000003022A457B000000060000000500000001128A7D0107800102128A410300000001028000FC13D7ED07022A457B13E200FA00000002022A457F0000000713E1C4FE08C001000000000511FC2501064001020000000512FFAD030000000900000001000000000000000413E1C4FA022A457F0000000700000005000000020000000313D7B10700000003022A457B0000000700000005128A7D03028000FC13D7ED07022A457B13E200FA00000002022A457F0000000913E1C4FE000000090000000413E1C4FA022A457F0000000900000005000000020000000313D7B10700000003022A457B0000000913E1C4FA022A457F00000007000000050000000200000001000000000000000400000002"
theorem small_9880351_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9880351_right_root small_9880351_right_fuel small_9880351_right_count small_9880351_right_encoded = true := by
  decide +kernel
theorem small_9880351_right_covered : CoveredBy scale carrier boxes small_9880351_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9880351_right_root small_9880351_right_fuel small_9880351_right_count small_9880351_right_encoded small_9880351_right_checked

theorem cover_9880351 : CoveredBy scale carrier boxes root_9880351 := by
  apply coveredBy_split_literal root_9880351 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9880352 small_9880351_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9880352
  · exact small_9880351_right_covered
#print axioms cover_9880351

def root_9880346 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9880346_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9880346_right_fuel : Nat := 1
def small_9880346_right_count : Nat := 1
def small_9880346_right_encoded : String := "00000001"
theorem small_9880346_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9880346_right_root small_9880346_right_fuel small_9880346_right_count small_9880346_right_encoded = true := by
  decide +kernel
theorem small_9880346_right_covered : CoveredBy scale carrier boxes small_9880346_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9880346_right_root small_9880346_right_fuel small_9880346_right_count small_9880346_right_encoded small_9880346_right_checked

theorem cover_9880346 : CoveredBy scale carrier boxes root_9880346 := by
  apply coveredBy_split_literal root_9880346 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9880351 small_9880346_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9880351
  · exact small_9880346_right_covered
#print axioms cover_9880346

def root_9876524 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9876524 : CoveredBy scale carrier boxes root_9876524 := by
  apply coveredBy_split_literal root_9876524 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9876525 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9880346 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9876525
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9880346
#print axioms cover_9876524

def root_9876519 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9876519_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9876519_right_fuel : Nat := 1
def small_9876519_right_count : Nat := 1
def small_9876519_right_encoded : String := "00000000"
theorem small_9876519_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9876519_right_root small_9876519_right_fuel small_9876519_right_count small_9876519_right_encoded = true := by
  decide +kernel
theorem small_9876519_right_covered : CoveredBy scale carrier boxes small_9876519_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9876519_right_root small_9876519_right_fuel small_9876519_right_count small_9876519_right_encoded small_9876519_right_checked

theorem cover_9876519 : CoveredBy scale carrier boxes root_9876519 := by
  apply coveredBy_split_literal root_9876519 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9876524 small_9876519_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9876524
  · exact small_9876519_right_covered
#print axioms cover_9876519

def root_9870289 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9870289 : CoveredBy scale carrier boxes root_9870289 := by
  apply coveredBy_split_literal root_9870289 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9870290 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9876519 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9870290
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9876519
#print axioms cover_9870289

def root_9870284 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9870284_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9870284_right_fuel : Nat := 1
def small_9870284_right_count : Nat := 1
def small_9870284_right_encoded : String := "00000004"
theorem small_9870284_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9870284_right_root small_9870284_right_fuel small_9870284_right_count small_9870284_right_encoded = true := by
  decide +kernel
theorem small_9870284_right_covered : CoveredBy scale carrier boxes small_9870284_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9870284_right_root small_9870284_right_fuel small_9870284_right_count small_9870284_right_encoded small_9870284_right_checked

theorem cover_9870284 : CoveredBy scale carrier boxes root_9870284 := by
  apply coveredBy_split_literal root_9870284 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9870289 small_9870284_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9870289
  · exact small_9870284_right_covered
#print axioms cover_9870284

def root_9869702 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9869702_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9869702_left_fuel : Nat := 24
def small_9869702_left_count : Nat := 281
def small_9869702_left_encoded : String := "12073CFE0000000405000100135D45010000000005000102135D450300000001050000FC135D8107045489FB1386ACFA000000020CFD9BFF0F350CFE00000004000000050F34D0FE0280010013D7B101000000000280010213D7B10300000001078000FC128A7D07067ECE7B0000000A00000007000000030000000713D7ED03078000FC0000000A0000000A0000000113D7ED01028001020000000713D7ED03078000FC128A7D07067ECE7B000000050000000700000003128A41070000000300000007000000010000000000000004138670FA0CFD9BFF000000070F34D0FE028001000000000700000007000000040000000200000003135D450700000003045489FB1386ACFA000000020000000700000007135D8103050000FC135D8107045489FB1386ACFA000000020CFD9BFF000000050F34D0FE0280010013D7B1010000000007800102128A410300000001078000FC0000000A0000000A128A7D03078000FC0000000A000000050000000113D7ED0107800102128A410300000001078000FC128A7D07067ECE7B0000000512EA58FA0AD3577F0000000510D100FE03C001000000000A0000000500000004000000020000000300000005000000050000000000000004138670FA0CFD9BFF0000000A0F34D0FE0280010013D7B10100000000078001020000000A0000000A13D7ED0107800102128A410300000001078000FC128A7D07022A457B0000000A000000070000000300000007128A7D03078000FC128A7D07022A457B0000000A0000000A000000030000000A0000000100000000000000040000000200000003135D450700000003045489FB1386ACFA000000020CFD9BFF000000050F34D0FE028001000000000A00000005000000040000000A00000001135D810105000102135D450300000001050000FC135D8107045489FB1386ACFA000000020CFD9BFF000000050F34D0FE07800100128A410100000000028001020000000713D7ED03078000FC128A7D07067ECE7B0000000500000007000000030000000500000001128A7D01000000070000000000000004138670FA0CFD9BFF000000070F34D0FE00000007000000040000000200000003135D45070000000300000007135D8103050000FC135D8107045489FB00000005138670FA0CFD9BFF000000050F34D0FE07800100128A41010000000007800102128A410300000001078000FC128A7D07022A457B13E200FA000000020AD3577F0000000510D100FE0000000700000004000000070000000300000007128A7D03078000FC128A7D07022A457B0000000513E1C4FA0AD3577F0000000510D100FE064001000000000812FFAD010000000800000000000000040000000200000003128A410700000003022A457B000000050000000700000001128A7D010780010200000007128A7D03078000FC128A7D070000000500000003000000050000000100000000000000040000000200000003135D450700000003045489FB00000005138670FA0CFD9BFF000000050F34D0FE0000000700000004000000020000000100000000"
theorem small_9869702_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9869702_left_root small_9869702_left_fuel small_9869702_left_count small_9869702_left_encoded = true := by
  decide +kernel
theorem small_9869702_left_covered : CoveredBy scale carrier boxes small_9869702_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9869702_left_root small_9869702_left_fuel small_9869702_left_count small_9869702_left_encoded small_9869702_left_checked

theorem cover_9869702 : CoveredBy scale carrier boxes root_9869702 := by
  apply coveredBy_split_literal root_9869702 small_9869702_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9870284 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9869702_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9870284
#print axioms cover_9869702

def root_9869697 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9869697_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9869697_right_fuel : Nat := 1
def small_9869697_right_count : Nat := 1
def small_9869697_right_encoded : String := "00000002"
theorem small_9869697_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9869697_right_root small_9869697_right_fuel small_9869697_right_count small_9869697_right_encoded = true := by
  decide +kernel
theorem small_9869697_right_covered : CoveredBy scale carrier boxes small_9869697_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9869697_right_root small_9869697_right_fuel small_9869697_right_count small_9869697_right_encoded small_9869697_right_checked

theorem cover_9869697 : CoveredBy scale carrier boxes root_9869697 := by
  apply coveredBy_split_literal root_9869697 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9869702 small_9869697_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9869702
  · exact small_9869697_right_covered
#print axioms cover_9869697

def root_9869017 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9869017_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9869017_left_fuel : Nat := 26
def small_9869017_left_count : Nat := 331
def small_9869017_left_encoded : String := "12073CFA0000000208A912FF12073CFE0000000405000100135D45010000000005000102135D450300000001050000FC135D81070CFD9BFB000000050F34D0FA0CFD9BFF000000050F34D0FE0280010013D7B101000000000280010213D7B10300000001078000FC128A7D070000000500000003000000050000000500000005000000040000000200000003000000050000000500000005120700FE05000100135D45010000000005000102135D450300000001050000FC135D81070CFD9BFB0F350CFA00000002000000060F34D0FA045489FF1386ACFE000000040280010013D7B101000000000280010213D7B10300000001078000FC128A7D070AD3577B0000000610D100FA000000060000000200000003000000060000000613D7ED010280010213D7B10300000001078000FC000000080000000813D7ED03078000FC128A7D070AD3577B0000000510D100FA067ECE7F00000005000000060000000200000003128A410700000003000000060000000100000000138670FE028001000000000613D7ED0102800102000000060000000600000000000000040000000200000003135D4507000000030CFD9BFB000000060F34D0FA0000000600000002135D8103050000FC135D81070CFD9BFB000000060F34D0FA045489FF1386ACFE00000004028001000000000613D7ED0107800102128A410300000001078000FC128A7D070AD3577B0000000510D100FA067ECE7F00000005000000060000000200000003000000050000000500000000000000060000000200000003135D4507000000030000000600000001135D810105000102135D450300000001050000FC135D81070CFD9BFB0F350CFA00000002045489FF00000005000000080F34D0FA045489FF1386ACFE0000000407800100128A4101000000000280010213D7B10300000001078000FC000000080000000813D7ED03078000FC128A7D070AD3577B0000000510D100FA067ECE7F0000000512EA58FE0640010012FF71010000000000000008000000050000000400000002000000030000000500000001128A7D010280010213D7B10300000001078000FC00000008000000050000000500000000138670FE07800100128A410100000000028001020000000813D7ED03078000FC128A7D070AD3577B0000000610D100FA022A457F000000080000000600000002000000030000000600000001128A7D01028001020000000813D7ED03078000FC128A7D070AD3577B0000000810D100FA022A457F00000008000000080000000200000003000000080000000100000000000000040000000200000003135D4507000000030CFD9BFB000000080F34D0FA045489FF1386ACFE000000040780010000000008000000050000000800000002135D8103050000FC135D81070CFD9BFB000000050F34D0FA045489FF00000005138670FE07800100128A41010000000007800102128A410300000001078000FC128A7D070AD3577B0000000610D100FA022A457F0000000600000006000000020000000300000006128A7D030000000600000001128A7D0107800102128A410300000001078000FC128A7D070AD3577B0000000510D100FA022A457F0000000513E1C4FE08C00100000000060000000A000000040000000200000003128A4107000000030AD3577B0000000510D100FA022A457F000000050000000600000002128A7D03078000FC128A7D070000000500000003000000050000000100000000000000040000000200000003135D4507000000030CFD9BFB000000050F34D0FA045489FF000000050000000600000002000000010000000000000004"
theorem small_9869017_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9869017_left_root small_9869017_left_fuel small_9869017_left_count small_9869017_left_encoded = true := by
  decide +kernel
theorem small_9869017_left_covered : CoveredBy scale carrier boxes small_9869017_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9869017_left_root small_9869017_left_fuel small_9869017_left_count small_9869017_left_encoded small_9869017_left_checked

theorem cover_9869017 : CoveredBy scale carrier boxes root_9869017 := by
  apply coveredBy_split_literal root_9869017 small_9869017_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9869697 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9869017_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9869697
#print axioms cover_9869017

def root_9869011 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9869011_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9869011_left_fuel : Nat := 1
def small_9869011_left_count : Nat := 1
def small_9869011_left_encoded : String := "00000004"
theorem small_9869011_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9869011_left_root small_9869011_left_fuel small_9869011_left_count small_9869011_left_encoded = true := by
  decide +kernel
theorem small_9869011_left_covered : CoveredBy scale carrier boxes small_9869011_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9869011_left_root small_9869011_left_fuel small_9869011_left_count small_9869011_left_encoded small_9869011_left_checked

theorem cover_9869011 : CoveredBy scale carrier boxes root_9869011 := by
  apply coveredBy_split_literal root_9869011 small_9869011_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9869017 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9869011_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9869017
#print axioms cover_9869011

def root_9869010 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9869010_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9869010_right_fuel : Nat := 4
def small_9869010_right_count : Nat := 7
def small_9869010_right_encoded : String := "1151E8FF08A912FB00000005120700FA000000050000000200000004"
theorem small_9869010_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9869010_right_root small_9869010_right_fuel small_9869010_right_count small_9869010_right_encoded = true := by
  decide +kernel
theorem small_9869010_right_covered : CoveredBy scale carrier boxes small_9869010_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9869010_right_root small_9869010_right_fuel small_9869010_right_count small_9869010_right_encoded small_9869010_right_checked

theorem cover_9869010 : CoveredBy scale carrier boxes root_9869010 := by
  apply coveredBy_split_literal root_9869010 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9869011 small_9869010_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9869011
  · exact small_9869010_right_covered
#print axioms cover_9869010

def root_9869004 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9869004_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9869004_left_fuel : Nat := 1
def small_9869004_left_count : Nat := 1
def small_9869004_left_encoded : String := "00000003"
theorem small_9869004_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9869004_left_root small_9869004_left_fuel small_9869004_left_count small_9869004_left_encoded = true := by
  decide +kernel
theorem small_9869004_left_covered : CoveredBy scale carrier boxes small_9869004_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9869004_left_root small_9869004_left_fuel small_9869004_left_count small_9869004_left_encoded small_9869004_left_checked

theorem cover_9869004 : CoveredBy scale carrier boxes root_9869004 := by
  apply coveredBy_split_literal root_9869004 small_9869004_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9869010 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9869004_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9869010
#print axioms cover_9869004

def root_9842872 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9842872 : CoveredBy scale carrier boxes root_9842872 := by
  apply coveredBy_split_literal root_9842872 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9842873 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9869004 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9842873
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9869004
#print axioms cover_9842872

def root_9842866 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842866_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842866_left_fuel : Nat := 1
def small_9842866_left_count : Nat := 1
def small_9842866_left_encoded : String := "00000002"
theorem small_9842866_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9842866_left_root small_9842866_left_fuel small_9842866_left_count small_9842866_left_encoded = true := by
  decide +kernel
theorem small_9842866_left_covered : CoveredBy scale carrier boxes small_9842866_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9842866_left_root small_9842866_left_fuel small_9842866_left_count small_9842866_left_encoded small_9842866_left_checked

theorem cover_9842866 : CoveredBy scale carrier boxes root_9842866 := by
  apply coveredBy_split_literal root_9842866 small_9842866_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9842872 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9842866_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9842872
#print axioms cover_9842866

def root_9842865 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842865_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842865_right_fuel : Nat := 8
def small_9842865_right_count : Nat := 29
def small_9842865_right_encoded : String := "1151E8FB0A0000FC115225070A0000FE115224FF0000000408A913070000000512073CFC00000003000000051151E8FF0000000500000004000000031151E907000000030A0000FE115224FF0000000408A912FF00000005120700FE00000005000000041151E8FF000000050000000400000002"
theorem small_9842865_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9842865_right_root small_9842865_right_fuel small_9842865_right_count small_9842865_right_encoded = true := by
  decide +kernel
theorem small_9842865_right_covered : CoveredBy scale carrier boxes small_9842865_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9842865_right_root small_9842865_right_fuel small_9842865_right_count small_9842865_right_encoded small_9842865_right_checked

theorem cover_9842865 : CoveredBy scale carrier boxes root_9842865 := by
  apply coveredBy_split_literal root_9842865 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9842866 small_9842865_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9842866
  · exact small_9842865_right_covered
#print axioms cover_9842865

def root_9842859 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842859_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842859_left_fuel : Nat := 1
def small_9842859_left_count : Nat := 1
def small_9842859_left_encoded : String := "00000001"
theorem small_9842859_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9842859_left_root small_9842859_left_fuel small_9842859_left_count small_9842859_left_encoded = true := by
  decide +kernel
theorem small_9842859_left_covered : CoveredBy scale carrier boxes small_9842859_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9842859_left_root small_9842859_left_fuel small_9842859_left_count small_9842859_left_encoded small_9842859_left_checked

theorem cover_9842859 : CoveredBy scale carrier boxes root_9842859 := by
  apply coveredBy_split_literal root_9842859 small_9842859_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9842865 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9842859_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9842865
#print axioms cover_9842859

def root_9842858 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9842858 : CoveredBy scale carrier boxes root_9842858 := by
  apply coveredBy_split_literal root_9842858 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9842859 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3706.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9842859
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3706.covered
#print axioms cover_9842858

def root_9842852 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842852_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842852_left_fuel : Nat := 1
def small_9842852_left_count : Nat := 1
def small_9842852_left_encoded : String := "00000000"
theorem small_9842852_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9842852_left_root small_9842852_left_fuel small_9842852_left_count small_9842852_left_encoded = true := by
  decide +kernel
theorem small_9842852_left_covered : CoveredBy scale carrier boxes small_9842852_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9842852_left_root small_9842852_left_fuel small_9842852_left_count small_9842852_left_encoded small_9842852_left_checked

theorem cover_9842852 : CoveredBy scale carrier boxes root_9842852 := by
  apply coveredBy_split_literal root_9842852 small_9842852_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9842858 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9842852_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9842858
#print axioms cover_9842852

def root_9893592 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9893592 : CoveredBy scale carrier boxes root_9893592 := by
  apply coveredBy_split_literal root_9893592 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3707.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3708.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3707.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3708.covered
#print axioms cover_9893592

def root_9893587 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9893587_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9893587_right_fuel : Nat := 1
def small_9893587_right_count : Nat := 1
def small_9893587_right_encoded : String := "00000000"
theorem small_9893587_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9893587_right_root small_9893587_right_fuel small_9893587_right_count small_9893587_right_encoded = true := by
  decide +kernel
theorem small_9893587_right_covered : CoveredBy scale carrier boxes small_9893587_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9893587_right_root small_9893587_right_fuel small_9893587_right_count small_9893587_right_encoded small_9893587_right_checked

theorem cover_9893587 : CoveredBy scale carrier boxes root_9893587 := by
  apply coveredBy_split_literal root_9893587 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9893592 small_9893587_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9893592
  · exact small_9893587_right_covered
#print axioms cover_9893587

def root_9842851 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9842851 : CoveredBy scale carrier boxes root_9842851 := by
  apply coveredBy_split_literal root_9842851 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9842852 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.root_9893587 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9842852
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667.cover_9893587
#print axioms cover_9842851

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0667
