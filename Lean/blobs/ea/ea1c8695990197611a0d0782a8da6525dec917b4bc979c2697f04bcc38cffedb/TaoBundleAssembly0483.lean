import TaoBundleAssembly0482
import TaoBundleChunkBatch0660
import TaoBundleChunkBatch0661
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483
def root_7003547 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7003547_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7003547_right_fuel : Nat := 26
def small_7003547_right_count : Nat := 329
def small_7003547_right_encoded : String := "135D4507000000030CFD9C050F34D104000000020CFD9C090F34D108000000040280010013D7B0F70280010213D7B0F9028000FC13D7ED070AD3578510D10104000000020AD3578910D10108000000040140010013F5D8F70140010213F5D8F903C000FC13A54D0709BE35450000000711777D04000000060000000200000003000000050000000100000005000000000000000510D13D08014001000000000713F614F7000000000140010213F5D8F903C000FC13A54D0709BE35450000000711777D040BE879C9000000070000000700000002000000030000000500000001000000050000000410D13D040AD3578910D10108000000040140010013F5D8F7014001020000000613F614F90000000103C000FC13A54D070BE879C5000000060000000600000003000000050000000013F614F70000000001400102000000060000000510D13D08014001000000000913F614F700000000014001020000000913F614F90000000103C000FC13A54D070BE879C510117104000000020BE879C91011710800000004000000050000000900000009000000030000000500000004000000020000000313D7B107000000030AD3578510D10104000000020000000510D13D040AD3578910D10108000000040000000500000009000000020000000113D7ECF900000001028000FC13D7ED070AD3578510D10104000000020000000510D13D040AD3578910D10108000000040000000510D13D080140010013F5D8F703C0010213A510F903C000FC13A54D070BE879C50000000700000009000000030000000500000001000000050000000000000005000000040000000200000003000000050000000013D7ECF7000000000280010213D7B0F9028000FC13D7ED070AD3578510D10104000000020000000510D13D040AD3578910D10108000000040000000510D13D0803C0010013A510F70140010213F5D8F903C000FC13A54D070BE879C500000006000000060000000300000005000000010000000500000000000000050000000400000002000000030000000500000001000000050F350D080C9A87080F87510900000004000000090F878D090280010013D7B0F70280010213D7B0F9000000090000000113D7ECF900000001028000FC13D7ED070AD35785000000070000000900000003000000070000000013D7ECF7000000000280010213D7B0F9028000FC13D7ED070AD3578510D10104000000020DE7CA080E5FD90900000004000000070E60150903C0010013A510F7000000070000000000000005000000040000000900000003000000090000000113D7ECF900000001028000FC13D7ED070AD3578510D10104000000020000000510D13D040DE7CA080E5FD90900000004000000090000000500000002000000030000000500000004000000040F350D040CFD9C090F34D108000000040C9A87040F87510500000002000000090F878D050280010013D7B0F70280010213D7B0F9000000090000000113D7ECF900000001028000FC13D7ED070AD3578910D10108000000040DE7CA040E5FD90500000002000000060E6015050140010013F5D8F703C0010213A510F90000000600000001000000050000000000000005000000020000000900000003000000090000000013D7ECF7000000000280010213D7B0F9028000FC13D7ED070AD35789000000060000000900000003000000060000000113D7ECF900000001028000FC13D7ED070AD3578910D10108000000040000000510D13D080DE7CA040E5FD905000000020000000900000005000000040000000300000005000000020000000900000002"
theorem small_7003547_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7003547_right_root small_7003547_right_fuel small_7003547_right_count small_7003547_right_encoded = true := by
  decide +kernel
theorem small_7003547_right_covered : CoveredBy scale carrier boxes small_7003547_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7003547_right_root small_7003547_right_fuel small_7003547_right_count small_7003547_right_encoded small_7003547_right_checked

theorem cover_7003547 : CoveredBy scale carrier boxes root_7003547 := by
  apply coveredBy_split_literal root_7003547 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.root_7003548 small_7003547_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.cover_7003548
  · exact small_7003547_right_covered
#print axioms cover_7003547

def root_7003542 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7003542_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7003542_right_fuel : Nat := 1
def small_7003542_right_count : Nat := 1
def small_7003542_right_encoded : String := "00000001"
theorem small_7003542_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7003542_right_root small_7003542_right_fuel small_7003542_right_count small_7003542_right_encoded = true := by
  decide +kernel
