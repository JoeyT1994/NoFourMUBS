import TaoBundleAssembly0386
import TaoBundleAssembly0387
import TaoBundleAssembly0389
import TaoBundleChunkBatch0517
import TaoBundleChunkBatch0518
import TaoBundleChunkBatch0519
import TaoBundleChunkBatch0520
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390
def root_5521323 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5521323_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5521323_right_fuel : Nat := 1
def small_5521323_right_count : Nat := 1
def small_5521323_right_encoded : String := "00000004"
theorem small_5521323_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5521323_right_root small_5521323_right_fuel small_5521323_right_count small_5521323_right_encoded = true := by
  decide +kernel
theorem small_5521323_right_covered : CoveredBy scale carrier boxes small_5521323_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5521323_right_root small_5521323_right_fuel small_5521323_right_count small_5521323_right_encoded small_5521323_right_checked

theorem cover_5521323 : CoveredBy scale carrier boxes root_5521323 := by
  apply coveredBy_split_literal root_5521323 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5521328 small_5521323_right_root coord4 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5521328
  · exact small_5521323_right_covered
#print axioms cover_5521323

def root_5524772 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5524772 : CoveredBy scale carrier boxes root_5524772 := by
  apply coveredBy_split_literal root_5524772 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2068.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2069.root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2068.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2069.covered
#print axioms cover_5524772

def root_5524767 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5524767_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5524767_right_fuel : Nat := 1
def small_5524767_right_count : Nat := 1
def small_5524767_right_encoded : String := "00000002"
theorem small_5524767_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5524767_right_root small_5524767_right_fuel small_5524767_right_count small_5524767_right_encoded = true := by
  decide +kernel
theorem small_5524767_right_covered : CoveredBy scale carrier boxes small_5524767_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5524767_right_root small_5524767_right_fuel small_5524767_right_count small_5524767_right_encoded small_5524767_right_checked

theorem cover_5524767 : CoveredBy scale carrier boxes root_5524767 := by
  apply coveredBy_split_literal root_5524767 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5524772 small_5524767_right_root coord2 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5524772
  · exact small_5524767_right_covered
#print axioms cover_5524767

def root_5529860 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5529860 : CoveredBy scale carrier boxes root_5529860 := by
  apply coveredBy_split_literal root_5529860 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2070.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2071.root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2070.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2071.covered
#print axioms cover_5529860

def root_5529854 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5529854_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5529854_left_fuel : Nat := 1
def small_5529854_left_count : Nat := 1
def small_5529854_left_encoded : String := "00000002"
theorem small_5529854_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5529854_left_root small_5529854_left_fuel small_5529854_left_count small_5529854_left_encoded = true := by
  decide +kernel
theorem small_5529854_left_covered : CoveredBy scale carrier boxes small_5529854_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5529854_left_root small_5529854_left_fuel small_5529854_left_count small_5529854_left_encoded small_5529854_left_checked

theorem cover_5529854 : CoveredBy scale carrier boxes root_5529854 := by
  apply coveredBy_split_literal root_5529854 small_5529854_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5529860 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5529854_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5529860
#print axioms cover_5529854

def root_5524766 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5524766 : CoveredBy scale carrier boxes root_5524766 := by
  apply coveredBy_split_literal root_5524766 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5524767 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5529854 coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5524767
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5529854
#print axioms cover_5524766

def root_5524760 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5524760_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5524760_left_fuel : Nat := 1
def small_5524760_left_count : Nat := 1
def small_5524760_left_encoded : String := "00000004"
theorem small_5524760_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5524760_left_root small_5524760_left_fuel small_5524760_left_count small_5524760_left_encoded = true := by
  decide +kernel
theorem small_5524760_left_covered : CoveredBy scale carrier boxes small_5524760_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5524760_left_root small_5524760_left_fuel small_5524760_left_count small_5524760_left_encoded small_5524760_left_checked

theorem cover_5524760 : CoveredBy scale carrier boxes root_5524760 := by
  apply coveredBy_split_literal root_5524760 small_5524760_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5524766 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5524760_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5524766
#print axioms cover_5524760

