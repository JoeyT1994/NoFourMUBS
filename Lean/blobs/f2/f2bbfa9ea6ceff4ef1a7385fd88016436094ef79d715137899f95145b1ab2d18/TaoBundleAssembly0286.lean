import TaoBundleAssembly0284
import TaoBundleAssembly0285
import TaoBundleChunkBatch0372
import TaoBundleChunkBatch0373
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286
def root_3956288 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3956288_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3956288_right_fuel : Nat := 24
def small_3956288_right_count : Nat := 249
def small_3956288_right_encoded : String := "135D44FB050000FE135D80FF0000000404548A01138670F604548A07138671060000000307800102128A40F9028000FA13D7ECFB00000002078000FE128A7CFF00000004022A45810000000513E200F600000000022A45870000000500000008128A40FF000000050000000413D7B0FB078000FE128A7CFF00000004022A45810000000500000008000000050000000200000001128A7CF900000001028000FA13D7ECFB00000002078000FE128A7CFF00000004022A45810000000513E200F600000000022A45870000000513E2010608C0010211FBE8F903C000FA13A54CFB0000000208C000FE0000000811FBE8FF0000000800000004000000080000000111FC24F90000000103C000FA13A54CFB0000000208C000FE000000060000000913A510FB000000090000000200000003128A40FF022A458100000005000000090000000413D7B0FB078000FE128A7CFF00000004022A4581000000050000000900000009000000021386AD0607800102128A40F9028000FA13D7ECFB00000002078000FE00000008128A40FF00000008000000040000000800000001128A7CF900000001028000FA13D7ECFB00000002078000FE128A7CFF00000004022A458113E1C4F6067ECE8712EA59060000000308C0010211FBE8F903C000FA00000006000000060000000111FC24F90000000100000006000000080000000000000008128A40FF022A458113E1C4F6067ECE8712EA59060000000308C0010211FBE8F9000000050000000111FC24F90000000103C000FA13A54CFB00000002064000FE0000000600000005000000050000000800000000000000080000000413D7B0FB078000FE00000008128A40FF00000008000000040000000200000003000000001386ACF60000000004548A07138671060000000307800102128A40F9028000FA13D7ECFB00000002078000FE128A7CFF00000004067ECE8112EA58F6000000080000000000000008000000090000000800000001128A7CF900000001028000FA13D7ECFB00000002078000FE128A7CFF00000004067ECE8112EA58F6022A45870000000913E2010608C001020000000800000009000000030000000000000009000000090000000900000008135D44FF04548A01138670F604548A07000000051386AD0607800102128A40F9028000FA13D7ECFB00000002028000FE00000008000000070000000800000001128A7CF900000001028000FA13D7ECFB00000002028000FE13D7ECFF00000004022A458113E1C4F6067ECE8700000005000000070000000000000009000000090000000900000003000000001386ACF60000000004548A07000000091386AD06078001020000000800000009000000030000000400000002"
theorem small_3956288_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3956288_right_root small_3956288_right_fuel small_3956288_right_count small_3956288_right_encoded = true := by
  decide +kernel
theorem small_3956288_right_covered : CoveredBy scale carrier boxes small_3956288_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3956288_right_root small_3956288_right_fuel small_3956288_right_count small_3956288_right_encoded small_3956288_right_checked

theorem cover_3956288 : CoveredBy scale carrier boxes root_3956288 := by
  apply coveredBy_split_literal root_3956288 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0285.root_3956289 small_3956288_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0285.cover_3956289
  · exact small_3956288_right_covered
#print axioms cover_3956288

def root_3956282 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3956282_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3956282_left_fuel : Nat := 1
def small_3956282_left_count : Nat := 1
def small_3956282_left_encoded : String := "00000001"
theorem small_3956282_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3956282_left_root small_3956282_left_fuel small_3956282_left_count small_3956282_left_encoded = true := by
  decide +kernel
theorem small_3956282_left_covered : CoveredBy scale carrier boxes small_3956282_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3956282_left_root small_3956282_left_fuel small_3956282_left_count small_3956282_left_encoded small_3956282_left_checked

theorem cover_3956282 : CoveredBy scale carrier boxes root_3956282 := by
  apply coveredBy_split_literal root_3956282 small_3956282_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.root_3956288 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_3956282_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.cover_3956288
#print axioms cover_3956282

