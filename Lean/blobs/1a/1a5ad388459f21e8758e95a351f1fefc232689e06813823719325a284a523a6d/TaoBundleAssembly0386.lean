import TaoBundleAssembly0384
import TaoBundleAssembly0385
import TaoBundleChunkBatch0506
import TaoBundleChunkBatch0511
import TaoBundleChunkBatch0512
import TaoBundleChunkBatch0513
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386
def root_5453353 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453353_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453353_right_fuel : Nat := 21
def small_5453353_right_count : Nat := 185
def small_5453353_right_encoded : String := "135D44FD04548A05138670FA04548A09138671080000000407800100128A40F7078000F8128A7CF900000001028000FC13D7ECFD00000003022A45850000000513E200FA00000002022A4589000000050000000913D7B0FD022A4585000000050000000900000003128A40F9000000050000000100000000128A7CF700000000078000F8128A7CF900000001028000FC13D7ECFD00000003022A45850000000513E200FA00000002022A45890000000513E2010808C0010011FBE8F708C000F80000000911FBE8F900000009000000010000000011FC24F70000000008C000F80000000811FBE8F90000000A000000010000000413D7B0FD022A4585000000050000000A00000003128A40F9028000FC13D7ECFD00000003022A4585000000050000000A00000005000000011386AD0807800100128A40F7078000F800000009128A40F9000000090000000100000000128A7CF700000000078000F8128A7CF900000001028000FC13D7ECFD00000003022A458513E1C4FA067ECE8912EA59080000000408C0010011FBE8F708C000F80000000811FBE8F900000008000000010000000011FC24F7000000000000000800000009000000020000000900000009128A40F9028000FC13D7ECFD00000003022A458513E1C4FA067ECE8912EA59080000000408C0010011FBE8F7000000050000000011FC24F700000000064000F812FFACF90000000103C000FC000000080000000500000005000000090000000200000009000000090000000100000004000000021386ACFA0000000204548A09138671080000000407800100128A40F7078000F8128A7CF900000001028000FC13D7ECFD00000003067ECE8512EA58FA000000090000000200000009000000090000000A00000000128A7CF700000000078000F8128A7CF900000001028000FC13D7ECFD00000003067ECE8512EA58FA022A45890000000A13E2010808C00100000000090000000A00000004000000020000000A000000090000000A0000000900000003"
theorem small_5453353_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5453353_right_root small_5453353_right_fuel small_5453353_right_count small_5453353_right_encoded = true := by
  decide +kernel
theorem small_5453353_right_covered : CoveredBy scale carrier boxes small_5453353_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5453353_right_root small_5453353_right_fuel small_5453353_right_count small_5453353_right_encoded small_5453353_right_checked

theorem cover_5453353 : CoveredBy scale carrier boxes root_5453353 := by
  apply coveredBy_split_literal root_5453353 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.root_5453354 small_5453353_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.cover_5453354
  · exact small_5453353_right_covered
#print axioms cover_5453353

def root_5453347 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453347_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453347_left_fuel : Nat := 1
def small_5453347_left_count : Nat := 1
def small_5453347_left_encoded : String := "00000001"
theorem small_5453347_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5453347_left_root small_5453347_left_fuel small_5453347_left_count small_5453347_left_encoded = true := by
  decide +kernel
theorem small_5453347_left_covered : CoveredBy scale carrier boxes small_5453347_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5453347_left_root small_5453347_left_fuel small_5453347_left_count small_5453347_left_encoded small_5453347_left_checked

theorem cover_5453347 : CoveredBy scale carrier boxes root_5453347 := by
  apply coveredBy_split_literal root_5453347 small_5453347_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5453353 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5453347_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5453353
#print axioms cover_5453347

