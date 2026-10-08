import TaoBundleAssembly0442
import TaoBundleAssembly0444
import TaoBundleChunkBatch0603
import TaoBundleChunkBatch0604
import TaoBundleChunkBatch0605
import TaoBundleChunkBatch0606
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445
def root_6416331 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6416331_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6416331_right_fuel : Nat := 18
def small_6416331_right_count : Nat := 141
def small_6416331_right_encoded : String := "135D4509000000040CFD9C030F34D0F804548A0513867104000000020CFD9C0700000006000000061386AD040CFD9C070F34D10600000003000000060F350D060C9A87060F8751070000000307800100128A40F70000000900000000128A7CF700000000028000FE0000000700000006000000090000000300000002000000010F350CF80000000104548A0513867104000000020CFD9C070F34D106000000030C9A86F8000000060F875103000000010780010000000006000000050F350D060C9A86F80F878D030C9A87060F8751070000000307800100128A40F70000000A00000000000000070F878D070000000600000003000000010F875103000000010C9A87060F8751070000000307800100128A40F7028000FE000000070000000500000000000000050F878D0707800100128A40F7028000FE13D7ED09022A458513E1C5040000000200000005000000050000000400000005000000000000000500000003000000031386AD040CFD9C070F34D106000000030C9A86F80F878D0300000009000000010F87510300000001000000050F350D060C9A86F80F878D030C9A87060F8751070000000307800100128A40F7028000FE13D7ED09067ECE850000000700000007000000040000000700000000128A7CF700000000028000FE00000007000000050F878D0707800100128A40F70000000900000000128A7CF7000000000000000500000003000000010F875103000000010C9A87060F8751070000000300000005000000050000000300000002"
theorem small_6416331_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6416331_right_root small_6416331_right_fuel small_6416331_right_count small_6416331_right_encoded = true := by
  decide +kernel
theorem small_6416331_right_covered : CoveredBy scale carrier boxes small_6416331_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6416331_right_root small_6416331_right_fuel small_6416331_right_count small_6416331_right_encoded small_6416331_right_checked

theorem cover_6416331 : CoveredBy scale carrier boxes root_6416331 := by
  apply coveredBy_split_literal root_6416331 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0444.root_6416332 small_6416331_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0444.cover_6416332
  · exact small_6416331_right_covered
#print axioms cover_6416331

def root_6416325 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6416325_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6416325_left_fuel : Nat := 1
def small_6416325_left_count : Nat := 1
def small_6416325_left_encoded : String := "00000000"
theorem small_6416325_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6416325_left_root small_6416325_left_fuel small_6416325_left_count small_6416325_left_encoded = true := by
  decide +kernel
theorem small_6416325_left_covered : CoveredBy scale carrier boxes small_6416325_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6416325_left_root small_6416325_left_fuel small_6416325_left_count small_6416325_left_encoded small_6416325_left_checked

theorem cover_6416325 : CoveredBy scale carrier boxes root_6416325 := by
  apply coveredBy_split_literal root_6416325 small_6416325_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6416331 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_6416325_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6416331
#print axioms cover_6416325

def root_6413579 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6413579 : CoveredBy scale carrier boxes root_6413579 := by
  apply coveredBy_split_literal root_6413579 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2411.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6416325 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2411.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6416325
#print axioms cover_6413579

def root_6413574 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6413574_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6413574_right_fuel : Nat := 1
def small_6413574_right_count : Nat := 1
def small_6413574_right_encoded : String := "00000003"
theorem small_6413574_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6413574_right_root small_6413574_right_fuel small_6413574_right_count small_6413574_right_encoded = true := by
  decide +kernel
theorem small_6413574_right_covered : CoveredBy scale carrier boxes small_6413574_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6413574_right_root small_6413574_right_fuel small_6413574_right_count small_6413574_right_encoded small_6413574_right_checked

theorem cover_6413574 : CoveredBy scale carrier boxes root_6413574 := by
  apply coveredBy_split_literal root_6413574 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6413579 small_6413574_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6413579
  · exact small_6413574_right_covered
#print axioms cover_6413574

def root_6413434 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6413434_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6413434_left_fuel : Nat := 19
def small_6413434_left_count : Nat := 67
def small_6413434_left_encoded : String := "120701060000000305000100135D44F7050000FE00000009135D4509000000040000000900000000135D80F700000000050000FE135D81090CFD9C03000000090F350CF80000000104548A05138671040000000204548A0713867106000000030C9A86F8000000060F875103000000010780010000000006128A7CF700000000000000061386AD060C9A86F80F878D0300000006000000010F8751030000000107800100128A40F7078000FE000000090000000600000000128A7CF700000000078000FE128A7D09022A458500000006000000090000000400000006000000030000000900000004135D4509000000040CFD9C03000000090F350CF80000000104548A050000000600000009"
theorem small_6413434_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6413434_left_root small_6413434_left_fuel small_6413434_left_count small_6413434_left_encoded = true := by
  decide +kernel
