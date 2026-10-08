import TaoBundleAssembly0294
import TaoBundleChunkBatch0386
import TaoBundleChunkBatch0387
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295
def root_4099333 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4099333_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4099333_right_fuel : Nat := 23
def small_4099333_right_count : Nat := 315
def small_4099333_right_encoded : String := "135D44FF04548A01138670F604548A05138670FA07800102128A40F907800106128A40FD028000FE13D7ECFF00000004022A45810000000513E200F600000000022A45850000000513E200FA000000020640010212FF70F9000000070000000112FFACF900000001064001060000000912FFACFD0000000303C000FE13A54CFF00000004033F67C100000005000000090000000713D7B0FF022A458100000005000000090000000400000003128A7CFD00000003028000FE13D7ECFF00000004022A458113E1C4F6022A458500000005000000070000000013E200F600000000022A458513E1C4FA064001020000000512FFACF90000000108C001060000000511FC24FD000000030000000A000000020000000713D7B0FF022A458100000005000000070000000400000001128A7CF90000000107800106128A40FD028000FE13D7ECFF00000004022A458113E1C4F6022A45850000000513E200FA0000000208C001020000000511FC24F900000001064001060000000512FFACFD000000030000000A0000000013E200F600000000022A4585000000090000000913D7B0FF022A458100000005000000090000000400000003128A7CFD00000003028000FE13D7ECFF00000004022A458113E1C4F6022A4585000000050000000A0000000013E200F600000000022A458513E1C4FA0000000A000000020000000A13D7B0FF022A458113E1C4F6022A45850000000500000007000000000000000A00000004000000021386ACFA0000000207800102128A40F907800106000000070000000700000001128A7CF90000000107800106128A40FD028000FE13D7ECFF00000004022A458113E1C4F6067ECE8512EA58FA08C001020000000711FC24F90000000106400106000000080000000700000002000000070000000013E200F600000000067ECE8512EA58FA08C0010211FBE8F9064001060000000900000007000000010000000A000000020000000713D7B0FF022A45810000000713E200F600000000000000070000000400000003128A7CFD00000003028000FE13D7ECFF00000004022A4581000000070000000A00000007000000001386ACF60000000004548A05138670FA07800102128A40F90780010600000009128A7CFD00000003028000FE13D7ECFF00000004067ECE8112EA58F6022A458513E1C4FA0640010212FF70F908C00106000000090000000600000001000000090000000213E200FA0000000206400102000000070000000A0000000012EA94F6000000000000000913D7B0FF067ECE8112EA58F6022A4585000000090000000700000000000000060000000400000001128A7CF9000000010780010600000009128A7CFD00000003028000FE13D7ECFF00000004067ECE8112EA58F60000000A000000000000000900000009000000021386ACFA0000000207800102128A40F907800106128A40FD028000FE13D7ECFF00000004067ECE8112EA58F6067ECE8512EA58FA06400102000000070000000900000002000000070000000012EA94F600000000067ECE85000000090000000513D7B0FF067ECE8100000007000000090000000400000003128A7CFD00000003028000FE13D7ECFF00000004067ECE8100000007000000050000000700000001128A7CF90000000107800106128A40FD028000FE13D7ECFF00000004067ECE8112EA58F6067ECE850000000900000005000000000000000500000009000000030000000A00000004"
theorem small_4099333_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4099333_right_root small_4099333_right_fuel small_4099333_right_count small_4099333_right_encoded = true := by
  decide +kernel
theorem small_4099333_right_covered : CoveredBy scale carrier boxes small_4099333_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4099333_right_root small_4099333_right_fuel small_4099333_right_count small_4099333_right_encoded small_4099333_right_checked

theorem cover_4099333 : CoveredBy scale carrier boxes root_4099333 := by
  apply coveredBy_split_literal root_4099333 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4099334 small_4099333_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4099334
  · exact small_4099333_right_covered
#print axioms cover_4099333

def root_4099327 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4099327_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4099327_left_fuel : Nat := 1
def small_4099327_left_count : Nat := 1
def small_4099327_left_encoded : String := "00000003"
theorem small_4099327_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4099327_left_root small_4099327_left_fuel small_4099327_left_count small_4099327_left_encoded = true := by
  decide +kernel