def root_5453346 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453346_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453346_right_fuel : Nat := 18
def small_5453346_right_count : Nat := 201
def small_5453346_right_encoded : String := "135D44F9050000FC135D80FD0000000304548A05138670FA04548A09138671080000000407800100128A40F7028000F813D7ECF900000001078000FC128A7CFD00000003022A45850000000513E200FA00000002022A45890000000500000006128A40FD000000050000000313D7B0F9078000FC00000006000000050000000100000000128A7CF700000000028000F813D7ECF900000001078000FC128A7CFD00000003022A45850000000500000007128A40FD022A4585000000050000000A0000000313D7B0F9078000FC000000070000000A000000011386AD0807800100128A40F70000000600000000128A7CF700000000028000F813D7ECF900000001078000FC00000007128A40FD022A458513E1C4FA067ECE8912EA59080000000400000006000000060000000213E200FA00000002067ECE8912EA59080000000400000007000000060000000313D7B0F9000000060000000100000004000000021386ACFA0000000204548A09138671080000000407800100128A40F7028000F813D7ECF900000001078000FC128A7CFD00000003067ECE8512EA58FA022A45890000000A00000006000000020000000A0000000A0000000A00000000128A7CF700000000028000F813D7ECF900000001078000FC128A7CFD00000003067ECE8512EA58FA0000000700000002000000070000000A0000000A1386AD0807800100128A40F7028000F813D7ECF900000001078000FC00000006000000060000000600000000128A7CF700000000028000F813D7ECF900000001078000FC00000007128A40FD067ECE8512EA58FA067ECE890000000A0000000600000002000000090000000313D7B0F9078000FC000000060000000A0000000100000004135D44FD04548A05138670FA04548A09000000051386AD0807800100128A40F7028000F8000000090000000600000000128A7CF700000000028000F813D7ECF900000001028000FC13D7ECFD00000003022A458513E1C4FA067ECE890000000500000006000000020000000A000000090000000A00000004000000021386ACFA0000000204548A090000000A1386AD0807800100000000090000000A000000040000000300000001"
theorem small_5453346_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5453346_right_root small_5453346_right_fuel small_5453346_right_count small_5453346_right_encoded = true := by
  decide +kernel
theorem small_5453346_right_covered : CoveredBy scale carrier boxes small_5453346_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5453346_right_root small_5453346_right_fuel small_5453346_right_count small_5453346_right_encoded small_5453346_right_checked

theorem cover_5453346 : CoveredBy scale carrier boxes root_5453346 := by
  apply coveredBy_split_literal root_5453346 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5453347 small_5453346_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5453347
  · exact small_5453346_right_covered
#print axioms cover_5453346

def root_5453340 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453340_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453340_left_fuel : Nat := 1
def small_5453340_left_count : Nat := 1
def small_5453340_left_encoded : String := "00000000"
theorem small_5453340_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5453340_left_root small_5453340_left_fuel small_5453340_left_count small_5453340_left_encoded = true := by
  decide +kernel
theorem small_5453340_left_covered : CoveredBy scale carrier boxes small_5453340_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5453340_left_root small_5453340_left_fuel small_5453340_left_count small_5453340_left_encoded small_5453340_left_checked

theorem cover_5453340 : CoveredBy scale carrier boxes root_5453340 := by
  apply coveredBy_split_literal root_5453340 small_5453340_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5453346 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5453340_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5453346
#print axioms cover_5453340

def root_5451394 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5451394 : CoveredBy scale carrier boxes root_5451394 := by
  apply coveredBy_split_literal root_5451394 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2042.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5453340 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2042.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5453340
#print axioms cover_5451394

def root_5451388 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451388_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451388_left_fuel : Nat := 1
def small_5451388_left_count : Nat := 1
def small_5451388_left_encoded : String := "00000004"
theorem small_5451388_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5451388_left_root small_5451388_left_fuel small_5451388_left_count small_5451388_left_encoded = true := by
  decide +kernel
theorem small_5451388_left_covered : CoveredBy scale carrier boxes small_5451388_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5451388_left_root small_5451388_left_fuel small_5451388_left_count small_5451388_left_encoded small_5451388_left_checked

theorem cover_5451388 : CoveredBy scale carrier boxes root_5451388 := by
  apply coveredBy_split_literal root_5451388 small_5451388_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5451394 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5451388_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5451394