theorem small_6413434_left_covered : CoveredBy scale carrier boxes small_6413434_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6413434_left_root small_6413434_left_fuel small_6413434_left_count small_6413434_left_encoded small_6413434_left_checked

theorem cover_6413434 : CoveredBy scale carrier boxes root_6413434 := by
  apply coveredBy_split_literal root_6413434 small_6413434_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6413574 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6413434_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6413574
#print axioms cover_6413434

def root_6413428 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6413428_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6413428_left_fuel : Nat := 1
def small_6413428_left_count : Nat := 1
def small_6413428_left_encoded : String := "00000002"
theorem small_6413428_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6413428_left_root small_6413428_left_fuel small_6413428_left_count small_6413428_left_encoded = true := by
  decide +kernel
theorem small_6413428_left_covered : CoveredBy scale carrier boxes small_6413428_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6413428_left_root small_6413428_left_fuel small_6413428_left_count small_6413428_left_encoded small_6413428_left_checked

theorem cover_6413428 : CoveredBy scale carrier boxes root_6413428 := by
  apply coveredBy_split_literal root_6413428 small_6413428_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6413434 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6413428_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6413434
#print axioms cover_6413428

def root_6413427 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6413427_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6413427_right_fuel : Nat := 23
def small_6413427_right_count : Nat := 99
def small_6413427_right_encoded : String := "12073D0408A9130712070106000000030000000912073D0605000100135D44F7050000FE00000009135D4509000000040000000900000000135D80F700000000050000FE135D81090CFD9C03000000090F350CF8000000010CFD9C050F34D104000000020CFD9C070F34D10600000003000000090F350D060C9A86F80F878D030C9A87060F875107000000030780010000000009128A7CF700000000078000FE00000009128A4109000000040000000900000009000000010F875103000000010C9A87060F875107000000030780010000000008128A7CF700000000078000FE128A7D090AD35785000000070000000500000004000000050F878D070780010000000009128A7CF700000000078000FE000000090000000500000003000000030000000900000004135D4509000000040CFD9C03000000090F350CF8000000010CFD9C050F34D104000000020CFD9C070F34D10600000003000000090F350D060C9A86F80F878D030C9A87060000000800000009000000010000000800000003000000090000000300000002"
theorem small_6413427_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6413427_right_root small_6413427_right_fuel small_6413427_right_count small_6413427_right_encoded = true := by
  decide +kernel
theorem small_6413427_right_covered : CoveredBy scale carrier boxes small_6413427_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6413427_right_root small_6413427_right_fuel small_6413427_right_count small_6413427_right_encoded small_6413427_right_checked

theorem cover_6413427 : CoveredBy scale carrier boxes root_6413427 := by
  apply coveredBy_split_literal root_6413427 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6413428 small_6413427_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6413428
  · exact small_6413427_right_covered
#print axioms cover_6413427

def root_6413421 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6413421_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6413421_left_fuel : Nat := 1
def small_6413421_left_count : Nat := 1
def small_6413421_left_encoded : String := "00000001"
theorem small_6413421_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6413421_left_root small_6413421_left_fuel small_6413421_left_count small_6413421_left_encoded = true := by
  decide +kernel
theorem small_6413421_left_covered : CoveredBy scale carrier boxes small_6413421_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6413421_left_root small_6413421_left_fuel small_6413421_left_count small_6413421_left_encoded small_6413421_left_checked

theorem cover_6413421 : CoveredBy scale carrier boxes root_6413421 := by
  apply coveredBy_split_literal root_6413421 small_6413421_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6413427 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6413421_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6413427
#print axioms cover_6413421

def root_6413381 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6413381_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6413381_left_fuel : Nat := 9
def small_6413381_left_count : Nat := 19
def small_6413381_left_encoded : String := "120700F808A91305120701040000000208A9130712070106000000030000000612073D060500010000000009135D80F700000000050000FE0000000900000006000000030000000900000001"
theorem small_6413381_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6413381_left_root small_6413381_left_fuel small_6413381_left_count small_6413381_left_encoded = true := by
  decide +kernel
theorem small_6413381_left_covered : CoveredBy scale carrier boxes small_6413381_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6413381_left_root small_6413381_left_fuel small_6413381_left_count small_6413381_left_encoded small_6413381_left_checked

theorem cover_6413381 : CoveredBy scale carrier boxes root_6413381 := by
  apply coveredBy_split_literal root_6413381 small_6413381_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6413421 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6413381_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6413421
#print axioms cover_6413381

def root_6413375 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6413375_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6413375_left_fuel : Nat := 1
def small_6413375_left_count : Nat := 1
def small_6413375_left_encoded : String := "00000004"
theorem small_6413375_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6413375_left_root small_6413375_left_fuel small_6413375_left_count small_6413375_left_encoded = true := by
  decide +kernel
theorem small_6413375_left_covered : CoveredBy scale carrier boxes small_6413375_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6413375_left_root small_6413375_left_fuel small_6413375_left_count small_6413375_left_encoded small_6413375_left_checked