def root_5521322 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5521322 : CoveredBy scale carrier boxes root_5521322 := by
  apply coveredBy_split_literal root_5521322 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5521323 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5524760 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5521323
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5524760
#print axioms cover_5521322

def root_5521316 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5521316_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5521316_left_fuel : Nat := 1
def small_5521316_left_count : Nat := 1
def small_5521316_left_encoded : String := "00000001"
theorem small_5521316_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5521316_left_root small_5521316_left_fuel small_5521316_left_count small_5521316_left_encoded = true := by
  decide +kernel
theorem small_5521316_left_covered : CoveredBy scale carrier boxes small_5521316_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5521316_left_root small_5521316_left_fuel small_5521316_left_count small_5521316_left_encoded small_5521316_left_checked

theorem cover_5521316 : CoveredBy scale carrier boxes root_5521316 := by
  apply coveredBy_split_literal root_5521316 small_5521316_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5521322 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5521316_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5521322
#print axioms cover_5521316

def root_5521315 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5521315_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5521315_right_fuel : Nat := 25
def small_5521315_right_count : Nat := 401
def small_5521315_right_encoded : String := "135D44F905000108135D44FF04548A05138670FA04548A07138670FC07800100128A40F70000000500000000128A7CF7000000000000000A000000031386ACFC0000000307800100128A40F7028000F813D7ECF900000001028001080000000913D7ECFF00000004022A45850000000613E200FA00000002067ECE8712EA58FC06400100000000060000000900000003000000060000000900000000128A7CF700000000028000F813D7ECF900000001028001080000000913D7ECFF00000004022A4585000000090000000900000009000000021386ACFA0000000204548A070000000A1386ACFC00000003078001000000000A0000000A00000004135D80FF0000000404548A05138670FA04548A07138670FC07800100128A40F7028000F813D7ECF90000000107800108128A40FF022A45850000000513E200FA00000002022A45870000000513E200FC000000030640010012FF70F7000000060000000012FFACF70000000003C000F813A54CF900000001064001080000000A12FFACFF00000004033F67C5000000050000000A0000000A00000004128A7CFF00000004022A458513E1C4FA022A458700000005000000060000000213E200FA00000002022A458713E1C4FC064001000000000512FFACF70000000003C000F80000000513A510F90000000500000001000000030000000613D7B0F907800108128A40FF022A4585000000050000000A00000004128A7CFF00000004022A458500000005000000060000000100000000128A7CF700000000028000F813D7ECF90000000107800108128A40FF022A458513E1C4FA022A45870000000513E200FC0000000308C001000000000511FC24F70000000003C000F8000000050000000A0000000213E200FA00000002022A45870000000A0000000A00000004128A7CFF00000004022A458513E1C4FA022A458700000005000000070000000213E200FA00000002022A458713E1C4FC00000007000000030000000713D7B0F907800108128A40FF022A4585000000050000000A00000004128A7CFF00000004022A458513E1C4FA022A45870000000500000006000000020000000700000001000000031386ACFC0000000307800100128A40F7028000F813D7ECF9000000010780010800000006000000060000000600000000128A7CF700000000028000F813D7ECF90000000107800108128A40FF022A458513E1C4FA067ECE8712EA58FC08C001000000000611FC24F70000000003C000F813A54CF9000000010640010800000009000000060000000600000003000000060000000213E200FA00000002067ECE8712EA58FC08C0010011FBE8F703C000F813A54CF900000001064001080000000900000006000000060000000000000007000000030000000600000004128A7CFF00000004022A4585000000060000000713D7B0F907800108128A40FF022A45850000000613E200FA0000000200000006000000040000000600000001000000021386ACFA0000000204548A07138670FC07800100128A40F7028000F813D7ECF900000001078001080000000A128A7CFF00000004067ECE8512EA58FA022A458713E1C4FC0640010012FF70F703C000F813A54CF90000000108C00108000000080000000800000008000000000000000A0000000313E200FC000000030640010000000006000000070000000212EA94FA000000020000000A13D7B0F9078001080000000A128A7CFF00000004067ECE8512EA58FA022A45870000000A0000000600000002000000080000000100000000128A7CF700000000028000F813D7ECF900000001078001080000000A128A7CFF00000004067ECE8512EA58FA0000000700000002000000070000000A000000031386ACFC0000000307800100128A40F7028000F813D7ECF90000000107800108128A40FF067ECE8512EA58FA067ECE8712EA58FC06400100000000060000000A00000003000000060000000212EA94FA00000002067ECE870000000A0000000500000004128A7CFF00000004067ECE85000000060000000513D7B0F907800108128A40FF067ECE85000000060000000A00000004000000060000000100000000128A7CF700000000028000F813D7ECF90000000107800108128A40FF067ECE8512EA58FA067ECE870000000A000000050000000200000005000000040000000713D7B0F9078001080000000A000000070000000100000001"
theorem small_5521315_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5521315_right_root small_5521315_right_fuel small_5521315_right_count small_5521315_right_encoded = true := by
  decide +kernel