#print axioms cover_5451388

def root_5451387 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451387_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451387_right_fuel : Nat := 18
def small_5451387_right_count : Nat := 81
def small_5451387_right_encoded : String := "12073D0805000100135D44F7050000F800000009135D44F9050000FC00000006000000060000000100000000135D80F700000000050000F8135D80F900000001050000FC135D80FD0000000304548A05138670FA0CFD9C090F34D1080000000407800100128A40F7078000F8000000090000000600000000128A7CF700000000078000F8128A7CF900000001078000FC128A7CFD000000030000000500000009128A40F9078000FC00000006000000090000000100000005000000021386ACFA000000020CFD9C090F34D108000000040780010000000005128A7CF700000000000000050000000500000009135D44F9050000FC135D80FD0000000304548A05138670FA0CFD9C090F34D108000000040000000600000006000000021386ACFA000000020CFD9C090F34D108000000040000000600000005000000090000000100000004"
theorem small_5451387_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5451387_right_root small_5451387_right_fuel small_5451387_right_count small_5451387_right_encoded = true := by
  decide +kernel
theorem small_5451387_right_covered : CoveredBy scale carrier boxes small_5451387_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5451387_right_root small_5451387_right_fuel small_5451387_right_count small_5451387_right_encoded small_5451387_right_checked

theorem cover_5451387 : CoveredBy scale carrier boxes root_5451387 := by
  apply coveredBy_split_literal root_5451387 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5451388 small_5451387_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5451388
  · exact small_5451387_right_covered
#print axioms cover_5451387

def root_5451382 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451382_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451382_right_fuel : Nat := 1
def small_5451382_right_count : Nat := 1
def small_5451382_right_encoded : String := "00000002"
theorem small_5451382_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5451382_right_root small_5451382_right_fuel small_5451382_right_count small_5451382_right_encoded = true := by
  decide +kernel
theorem small_5451382_right_covered : CoveredBy scale carrier boxes small_5451382_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5451382_right_root small_5451382_right_fuel small_5451382_right_count small_5451382_right_encoded small_5451382_right_checked

theorem cover_5451382 : CoveredBy scale carrier boxes root_5451382 := by
  apply coveredBy_split_literal root_5451382 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5451387 small_5451382_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5451387
  · exact small_5451382_right_covered
#print axioms cover_5451382

