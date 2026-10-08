import TaoBundleAssembly0188
import TaoBundleChunkBatch0738
import TaoBundleChunkBatch0739
import TaoBundleChunkBatch0740
import TaoBundleChunkBatch0741
import TaoBundleChunkBatch0742
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189
def root_7844536 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7844536_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7844536_right_fuel : Nat := 23
def small_7844536_right_count : Nat := 467
def small_7844536_right_encoded : String := "1386AD0004548A07138670FC078000F8128A7CF900000001078000FA128A7CFB0000000207800108128A40FF067ECE8112EA590000000000022A458713E1C4FC08C000F811FC24F90000000108C000FA11FC24FB0000000206400108000000060000000611FBE8FB0640010812FF70FF0000000A00000004000000090000000211FBE8F90000000A000000010000000313E200FC0000000308C000F811FC24F90000000108C000FA11FC24FB00000002064001080000000A12FFACFF000000040000000711FBE8FB064001080000000812FFACFF000000040569AC411340D50000000000033F67C70000000900000008000000080000000211FBE8F908C000FA0000000A11FBE8FB064001080000000812FFACFF000000040569AC411340D500000000000000000700000007000000020000000112EA9500022A45870000000A13E200FC0000000308C000F8000000050000000A0000000000000004128A7CFF00000004067ECE8112EA590000000000022A458713E1C4FC08C000F811FC24F9000000010000000911FBE8F900000007000000010000000313E200FC0000000308C000F811FC24F90000000108C000FA0000000711FBE8FB00000007000000020000000712EA9500022A458713E1C4FC00000007000000030000000700000000128A40FB07800108128A40FF067ECE8112EA590000000000022A458713E1C4FC08C000F811FC24F900000001064000FA12FFACFB000000020640010812FF70FF0000000800000004000000090000000811FBE8F9064000FA12FFACFB00000002064001080000000A12FFACFF000000040569AC411340D5000000000001152347000000050000000800000008000000080000000100000003000000080000000800000004128A7CFF00000004067ECE8112EA590000000000022A458713E1C4FC08C000F80000000911FBE8F9064000FA12FFACFB0000000208C00108000000090000000700000009000000010000000313E200FC0000000308C000F811FC24F900000001064000FA12FFACFB0000000208C0010811FBE8FF0569AC410000000900000008000000040000000912FF70FB08C0010800000008000000090000000211FBE8F9064000FA12FFACFB0000000208C0010811FBE8FF0569AC411340D50000000000033F67C7000000070000000700000007000000040000000712FF70FB08C001080000000811FC24FF000000040569AC410000000900000007000000020000000112EA9500022A458713E1C4FC08C000F80000000911FBE8F9064000FA12FFACFB0000000200000007000000080000000100000003000000080000000000000002128A40F9078000FA128A7CFB0000000207800108128A40FF067ECE8112EA590000000000022A45870000000A0000000A0000000A00000004128A7CFF00000004067ECE8112EA5900000000000000000700000007128A40FB07800108128A40FF067ECE8112EA590000000000022A458713E1C4FC064000F812FFACF9000000010000000A0000000A0000000313E200FC00000003064000F8000000080000000A0000000A00000004128A7CFF00000004067ECE8112EA590000000000022A458713E1C4FC064000F812FFACF900000001064000FA12FFACFB000000020000000712FF70FB08C0010811FBE8FF0569AC4100000005000000080000000411FC24FF00000004000000070000000212FF70F9064000FA0000000712FF70FB08C001080000000A0000000500000002000000010000000313E200FC00000003064000F812FFACF900000001064000FA0000000712FF70FB08C0010800000008000000070000000212FF70F9064000FA0000000712FF70FB08C001080000000600000007000000020000000112EA9500022A458713E1C4FC064000F812FFACF900000001064000FA0000000700000008000000070000000313E200FC00000003064000F80000000800000007000000000000000200000001000000031386ACFC00000003078000F8128A7CF900000001078000FA128A7CFB0000000207800108128A40FF067ECE8112EA590000000000067ECE8712EA58FC08C000F811FC24F9000000010000000511FBE8F908C000FA11FC24FB0000000200000005000000080000000100000003000000050000000500000004128A7CFF00000004067ECE8112EA590000000000067ECE8712EA58FC00000007000000030000000500000005128A40FB0780010800000008128A7CFF00000004067ECE8112EA590000000000067ECE8712EA58FC08C000F80000000811FBE8F9000000080000000100000003000000080000000800000002128A40F9078000FA128A7CFB0000000207800108128A40FF067ECE8112EA590000000000067ECE870000000A000000080000000800000004128A7CFF00000004067ECE8112EA5900000000000000000700000007128A40FB0780010800000008128A7CFF00000004067ECE8112EA590000000000067ECE8712EA58FC064000F812FFACF900000001064000FA000000070000000812FF70F9064000FA000000070000000600000001000000030000000800000008000000020000000100000000"
theorem small_7844536_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7844536_right_root small_7844536_right_fuel small_7844536_right_count small_7844536_right_encoded = true := by
  decide +kernel
theorem small_7844536_right_covered : CoveredBy scale carrier boxes small_7844536_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7844536_right_root small_7844536_right_fuel small_7844536_right_count small_7844536_right_encoded small_7844536_right_checked

theorem cover_7844536 : CoveredBy scale carrier boxes root_7844536 := by
  apply coveredBy_split_literal root_7844536 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7844537 small_7844536_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7844537
  · exact small_7844536_right_covered
#print axioms cover_7844536

def root_7844530 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7844530_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7844530_left_fuel : Nat := 1
def small_7844530_left_count : Nat := 1
def small_7844530_left_encoded : String := "00000004"
theorem small_7844530_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7844530_left_root small_7844530_left_fuel small_7844530_left_count small_7844530_left_encoded = true := by
  decide +kernel
theorem small_7844530_left_covered : CoveredBy scale carrier boxes small_7844530_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7844530_left_root small_7844530_left_fuel small_7844530_left_count small_7844530_left_encoded small_7844530_left_checked

theorem cover_7844530 : CoveredBy scale carrier boxes root_7844530 := by
  apply coveredBy_split_literal root_7844530 small_7844530_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7844536 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7844530_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7844536
#print axioms cover_7844530

def root_7842972 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7842972 : CoveredBy scale carrier boxes root_7842972 := by
  apply coveredBy_split_literal root_7842972 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2949.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7844530 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2949.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7844530
#print axioms cover_7842972

def root_7842966 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842966_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842966_left_fuel : Nat := 1
def small_7842966_left_count : Nat := 1
def small_7842966_left_encoded : String := "00000002"
theorem small_7842966_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7842966_left_root small_7842966_left_fuel small_7842966_left_count small_7842966_left_encoded = true := by
  decide +kernel
theorem small_7842966_left_covered : CoveredBy scale carrier boxes small_7842966_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7842966_left_root small_7842966_left_fuel small_7842966_left_count small_7842966_left_encoded small_7842966_left_checked

theorem cover_7842966 : CoveredBy scale carrier boxes root_7842966 := by
  apply coveredBy_split_literal root_7842966 small_7842966_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7842972 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7842966_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7842972
#print axioms cover_7842966

def root_7842965 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842965_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842965_right_fuel : Nat := 24
def small_7842965_right_count : Nat := 225
def small_7842965_right_encoded : String := "135D44FB05000108135D44FF04548A01138671000000000004548A07138670FC078000F8128A7CF900000001028000FA13D7ECFB00000002028001080000000713D7ECFF00000004022A4581000000050000000800000007128A40F9000000050000000100000003000000080000000800000004135D80FF0000000404548A01138671000000000004548A07138670FC078000F8128A7CF900000001028000FA13D7ECFB0000000207800108128A40FF022A45810000000513E20100022A458700000005000000080000000000000004128A7CFF00000004022A45810000000513E20100022A45870000000513E200FC0000000308C000F811FC24F90000000103C000FA13A54CFB0000000208C0010800000009000000090000000811FBE8F903C000FA13A54CFB0000000208C001080000000611FC24FF000000040000000600000006000000010000000013D7B0FB07800108128A40FF022A4581000000050000000800000004128A7CFF00000004022A45810000000513E20100022A458700000005000000060000000000000002128A40F9028000FA13D7ECFB0000000207800108128A40FF0000000500000004128A7CFF00000004022A45810000000513E20100022A458700000005000000060000000013D7B0FB000000050000000200000001000000031386ACFC00000003078000F8128A7CF900000001028000FA13D7ECFB0000000207800108128A40FF022A4581000000060000000800000004128A7CFF00000004022A45810000000613E20100067ECE8712EA58FC08C000F8000000080000000600000003000000060000000000000008128A40F900000006000000011386AD0004548A07138670FC078000F8128A7CF900000001028000FA13D7ECFB0000000207800108128A40FF0000000800000004128A7CFF00000004067ECE8112EA590000000000022A458713E1C4FC08C000F80000000911FBE8F903C000FA00000009000000080000000100000003000000080000000800000008128A40F9028000FA13D7ECFB0000000207800108128A40FF0000000800000004128A7CFF00000004067ECE8112EA590000000000022A458713E1C4FC064000F812FFACF90000000103C000FA13A54CFB0000000208C0010811FBE8FF000000050000000411FC24FF00000004000000090000000812FF70F90000000500000001000000030000000800000008000000080000000100000003000000080000000000000002"
theorem small_7842965_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7842965_right_root small_7842965_right_fuel small_7842965_right_count small_7842965_right_encoded = true := by
  decide +kernel
