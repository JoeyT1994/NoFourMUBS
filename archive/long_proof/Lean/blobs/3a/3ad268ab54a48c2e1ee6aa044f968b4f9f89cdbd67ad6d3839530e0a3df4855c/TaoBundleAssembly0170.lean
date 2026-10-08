import TaoBundleAssembly0161
import TaoBundleAssembly0164
import TaoBundleAssembly0167
import TaoBundleAssembly0168
import TaoBundleAssembly0169
import TaoBundleChunkBatch0655
import TaoBundleChunkBatch0661
import TaoBundleChunkBatch0662
import TaoBundleChunkBatch0663
import TaoBundleChunkBatch0664
import TaoBundleChunkBatch0665
import TaoBundleChunkBatch0666
import TaoBundleChunkBatch0667
import TaoBundleChunkBatch0668
import TaoBundleChunkBatch0669
import TaoBundleChunkBatch0670
import TaoBundleChunkBatch0671
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170
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
  apply coveredBy_split_literal root_7027855 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7027860 small_7027855_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7027860
  · exact small_7027855_right_covered
#print axioms cover_7027855

def root_7025367 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7025367 : CoveredBy scale carrier boxes root_7025367 := by
  apply coveredBy_split_literal root_7025367 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2641.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7027855 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2641.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7027855
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
  apply coveredBy_split_literal root_7025362 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7025367 small_7025362_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7025367
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
  apply coveredBy_split_literal root_7025361 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7025362 small_7025361_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7025362
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
  apply coveredBy_split_literal root_7025356 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7025361 small_7025356_right_root coord1 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7025361
  · exact small_7025356_right_covered
#print axioms cover_7025356

def root_7025355 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7025355 : CoveredBy scale carrier boxes root_7025355 := by
  apply coveredBy_split_literal root_7025355 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7025356 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2643.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7025356
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
  apply coveredBy_split_literal root_7025349 small_7025349_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7025355 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7025349_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7025355
#print axioms cover_7025349

def root_7003535 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7003535 : CoveredBy scale carrier boxes root_7003535 := by
  apply coveredBy_split_literal root_7003535 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0169.root_7003536 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7025349 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0169.cover_7003536
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7025349
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
  apply coveredBy_split_literal root_7003530 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7003535 small_7003530_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7003535
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
  apply coveredBy_split_literal root_7002790 small_7002790_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7003530 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7002790_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7003530
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
  apply coveredBy_split_literal root_7002785 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7002790 small_7002785_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7002790
  · exact small_7002785_right_covered
#print axioms cover_7002785

def root_7001993 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7001993_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7001993_left_fuel : Nat := 26
def small_7001993_left_count : Nat := 375
def small_7001993_left_encoded : String := "120701040000000208A91309120701080000000405000100135D44F705000102135D44F9050000FC135D810704548A05000000090000000900000003000000050000000100000005000000000000000512073D0805000100135D44F705000102135D44F9050000FC135D810704548A0513867104000000020CFD9C090F34D108000000040280010000000007000000090F350D0800000007000000041386AD040CFD9C090F34D108000000040280010013D7B0F70280010213D7B0F9078000FC128A7D07067ECE850000000712EA95040AD35789000000090000000A0000000200000003128A410700000003067ECE850000000712EA95040AD3578910D101080000000401400100000000070000000910D13D080000000700000004000000020000000113D7ECF900000001078000FC128A7D070000000900000003000000070000000013D7ECF7000000000280010213D7B0F9078000FC128A7D070000000900000003128A410700000003067ECE850000000A12EA95040AD3578910D10108000000040000000510D13D0803C001000000000A0000000500000004000000020000000113D7ECF900000001078000FC00000009000000050F350D080C9A87080F87510900000004000000070F878D09028001000000000713D7ECF7000000000280010213D7B0F9078000FC0000000A000000070000000113D7ECF900000001078000FC000000070000000700000004000000040000000200000003135D45070000000304548A0513867104000000020CFD9C0900000007000000071386AD040CFD9C090F34D108000000040280010013D7B0F70280010213D7B0F9028000FC13D7ED07067ECE850000000712EA95040AD3578910D10108000000040000000500000007000000020000000300000005000000010000000500000000000000050F350D080C9A8708000000070F878D09028001000000000713D7ECF7000000000280010213D7B0F9028000FC0000000700000005000000010000000500000004000000040000000200000001135D80F900000001050000FC135D810704548A051386710400000002000000071386AD040CFD9C090F34D108000000040280010000000007000000050F350D0800000007000000040000000200000003135D45070000000304548A05000000071386AD040CFD9C090F34D10800000004000000050F350D0800000007000000040000000200000000135D80F70000000005000102135D44F9050000FC135D810704548A0513867104000000020CFD9C090F34D10800000004000000050F350D080C9A87080F87510900000004000000070F878D09078001000000000A0000000500000004000000041386AD040CFD9C090F34D1080000000407800100128A40F70280010213D7B0F9078000FC0000000900000005000000010000000500000000000000050F350D080C9A87080F8751090000000407800100128A40F70280010213D7B0F90000000A0000000113D7ECF900000001078000FC000000070000000700000000128A7CF700000000028001020000000A13D7ECF900000001078000FC0000000A000000050F878D0907800100128A40F70280010213D7B0F9078000FC0000000A128A410700000003067ECE850000000A12EA95040000000A000000020000000113D7ECF900000001078000FC128A7D07067ECE850000000712EA95040DE7CA080E5FD90900000004000000070000000500000002000000030000000500000000128A7CF7000000000280010213D7B0F9078000FC0000000A00000005000000010000000500000004000000040000000200000003135D45070000000304548A051386710400000002000000051386AD040CFD9C090F34D10800000004000000050F350D080C9A87080F875109000000040000000800000005000000040000000200000001135D80F900000001050000FC135D810704548A051386710400000002000000051386AD040CFD9C090F34D10800000004000000050F350D080C9A87080F87510900000004078001000000000700000005000000050000000400000002000000030000000500000004"
theorem small_7001993_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7001993_left_root small_7001993_left_fuel small_7001993_left_count small_7001993_left_encoded = true := by
  decide +kernel
theorem small_7001993_left_covered : CoveredBy scale carrier boxes small_7001993_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7001993_left_root small_7001993_left_fuel small_7001993_left_count small_7001993_left_encoded small_7001993_left_checked

theorem cover_7001993 : CoveredBy scale carrier boxes root_7001993 := by
  apply coveredBy_split_literal root_7001993 small_7001993_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7002785 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7001993_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7002785
#print axioms cover_7001993

def root_7001988 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7001988_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7001988_right_fuel : Nat := 1
def small_7001988_right_count : Nat := 1
def small_7001988_right_encoded : String := "00000004"
theorem small_7001988_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7001988_right_root small_7001988_right_fuel small_7001988_right_count small_7001988_right_encoded = true := by
  decide +kernel
theorem small_7001988_right_covered : CoveredBy scale carrier boxes small_7001988_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7001988_right_root small_7001988_right_fuel small_7001988_right_count small_7001988_right_encoded small_7001988_right_checked

theorem cover_7001988 : CoveredBy scale carrier boxes root_7001988 := by
  apply coveredBy_split_literal root_7001988 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7001993 small_7001988_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7001993
  · exact small_7001988_right_covered
#print axioms cover_7001988