theorem cover_6413375 : CoveredBy scale carrier boxes root_6413375 := by
  apply coveredBy_split_literal root_6413375 small_6413375_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6413381 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6413375_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6413381
#print axioms cover_6413375

def root_6396521 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6396521 : CoveredBy scale carrier boxes root_6396521 := by
  apply coveredBy_split_literal root_6396521 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0444.root_6396522 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6413375 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0444.cover_6396522
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6413375
#print axioms cover_6396521

def root_6396516 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6396516_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6396516_right_fuel : Nat := 1
def small_6396516_right_count : Nat := 1
def small_6396516_right_encoded : String := "00000003"
theorem small_6396516_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6396516_right_root small_6396516_right_fuel small_6396516_right_count small_6396516_right_encoded = true := by
  decide +kernel
theorem small_6396516_right_covered : CoveredBy scale carrier boxes small_6396516_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6396516_right_root small_6396516_right_fuel small_6396516_right_count small_6396516_right_encoded small_6396516_right_checked

theorem cover_6396516 : CoveredBy scale carrier boxes root_6396516 := by
  apply coveredBy_split_literal root_6396516 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6396521 small_6396516_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6396521
  · exact small_6396516_right_covered
#print axioms cover_6396516

def root_6392488 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6392488 : CoveredBy scale carrier boxes root_6392488 := by
  apply coveredBy_split_literal root_6392488 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6392489 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6396516 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6392489
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6396516
#print axioms cover_6392488

def root_6392483 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6392483_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6392483_right_fuel : Nat := 1
def small_6392483_right_count : Nat := 1
def small_6392483_right_encoded : String := "00000002"
theorem small_6392483_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6392483_right_root small_6392483_right_fuel small_6392483_right_count small_6392483_right_encoded = true := by
  decide +kernel
theorem small_6392483_right_covered : CoveredBy scale carrier boxes small_6392483_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6392483_right_root small_6392483_right_fuel small_6392483_right_count small_6392483_right_encoded small_6392483_right_checked

theorem cover_6392483 : CoveredBy scale carrier boxes root_6392483 := by
  apply coveredBy_split_literal root_6392483 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6392488 small_6392483_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6392488
  · exact small_6392483_right_covered
#print axioms cover_6392483

def root_6392167 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6392167_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6392167_left_fuel : Nat := 20
def small_6392167_left_count : Nat := 147
def small_6392167_left_encoded : String := "1151E905000000020A0001061151E907000000030A0000FE1152250908A91303120700F808A9130900000005000000090000000112073CF80000000108A91309120700FE05000100135D44F705000104135D4505000000020000000A135D810505000106000000050000000A0000000200000000135D80F70000000005000104135D4505000000020000000A135D810505000106135D450700000003000000060000000A000000020000000412073CFE0000000405000100135D44F70500010400000009135D810505000106135D4507000000030CFD9C03000000090F350CF80000000100000008000000090000000200000000135D80F70000000005000104135D45050000000205000106135D4507000000030CFD9C03000000090F350CF8000000010000000800000009135D810505000106135D4507000000030CFD9C030F34D0F80CFD9C090F34D0FE000000060000000400000009000000010F350CF8000000010CFD9C090F34D0FE000000060000000400000006135D81070CFD9C03000000090F350CF8000000010CFD9C090F34D0FE0000000900000004000000090000000300000002000000041151E9090000000408A913030000000912073CF8000000010500010000000008135D80F7000000000500010400000008135D810505000106000000080000000800000002115225070A0000FE1152250908A913030000000912073CF80000000108A9130712070106000000030000000912073D0608A91309120700FE00000009000000040000000900000003000000041151E909000000040000000900000003"
theorem small_6392167_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6392167_left_root small_6392167_left_fuel small_6392167_left_count small_6392167_left_encoded = true := by
  decide +kernel
theorem small_6392167_left_covered : CoveredBy scale carrier boxes small_6392167_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6392167_left_root small_6392167_left_fuel small_6392167_left_count small_6392167_left_encoded small_6392167_left_checked

theorem cover_6392167 : CoveredBy scale carrier boxes root_6392167 := by
  apply coveredBy_split_literal root_6392167 small_6392167_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6392483 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6392167_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6392483
#print axioms cover_6392167

def root_6392162 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6392162_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6392162_right_fuel : Nat := 1
def small_6392162_right_count : Nat := 1
def small_6392162_right_encoded : String := "00000001"
theorem small_6392162_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6392162_right_root small_6392162_right_fuel small_6392162_right_count small_6392162_right_encoded = true := by
  decide +kernel
theorem small_6392162_right_covered : CoveredBy scale carrier boxes small_6392162_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6392162_right_root small_6392162_right_fuel small_6392162_right_count small_6392162_right_encoded small_6392162_right_checked

theorem cover_6392162 : CoveredBy scale carrier boxes root_6392162 := by
  apply coveredBy_split_literal root_6392162 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6392167 small_6392162_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6392167
  · exact small_6392162_right_covered