def root_3954306 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3954306 : CoveredBy scale carrier boxes root_3954306 := by
  apply coveredBy_split_literal root_3954306 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1485.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.root_3956282 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1485.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.cover_3956282
#print axioms cover_3954306

def root_3954300 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3954300_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3954300_left_fuel : Nat := 1
def small_3954300_left_count : Nat := 1
def small_3954300_left_encoded : String := "00000003"
theorem small_3954300_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3954300_left_root small_3954300_left_fuel small_3954300_left_count small_3954300_left_encoded = true := by
  decide +kernel
theorem small_3954300_left_covered : CoveredBy scale carrier boxes small_3954300_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3954300_left_root small_3954300_left_fuel small_3954300_left_count small_3954300_left_encoded small_3954300_left_checked

theorem cover_3954300 : CoveredBy scale carrier boxes root_3954300 := by
  apply coveredBy_split_literal root_3954300 small_3954300_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.root_3954306 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3954300_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.cover_3954306
#print axioms cover_3954300

def root_3954299 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3954299_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3954299_right_fuel : Nat := 18
def small_3954299_right_count : Nat := 87
def small_3954299_right_encoded : String := "12073D0605000102135D44F9050000FA135D80FB00000002050000FE00000008000000070000000800000001135D80F900000001050000FA135D80FB00000002050000FE135D80FF0000000404548A01138670F60CFD9C070F34D1060000000307800102128A40F9078000FA128A7CFB00000002000000070000000800000001128A7CF900000001078000FA128A7CFB00000002078000FE128A7CFF000000040000000500000007128A40FB078000FE00000008128A40FF00000008000000040000000200000005000000001386ACF6000000000CFD9C070F34D106000000030780010200000005128A7CF9000000010000000500000005135D44FF04548A01138670F60CFD9C070F34D106000000030000000700000007000000001386ACF6000000000CFD9C070F34D10600000003000000070000000500000004135D44FB050000FE00000008135D44FF00000008000000040000000200000003"
theorem small_3954299_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3954299_right_root small_3954299_right_fuel small_3954299_right_count small_3954299_right_encoded = true := by
  decide +kernel
theorem small_3954299_right_covered : CoveredBy scale carrier boxes small_3954299_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3954299_right_root small_3954299_right_fuel small_3954299_right_count small_3954299_right_encoded small_3954299_right_checked

theorem cover_3954299 : CoveredBy scale carrier boxes root_3954299 := by
  apply coveredBy_split_literal root_3954299 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.root_3954300 small_3954299_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.cover_3954300
  · exact small_3954299_right_covered
#print axioms cover_3954299

def root_3954294 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3954294_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3954294_right_fuel : Nat := 1
def small_3954294_right_count : Nat := 1
def small_3954294_right_encoded : String := "00000000"
theorem small_3954294_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3954294_right_root small_3954294_right_fuel small_3954294_right_count small_3954294_right_encoded = true := by
  decide +kernel
theorem small_3954294_right_covered : CoveredBy scale carrier boxes small_3954294_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3954294_right_root small_3954294_right_fuel small_3954294_right_count small_3954294_right_encoded small_3954294_right_checked

theorem cover_3954294 : CoveredBy scale carrier boxes root_3954294 := by
  apply coveredBy_split_literal root_3954294 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.root_3954299 small_3954294_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.cover_3954299
  · exact small_3954294_right_covered
#print axioms cover_3954294