theorem small_5521315_right_covered : CoveredBy scale carrier boxes small_5521315_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5521315_right_root small_5521315_right_fuel small_5521315_right_count small_5521315_right_encoded small_5521315_right_checked

theorem cover_5521315 : CoveredBy scale carrier boxes root_5521315 := by
  apply coveredBy_split_literal root_5521315 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5521316 small_5521315_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5521316
  · exact small_5521315_right_covered
#print axioms cover_5521315

def root_5521309 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5521309_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5521309_left_fuel : Nat := 1
def small_5521309_left_count : Nat := 1
def small_5521309_left_encoded : String := "00000000"
theorem small_5521309_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5521309_left_root small_5521309_left_fuel small_5521309_left_count small_5521309_left_encoded = true := by
  decide +kernel
theorem small_5521309_left_covered : CoveredBy scale carrier boxes small_5521309_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5521309_left_root small_5521309_left_fuel small_5521309_left_count small_5521309_left_encoded small_5521309_left_checked

theorem cover_5521309 : CoveredBy scale carrier boxes root_5521309 := by
  apply coveredBy_split_literal root_5521309 small_5521309_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5521315 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5521309_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5521315
#print axioms cover_5521309

def root_5515449 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5515449 : CoveredBy scale carrier boxes root_5515449 := by
  apply coveredBy_split_literal root_5515449 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5515450 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5521309 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5515450
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5521309
#print axioms cover_5515449

def root_5515444 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515444_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515444_right_fuel : Nat := 1
def small_5515444_right_count : Nat := 1
def small_5515444_right_encoded : String := "00000003"
theorem small_5515444_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515444_right_root small_5515444_right_fuel small_5515444_right_count small_5515444_right_encoded = true := by
  decide +kernel
theorem small_5515444_right_covered : CoveredBy scale carrier boxes small_5515444_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515444_right_root small_5515444_right_fuel small_5515444_right_count small_5515444_right_encoded small_5515444_right_checked

theorem cover_5515444 : CoveredBy scale carrier boxes root_5515444 := by
  apply coveredBy_split_literal root_5515444 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5515449 small_5515444_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5515449
  · exact small_5515444_right_covered
#print axioms cover_5515444