theorem small_7003542_right_covered : CoveredBy scale carrier boxes small_7003542_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7003542_right_root small_7003542_right_fuel small_7003542_right_count small_7003542_right_encoded small_7003542_right_checked

theorem cover_7003542 : CoveredBy scale carrier boxes root_7003542 := by
  apply coveredBy_split_literal root_7003542 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.root_7003547 small_7003542_right_root coord1 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.cover_7003547
  · exact small_7003542_right_covered
#print axioms cover_7003542

def root_7020218 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7020218 : CoveredBy scale carrier boxes root_7020218 := by
  apply coveredBy_split_literal root_7020218 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2639.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2640.root coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2639.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2640.covered
#print axioms cover_7020218

def root_7020213 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7020213_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7020213_right_fuel : Nat := 1
def small_7020213_right_count : Nat := 1
def small_7020213_right_encoded : String := "00000002"
theorem small_7020213_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7020213_right_root small_7020213_right_fuel small_7020213_right_count small_7020213_right_encoded = true := by
  decide +kernel
theorem small_7020213_right_covered : CoveredBy scale carrier boxes small_7020213_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7020213_right_root small_7020213_right_fuel small_7020213_right_count small_7020213_right_encoded small_7020213_right_checked

theorem cover_7020213 : CoveredBy scale carrier boxes root_7020213 := by
  apply coveredBy_split_literal root_7020213 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.root_7020218 small_7020213_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.cover_7020218
  · exact small_7020213_right_covered
#print axioms cover_7020213

def root_7019523 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7019523_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7019523_left_fuel : Nat := 32
def small_7019523_left_count : Nat := 325
def small_7019523_left_encoded : String := "0F34D104000000020CFD9C090F34D108000000040280010013D7B0F707800102128A40F9078000FC128A7D070AD3578510D10104000000020AD35789000000070000000710D13D040AD3578910D1010800000004014001000000000813F614F7000000000000000910D13D080140010013F5D8F70640010212FF70F908C000FC000000070000000700000001000000070000000013F614F7000000000640010212FF70F908C000FC11FC25070BE879C5000000071011AD040BE879C90000000700000007000000020000000311FBE907000000030BE879C5000000071011AD040BE879C90000000700000007000000020000000112FFACF90000000108C000FC11FC2507000000070000000300000005000000040000000200000003128A4107000000030AD3578510D10104000000020000000510D13D040AD3578910D10108000000040000000510D13D08014001000000000700000005000000040000000200000001128A7CF900000001078000FC128A7D070AD357850000000710D13D040AD3578910D10108000000040000000510D13D0800000007000000040000000200000003000000050000000013D7ECF70000000007800102128A40F9078000FC128A7D070AD3578510D10104000000020000000510D13D040AD3578910D10108000000040000000510D13D0803C0010013A510F70640010212FF70F908C000FC11FC25070BE879C5000000091011AD040BE879C9000000091011AD08032001000000000713C144F70000000005A00102000000090000000500000004000000020000000300000005000000010000000500000000000000050000000400000002000000030000000500000001000000050F350D080C9A87080F87510900000004028001000000000713D7ECF70000000007800102128A40F9078000FC128A7D070AD357850000000710D13D040000000700000002000000030000000700000001128A7CF900000001000000070F878D090280010013D7B0F707800102128A40F9078000FC128A7D070AD357850000000710D13D040000000700000002000000030000000700000001128A7CF900000001000000070000000013D7ECF70000000007800102128A40F9078000FC128A7D070AD3578510D10104000000020000000710D13D040DE7CA080E5FD9090000000403C001000000000713A54CF7000000000640010212FF70F908C000FC11FC25070BE879C5000000071011AD04000000070000000200000003000000070000000112FFACF900000001000000070E60150903C0010013A510F70640010212FF70F908C000FC11FC25070000000700000003000000070000000112FFACF900000001000000070000000013A54CF7000000000640010212FF70F908C000FC11FC25070BE879C51011710400000002000000071011AD040DAED8890E96250800000004046001001383DCF705A00102133134F9096000FC0000000700000005000000010000000500000000000000050E9661080460010000000007138418F70000000005A00102133134F9096000FC11AABD070000000700000003000000050000000100000005000000040000000200000003000000050000000100000005000000040000000200000003128A4107000000030AD3578510D10104000000020000000510D13D040DE7CA080E5FD9090000000403C001000000000700000005000000050000000200000001128A7CF900000001078000FC128A7D070AD357850000000710D13D040DE7CA0800000007000000050000000200000003000000050000000400000004"
theorem small_7019523_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7019523_left_root small_7019523_left_fuel small_7019523_left_count small_7019523_left_encoded = true := by
  decide +kernel