#print axioms cover_6392162

def root_6422725 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6422725 : CoveredBy scale carrier boxes root_6422725 := by
  apply coveredBy_split_literal root_6422725 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2413.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2414.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2413.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2414.covered
#print axioms cover_6422725

def root_6422719 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6422719_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6422719_left_fuel : Nat := 1
def small_6422719_left_count : Nat := 1
def small_6422719_left_encoded : String := "00000004"
theorem small_6422719_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6422719_left_root small_6422719_left_fuel small_6422719_left_count small_6422719_left_encoded = true := by
  decide +kernel
theorem small_6422719_left_covered : CoveredBy scale carrier boxes small_6422719_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6422719_left_root small_6422719_left_fuel small_6422719_left_count small_6422719_left_encoded small_6422719_left_checked

theorem cover_6422719 : CoveredBy scale carrier boxes root_6422719 := by
  apply coveredBy_split_literal root_6422719 small_6422719_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6422725 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6422719_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6422725
#print axioms cover_6422719

def root_6422663 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6422663_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6422663_left_fuel : Nat := 9
def small_6422663_left_count : Nat := 27
def small_6422663_left_encoded : String := "120700FE05000100135D44F7050000F8135D810304548A051386710400000002000000070000000A000000010000000A00000000135D80F700000000050000F8135D810304548A0513867104000000020CFD9C070000000A0000000A0000000A000000010000000A00000004"
theorem small_6422663_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6422663_left_root small_6422663_left_fuel small_6422663_left_count small_6422663_left_encoded = true := by
  decide +kernel
theorem small_6422663_left_covered : CoveredBy scale carrier boxes small_6422663_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6422663_left_root small_6422663_left_fuel small_6422663_left_count small_6422663_left_encoded small_6422663_left_checked

theorem cover_6422663 : CoveredBy scale carrier boxes root_6422663 := by
  apply coveredBy_split_literal root_6422663 small_6422663_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6422719 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6422663_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6422719
#print axioms cover_6422663

def root_6422658 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6422658_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6422658_right_fuel : Nat := 1
def small_6422658_right_count : Nat := 1
def small_6422658_right_encoded : String := "00000003"
theorem small_6422658_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6422658_right_root small_6422658_right_fuel small_6422658_right_count small_6422658_right_encoded = true := by
  decide +kernel
theorem small_6422658_right_covered : CoveredBy scale carrier boxes small_6422658_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6422658_right_root small_6422658_right_fuel small_6422658_right_count small_6422658_right_encoded small_6422658_right_checked

theorem cover_6422658 : CoveredBy scale carrier boxes root_6422658 := by
  apply coveredBy_split_literal root_6422658 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6422663 small_6422658_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6422663
  · exact small_6422658_right_covered
#print axioms cover_6422658

def root_6422544 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6422544_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6422544_left_fuel : Nat := 17
def small_6422544_left_count : Nat := 57
def small_6422544_left_encoded : String := "120701060000000308A913090000000A12073CFE0000000405000100135D44F7050000F8135D810304548A05138671040000000204548A07000000071386AD060CFD9C09000000070F350CFE000000040C9A86FE000000070F8751090000000402800100000000070000000A000000030000000A000000010000000A00000000135D80F700000000050000F8135D810304548A05138671040000000204548A070000000A1386AD060CFD9C090000000A0F350CFE000000040C9A86FE0000000A0F87510900000004078001000000000A0000000A000000030000000A000000010000000A"
theorem small_6422544_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6422544_left_root small_6422544_left_fuel small_6422544_left_count small_6422544_left_encoded = true := by
  decide +kernel
theorem small_6422544_left_covered : CoveredBy scale carrier boxes small_6422544_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6422544_left_root small_6422544_left_fuel small_6422544_left_count small_6422544_left_encoded small_6422544_left_checked

theorem cover_6422544 : CoveredBy scale carrier boxes root_6422544 := by
  apply coveredBy_split_literal root_6422544 small_6422544_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6422658 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6422544_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6422658
#print axioms cover_6422544

def root_6422538 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6422538_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6422538_left_fuel : Nat := 1
def small_6422538_left_count : Nat := 1
def small_6422538_left_encoded : String := "00000002"
theorem small_6422538_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6422538_left_root small_6422538_left_fuel small_6422538_left_count small_6422538_left_encoded = true := by
  decide +kernel
theorem small_6422538_left_covered : CoveredBy scale carrier boxes small_6422538_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6422538_left_root small_6422538_left_fuel small_6422538_left_count small_6422538_left_encoded small_6422538_left_checked

theorem cover_6422538 : CoveredBy scale carrier boxes root_6422538 := by
  apply coveredBy_split_literal root_6422538 small_6422538_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6422544 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6422538_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6422544
#print axioms cover_6422538