def root_5515443 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515443_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515443_right_fuel : Nat := 24
def small_5515443_right_count : Nat := 285
def small_5515443_right_encoded : String := "12073CFC0000000305000100135D44F7050000F8135D80F90000000105000108135D44FF04548A05138670FA0CFD9C070F34D0FC028001000000000613D7ECF700000000078000F8128A7CF900000001028001080000000600000006000000060000000300000006000000021386ACFA000000020CFD9C070F34D0FC0280010013D7B0F7078000F8128A7CF9000000010280010813D7B0FF067ECE8500000006000000090000000400000006000000060000000013D7ECF700000000078000F8128A7CF9000000010280010813D7B0FF000000090000000413D7ECFF00000004067ECE850000000600000005128A40F902800108000000090000000600000001000000030F350CFC000000030000000500000004135D80FF0000000404548A05138670FA0CFD9C070F34D0FC000000060000000300000006000000021386ACFA000000020CFD9C070F34D0FC028001000000000613D7ECF700000000078000F8128A7CF90000000107800108128A40FF067ECE8500000006000000050000000400000005000000050000000300000005135D44F905000108135D44FF04548A05000000061386ACFA000000020000000600000004000000060000000100000000135D80F700000000050000F8135D80F90000000105000108135D44FF04548A05138670FA0CFD9C070F34D0FC07800100128A40F7078000F8128A7CF900000001028001080000000913D7ECFF00000004022A458500000006000000090000000900000000128A7CF700000000078000F8128A7CF900000001028001080000000913D7ECFF00000004022A45850000000900000009000000090000000300000009000000021386ACFA000000020CFD9C070F34D0FC07800100128A40F7078000F8128A7CF900000001028001080000000913D7ECFF00000004067ECE8512EA58FA0AD3578710D100FC0640010012FF70F700000009000000000000000500000003000000050000000200000005128A40F9000000090000000100000000128A7CF700000000078000F8128A7CF9000000010000000500000005000000030000000500000004135D80FF0000000404548A05138670FA0CFD9C070F34D0FC07800100128A40F7078000F8128A7CF90000000107800108128A40FF022A45850000000613E200FA000000020AD3578710D100FC00000006000000030000000500000004128A7CFF00000004000000060000000600000000128A7CF700000000078000F8128A7CF90000000107800108128A40FF022A458513E1C4FA0AD3578710D100FC08C0010000000006000000080000000300000005000000020000000500000004128A7CFF0000000400000005128A40F907800108128A40FF022A4585000000060000000500000004128A7CFF00000004000000050000000100000003000000050000000200000005135D44F905000108135D44FF04548A05000000091386ACFA000000020CFD9C070F34D0FC078001000000000900000005000000030000000500000004135D80FF0000000404548A05138670FA0CFD9C070F34D0FC000000060000000300000005000000020000000500000001"
theorem small_5515443_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515443_right_root small_5515443_right_fuel small_5515443_right_count small_5515443_right_encoded = true := by
  decide +kernel
theorem small_5515443_right_covered : CoveredBy scale carrier boxes small_5515443_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515443_right_root small_5515443_right_fuel small_5515443_right_count small_5515443_right_encoded small_5515443_right_checked

theorem cover_5515443 : CoveredBy scale carrier boxes root_5515443 := by
  apply coveredBy_split_literal root_5515443 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5515444 small_5515443_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5515444
  · exact small_5515443_right_covered
#print axioms cover_5515443

def root_5515438 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515438_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515438_right_fuel : Nat := 1
def small_5515438_right_count : Nat := 1
def small_5515438_right_encoded : String := "00000002"
theorem small_5515438_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515438_right_root small_5515438_right_fuel small_5515438_right_count small_5515438_right_encoded = true := by
  decide +kernel
theorem small_5515438_right_covered : CoveredBy scale carrier boxes small_5515438_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515438_right_root small_5515438_right_fuel small_5515438_right_count small_5515438_right_encoded small_5515438_right_checked

theorem cover_5515438 : CoveredBy scale carrier boxes root_5515438 := by
  apply coveredBy_split_literal root_5515438 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5515443 small_5515438_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5515443
  · exact small_5515438_right_covered
#print axioms cover_5515438