theorem small_7019523_left_covered : CoveredBy scale carrier boxes small_7019523_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7019523_left_root small_7019523_left_fuel small_7019523_left_count small_7019523_left_encoded small_7019523_left_checked

theorem cover_7019523 : CoveredBy scale carrier boxes root_7019523 := by
  apply coveredBy_split_literal root_7019523 small_7019523_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.root_7020213 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_7019523_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.cover_7020213
#print axioms cover_7019523

def root_7019518 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7019518_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7019518_right_fuel : Nat := 1
def small_7019518_right_count : Nat := 1
def small_7019518_right_encoded : String := "00000003"
theorem small_7019518_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7019518_right_root small_7019518_right_fuel small_7019518_right_count small_7019518_right_encoded = true := by
  decide +kernel
theorem small_7019518_right_covered : CoveredBy scale carrier boxes small_7019518_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7019518_right_root small_7019518_right_fuel small_7019518_right_count small_7019518_right_encoded small_7019518_right_checked

theorem cover_7019518 : CoveredBy scale carrier boxes root_7019518 := by
  apply coveredBy_split_literal root_7019518 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.root_7019523 small_7019518_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.cover_7019523
  · exact small_7019518_right_covered
#print axioms cover_7019518

def root_7019517 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7019517_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7019517_right_fuel : Nat := 17
def small_7019517_right_count : Nat := 85
def small_7019517_right_encoded : String := "135D4507000000030CFD9C050F34D104000000020CFD9C090F34D10800000004000000050F350D080C9A87080F87510900000004000000070F878D0902800100000000070000000500000004000000040F350D040CFD9C090F34D108000000040C9A87040F87510500000002028001000000000A0000000A0F878D050280010013D7B0F707800102128A40F9028000FC13D7ED070AD357890000000A10D13D080DE7CA040000000A0000000500000004000000030000000500000001000000050000000000000005000000020F350D080C9A87040F87510500000002000000090F878D050C9A87080F87510900000004000000090F878D090280010013D7B0F707800102000000090000000A0000000013D7ECF70000000007800102128A40F9028000FC13D7ED070DE7CA0400000009000000050000000300000005000000010000000500000004000000020000000400000002"
theorem small_7019517_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7019517_right_root small_7019517_right_fuel small_7019517_right_count small_7019517_right_encoded = true := by
  decide +kernel
theorem small_7019517_right_covered : CoveredBy scale carrier boxes small_7019517_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7019517_right_root small_7019517_right_fuel small_7019517_right_count small_7019517_right_encoded small_7019517_right_checked

theorem cover_7019517 : CoveredBy scale carrier boxes root_7019517 := by
  apply coveredBy_split_literal root_7019517 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.root_7019518 small_7019517_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.cover_7019518
  · exact small_7019517_right_covered
#print axioms cover_7019517

def root_7019511 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7019511_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7019511_left_fuel : Nat := 1
def small_7019511_left_count : Nat := 1
def small_7019511_left_encoded : String := "00000001"
theorem small_7019511_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7019511_left_root small_7019511_left_fuel small_7019511_left_count small_7019511_left_encoded = true := by
  decide +kernel
theorem small_7019511_left_covered : CoveredBy scale carrier boxes small_7019511_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7019511_left_root small_7019511_left_fuel small_7019511_left_count small_7019511_left_encoded small_7019511_left_checked

theorem cover_7019511 : CoveredBy scale carrier boxes root_7019511 := by
  apply coveredBy_split_literal root_7019511 small_7019511_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.root_7019517 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7019511_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.cover_7019517
#print axioms cover_7019511

def root_7003541 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7003541 : CoveredBy scale carrier boxes root_7003541 := by
  apply coveredBy_split_literal root_7003541 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.root_7003542 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.root_7019511 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.cover_7003542
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.cover_7019511
#print axioms cover_7003541

def root_7003536 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7003536_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7003536_right_fuel : Nat := 1
def small_7003536_right_count : Nat := 1
def small_7003536_right_encoded : String := "00000000"
theorem small_7003536_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7003536_right_root small_7003536_right_fuel small_7003536_right_count small_7003536_right_encoded = true := by
  decide +kernel
theorem small_7003536_right_covered : CoveredBy scale carrier boxes small_7003536_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7003536_right_root small_7003536_right_fuel small_7003536_right_count small_7003536_right_encoded small_7003536_right_checked