def root_7001194 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7001194_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7001194_left_fuel : Nat := 26
def small_7001194_left_count : Nat := 377
def small_7001194_left_encoded : String := "1151E9090000000408A9130512070104000000020500010000000007135D80F70000000005000102135D44F9050000FC135D81070500010800000007135D810904548A05000000071386AD040780010000000007128A7CF700000000028001020000000800000008000000020000000400000003135D45070000000305000108000000070000000800000001135D80F900000001050000FC135D810700000007000000030000000712073D0405000100135D44F705000102135D44F9050000FC135D81070500010800000009135D81090CFD9C050F34D10400000002028001000000000713D7ECF7000000000280010213D7B0F9078000FC128A7D070780010800000005128A7D090AD3578500000005000000090000000400000003000000070000000113D7ECF900000001078000FC00000007000000070000000900000004000000030000000900000001135D80F900000001050000FC135D810705000108135D4509000000040CFD9C050000000700000009135D81090CFD9C050F34D10400000002000000070F350D040C9A8704000000090F878D05028001000000000913D7ECF7000000000780010200000009128A7CF9000000010000000600000002000000020000000400000003135D4507000000030500010800000007135D81090CFD9C050F34D1040000000200000007000000090000000400000000135D80F70000000005000102135D44F9050000FC135D810705000108135D4509000000040CFD9C050F34D1040000000207800100000000070000000800000009135D81090CFD9C050F34D1040000000207800100128A40F70280010213D7B0F9078000FC128A7D0707800108128A41090000000400000008128A7D090AD357850000000810D13D0400000008000000020000000400000003000000080000000113D7ECF900000001078000FC128A7D070780010800000007128A7D090AD357850000000710D13D0400000008000000020000000400000003128A4107000000030000000800000000128A7CF7000000000280010213D7B0F9078000FC128A7D070000000800000003000000080000000113D7ECF900000001078000FC128A7D0707800108000000080000000800000003000000080F350D040C9A8704000000090F878D050780010000000009128A7CF700000000028001020000000813D7ECF900000001078000FC128A7D0700000008000000030000000800000002000000020000000400000003135D4507000000030500010800000009135D81090CFD9C0500000008000000090000000400000001135D80F900000001050000FC135D810705000108135D4509000000040CFD9C050F34D10400000002000000070F350D040C9A8704000000090F878D050780010000000009000000080000000200000002135D81090CFD9C050F34D1040000000207800100128A40F707800102128A40F9078000FC128A7D070780010800000006128A7D090AD35785000000060000000600000004000000030000000700000001128A7CF900000001078000FC000000060000000600000000128A7CF70000000007800102128A40F9078000FC128A7D0700000008000000030000000800000001128A7CF900000001078000FC128A7D070000000800000003000000080F350D040C9A87040F8751050000000207800100128A40F70000000900000000128A7CF7000000000780010200000008128A7CF900000001000000080F878D0507800100128A40F707800102128A40F9078000FC128A7D070780010800000006128A7D090DE7CA04000000080E601505000000060000000200000004000000030000000800000001128A7CF900000001078000FC000000060000000800000000128A7CF70000000007800102128A40F9078000FC128A7D0700000008000000030000000800000001128A7CF900000001078000FC128A7D0700000008000000030000000800000002000000020000000400000003135D45070000000305000108135D45090000000400000008135D81090CFD9C05000000080F350D040C9A8704000000080F878D050000000800000002000000020000000400000002"
theorem small_7001194_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7001194_left_root small_7001194_left_fuel small_7001194_left_count small_7001194_left_encoded = true := by
  decide +kernel
theorem small_7001194_left_covered : CoveredBy scale carrier boxes small_7001194_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7001194_left_root small_7001194_left_fuel small_7001194_left_count small_7001194_left_encoded small_7001194_left_checked

theorem cover_7001194 : CoveredBy scale carrier boxes root_7001194 := by
  apply coveredBy_split_literal root_7001194 small_7001194_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7001988 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7001194_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7001988
#print axioms cover_7001194

def root_7001188 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7001188_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7001188_left_fuel : Nat := 1
def small_7001188_left_count : Nat := 1
def small_7001188_left_encoded : String := "00000003"
theorem small_7001188_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7001188_left_root small_7001188_left_fuel small_7001188_left_count small_7001188_left_encoded = true := by
  decide +kernel
theorem small_7001188_left_covered : CoveredBy scale carrier boxes small_7001188_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7001188_left_root small_7001188_left_fuel small_7001188_left_count small_7001188_left_encoded small_7001188_left_checked

theorem cover_7001188 : CoveredBy scale carrier boxes root_7001188 := by
  apply coveredBy_split_literal root_7001188 small_7001188_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7001194 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7001188_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7001194
#print axioms cover_7001188

def root_6965782 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6965782 : CoveredBy scale carrier boxes root_6965782 := by
  apply coveredBy_split_literal root_6965782 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0169.root_6965783 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7001188 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0169.cover_6965783
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7001188
#print axioms cover_6965782

def root_6965777 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6965777_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6965777_right_fuel : Nat := 1
def small_6965777_right_count : Nat := 1
def small_6965777_right_encoded : String := "00000002"
theorem small_6965777_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6965777_right_root small_6965777_right_fuel small_6965777_right_count small_6965777_right_encoded = true := by
  decide +kernel
theorem small_6965777_right_covered : CoveredBy scale carrier boxes small_6965777_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6965777_right_root small_6965777_right_fuel small_6965777_right_count small_6965777_right_encoded small_6965777_right_checked

theorem cover_6965777 : CoveredBy scale carrier boxes root_6965777 := by
  apply coveredBy_split_literal root_6965777 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_6965782 small_6965777_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_6965782
  · exact small_6965777_right_covered
#print axioms cover_6965777

def root_6962997 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6962997 : CoveredBy scale carrier boxes root_6962997 := by
  apply coveredBy_split_literal root_6962997 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2620.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_6965777 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2620.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_6965777
#print axioms cover_6962997

def root_6962992 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6962992_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6962992_right_fuel : Nat := 1
def small_6962992_right_count : Nat := 1
def small_6962992_right_encoded : String := "00000001"
theorem small_6962992_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6962992_right_root small_6962992_right_fuel small_6962992_right_count small_6962992_right_encoded = true := by
  decide +kernel
theorem small_6962992_right_covered : CoveredBy scale carrier boxes small_6962992_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6962992_right_root small_6962992_right_fuel small_6962992_right_count small_6962992_right_encoded small_6962992_right_checked

theorem cover_6962992 : CoveredBy scale carrier boxes root_6962992 := by
  apply coveredBy_split_literal root_6962992 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_6962997 small_6962992_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_6962997
  · exact small_6962992_right_covered
#print axioms cover_6962992

def root_7033908 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7033908_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7033908_left_fuel : Nat := 24
def small_7033908_left_count : Nat := 267
def small_7033908_left_encoded : String := "1151E9090000000408A912F912073D0208A91307120700FC05000100135D44F70500010400000005135D81050500010800000005135D81090CFD9BF90000000500000006000000040000000200000000135D80F70000000005000104135D4505000000020500010800000005135D81090CFD9BF9000000050F34D102000000010000000600000004135D81050500010800000006135D81090CFD9BF90F350D0204548A07000000051386ACFC000000030C9A87020000000500000006000000010F34D102000000010000000600000004000000020000000312073CFC0000000305000100135D44F705000104135D45050000000205000108135D4509000000040CFD9BF90F350D02000000050000000100000006135D81090CFD9BF90F350D020CFD9C070F34D0FC00000005000000030F350CFC000000030C9A87020F8750F900000005000000010000000A000000010F34D102000000010CFD9C070000000A0000000600000004135D81050500010800000006135D81090CFD9BF90F350D020CFD9C070F34D0FC00000006000000030F350CFC000000030C9A87020F8750F90C9A86FC000000060F87510700000003000000090000000100000006000000010F34D1020000000100000006000000040000000200000000135D80F70000000005000104135D45050000000205000108135D4509000000040CFD9BF90F350D020CFD9C070F34D0FC00000005000000030F350CFC000000030C9A87020000000900000006000000010F34D1020000000100000006135D81090CFD9BF90F350D020CFD9C070F34D0FC0C9A8702000000050F878CF9000000010780010000000005128A7CF700000000028001040000000500000006000000030F350CFC000000030C9A87020F8750F90C9A86FC0F878D0707800100000000050000000A0000000300000009000000010F878CF9000000010000000A000000010F34D102000000010CFD9C070F34D0FC00000006000000030F350CFC000000030000000A00000004135D810505000108135D4509000000040CFD9BF90F350D020CFD9C070F34D0FC0000000600000003000000060000000100000006135D81090CFD9BF90F350D020CFD9C070F34D0FC0C9A87020F8750F90780010000000005128A7CF7000000000780010400000005000000060000000100000006000000030F350CFC000000030C9A87020F8750F90C9A86FC0F878D0707800100128A40F707800104128A410500000002000000060000000600000000128A7CF70000000007800104128A4105000000020000000A00000006000000030F87510700000003078001000000000A128A7CF700000000078001040000000A0000000A000000010F878CF9000000010C9A86FC000000060F8751070000000300000006000000010F34D1020000000100000006000000040000000200000001120701020000000108A91307120700FC000000060000000300000006"
theorem small_7033908_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7033908_left_root small_7033908_left_fuel small_7033908_left_count small_7033908_left_encoded = true := by
  decide +kernel
theorem small_7033908_left_covered : CoveredBy scale carrier boxes small_7033908_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7033908_left_root small_7033908_left_fuel small_7033908_left_count small_7033908_left_encoded small_7033908_left_checked

theorem cover_7033908 : CoveredBy scale carrier boxes root_7033908 := by
  apply coveredBy_split_literal root_7033908 small_7033908_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2644.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7033908_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2644.covered
#print axioms cover_7033908

def root_7033903 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7033903_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7033903_right_fuel : Nat := 1
def small_7033903_right_count : Nat := 1
def small_7033903_right_encoded : String := "00000003"
theorem small_7033903_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7033903_right_root small_7033903_right_fuel small_7033903_right_count small_7033903_right_encoded = true := by
  decide +kernel
theorem small_7033903_right_covered : CoveredBy scale carrier boxes small_7033903_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7033903_right_root small_7033903_right_fuel small_7033903_right_count small_7033903_right_encoded small_7033903_right_checked