def root_5515437 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515437_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515437_right_fuel : Nat := 26
def small_5515437_right_count : Nat := 319
def small_5515437_right_encoded : String := "12073CFA0000000208A91307120700FC05000100135D44F7050000F8135D80F90000000105000108135D44FF0CFD9C050F34D0FA04548A07138670FC028001000000000A0000000A000000031386ACFC000000030280010013D7B0F7078000F8128A7CF9000000010280010813D7B0FF0AD3578510D100FA0000000A00000002000000080000000400000008128A40F900000008000000010000000013D7ECF700000000078000F8128A7CF900000001028001080000000A13D7ECFF000000040AD3578510D100FA067ECE870000000A000000050000000200000005128A40F90000000A00000001000000020F350CFA000000020000000A00000004135D80FF000000040CFD9C050F34D0FA04548A07138670FC0280010013D7B0F7078000F800000008000000080000000013D7ECF700000000078000F8128A7CF90000000107800108128A40FF0AD3578510D100FA022A45870000000800000008000000020000000800000004128A7CFF000000040AD3578510D100FA022A458700000008000000080000000200000008128A40F90000000800000001000000031386ACFC000000030280010013D7B0F7078000F8128A7CF90000000107800108128A40FF000000080000000400000008128A40F900000008000000010000000013D7ECF700000000078000F8128A7CF90000000107800108128A40FF0AD3578510D100FA067ECE8712EA58FC03C00100000000080000000500000003000000050000000200000005000000040000000500000005000000020F350CFA0000000204548A070000000800000005135D44F905000108135D44FF0CFD9C050F34D0FA0000000A000000020000000800000004135D80FF000000040CFD9C050F34D0FA04548A07000000081386ACFC0000000302800100000000080000000500000002000000080000000100000000135D80F700000000050000F8135D80F90000000105000108135D44FF0CFD9C050F34D0FA04548A070000000A1386ACFC0000000307800100128A40F7078000F8128A7CF900000001028001080000000A13D7ECFF000000040AD3578510D100FA067ECE870000000A0000000500000002000000050000000A00000000128A7CF7000000000000000A000000020000000A00000004135D80FF000000040CFD9C050F34D0FA04548A07138670FC07800100128A40F7078000F8128A7CF90000000107800108128A40FF0AD3578510D100FA022A45870000000A0000000A000000020000000A00000004128A7CFF000000040AD3578510D100FA022A458713E1C4FC064001000000000912FFACF7000000000000000900000003000000050000000200000005128A40F9078001080000000A128A7CFF000000040AD3578510D100FA022A4587000000080000000500000002000000050000000100000000128A7CF700000000078000F8128A7CF900000001078001080000000A128A7CFF0000000400000005128A40F90000000A0000000100000003000000050000000200000005135D44F9050001080000000A135D80FF000000040CFD9C050F34D0FA04548A070000000A000000050000000200000005000000010000000312073CFC0000000305000100135D44F7050000F8135D80F90000000105000108135D44FF0CFD9C050F34D0FA0CFD9C070F34D0FC0280010013D7B0F7078000F8128A7CF90000000100000005000000050000000000000005000000030000000500000002000000050000000400000005000000050000000000000005"
theorem small_5515437_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515437_right_root small_5515437_right_fuel small_5515437_right_count small_5515437_right_encoded = true := by
  decide +kernel
theorem small_5515437_right_covered : CoveredBy scale carrier boxes small_5515437_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515437_right_root small_5515437_right_fuel small_5515437_right_count small_5515437_right_encoded small_5515437_right_checked

theorem cover_5515437 : CoveredBy scale carrier boxes root_5515437 := by
  apply coveredBy_split_literal root_5515437 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5515438 small_5515437_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5515438
  · exact small_5515437_right_covered
#print axioms cover_5515437

def root_5515432 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515432_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515432_right_fuel : Nat := 1
def small_5515432_right_count : Nat := 1
def small_5515432_right_encoded : String := "00000004"
theorem small_5515432_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515432_right_root small_5515432_right_fuel small_5515432_right_count small_5515432_right_encoded = true := by
  decide +kernel
theorem small_5515432_right_covered : CoveredBy scale carrier boxes small_5515432_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515432_right_root small_5515432_right_fuel small_5515432_right_count small_5515432_right_encoded small_5515432_right_checked

theorem cover_5515432 : CoveredBy scale carrier boxes root_5515432 := by
  apply coveredBy_split_literal root_5515432 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5515437 small_5515432_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5515437
  · exact small_5515432_right_covered
#print axioms cover_5515432

def root_5515431 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5515431 : CoveredBy scale carrier boxes root_5515431 := by
  apply coveredBy_split_literal root_5515431 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5515432 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2072.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5515432
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2072.covered
#print axioms cover_5515431

def root_5515426 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515426_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515426_right_fuel : Nat := 1
def small_5515426_right_count : Nat := 1
def small_5515426_right_encoded : String := "00000003"
theorem small_5515426_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515426_right_root small_5515426_right_fuel small_5515426_right_count small_5515426_right_encoded = true := by
  decide +kernel