theorem cover_7003536 : CoveredBy scale carrier boxes root_7003536 := by
  apply coveredBy_split_literal root_7003536 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.root_7003541 small_7003536_right_root coord0 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.cover_7003541
  · exact small_7003536_right_covered
#print axioms cover_7003536

def root_7027860 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7027860_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7027860_left_fuel : Nat := 30
def small_7027860_left_count : Nat := 171
def small_7027860_left_encoded : String := "0F34D108000000040C9A87040F8751050000000207800100128A40F7028001020000000613D7ECF900000001078000FC128A7D070AD357890000000610D13D080000000600000004000000030000000600000000128A7CF700000000000000060F878D0507800100128A40F70280010213D7B0F9078000FC128A7D070AD357890000000610D13D08000000060000000400000003000000060000000113D7ECF900000001078000FC128A7D070AD3578910D10108000000040000000610D13D080DE7CA040E5FD905000000020640010012FF70F703C001020000000613A54CF90000000108C000FC11FC25070BE879C9000000061011AD08000000060000000400000003000000060000000012FFACF700000000000000060E6015050640010012FF70F703C0010213A510F908C000FC11FC25070000000600000003000000060000000113A54CF90000000108C000FC11FC25070BE879C91011710800000004000000061011AD080DAED8850E9625040000000205A00100133134F7046001021383DCF9096000FC0000000600000005000000010000000500000000000000050E96610405A00100133134F70460010200000006138418F900000001096000FC11AABD0700000006000000030000000500000000133170F70000000000000006000000020000000400000003000000050000000012FFACF70000000003C001020000000600000005000000020000000400000003128A4107000000030AD3578910D10108000000040000000510D13D080DE7CA040E5FD905000000020640010012FF70F703C0010200000006000000050000000000000005000000050000000400000000128A7CF700000000028001020000000613D7ECF900000001078000FC128A7D070AD357890000000610D13D080DE7CA04000000060000000500000004000000030000000500000002"
theorem small_7027860_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7027860_left_root small_7027860_left_fuel small_7027860_left_count small_7027860_left_encoded = true := by
  decide +kernel
theorem small_7027860_left_covered : CoveredBy scale carrier boxes small_7027860_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7027860_left_root small_7027860_left_fuel small_7027860_left_count small_7027860_left_encoded small_7027860_left_checked

theorem cover_7027860 : CoveredBy scale carrier boxes root_7027860 := by
  apply coveredBy_split_literal root_7027860 small_7027860_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2642.root coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_7027860_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2642.covered
#print axioms cover_7027860

def root_7027855 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7027855_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7027855_right_fuel : Nat := 1
def small_7027855_right_count : Nat := 1
def small_7027855_right_encoded : String := "00000002"
theorem small_7027855_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7027855_right_root small_7027855_right_fuel small_7027855_right_count small_7027855_right_encoded = true := by
  decide +kernel
theorem small_7027855_right_covered : CoveredBy scale carrier boxes small_7027855_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7027855_right_root small_7027855_right_fuel small_7027855_right_count small_7027855_right_encoded small_7027855_right_checked

theorem cover_7027855 : CoveredBy scale carrier boxes root_7027855 := by
  apply coveredBy_split_literal root_7027855 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.root_7027860 small_7027855_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.cover_7027860
  · exact small_7027855_right_covered
#print axioms cover_7027855

def root_7025367 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7025367 : CoveredBy scale carrier boxes root_7025367 := by
  apply coveredBy_split_literal root_7025367 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2641.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.root_7027855 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2641.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.cover_7027855
#print axioms cover_7025367

def root_7025362 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7025362_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7025362_right_fuel : Nat := 1
def small_7025362_right_count : Nat := 1
def small_7025362_right_encoded : String := "00000003"
theorem small_7025362_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7025362_right_root small_7025362_right_fuel small_7025362_right_count small_7025362_right_encoded = true := by
  decide +kernel
theorem small_7025362_right_covered : CoveredBy scale carrier boxes small_7025362_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7025362_right_root small_7025362_right_fuel small_7025362_right_count small_7025362_right_encoded small_7025362_right_checked

theorem cover_7025362 : CoveredBy scale carrier boxes root_7025362 := by
  apply coveredBy_split_literal root_7025362 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.root_7025367 small_7025362_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.cover_7025367
  · exact small_7025362_right_covered
#print axioms cover_7025362