theorem small_7842965_right_covered : CoveredBy scale carrier boxes small_7842965_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7842965_right_root small_7842965_right_fuel small_7842965_right_count small_7842965_right_encoded small_7842965_right_checked

theorem cover_7842965 : CoveredBy scale carrier boxes root_7842965 := by
  apply coveredBy_split_literal root_7842965 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7842966 small_7842965_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7842966
  · exact small_7842965_right_covered
#print axioms cover_7842965

def root_7842959 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842959_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842959_left_fuel : Nat := 1
def small_7842959_left_count : Nat := 1
def small_7842959_left_encoded : String := "00000001"
theorem small_7842959_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7842959_left_root small_7842959_left_fuel small_7842959_left_count small_7842959_left_encoded = true := by
  decide +kernel
theorem small_7842959_left_covered : CoveredBy scale carrier boxes small_7842959_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7842959_left_root small_7842959_left_fuel small_7842959_left_count small_7842959_left_encoded small_7842959_left_checked

theorem cover_7842959 : CoveredBy scale carrier boxes root_7842959 := by
  apply coveredBy_split_literal root_7842959 small_7842959_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7842965 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7842959_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7842965
#print axioms cover_7842959

def root_7842958 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842958_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842958_right_fuel : Nat := 19
def small_7842958_right_count : Nat := 265
def small_7842958_right_encoded : String := "135D44F9050000FA135D80FB0000000205000108135D44FF04548A01138671000000000004548A07138670FC028000F813D7ECF900000001078000FA128A7CFB000000020000000A128A40FB00000005000000020000000A000000031386ACFC00000003028000F813D7ECF900000001078000FA128A7CFB00000002028001080000000913D7ECFF00000004022A4581000000060000000A128A40FB000000060000000213D7B0F900000006000000011386AD0004548A070000000A0000000A0000000000000004135D80FF0000000404548A01138671000000000004548A07138670FC028000F813D7ECF900000001078000FA128A7CFB0000000207800108128A40FF022A4581000000050000000A00000004128A7CFF00000004022A45810000000500000007128A40FB07800108128A40FF0000000500000004128A7CFF00000004022A45810000000513E20100022A45870000000500000006000000000000000213D7B0F9078000FA128A7CFB00000002078001080000000A128A7CFF0000000400000007128A40FB000000050000000200000001000000031386ACFC00000003028000F813D7ECF900000001078000FA128A7CFB0000000207800108128A40FF022A45810000000613E20100067ECE870000000A000000060000000000000004128A7CFF00000004022A45810000000600000007128A40FB000000060000000213D7B0F9078000FA128A7CFB0000000207800108000000060000000600000006000000011386AD0004548A07138670FC028000F813D7ECF900000001078000FA128A7CFB00000002078001080000000A00000007128A40FB078001080000000A128A7CFF00000004067ECE8112EA590000000000022A45870000000A00000007000000070000000213D7B0F90000000A00000001000000031386ACFC00000003028000F813D7ECF900000001078000FA128A7CFB00000002078001080000000A00000007128A40FB07800108128A40FF0000000800000004128A7CFF00000004067ECE8100000006000000080000000213D7B0F9078000FA0000000A128A40FB078001080000000600000006000000020000000100000000135D44FB05000108135D44FF04548A01138671000000000004548A0700000005000000061386AD00000000080000000000000004135D80FF0000000404548A01138671000000000004548A0700000005000000061386AD0004548A07138670FC028000F813D7ECF900000001028000FA13D7ECFB0000000207800108128A40FF0000000800000004128A7CFF00000004067ECE8112EA590000000000022A4587000000050000000612EA9500022A45870000000A00000006000000000000000813D7B0F9028000FA13D7ECFB000000020780010800000006000000060000000600000001000000031386ACFC00000003028000F80000000800000006000000000000000200000001"
theorem small_7842958_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7842958_right_root small_7842958_right_fuel small_7842958_right_count small_7842958_right_encoded = true := by
  decide +kernel
theorem small_7842958_right_covered : CoveredBy scale carrier boxes small_7842958_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7842958_right_root small_7842958_right_fuel small_7842958_right_count small_7842958_right_encoded small_7842958_right_checked

theorem cover_7842958 : CoveredBy scale carrier boxes root_7842958 := by
  apply coveredBy_split_literal root_7842958 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7842959 small_7842958_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7842959
  · exact small_7842958_right_covered
#print axioms cover_7842958

def root_7842953 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842953_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842953_right_fuel : Nat := 1
def small_7842953_right_count : Nat := 1
def small_7842953_right_encoded : String := "00000003"
theorem small_7842953_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7842953_right_root small_7842953_right_fuel small_7842953_right_count small_7842953_right_encoded = true := by
  decide +kernel
theorem small_7842953_right_covered : CoveredBy scale carrier boxes small_7842953_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7842953_right_root small_7842953_right_fuel small_7842953_right_count small_7842953_right_encoded small_7842953_right_checked

theorem cover_7842953 : CoveredBy scale carrier boxes root_7842953 := by
  apply coveredBy_split_literal root_7842953 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7842958 small_7842953_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7842958
  · exact small_7842953_right_covered
#print axioms cover_7842953

def root_7842952 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842952_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842952_right_fuel : Nat := 26
def small_7842952_right_count : Nat := 337
def small_7842952_right_encoded : String := "12073CFC00000003050000F8135D80F900000001050000FA135D80FB0000000205000108135D44FF04548A0113867100000000000CFD9C070F34D0FC078000F8128A7CF900000001078000FA128A7CFB00000002028001080000000813D7ECFF00000004022A458113E1C500000000000AD3578710D100FC0000000800000003000000050000000500000008128A40F9078000FA128A7CFB00000002028001080000000813D7ECFF00000004022A458100000006000000080000000600000001000000030F350CFC000000030C9A86FC00000008000000081386AD000CFD9C070F34D0FC0000000800000003000000050000000000000004135D80FF0000000404548A0113867100000000000CFD9C070F34D0FC078000F8128A7CF900000001078000FA128A7CFB0000000207800108128A40FF022A458113E1C500000000000AD3578710D100FC08C000F811FC24F90000000108C000FA11FC24FB00000002000000050000000611FBE8F9000000060000000100000003000000050000000500000004128A7CFF00000004022A458113E1C500000000000AD3578710D100FC08C000F811FC24F90000000108C000FA000000050000000600000006000000030000000500000005128A40FB07800108128A40FF022A4581000000060000000800000004128A7CFF00000004022A45810000000613E201000AD3578710D100FC0000000600000003000000050000000000000002128A40F9078000FA128A7CFB0000000207800108128A40FF022A45810000000613E201000AD3578710D100FC0000000600000003000000050000000000000004128A7CFF00000004022A45810000000613E201000AD3578710D100FC00000006000000030000000500000000128A40FB000000060000000200000001000000030F350CFC000000030C9A86FC0F878D07078000F8128A7CF900000001078000FA128A7CFB000000020000000500000008128A40F90000000600000001000000030F87510700000003078000F8128A7CF900000001078000FA0000000500000006000000061386AD000CFD9C070F34D0FC078000F8128A7CF900000001078000FA0000000500000008128A40F9078000FA128A7CFB000000020780010800000005128A7CFF00000004000000050000000800000001000000030F350CFC000000030C9A86FC000000050F875107000000030000000500000000135D44FB05000108135D44FF0000000800000004135D80FF0000000404548A0113867100000000000CFD9C070F34D0FC078000F8128A7CF900000001000000060000000600000003000000061386AD00000000080000000000000002135D44F9050000FA135D80FB0000000205000108135D44FF04548A0113867100000000000CFD9C070F34D0FC0000000600000003000000061386AD000CFD9C070000000A000000080000000000000004135D80FF0000000404548A0113867100000000000CFD9C070F34D0FC028000F813D7ECF900000001078000FA128A7CFB0000000200000006000000060000000600000003000000061386AD000CFD9C070F34D0FC028000F813D7ECF900000001078000FA128A7CFB0000000207800108128A40FF0000000800000004128A7CFF00000004000000070000000813D7B0F9078000FA128A7CFB000000020000000A0000000600000001000000030F350CFC000000030C9A86FC0F878D07028000F80000000800000006000000030F875107000000030000000600000000135D44FB05000108135D44FF04548A01000000060000000800000004135D80FF0000000404548A01000000061386AD000CFD9C070F34D0FC000000060000000300000006000000000000000200000001"
theorem small_7842952_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7842952_right_root small_7842952_right_fuel small_7842952_right_count small_7842952_right_encoded = true := by
  decide +kernel