def root_5451381 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451381_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451381_right_fuel : Nat := 29
def small_5451381_right_count : Nat := 365
def small_5451381_right_encoded : String := "12073CFA0000000208A91309120701080000000405000100135D44F7050000F8135D80F900000001050000FC135D80FD000000030CFD9C050F34D0FA04548A0913867108000000040280010013D7B0F7078000F800000009128A40F900000009000000010000000013D7ECF700000000078000F8128A7CF900000001078000FC128A7CFD000000030AD3578510D100FA00000009000000020000000500000009128A40F9078000FC128A7CFD000000030AD3578510D100FA0000000A0000000200000008000000090000000100000009000000020F350CFA0000000204548A0913867108000000040C9A86FA00000009000000090000000500000009135D44F9050000FC135D80FD000000030CFD9C050F34D0FA04548A090000000A00000006000000020F350CFA0000000204548A090000000800000006135D44FD0CFD9C050F34D0FA000000090000000200000009000000030000000100000000135D80F700000000050000F8135D80F900000001050000FC135D80FD000000030CFD9C050F34D0FA04548A09138671080000000407800100128A40F7078000F8128A7CF900000001078000FC128A7CFD000000030AD3578510D100FA022A458913E1C508000000040640010012FF70F708C000F8000000090000000A0000000012FFACF70000000008C000F811FC24F90000000108C000FC00000005000000090000000A000000050000000200000005128A40FD0AD3578510D100FA00000009000000020000000900000003128A40F9078000FC128A7CFD000000030AD3578510D100FA0000000A000000020000000A0000000A0000000100000000128A7CF700000000078000F8128A7CF900000001078000FC128A7CFD000000030AD3578510D100FA022A458913E1C5080000000408C0010011FBE8F708C000F811FC24F900000001000000050000000A0000000011FC24F70000000000000007000000050000000200000005128A40FD0AD3578510D100FA0000000A000000020000000A00000003128A40F9078000FC128A7CFD000000030AD3578510D100FA0000000A000000020000000A0000000A000000011386AD0807800100128A40F7078000F800000009128A40F9000000090000000100000000128A7CF700000000078000F8128A7CF90000000100000005128A40F9078000FC128A7CFD0000000300000005000000090000000100000004000000020F350CFA0000000204548A0913867108000000040C9A86FA0F878D0507800100128A40F7078000F8000000090000000A00000000128A7CF700000000078000F8128A7CF900000001078000FC00000005000000090000000A000000020F87510500000002078001000000000A128A7CF700000000078000F8128A7CF900000001078000FC00000005000000090000000A1386AD080C9A86FA000000050F875105000000020000000500000004135D44FD0CFD9C050F34D0FA04548A091386710800000004078001000000000A0000000A00000009000000020F350CFA0000000204548A090000000A0000000900000003135D44F9050000FC135D80FD000000030CFD9C050F34D0FA04548A091386710800000004078001000000000A0000000A1386AD0807800100128A40F7028000F8000000090000000600000000128A7CF700000000028000F813D7ECF900000001078000FC128A7CFD0000000300000007000000090000000A00000004000000020F350CFA0000000204548A090000000A1386AD080C9A86FA0F878D0507800100000000090000000A000000020F875105000000020000000900000004135D44FD0CFD9C050F34D0FA0000000A000000020000000A000000030000000112073D0805000100135D44F70000000900000000135D80F700000000050000F8135D80F900000001050000FC135D80FD000000030CFD9C050F34D0FA00000005000000020000000500000009135D44F9050000FC135D80FD000000030CFD9C050F34D0FA000000090000000200000009000000090000000100000004"
theorem small_5451381_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5451381_right_root small_5451381_right_fuel small_5451381_right_count small_5451381_right_encoded = true := by
  decide +kernel
theorem small_5451381_right_covered : CoveredBy scale carrier boxes small_5451381_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5451381_right_root small_5451381_right_fuel small_5451381_right_count small_5451381_right_encoded small_5451381_right_checked

theorem cover_5451381 : CoveredBy scale carrier boxes root_5451381 := by
  apply coveredBy_split_literal root_5451381 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5451382 small_5451381_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5451382
  · exact small_5451381_right_covered
#print axioms cover_5451381

def root_5451376 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451376_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451376_right_fuel : Nat := 1
def small_5451376_right_count : Nat := 1
def small_5451376_right_encoded : String := "00000004"
theorem small_5451376_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5451376_right_root small_5451376_right_fuel small_5451376_right_count small_5451376_right_encoded = true := by
  decide +kernel
theorem small_5451376_right_covered : CoveredBy scale carrier boxes small_5451376_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5451376_right_root small_5451376_right_fuel small_5451376_right_count small_5451376_right_encoded small_5451376_right_checked

theorem cover_5451376 : CoveredBy scale carrier boxes root_5451376 := by
  apply coveredBy_split_literal root_5451376 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5451381 small_5451376_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5451381
  · exact small_5451376_right_covered
#print axioms cover_5451376

def root_5451368 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451368_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451368_left_fuel : Nat := 2
def small_5451368_left_count : Nat := 3
def small_5451368_left_encoded : String := "1151E9090000000400000009"
theorem small_5451368_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5451368_left_root small_5451368_left_fuel small_5451368_left_count small_5451368_left_encoded = true := by
  decide +kernel
theorem small_5451368_left_covered : CoveredBy scale carrier boxes small_5451368_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5451368_left_root small_5451368_left_fuel small_5451368_left_count small_5451368_left_encoded small_5451368_left_checked

theorem cover_5451368 : CoveredBy scale carrier boxes root_5451368 := by
  apply coveredBy_split_literal root_5451368 small_5451368_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5451376 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5451368_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5451376
#print axioms cover_5451368