theorem small_4099327_left_covered : CoveredBy scale carrier boxes small_4099327_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4099327_left_root small_4099327_left_fuel small_4099327_left_count small_4099327_left_encoded small_4099327_left_checked

theorem cover_4099327 : CoveredBy scale carrier boxes root_4099327 := by
  apply coveredBy_split_literal root_4099327 small_4099327_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.root_4099333 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_4099327_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.cover_4099333
#print axioms cover_4099327

def root_4095619 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4095619 : CoveredBy scale carrier boxes root_4095619 := by
  apply coveredBy_split_literal root_4095619 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4095620 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.root_4099327 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4095620
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.cover_4099327
#print axioms cover_4095619

def root_4095613 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4095613_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4095613_left_fuel : Nat := 1
def small_4095613_left_count : Nat := 1
def small_4095613_left_encoded : String := "00000001"
theorem small_4095613_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4095613_left_root small_4095613_left_fuel small_4095613_left_count small_4095613_left_encoded = true := by
  decide +kernel
theorem small_4095613_left_covered : CoveredBy scale carrier boxes small_4095613_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4095613_left_root small_4095613_left_fuel small_4095613_left_count small_4095613_left_encoded small_4095613_left_checked

theorem cover_4095613 : CoveredBy scale carrier boxes root_4095613 := by
  apply coveredBy_split_literal root_4095613 small_4095613_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.root_4095619 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_4095613_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.cover_4095619
#print axioms cover_4095613

def root_4089647 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4089647 : CoveredBy scale carrier boxes root_4089647 := by
  apply coveredBy_split_literal root_4089647 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4089648 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.root_4095613 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4089648
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.cover_4095613
#print axioms cover_4089647

def root_4089642 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4089642_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4089642_right_fuel : Nat := 1
def small_4089642_right_count : Nat := 1
def small_4089642_right_encoded : String := "00000002"
theorem small_4089642_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4089642_right_root small_4089642_right_fuel small_4089642_right_count small_4089642_right_encoded = true := by
  decide +kernel
theorem small_4089642_right_covered : CoveredBy scale carrier boxes small_4089642_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4089642_right_root small_4089642_right_fuel small_4089642_right_count small_4089642_right_encoded small_4089642_right_checked

theorem cover_4089642 : CoveredBy scale carrier boxes root_4089642 := by
  apply coveredBy_split_literal root_4089642 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.root_4089647 small_4089642_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.cover_4089647
  · exact small_4089642_right_covered
#print axioms cover_4089642