theorem small_5515426_right_covered : CoveredBy scale carrier boxes small_5515426_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515426_right_root small_5515426_right_fuel small_5515426_right_count small_5515426_right_encoded small_5515426_right_checked

theorem cover_5515426 : CoveredBy scale carrier boxes root_5515426 := by
  apply coveredBy_split_literal root_5515426 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5515431 small_5515426_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5515431
  · exact small_5515426_right_covered
#print axioms cover_5515426

def root_5515425 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515425_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515425_right_fuel : Nat := 11
def small_5515425_right_count : Nat := 37
def small_5515425_right_encoded : String := "1151E907000000030A0001081151E8FF08A91305120700FA00000005000000020000000500000004115224FF0000000408A91305120700FA08A912FF12073D080500010000000005135D80F700000000050000F8000000050000000600000004000000050000000212073CFA0000000208A912FF12073D080500010000000005135D80F700000000000000050000000400000005"
theorem small_5515425_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515425_right_root small_5515425_right_fuel small_5515425_right_count small_5515425_right_encoded = true := by
  decide +kernel
theorem small_5515425_right_covered : CoveredBy scale carrier boxes small_5515425_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515425_right_root small_5515425_right_fuel small_5515425_right_count small_5515425_right_encoded small_5515425_right_checked

theorem cover_5515425 : CoveredBy scale carrier boxes root_5515425 := by
  apply coveredBy_split_literal root_5515425 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5515426 small_5515425_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5515426
  · exact small_5515425_right_covered
#print axioms cover_5515425

def root_5515420 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515420_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515420_right_fuel : Nat := 1
def small_5515420_right_count : Nat := 1
def small_5515420_right_encoded : String := "00000002"
theorem small_5515420_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515420_right_root small_5515420_right_fuel small_5515420_right_count small_5515420_right_encoded = true := by
  decide +kernel
theorem small_5515420_right_covered : CoveredBy scale carrier boxes small_5515420_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515420_right_root small_5515420_right_fuel small_5515420_right_count small_5515420_right_encoded small_5515420_right_checked

theorem cover_5515420 : CoveredBy scale carrier boxes root_5515420 := by
  apply coveredBy_split_literal root_5515420 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5515425 small_5515420_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5515425
  · exact small_5515420_right_covered
#print axioms cover_5515420

def root_5515419 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515419_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515419_right_fuel : Nat := 15
def small_5515419_right_count : Nat := 61
def small_5515419_right_encoded : String := "1151E905000000020A0000FC115225070A0001081151E8FF08A91307120700FC00000005000000030000000500000004115224FF0000000408A91307120700FC08A912FF12073D080500010000000005135D80F700000000050000F800000005135D44F9050000FA00000005000000080000000100000004000000050000000312073CFC0000000308A912FF12073D080500010000000005135D80F700000000000000050000000400000005000000031151E907000000030A00010800000005115224FF0000000408A912FF12073D080500010000000005135D80F700000000050000F800000005000000060000000400000006"
theorem small_5515419_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515419_right_root small_5515419_right_fuel small_5515419_right_count small_5515419_right_encoded = true := by
  decide +kernel
theorem small_5515419_right_covered : CoveredBy scale carrier boxes small_5515419_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515419_right_root small_5515419_right_fuel small_5515419_right_count small_5515419_right_encoded small_5515419_right_checked

theorem cover_5515419 : CoveredBy scale carrier boxes root_5515419 := by
  apply coveredBy_split_literal root_5515419 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5515420 small_5515419_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5515420
  · exact small_5515419_right_covered
#print axioms cover_5515419

def root_5515414 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515414_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515414_right_fuel : Nat := 1
def small_5515414_right_count : Nat := 1
def small_5515414_right_encoded : String := "00000001"
theorem small_5515414_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515414_right_root small_5515414_right_fuel small_5515414_right_count small_5515414_right_encoded = true := by
  decide +kernel
theorem small_5515414_right_covered : CoveredBy scale carrier boxes small_5515414_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515414_right_root small_5515414_right_fuel small_5515414_right_count small_5515414_right_encoded small_5515414_right_checked

theorem cover_5515414 : CoveredBy scale carrier boxes root_5515414 := by
  apply coveredBy_split_literal root_5515414 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5515419 small_5515414_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5515419
  · exact small_5515414_right_covered