def root_5451363 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451363_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451363_right_fuel : Nat := 1
def small_5451363_right_count : Nat := 1
def small_5451363_right_encoded : String := "00000003"
theorem small_5451363_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5451363_right_root small_5451363_right_fuel small_5451363_right_count small_5451363_right_encoded = true := by
  decide +kernel
theorem small_5451363_right_covered : CoveredBy scale carrier boxes small_5451363_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5451363_right_root small_5451363_right_fuel small_5451363_right_count small_5451363_right_encoded small_5451363_right_checked

theorem cover_5451363 : CoveredBy scale carrier boxes root_5451363 := by
  apply coveredBy_split_literal root_5451363 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5451368 small_5451363_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5451368
  · exact small_5451363_right_covered
#print axioms cover_5451363

def root_5448623 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5448623 : CoveredBy scale carrier boxes root_5448623 := by
  apply coveredBy_split_literal root_5448623 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2041.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5451363 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2041.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5451363
#print axioms cover_5448623

def root_5448618 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5448618_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5448618_right_fuel : Nat := 1
def small_5448618_right_count : Nat := 1
def small_5448618_right_encoded : String := "00000002"
theorem small_5448618_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5448618_right_root small_5448618_right_fuel small_5448618_right_count small_5448618_right_encoded = true := by
  decide +kernel
theorem small_5448618_right_covered : CoveredBy scale carrier boxes small_5448618_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5448618_right_root small_5448618_right_fuel small_5448618_right_count small_5448618_right_encoded small_5448618_right_checked

theorem cover_5448618 : CoveredBy scale carrier boxes root_5448618 := by
  apply coveredBy_split_literal root_5448618 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5448623 small_5448618_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5448623
  · exact small_5448618_right_covered
#print axioms cover_5448618

def root_5448617 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5448617_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5448617_right_fuel : Nat := 24
def small_5448617_right_count : Nat := 207
def small_5448617_right_encoded : String := "1151E905000000020A0000FC115224FD000000030A0001081151E90900000004000000051152250908A912FD12073CFC0000000308A91309120701080000000405000100135D44F7050000F8135D80F900000001050000FA00000005135D450500000002000000050000000800000000135D80F700000000050000F8135D80F900000001050000FA135D81050CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86FC000000050F8750FD0780010000000005128A7CF7000000000000000500000003000000050000000500000002135D4505000000020CFD9BFD0F350CFC0000000304548A091386710800000004000000080000000500000005135D44F9050000FA135D81050CFD9BFD000000080F34D0FC000000050000000300000002135D4505000000020CFD9BFD000000080F34D0FC00000005000000030000000112073D080500010000000005135D80F7000000000000000500000004120700FC0000000500000003000000041151E8FD0A0001081151E90900000004000000051152250908A91309120701080000000405000100135D44F7050000F8135D80F900000001050000FA0000000900000009135D44F9050000FA00000009000000060000000100000000135D80F700000000050000F8135D80F900000001050000FA135D8105050000FC135D80FD0000000304548A09138671080000000407800100128A40F7078000F8000000090000000800000000128A7CF700000000078000F8128A7CF900000001078000FA00000009128A410500000002000000090000000A000000090000000900000002135D450500000002050000FC135D80FD0000000304548A0913867108000000040780010000000008128A7CF700000000078000F800000009000000080000000900000009135D44F9050000FA135D8105050000FC135D80FD0000000304548A09000000081386AD080780010000000006128A7CF700000000028000F80000000900000006000000040000000900000002135D450500000002050000FC135D80FD0000000304548A090000000800000006000000090000000112073D080500010000000009135D80F700000000050000F800000009135D44F90000000900000001000000040000000400000003"
theorem small_5448617_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5448617_right_root small_5448617_right_fuel small_5448617_right_count small_5448617_right_encoded = true := by
  decide +kernel
theorem small_5448617_right_covered : CoveredBy scale carrier boxes small_5448617_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5448617_right_root small_5448617_right_fuel small_5448617_right_count small_5448617_right_encoded small_5448617_right_checked