def root_4089641 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4089641_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4089641_right_fuel : Nat := 24
def small_4089641_right_count : Nat := 285
def small_4089641_right_encoded : String := "12073CFA0000000205000102135D44F905000106135D44FD050000FE135D80FF0000000404548A01138670F60CFD9C050F34D0FA028001020000000713D7ECF9000000010280010600000007000000070000000200000007000000001386ACF6000000000CFD9C050F34D0FA0280010213D7B0F90280010613D7B0FD078000FE128A7CFF00000004067ECE8100000007000000080000000700000003000000070000000113D7ECF9000000010280010613D7B0FD078000FE00000008000000080000000313D7ECFD00000003078000FE128A7CFF00000004067ECE810000000700000005128A40FF0000000700000004000000020F350CFA0000000200000005135D44FF04548A01000000071386ACF600000000000000070000000400000003135D80FD00000003050000FE135D80FF0000000404548A01138670F60CFD9C050F34D0FA000000070000000200000007000000001386ACF6000000000CFD9C050F34D0FA028001020000000713D7ECF90000000107800106128A40FD078000FE128A7CFF00000004067ECE8100000007000000050000000500000003000000050000000200000005135D44FF000000070000000400000001135D80F90000000105000106135D44FD050000FE135D80FF0000000404548A01138670F60CFD9C050F34D0FA07800102128A40F9028001060000000813D7ECFD00000003078000FE128A7CFF00000004022A458100000007000000080000000700000001128A7CF900000001028001060000000813D7ECFD00000003078000FE128A7CFF00000004022A45810000000800000008000000080000000200000008000000001386ACF6000000000CFD9C050F34D0FA07800102128A40F90280010613D7B0FD078000FE00000008000000080000000313D7ECFD00000003078000FE128A7CFF00000004067ECE8112EA58F60AD3578510D100FA0640010212FF70F9000000080000000100000005000000020000000500000000000000050000000500000001128A7CF9000000010280010613D7B0FD078000FE000000080000000500000003000000050000000200000005135D44FF04548A01000000081386ACF6000000000CFD9C050F34D0FA07800102000000080000000500000002000000050000000400000003135D80FD00000003050000FE135D80FF0000000404548A01138670F60CFD9C050F34D0FA07800102128A40F907800106128A40FD078000FE128A7CFF00000004022A45810000000713E200F6000000000AD3578510D100FA0000000700000002000000050000000700000003128A7CFD000000030000000700000001128A7CF90000000107800106128A40FD078000FE128A7CFF00000004022A458113E1C4F60AD3578510D100FA08C00102000000070000000600000002000000050000000000000005128A40FF022A458100000007000000050000000400000003128A7CFD00000003078000FE128A7CFF00000004000000050000000500000002000000050000000000000005135D44FF04548A01138670F60CFD9C050F34D0FA000000070000000200000005000000000000000500000004"
theorem small_4089641_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4089641_right_root small_4089641_right_fuel small_4089641_right_count small_4089641_right_encoded = true := by
  decide +kernel
theorem small_4089641_right_covered : CoveredBy scale carrier boxes small_4089641_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4089641_right_root small_4089641_right_fuel small_4089641_right_count small_4089641_right_encoded small_4089641_right_checked

theorem cover_4089641 : CoveredBy scale carrier boxes root_4089641 := by
  apply coveredBy_split_literal root_4089641 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.root_4089642 small_4089641_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.cover_4089642
  · exact small_4089641_right_covered
#print axioms cover_4089641

def root_4089636 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4089636_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4089636_right_fuel : Nat := 1
def small_4089636_right_count : Nat := 1
def small_4089636_right_encoded : String := "00000000"
theorem small_4089636_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4089636_right_root small_4089636_right_fuel small_4089636_right_count small_4089636_right_encoded = true := by
  decide +kernel
theorem small_4089636_right_covered : CoveredBy scale carrier boxes small_4089636_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4089636_right_root small_4089636_right_fuel small_4089636_right_count small_4089636_right_encoded small_4089636_right_checked

theorem cover_4089636 : CoveredBy scale carrier boxes root_4089636 := by
  apply coveredBy_split_literal root_4089636 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.root_4089641 small_4089636_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.cover_4089641
  · exact small_4089636_right_covered
#print axioms cover_4089636