#print axioms cover_5515414

def root_5491220 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5491220 : CoveredBy scale carrier boxes root_5491220 := by
  apply coveredBy_split_literal root_5491220 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5491221 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5515414 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5491221
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5515414
#print axioms cover_5491220

def root_5491215 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491215_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491215_right_fuel : Nat := 1
def small_5491215_right_count : Nat := 1
def small_5491215_right_encoded : String := "00000000"
theorem small_5491215_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491215_right_root small_5491215_right_fuel small_5491215_right_count small_5491215_right_encoded = true := by
  decide +kernel
theorem small_5491215_right_covered : CoveredBy scale carrier boxes small_5491215_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491215_right_root small_5491215_right_fuel small_5491215_right_count small_5491215_right_encoded small_5491215_right_checked

theorem cover_5491215 : CoveredBy scale carrier boxes root_5491215 := by
  apply coveredBy_split_literal root_5491215 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5491220 small_5491215_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5491220
  · exact small_5491215_right_covered
#print axioms cover_5491215

def root_5538228 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5538228 : CoveredBy scale carrier boxes root_5538228 := by
  apply coveredBy_split_literal root_5538228 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2073.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2074.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2073.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2074.covered
#print axioms cover_5538228

def root_5538222 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5538222_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5538222_left_fuel : Nat := 1
def small_5538222_left_count : Nat := 1
def small_5538222_left_encoded : String := "00000000"
theorem small_5538222_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5538222_left_root small_5538222_left_fuel small_5538222_left_count small_5538222_left_encoded = true := by
  decide +kernel
theorem small_5538222_left_covered : CoveredBy scale carrier boxes small_5538222_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5538222_left_root small_5538222_left_fuel small_5538222_left_count small_5538222_left_encoded small_5538222_left_checked

theorem cover_5538222 : CoveredBy scale carrier boxes root_5538222 := by
  apply coveredBy_split_literal root_5538222 small_5538222_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5538228 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5538222_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5538228
#print axioms cover_5538222

def root_5491214 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5491214 : CoveredBy scale carrier boxes root_5491214 := by
  apply coveredBy_split_literal root_5491214 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5491215 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5538222 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5491215
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5538222
#print axioms cover_5491214

def root_5491213 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5491213 : CoveredBy scale carrier boxes root_5491213 := by
  apply coveredBy_split_literal root_5491213 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5491214 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2075.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5491214
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2075.covered
#print axioms cover_5491213

def root_5473381 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5473381 : CoveredBy scale carrier boxes root_5473381 := by
  apply coveredBy_split_literal root_5473381 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.root_5473382 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5491213 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0387.cover_5473382
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5491213
#print axioms cover_5473381

def root_5400063 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5400063 : CoveredBy scale carrier boxes root_5400063 := by
  apply coveredBy_split_literal root_5400063 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.root_5400064 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5473381 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0386.cover_5400064
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5473381
#print axioms cover_5400063