theorem cover_5448617 : CoveredBy scale carrier boxes root_5448617 := by
  apply coveredBy_split_literal root_5448617 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5448618 small_5448617_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5448618
  · exact small_5448617_right_covered
#print axioms cover_5448617

def root_5448612 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5448612_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5448612_right_fuel : Nat := 1
def small_5448612_right_count : Nat := 1
def small_5448612_right_encoded : String := "00000001"
theorem small_5448612_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5448612_right_root small_5448612_right_fuel small_5448612_right_count small_5448612_right_encoded = true := by
  decide +kernel
theorem small_5448612_right_covered : CoveredBy scale carrier boxes small_5448612_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5448612_right_root small_5448612_right_fuel small_5448612_right_count small_5448612_right_encoded small_5448612_right_checked

theorem cover_5448612 : CoveredBy scale carrier boxes root_5448612 := by
  apply coveredBy_split_literal root_5448612 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5448617 small_5448612_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5448617
  · exact small_5448612_right_covered
#print axioms cover_5448612

def root_5439572 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5439572 : CoveredBy scale carrier boxes root_5439572 := by
  apply coveredBy_split_literal root_5439572 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.root_5439573 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5448612 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0385.cover_5439573
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5448612
#print axioms cover_5439572

def root_5439567 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5439567_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5439567_right_fuel : Nat := 1
def small_5439567_right_count : Nat := 1
def small_5439567_right_encoded : String := "00000000"
theorem small_5439567_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5439567_right_root small_5439567_right_fuel small_5439567_right_count small_5439567_right_encoded = true := by
  decide +kernel
theorem small_5439567_right_covered : CoveredBy scale carrier boxes small_5439567_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5439567_right_root small_5439567_right_fuel small_5439567_right_count small_5439567_right_encoded small_5439567_right_checked

theorem cover_5439567 : CoveredBy scale carrier boxes root_5439567 := by
  apply coveredBy_split_literal root_5439567 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5439572 small_5439567_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5439572
  · exact small_5439567_right_covered
#print axioms cover_5439567

def root_5466729 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5466729_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5466729_left_fuel : Nat := 22
def small_5466729_left_count : Nat := 139
def small_5466729_left_encoded : String := "115224FD000000030A0001081151E90900000004000000051152250908A912F712073D0008A91305120700FA08A912FD12073CFC0000000308A913091207010800000004050000F8135D80F9000000010CFD9BF70F350D0004548A05138670FA0000000700000002000000070000000000000007135D44F9000000070000000112073D08050000F8135D80F9000000010CFD9BF70F350D0004548A05138670FA0CFD9BFD0F350CFC000000030CFD9C090F34D1080000000400000007000000050000000500000002000000050000000000000005135D44F90CFD9BF70F350D0004548A05138670FA00000007000000020000000500000000000000070000000100000004120700FC00000007000000030000000212073CFA0000000208A912FD12073CFC0000000308A913091207010800000004050000F8135D80F9000000010CFD9BF70F350D000CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9BFD0F350CFC0000000304548A091386710800000004000000070000000500000005000000000F34D1000000000000000007135D44F90CFD9BF70F350D000CFD9C050F34D0FA00000007000000020000000700000000000000070000000112073D08050000F800000005135D44F90CFD9BF70F350D000CFD9C050F34D0FA00000005000000020000000500000000000000050000000100000004120700FC000000050000000300000000120701000000000008A91305120700FA00000007000000020000000700000004"
theorem small_5466729_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5466729_left_root small_5466729_left_fuel small_5466729_left_count small_5466729_left_encoded = true := by
  decide +kernel
theorem small_5466729_left_covered : CoveredBy scale carrier boxes small_5466729_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5466729_left_root small_5466729_left_fuel small_5466729_left_count small_5466729_left_encoded small_5466729_left_checked

theorem cover_5466729 : CoveredBy scale carrier boxes root_5466729 := by
  apply coveredBy_split_literal root_5466729 small_5466729_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2046.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5466729_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2046.covered
#print axioms cover_5466729