def root_6422537 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6422537_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6422537_right_fuel : Nat := 20
def small_6422537_right_count : Nat := 97
def small_6422537_right_encoded : String := "12073D0408A9130712070106000000030000000A12073D0608A91309120700FE0000000A0000000412073CFE0000000405000100135D44F7050000F8135D81030CFD9C050F34D104000000020CFD9C070F34D106000000030000000A0F350D060CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A87060F87510700000003000000060F878D070000000A00000003000000030F350D040CFD9C070000000A0000000A0000000200000001135D4503000000010CFD9C050F34D104000000020000000A0000000800000000135D80F700000000050000F8135D81030CFD9C050F34D104000000020CFD9C070F34D106000000030000000A0F350D060CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A87060F875107000000030C9A86FE000000060F87510900000004000000060F878D070000000A00000003000000030F350D040CFD9C070000000A0000000A0000000200000001135D4503000000010CFD9C050F34D104000000020000000A0000000A0000000300000002"
theorem small_6422537_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6422537_right_root small_6422537_right_fuel small_6422537_right_count small_6422537_right_encoded = true := by
  decide +kernel
theorem small_6422537_right_covered : CoveredBy scale carrier boxes small_6422537_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6422537_right_root small_6422537_right_fuel small_6422537_right_count small_6422537_right_encoded small_6422537_right_checked

theorem cover_6422537 : CoveredBy scale carrier boxes root_6422537 := by
  apply coveredBy_split_literal root_6422537 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6422538 small_6422537_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6422538
  · exact small_6422537_right_covered
#print axioms cover_6422537

def root_6422532 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6422532_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6422532_right_fuel : Nat := 1
def small_6422532_right_count : Nat := 1
def small_6422532_right_encoded : String := "00000004"
theorem small_6422532_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6422532_right_root small_6422532_right_fuel small_6422532_right_count small_6422532_right_encoded = true := by
  decide +kernel
theorem small_6422532_right_covered : CoveredBy scale carrier boxes small_6422532_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6422532_right_root small_6422532_right_fuel small_6422532_right_count small_6422532_right_encoded small_6422532_right_checked

theorem cover_6422532 : CoveredBy scale carrier boxes root_6422532 := by
  apply coveredBy_split_literal root_6422532 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6422537 small_6422532_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6422537
  · exact small_6422532_right_covered
#print axioms cover_6422532

def root_6422531 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6422531 : CoveredBy scale carrier boxes root_6422531 := by
  apply coveredBy_split_literal root_6422531 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6422532 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2415.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6422532
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2415.covered
#print axioms cover_6422531

def root_6422526 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6422526_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6422526_right_fuel : Nat := 1
def small_6422526_right_count : Nat := 1
def small_6422526_right_encoded : String := "00000003"
theorem small_6422526_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6422526_right_root small_6422526_right_fuel small_6422526_right_count small_6422526_right_encoded = true := by
  decide +kernel
theorem small_6422526_right_covered : CoveredBy scale carrier boxes small_6422526_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6422526_right_root small_6422526_right_fuel small_6422526_right_count small_6422526_right_encoded small_6422526_right_checked

theorem cover_6422526 : CoveredBy scale carrier boxes root_6422526 := by
  apply coveredBy_split_literal root_6422526 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6422531 small_6422526_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6422531
  · exact small_6422526_right_covered
#print axioms cover_6422526

def root_6422032 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6422032_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6422032_left_fuel : Nat := 23
def small_6422032_left_count : Nat := 233
def small_6422032_left_encoded : String := "1151E907000000030A0000FE1152250908A91305120701040000000208A91309120700FE05000100135D44F70000000600000000000000060000000412073CFE0000000405000100135D44F7050000F8135D81030500010600000006135D810704548A051386710400000002000000060000000600000003000000010000000600000000135D80F700000000050000F8135D81030500010600000006135D810704548A0513867104000000020CFD9C090F34D0FE0000000600000004000000061386AD040CFD9C090F34D0FE0000000600000004000000060000000200000003000000010000000612073D0408A91309120700FE05000100135D44F70000000600000000000000060000000412073CFE0000000405000100135D44F7050000F8135D81030500010600000006135D81070CFD9C050F34D10400000002000000060F350D040CFD9C0900000006000000060000000200000003000000010000000600000000135D80F700000000050000F8135D810305000106135D45070000000300000006135D81070CFD9C050F34D104000000020CFD9C0900000006000000060F350D040CFD9C090F34D0FE000000060000000400000006000000020000000300000001135D4503000000010000000600000002000000041151E9090000000408A91305120701040000000205000100135D44F7050000F8135D810305000106135D450700000003050000FE0000000600000008135D8107050000FE135D810904548A051386710400000002000000060000000600000004000000080000000300000001135D45030000000105000106000000060000000800000000135D80F700000000050000F8135D810305000106135D450700000003050000FE0000000600000007135D8107050000FE135D810904548A05138671040000000207800100128A40F7078000F8128A7D030780010600000006128A7D07078000FE000000060000000700000003000000010000000600000000128A7CF700000000078000F8128A7D030000000700000001000000061386AD0407800100128A40F70000000600000000128A7CF700000000078000F8128A7D030000000700000001000000050000000200000004135D45090000000404548A0500000007000000050000000300000001135D4503000000010500010600000006135D8107050000FE00000006000000050000000312073D040500010000000008135D80F700000000050000F8135D81030500010600000008135D81070000000800000003000000010000000800000002"
theorem small_6422032_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6422032_left_root small_6422032_left_fuel small_6422032_left_count small_6422032_left_encoded = true := by
  decide +kernel