theorem cover_7033903 : CoveredBy scale carrier boxes root_7033903 := by
  apply coveredBy_split_literal root_7033903 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7033908 small_7033903_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7033908
  · exact small_7033903_right_covered
#print axioms cover_7033903

def root_7033902 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7033902_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7033902_right_fuel : Nat := 22
def small_7033902_right_count : Nat := 473
def small_7033902_right_encoded : String := "1151E907000000030A0001081151E9090000000408A912F912073D0205000100135D44F705000104135D450500000002050000FC135D81070500010800000009135D81090000000A000000040000000300000009135D8105050000FC135D81070500010800000006135D81090CFD9BF90000000A0F34D102000000010000000600000004000000030000000A0000000200000000135D80F70000000005000104135D450500000002050000FC135D8107050001080000000A135D81090000000A00000004000000030000000A135D8105050000FC135D810705000108135D4509000000040CFD9BF90000000A00000006135D81090CFD9BF90F350D020C9A87020F8750F90000000A000000010000000A000000010F34D102000000010000000600000004000000030000000A0000000200000001120701020000000105000100135D44F705000104135D4505000000020000000A0000000600000000135D80F700000000050001040000000A000000061152250908A912F912073D0208A91309120701080000000405000100135D44F705000104135D450500000002050000FC135D81070CFD9BF90F350D0204548A09000000061386AD080000000A00000004000000010F34D1020000000104548A09000000080000000A00000003135D4507000000030CFD9BF90000000A0F34D1020000000104548A0913867108000000040000000500000005135D8105050000FC135D81070CFD9BF90F350D0204548A0913867108000000040C9A870200000008000000081386AD080C9A87020F8750F90000000A000000010000000A00000004000000010F34D1020000000104548A090000000A1386AD080000000A0000000400000003135D4507000000030CFD9BF90000000A0F34D10200000001000000050000000200000000135D80F70000000005000104135D450500000002050000FC135D81070CFD9BF90000000A0F34D102000000010000000A000000030000000A135D8105050000FC135D81070CFD9BF90F350D0204548A090000000A1386AD080C9A87020F8750F90000000A000000010000000500000004000000010F34D102000000010000000500000003000000050000000212073D0805000100135D44F705000104135D450500000002050000FC135D81070CFD9BF90F350D020CFD9C090F34D108000000040C9A87020F8750F90000000A000000010000000A0F350D080000000A00000004000000010F34D102000000010CFD9C090000000A0F350D080000000A0000000400000003135D4507000000030CFD9BF90000000A0F34D102000000010000000A135D8105050000FC135D81070CFD9BF90F350D020CFD9C090F34D108000000040C9A87020F8750F9028001000000000A0000000A000000010000000A0F350D080C9A87020F8750F90C9A87080000000A0F878D090000000A00000004000000010F878CF9000000010000000A00000004000000010F34D102000000010CFD9C090F34D10800000004028001000000000A000000050F350D080000000A0000000400000003135D4507000000030CFD9BF90F350D020CFD9C090000000A0F350D080000000A00000004000000010F34D102000000010000000A0000000200000000135D80F70000000005000104135D450500000002050000FC135D81070CFD9BF90F350D020CFD9C090000000A0F350D080000000A00000004000000010F34D102000000010000000A00000003135D4507000000030CFD9BF90000000A0000000A135D8105050000FC135D81070CFD9BF90F350D020CFD9C090F34D108000000040C9A87020F8750F9078001000000000A0000000A000000010000000A0F350D080C9A87020F8750F90C9A87080000000A0F878D090000000A00000004000000010F878CF9000000010000000A00000004000000010F34D102000000010CFD9C090000000A0F350D080000000A0000000400000003135D4507000000030CFD9BF90000000A0F34D1020000000100000005000000020000000400000001120701020000000108A91309120701080000000405000100135D44F705000104135D450500000002050000FC135D8107045489F91386AD0204548A09000000081386AD080280010000000008000000050000000400000001138671020000000100000005000000030000000500000005000000000000000512073D0805000100135D44F705000104135D450500000002050000FC135D8107045489F91386AD020CFD9C090F34D108000000040280010013D7B0F70000000A000000000000000A0F350D080000000A000000040000000113867102000000010CFD9C090F34D10800000004000000050F350D08000000060000000400000003135D450700000003045489F90000000A138671020000000100000005135D8105050000FC135D8107045489F91386AD020CFD9C090F34D10800000004000000050F350D0800000006000000040000000113867102000000010CFD9C09000000070000000500000003000000050000000200000000135D80F70000000005000104135D450500000002050000FC135D8107045489F90000000A1386710200000001000000050000000300000005000000050000000400000004"
theorem small_7033902_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7033902_right_root small_7033902_right_fuel small_7033902_right_count small_7033902_right_encoded = true := by
  decide +kernel
theorem small_7033902_right_covered : CoveredBy scale carrier boxes small_7033902_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7033902_right_root small_7033902_right_fuel small_7033902_right_count small_7033902_right_encoded small_7033902_right_checked

theorem cover_7033902 : CoveredBy scale carrier boxes root_7033902 := by
  apply coveredBy_split_literal root_7033902 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7033903 small_7033902_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7033903
  · exact small_7033902_right_covered
#print axioms cover_7033902

def root_7033896 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7033896_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7033896_left_fuel : Nat := 1
def small_7033896_left_count : Nat := 1
def small_7033896_left_encoded : String := "00000002"
theorem small_7033896_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7033896_left_root small_7033896_left_fuel small_7033896_left_count small_7033896_left_encoded = true := by
  decide +kernel
theorem small_7033896_left_covered : CoveredBy scale carrier boxes small_7033896_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7033896_left_root small_7033896_left_fuel small_7033896_left_count small_7033896_left_encoded small_7033896_left_checked

theorem cover_7033896 : CoveredBy scale carrier boxes root_7033896 := by
  apply coveredBy_split_literal root_7033896 small_7033896_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7033902 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7033896_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7033902
#print axioms cover_7033896

def root_7038476 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7038476 : CoveredBy scale carrier boxes root_7038476 := by
  apply coveredBy_split_literal root_7038476 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2645.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2646.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2645.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2646.covered
#print axioms cover_7038476

def root_7038471 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7038471_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7038471_right_fuel : Nat := 1
def small_7038471_right_count : Nat := 1
def small_7038471_right_encoded : String := "00000002"
theorem small_7038471_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7038471_right_root small_7038471_right_fuel small_7038471_right_count small_7038471_right_encoded = true := by
  decide +kernel
theorem small_7038471_right_covered : CoveredBy scale carrier boxes small_7038471_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7038471_right_root small_7038471_right_fuel small_7038471_right_count small_7038471_right_encoded small_7038471_right_checked

theorem cover_7038471 : CoveredBy scale carrier boxes root_7038471 := by
  apply coveredBy_split_literal root_7038471 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7038476 small_7038471_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7038476
  · exact small_7038471_right_covered
#print axioms cover_7038471

def root_7033895 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7033895 : CoveredBy scale carrier boxes root_7033895 := by
  apply coveredBy_split_literal root_7033895 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7033896 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7038471 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7033896
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7038471
#print axioms cover_7033895

def root_7033889 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7033889_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7033889_left_fuel : Nat := 1
def small_7033889_left_count : Nat := 1
def small_7033889_left_encoded : String := "00000001"
theorem small_7033889_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7033889_left_root small_7033889_left_fuel small_7033889_left_count small_7033889_left_encoded = true := by
  decide +kernel
theorem small_7033889_left_covered : CoveredBy scale carrier boxes small_7033889_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7033889_left_root small_7033889_left_fuel small_7033889_left_count small_7033889_left_encoded small_7033889_left_checked

theorem cover_7033889 : CoveredBy scale carrier boxes root_7033889 := by
  apply coveredBy_split_literal root_7033889 small_7033889_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7033895 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7033889_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7033895
#print axioms cover_7033889

def root_6962991 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6962991 : CoveredBy scale carrier boxes root_6962991 := by
  apply coveredBy_split_literal root_6962991 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_6962992 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7033889 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_6962992
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7033889
#print axioms cover_6962991

def root_6962986 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6962986_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6962986_right_fuel : Nat := 1
def small_6962986_right_count : Nat := 1
def small_6962986_right_encoded : String := "00000000"
theorem small_6962986_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6962986_right_root small_6962986_right_fuel small_6962986_right_count small_6962986_right_encoded = true := by
  decide +kernel
theorem small_6962986_right_covered : CoveredBy scale carrier boxes small_6962986_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6962986_right_root small_6962986_right_fuel small_6962986_right_count small_6962986_right_encoded small_6962986_right_checked

theorem cover_6962986 : CoveredBy scale carrier boxes root_6962986 := by
  apply coveredBy_split_literal root_6962986 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_6962991 small_6962986_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_6962991
  · exact small_6962986_right_covered