def root_5466724 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5466724_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5466724_right_fuel : Nat := 1
def small_5466724_right_count : Nat := 1
def small_5466724_right_encoded : String := "00000002"
theorem small_5466724_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5466724_right_root small_5466724_right_fuel small_5466724_right_count small_5466724_right_encoded = true := by
  decide +kernel
theorem small_5466724_right_covered : CoveredBy scale carrier boxes small_5466724_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5466724_right_root small_5466724_right_fuel small_5466724_right_count small_5466724_right_encoded small_5466724_right_checked

theorem cover_5466724 : CoveredBy scale carrier boxes root_5466724 := by
  apply coveredBy_split_literal root_5466724 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5466729 small_5466724_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5466729
  · exact small_5466724_right_covered
#print axioms cover_5466724

def root_5470067 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5470067_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5470067_left_fuel : Nat := 31
def small_5470067_left_count : Nat := 239
def small_5470067_left_encoded : String := "115224FD000000030A0001081151E90900000004000000051152250908A912F712073D0008A912FD12073CFC0000000308A913091207010800000004050000F8135D80F900000001050000FA135D81050CFD9BF70F350D000CFD9BFD0F350CFC0000000304548A0913867108000000040C9A87000F8750F70C9A86FC000000050F8750FD078000F800000005128A40F9078000FA00000005128A41050000000200000005000000010000000300000000000000070000000500000005000000000F34D100000000000000000700000002135D4505000000020CFD9BF70F350D000CFD9BFD0F350CFC0000000304548A0913867108000000040C9A87000F8750F70C9A86FC0F878CFD00000003000000050F8750FD078000F8128A7CF900000001000000050000000800000003000000000F878CF7000000000C9A86FC000000070F8750FD078000F8128A7CF900000001028000FA0000000513D7B10500000002022A458913E1C508000000040DE7CA00000000050000000700000005128A40F9028000FA0000000713D7B10500000002022A458913E1C50800000004000000070000000700000001000000031386AD080C9A8700000000050F878CF70000000000000005000000040F34D0FC0000000500000003000000000F34D1000000000000000007135D44F9050000FA135D81050CFD9BF70F350D000CFD9BFD0F350CFC0000000304548A091386710800000004000000070000000700000007000000000000000700000002135D4505000000020CFD9BF70F350D000CFD9BFD0F350CFC0000000304548A0913867108000000040C9A8700000000080F878CF700000000000000071386AD080C9A87000F8750F70C9A86FC00000007000000060000000000000007000000040F34D0FC0000000700000003000000000F34D10000000000000000070000000112073D08050000F8135D80F900000001050000FA00000005135D45050000000200000005135D44F9050000FA135D81050CFD9BF70F350D0000000005000000000000000500000002135D4505000000020CFD9BF70F350D000CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A8700000000050F878CF700000000000000070000000500000005000000000F34D100000000000CFD9BFD0F350CFC000000030CFD9C090F34D108000000040000000700000007000000070000000100000004120700FC08A91309120701080000000400000007000000050000000300000000120701000000000008A912FD12073CFC0000000308A91309120701080000000400000007000000070000000700000004"
theorem small_5470067_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5470067_left_root small_5470067_left_fuel small_5470067_left_count small_5470067_left_encoded = true := by
  decide +kernel
theorem small_5470067_left_covered : CoveredBy scale carrier boxes small_5470067_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5470067_left_root small_5470067_left_fuel small_5470067_left_count small_5470067_left_encoded small_5470067_left_checked

theorem cover_5470067 : CoveredBy scale carrier boxes root_5470067 := by
  apply coveredBy_split_literal root_5470067 small_5470067_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2047.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5470067_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2047.covered
#print axioms cover_5470067

def root_5470061 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5470061_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5470061_left_fuel : Nat := 1
def small_5470061_left_count : Nat := 1
def small_5470061_left_encoded : String := "00000002"
theorem small_5470061_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5470061_left_root small_5470061_left_fuel small_5470061_left_count small_5470061_left_encoded = true := by
  decide +kernel