theorem small_7842952_right_covered : CoveredBy scale carrier boxes small_7842952_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7842952_right_root small_7842952_right_fuel small_7842952_right_count small_7842952_right_encoded small_7842952_right_checked

theorem cover_7842952 : CoveredBy scale carrier boxes root_7842952 := by
  apply coveredBy_split_literal root_7842952 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7842953 small_7842952_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7842953
  · exact small_7842952_right_covered
#print axioms cover_7842952

def root_7842946 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842946_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842946_left_fuel : Nat := 1
def small_7842946_left_count : Nat := 1
def small_7842946_left_encoded : String := "00000000"
theorem small_7842946_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7842946_left_root small_7842946_left_fuel small_7842946_left_count small_7842946_left_encoded = true := by
  decide +kernel
theorem small_7842946_left_covered : CoveredBy scale carrier boxes small_7842946_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7842946_left_root small_7842946_left_fuel small_7842946_left_count small_7842946_left_encoded small_7842946_left_checked

theorem cover_7842946 : CoveredBy scale carrier boxes root_7842946 := by
  apply coveredBy_split_literal root_7842946 small_7842946_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7842952 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7842946_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7842952
#print axioms cover_7842946

def root_7842945 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842945_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842945_right_fuel : Nat := 20
def small_7842945_right_count : Nat := 113
def small_7842945_right_encoded : String := "12073D0008A91307120700FC050000F8135D80F900000001050000FA135D80FB0000000205000108135D44FF0000000800000004135D80FF000000040CFD9C010F34D1000000000004548A07138670FC078000F8128A7CF900000001078000FA128A7CFB0000000207800108128A40FF0000000800000004128A7CFF000000040000000500000008128A40F9078000FA0000000A0000000800000001000000031386ACFC00000003078000F800000005128A40F900000008000000010F350D00000000050000000000000008135D44F9050000FA135D80FB00000002050001080000000A135D80FF000000040CFD9C010F34D1000000000004548A070000000A1386ACFC000000030000000A0000000A00000008000000010000000312073CFC00000003050000F8135D80F900000001050000FA135D80FB000000020500010800000005135D80FF000000040CFD9C010F34D100000000000CFD9C070F34D0FC0000000500000003000000050000000500000008135D44F9050000FA135D80FB000000020500010800000008135D80FF000000040CFD9C010F34D100000000000CFD9C070F34D0FC00000008000000030000000800000008000000080000000100000000"
theorem small_7842945_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7842945_right_root small_7842945_right_fuel small_7842945_right_count small_7842945_right_encoded = true := by
  decide +kernel
theorem small_7842945_right_covered : CoveredBy scale carrier boxes small_7842945_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7842945_right_root small_7842945_right_fuel small_7842945_right_count small_7842945_right_encoded small_7842945_right_checked

theorem cover_7842945 : CoveredBy scale carrier boxes root_7842945 := by
  apply coveredBy_split_literal root_7842945 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7842946 small_7842945_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7842946
  · exact small_7842945_right_covered
#print axioms cover_7842945

def root_7842940 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842940_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842940_right_fuel : Nat := 1
def small_7842940_right_count : Nat := 1
def small_7842940_right_encoded : String := "00000004"
theorem small_7842940_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7842940_right_root small_7842940_right_fuel small_7842940_right_count small_7842940_right_encoded = true := by
  decide +kernel
theorem small_7842940_right_covered : CoveredBy scale carrier boxes small_7842940_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7842940_right_root small_7842940_right_fuel small_7842940_right_count small_7842940_right_encoded small_7842940_right_checked

theorem cover_7842940 : CoveredBy scale carrier boxes root_7842940 := by
  apply coveredBy_split_literal root_7842940 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7842945 small_7842940_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7842945
  · exact small_7842940_right_covered
#print axioms cover_7842940

def root_7842939 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7842939 : CoveredBy scale carrier boxes root_7842939 := by
  apply coveredBy_split_literal root_7842939 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7842940 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2952.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7842940
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2952.covered
#print axioms cover_7842939

def root_7842934 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842934_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842934_right_fuel : Nat := 1
def small_7842934_right_count : Nat := 1
def small_7842934_right_encoded : String := "00000003"
theorem small_7842934_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7842934_right_root small_7842934_right_fuel small_7842934_right_count small_7842934_right_encoded = true := by
  decide +kernel
theorem small_7842934_right_covered : CoveredBy scale carrier boxes small_7842934_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7842934_right_root small_7842934_right_fuel small_7842934_right_count small_7842934_right_encoded small_7842934_right_checked

theorem cover_7842934 : CoveredBy scale carrier boxes root_7842934 := by
  apply coveredBy_split_literal root_7842934 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7842939 small_7842934_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7842939
  · exact small_7842934_right_covered
#print axioms cover_7842934

def root_7842933 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7842933 : CoveredBy scale carrier boxes root_7842933 := by
  apply coveredBy_split_literal root_7842933 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7842934 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2953.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7842934
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2953.covered
#print axioms cover_7842933

def root_7842928 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842928_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842928_right_fuel : Nat := 1
def small_7842928_right_count : Nat := 1
def small_7842928_right_encoded : String := "00000002"
theorem small_7842928_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7842928_right_root small_7842928_right_fuel small_7842928_right_count small_7842928_right_encoded = true := by
  decide +kernel
theorem small_7842928_right_covered : CoveredBy scale carrier boxes small_7842928_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7842928_right_root small_7842928_right_fuel small_7842928_right_count small_7842928_right_encoded small_7842928_right_checked

theorem cover_7842928 : CoveredBy scale carrier boxes root_7842928 := by
  apply coveredBy_split_literal root_7842928 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7842933 small_7842928_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7842933
  · exact small_7842928_right_covered
#print axioms cover_7842928

def root_7839118 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7839118 : CoveredBy scale carrier boxes root_7839118 := by
  apply coveredBy_split_literal root_7839118 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7839119 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7842928 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7839119
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7842928
#print axioms cover_7839118

def root_7839113 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7839113_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7839113_right_fuel : Nat := 1
def small_7839113_right_count : Nat := 1
def small_7839113_right_encoded : String := "00000001"
theorem small_7839113_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7839113_right_root small_7839113_right_fuel small_7839113_right_count small_7839113_right_encoded = true := by
  decide +kernel
theorem small_7839113_right_covered : CoveredBy scale carrier boxes small_7839113_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7839113_right_root small_7839113_right_fuel small_7839113_right_count small_7839113_right_encoded small_7839113_right_checked

theorem cover_7839113 : CoveredBy scale carrier boxes root_7839113 := by
  apply coveredBy_split_literal root_7839113 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7839118 small_7839113_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7839118
  · exact small_7839113_right_covered
#print axioms cover_7839113

def root_7826927 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7826927 : CoveredBy scale carrier boxes root_7826927 := by
  apply coveredBy_split_literal root_7826927 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7826928 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7839113 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7826928
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7839113
#print axioms cover_7826927

def root_7826922 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7826922_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7826922_right_fuel : Nat := 1
def small_7826922_right_count : Nat := 1
def small_7826922_right_encoded : String := "00000000"
theorem small_7826922_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7826922_right_root small_7826922_right_fuel small_7826922_right_count small_7826922_right_encoded = true := by
  decide +kernel
theorem small_7826922_right_covered : CoveredBy scale carrier boxes small_7826922_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7826922_right_root small_7826922_right_fuel small_7826922_right_count small_7826922_right_encoded small_7826922_right_checked