def root_4089635 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4089635_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4089635_right_fuel : Nat := 26
def small_4089635_right_count : Nat := 327
def small_4089635_right_encoded : String := "12073CF60000000008A91305120700FA05000102135D44F905000106135D44FD050000FE135D80FF000000040CFD9C010F34D0F604548A05138670FA028001020000000900000009000000021386ACFA000000020280010213D7B0F90280010613D7B0FD078000FE128A7CFF000000040AD3578110D100F6000000090000000000000006000000060000000313D7ECFD00000003078000FE00000006000000060000000113D7ECF900000001028001060000000913D7ECFD00000003078000FE128A7CFF000000040AD3578110D100F6067ECE8500000009000000050000000000000005128A40FF0000000900000004000000000F350CF60000000000000009135D44FF0CFD9C010F34D0F60000000900000000000000060000000400000003135D80FD00000003050000FE135D80FF000000040CFD9C010F34D0F604548A05138670FA0280010213D7B0F90780010600000006000000060000000113D7ECF90000000107800106128A40FD078000FE128A7CFF000000040AD3578110D100F6022A4585000000060000000600000000000000060000000600000003128A7CFD00000003078000FE128A7CFF000000040AD3578110D100F6022A45850000000600000006000000000000000600000006000000021386ACFA000000020280010213D7B0F907800106128A40FD078000FE000000060000000600000003128A7CFD00000003078000FE00000006000000050000000113D7ECF90000000107800106128A40FD078000FE128A7CFF000000040AD3578110D100F6067ECE8512EA58FA03C00102000000060000000500000002000000050000000000000005000000050000000300000005000000000F350CF60000000004548A050000000600000005135D44FF0CFD9C010F34D0F604548A05000000061386ACFA0000000202800102000000060000000500000000000000060000000400000001135D80F90000000105000106135D44FD050000FE135D80FF000000040CFD9C010F34D0F604548A05000000091386ACFA0000000207800102128A40F9028001060000000913D7ECFD00000003078000FE128A7CFF000000040AD3578110D100F6067ECE85000000090000000500000000000000050000000500000001128A7CF900000001000000090000000000000009135D44FF000000090000000400000003135D80FD00000003050000FE135D80FF000000040CFD9C010F34D0F604548A05138670FA07800102128A40F907800106128A40FD078000FE128A7CFF000000040AD3578110D100F6022A4585000000090000000900000000000000090000000900000003128A7CFD00000003078000FE128A7CFF000000040AD3578110D100F6022A458513E1C4FA064001020000000812FFACF9000000010000000800000002000000050000000000000005128A40FF0AD3578110D100F6022A4585000000060000000500000000000000050000000400000001128A7CF9000000010780010600000009128A7CFD00000003078000FE128A7CFF00000004000000050000000500000002000000050000000000000005135D44FF0CFD9C010F34D0F604548A0500000009000000050000000000000005000000040000000212073CFA0000000205000102135D44F905000106135D44FD050000FE135D80FF000000040CFD9C010F34D0F60CFD9C050F34D0FA0280010213D7B0F90280010613D7B0FD078000FE128A7CFF00000004000000050000000500000003000000050000000100000005000000020000000500000000000000050000000500000003000000050000000100000005"
theorem small_4089635_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4089635_right_root small_4089635_right_fuel small_4089635_right_count small_4089635_right_encoded = true := by
  decide +kernel
theorem small_4089635_right_covered : CoveredBy scale carrier boxes small_4089635_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4089635_right_root small_4089635_right_fuel small_4089635_right_count small_4089635_right_encoded small_4089635_right_checked

theorem cover_4089635 : CoveredBy scale carrier boxes root_4089635 := by
  apply coveredBy_split_literal root_4089635 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.root_4089636 small_4089635_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.cover_4089636
  · exact small_4089635_right_covered
#print axioms cover_4089635

def root_4089630 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4089630_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4089630_right_fuel : Nat := 1
def small_4089630_right_count : Nat := 1
def small_4089630_right_encoded : String := "00000004"
theorem small_4089630_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4089630_right_root small_4089630_right_fuel small_4089630_right_count small_4089630_right_encoded = true := by
  decide +kernel
theorem small_4089630_right_covered : CoveredBy scale carrier boxes small_4089630_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4089630_right_root small_4089630_right_fuel small_4089630_right_count small_4089630_right_encoded small_4089630_right_checked

theorem cover_4089630 : CoveredBy scale carrier boxes root_4089630 := by
  apply coveredBy_split_literal root_4089630 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.root_4089635 small_4089630_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.cover_4089635
  · exact small_4089630_right_covered
#print axioms cover_4089630

def root_4066182 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4066182 : CoveredBy scale carrier boxes root_4066182 := by
  apply coveredBy_split_literal root_4066182 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4066183 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.root_4089630 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4066183
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.cover_4089630
#print axioms cover_4066182

def root_4066177 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066177_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066177_right_fuel : Nat := 1
def small_4066177_right_count : Nat := 1
def small_4066177_right_encoded : String := "00000003"
theorem small_4066177_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4066177_right_root small_4066177_right_fuel small_4066177_right_count small_4066177_right_encoded = true := by
  decide +kernel
theorem small_4066177_right_covered : CoveredBy scale carrier boxes small_4066177_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4066177_right_root small_4066177_right_fuel small_4066177_right_count small_4066177_right_encoded small_4066177_right_checked