#print axioms cover_6962986

def root_7044004 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7044004 : CoveredBy scale carrier boxes root_7044004 := by
  apply coveredBy_split_literal root_7044004 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2648.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2649.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2648.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2649.covered
#print axioms cover_7044004

def root_7043999 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7043999_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7043999_right_fuel : Nat := 1
def small_7043999_right_count : Nat := 1
def small_7043999_right_encoded : String := "00000003"
theorem small_7043999_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7043999_right_root small_7043999_right_fuel small_7043999_right_count small_7043999_right_encoded = true := by
  decide +kernel
theorem small_7043999_right_covered : CoveredBy scale carrier boxes small_7043999_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7043999_right_root small_7043999_right_fuel small_7043999_right_count small_7043999_right_encoded small_7043999_right_checked

theorem cover_7043999 : CoveredBy scale carrier boxes root_7043999 := by
  apply coveredBy_split_literal root_7043999 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7044004 small_7043999_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7044004
  · exact small_7043999_right_covered
#print axioms cover_7043999

def root_7043998 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7043998 : CoveredBy scale carrier boxes root_7043998 := by
  apply coveredBy_split_literal root_7043998 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7043999 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2650.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7043999
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2650.covered
#print axioms cover_7043998

def root_7043993 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7043993_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7043993_right_fuel : Nat := 1
def small_7043993_right_count : Nat := 1
def small_7043993_right_encoded : String := "00000002"
theorem small_7043993_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7043993_right_root small_7043993_right_fuel small_7043993_right_count small_7043993_right_encoded = true := by
  decide +kernel
theorem small_7043993_right_covered : CoveredBy scale carrier boxes small_7043993_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7043993_right_root small_7043993_right_fuel small_7043993_right_count small_7043993_right_encoded small_7043993_right_checked

theorem cover_7043993 : CoveredBy scale carrier boxes root_7043993 := by
  apply coveredBy_split_literal root_7043993 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7043998 small_7043993_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7043998
  · exact small_7043993_right_covered
#print axioms cover_7043993

def root_7042465 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7042465 : CoveredBy scale carrier boxes root_7042465 := by
  apply coveredBy_split_literal root_7042465 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2647.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7043993 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2647.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7043993
#print axioms cover_7042465

def root_7042460 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7042460_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7042460_right_fuel : Nat := 1
def small_7042460_right_count : Nat := 1
def small_7042460_right_encoded : String := "00000001"
theorem small_7042460_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7042460_right_root small_7042460_right_fuel small_7042460_right_count small_7042460_right_encoded = true := by
  decide +kernel
theorem small_7042460_right_covered : CoveredBy scale carrier boxes small_7042460_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7042460_right_root small_7042460_right_fuel small_7042460_right_count small_7042460_right_encoded small_7042460_right_checked

theorem cover_7042460 : CoveredBy scale carrier boxes root_7042460 := by
  apply coveredBy_split_literal root_7042460 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7042465 small_7042460_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7042465
  · exact small_7042460_right_covered
#print axioms cover_7042460

def root_7051005 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7051005 : CoveredBy scale carrier boxes root_7051005 := by
  apply coveredBy_split_literal root_7051005 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2651.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2652.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2651.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2652.covered
#print axioms cover_7051005

def root_7050999 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7050999_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7050999_left_fuel : Nat := 1
def small_7050999_left_count : Nat := 1
def small_7050999_left_encoded : String := "00000001"
theorem small_7050999_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7050999_left_root small_7050999_left_fuel small_7050999_left_count small_7050999_left_encoded = true := by
  decide +kernel
theorem small_7050999_left_covered : CoveredBy scale carrier boxes small_7050999_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7050999_left_root small_7050999_left_fuel small_7050999_left_count small_7050999_left_encoded small_7050999_left_checked

theorem cover_7050999 : CoveredBy scale carrier boxes root_7050999 := by
  apply coveredBy_split_literal root_7050999 small_7050999_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7051005 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7050999_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7051005
#print axioms cover_7050999

def root_7042459 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7042459 : CoveredBy scale carrier boxes root_7042459 := by
  apply coveredBy_split_literal root_7042459 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7042460 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7050999 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7042460
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7050999
#print axioms cover_7042459

def root_7042453 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7042453_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7042453_left_fuel : Nat := 1
def small_7042453_left_count : Nat := 1
def small_7042453_left_encoded : String := "00000000"
theorem small_7042453_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7042453_left_root small_7042453_left_fuel small_7042453_left_count small_7042453_left_encoded = true := by
  decide +kernel
theorem small_7042453_left_covered : CoveredBy scale carrier boxes small_7042453_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7042453_left_root small_7042453_left_fuel small_7042453_left_count small_7042453_left_encoded small_7042453_left_checked

theorem cover_7042453 : CoveredBy scale carrier boxes root_7042453 := by
  apply coveredBy_split_literal root_7042453 small_7042453_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7042459 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7042453_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7042459
#print axioms cover_7042453

def root_6962985 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6962985 : CoveredBy scale carrier boxes root_6962985 := by
  apply coveredBy_split_literal root_6962985 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_6962986 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7042453 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_6962986
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7042453
#print axioms cover_6962985

def root_6957103 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6957103 : CoveredBy scale carrier boxes root_6957103 := by
  apply coveredBy_split_literal root_6957103 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0168.root_6957104 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_6962985 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0168.cover_6957104
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_6962985
#print axioms cover_6957103

def root_6921607 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6921607 : CoveredBy scale carrier boxes root_6921607 := by
  apply coveredBy_split_literal root_6921607 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0168.root_6921608 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_6957103 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0168.cover_6921608
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_6957103
#print axioms cover_6921607

def root_6815211 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6815211 : CoveredBy scale carrier boxes root_6815211 := by
  apply coveredBy_split_literal root_6815211 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6815212 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_6921607 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6815212
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_6921607
#print axioms cover_6815211

def root_7056555 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7056555 : CoveredBy scale carrier boxes root_7056555 := by
  apply coveredBy_split_literal root_7056555 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2653.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2654.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2653.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2654.covered
#print axioms cover_7056555

def root_7060824 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7060824 : CoveredBy scale carrier boxes root_7060824 := by
  apply coveredBy_split_literal root_7060824 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2655.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2656.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2655.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2656.covered
#print axioms cover_7060824

def root_7056554 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7056554 : CoveredBy scale carrier boxes root_7056554 := by
  apply coveredBy_split_literal root_7056554 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7056555 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7060824 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7056555
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7060824
#print axioms cover_7056554

def root_7056553 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7056553 : CoveredBy scale carrier boxes root_7056553 := by
  apply coveredBy_split_literal root_7056553 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7056554 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2657.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7056554
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2657.covered
#print axioms cover_7056553

def root_7067902 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7067902 : CoveredBy scale carrier boxes root_7067902 := by
  apply coveredBy_split_literal root_7067902 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2659.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2660.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2659.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2660.covered
#print axioms cover_7067902

def root_7067896 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7067896_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7067896_left_fuel : Nat := 1
def small_7067896_left_count : Nat := 1
def small_7067896_left_encoded : String := "00000000"
theorem small_7067896_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7067896_left_root small_7067896_left_fuel small_7067896_left_count small_7067896_left_encoded = true := by
  decide +kernel
theorem small_7067896_left_covered : CoveredBy scale carrier boxes small_7067896_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7067896_left_root small_7067896_left_fuel small_7067896_left_count small_7067896_left_encoded small_7067896_left_checked

theorem cover_7067896 : CoveredBy scale carrier boxes root_7067896 := by
  apply coveredBy_split_literal root_7067896 small_7067896_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7067902 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7067896_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7067902
#print axioms cover_7067896

def root_7065478 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7065478 : CoveredBy scale carrier boxes root_7065478 := by
  apply coveredBy_split_literal root_7065478 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2658.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7067896 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2658.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7067896
#print axioms cover_7065478

def root_7065477 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7065477 : CoveredBy scale carrier boxes root_7065477 := by
  apply coveredBy_split_literal root_7065477 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7065478 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2661.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7065478
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2661.covered
#print axioms cover_7065477

def root_7065476 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7065476 : CoveredBy scale carrier boxes root_7065476 := by
  apply coveredBy_split_literal root_7065476 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7065477 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2662.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7065477
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2662.covered
#print axioms cover_7065476

def root_7056552 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7056552 : CoveredBy scale carrier boxes root_7056552 := by
  apply coveredBy_split_literal root_7056552 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7056553 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7065476 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7056553
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7065476
#print axioms cover_7056552

def root_6815210 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6815210 : CoveredBy scale carrier boxes root_6815210 := by
  apply coveredBy_split_literal root_6815210 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_6815211 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7056552 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_6815211
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7056552
#print axioms cover_6815210