theorem cover_7826922 : CoveredBy scale carrier boxes root_7826922 := by
  apply coveredBy_split_literal root_7826922 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7826927 small_7826922_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7826927
  · exact small_7826922_right_covered
#print axioms cover_7826922

def root_7826568 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7826568_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7826568_left_fuel : Nat := 19
def small_7826568_left_count : Nat := 165
def small_7826568_left_encoded : String := "1151E901000000000A0000F8115224F9000000010A0000FA115224FB000000020A0000FC115225070A0001081151E8FF08A912F912073CF80000000108A912FB12073CFA0000000208A91307120700FC05000100135D45010000000005000108000000080000000500000005000000030000000500000005120700F808A912FB12073CFA000000020000000500000005000000010000000400000005000000031151E907000000030A0001081151E8FF0000000500000004115224FF0000000408A912F900000005120700F800000005000000011151E8FB0A0000FC115225070A0001081151E8FF08A912F912073CF800000001000000050000000500000004115224FF0000000400000005000000031151E9070000000300000005000000021151E8F90A0000FA115224FB000000020A0000FC115225070A0001081151E8FF08A912FB12073CFA00000002000000050000000500000004115224FF0000000400000005000000031151E90700000003000000051151E8FB0A0000FC115225070A0001081151E8FF0000000800000004115224FF0000000408A91307120700FC08A912FF12073D080500010000000005135D8101050000F800000005135D44F9050000FA0000000500000008000000010000000000000004000000050000000312073CFC0000000308A912FF12073D080500010000000005135D8101050000F800000005135D44F9050000FA000000050000000800000001000000000000000400000005000000031151E907000000030A00010800000005115224FF0000000408A912FF12073D080500010000000005135D8101050000F800000005135D44F90000000800000001000000000000000412070108000000040500010000000005135D810100000009000000000000000200000001"
theorem small_7826568_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7826568_left_root small_7826568_left_fuel small_7826568_left_count small_7826568_left_encoded = true := by
  decide +kernel
theorem small_7826568_left_covered : CoveredBy scale carrier boxes small_7826568_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7826568_left_root small_7826568_left_fuel small_7826568_left_count small_7826568_left_encoded small_7826568_left_checked

theorem cover_7826568 : CoveredBy scale carrier boxes root_7826568 := by
  apply coveredBy_split_literal root_7826568 small_7826568_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7826922 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7826568_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7826922
#print axioms cover_7826568

def root_7826567 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7826567 : CoveredBy scale carrier boxes root_7826567 := by
  apply coveredBy_split_literal root_7826567 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7826568 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2954.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7826568
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2954.covered
#print axioms cover_7826567

def root_7812929 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7812929 : CoveredBy scale carrier boxes root_7812929 := by
  apply coveredBy_split_literal root_7812929 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7812930 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7826567 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7812930
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7826567
#print axioms cover_7812929

def root_7759103 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7759103 : CoveredBy scale carrier boxes root_7759103 := by
  apply coveredBy_split_literal root_7759103 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7759104 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7812929 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7759104
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7812929
#print axioms cover_7759103

def root_7865523 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7865523 : CoveredBy scale carrier boxes root_7865523 := by
  apply coveredBy_split_literal root_7865523 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2957.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2958.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2957.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2958.covered
#print axioms cover_7865523

def root_7865518 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7865518_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7865518_right_fuel : Nat := 1
def small_7865518_right_count : Nat := 1
def small_7865518_right_encoded : String := "00000001"
theorem small_7865518_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7865518_right_root small_7865518_right_fuel small_7865518_right_count small_7865518_right_encoded = true := by
  decide +kernel
theorem small_7865518_right_covered : CoveredBy scale carrier boxes small_7865518_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7865518_right_root small_7865518_right_fuel small_7865518_right_count small_7865518_right_encoded small_7865518_right_checked

theorem cover_7865518 : CoveredBy scale carrier boxes root_7865518 := by
  apply coveredBy_split_literal root_7865518 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7865523 small_7865518_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7865523
  · exact small_7865518_right_covered
#print axioms cover_7865518

def root_7863452 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7863452 : CoveredBy scale carrier boxes root_7863452 := by
  apply coveredBy_split_literal root_7863452 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2956.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7865518 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2956.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7865518
#print axioms cover_7863452

def root_7863447 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7863447_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7863447_right_fuel : Nat := 1
def small_7863447_right_count : Nat := 1
def small_7863447_right_encoded : String := "00000000"
theorem small_7863447_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7863447_right_root small_7863447_right_fuel small_7863447_right_count small_7863447_right_encoded = true := by
  decide +kernel
theorem small_7863447_right_covered : CoveredBy scale carrier boxes small_7863447_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7863447_right_root small_7863447_right_fuel small_7863447_right_count small_7863447_right_encoded small_7863447_right_checked

theorem cover_7863447 : CoveredBy scale carrier boxes root_7863447 := by
  apply coveredBy_split_literal root_7863447 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7863452 small_7863447_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7863452
  · exact small_7863447_right_covered
#print axioms cover_7863447

def root_7862139 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7862139 : CoveredBy scale carrier boxes root_7862139 := by
  apply coveredBy_split_literal root_7862139 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2955.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7863447 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2955.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7863447
#print axioms cover_7862139

def root_7873957 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7873957_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7873957_right_fuel : Nat := 33
def small_7873957_right_count : Nat := 383
def small_7873957_right_encoded : String := "115224FD000000030A0000FE1152250908A91301120701000000000008A912F912073CF80000000108A912FD12073D0608A91309120700FE050000FA135D80FB0000000204548A0113867100000000000000000800000008135D44FB00000008000000020000000412073CFE00000004050000FA135D80FB0000000204548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFD0F350D060CFD9C090F34D0FE0000000800000004000000080000000300000008000000081386AD000CFD9BF90F350CF8000000010CFD9BFD0F350D060CFD9C090F34D0FE00000005000000040000000500000003000000080000000800000000135D44FB04548A01138671000000000000000008000000080000000200000003120701060000000300000008120700F8000000080000000112073D0008A912F912073CF80000000108A912FD12073D0608A91309120700FE050000FA135D80FB000000020CFD9C010F34D100000000000000000800000005135D44FB0CFD9C010F34D100000000000000000800000008000000020000000412073CFE00000004050000FA00000005135D44FB0CFD9C010F34D1000000000000000008000000050000000200000003120701060000000300000008120700F8000000050000000100000000000000041151E9090000000408A91301120701000000000008A912F912073CF80000000108A912FD12073D06050000FA135D80FB00000002050000FE135D810904548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFD0F350D060C9A86F8000000080F8750F90C9A87060F8750FD078000FA00000005128A40FB078000FE00000005128A41090000000400000005000000020000000300000008000000010000000300000008000000081386AD000CFD9BF90F350CF8000000010CFD9BFD0F350D06000000050000000300000005000000050000000000000004135D45090000000404548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFD0F350D060C9A86F80F878CF9000000010C9A870600000005000000080F8750F90C9A87060F8750FD078000FA128A7CFB00000002000000050000000A000000030F878CFD00000003078000FA128A7CFB00000002028000FE0000000513D7B10900000004022A458113E1C500000000000B4D43F800000005108010F90DE7CA0600000005000000080000000100000005128A40FB028000FE0000000813D7B10900000004022A458113E1C5000000000000000008000000080000000200000001000000030F34D10600000003000000080F34D0F800000005000000011386AD000CFD9BF90F350CF8000000010CFD9BFD0F350D060C9A86F8000000050F8750F90C9A8706000000050F878CFD000000030000000500000001000000030F34D10600000003000000080F34D0F8000000050000000100000000135D44FB050000FE135D810904548A011386710000000000000000080000000800000004135D45090000000404548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFD0F350D060C9A86F80000000A0F8750F90000000A00000001000000030F34D10600000003000000080F34D0F800000008000000011386AD000CFD9BF90F350CF8000000010CFD9BFD0F350D060C9A86F8000000080F8750F90C9A8706000000090000000800000001000000030F34D10600000003000000080F34D0F80000000800000001000000000000000200000003120701060000000300000008120700F8000000080000000112073D0008A912F912073CF80000000108A912FD12073D06050000FA135D80FB00000002050000FE00000005135D45090000000400000005135D44FB050000FE135D81090CFD9C010F34D10000000000000000080000000500000004135D4509000000040CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFD0F350D060C9A86F8000000050F8750F90C9A8706000000050F878CFD000000030000000800000001000000030F34D10600000003000000080F34D0F800000005000000010F350D0000000005000000000000000200000003120701060000000300000008120700F8000000050000000100000000"
theorem small_7873957_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7873957_right_root small_7873957_right_fuel small_7873957_right_count small_7873957_right_encoded = true := by
  decide +kernel