theorem cover_4066177 : CoveredBy scale carrier boxes root_4066177 := by
  apply coveredBy_split_literal root_4066177 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.root_4066182 small_4066177_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.cover_4066182
  · exact small_4066177_right_covered
#print axioms cover_4066177

def root_4066176 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4066176 : CoveredBy scale carrier boxes root_4066176 := by
  apply coveredBy_split_literal root_4066176 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.root_4066177 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1544.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.cover_4066177
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1544.covered
#print axioms cover_4066176

def root_4066171 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066171_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066171_right_fuel : Nat := 1
def small_4066171_right_count : Nat := 1
def small_4066171_right_encoded : String := "00000002"
theorem small_4066171_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4066171_right_root small_4066171_right_fuel small_4066171_right_count small_4066171_right_encoded = true := by
  decide +kernel
theorem small_4066171_right_covered : CoveredBy scale carrier boxes small_4066171_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4066171_right_root small_4066171_right_fuel small_4066171_right_count small_4066171_right_encoded small_4066171_right_checked

theorem cover_4066171 : CoveredBy scale carrier boxes root_4066171 := by
  apply coveredBy_split_literal root_4066171 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.root_4066176 small_4066171_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.cover_4066176
  · exact small_4066171_right_covered
#print axioms cover_4066171

def root_4066170 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066170_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066170_right_fuel : Nat := 13
def small_4066170_right_count : Nat := 57
def small_4066170_right_encoded : String := "1151E905000000020A0001061151E8FD0A0000FE115224FF0000000408A91301120700F608A912FF12073CFE00000004000000050000000500000000000000051151E8FF08A91301120700F60000000500000000000000050000000400000003115224FD000000030A0000FE115224FF00000004000000051151E8FF08A91301120700F608A912FD12073D060500010200000005135D80F900000001050000FA000000050000000700000003000000050000000012073CF60000000008A912FD12073D060500010200000005135D80F90000000100000005000000030000000500000004"
theorem small_4066170_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4066170_right_root small_4066170_right_fuel small_4066170_right_count small_4066170_right_encoded = true := by
  decide +kernel
theorem small_4066170_right_covered : CoveredBy scale carrier boxes small_4066170_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4066170_right_root small_4066170_right_fuel small_4066170_right_count small_4066170_right_encoded small_4066170_right_checked

theorem cover_4066170 : CoveredBy scale carrier boxes root_4066170 := by
  apply coveredBy_split_literal root_4066170 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.root_4066171 small_4066170_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.cover_4066171
  · exact small_4066170_right_covered
#print axioms cover_4066170

def root_4066165 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066165_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066165_right_fuel : Nat := 1
def small_4066165_right_count : Nat := 1
def small_4066165_right_encoded : String := "00000001"
theorem small_4066165_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4066165_right_root small_4066165_right_fuel small_4066165_right_count small_4066165_right_encoded = true := by
  decide +kernel
theorem small_4066165_right_covered : CoveredBy scale carrier boxes small_4066165_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4066165_right_root small_4066165_right_fuel small_4066165_right_count small_4066165_right_encoded small_4066165_right_checked

theorem cover_4066165 : CoveredBy scale carrier boxes root_4066165 := by
  apply coveredBy_split_literal root_4066165 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.root_4066170 small_4066165_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.cover_4066170
  · exact small_4066165_right_covered
#print axioms cover_4066165

def root_4066164 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4066164 : CoveredBy scale carrier boxes root_4066164 := by
  apply coveredBy_split_literal root_4066164 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.root_4066165 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1545.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.cover_4066165
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1545.covered
#print axioms cover_4066164

def root_4066159 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066159_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066159_right_fuel : Nat := 1
def small_4066159_right_count : Nat := 1
def small_4066159_right_encoded : String := "00000000"
theorem small_4066159_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4066159_right_root small_4066159_right_fuel small_4066159_right_count small_4066159_right_encoded = true := by
  decide +kernel