def root_3954293 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3954293_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3954293_right_fuel : Nat := 29
def small_3954293_right_count : Nat := 359
def small_3954293_right_encoded : String := "12073CF60000000008A91307120701060000000305000102135D44F9050000FA135D80FB00000002050000FE135D80FF000000040CFD9C010F34D0F604548A0713867106000000030280010213D7B0F9078000FA128A7CFB00000002078000FE0000000800000006000000080000000113D7ECF900000001078000FA128A7CFB00000002078000FE128A7CFF000000040AD3578110D100F6000000080000000000000005128A40FF0AD3578110D100F6000000090000000000000006000000040000000800000008000000000F350CF60000000004548A0713867106000000030C9A86F6000000080000000800000005135D44FF0CFD9C010F34D0F604548A070000000900000007000000000F350CF60000000004548A07000000060000000700000004135D44FB050000FE00000008135D44FF0CFD9C010F34D0F6000000080000000000000008000000040000000200000001135D80F900000001050000FA135D80FB00000002050000FE135D80FF000000040CFD9C010F34D0F604548A07138671060000000307800102128A40F9078000FA128A7CFB00000002078000FE128A7CFF000000040AD3578110D100F6022A458713E1C506000000030640010212FF70F908C000FA11FC24FB0000000208C000FE0000000500000009000000080000000112FFACF90000000108C000FA11FC24FB0000000208C000FE000000050000000900000009000000050000000000000005128A40FF0AD3578110D100F600000009000000000000000900000004128A40FB078000FE128A7CFF000000040AD3578110D100F6000000080000000000000008000000090000000200000001128A7CF900000001078000FA128A7CFB00000002078000FE128A7CFF000000040AD3578110D100F6022A458713E1C5060000000308C0010211FBE8F908C000FA11FC24FB0000000200000005000000090000000111FC24F9000000010000000A000000050000000000000005128A40FF0AD3578110D100F600000009000000000000000900000004128A40FB078000FE128A7CFF000000040AD3578110D100F600000009000000000000000900000009000000021386AD0607800102128A40F9078000FA128A7CFB00000002000000050000000800000001128A7CF900000001078000FA128A7CFB00000002000000050000000800000003000000000F350CF60000000004548A0713867106000000030C9A86F60F878D0107800102128A40F9078000FA128A7CFB00000002078000FE00000005000000090000000800000001128A7CF900000001078000FA128A7CFB00000002078000FE000000050000000900000009000000000F875101000000000780010200000009128A7CF900000001078000FA128A7CFB00000002078000FE0000000500000009000000081386AD060C9A86F6000000050F875101000000000000000500000003135D44FF0CFD9C010F34D0F604548A0713867106000000030780010200000009000000091386AD0607800102128A40F9078000FA128A7CFB00000002000000070000000800000001128A7CF900000001078000FA128A7CFB000000020000000A0000000900000003000000000F350CF60000000004548A07000000091386AD060C9A86F60F878D01078001020000000800000009000000000F87510100000000000000080000000300000004135D44FB050000FE135D80FF000000040CFD9C010F34D0F604548A07138671060000000307800102000000090000000900000008000000000F350CF60000000004548A070000000900000008135D44FF0CFD9C010F34D0F6000000090000000000000009000000040000000212073D0605000102135D44F90000000800000001135D80F900000001050000FA135D80FB00000002050000FE135D80FF000000040CFD9C010F34D0F6000000050000000000000005135D44FF0CFD9C010F34D0F6000000080000000000000008000000040000000800000003"
theorem small_3954293_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3954293_right_root small_3954293_right_fuel small_3954293_right_count small_3954293_right_encoded = true := by
  decide +kernel
theorem small_3954293_right_covered : CoveredBy scale carrier boxes small_3954293_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3954293_right_root small_3954293_right_fuel small_3954293_right_count small_3954293_right_encoded small_3954293_right_checked

theorem cover_3954293 : CoveredBy scale carrier boxes root_3954293 := by
  apply coveredBy_split_literal root_3954293 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.root_3954294 small_3954293_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.cover_3954294
  · exact small_3954293_right_covered
#print axioms cover_3954293

def root_3954288 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3954288_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3954288_right_fuel : Nat := 1
def small_3954288_right_count : Nat := 1
def small_3954288_right_encoded : String := "00000004"
theorem small_3954288_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3954288_right_root small_3954288_right_fuel small_3954288_right_count small_3954288_right_encoded = true := by
  decide +kernel
theorem small_3954288_right_covered : CoveredBy scale carrier boxes small_3954288_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3954288_right_root small_3954288_right_fuel small_3954288_right_count small_3954288_right_encoded small_3954288_right_checked

theorem cover_3954288 : CoveredBy scale carrier boxes root_3954288 := by
  apply coveredBy_split_literal root_3954288 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.root_3954293 small_3954288_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.cover_3954293
  · exact small_3954288_right_covered
#print axioms cover_3954288

def root_3947598 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3947598 : CoveredBy scale carrier boxes root_3947598 := by
  apply coveredBy_split_literal root_3947598 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0285.root_3947599 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.root_3954288 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0285.cover_3947599
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.cover_3954288
#print axioms cover_3947598