theorem small_7873957_right_covered : CoveredBy scale carrier boxes small_7873957_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7873957_right_root small_7873957_right_fuel small_7873957_right_count small_7873957_right_encoded small_7873957_right_checked

theorem cover_7873957 : CoveredBy scale carrier boxes root_7873957 := by
  apply coveredBy_split_literal root_7873957 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2960.root small_7873957_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2960.covered
  · exact small_7873957_right_covered
#print axioms cover_7873957

def root_7873952 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7873952_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7873952_right_fuel : Nat := 1
def small_7873952_right_count : Nat := 1
def small_7873952_right_encoded : String := "00000002"
theorem small_7873952_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7873952_right_root small_7873952_right_fuel small_7873952_right_count small_7873952_right_encoded = true := by
  decide +kernel
theorem small_7873952_right_covered : CoveredBy scale carrier boxes small_7873952_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7873952_right_root small_7873952_right_fuel small_7873952_right_count small_7873952_right_encoded small_7873952_right_checked

theorem cover_7873952 : CoveredBy scale carrier boxes root_7873952 := by
  apply coveredBy_split_literal root_7873952 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7873957 small_7873952_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7873957
  · exact small_7873952_right_covered
#print axioms cover_7873952

def root_7871276 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7871276 : CoveredBy scale carrier boxes root_7871276 := by
  apply coveredBy_split_literal root_7871276 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2959.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7873952 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2959.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7873952
#print axioms cover_7871276

def root_7871270 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7871270_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7871270_left_fuel : Nat := 1
def small_7871270_left_count : Nat := 1
def small_7871270_left_encoded : String := "00000001"
theorem small_7871270_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7871270_left_root small_7871270_left_fuel small_7871270_left_count small_7871270_left_encoded = true := by
  decide +kernel
theorem small_7871270_left_covered : CoveredBy scale carrier boxes small_7871270_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7871270_left_root small_7871270_left_fuel small_7871270_left_count small_7871270_left_encoded small_7871270_left_checked

theorem cover_7871270 : CoveredBy scale carrier boxes root_7871270 := by
  apply coveredBy_split_literal root_7871270 small_7871270_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7871276 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7871270_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7871276
#print axioms cover_7871270

def root_7879668 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7879668 : CoveredBy scale carrier boxes root_7879668 := by
  apply coveredBy_split_literal root_7879668 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2962.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2963.root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2962.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2963.covered
#print axioms cover_7879668

def root_7879662 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7879662_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7879662_left_fuel : Nat := 1
def small_7879662_left_count : Nat := 1
def small_7879662_left_encoded : String := "00000002"
theorem small_7879662_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7879662_left_root small_7879662_left_fuel small_7879662_left_count small_7879662_left_encoded = true := by
  decide +kernel
theorem small_7879662_left_covered : CoveredBy scale carrier boxes small_7879662_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7879662_left_root small_7879662_left_fuel small_7879662_left_count small_7879662_left_encoded small_7879662_left_checked

theorem cover_7879662 : CoveredBy scale carrier boxes root_7879662 := by
  apply coveredBy_split_literal root_7879662 small_7879662_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7879668 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_7879662_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7879668
#print axioms cover_7879662

def root_7879661 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7879661_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7879661_right_fuel : Nat := 8
def small_7879661_right_count : Nat := 19
def small_7879661_right_encoded : String := "0F34D0FA04548A09138670FE078000F8128A7CF90000000107800106128A40FD00000006000000030000000A128A40F907800106000000080000000900000001000000040000000500000002"
theorem small_7879661_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7879661_right_root small_7879661_right_fuel small_7879661_right_count small_7879661_right_encoded = true := by
  decide +kernel
theorem small_7879661_right_covered : CoveredBy scale carrier boxes small_7879661_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7879661_right_root small_7879661_right_fuel small_7879661_right_count small_7879661_right_encoded small_7879661_right_checked

theorem cover_7879661 : CoveredBy scale carrier boxes root_7879661 := by
  apply coveredBy_split_literal root_7879661 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7879662 small_7879661_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7879662
  · exact small_7879661_right_covered
#print axioms cover_7879661

def root_7879655 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7879655_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7879655_left_fuel : Nat := 1
def small_7879655_left_count : Nat := 1
def small_7879655_left_encoded : String := "00000000"
theorem small_7879655_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7879655_left_root small_7879655_left_fuel small_7879655_left_count small_7879655_left_encoded = true := by
  decide +kernel
theorem small_7879655_left_covered : CoveredBy scale carrier boxes small_7879655_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7879655_left_root small_7879655_left_fuel small_7879655_left_count small_7879655_left_encoded small_7879655_left_checked

theorem cover_7879655 : CoveredBy scale carrier boxes root_7879655 := by
  apply coveredBy_split_literal root_7879655 small_7879655_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7879661 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7879655_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7879661
#print axioms cover_7879655

def root_7879654 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7879654_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7879654_right_fuel : Nat := 23
def small_7879654_right_count : Nat := 191
def small_7879654_right_encoded : String := "1386AD000CFD9BFB0F350CFA0000000204548A09138670FE0C9A86FA0F878CFB00000002078000F8128A7CF90000000107800106128A40FD067ECE8112EA590000000000022A458900000006000000050000000500000003128A7CFD00000003067ECE810000000A00000005128A40F907800106128A40FD067ECE8112EA590000000000022A45890000000A000000050000000500000003128A7CFD00000003067ECE810000000A00000005000000010F8750FB078000F8128A7CF90000000107800106128A40FD067ECE8112EA590000000000022A458913E1C4FE0B4D43FA00000006108010FB08C000F8000000060000000A000000020000000413E200FE000000040B4D43FA10804CFB0000000200000005108010FB08C000F811FC24F9000000010000000511FBE8F9064001060000000712FFACFD000000030569AC410000000A00000005000000010000000212EA9500022A458913E1C4FE0000000600000004000000050000000000000003128A7CFD00000003067ECE8112EA590000000000022A45890000000A13E200FE000000040B4D43FA0000000A108010FB08C000F8000000080000000A0000000212EA9500022A45890000000A0000000500000000128A40F907800106128A40FD067ECE8112EA590000000000022A458913E1C4FE0B4D43FA0000000A108010FB064000F80000000A000000070000000200000004000000070000000700000003128A7CFD00000003067ECE8112EA590000000000022A45890000000A13E200FE000000040B4D43FA0000000A108010FB064000F80000000A0000000A0000000212EA9500022A45890000000A00000005000000000000000100000002000000041386ACFE000000040C9A86FA0F878CFB00000002000000050F8750FB078000F8128A7CF90000000100000005128A40F90780010600000007128A7CFD00000003067ECE8112EA590000000000067ECE8912EA58FE0B4D43FA00000005108010FB000000070000000200000004000000050000000500000001000000020F34D0FA000000050000000200000000"
theorem small_7879654_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7879654_right_root small_7879654_right_fuel small_7879654_right_count small_7879654_right_encoded = true := by
  decide +kernel
theorem small_7879654_right_covered : CoveredBy scale carrier boxes small_7879654_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7879654_right_root small_7879654_right_fuel small_7879654_right_count small_7879654_right_encoded small_7879654_right_checked

theorem cover_7879654 : CoveredBy scale carrier boxes root_7879654 := by
  apply coveredBy_split_literal root_7879654 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7879655 small_7879654_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7879655
  · exact small_7879654_right_covered
#print axioms cover_7879654

def root_7879648 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7879648_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7879648_left_fuel : Nat := 1
def small_7879648_left_count : Nat := 1
def small_7879648_left_encoded : String := "00000003"
theorem small_7879648_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7879648_left_root small_7879648_left_fuel small_7879648_left_count small_7879648_left_encoded = true := by
  decide +kernel
theorem small_7879648_left_covered : CoveredBy scale carrier boxes small_7879648_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7879648_left_root small_7879648_left_fuel small_7879648_left_count small_7879648_left_encoded small_7879648_left_checked

theorem cover_7879648 : CoveredBy scale carrier boxes root_7879648 := by
  apply coveredBy_split_literal root_7879648 small_7879648_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7879654 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7879648_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7879654
#print axioms cover_7879648

def root_7877822 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7877822 : CoveredBy scale carrier boxes root_7877822 := by
  apply coveredBy_split_literal root_7877822 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2961.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7879648 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2961.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7879648
#print axioms cover_7877822