def root_6684590 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6684590 : CoveredBy scale carrier boxes root_6684590 := by
  apply coveredBy_split_literal root_6684590 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6684591 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_6815210 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6684591
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_6815210
#print axioms cover_6684590

def root_6455930 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6455930 : CoveredBy scale carrier boxes root_6455930 := by
  apply coveredBy_split_literal root_6455930 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0161.root_6455931 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_6684590 coord2 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0161.cover_6455931
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_6684590
#print axioms cover_6455930

def root_7075999 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7075999 : CoveredBy scale carrier boxes root_7075999 := by
  apply coveredBy_split_literal root_7075999 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2663.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2664.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2663.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2664.covered
#print axioms cover_7075999

def root_7075998 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7075998 : CoveredBy scale carrier boxes root_7075998 := by
  apply coveredBy_split_literal root_7075998 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7075999 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2665.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7075999
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2665.covered
#print axioms cover_7075998

def root_7081856 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7081856_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7081856_right_fuel : Nat := 18
def small_7081856_right_count : Nat := 163
def small_7081856_right_encoded : String := "1151E8FD0A0001081151E8FF08A91303120701020000000108A912FB00000005120700FA05000100135D44F7050000FC135D80FD0000000305000108135D44FF000000090000000400000007135D44FD000000050000000300000000135D80F700000000050000FC135D80FD0000000305000108135D44FF000000070000000400000007135D44FD05000108135D44FF000000050000000400000005000000030000000212073D0208A912FB12073CFA0000000205000100135D44F7050000FC135D80FD0000000305000108135D44FF0CFD9C03000000050F350D02000000090000000100000004135D80FF000000040CFD9C030000000500000009135D44FD000000090000000300000000135D80F700000000050000FC135D80FD0000000305000108135D44FF0CFD9C03000000050000000600000004135D80FF000000040CFD9C03000000050F350D020CFD9BFB000000050000000600000001135D44FD05000108135D44FF0CFD9C03000000050F350D02000000060000000100000004135D80FF000000040CFD9C03000000050000000900000003120700FA050001000000000900000006000000020000000100000004115224FF0000000408A91303120701020000000108A912FB12073CFA0000000208A912FF12073D080500010000000009000000050000000400000009120700FA08A912FF000000091207010800000004000000090000000212073D0208A912FB12073CFA0000000208A912FF12073D080500010000000009135D80F700000000050000FC135D80FD000000030CFD9C030F34D102000000010CFD9BFB0F350CFA0000000200000005000000090F350D020000000900000001135D44FD00000009000000030000000400000009000000090000000100000003"
theorem small_7081856_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7081856_right_root small_7081856_right_fuel small_7081856_right_count small_7081856_right_encoded = true := by
  decide +kernel
theorem small_7081856_right_covered : CoveredBy scale carrier boxes small_7081856_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7081856_right_root small_7081856_right_fuel small_7081856_right_count small_7081856_right_encoded small_7081856_right_checked

theorem cover_7081856 : CoveredBy scale carrier boxes root_7081856 := by
  apply coveredBy_split_literal root_7081856 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2666.root small_7081856_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2666.covered
  · exact small_7081856_right_covered
#print axioms cover_7081856

def root_7081850 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7081850_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7081850_left_fuel : Nat := 1
def small_7081850_left_count : Nat := 1
def small_7081850_left_encoded : String := "00000002"
theorem small_7081850_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7081850_left_root small_7081850_left_fuel small_7081850_left_count small_7081850_left_encoded = true := by
  decide +kernel
theorem small_7081850_left_covered : CoveredBy scale carrier boxes small_7081850_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7081850_left_root small_7081850_left_fuel small_7081850_left_count small_7081850_left_encoded small_7081850_left_checked

theorem cover_7081850 : CoveredBy scale carrier boxes root_7081850 := by
  apply coveredBy_split_literal root_7081850 small_7081850_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7081856 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7081850_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7081856
#print axioms cover_7081850

def root_7081849 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7081849_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7081849_right_fuel : Nat := 20
def small_7081849_right_count : Nat := 217
def small_7081849_right_encoded : String := "1151E8FB0A0000FC115224FD000000030A0001081151E8FF08A91303120701020000000108A912FD00000005120700FC05000100135D44F7050000FA135D80FB00000002050001080000000800000007135D44FB000000050000000200000000135D80F700000000050000FA135D80FB00000002050001080000000800000007135D44FB00000008000000020000000312073D0208A912FD12073CFC0000000305000100135D44F7050000FA135D80FB0000000205000108135D44FF0CFD9C03000000050F350D02000000080000000100000004135D80FF000000040CFD9C03000000050000000A135D44FB0500010800000008135D80FF000000040CFD9C03000000050F350D0200000008000000010000000200000000135D80F700000000050000FA135D80FB0000000205000108135D44FF0CFD9C03000000050000000800000004135D80FF000000040CFD9C03000000050F350D020CFD9BFD000000050000000800000001135D44FB0500010800000008135D80FF000000040CFD9C03000000050000000800000002120700FC05000100135D44F70000000A0000000000000008000000030000000100000004115224FF0000000408A91303120701020000000108A912FD12073CFC0000000308A912FF12073D0805000100135D44F70000000500000000000000050000000412070108000000040500010000000006135D80F700000000050000FA0000000600000005120700FC08A912FF12073D08050001000000000A135D80F700000000050000FA0000000A135D44FB04548A03000000050000000A00000002000000041207010800000004000000060000000312073D0208A912FD12073CFC0000000308A912FF12073D0805000100135D44F7050000FA0000000A135D44FB0000000A0000000200000000135D80F700000000050000FA135D80FB000000020CFD9C030F34D102000000010CFD9BFD0F350CFC00000003000000050000000A0000000A135D44FB0CFD9C030F34D10200000001000000050000000A000000020000000412070108000000040000000A0000000A000000011151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A9130312070102000000010000000512073D0208A912FF12073D0805000100135D44F70000000500000000000000050000000400000009000000010000000300000002"
theorem small_7081849_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7081849_right_root small_7081849_right_fuel small_7081849_right_count small_7081849_right_encoded = true := by
  decide +kernel
theorem small_7081849_right_covered : CoveredBy scale carrier boxes small_7081849_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7081849_right_root small_7081849_right_fuel small_7081849_right_count small_7081849_right_encoded small_7081849_right_checked

theorem cover_7081849 : CoveredBy scale carrier boxes root_7081849 := by
  apply coveredBy_split_literal root_7081849 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7081850 small_7081849_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7081850
  · exact small_7081849_right_covered
#print axioms cover_7081849

def root_7081844 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7081844_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7081844_right_fuel : Nat := 1
def small_7081844_right_count : Nat := 1
def small_7081844_right_encoded : String := "00000001"
theorem small_7081844_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7081844_right_root small_7081844_right_fuel small_7081844_right_count small_7081844_right_encoded = true := by
  decide +kernel
theorem small_7081844_right_covered : CoveredBy scale carrier boxes small_7081844_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7081844_right_root small_7081844_right_fuel small_7081844_right_count small_7081844_right_encoded small_7081844_right_checked

theorem cover_7081844 : CoveredBy scale carrier boxes root_7081844 := by
  apply coveredBy_split_literal root_7081844 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7081849 small_7081844_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7081849
  · exact small_7081844_right_covered
#print axioms cover_7081844

def root_7081632 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7081632_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7081632_left_fuel : Nat := 19
def small_7081632_left_count : Nat := 103
def small_7081632_left_encoded : String := "1151E903000000010A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E8FF08A912FB12073CFA0000000208A912FD12073CFC0000000305000100135D44F7050001020000000A135D810305000108135D44FF0CFD9BFB0000000A00000006000000040000000A0000000100000000135D80F7000000000500010200000006135D81030500010800000006135D80FF000000040CFD9BFB0000000A00000006000000010000000A120700FA08A912FD00000006000000050000000200000004115224FF0000000408A912FB0000000A120700FA0000000A000000021151E8FD0A0001081151E8FF08A912FB12073CFA000000020500010000000009000000060000000600000004115224FF0000000400000009000000031151E8FB0A0000FC115224FD000000030A0001081151E8FF08A912FD12073CFC0000000305000100000000080000000800000008000000040000000A1151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A912FF12073D0805000100000000090000000900000004000000090000000300000002"
theorem small_7081632_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7081632_left_root small_7081632_left_fuel small_7081632_left_count small_7081632_left_encoded = true := by
  decide +kernel
theorem small_7081632_left_covered : CoveredBy scale carrier boxes small_7081632_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7081632_left_root small_7081632_left_fuel small_7081632_left_count small_7081632_left_encoded small_7081632_left_checked

theorem cover_7081632 : CoveredBy scale carrier boxes root_7081632 := by
  apply coveredBy_split_literal root_7081632 small_7081632_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7081844 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7081632_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7081844
#print axioms cover_7081632