def root_5548310 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5548310_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5548310_right_fuel : Nat := 22
def small_5548310_right_count : Nat := 315
def small_5548310_right_encoded : String := "1151E905000000020A0001061151E8FD0A0001081151E9090000000408A912F712073D0008A912F900000009120700F8000000050000000100000000120701000000000008A912F900000008120700F800000005000000011152250908A912F712073D0008A912F912073CF80000000108A913091207010800000004050000FA135D810505000106135D44FD0CFD9BF70F350D000CFD9BF9000000090F34D0F80000000900000001000000000F34D100000000000CFD9BF90F350CF80000000104548A09000000081386AD0800000008000000040F34D0F8000000060000000100000003135D80FD000000030CFD9BF70F350D0000000009000000000F34D100000000000CFD9BF9000000080000000A00000002135D45050000000205000106135D44FD0CFD9BF70F350D000CFD9BF9000000090F34D0F80000000900000001000000000F34D100000000000CFD9BF9000000080000000800000003135D80FD000000030CFD9BF70F350D0000000009000000000F34D100000000000000000812073D08050000FA135D810505000106135D44FD0CFD9BF7000000090F34D100000000000CFD9BF9000000090F34D0F80000000500000001000000030000000900000002135D45050000000205000106135D44FD0CFD9BF7000000090F34D100000000000CFD9BF90000000800000008000000030000000900000004120700F808A913091207010800000004050000FA135D810505000106135D44FD0CFD9BF70F350D0000000005000000000000000500000003135D80FD000000030CFD9BF70F350D0000000009000000000F34D100000000000000000600000002135D45050000000205000106135D44FD0CFD9BF70F350D0000000009000000000000000800000003135D80FD000000030CFD9BF7000000090000000812073D08050000FA00000005135D450500000002050001060000000500000009000000040000000100000000120701000000000008A912F912073CF80000000108A913091207010800000004050000FA135D8105050001060000000800000008000000020000000812073D08050000FA135D8105050001060000000800000008000000020000000800000004120700F808A913090000000812073D080000000800000004000000010000000400000003115224FD000000030A0001081151E90900000004000000091152250908A912F712073D0008A912F912073CF80000000108A912FD12073D0608A913091207010800000004050000FA135D81050CFD9BF7000000090F34D100000000000000000A00000002135D4505000000020CFD9BF7000000090F34D10000000000000000080000000900000003120701060000000300000009120700F808A912FD12073D0608A913091207010800000004050000FA135D81050CFD9BF7000000090000000800000002135D4505000000020CFD9BF7000000090000000800000009000000031207010600000003000000090000000100000000120701000000000008A912F912073CF80000000108A912FD12073D0608A913090000000812073D0800000008000000040000000300000008120700F808A912FD12073D0608A913090000000812073D08050000FA135D8105045489F7000000091386710000000000045489F9000000080000000A00000002135D450500000002045489F700000008000000080000000400000003120701060000000308A9130900000008000000090000000100000004"
theorem small_5548310_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5548310_right_root small_5548310_right_fuel small_5548310_right_count small_5548310_right_encoded = true := by
  decide +kernel
theorem small_5548310_right_covered : CoveredBy scale carrier boxes small_5548310_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5548310_right_root small_5548310_right_fuel small_5548310_right_count small_5548310_right_encoded small_5548310_right_checked

theorem cover_5548310 : CoveredBy scale carrier boxes root_5548310 := by
  apply coveredBy_split_literal root_5548310 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2078.root small_5548310_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2078.covered
  · exact small_5548310_right_covered
#print axioms cover_5548310

def root_5548304 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5548304_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5548304_left_fuel : Nat := 1
def small_5548304_left_count : Nat := 1
def small_5548304_left_encoded : String := "00000001"
theorem small_5548304_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5548304_left_root small_5548304_left_fuel small_5548304_left_count small_5548304_left_encoded = true := by
  decide +kernel
theorem small_5548304_left_covered : CoveredBy scale carrier boxes small_5548304_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5548304_left_root small_5548304_left_fuel small_5548304_left_count small_5548304_left_encoded small_5548304_left_checked

theorem cover_5548304 : CoveredBy scale carrier boxes root_5548304 := by
  apply coveredBy_split_literal root_5548304 small_5548304_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5548310 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5548304_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5548310
#print axioms cover_5548304

def root_5548303 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5548303 : CoveredBy scale carrier boxes root_5548303 := by
  apply coveredBy_split_literal root_5548303 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5548304 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2079.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5548304
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2079.covered
#print axioms cover_5548303

def root_5548297 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5548297_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5548297_left_fuel : Nat := 1
def small_5548297_left_count : Nat := 1
def small_5548297_left_encoded : String := "00000000"
theorem small_5548297_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5548297_left_root small_5548297_left_fuel small_5548297_left_count small_5548297_left_encoded = true := by
  decide +kernel
theorem small_5548297_left_covered : CoveredBy scale carrier boxes small_5548297_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5548297_left_root small_5548297_left_fuel small_5548297_left_count small_5548297_left_encoded small_5548297_left_checked

theorem cover_5548297 : CoveredBy scale carrier boxes root_5548297 := by
  apply coveredBy_split_literal root_5548297 small_5548297_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5548303 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5548297_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5548303
#print axioms cover_5548297

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390