def root_7877816 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877816_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877816_left_fuel : Nat := 1
def small_7877816_left_count : Nat := 1
def small_7877816_left_encoded : String := "00000001"
theorem small_7877816_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877816_left_root small_7877816_left_fuel small_7877816_left_count small_7877816_left_encoded = true := by
  decide +kernel
theorem small_7877816_left_covered : CoveredBy scale carrier boxes small_7877816_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877816_left_root small_7877816_left_fuel small_7877816_left_count small_7877816_left_encoded small_7877816_left_checked

theorem cover_7877816 : CoveredBy scale carrier boxes root_7877816 := by
  apply coveredBy_split_literal root_7877816 small_7877816_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7877822 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7877816_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7877822
#print axioms cover_7877816

def root_7877815 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877815_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877815_right_fuel : Nat := 22
def small_7877815_right_count : Nat := 261
def small_7877815_right_encoded : String := "135D44F905000106135D44FD04548A0113867100000000000CFD9BFB0F350CFA0000000204548A09000000081386ACFE000000040C9A86FA000000070F8750FB0000000700000002000000081386AD000CFD9BFB0F350CFA0000000204548A09138670FE0000000700000004000000070F34D0FA00000008000000020000000000000003135D80FD0000000304548A0113867100000000000CFD9BFB0F350CFA0000000204548A09138670FE0C9A86FA0F878CFB00000002028000F813D7ECF9000000010780010600000008128A7CFD000000030000000A000000080F8750FB028000F813D7ECF90000000107800106128A40FD022A45810000000813E20100022A458913E1C4FE0B4D43FA00000008108010FB0000000A0000000200000004000000070000000000000003128A7CFD00000003022A458113E1C50000000000022A45890000000A0000000913E20100022A45890000000A13E200FE000000040B4D43FA0000000A108010FB0000000A000000020000000013D7B0F90780010600000008128A7CFD00000003022A4581000000080000000A0000000100000002000000041386ACFE000000040C9A86FA0F878CFB00000002028000F813D7ECF90000000107800106128A40FD0000000800000003128A7CFD00000003022A45810000000913E20100067ECE890000000A000000050000000013D7B0F90780010600000007128A7CFD0000000300000009000000010F8750FB028000F813D7ECF90000000107800106128A40FD022A458113E1C50000000000067ECE8900000008000000070000000700000003128A7CFD00000003022A458113E1C50000000000067ECE8912EA58FE00000009000000040000000913E20100067ECE8912EA58FE0B4D43FA00000007108010FB000000070000000200000004000000070000000013D7B0F90780010600000007128A7CFD00000003022A458113E1C50000000000067ECE8900000008000000060000000700000001000000020F34D0FA04548A09000000081386ACFE00000004028000F813D7ECF90000000107800106000000080000000900000008000000021386AD000CFD9BFB0F350CFA0000000204548A09138670FE0C9A86FA0F878CFB00000002028000F813D7ECF90000000107800106128A40FD0000000700000003128A7CFD00000003067ECE810000000A0000000A000000070F8750FB028000F813D7ECF90000000107800106128A40FD0000000700000003128A7CFD00000003067ECE8112EA590000000000022A45890000000A00000007000000070000000700000002000000041386ACFE000000040C9A86FA000000070F8750FB00000007000000020F34D0FA04548A09138670FE028000F813D7ECF9000000010780010600000005128A7CFD0000000300000005000000080000000400000005000000020000000000000001"
theorem small_7877815_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877815_right_root small_7877815_right_fuel small_7877815_right_count small_7877815_right_encoded = true := by
  decide +kernel
theorem small_7877815_right_covered : CoveredBy scale carrier boxes small_7877815_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877815_right_root small_7877815_right_fuel small_7877815_right_count small_7877815_right_encoded small_7877815_right_checked

theorem cover_7877815 : CoveredBy scale carrier boxes root_7877815 := by
  apply coveredBy_split_literal root_7877815 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7877816 small_7877815_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7877816
  · exact small_7877815_right_covered
#print axioms cover_7877815

def root_7877810 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877810_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877810_right_fuel : Nat := 1
def small_7877810_right_count : Nat := 1
def small_7877810_right_encoded : String := "00000004"
theorem small_7877810_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877810_right_root small_7877810_right_fuel small_7877810_right_count small_7877810_right_encoded = true := by
  decide +kernel
theorem small_7877810_right_covered : CoveredBy scale carrier boxes small_7877810_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877810_right_root small_7877810_right_fuel small_7877810_right_count small_7877810_right_encoded small_7877810_right_checked

theorem cover_7877810 : CoveredBy scale carrier boxes root_7877810 := by
  apply coveredBy_split_literal root_7877810 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7877815 small_7877810_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7877815
  · exact small_7877810_right_covered
#print axioms cover_7877810

def root_7877809 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877809_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877809_right_fuel : Nat := 24
def small_7877809_right_count : Nat := 173
def small_7877809_right_encoded : String := "12073CFE00000004050000F8135D80F90000000105000106135D44FD04548A0113867100000000000CFD9BFB0F350CFA000000020CFD9C090F34D0FE0C9A86FA0F878CFB00000002000000050F8750FB078000F8128A7CF9000000010000000500000007000000020000000400000005000000050000000500000003135D80FD0000000304548A0113867100000000000CFD9BFB0F350CFA000000020CFD9C090F34D0FE0C9A86FA0F878CFB00000002000000050F8750FB078000F8128A7CF9000000010780010600000005128A7CFD0000000300000005128A40F907800106128A40FD0000000700000003128A7CFD00000003022A458113E1C500000000000AD3578910D100FE0B4D43FA10804CFB0000000200000005108010FB00000006000000020000000400000005000000050000000100000002000000040F350CFE000000040C9A86FA000000050F8750FB0C9A86FE000000050F8751090000000400000005000000020F34D0FA00000005000000021386AD000CFD9BFB0F350CFA000000020CFD9C090F34D0FE0000000500000004000000050000000500000000135D44F905000106135D44FD04548A0113867100000000000CFD9BFB000000070F34D0FA00000005000000020000000700000003135D80FD0000000304548A0113867100000000000CFD9BFB0F350CFA000000020CFD9C090F34D0FE0C9A86FA0F878CFB00000002028000F813D7ECF9000000010780010600000007128A7CFD00000003022A45810000000900000005000000070F8750FB0000000700000002000000040F350CFE000000040C9A86FA000000070F8750FB00000007000000020F34D0FA0CFD9C090F34D0FE000000050000000400000005000000021386AD000CFD9BFB0F350CFA000000020CFD9C090F34D0FE0000000700000004000000070F34D0FA00000005000000020000000000000001"
theorem small_7877809_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877809_right_root small_7877809_right_fuel small_7877809_right_count small_7877809_right_encoded = true := by
  decide +kernel
theorem small_7877809_right_covered : CoveredBy scale carrier boxes small_7877809_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877809_right_root small_7877809_right_fuel small_7877809_right_count small_7877809_right_encoded small_7877809_right_checked

theorem cover_7877809 : CoveredBy scale carrier boxes root_7877809 := by
  apply coveredBy_split_literal root_7877809 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7877810 small_7877809_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7877810
  · exact small_7877809_right_covered
#print axioms cover_7877809

def root_7877803 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877803_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877803_left_fuel : Nat := 1
def small_7877803_left_count : Nat := 1
def small_7877803_left_encoded : String := "00000002"
theorem small_7877803_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877803_left_root small_7877803_left_fuel small_7877803_left_count small_7877803_left_encoded = true := by
  decide +kernel
theorem small_7877803_left_covered : CoveredBy scale carrier boxes small_7877803_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877803_left_root small_7877803_left_fuel small_7877803_left_count small_7877803_left_encoded small_7877803_left_checked

theorem cover_7877803 : CoveredBy scale carrier boxes root_7877803 := by
  apply coveredBy_split_literal root_7877803 small_7877803_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7877809 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7877803_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7877809
#print axioms cover_7877803

def root_7877802 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877802_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877802_right_fuel : Nat := 9
def small_7877802_right_count : Nat := 21
def small_7877802_right_encoded : String := "120700FA08A91309120700FE050000F8135D80F90000000105000106135D44FD04548A0100000008000000050000000300000005135D44F905000106000000080000000800000001000000040000000500000002"
theorem small_7877802_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877802_right_root small_7877802_right_fuel small_7877802_right_count small_7877802_right_encoded = true := by
  decide +kernel
theorem small_7877802_right_covered : CoveredBy scale carrier boxes small_7877802_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877802_right_root small_7877802_right_fuel small_7877802_right_count small_7877802_right_encoded small_7877802_right_checked