def root_3947593 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3947593_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3947593_right_fuel : Nat := 1
def small_3947593_right_count : Nat := 1
def small_3947593_right_encoded : String := "00000003"
theorem small_3947593_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3947593_right_root small_3947593_right_fuel small_3947593_right_count small_3947593_right_encoded = true := by
  decide +kernel
theorem small_3947593_right_covered : CoveredBy scale carrier boxes small_3947593_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3947593_right_root small_3947593_right_fuel small_3947593_right_count small_3947593_right_encoded small_3947593_right_checked

theorem cover_3947593 : CoveredBy scale carrier boxes root_3947593 := by
  apply coveredBy_split_literal root_3947593 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.root_3947598 small_3947593_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.cover_3947598
  · exact small_3947593_right_covered
#print axioms cover_3947593

def root_3947561 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3947561_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3947561_left_fuel : Nat := 7
def small_3947561_left_count : Nat := 15
def small_3947561_left_encoded : String := "1151E907000000030A0000FE115224FF0000000408A91301120700F608A912FF000000080000000500000000000000051151E8FF0000000800000004"
theorem small_3947561_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3947561_left_root small_3947561_left_fuel small_3947561_left_count small_3947561_left_encoded = true := by
  decide +kernel
theorem small_3947561_left_covered : CoveredBy scale carrier boxes small_3947561_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3947561_left_root small_3947561_left_fuel small_3947561_left_count small_3947561_left_encoded small_3947561_left_checked

theorem cover_3947561 : CoveredBy scale carrier boxes root_3947561 := by
  apply coveredBy_split_literal root_3947561 small_3947561_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.root_3947593 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3947561_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.cover_3947593
#print axioms cover_3947561

def root_3947556 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3947556_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3947556_right_fuel : Nat := 1
def small_3947556_right_count : Nat := 1
def small_3947556_right_encoded : String := "00000002"
theorem small_3947556_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3947556_right_root small_3947556_right_fuel small_3947556_right_count small_3947556_right_encoded = true := by
  decide +kernel
theorem small_3947556_right_covered : CoveredBy scale carrier boxes small_3947556_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3947556_right_root small_3947556_right_fuel small_3947556_right_count small_3947556_right_encoded small_3947556_right_checked

theorem cover_3947556 : CoveredBy scale carrier boxes root_3947556 := by
  apply coveredBy_split_literal root_3947556 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.root_3947561 small_3947556_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.cover_3947561
  · exact small_3947556_right_covered
#print axioms cover_3947556

def root_3942654 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3942654 : CoveredBy scale carrier boxes root_3942654 := by
  apply coveredBy_split_literal root_3942654 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.root_3942655 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.root_3947556 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0284.cover_3942655
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.cover_3947556
#print axioms cover_3942654

def root_3942649 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3942649_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3942649_right_fuel : Nat := 1
def small_3942649_right_count : Nat := 1
def small_3942649_right_encoded : String := "00000001"
theorem small_3942649_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3942649_right_root small_3942649_right_fuel small_3942649_right_count small_3942649_right_encoded = true := by
  decide +kernel
theorem small_3942649_right_covered : CoveredBy scale carrier boxes small_3942649_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3942649_right_root small_3942649_right_fuel small_3942649_right_count small_3942649_right_encoded small_3942649_right_checked

theorem cover_3942649 : CoveredBy scale carrier boxes root_3942649 := by
  apply coveredBy_split_literal root_3942649 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.root_3942654 small_3942649_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.cover_3942654
  · exact small_3942649_right_covered
#print axioms cover_3942649

def root_3966568 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3966568 : CoveredBy scale carrier boxes root_3966568 := by
  apply coveredBy_split_literal root_3966568 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1488.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1489.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1488.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1489.covered
#print axioms cover_3966568

def root_3966563 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3966563_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3966563_right_fuel : Nat := 1
def small_3966563_right_count : Nat := 1
def small_3966563_right_encoded : String := "00000003"
theorem small_3966563_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3966563_right_root small_3966563_right_fuel small_3966563_right_count small_3966563_right_encoded = true := by
  decide +kernel
theorem small_3966563_right_covered : CoveredBy scale carrier boxes small_3966563_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3966563_right_root small_3966563_right_fuel small_3966563_right_count small_3966563_right_encoded small_3966563_right_checked

theorem cover_3966563 : CoveredBy scale carrier boxes root_3966563 := by
  apply coveredBy_split_literal root_3966563 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.root_3966568 small_3966563_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.cover_3966568
  · exact small_3966563_right_covered