def root_7081627 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7081627_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7081627_right_fuel : Nat := 1
def small_7081627_right_count : Nat := 1
def small_7081627_right_encoded : String := "00000000"
theorem small_7081627_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7081627_right_root small_7081627_right_fuel small_7081627_right_count small_7081627_right_encoded = true := by
  decide +kernel
theorem small_7081627_right_covered : CoveredBy scale carrier boxes small_7081627_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7081627_right_root small_7081627_right_fuel small_7081627_right_count small_7081627_right_encoded small_7081627_right_checked

theorem cover_7081627 : CoveredBy scale carrier boxes root_7081627 := by
  apply coveredBy_split_literal root_7081627 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7081632 small_7081627_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7081632
  · exact small_7081627_right_covered
#print axioms cover_7081627

def root_7088486 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7088486_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7088486_right_fuel : Nat := 27
def small_7088486_right_count : Nat := 339
def small_7088486_right_encoded : String := "12070108000000040CFD9BF70F350D0004548A0313867102000000010CFD9BFB0F350CFA000000020CFD9BFD0F350CFC0000000300000005000000060F34D0FA0CFD9BFD000000090F34D0FC045489FF1386AD080C9A8700000000060F878CF700000000022A45830000000600000009000000040000000600000003000000021386AD020CFD9BFB0F350CFA000000020CFD9BFD0F350CFC00000003045489FF00000005000000090F34D0FC045489FF1386AD080C9A87000000000A0F878CF7000000000C9A86FA0000000A0F8750FB00000005000000020000000400000006000000030F34D0FA0CFD9BFD000000090F34D0FC045489FF1386AD080C9A8700000000090F878CF700000000067ECE83000000090000000A0000000400000009000000030000000200000001000000000F34D1000000000004548A0313867102000000010CFD9BFB0F350CFA000000020CFD9BFD000000050F34D0FC00000006000000030F34D0FA0CFD9BFD0F350CFC00000003000000090F34D0FC045489FF1386AD080AD3577710D13D00022A458313E1C502000000010AD3577B000000050000000913E201020AD3577B10D13CFA000000020AD3577D000000050000000600000009000000010000000010D1010000000000022A458313E1C502000000010AD3577B0000000510D100FA000000070000000213E201020AD3577B10D13CFA000000020AD3577D000000050000000610D100FA0AD3577D0000000910D100FC000000070000000300000002000000010000000413867108000000040000000600000003000000021386AD020CFD9BFB0F350CFA000000020CFD9BFD0F350CFC00000003045489FF000000051386710800000004000000050F34D0FC045489FF1386AD080C9A86FA0F878CFB000000020AD3577710D13D00067ECE8312EA5902000000010000000512EA95020000000A000000010000000010D1010000000000067ECE8312EA5902000000010000000512EA95020AD3577D10D13CFC000000030000000510D100FC0000000A00000003000000010F8750FB00000005000000020000000413867108000000040C9A86FA0000000600000006000000030F34D0FA0CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FC0F878CFD000000030AD3577700000009000000090000000900000004000000090F34D0FC045489FF1386AD080AD3577710D13D00067ECE8312EA5902000000010AD3577B10D13CFA000000020AD3577D0000000910D100FC0000000A000000030000000912EA95020AD3577B10D13CFA000000020AD3577D000000090000000A00000009000000010000000010D1010000000000067ECE8312EA5902000000010AD3577B10D13CFA000000020AD3577D10D13CFC000000030000000510D100FC067ECE7F12EA950809BE353711777D000569AC4300000005134111020BE879BB0000000500000009000000010000000011774100000000000569AC430000000513411102000000080000000100000004000000060000000310D100FA0AD3577D0000000910D100FC067ECE7F12EA950809BE353700000009000000090000000400000007000000030000000212EA95020AD3577B10D13CFA000000020AD3577D10D13CFC00000003067ECE7F12EA950800000009000000040000000910D100FC067ECE7F12EA950809BE35370000000A11774100000000000793F0C3000000080000000A0000000412EA590800000004000000090000000310D100FA0AD3577D0000000910D100FC067ECE7F12EA950809BE3537000000090000000900000004000000090000000300000002000000010000000413867108000000040AD357770000000900000009000000030000000200000001"
theorem small_7088486_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7088486_right_root small_7088486_right_fuel small_7088486_right_count small_7088486_right_encoded = true := by
  decide +kernel
theorem small_7088486_right_covered : CoveredBy scale carrier boxes small_7088486_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7088486_right_root small_7088486_right_fuel small_7088486_right_count small_7088486_right_encoded small_7088486_right_checked

theorem cover_7088486 : CoveredBy scale carrier boxes root_7088486 := by
  apply coveredBy_split_literal root_7088486 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2669.root small_7088486_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2669.covered
  · exact small_7088486_right_covered
#print axioms cover_7088486

def root_7088480 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7088480_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7088480_left_fuel : Nat := 1
def small_7088480_left_count : Nat := 1
def small_7088480_left_encoded : String := "00000003"
theorem small_7088480_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7088480_left_root small_7088480_left_fuel small_7088480_left_count small_7088480_left_encoded = true := by
  decide +kernel
theorem small_7088480_left_covered : CoveredBy scale carrier boxes small_7088480_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7088480_left_root small_7088480_left_fuel small_7088480_left_count small_7088480_left_encoded small_7088480_left_checked

theorem cover_7088480 : CoveredBy scale carrier boxes root_7088480 := by
  apply coveredBy_split_literal root_7088480 small_7088480_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7088486 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7088480_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7088486
#print axioms cover_7088480

def root_7088479 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7088479 : CoveredBy scale carrier boxes root_7088479 := by
  apply coveredBy_split_literal root_7088479 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7088480 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2670.root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7088480
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2670.covered
#print axioms cover_7088479

def root_7088473 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7088473_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7088473_left_fuel : Nat := 1
def small_7088473_left_count : Nat := 1
def small_7088473_left_encoded : String := "00000002"
theorem small_7088473_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7088473_left_root small_7088473_left_fuel small_7088473_left_count small_7088473_left_encoded = true := by
  decide +kernel
theorem small_7088473_left_covered : CoveredBy scale carrier boxes small_7088473_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7088473_left_root small_7088473_left_fuel small_7088473_left_count small_7088473_left_encoded small_7088473_left_checked

theorem cover_7088473 : CoveredBy scale carrier boxes root_7088473 := by
  apply coveredBy_split_literal root_7088473 small_7088473_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7088479 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7088473_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7088479
#print axioms cover_7088473

def root_7101935 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7101935 : CoveredBy scale carrier boxes root_7101935 := by
  apply coveredBy_split_literal root_7101935 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2673.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2674.root coord3 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2673.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2674.covered
#print axioms cover_7101935

def root_7101930 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7101930_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7101930_right_fuel : Nat := 1
def small_7101930_right_count : Nat := 1
def small_7101930_right_encoded : String := "00000002"
theorem small_7101930_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7101930_right_root small_7101930_right_fuel small_7101930_right_count small_7101930_right_encoded = true := by
  decide +kernel
theorem small_7101930_right_covered : CoveredBy scale carrier boxes small_7101930_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7101930_right_root small_7101930_right_fuel small_7101930_right_count small_7101930_right_encoded small_7101930_right_checked

theorem cover_7101930 : CoveredBy scale carrier boxes root_7101930 := by
  apply coveredBy_split_literal root_7101930 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7101935 small_7101930_right_root coord2 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7101935
  · exact small_7101930_right_covered
#print axioms cover_7101930

def root_7099614 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7099614 : CoveredBy scale carrier boxes root_7099614 := by
  apply coveredBy_split_literal root_7099614 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2672.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7101930 coord2 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2672.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7101930
#print axioms cover_7099614

def root_7099608 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7099608_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7099608_left_fuel : Nat := 1
def small_7099608_left_count : Nat := 1
def small_7099608_left_encoded : String := "00000001"
theorem small_7099608_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7099608_left_root small_7099608_left_fuel small_7099608_left_count small_7099608_left_encoded = true := by
  decide +kernel
theorem small_7099608_left_covered : CoveredBy scale carrier boxes small_7099608_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7099608_left_root small_7099608_left_fuel small_7099608_left_count small_7099608_left_encoded small_7099608_left_checked

theorem cover_7099608 : CoveredBy scale carrier boxes root_7099608 := by
  apply coveredBy_split_literal root_7099608 small_7099608_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7099614 coord1 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_7099608_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7099614
#print axioms cover_7099608

def root_7099607 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7099607 : CoveredBy scale carrier boxes root_7099607 := by
  apply coveredBy_split_literal root_7099607 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7099608 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2675.root coord1 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7099608
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2675.covered
#print axioms cover_7099607

def root_7099601 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7099601_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7099601_left_fuel : Nat := 1
def small_7099601_left_count : Nat := 1
def small_7099601_left_encoded : String := "00000004"
theorem small_7099601_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7099601_left_root small_7099601_left_fuel small_7099601_left_count small_7099601_left_encoded = true := by
  decide +kernel