theorem small_4066159_right_covered : CoveredBy scale carrier boxes small_4066159_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4066159_right_root small_4066159_right_fuel small_4066159_right_count small_4066159_right_encoded small_4066159_right_checked

theorem cover_4066159 : CoveredBy scale carrier boxes root_4066159 := by
  apply coveredBy_split_literal root_4066159 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.root_4066164 small_4066159_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.cover_4066164
  · exact small_4066159_right_covered
#print axioms cover_4066159

def root_4066158 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066158_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066158_right_fuel : Nat := 24
def small_4066158_right_count : Nat := 327
def small_4066158_right_encoded : String := "1151E901000000000A0001021151E8F90A0000FA115225050A0001061151E8FD0A0000FE115224FF0000000408A91305120700FA08A912FF12073CFE00000004000000050000000500000002000000051151E8FF08A91305120700FA0000000500000002000000050000000400000003115224FD000000030A0000FE115224FF00000004000000051151E8FF08A91305120700FA08A912FD12073D06050000F600000005135D4501000000000000000500000003000000050000000212073CFA0000000208A912FD12073D06050000F600000005135D45010000000000000005000000030000000500000004000000021151E905000000020A00010600000005115224FD000000030A0000FE000000051151E8FF08A912FD12073D06050000F6000000050000000700000003000000070000000400000001115224F9000000010A0000FA115225050A0001061151E8FD0A0000FE115224FF00000004000000051151E8FF08A912F912073D0208A91305120700FA050000F600000005000000090000000212073CFA00000002050000F600000005135D45010000000000000005000000011207010200000001000000090000000400000003115224FD000000030A0000FE115224FF0000000408A912F912073D0208A91305120700FA00000005000000020000000500000001120701020000000108A91305120700FA000000050000000212073CFA0000000208A912FD12073D060000000500000003120701060000000308A912FF0000000A000000081151E8FF08A912F912073D0208A91305120700FA08A912FD12073D06050000F6135D8101050000FE00000005135D44FF0CFD9BF90F350D020000000500000001000000050000000400000000135D450100000000050000FE00000005135D44FF0CFD9BF90F350D0204548A0500000009000000050000000100000009000000040000000312070106000000030000000A0000000212073CFA0000000208A912FD12073D06050000F6135D8101050000FE00000005135D44FF0CFD9BF90F350D020000000500000001000000050000000400000000135D450100000000050000FE00000005135D44FF0CFD9BF90F350D020CFD9C050F34D0FA000000050000000200000005000000010F34D1020000000100000009000000040000000312070106000000030000000A00000001120701020000000108A91305120700FA0000000A000000020000000A00000004000000021151E905000000020A0001061151E8FD0A0000FE000000051151E8FF08A912F912073D02050000F6000000050000000900000001000000090000000400000003115224FD000000030A0000FE115224FF0000000408A912F912073D0208A912FD12073D0608A912FF12073CFE00000004050000F600000005135D45010000000000000005120700FE000000050000000400000003120701060000000308A912FF12073CFE00000004050000F6000000050000000A120700FE050000F6000000050000000A0000000400000001120701020000000108A912FD12073D0608A912FF12073CFE00000004050000F6000000050000000A120700FE050000F6000000050000000A0000000400000003120701060000000308A912FF0000000A120700FE0000000A000000041151E8FF08A912F912073D0208A912FD12073D06050000F6135D8101050000FA0000000A135D4505000000020000000A00000000135D450100000000050000FA0000000A000000090000000312070106000000030000000700000001120701020000000108A912FD000000090000000A00000004"
theorem small_4066158_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4066158_right_root small_4066158_right_fuel small_4066158_right_count small_4066158_right_encoded = true := by
  decide +kernel
theorem small_4066158_right_covered : CoveredBy scale carrier boxes small_4066158_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4066158_right_root small_4066158_right_fuel small_4066158_right_count small_4066158_right_encoded small_4066158_right_checked

theorem cover_4066158 : CoveredBy scale carrier boxes root_4066158 := by
  apply coveredBy_split_literal root_4066158 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.root_4066159 small_4066158_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295.cover_4066159
  · exact small_4066158_right_covered
#print axioms cover_4066158

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0295