theorem small_6422032_left_covered : CoveredBy scale carrier boxes small_6422032_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6422032_left_root small_6422032_left_fuel small_6422032_left_count small_6422032_left_encoded small_6422032_left_checked

theorem cover_6422032 : CoveredBy scale carrier boxes root_6422032 := by
  apply coveredBy_split_literal root_6422032 small_6422032_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6422526 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6422032_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6422526
#print axioms cover_6422032

def root_6422027 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6422027_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6422027_right_fuel : Nat := 1
def small_6422027_right_count : Nat := 1
def small_6422027_right_encoded : String := "00000002"
theorem small_6422027_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6422027_right_root small_6422027_right_fuel small_6422027_right_count small_6422027_right_encoded = true := by
  decide +kernel
theorem small_6422027_right_covered : CoveredBy scale carrier boxes small_6422027_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6422027_right_root small_6422027_right_fuel small_6422027_right_count small_6422027_right_encoded small_6422027_right_checked

theorem cover_6422027 : CoveredBy scale carrier boxes root_6422027 := by
  apply coveredBy_split_literal root_6422027 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6422032 small_6422027_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6422032
  · exact small_6422027_right_covered
#print axioms cover_6422027

def root_6421869 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6421869_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6421869_left_fuel : Nat := 13
def small_6421869_left_count : Nat := 73
def small_6421869_left_encoded : String := "1151E905000000020A0001061151E907000000030A0000FE1152250908A91309120700FE05000100135D44F70000000600000000000000060000000412073CFE000000040500010000000008135D80F700000000050000F8135D81030000000800000001000000080000000400000008115225070A0000FE1152250908A9130712070106000000030000000A12073D0608A91309120700FE05000100135D44F700000008000000000000000A0000000412073CFE0000000405000100135D44F700000009000000000000000A00000003000000041151E9090000000408A9130712070106000000030000000912073D060500010000000009135D80F700000000050000F800000009135D4503000000010500010400000007000000050000000300000003"
theorem small_6421869_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6421869_left_root small_6421869_left_fuel small_6421869_left_count small_6421869_left_encoded = true := by
  decide +kernel
theorem small_6421869_left_covered : CoveredBy scale carrier boxes small_6421869_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6421869_left_root small_6421869_left_fuel small_6421869_left_count small_6421869_left_encoded small_6421869_left_checked

theorem cover_6421869 : CoveredBy scale carrier boxes root_6421869 := by
  apply coveredBy_split_literal root_6421869 small_6421869_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6422027 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6421869_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6422027
#print axioms cover_6421869

def root_6421863 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6421863_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6421863_left_fuel : Nat := 1
def small_6421863_left_count : Nat := 1
def small_6421863_left_encoded : String := "00000001"
theorem small_6421863_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6421863_left_root small_6421863_left_fuel small_6421863_left_count small_6421863_left_encoded = true := by
  decide +kernel
theorem small_6421863_left_covered : CoveredBy scale carrier boxes small_6421863_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6421863_left_root small_6421863_left_fuel small_6421863_left_count small_6421863_left_encoded small_6421863_left_checked

theorem cover_6421863 : CoveredBy scale carrier boxes root_6421863 := by
  apply coveredBy_split_literal root_6421863 small_6421863_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6421869 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6421863_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6421869
#print axioms cover_6421863

def root_6392161 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6392161 : CoveredBy scale carrier boxes root_6392161 := by
  apply coveredBy_split_literal root_6392161 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6392162 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6421863 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6392162
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6421863
#print axioms cover_6392161

def root_6392156 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6392156_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6392156_right_fuel : Nat := 1
def small_6392156_right_count : Nat := 1
def small_6392156_right_encoded : String := "00000000"
theorem small_6392156_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6392156_right_root small_6392156_right_fuel small_6392156_right_count small_6392156_right_encoded = true := by
  decide +kernel
theorem small_6392156_right_covered : CoveredBy scale carrier boxes small_6392156_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6392156_right_root small_6392156_right_fuel small_6392156_right_count small_6392156_right_encoded small_6392156_right_checked

theorem cover_6392156 : CoveredBy scale carrier boxes root_6392156 := by
  apply coveredBy_split_literal root_6392156 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6392161 small_6392156_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6392161
  · exact small_6392156_right_covered
#print axioms cover_6392156

def root_6431767 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6431767 : CoveredBy scale carrier boxes root_6431767 := by
  apply coveredBy_split_literal root_6431767 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2418.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2419.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2418.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2419.covered
#print axioms cover_6431767