theorem cover_7877802 : CoveredBy scale carrier boxes root_7877802 := by
  apply coveredBy_split_literal root_7877802 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7877803 small_7877802_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7877803
  · exact small_7877802_right_covered
#print axioms cover_7877802

def root_7877796 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877796_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877796_left_fuel : Nat := 1
def small_7877796_left_count : Nat := 1
def small_7877796_left_encoded : String := "00000000"
theorem small_7877796_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877796_left_root small_7877796_left_fuel small_7877796_left_count small_7877796_left_encoded = true := by
  decide +kernel
theorem small_7877796_left_covered : CoveredBy scale carrier boxes small_7877796_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877796_left_root small_7877796_left_fuel small_7877796_left_count small_7877796_left_encoded small_7877796_left_checked

theorem cover_7877796 : CoveredBy scale carrier boxes root_7877796 := by
  apply coveredBy_split_literal root_7877796 small_7877796_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7877802 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7877796_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7877802
#print axioms cover_7877796

def root_7877795 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877795_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877795_right_fuel : Nat := 19
def small_7877795_right_count : Nat := 73
def small_7877795_right_encoded : String := "12073D0008A912FB12073CFA0000000208A91309120700FE050000F8135D80F90000000105000106135D44FD0CFD9C010F34D100000000000CFD9BFB0F350CFA0000000204548A09138670FE0C9A86FA00000007000000050000000400000005000000050000000500000003135D80FD000000030CFD9C010F34D100000000000CFD9BFB0F350CFA0000000204548A09138670FE0C9A86FA000000050F8750FB078000F800000005000000070000000200000004000000050000000500000005135D44F905000106135D44FD0000000700000003135D80FD000000030CFD9C010F34D100000000000CFD9BFB0F350CFA0000000204548A09138670FE00000007000000040000000500000005000000050000000100000004000000050000000500000000"
theorem small_7877795_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877795_right_root small_7877795_right_fuel small_7877795_right_count small_7877795_right_encoded = true := by
  decide +kernel
theorem small_7877795_right_covered : CoveredBy scale carrier boxes small_7877795_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877795_right_root small_7877795_right_fuel small_7877795_right_count small_7877795_right_encoded small_7877795_right_checked

theorem cover_7877795 : CoveredBy scale carrier boxes root_7877795 := by
  apply coveredBy_split_literal root_7877795 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7877796 small_7877795_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7877796
  · exact small_7877795_right_covered
#print axioms cover_7877795

def root_7877790 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877790_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877790_right_fuel : Nat := 1
def small_7877790_right_count : Nat := 1
def small_7877790_right_encoded : String := "00000004"
theorem small_7877790_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877790_right_root small_7877790_right_fuel small_7877790_right_count small_7877790_right_encoded = true := by
  decide +kernel
theorem small_7877790_right_covered : CoveredBy scale carrier boxes small_7877790_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877790_right_root small_7877790_right_fuel small_7877790_right_count small_7877790_right_encoded small_7877790_right_checked

theorem cover_7877790 : CoveredBy scale carrier boxes root_7877790 := by
  apply coveredBy_split_literal root_7877790 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7877795 small_7877790_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7877795
  · exact small_7877790_right_covered
#print axioms cover_7877790

def root_7877789 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877789_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877789_right_fuel : Nat := 19
def small_7877789_right_count : Nat := 85
def small_7877789_right_encoded : String := "1151E9090000000408A91301120701000000000008A912FB12073CFA00000002050000F8135D80F90000000105000106135D44FD050000FE00000005135D4509000000040000000500000003135D80FD00000003050000FE135D810904548A0113867100000000000CFD9BFB0F350CFA000000020C9A86FA000000050F8750FB078000F8000000050000000700000002000000050000000500000004135D45090000000404548A0113867100000000000CFD9BFB0F350CFA000000020C9A86FA000000050F8750FB00000007000000020000000500000005135D44F90500010600000007135D80FD00000003050000FE135D810904548A0113867100000000000CFD9BFB00000007000000070000000700000004135D4509000000040000000700000001120700FA000000050000000212073D0008A912FB12073CFA00000002050000F800000005000000070000000500000000"
theorem small_7877789_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877789_right_root small_7877789_right_fuel small_7877789_right_count small_7877789_right_encoded = true := by
  decide +kernel
theorem small_7877789_right_covered : CoveredBy scale carrier boxes small_7877789_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877789_right_root small_7877789_right_fuel small_7877789_right_count small_7877789_right_encoded small_7877789_right_checked

theorem cover_7877789 : CoveredBy scale carrier boxes root_7877789 := by
  apply coveredBy_split_literal root_7877789 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7877790 small_7877789_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7877790
  · exact small_7877789_right_covered
#print axioms cover_7877789

def root_7877784 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877784_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877784_right_fuel : Nat := 1
def small_7877784_right_count : Nat := 1
def small_7877784_right_encoded : String := "00000003"
theorem small_7877784_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877784_right_root small_7877784_right_fuel small_7877784_right_count small_7877784_right_encoded = true := by
  decide +kernel
theorem small_7877784_right_covered : CoveredBy scale carrier boxes small_7877784_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877784_right_root small_7877784_right_fuel small_7877784_right_count small_7877784_right_encoded small_7877784_right_checked

theorem cover_7877784 : CoveredBy scale carrier boxes root_7877784 := by
  apply coveredBy_split_literal root_7877784 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7877789 small_7877784_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7877789
  · exact small_7877784_right_covered
#print axioms cover_7877784

def root_7877783 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7877783 : CoveredBy scale carrier boxes root_7877783 := by
  apply coveredBy_split_literal root_7877783 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7877784 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2964.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7877784
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2964.covered
#print axioms cover_7877783

def root_7877777 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877777_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877777_left_fuel : Nat := 1
def small_7877777_left_count : Nat := 1
def small_7877777_left_encoded : String := "00000002"
theorem small_7877777_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877777_left_root small_7877777_left_fuel small_7877777_left_count small_7877777_left_encoded = true := by
  decide +kernel
theorem small_7877777_left_covered : CoveredBy scale carrier boxes small_7877777_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877777_left_root small_7877777_left_fuel small_7877777_left_count small_7877777_left_encoded small_7877777_left_checked

theorem cover_7877777 : CoveredBy scale carrier boxes root_7877777 := by
  apply coveredBy_split_literal root_7877777 small_7877777_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7877783 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7877777_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7877783
#print axioms cover_7877777