#print axioms cover_3966563

def root_3966485 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3966485_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3966485_left_fuel : Nat := 14
def small_3966485_left_count : Nat := 37
def small_3966485_left_encoded : String := "1151E907000000030A0000FE115224FF00000004000000051151E8FF08A91301120700F608A912F912073D02050000FA00000005135D44FB0500010600000005135D8107050000FE00000005135D44FF0000000800000004000000030000000200000001000000050000000012073CF60000000008A912F912073D02050000FA0000000500000008000000010000000500000004"
theorem small_3966485_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3966485_left_root small_3966485_left_fuel small_3966485_left_count small_3966485_left_encoded = true := by
  decide +kernel
theorem small_3966485_left_covered : CoveredBy scale carrier boxes small_3966485_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3966485_left_root small_3966485_left_fuel small_3966485_left_count small_3966485_left_encoded small_3966485_left_checked

theorem cover_3966485 : CoveredBy scale carrier boxes root_3966485 := by
  apply coveredBy_split_literal root_3966485 small_3966485_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.root_3966563 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3966485_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.cover_3966563
#print axioms cover_3966485

def root_3966480 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3966480_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3966480_right_fuel : Nat := 1
def small_3966480_right_count : Nat := 1
def small_3966480_right_encoded : String := "00000002"
theorem small_3966480_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3966480_right_root small_3966480_right_fuel small_3966480_right_count small_3966480_right_encoded = true := by
  decide +kernel
theorem small_3966480_right_covered : CoveredBy scale carrier boxes small_3966480_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3966480_right_root small_3966480_right_fuel small_3966480_right_count small_3966480_right_encoded small_3966480_right_checked

theorem cover_3966480 : CoveredBy scale carrier boxes root_3966480 := by
  apply coveredBy_split_literal root_3966480 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.root_3966485 small_3966480_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.cover_3966485
  · exact small_3966480_right_covered
#print axioms cover_3966480

def root_3965910 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3965910_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3965910_left_fuel : Nat := 32
def small_3965910_left_count : Nat := 265
def small_3965910_left_encoded : String := "115224FB000000020A0001061151E9070000000300000005115225070A0000FE115224FF0000000408A91301120700F608A912F912073D0208A912FB12073CFA0000000208A91307120701060000000308A912FF12073CFE0000000404548A01138670F60CFD9BF90F350D020CFD9BFB0F350CFA0000000204548A0713867106000000030CFD9BFF0F350CFE000000040C9A87020F8750F90C9A86FA0000000A0F8750FB0C9A86FE000000060F8750FF0000000A0000000400000002000000010000000A0F34D0FE00000005000000041386AD060CFD9BFF0F350CFE000000040C9A87020F8750F90C9A86FA000000050F8750FB0C9A86FE000000050F8750FF0000000A0000000400000002000000010000000A00000005000000030F34D0FA0000000500000002000000010F34D102000000010CFD9BFB0F350CFA0000000204548A07000000060000000500000005000000001386ACF6000000000CFD9BF90F350D020CFD9BFB0F350CFA0000000204548A0713867106000000030CFD9BFF0F350CFE000000040C9A87020F8750F90C9A86FA0000000A0F8750FB0C9A86FE0F878CFF00000004000000050F8750FF0000000A0000000400000002000000010000000A000000050000000500000005000000010000000500000005000000050000000500000001000000050000000012073CF60000000008A912F912073D0208A912FB12073CFA0000000208A91307120701060000000308A912FF12073CFE000000040CFD9C010F34D0F600000005000000000000000500000005000000050000000500000001000000051151E8FF08A91301120700F608A912F912073D0208A912FB12073CFA0000000208A913071207010600000003050000FE135D80FF0000000404548A01138670F60000000A000000000000000A135D44FF0000000A0000000412073D06050000FE135D80FF0000000404548A01138670F60CFD9BF90F350D020CFD9BFB0F350CFA000000020CFD9C070F34D106000000030000000A000000050000000500000001000000050000000000000005135D44FF04548A01138670F60000000A000000000000000A0000000400000003120700FA0000000A000000020000000112070102000000010000000A0000000012073CF60000000008A912F912073D0208A912FB12073CFA0000000208A913071207010600000003050000FE135D80FF000000040CFD9C010F34D0F60000000A000000000F350CF6000000000CFD9BF90F350D020CFD9BFB0F350CFA0000000204548A0713867106000000030000000A0000000500000005000000010000000A135D44FF0CFD9C010F34D0F60000000A000000000000000A0000000412073D06050000FE00000005135D44FF0CFD9C010F34D0F60000000500000000000000050000000400000003120700FA00000005000000020000000112070102000000010000000A0000000400000003"
theorem small_3965910_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3965910_left_root small_3965910_left_fuel small_3965910_left_count small_3965910_left_encoded = true := by
  decide +kernel