def root_6431761 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6431761_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6431761_left_fuel : Nat := 1
def small_6431761_left_count : Nat := 1
def small_6431761_left_encoded : String := "00000001"
theorem small_6431761_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6431761_left_root small_6431761_left_fuel small_6431761_left_count small_6431761_left_encoded = true := by
  decide +kernel
theorem small_6431761_left_covered : CoveredBy scale carrier boxes small_6431761_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6431761_left_root small_6431761_left_fuel small_6431761_left_count small_6431761_left_encoded small_6431761_left_checked

theorem cover_6431761 : CoveredBy scale carrier boxes root_6431761 := by
  apply coveredBy_split_literal root_6431761 small_6431761_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6431767 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6431761_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6431767
#print axioms cover_6431761

def root_6430627 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6430627 : CoveredBy scale carrier boxes root_6430627 := by
  apply coveredBy_split_literal root_6430627 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2417.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6431761 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2417.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6431761
#print axioms cover_6430627

def root_6430622 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6430622_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6430622_right_fuel : Nat := 1
def small_6430622_right_count : Nat := 1
def small_6430622_right_encoded : String := "00000000"
theorem small_6430622_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6430622_right_root small_6430622_right_fuel small_6430622_right_count small_6430622_right_encoded = true := by
  decide +kernel
theorem small_6430622_right_covered : CoveredBy scale carrier boxes small_6430622_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6430622_right_root small_6430622_right_fuel small_6430622_right_count small_6430622_right_encoded small_6430622_right_checked

theorem cover_6430622 : CoveredBy scale carrier boxes root_6430622 := by
  apply coveredBy_split_literal root_6430622 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6430627 small_6430622_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6430627
  · exact small_6430622_right_covered
#print axioms cover_6430622

def root_6430621 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6430621_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6430621_right_fuel : Nat := 19
def small_6430621_right_count : Nat := 311
def small_6430621_right_encoded : String := "120701000000000008A91303120700F808A91305120701040000000208A91309120700FE000000080000000412073CFE0000000405000106000000070000000812073D0408A91309120700FE05000106135D450700000003045489F71386AD0004548A03138670F800000008000000011386ACF8000000010CFD9C05000000080000000A0000000000000008135D8107045489F71386AD0004548A030000000A0000000A0000000000000008000000030000000412073CFE0000000405000106135D450700000003045489F71386AD0004548A03138670F80CFD9C050F34D10400000002000000070F350D040CFD9C090F34D0FE00000007000000040F350CFE000000040C9A8704000000070000000700000002000000011386ACF8000000010CFD9C05000000070F350D040CFD9C090F34D0FE0000000700000004000000070000000200000000138671000000000004548A03138670F80CFD9C05000000070F350D040CFD9C090F34D0FE00000007000000040000000700000002000000011386ACF8000000010CFD9C05000000070F350D040000000700000002135D8107045489F71386AD0004548A03138670F80CFD9C050F34D104000000020CFD9C0900000008000000070F350D040CFD9C090F34D0FE00000007000000040F350CFE000000040C9A8704000000070000000700000002000000011386ACF8000000010CFD9C050F34D104000000020CFD9C090F34D0FE0000000700000004000000070F350D040CFD9C090000000A000000070000000200000000138671000000000004548A03138670F80CFD9C05000000070F350D040CFD9C090000000A0000000700000002000000011386ACF8000000010CFD9C05000000070F350D04000000070000000200000003000000020000000112073CF80000000108A91305120701040000000208A91309120700FE05000106135D450700000003045489F71386AD000CFD9C0300000008000000080000000000000008000000080000000412073CFE0000000405000106135D450700000003045489F71386AD000CFD9C0300000007000000090000000000000007135D8107045489F71386AD000CFD9C030F34D0F800000008000000010F350CF80000000104548A05000000081386AD040CFD9C090000000900000007000000020000000013867100000000000CFD9C0300000007000000080000000312073D0408A91309120700FE05000106135D450700000003045489F71386AD000CFD9C030F34D0F80CFD9C050F34D10400000002000000080000000A000000010F350CF8000000010000000A000000000000000A0000000A0000000412073CFE0000000405000106135D450700000003045489F71386AD000CFD9C030F34D0F80CFD9C05000000070F350D040000000700000002000000010F350CF8000000010CFD9C0500000007000000070000000000000007135D8107045489F71386AD000CFD9C030F34D0F80CFD9C050F34D104000000020CFD9C090F34D0FE0000000700000004000000070F350D040CFD9C090000000A0000000700000002000000010F350CF8000000010CFD9C050F34D104000000020CFD9C090F34D0FE0000000700000004000000050F350D040000000A000000020000000013867100000000000CFD9C030F34D0F80CFD9C050000000700000007000000010F350CF8000000010CFD9C0500000007000000050000000300000002"
theorem small_6430621_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6430621_right_root small_6430621_right_fuel small_6430621_right_count small_6430621_right_encoded = true := by
  decide +kernel