def root_7888959 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7888959_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7888959_right_fuel : Nat := 24
def small_7888959_right_count : Nat := 423
def small_7888959_right_encoded : String := "128A40F9078000FA128A7CFB0000000207800106128A40FD022A458113E1C50000000000022A45890000000513E200FE00000004064000F812FFACF90000000108C000FA11FC24FB000000020640010612FF70FD011523410000000513F89500033F67C90000000513BC30FE0000000406E000F812C820F900000001096000FA000000070000000500000005000000000000000312FFACFD00000003011523410000000513F89500033F67C90000000513BC30FE0000000406E000F812C820F900000001096000FA0000000A11AA80FB000000050000000212C7E4F900000005000000010000000011FBE8FB000000050000000212FF70F9000000050000000113E20100022A458913E1C4FE064000F812FFACF90000000108C000FA11FC24FB000000020640010612FF70FD033F67C10000000513BC31000000000A00000000000000030000000A11FBE8FB000000050000000212FF70F900000005000000010000000413E200FE00000004064000F812FFACF90000000108C000FA11FC24FB000000020640010612FF70FD033F67C113BBF50000000000033F67C913BBF4FE000000070000000400000007000000070000000312FFACFD00000003033F67C113BBF50000000000033F67C90000000A13BC30FE0000000406E000F812C820F900000001096000FA0000000711AA80FB00000007000000020000000713BC3100033F67C90000000A000000070000000011FBE8FB0640010612FF70FD033F67C113BBF50000000000033F67C90000000500000007000000070000000312FFACFD00000003033F67C113BBF50000000000033F67C90000000513BC30FE0000000406E000F812C820F900000001082000FA0000000712465CFB00000006000000020000000713BC3100033F67C913BBF4FE06E000F812C820F900000001082000FA0000000700000009000000070000000400000007000000000000000212FF70F908C000FA0000000711FBE8FB064001060000000712FFACFD000000030000000700000002000000010000000000000003128A7CFD00000003022A458113E1C50000000000022A45890000000513E200FE00000004064000F812FFACF90000000108C000FA11FC24FB0000000208C0010611FBE8FD01152341000000050000000A000000030000000A11FBE8FB08C0010611FBE8FD000000050000000311FC24FD0000000301152341000000050000000A0000000212FF70F908C000FA11FC24FB0000000208C0010611FBE8FD00000005000000030000000A11FBE8FB00000005000000020000000113E20100022A458913E1C4FE064000F812FFACF90000000108C000FA0000000A11FBE8FB08C001060000000A0000000A0000000212FF70F908C000FA0000000A11FBE8FB0000000500000002000000010000000413E200FE00000004064000F812FFACF90000000108C000FA11FC24FB0000000208C0010611FBE8FD033F67C10000000A0000000A000000030000000A11FBE8FB08C0010611FBE8FD033F67C113BBF50000000000033F67C90000000513BC30FE0000000406E000F80000000812C7E4F9000000060000000113BC3100033F67C913BBF4FE06E000F8000000080000000A0000000400000008000000000000000311FC24FD00000003000000080000000212FF70F908C000FA11FC24FB0000000208C0010611FBE8FD033F67C10000000A0000000A000000030000000A11FBE8FB08C0010611FBE8FD033F67C113BBF50000000000033F67C9000000050000000613BC3100033F67C90000000A00000006000000000000000311FC24FD00000003033F67C10000000A0000000A000000020000000100000000128A40FB07800106128A40FD022A45810000000513E20100022A45890000000513E200FE00000004064000F812FFACF900000001064000FA12FFACFB000000020640010612FF70FD033F67C100000005000000070000000312FFACFD00000003033F67C10000000513BC3100033F67C900000005000000070000000012FF70FB064001060000000612FFACFD00000003000000060000000212FF70F9064000FA12FFACFB00000002064001060000000612FFACFD000000030000000600000006000000010000000000000003128A7CFD00000003022A45810000000513E20100022A45890000000513E200FE00000004064000F812FFACF900000001064000FA12FFACFB0000000208C0010611FBE8FD033F67C10000000500000008000000030000000812FF70FB000000080000000212FF70F9064000FA12FFACFB0000000208C001060000000611FC24FD00000003000000060000000600000001000000000000000200000001"
theorem small_7888959_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7888959_right_root small_7888959_right_fuel small_7888959_right_count small_7888959_right_encoded = true := by
  decide +kernel
theorem small_7888959_right_covered : CoveredBy scale carrier boxes small_7888959_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7888959_right_root small_7888959_right_fuel small_7888959_right_count small_7888959_right_encoded small_7888959_right_checked

theorem cover_7888959 : CoveredBy scale carrier boxes root_7888959 := by
  apply coveredBy_split_literal root_7888959 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2966.root small_7888959_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2966.covered
  · exact small_7888959_right_covered
#print axioms cover_7888959

def root_7888954 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7888954_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7888954_right_fuel : Nat := 1
def small_7888954_right_count : Nat := 1
def small_7888954_right_encoded : String := "00000004"
theorem small_7888954_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7888954_right_root small_7888954_right_fuel small_7888954_right_count small_7888954_right_encoded = true := by
  decide +kernel
theorem small_7888954_right_covered : CoveredBy scale carrier boxes small_7888954_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7888954_right_root small_7888954_right_fuel small_7888954_right_count small_7888954_right_encoded small_7888954_right_checked

theorem cover_7888954 : CoveredBy scale carrier boxes root_7888954 := by
  apply coveredBy_split_literal root_7888954 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7888959 small_7888954_right_root coord4 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7888959
  · exact small_7888954_right_covered
#print axioms cover_7888954

def root_7892133 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7892133_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7892133_right_fuel : Nat := 25
def small_7892133_right_count : Nat := 273
def small_7892133_right_encoded : String := "128A40F9078000FA128A7CFB0000000207800106128A40FD022A458113E1C50000000000067ECE8912EA58FE064000F812FFACF90000000108C000FA11FC24FB000000020640010612FF70FD0115234113F85900000000000569AC490000000500000006000000070000000312FFACFD000000030115234113F85900000000000569AC491340D4FE00000006000000040000000613F895000569AC491340D4FE06E000F812C820F900000001096000FA00000007000000060000000600000004000000060000000011FBE8FB0640010600000006000000060000000212FF70F908C000FA11FC24FB0000000206400106000000060000000600000006000000010000000412EA94FE00000004064000F812FFACF900000001000000060000000613E20100067ECE8912EA58FE064000F812FFACF90000000108C000FA0000000711FBE8FB00000007000000020000000700000004000000070000000000000003128A7CFD00000003022A458113E1C50000000000067ECE8912EA58FE064000F812FFACF90000000108C000FA11FC24FB0000000208C0010611FBE8FD011523410000000613F895000569AC491340D4FE06E000F812C820F900000001096000FA0000000A00000006000000060000000400000006000000000000000311FC24FD00000003011523410000000613F895000569AC4900000009000000060000000011FBE8FB000000060000000212FF70F908C000FA11FC24FB0000000208C00106000000060000000600000006000000010000000412EA94FE000000040000000613E20100067ECE8912EA58FE064000F812FFACF90000000108C000FA11FC24FB0000000208C0010611FBE8FD033F67C113BBF500000000000569AC491340D4FE06E000F812C820F900000001096000FA0000000A11AA80FB08200106000000060000000600000002000000070000000400000007000000070000000311FC24FD00000003033F67C113BBF500000000000569AC490000000A000000080000000811FBE8FB08C0010611FBE8FD033F67C1000000060000000700000003000000080000000212FF70F908C000FA11FC24FB0000000208C001060000000711FC24FD00000003033F67C1000000060000000711FBE8FB08C00106000000060000000600000002000000010000000412EA94FE00000004064000F812FFACF90000000108C000FA11FC24FB0000000208C001060000000711FC24FD00000003033F67C1000000060000000511FBE8FB00000006000000020000000700000000128A40FB07800106128A40FD022A45810000000613E20100067ECE8912EA58FE064000F812FFACF900000001064000FA00000007000000060000000600000004000000060000000000000003128A7CFD00000003022A45810000000613E20100067ECE8912EA58FE064000F812FFACF900000001064000FA12FFACFB0000000208C00106000000060000000600000006000000060000000400000006000000000000000200000001"
theorem small_7892133_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7892133_right_root small_7892133_right_fuel small_7892133_right_count small_7892133_right_encoded = true := by
  decide +kernel
theorem small_7892133_right_covered : CoveredBy scale carrier boxes small_7892133_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7892133_right_root small_7892133_right_fuel small_7892133_right_count small_7892133_right_encoded small_7892133_right_checked

theorem cover_7892133 : CoveredBy scale carrier boxes root_7892133 := by
  apply coveredBy_split_literal root_7892133 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2967.root small_7892133_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2967.covered
  · exact small_7892133_right_covered
#print axioms cover_7892133

def root_7892127 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7892127_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7892127_left_fuel : Nat := 1
def small_7892127_left_count : Nat := 1
def small_7892127_left_encoded : String := "00000004"
theorem small_7892127_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7892127_left_root small_7892127_left_fuel small_7892127_left_count small_7892127_left_encoded = true := by
  decide +kernel
theorem small_7892127_left_covered : CoveredBy scale carrier boxes small_7892127_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7892127_left_root small_7892127_left_fuel small_7892127_left_count small_7892127_left_encoded small_7892127_left_checked

theorem cover_7892127 : CoveredBy scale carrier boxes root_7892127 := by
  apply coveredBy_split_literal root_7892127 small_7892127_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7892133 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_7892127_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7892133
#print axioms cover_7892127

def root_7888953 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7888953 : CoveredBy scale carrier boxes root_7888953 := by
  apply coveredBy_split_literal root_7888953 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7888954 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7892127 coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7888954
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7892127
#print axioms cover_7888953

def root_7888947 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7888947_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7888947_left_fuel : Nat := 1
def small_7888947_left_count : Nat := 1
def small_7888947_left_encoded : String := "00000000"
theorem small_7888947_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7888947_left_root small_7888947_left_fuel small_7888947_left_count small_7888947_left_encoded = true := by
  decide +kernel
theorem small_7888947_left_covered : CoveredBy scale carrier boxes small_7888947_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7888947_left_root small_7888947_left_fuel small_7888947_left_count small_7888947_left_encoded small_7888947_left_checked

theorem cover_7888947 : CoveredBy scale carrier boxes root_7888947 := by
  apply coveredBy_split_literal root_7888947 small_7888947_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7888953 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7888947_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7888953
#print axioms cover_7888947

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189