theorem small_7099601_left_covered : CoveredBy scale carrier boxes small_7099601_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7099601_left_root small_7099601_left_fuel small_7099601_left_count small_7099601_left_encoded small_7099601_left_checked

theorem cover_7099601 : CoveredBy scale carrier boxes root_7099601 := by
  apply coveredBy_split_literal root_7099601 small_7099601_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7099607 coord4 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_7099601_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7099607
#print axioms cover_7099601

def root_7099131 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7099131_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7099131_left_fuel : Nat := 20
def small_7099131_left_count : Nat := 225
def small_7099131_left_encoded : String := "0F8750FF022A458313E1C50200000001067ECE7B12EA94FA00000002067ECE7D12EA94FC000000030DE7CA000E5FD8F70B4D4408108010FF000000070000000410804CFF00000004011523430000000513F895020793F0BB000000050000000700000001000000000E6014F7000000000B4D4408108010FF0115234313F85902000000010793F0BB0000000500000006000000060000000410804CFF000000040115234313F85902000000010793F0BB00000005128220FA0793F0BD00000005128220FC0DAED877000000050E9625000000000000000005000000030000000213F895020793F0BB12825CFA000000020793F0BD0000000500000008000000060000000112EA58FC0DE7CA000E5FD8F70B4D4408108010FF000000070000000410804CFF000000040115234313F85902000000010793F0BB12825CFA000000020569AC3D0000000500000007128220FA0569AC3D00000007000000070000000213F895020000000700000001000000000E6014F7000000000B4D44080000000810804CFF000000040115234313F85902000000010793F0BB00000008128220FA0569AC3D134110FC00000003000000080000000800000002000000080000000312EA58FA067ECE7D12EA94FC000000030DE7CA000E5FD8F70B4D44080000000610804CFF000000040115234313F85902000000010569AC3B134110FA000000020793F0BD00000005000000070000000600000006000000000000000612EA58FC0DE7CA000E5FD8F70B4D4408108010FF000000070000000410804CFF000000040115234313F85902000000010569AC3B134110FA000000020569AC3D00000007000000071340D4FA0569AC3D00000006000000070000000213F895020569AC3B000000070000000600000001000000000E6014F7000000000B4D4408108010FF000000060000000410804CFF000000040115234313F85902000000010569AC3B134110FA000000020569AC3D00000006000000090000000600000006000000030000000213E20102067ECE7B12EA94FA00000002067ECE7D12EA94FC000000030DE7CA000E5FD8F700000007000000000000000612EA58FC0DE7CA000E5FD8F700000007000000000E6014F7000000000B4D44080000000810804CFF00000004033F67C300000008000000080000000312EA58FA067ECE7D0000000612EA58FC0DE7CA000E5FD8F700000006000000000000000600000003000000020000000100000004"
theorem small_7099131_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7099131_left_root small_7099131_left_fuel small_7099131_left_count small_7099131_left_encoded = true := by
  decide +kernel
theorem small_7099131_left_covered : CoveredBy scale carrier boxes small_7099131_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7099131_left_root small_7099131_left_fuel small_7099131_left_count small_7099131_left_encoded small_7099131_left_checked

theorem cover_7099131 : CoveredBy scale carrier boxes root_7099131 := by
  apply coveredBy_split_literal root_7099131 small_7099131_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7099601 coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7099131_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7099601
#print axioms cover_7099131

def root_7099125 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7099125_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7099125_left_fuel : Nat := 1
def small_7099125_left_count : Nat := 1
def small_7099125_left_encoded : String := "00000000"
theorem small_7099125_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7099125_left_root small_7099125_left_fuel small_7099125_left_count small_7099125_left_encoded = true := by
  decide +kernel
theorem small_7099125_left_covered : CoveredBy scale carrier boxes small_7099125_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7099125_left_root small_7099125_left_fuel small_7099125_left_count small_7099125_left_encoded small_7099125_left_checked

theorem cover_7099125 : CoveredBy scale carrier boxes root_7099125 := by
  apply coveredBy_split_literal root_7099125 small_7099125_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7099131 coord0 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_7099125_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7099131
#print axioms cover_7099125

def root_7098531 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098531_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098531_left_fuel : Nat := 22
def small_7098531_left_count : Nat := 285
def small_7098531_left_encoded : String := "0F8750F70C9A87080F8750FF022A458313E1C50200000001067ECE7B12EA94FA00000002067ECE7D12EA94FC000000030B4D4400000000070000000712EA58FC0B4D440000000007000000070000000312EA58FA067ECE7D12EA94FC000000030B4D4400000000070000000712EA58FC0B4D44000000000700000007000000030000000213E20102067ECE7B12EA94FA00000002067ECE7D000000070000000712EA58FA067ECE7D00000007000000070000000200000001000000040F878CFF00000004022A458313E1C50200000001067ECE7B12EA94FA00000002067ECE7D12EA94FC000000030B4D4400108010F70DE7CA080E5FD8FF00000007000000040E6014FF000000040115234313F85902000000010793F0BB00000005000000090000000A0000000010804CF7000000000DE7CA080E5FD8FF011523430000000513F895020793F0BB000000050000000700000001000000040E6014FF000000040115234313F85902000000010793F0BB00000005128220FA0793F0BD00000005128220FC0DAED87F000000050E9625080000000400000005000000030000000213F895020793F0BB0000000A128220FA0793F0BD000000090000000A000000020000000112EA58FC0B4D4400108010F70000000A0000000010804CF7000000000DE7CA080E5FD8FF0115234313F85902000000010793F0BB0000000A128220FA0569AC3D0000000700000007000000020000000A000000040000000A0000000312EA58FA067ECE7D12EA94FC000000030B4D4400108010F70DE7CA080E5FD8FF00000007000000040E6014FF00000004000000080000000010804CF7000000000DE7CA080E5FD8FF0115234313F85902000000010569AC3B134110FA000000020793F0BD00000005000000071340D4FA0793F0BD00000007000000070000000213F895020000000700000001000000040E6014FF000000040115234313F85902000000010569AC3B134110FA0000000200000009000000080000000912EA58FC0B4D4400108010F70DE7CA080E5FD8FF00000007000000040000000A0000000010804CF7000000000DE7CA080E5FD8FF0115234313F85902000000010569AC3B134110FA000000020569AC3D00000007000000071340D4FA0569AC3D00000007000000070000000213F895020569AC3B000000070000000700000001000000040E6014FF000000040115234313F85902000000010569AC3B0000000A1340D4FA0569AC3D000000080000000A000000020000000A000000030000000213E20102067ECE7B12EA94FA00000002067ECE7D12EA94FC000000030B4D4400108010F70000000A0000000010804CF7000000000DE7CA080E5FD8FF00000007000000040000000A0000000A12EA58FA067ECE7D12EA94FC000000030B4D4400108010F70DE7CA0800000007000000070000000010804CF7000000000DE7CA080E5FD8FF00000007000000040E6014FF00000004033F67C3000000090000000912EA58FC0B4D44000000000A10804CF7000000000DE7CA080E5FD8FF00000007000000040000000A00000003000000020000000100000000"
theorem small_7098531_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7098531_left_root small_7098531_left_fuel small_7098531_left_count small_7098531_left_encoded = true := by
  decide +kernel
theorem small_7098531_left_covered : CoveredBy scale carrier boxes small_7098531_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7098531_left_root small_7098531_left_fuel small_7098531_left_count small_7098531_left_encoded small_7098531_left_checked

theorem cover_7098531 : CoveredBy scale carrier boxes root_7098531 := by
  apply coveredBy_split_literal root_7098531 small_7098531_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7099125 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7098531_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7099125
#print axioms cover_7098531

def root_7098526 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098526_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098526_right_fuel : Nat := 1
def small_7098526_right_count : Nat := 1
def small_7098526_right_encoded : String := "00000004"
theorem small_7098526_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7098526_right_root small_7098526_right_fuel small_7098526_right_count small_7098526_right_encoded = true := by
  decide +kernel
theorem small_7098526_right_covered : CoveredBy scale carrier boxes small_7098526_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7098526_right_root small_7098526_right_fuel small_7098526_right_count small_7098526_right_encoded small_7098526_right_checked

theorem cover_7098526 : CoveredBy scale carrier boxes root_7098526 := by
  apply coveredBy_split_literal root_7098526 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7098531 small_7098526_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7098531
  · exact small_7098526_right_covered
#print axioms cover_7098526

def root_7098525 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7098525 : CoveredBy scale carrier boxes root_7098525 := by
  apply coveredBy_split_literal root_7098525 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7098526 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2676.root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7098526
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2676.covered
#print axioms cover_7098525