theorem small_6430621_right_covered : CoveredBy scale carrier boxes small_6430621_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6430621_right_root small_6430621_right_fuel small_6430621_right_count small_6430621_right_encoded small_6430621_right_checked

theorem cover_6430621 : CoveredBy scale carrier boxes root_6430621 := by
  apply coveredBy_split_literal root_6430621 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6430622 small_6430621_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6430622
  · exact small_6430621_right_covered
#print axioms cover_6430621

def root_6430616 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6430616_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6430616_right_fuel : Nat := 1
def small_6430616_right_count : Nat := 1
def small_6430616_right_encoded : String := "00000004"
theorem small_6430616_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6430616_right_root small_6430616_right_fuel small_6430616_right_count small_6430616_right_encoded = true := by
  decide +kernel
theorem small_6430616_right_covered : CoveredBy scale carrier boxes small_6430616_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6430616_right_root small_6430616_right_fuel small_6430616_right_count small_6430616_right_encoded small_6430616_right_checked

theorem cover_6430616 : CoveredBy scale carrier boxes root_6430616 := by
  apply coveredBy_split_literal root_6430616 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6430621 small_6430616_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6430621
  · exact small_6430616_right_covered
#print axioms cover_6430616

def root_6430615 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6430615 : CoveredBy scale carrier boxes root_6430615 := by
  apply coveredBy_split_literal root_6430615 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6430616 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2420.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6430616
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2420.covered
#print axioms cover_6430615

def root_6430609 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6430609_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6430609_left_fuel : Nat := 1
def small_6430609_left_count : Nat := 1
def small_6430609_left_encoded : String := "00000003"
theorem small_6430609_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6430609_left_root small_6430609_left_fuel small_6430609_left_count small_6430609_left_encoded = true := by
  decide +kernel
theorem small_6430609_left_covered : CoveredBy scale carrier boxes small_6430609_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6430609_left_root small_6430609_left_fuel small_6430609_left_count small_6430609_left_encoded small_6430609_left_checked

theorem cover_6430609 : CoveredBy scale carrier boxes root_6430609 := by
  apply coveredBy_split_literal root_6430609 small_6430609_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6430615 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6430609_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6430615
#print axioms cover_6430609

def root_6439187 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6439187_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6439187_right_fuel : Nat := 16
def small_6439187_right_count : Nat := 135
def small_6439187_right_encoded : String := "0F34D100000000000CFD9C030F34D0F804548A0513867104000000020CFD9C070F34D10600000003000000080F350D060CFD9C090000000800000008000000031386AD040CFD9C070F34D106000000030CFD9C090F34D0FE00000008000000040F350CFE000000040C9A86FE000000080F87510900000004000000080F350D060CFD9C090F34D0FE00000008000000040F350CFE000000040C9A87060F875107000000030C9A86FE000000080F87510900000004000000070F878D070C9A86FE000000080F8751090000000400000008000000030000000300000002000000010F350CF80000000104548A0513867104000000020CFD9C070F34D106000000030CFD9C090F34D0FE0000000800000004000000080F350D060CFD9C090F34D0FE00000008000000040F350CFE000000040C9A86F8000000080F8751030000000100000008000000031386AD040CFD9C070F34D106000000030CFD9C090000000A0F350CFE000000040C9A86F80F878D030C9A86FE000000080F8751090000000400000005000000010000000A0F350D060CFD9C090F34D0FE0C9A86F80F878D0300000008000000010000000A000000040F350CFE000000040C9A86F80F878D030C9A87060F875107000000030C9A86FE00000008000000070F878D070C9A86FE000000080F875109000000040000000500000003000000010F875103000000010C9A87060F8751070000000300000005000000050000000300000002"
theorem small_6439187_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6439187_right_root small_6439187_right_fuel small_6439187_right_count small_6439187_right_encoded = true := by
  decide +kernel
theorem small_6439187_right_covered : CoveredBy scale carrier boxes small_6439187_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6439187_right_root small_6439187_right_fuel small_6439187_right_count small_6439187_right_encoded small_6439187_right_checked

theorem cover_6439187 : CoveredBy scale carrier boxes root_6439187 := by
  apply coveredBy_split_literal root_6439187 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2421.root small_6439187_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2421.covered
  · exact small_6439187_right_covered
#print axioms cover_6439187

def root_6439181 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6439181_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6439181_left_fuel : Nat := 1
def small_6439181_left_count : Nat := 1
def small_6439181_left_encoded : String := "00000004"
theorem small_6439181_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6439181_left_root small_6439181_left_fuel small_6439181_left_count small_6439181_left_encoded = true := by
  decide +kernel
theorem small_6439181_left_covered : CoveredBy scale carrier boxes small_6439181_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6439181_left_root small_6439181_left_fuel small_6439181_left_count small_6439181_left_encoded small_6439181_left_checked

theorem cover_6439181 : CoveredBy scale carrier boxes root_6439181 := by
  apply coveredBy_split_literal root_6439181 small_6439181_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6439187 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6439181_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6439187
#print axioms cover_6439181

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445