def root_7025361 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7025361_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7025361_right_fuel : Nat := 17
def small_7025361_right_count : Nat := 91
def small_7025361_right_encoded : String := "135D4507000000030CFD9C050F34D104000000020CFD9C090F34D10800000004000000050F350D080C9A87080F8751090000000407800100128A40F70000000800000000000000080F878D0907800100128A40F70280010213D7B0F9028000FC13D7ED070AD357850000000810D13D040DE7CA0800000008000000050000000200000003000000050000000100000005000000000000000500000004000000040F350D040CFD9C090F34D108000000040C9A87040F87510500000002000000060F878D0507800100128A40F70280010200000006000000050000000000000005000000020F350D080C9A87040F87510500000002000000090F878D050C9A87080F87510900000004000000090F878D0907800100128A40F7028001020000000913D7ECF900000001028000FC13D7ED070DE7CA040000000900000005000000030000000500000000128A7CF70000000002800102000000080000000500000004000000020000000400000002"
theorem small_7025361_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7025361_right_root small_7025361_right_fuel small_7025361_right_count small_7025361_right_encoded = true := by
  decide +kernel
theorem small_7025361_right_covered : CoveredBy scale carrier boxes small_7025361_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7025361_right_root small_7025361_right_fuel small_7025361_right_count small_7025361_right_encoded small_7025361_right_checked

theorem cover_7025361 : CoveredBy scale carrier boxes root_7025361 := by
  apply coveredBy_split_literal root_7025361 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.root_7025362 small_7025361_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.cover_7025362
  · exact small_7025361_right_covered
#print axioms cover_7025361

def root_7025356 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7025356_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7025356_right_fuel : Nat := 1
def small_7025356_right_count : Nat := 1
def small_7025356_right_encoded : String := "00000001"
theorem small_7025356_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7025356_right_root small_7025356_right_fuel small_7025356_right_count small_7025356_right_encoded = true := by
  decide +kernel
theorem small_7025356_right_covered : CoveredBy scale carrier boxes small_7025356_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7025356_right_root small_7025356_right_fuel small_7025356_right_count small_7025356_right_encoded small_7025356_right_checked

theorem cover_7025356 : CoveredBy scale carrier boxes root_7025356 := by
  apply coveredBy_split_literal root_7025356 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.root_7025361 small_7025356_right_root coord1 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.cover_7025361
  · exact small_7025356_right_covered
#print axioms cover_7025356

def root_7025355 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7025355 : CoveredBy scale carrier boxes root_7025355 := by
  apply coveredBy_split_literal root_7025355 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.root_7025356 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2643.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.cover_7025356
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2643.covered
#print axioms cover_7025355

def root_7025349 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7025349_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7025349_left_fuel : Nat := 1
def small_7025349_left_count : Nat := 1
def small_7025349_left_encoded : String := "00000000"
theorem small_7025349_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7025349_left_root small_7025349_left_fuel small_7025349_left_count small_7025349_left_encoded = true := by
  decide +kernel
theorem small_7025349_left_covered : CoveredBy scale carrier boxes small_7025349_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7025349_left_root small_7025349_left_fuel small_7025349_left_count small_7025349_left_encoded small_7025349_left_checked

theorem cover_7025349 : CoveredBy scale carrier boxes root_7025349 := by
  apply coveredBy_split_literal root_7025349 small_7025349_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.root_7025355 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7025349_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.cover_7025355
#print axioms cover_7025349

def root_7003535 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7003535 : CoveredBy scale carrier boxes root_7003535 := by
  apply coveredBy_split_literal root_7003535 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.root_7003536 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.root_7025349 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.cover_7003536
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.cover_7025349
#print axioms cover_7003535

def root_7003530 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7003530_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7003530_right_fuel : Nat := 1
def small_7003530_right_count : Nat := 1
def small_7003530_right_encoded : String := "00000004"
theorem small_7003530_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7003530_right_root small_7003530_right_fuel small_7003530_right_count small_7003530_right_encoded = true := by
  decide +kernel
theorem small_7003530_right_covered : CoveredBy scale carrier boxes small_7003530_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7003530_right_root small_7003530_right_fuel small_7003530_right_count small_7003530_right_encoded small_7003530_right_checked

theorem cover_7003530 : CoveredBy scale carrier boxes root_7003530 := by
  apply coveredBy_split_literal root_7003530 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.root_7003535 small_7003530_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.cover_7003535
  · exact small_7003530_right_covered
#print axioms cover_7003530