def root_7098519 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098519_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098519_left_fuel : Nat := 1
def small_7098519_left_count : Nat := 1
def small_7098519_left_encoded : String := "00000003"
theorem small_7098519_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7098519_left_root small_7098519_left_fuel small_7098519_left_count small_7098519_left_encoded = true := by
  decide +kernel
theorem small_7098519_left_covered : CoveredBy scale carrier boxes small_7098519_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7098519_left_root small_7098519_left_fuel small_7098519_left_count small_7098519_left_encoded small_7098519_left_checked

theorem cover_7098519 : CoveredBy scale carrier boxes root_7098519 := by
  apply coveredBy_split_literal root_7098519 small_7098519_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7098525 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_7098519_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7098525
#print axioms cover_7098519

def root_7098518 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7098518 : CoveredBy scale carrier boxes root_7098518 := by
  apply coveredBy_split_literal root_7098518 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7098519 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2677.root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7098519
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2677.covered
#print axioms cover_7098518

def root_7098512 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098512_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098512_left_fuel : Nat := 1
def small_7098512_left_count : Nat := 1
def small_7098512_left_encoded : String := "00000002"
theorem small_7098512_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7098512_left_root small_7098512_left_fuel small_7098512_left_count small_7098512_left_encoded = true := by
  decide +kernel
theorem small_7098512_left_covered : CoveredBy scale carrier boxes small_7098512_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7098512_left_root small_7098512_left_fuel small_7098512_left_count small_7098512_left_encoded small_7098512_left_checked

theorem cover_7098512 : CoveredBy scale carrier boxes root_7098512 := by
  apply coveredBy_split_literal root_7098512 small_7098512_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7098518 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_7098512_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7098518
#print axioms cover_7098512

def root_7098511 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7098511 : CoveredBy scale carrier boxes root_7098511 := by
  apply coveredBy_split_literal root_7098511 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7098512 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2678.root coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7098512
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2678.covered
#print axioms cover_7098511

def root_7098505 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098505_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098505_left_fuel : Nat := 1
def small_7098505_left_count : Nat := 1
def small_7098505_left_encoded : String := "00000001"
theorem small_7098505_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7098505_left_root small_7098505_left_fuel small_7098505_left_count small_7098505_left_encoded = true := by
  decide +kernel
theorem small_7098505_left_covered : CoveredBy scale carrier boxes small_7098505_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7098505_left_root small_7098505_left_fuel small_7098505_left_count small_7098505_left_encoded small_7098505_left_checked

theorem cover_7098505 : CoveredBy scale carrier boxes root_7098505 := by
  apply coveredBy_split_literal root_7098505 small_7098505_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7098511 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7098505_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7098511
#print axioms cover_7098505

def root_7098504 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098504_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098504_right_fuel : Nat := 30
def small_7098504_right_count : Nat := 343
def small_7098504_right_encoded : String := "1386AD02045489FB1386ACFA00000002045489FD1386ACFC000000030CFD9BFF0F350D080C9A87000F8750F70C9A87080F8750FF00000007000000040F878CFF00000004067ECE8312EA590200000001067ECE7B0000000A12EA58FA067ECE7D12EA94FC000000030B4D440000000007000000070000000A000000020000000A000000000F878CF7000000000C9A87080F8750FF067ECE8312EA590200000001067ECE7B12EA94FA00000002067ECE7D0000000612EA58FC0DE7CA000000000700000006000000030000000600000006000000040F878CFF00000004067ECE8312EA590200000001067ECE7B12EA94FA00000002067ECE7D12EA94FC000000030DE7CA000E5FD8F70DE7CA080E5FD8FF00000007000000040000000A000000000E6014F7000000000DE7CA080E5FD8FF00000006000000040E6014FF000000040569AC431340D502000000010793F0BB12825CFA000000020793F0BD12825CFC000000030DAED877000000070E96250000000000000000060000000A128220FA0793F0BD000000060000000A00000002134111020793F0BB0000000A000000060000000112EA58FC0DE7CA000000000A0E6014F7000000000DE7CA080E5FD8FF0569AC431340D502000000010793F0BB000000080000000600000006000000040000000A0000000312EA58FA067ECE7D12EA94FC000000030DE7CA000E5FD8F70DE7CA08000000060E6014FF000000040569AC431340D502000000010569AC3B0000000A0000000600000006000000000000000612EA58FC0DE7CA000E5FD8F70000000A000000000E6014F7000000000DE7CA08000000060E6014FF000000040569AC431340D502000000010569AC3B0000000A0000000500000005000000030000000212EA9502067ECE7B12EA94FA00000002067ECE7D12EA94FC000000030DE7CA000000000A000000060000000A12EA58FA000000060000000200000001000000040F34D108000000040C9A87000F8750F70000000A000000000F878CF700000000067ECE8312EA590200000001067ECE7B0000000A12EA58FA067ECE7D12EA94FC000000030AD3577F10D13D080DE7CA00000000090E6014F7000000000569AC431340D502000000010569AC3B134110FA000000020793F0BD000000090000000A00000009134111020569AC3B0000000A000000060000000100000004000000090000000A000000020000000A138670FC0CFD9BFF0F350D080C9A87000F8750F70000000A000000000F878CF7000000000C9A87080F8750FF067ECE8312EA590200000001067ECE7B12EA94FA00000002022A457D000000070000000712EA58FA000000050000000212EA95020000000500000001000000040000000A000000040F34D108000000040000000A00000003138670FA045489FD1386ACFC000000030CFD9BFF0F350D080C9A87000F8750F70C9A87080F8750FF00000006000000040F878CFF00000004067ECE8312EA590200000001022A457B13E200FA00000002067ECE7D12EA94FC00000003000000070000000713E1C4FA067ECE7D00000006000000050000000212EA950200000005000000010000000000000006000000040F34D108000000040C9A87000F8750F7067ECE830000000900000009000000000F878CF700000000067ECE8312EA590200000001022A457B13E200FA00000002067ECE7D12EA94FC000000030000000912EA58FC0AD3577F10D13D080000000500000004000000050000000313E1C4FA067ECE7D00000009000000050000000212EA9502022A457B13E200FA00000002067ECE7D00000009000000050000000500000001138670FC0CFD9BFF0F350D080C9A8700000000050F878CF700000000000000050000000400000005000000030000000200000001"
theorem small_7098504_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7098504_right_root small_7098504_right_fuel small_7098504_right_count small_7098504_right_encoded = true := by
  decide +kernel
theorem small_7098504_right_covered : CoveredBy scale carrier boxes small_7098504_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7098504_right_root small_7098504_right_fuel small_7098504_right_count small_7098504_right_encoded small_7098504_right_checked

theorem cover_7098504 : CoveredBy scale carrier boxes root_7098504 := by
  apply coveredBy_split_literal root_7098504 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7098505 small_7098504_right_root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7098505
  · exact small_7098504_right_covered
#print axioms cover_7098504

def root_7098499 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098499_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098499_right_fuel : Nat := 1
def small_7098499_right_count : Nat := 1
def small_7098499_right_encoded : String := "00000000"
theorem small_7098499_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7098499_right_root small_7098499_right_fuel small_7098499_right_count small_7098499_right_encoded = true := by
  decide +kernel
theorem small_7098499_right_covered : CoveredBy scale carrier boxes small_7098499_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7098499_right_root small_7098499_right_fuel small_7098499_right_count small_7098499_right_encoded small_7098499_right_checked

theorem cover_7098499 : CoveredBy scale carrier boxes root_7098499 := by
  apply coveredBy_split_literal root_7098499 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7098504 small_7098499_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7098504
  · exact small_7098499_right_covered
#print axioms cover_7098499

def root_7117307 : ZRayBox := fun j => (#[⟨⟨(12755968), (14107392)⟩, ⟨(-10897344), (-9081120)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7117307 : CoveredBy scale carrier boxes root_7117307 := by
  apply coveredBy_split_literal root_7117307 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2680.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2681.root coord1 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2680.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2681.covered
#print axioms cover_7117307

def root_7117302 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-9081120)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7117302_right_root : ZRayBox := fun j => (#[⟨⟨(14107392), (15123200)⟩, ⟨(-10897344), (-9081120)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7117302_right_fuel : Nat := 1
def small_7117302_right_count : Nat := 1
def small_7117302_right_encoded : String := "00000000"
theorem small_7117302_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7117302_right_root small_7117302_right_fuel small_7117302_right_count small_7117302_right_encoded = true := by
  decide +kernel
theorem small_7117302_right_covered : CoveredBy scale carrier boxes small_7117302_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7117302_right_root small_7117302_right_fuel small_7117302_right_count small_7117302_right_encoded small_7117302_right_checked

theorem cover_7117302 : CoveredBy scale carrier boxes root_7117302 := by
  apply coveredBy_split_literal root_7117302 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7117307 small_7117302_right_root coord0 false (14107392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7117307
  · exact small_7117302_right_covered
#print axioms cover_7117302

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170