theorem small_5470061_left_covered : CoveredBy scale carrier boxes small_5470061_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5470061_left_root small_5470061_left_fuel small_5470061_left_count small_5470061_left_encoded small_5470061_left_checked

theorem cover_5470061 : CoveredBy scale carrier boxes root_5470061 := by
  apply coveredBy_split_literal root_5470061 small_5470061_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5470067 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5470061_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5470067
#print axioms cover_5470061

def root_5466723 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5466723 : CoveredBy scale carrier boxes root_5466723 := by
  apply coveredBy_split_literal root_5466723 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5466724 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5470061 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5466724
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5470061
#print axioms cover_5466723

def root_5466718 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5466718_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5466718_right_fuel : Nat := 1
def small_5466718_right_count : Nat := 1
def small_5466718_right_encoded : String := "00000001"
theorem small_5466718_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5466718_right_root small_5466718_right_fuel small_5466718_right_count small_5466718_right_encoded = true := by
  decide +kernel
theorem small_5466718_right_covered : CoveredBy scale carrier boxes small_5466718_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5466718_right_root small_5466718_right_fuel small_5466718_right_count small_5466718_right_encoded small_5466718_right_checked

theorem cover_5466718 : CoveredBy scale carrier boxes root_5466718 := by
  apply coveredBy_split_literal root_5466718 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5466723 small_5466718_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5466723
  · exact small_5466718_right_covered
#print axioms cover_5466718

def root_5463556 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5463556 : CoveredBy scale carrier boxes root_5463556 := by
  apply coveredBy_split_literal root_5463556 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2045.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5466718 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2045.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5466718
#print axioms cover_5463556

def root_5463550 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5463550_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5463550_left_fuel : Nat := 1
def small_5463550_left_count : Nat := 1
def small_5463550_left_encoded : String := "00000000"
theorem small_5463550_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5463550_left_root small_5463550_left_fuel small_5463550_left_count small_5463550_left_encoded = true := by
  decide +kernel
theorem small_5463550_left_covered : CoveredBy scale carrier boxes small_5463550_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5463550_left_root small_5463550_left_fuel small_5463550_left_count small_5463550_left_encoded small_5463550_left_checked

theorem cover_5463550 : CoveredBy scale carrier boxes root_5463550 := by
  apply coveredBy_split_literal root_5463550 small_5463550_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5463556 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5463550_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5463556
#print axioms cover_5463550

def root_5439566 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5439566 : CoveredBy scale carrier boxes root_5439566 := by
  apply coveredBy_split_literal root_5439566 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5439567 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5463550 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5439567
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5463550
#print axioms cover_5439566

def root_5403120 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5403120 : CoveredBy scale carrier boxes root_5403120 := by
  apply coveredBy_split_literal root_5403120 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5403121 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5439566 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5403121
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5439566
#print axioms cover_5403120

def root_5400064 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5400064 : CoveredBy scale carrier boxes root_5400064 := by
  apply coveredBy_split_literal root_5400064 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2022.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5403120 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2022.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5403120
#print axioms cover_5400064

def root_5474890 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5474890 : CoveredBy scale carrier boxes root_5474890 := by
  apply coveredBy_split_literal root_5474890 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2049.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2050.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2049.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2050.covered
#print axioms cover_5474890

def root_5474884 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5474884_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5474884_left_fuel : Nat := 1
def small_5474884_left_count : Nat := 1
def small_5474884_left_encoded : String := "00000001"
theorem small_5474884_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5474884_left_root small_5474884_left_fuel small_5474884_left_count small_5474884_left_encoded = true := by
  decide +kernel
theorem small_5474884_left_covered : CoveredBy scale carrier boxes small_5474884_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5474884_left_root small_5474884_left_fuel small_5474884_left_count small_5474884_left_encoded small_5474884_left_checked

theorem cover_5474884 : CoveredBy scale carrier boxes root_5474884 := by
  apply coveredBy_split_literal root_5474884 small_5474884_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5474890 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5474884_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5474890
#print axioms cover_5474884

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386