theorem small_3965910_left_covered : CoveredBy scale carrier boxes small_3965910_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3965910_left_root small_3965910_left_fuel small_3965910_left_count small_3965910_left_encoded small_3965910_left_checked

theorem cover_3965910 : CoveredBy scale carrier boxes root_3965910 := by
  apply coveredBy_split_literal root_3965910 small_3965910_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.root_3966480 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3965910_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.cover_3966480
#print axioms cover_3965910

def root_3965904 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3965904_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3965904_left_fuel : Nat := 1
def small_3965904_left_count : Nat := 1
def small_3965904_left_encoded : String := "00000001"
theorem small_3965904_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3965904_left_root small_3965904_left_fuel small_3965904_left_count small_3965904_left_encoded = true := by
  decide +kernel
theorem small_3965904_left_covered : CoveredBy scale carrier boxes small_3965904_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3965904_left_root small_3965904_left_fuel small_3965904_left_count small_3965904_left_encoded small_3965904_left_checked

theorem cover_3965904 : CoveredBy scale carrier boxes root_3965904 := by
  apply coveredBy_split_literal root_3965904 small_3965904_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.root_3965910 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3965904_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.cover_3965910
#print axioms cover_3965904

def root_3942648 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3942648 : CoveredBy scale carrier boxes root_3942648 := by
  apply coveredBy_split_literal root_3942648 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.root_3942649 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.root_3965904 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.cover_3942649
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.cover_3965904
#print axioms cover_3942648

def root_3942643 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3942643_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3942643_right_fuel : Nat := 1
def small_3942643_right_count : Nat := 1
def small_3942643_right_encoded : String := "00000000"
theorem small_3942643_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3942643_right_root small_3942643_right_fuel small_3942643_right_count small_3942643_right_encoded = true := by
  decide +kernel
theorem small_3942643_right_covered : CoveredBy scale carrier boxes small_3942643_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3942643_right_root small_3942643_right_fuel small_3942643_right_count small_3942643_right_encoded small_3942643_right_checked

theorem cover_3942643 : CoveredBy scale carrier boxes root_3942643 := by
  apply coveredBy_split_literal root_3942643 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.root_3942648 small_3942643_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.cover_3942648
  · exact small_3942643_right_covered
#print axioms cover_3942643