def root_7002790 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7002790_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7002790_left_fuel : Nat := 24
def small_7002790_left_count : Nat := 351
def small_7002790_left_encoded : String := "120701080000000405000100135D44F705000102135D44F9050000FC135D81070CFD9C050F34D1040000000204548A0913867108000000040280010000000008000000061386AD080280010013D7B0F70280010213D7B0F9078000FC128A7D070AD35785000000090000000800000003128A4107000000030AD3578510D1010400000002067ECE890000000612EA95080140010000000008000000060000000410D13D0400000006000000020000000113D7ECF900000001078000FC128A7D070000000800000003128A4107000000030AD3578510D10104000000020000000510D13D04067ECE890000000612EA950801400100000000080000000500000004000000020000000013D7ECF7000000000280010213D7B0F9078000FC128A7D070000000900000003000000060000000113D7ECF900000001078000FC0000000900000005000000040F350D0404548A09000000061386AD080C9A87040F87510500000002000000060F878D050280010013D7B0F7028001020000000613D7ECF900000001078000FC00000008000000060000000013D7ECF700000000028001020000000613D7ECF900000001078000FC000000060000000600000002000000040000000200000003135D4507000000030CFD9C050F34D1040000000204548A091386710800000004000000051386AD080280010013D7B0F70280010213D7B0F9028000FC13D7ED070AD3578510D10104000000020000000500000006000000030000000500000001000000050000000000000005000000040F350D0404548A09000000061386AD080C9A8704000000060F878D050280010013D7B0F7028001020000000613D7ECF900000001028000FC0000000600000005000000000000000600000002000000040000000200000001135D80F900000001050000FC135D81070CFD9C050F34D1040000000204548A09000000091386AD080280010013D7B0F707800102128A40F9078000FC000000090000000500000001000000050000000000000005000000040F350D0404548A0913867108000000040C9A87040F87510500000002000000060F878D05028001000000000800000005000000021386AD080C9A87040F875105000000020280010013D7B0F707800102128A40F90000000800000001000000080000000013D7ECF70000000007800102128A40F9078000FC000000060000000600000001128A7CF900000001078000FC00000008000000050F878D050280010013D7B0F707800102128A40F9078000FC00000008128A410700000003067ECE890000000812EA9508000000080000000400000001128A7CF900000001078000FC00000008000000050000000013D7ECF70000000007800102128A40F9078000FC128A7D07067ECE890000000612EA95080DE7CA040E5FD905000000020000000600000005000000040000000300000005000000010000000500000002000000040000000200000003135D4507000000030CFD9C050F34D10400000002000000050F350D0404548A091386710800000004000000051386AD080C9A87040F875105000000020000000A00000005000000040000000200000000135D80F70000000005000102135D44F9050000FC135D81070CFD9C050F34D1040000000204548A09000000061386AD0807800100128A40F70280010200000006000000050000000000000005000000040F350D04000000060000000200000003135D4507000000030CFD9C050F34D10400000002000000050F350D04000000060000000200000001135D80F900000001050000FC135D81070CFD9C050F34D10400000002000000050F350D0404548A091386710800000004000000051386AD080C9A87040F8751050000000207800100128A40F707800102000000060000000500000000000000050000000500000004000000020000000300000005"
theorem small_7002790_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7002790_left_root small_7002790_left_fuel small_7002790_left_count small_7002790_left_encoded = true := by
  decide +kernel
theorem small_7002790_left_covered : CoveredBy scale carrier boxes small_7002790_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7002790_left_root small_7002790_left_fuel small_7002790_left_count small_7002790_left_encoded small_7002790_left_checked

theorem cover_7002790 : CoveredBy scale carrier boxes root_7002790 := by
  apply coveredBy_split_literal root_7002790 small_7002790_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.root_7003530 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7002790_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.cover_7003530
#print axioms cover_7002790

def root_7002785 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7002785_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7002785_right_fuel : Nat := 1
def small_7002785_right_count : Nat := 1
def small_7002785_right_encoded : String := "00000002"
theorem small_7002785_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7002785_right_root small_7002785_right_fuel small_7002785_right_count small_7002785_right_encoded = true := by
  decide +kernel
theorem small_7002785_right_covered : CoveredBy scale carrier boxes small_7002785_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7002785_right_root small_7002785_right_fuel small_7002785_right_count small_7002785_right_encoded small_7002785_right_checked

theorem cover_7002785 : CoveredBy scale carrier boxes root_7002785 := by
  apply coveredBy_split_literal root_7002785 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.root_7002790 small_7002785_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483.cover_7002790
  · exact small_7002785_right_covered
#print axioms cover_7002785

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0483