def root_3972660 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3972660_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3972660_left_fuel : Nat := 30
def small_3972660_left_count : Nat := 451
def small_3972660_left_encoded : String := "115224FF0000000408A912F912073D0208A91307120701060000000308A912FF12073CFE00000004050000F6135D8101050000FA135D80FB000000020CFD9BF90F350D0204548A0713867106000000030CFD9BFF0F350CFE000000040C9A87020F8750F90C9A86FE000000050F8750FF078000F600000005128A4101000000000000000500000004000000010F878CF9000000010C9A86FE000000050F8750FF078000F600000005128A41010000000000000005000000040000000500000005000000010F34D1020000000104548A0713867106000000030CFD9BFF0F350CFE000000040C9A86FE000000050F8750FF078000F600000005128A41010000000000000007000000040000000500000005135D44FB0CFD9BF90F350D0204548A0713867106000000030CFD9BFF0F350CFE000000040C9A87020F8750F90C9A86FE000000080F8750FF0000000800000004000000010F878CF9000000010C9A86FE0F878CFF00000004078000F600000005128A410100000000000000070F8750FF00000009000000040F34D0FE00000005000000041386AD060CFD9BFF0F350CFE000000040C9A8702000000080F878CF900000001000000080F34D0FE000000050000000400000003000000010F34D1020000000104548A0713867106000000030CFD9BFF0F350CFE000000040C9A86FE000000060F8750FF0000000700000004000000071386AD060CFD9BFF0F350CFE000000040C9A86FE000000060F8750FF078000F6128A7D01000000060000000000000006000000040F34D0FE0000000500000004000000030000000200000000135D450100000000050000FA135D80FB000000020CFD9BF90F350D0204548A0713867106000000030CFD9BFF0F350CFE000000040C9A87020F8750F90C9A86FE0F878CFF00000004000000050F8750FF028000F613D7ED01078000FA00000005000000080000000013D7B10100000000078000FA000000050000000800000004000000010F878CF9000000010C9A86FE0F878CFF00000004000000050F8750FF028000F613D7ED01078000FA00000005128A40FB022A45870000000900000005000000020000000013D7B10100000000078000FA128A7CFB00000002022A458713E1C506000000030DE7CA02000000050E6014F9000000010000000500000005128A40FB022A458713E1C506000000030DE7CA020E5FD8F900000008000000010E6014F900000001000000070000000800000002000000040F34D0FE00000005000000041386AD060CFD9BFF0F350CFE000000040C9A8702000000050F878CF900000001000000050000000500000003000000010F34D1020000000104548A0713867106000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004000000060F8750FF028000F613D7ED01078000FA00000005000000060000000013D7B10100000000078000FA128A7CFB000000020AD3577910D13D020000000500000001000000050000000600000004000000071386AD060CFD9BFF0F350CFE000000040C9A86FE000000050F8750FF028000F60000000513D7B10100000000078000FA0000000500000006000000040000000500000003135D44FB0CFD9BF90F350D0204548A0713867106000000030CFD9BFF0F350CFE000000040C9A87020F8750F900000008000000010F878CF9000000010C9A86FE0F878CFF00000004000000080F8750FF028000F60000000800000008000000040F34D0FE0C9A87020000000500000006000000041386AD060CFD9BFF000000080F34D0FE000000050000000400000003000000010F34D1020000000104548A0713867106000000030CFD9BFF0F350CFE000000040C9A86FE000000060F8750FF0000000600000004000000071386AD060CFD9BFF00000006000000060000000300000002120700FE050000F600000005135D450100000000000000050000000412073D0608A912FF12073CFE00000004050000F6135D8101050000FA00000005135D44FB0CFD9BF90F350D020000000500000001000000050000000200000000135D450100000000050000FA00000005135D44FB0CFD9BF90F350D0200000008000000010F34D102000000010CFD9C070F34D106000000030CFD9BFF00000006000000060F350D06000000050000000300000002120700FE00000005000000040000000300000001120701020000000108A91307120701060000000308A912FF12073CFE00000004050000F6135D8101050000FA135D80FB0000000200000005135D44FB045489F91386AD0204548A07000000060000000600000001000000060000000200000000135D450100000000050000FA135D80FB00000002045489F91386AD0204548A070000000600000006000000010000000600000006120700FE000000050000000412073D0608A912FF12073CFE00000004050000F600000005135D450100000000050000FA0000000500000006120700FE000000050000000400000003"
theorem small_3972660_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3972660_left_root small_3972660_left_fuel small_3972660_left_count small_3972660_left_encoded = true := by
  decide +kernel
theorem small_3972660_left_covered : CoveredBy scale carrier boxes small_3972660_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3972660_left_root small_3972660_left_fuel small_3972660_left_count small_3972660_left_encoded small_3972660_left_checked

theorem cover_3972660 : CoveredBy scale carrier boxes root_3972660 := by
  apply coveredBy_split_literal root_3972660 small_3972660_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1490.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3972660_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1490.covered
#print axioms cover_3972660

def root_3972655 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3972655_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3972655_right_fuel : Nat := 1
def small_3972655_right_count : Nat := 1
def small_3972655_right_encoded : String := "00000003"
theorem small_3972655_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3972655_right_root small_3972655_right_fuel small_3972655_right_count small_3972655_right_encoded = true := by
  decide +kernel
theorem small_3972655_right_covered : CoveredBy scale carrier boxes small_3972655_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3972655_right_root small_3972655_right_fuel small_3972655_right_count small_3972655_right_encoded small_3972655_right_checked

theorem cover_3972655 : CoveredBy scale carrier boxes root_3972655 := by
  apply coveredBy_split_literal root_3972655 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.root_3972660 small_3972655_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286.cover_3972660
  · exact small_3972655_right_covered
#print axioms cover_3972655

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0286
