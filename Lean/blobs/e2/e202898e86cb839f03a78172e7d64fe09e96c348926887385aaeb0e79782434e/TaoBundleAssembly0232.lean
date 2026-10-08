import TaoBundleAssembly0231
import TaoBundleChunkBatch0913
import TaoBundleChunkBatch0914
import TaoBundleChunkBatch0915
import TaoBundleChunkBatch0916
import TaoBundleChunkBatch0917
import TaoBundleChunkBatch0918
import TaoBundleChunkBatch0919
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232
def root_9763016 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9763016_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9763016_left_fuel : Nat := 33
def small_9763016_left_count : Nat := 491
def small_9763016_left_encoded : String := "0F34D104000000020CFD9C070F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE0F878D090780010200000005128A7CF900000001022A45810000000500000009000000040F8751090000000400000009000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC000000080F8751070000000300000008000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D0907800102128A40F9022A4581000000050000000800000001128A7CF900000001022A458113E1C500000000000AD3578510D10104000000020DE7C9FC000000060E5FD907000000030000000610D13D040DE7C9FC000000060E5FD90700000003000000060000000213E201000AD3578510D10104000000020000000810D13D040DE7C9FC0E60150700000009000000030E5FD907000000030DE7C9FE00000008000000090000000200000000000000040F8751090000000407800102128A40F9022A458113E1C500000000000AD3578510D10104000000020000000910D13D040DE7C9FC000000090E5FD907000000030B4D43FE10804D090640010200000005000000090000000400000009000000020000000900000001128A7CF900000001022A458113E1C500000000000AD3578510D10104000000020000000910D13D040DE7C9FC000000090E5FD907000000030B4D43FE00000006000000090000000200000009000000030F875107000000030C9A86FE0F878D0907800102128A40F9022A458113E1C500000000000AD357850000000810D13D040B4D43FC0000000800000007000000020000000800000001128A7CF900000001022A458113E1C500000000000AD3578510D10104000000020000000710D13D040B4D43FC10804D070DE7C9FE000000060E5FD9090000000400000006000000031080110700000003000000070000000213E201000AD3578510D10104000000020000000810D13D040B4D43FC000000081080110700000003000000080000000200000000000000040F8751090000000407800102128A40F9022A458113E1C500000000000AD3578510D10104000000020B4D43FC10804D070B4D43FE00000008000000090000000310801107000000030B4D43FE00000007108011090000000406400102000000080000000910D13D040B4D43FC10804D070B4D43FE10804D090640010212FF70F9000000080000000112FFACF9000000010115234113F85900000000000BE879C510117104000000020000000600000006000000080000000410801109000000040640010212FF70F90115234113F85900000000000BE879C50000000900000009000000090000000112FFACF900000001000000090000000310801107000000030B4D43FE10804D09064001020000000812FFACF9000000010115234100000007000000080000000410801109000000040640010212FF70F90115234113F85900000000000BE879C51011710400000002000000081011AD040AA6A27C10EDAD070AA6A27E10EDAD090000000800000004000000090000000310ED7107000000030AA6A27E10EDAD09000000070000000410ED71090000000405A00102133134F90000000800000001133170F900000001008A9221000000070000000800000002000000080000000112FFACF9000000010115234113F85900000000000BE879C51011710400000002000000091011AD040AA6A27C10EDAD070AA6A27E00000006000000090000000310ED7107000000030AA6A27E0000000710ED71090000000406E001020000000912C820F900000001000000090000000213F895000BE879C5000000091011AD040AA6A27C0000000910ED7107000000030AA6A27E10EDAD0900000008000000040000000900000002000000000000000213E201000AD3578510D10104000000020000000810D13D040B4D43FC10804D070B4D43FE00000008000000090000000310801107000000030B4D43FE000000081080110900000004064001020000000800000009000000020000000000000001128A7CF900000001022A458113E1C500000000000AD3578510D10104000000020B4D43FC10804D070B4D43FE00000006000000090000000310801107000000030B4D43FE0000000710801109000000040000000910D13D040B4D43FC10804D070B4D43FE10804D0908C0010211FBE8F9011523410000000600000009000000010000000600000004108011090000000408C0010200000009000000060000000310801107000000030B4D43FE10804D0908C0010211FBE8F9011523410000000613F895000BE879C51011710400000002000000071011AD040AA6A27C00000006000000070000000200000000000000010000000600000004108011090000000408C0010211FBE8F90115234113F85900000000000BE879C51011710400000002000000060000000613F895000BE879C50000000900000009000000000000000111FC24F9000000010115234100000006000000050000000213E201000AD3578510D10104000000020000000910D13D040B4D43FC10804D070B4D43FE10804D090000000900000004000000090000000310801107000000030B4D43FE10804D0908C0010211FBE8F9000000080000000111FC24F900000001033F67C113BBF500000000000BE879C500000009000000090000000900000004108011090000000408C0010200000009000000050000000200000000"
theorem small_9763016_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9763016_left_root small_9763016_left_fuel small_9763016_left_count small_9763016_left_encoded = true := by
  decide +kernel
theorem small_9763016_left_covered : CoveredBy scale carrier boxes small_9763016_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9763016_left_root small_9763016_left_fuel small_9763016_left_count small_9763016_left_encoded small_9763016_left_checked

theorem cover_9763016 : CoveredBy scale carrier boxes root_9763016 := by
  apply coveredBy_split_literal root_9763016 small_9763016_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9764060 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9763016_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9764060
#print axioms cover_9763016

def root_9763010 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9763010_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9763010_left_fuel : Nat := 1
def small_9763010_left_count : Nat := 1
def small_9763010_left_encoded : String := "00000000"
theorem small_9763010_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9763010_left_root small_9763010_left_fuel small_9763010_left_count small_9763010_left_encoded = true := by
  decide +kernel
theorem small_9763010_left_covered : CoveredBy scale carrier boxes small_9763010_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9763010_left_root small_9763010_left_fuel small_9763010_left_count small_9763010_left_encoded small_9763010_left_checked

theorem cover_9763010 : CoveredBy scale carrier boxes root_9763010 := by
  apply coveredBy_split_literal root_9763010 small_9763010_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9763016 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9763010_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9763016
#print axioms cover_9763010

def root_9763009 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9763009 : CoveredBy scale carrier boxes root_9763009 := by
  apply coveredBy_split_literal root_9763009 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9763010 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3659.root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9763010
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3659.covered
#print axioms cover_9763009

def root_9763003 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9763003_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9763003_left_fuel : Nat := 1
def small_9763003_left_count : Nat := 1
def small_9763003_left_encoded : String := "00000001"
theorem small_9763003_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9763003_left_root small_9763003_left_fuel small_9763003_left_count small_9763003_left_encoded = true := by
  decide +kernel
theorem small_9763003_left_covered : CoveredBy scale carrier boxes small_9763003_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9763003_left_root small_9763003_left_fuel small_9763003_left_count small_9763003_left_encoded small_9763003_left_checked

theorem cover_9763003 : CoveredBy scale carrier boxes root_9763003 := by
  apply coveredBy_split_literal root_9763003 small_9763003_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9763009 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_9763003_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9763009
#print axioms cover_9763003

def root_9761071 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9761071 : CoveredBy scale carrier boxes root_9761071 := by
  apply coveredBy_split_literal root_9761071 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3654.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9763003 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3654.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9763003
#print axioms cover_9761071

def root_9761065 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9761065_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9761065_left_fuel : Nat := 1
def small_9761065_left_count : Nat := 1
def small_9761065_left_encoded : String := "00000004"
theorem small_9761065_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9761065_left_root small_9761065_left_fuel small_9761065_left_count small_9761065_left_encoded = true := by
  decide +kernel
theorem small_9761065_left_covered : CoveredBy scale carrier boxes small_9761065_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9761065_left_root small_9761065_left_fuel small_9761065_left_count small_9761065_left_encoded small_9761065_left_checked

theorem cover_9761065 : CoveredBy scale carrier boxes root_9761065 := by
  apply coveredBy_split_literal root_9761065 small_9761065_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9761071 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9761065_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9761071
#print axioms cover_9761065

def root_9761005 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9761005_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9761005_left_fuel : Nat := 9
def small_9761005_left_count : Nat := 27
def small_9761005_left_encoded : String := "120700FE05000102135D44F90000000500000001135D80F90000000104548A0113867100000000000CFD9C05000000050F350D0400000005000000021386AD000CFD9C050F34D10400000002000000080F350D040CFD9C070000000500000008000000020000000000000004"
theorem small_9761005_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9761005_left_root small_9761005_left_fuel small_9761005_left_count small_9761005_left_encoded = true := by
  decide +kernel
theorem small_9761005_left_covered : CoveredBy scale carrier boxes small_9761005_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9761005_left_root small_9761005_left_fuel small_9761005_left_count small_9761005_left_encoded small_9761005_left_checked

theorem cover_9761005 : CoveredBy scale carrier boxes root_9761005 := by
  apply coveredBy_split_literal root_9761005 small_9761005_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9761065 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9761005_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9761065
#print axioms cover_9761005

def root_9760999 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760999_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760999_left_fuel : Nat := 1
def small_9760999_left_count : Nat := 1
def small_9760999_left_encoded : String := "00000003"
theorem small_9760999_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9760999_left_root small_9760999_left_fuel small_9760999_left_count small_9760999_left_encoded = true := by
  decide +kernel
theorem small_9760999_left_covered : CoveredBy scale carrier boxes small_9760999_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9760999_left_root small_9760999_left_fuel small_9760999_left_count small_9760999_left_encoded small_9760999_left_checked

theorem cover_9760999 : CoveredBy scale carrier boxes root_9760999 := by
  apply coveredBy_split_literal root_9760999 small_9760999_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9761005 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9760999_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9761005
#print axioms cover_9760999

def root_9760915 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760915_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760915_left_fuel : Nat := 15
def small_9760915_left_count : Nat := 39
def small_9760915_left_encoded : String := "120700FC08A913090000000512073CFE0000000405000102135D44F90000000500000001135D80F90000000104548A0113867100000000000CFD9C05000000050F350D0400000005000000021386AD000CFD9C050F34D10400000002000000090F350D0404548A07000000051386ACFC000000030CFD9C09000000050F350CFE000000040C9A87040000000500000009000000020000000000000003"
theorem small_9760915_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9760915_left_root small_9760915_left_fuel small_9760915_left_count small_9760915_left_encoded = true := by
  decide +kernel
theorem small_9760915_left_covered : CoveredBy scale carrier boxes small_9760915_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9760915_left_root small_9760915_left_fuel small_9760915_left_count small_9760915_left_encoded small_9760915_left_checked

theorem cover_9760915 : CoveredBy scale carrier boxes root_9760915 := by
  apply coveredBy_split_literal root_9760915 small_9760915_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9760999 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9760915_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9760999
#print axioms cover_9760915

def root_9760910 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760910_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760910_right_fuel : Nat := 1
def small_9760910_right_count : Nat := 1
def small_9760910_right_encoded : String := "00000002"
theorem small_9760910_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9760910_right_root small_9760910_right_fuel small_9760910_right_count small_9760910_right_encoded = true := by
  decide +kernel
theorem small_9760910_right_covered : CoveredBy scale carrier boxes small_9760910_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9760910_right_root small_9760910_right_fuel small_9760910_right_count small_9760910_right_encoded small_9760910_right_checked

theorem cover_9760910 : CoveredBy scale carrier boxes root_9760910 := by
  apply coveredBy_split_literal root_9760910 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9760915 small_9760910_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9760915
  · exact small_9760910_right_covered
#print axioms cover_9760910

def root_9760492 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760492_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760492_left_fuel : Nat := 25
def small_9760492_left_count : Nat := 193
def small_9760492_left_encoded : String := "120701040000000208A91307120700FC08A913090000000512073CFE000000040500010200000005135D80F90000000104548A0100000005000000090000000312073CFC0000000308A91309120700FE000000080000000412073CFE0000000405000102135D44F904548A01138671000000000004548A0513867104000000020CFD9C070F34D0FC0000000500000003000000081386AD040CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9C09000000080F350CFE000000040C9A86FC000000080F8751070000000300000008000000021386AD0004548A051386710400000002000000081386AD040CFD9C070F34D0FC000000050000000300000008000000020000000000000001135D80F90000000104548A01138671000000000004548A0513867104000000020CFD9C070F34D0FC0CFD9C09000000050000000A000000030F350CFC000000030CFD9C09000000080F350CFE000000040C9A86FC0F878D070C9A86FE0F878D09000000080000000400000009000000030F875107000000030C9A86FE000000080F875109000000040780010200000008000000091386AD040CFD9C070F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE0000000400000009000000030F350CFC000000030CFD9C090F34D0FE00000008000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D090780010200000008128A7CF900000001022A458113E1C50000000000067ECE85000000090000000900000008000000040F8751090000000400000009000000030F875107000000030C9A86FE0F878D0900000008000000040F8751090000000407800102128A40F90000000800000001128A7CF900000001022A458113E1C50000000000067ECE85000000090000000900000009000000021386AD0004548A0513867104000000020CFD9C070F34D0FC0000000900000003000000081386AD040CFD9C070F34D0FC00000009000000030F350CFC000000030CFD9C09000000080F350CFE000000040C9A86FC000000080F87510700000003000000080000000200000000"
theorem small_9760492_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9760492_left_root small_9760492_left_fuel small_9760492_left_count small_9760492_left_encoded = true := by
  decide +kernel
theorem small_9760492_left_covered : CoveredBy scale carrier boxes small_9760492_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9760492_left_root small_9760492_left_fuel small_9760492_left_count small_9760492_left_encoded small_9760492_left_checked

theorem cover_9760492 : CoveredBy scale carrier boxes root_9760492 := by
  apply coveredBy_split_literal root_9760492 small_9760492_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9760910 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9760492_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9760910
#print axioms cover_9760492

def root_9760486 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760486_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760486_left_fuel : Nat := 1
def small_9760486_left_count : Nat := 1
def small_9760486_left_encoded : String := "00000000"
theorem small_9760486_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9760486_left_root small_9760486_left_fuel small_9760486_left_count small_9760486_left_encoded = true := by
  decide +kernel
theorem small_9760486_left_covered : CoveredBy scale carrier boxes small_9760486_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9760486_left_root small_9760486_left_fuel small_9760486_left_count small_9760486_left_encoded small_9760486_left_checked

theorem cover_9760486 : CoveredBy scale carrier boxes root_9760486 := by
  apply coveredBy_split_literal root_9760486 small_9760486_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9760492 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9760486_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9760492
#print axioms cover_9760486

def root_9760485 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760485_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760485_right_fuel : Nat := 32
def small_9760485_right_count : Nat := 207
def small_9760485_right_encoded : String := "12073D0008A91305120701040000000208A91307120700FC08A913090000000500000009000000030000000812073D0408A91307120700FC08A91309120700FE000000050000000412073CFE0000000405000102135D44F90CFD9C010F34D100000000000CFD9C0500000005000000090000000900000001135D80F9000000010CFD9C010F34D100000000000CFD9C05000000090F350D0404548A07000000091386ACFC000000030CFD9C09000000090000000900000002000000090000000312073CFC0000000308A91309120700FE000000080000000412073CFE0000000405000102135D44F90CFD9C010F34D100000000000CFD9C050F34D10400000002000000080F350D040CFD9C070F34D0FC0CFD9C09000000080F350CFE000000040C9A87040F875105000000020C9A86FE0000000800000009000000080000000300000008000000020000000800000001135D80F9000000010CFD9C010F34D100000000000CFD9C050F34D104000000020CFD9C070F34D0FC0000000900000003000000080F350D040CFD9C070F34D0FC0CFD9C090F34D0FE00000008000000040F350CFE000000040C9A87040F875105000000020C9A86FE0F878D0900000009000000040000000900000009000000030F350CFC000000030CFD9C090F34D0FE00000008000000040F350CFE000000040C9A87040F875105000000020C9A86FC0F878D070C9A86FE0F878D090780010200000008128A7CF9000000010AD3578110D10100000000000B4D440410801105000000020DE7C9FC000000070E5FD90700000003000000080000000800000008000000040F87510900000004078001020000000900000009000000030F875107000000030C9A86FE0F878D0900000008000000040F8751090000000407800102128A40F90000000800000001128A7CF9000000010AD3578110D10100000000000B4D44040000000710804D050000000900000002000000090F878D050C9A86FC0F878D070C9A86FE0000000800000009000000030F875107000000030000000800000002000000020F350D000CFD9C050F34D10400000002000000080F350D040CFD9C070F34D0FC0CFD9C090000000800000009000000030000000800000002000000000000000200000000"
theorem small_9760485_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9760485_right_root small_9760485_right_fuel small_9760485_right_count small_9760485_right_encoded = true := by
  decide +kernel
theorem small_9760485_right_covered : CoveredBy scale carrier boxes small_9760485_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9760485_right_root small_9760485_right_fuel small_9760485_right_count small_9760485_right_encoded small_9760485_right_checked

theorem cover_9760485 : CoveredBy scale carrier boxes root_9760485 := by
  apply coveredBy_split_literal root_9760485 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9760486 small_9760485_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9760486
  · exact small_9760485_right_covered
#print axioms cover_9760485

def root_9760480 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760480_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760480_right_fuel : Nat := 1
def small_9760480_right_count : Nat := 1
def small_9760480_right_encoded : String := "00000004"
theorem small_9760480_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9760480_right_root small_9760480_right_fuel small_9760480_right_count small_9760480_right_encoded = true := by
  decide +kernel
theorem small_9760480_right_covered : CoveredBy scale carrier boxes small_9760480_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9760480_right_root small_9760480_right_fuel small_9760480_right_count small_9760480_right_encoded small_9760480_right_checked

theorem cover_9760480 : CoveredBy scale carrier boxes root_9760480 := by
  apply coveredBy_split_literal root_9760480 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9760485 small_9760480_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9760485
  · exact small_9760480_right_covered
#print axioms cover_9760480

def root_9777627 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9777627 : CoveredBy scale carrier boxes root_9777627 := by
  apply coveredBy_split_literal root_9777627 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3660.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3661.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3660.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3661.covered
#print axioms cover_9777627

def root_9777621 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777621_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777621_left_fuel : Nat := 1
def small_9777621_left_count : Nat := 1
def small_9777621_left_encoded : String := "00000003"
theorem small_9777621_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9777621_left_root small_9777621_left_fuel small_9777621_left_count small_9777621_left_encoded = true := by
  decide +kernel
theorem small_9777621_left_covered : CoveredBy scale carrier boxes small_9777621_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9777621_left_root small_9777621_left_fuel small_9777621_left_count small_9777621_left_encoded small_9777621_left_checked

theorem cover_9777621 : CoveredBy scale carrier boxes root_9777621 := by
  apply coveredBy_split_literal root_9777621 small_9777621_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9777627 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9777621_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9777627
#print axioms cover_9777621

def root_9777565 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777565_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777565_left_fuel : Nat := 9
def small_9777565_left_count : Nat := 27
def small_9777565_left_encoded : String := "120700FC05000102135D44F9050000FE135D810904548A0113867100000000000000000A00000009000000040000000900000001135D80F900000001050000FE135D810904548A0113867100000000000CFD9C05000000090000000900000009000000040000000900000003"
theorem small_9777565_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9777565_left_root small_9777565_left_fuel small_9777565_left_count small_9777565_left_encoded = true := by
  decide +kernel
theorem small_9777565_left_covered : CoveredBy scale carrier boxes small_9777565_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9777565_left_root small_9777565_left_fuel small_9777565_left_count small_9777565_left_encoded small_9777565_left_checked

theorem cover_9777565 : CoveredBy scale carrier boxes root_9777565 := by
  apply coveredBy_split_literal root_9777565 small_9777565_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9777621 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9777565_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9777621
#print axioms cover_9777565

def root_9777560 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777560_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777560_right_fuel : Nat := 1
def small_9777560_right_count : Nat := 1
def small_9777560_right_encoded : String := "00000002"
theorem small_9777560_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9777560_right_root small_9777560_right_fuel small_9777560_right_count small_9777560_right_encoded = true := by
  decide +kernel
theorem small_9777560_right_covered : CoveredBy scale carrier boxes small_9777560_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9777560_right_root small_9777560_right_fuel small_9777560_right_count small_9777560_right_encoded small_9777560_right_checked

theorem cover_9777560 : CoveredBy scale carrier boxes root_9777560 := by
  apply coveredBy_split_literal root_9777560 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9777565 small_9777560_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9777565
  · exact small_9777560_right_covered
#print axioms cover_9777560

def root_9777446 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777446_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777446_left_fuel : Nat := 17
def small_9777446_left_count : Nat := 57
def small_9777446_left_encoded : String := "120701040000000208A913070000000912073CFC0000000305000102135D44F9050000FE135D810904548A01138671000000000004548A05000000091386AD040CFD9C07000000090F350CFC000000030C9A86FC000000090F875107000000030280010200000009000000090000000200000009000000040000000900000001135D80F900000001050000FE135D810904548A01138671000000000004548A05000000091386AD040CFD9C07000000090F350CFC000000030C9A86FC000000090F8751070000000307800102000000090000000900000002000000090000000400000009"
theorem small_9777446_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9777446_left_root small_9777446_left_fuel small_9777446_left_count small_9777446_left_encoded = true := by
  decide +kernel
theorem small_9777446_left_covered : CoveredBy scale carrier boxes small_9777446_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9777446_left_root small_9777446_left_fuel small_9777446_left_count small_9777446_left_encoded small_9777446_left_checked

theorem cover_9777446 : CoveredBy scale carrier boxes root_9777446 := by
  apply coveredBy_split_literal root_9777446 small_9777446_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9777560 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9777446_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9777560
#print axioms cover_9777446

def root_9777440 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777440_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777440_left_fuel : Nat := 1
def small_9777440_left_count : Nat := 1
def small_9777440_left_encoded : String := "00000000"
theorem small_9777440_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9777440_left_root small_9777440_left_fuel small_9777440_left_count small_9777440_left_encoded = true := by
  decide +kernel
theorem small_9777440_left_covered : CoveredBy scale carrier boxes small_9777440_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9777440_left_root small_9777440_left_fuel small_9777440_left_count small_9777440_left_encoded small_9777440_left_checked

theorem cover_9777440 : CoveredBy scale carrier boxes root_9777440 := by
  apply coveredBy_split_literal root_9777440 small_9777440_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9777446 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9777440_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9777446
#print axioms cover_9777440

def root_9777439 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777439_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777439_right_fuel : Nat := 20
def small_9777439_right_count : Nat := 97
def small_9777439_right_encoded : String := "12073D0008A9130512070104000000020000000912073D0408A91307120700FC000000090000000312073CFC0000000305000102135D44F9050000FE135D81090CFD9C010F34D100000000000CFD9C050F34D10400000002000000090F350D040CFD9C070F34D0FC00000009000000030F350CFC000000030C9A87040F87510500000002000000070F878D050000000900000002000000020F350D000CFD9C0500000009000000090000000000000004135D4509000000040CFD9C010F34D10000000000000000090000000600000001135D80F900000001050000FE135D81090CFD9C010F34D100000000000CFD9C050F34D10400000002000000090F350D040CFD9C070F34D0FC00000009000000030F350CFC000000030C9A87040F875105000000020C9A86FC000000070F87510700000003000000070F878D050000000900000002000000020F350D000CFD9C0500000009000000090000000000000004135D4509000000040CFD9C010F34D1000000000000000009000000090000000200000000"
theorem small_9777439_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9777439_right_root small_9777439_right_fuel small_9777439_right_count small_9777439_right_encoded = true := by
  decide +kernel
theorem small_9777439_right_covered : CoveredBy scale carrier boxes small_9777439_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9777439_right_root small_9777439_right_fuel small_9777439_right_count small_9777439_right_encoded small_9777439_right_checked

theorem cover_9777439 : CoveredBy scale carrier boxes root_9777439 := by
  apply coveredBy_split_literal root_9777439 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9777440 small_9777439_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9777440
  · exact small_9777439_right_covered
#print axioms cover_9777439

def root_9777433 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777433_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9777433_left_fuel : Nat := 1
def small_9777433_left_count : Nat := 1
def small_9777433_left_encoded : String := "00000004"
theorem small_9777433_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9777433_left_root small_9777433_left_fuel small_9777433_left_count small_9777433_left_encoded = true := by
  decide +kernel
theorem small_9777433_left_covered : CoveredBy scale carrier boxes small_9777433_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9777433_left_root small_9777433_left_fuel small_9777433_left_count small_9777433_left_encoded small_9777433_left_checked

theorem cover_9777433 : CoveredBy scale carrier boxes root_9777433 := by
  apply coveredBy_split_literal root_9777433 small_9777433_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9777439 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9777433_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9777439
#print axioms cover_9777433

def root_9760479 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9760479 : CoveredBy scale carrier boxes root_9760479 := by
  apply coveredBy_split_literal root_9760479 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9760480 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9777433 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9760480
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9777433
#print axioms cover_9760479

def root_9760474 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760474_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760474_right_fuel : Nat := 1
def small_9760474_right_count : Nat := 1
def small_9760474_right_encoded : String := "00000003"
theorem small_9760474_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9760474_right_root small_9760474_right_fuel small_9760474_right_count small_9760474_right_encoded = true := by
  decide +kernel
theorem small_9760474_right_covered : CoveredBy scale carrier boxes small_9760474_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9760474_right_root small_9760474_right_fuel small_9760474_right_count small_9760474_right_encoded small_9760474_right_checked

theorem cover_9760474 : CoveredBy scale carrier boxes root_9760474 := by
  apply coveredBy_split_literal root_9760474 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9760479 small_9760474_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9760479
  · exact small_9760474_right_covered
#print axioms cover_9760474

def root_9784699 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784699_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784699_left_fuel : Nat := 22
def small_9784699_left_count : Nat := 265
def small_9784699_left_encoded : String := "0F875105000000020C9A86FE0F878D0907800102128A40F9078000FC128A7D07022A458113E1C500000000000B4D440410801105000000020DE7C9FE000000090000000A10804D050DE7C9FE0E6015090640010212FF70F9000000090000000100000009000000040E5FD909000000040640010212FF70F908C000FC11FC250701152341000000090000000A00000003000000090000000112FFACF9000000010000000A0000000213E201000B4D440410801105000000020DE7C9FE0E6015090000000A000000040000000A10804D050DE7C9FE0E601509064001020000000812FFACF9000000010000000A000000040E5FD909000000040640010212FF70F908C000FC000000080000000A0000000112FFACF9000000010000000A000000020000000000000003128A410700000003022A45810000000913E201000B4D44040000000A10804D050000000A000000020000000000000001128A7CF900000001078000FC128A7D07022A458113E1C500000000000B4D44040000000A10804D050DE7C9FE0E6015090000000A000000040000000A0000000213E201000B4D44040000000A10804D050DE7C9FE0E6015090000000A000000040000000A000000020000000000000003128A4107000000030000000A000000040F8751090000000407800102128A40F9078000FC128A7D07022A458113E1C500000000000B4D440410801105000000020B4D43FE10804D090000000A000000040000000A10804D050B4D43FE10804D090640010212FF70F908C000FC11FC2507011523410000000913F895000000000A00000000000000030000000A0000000112FFACF9000000010000000A0000000410801109000000040640010212FF70F908C000FC11FC25070115234113F85900000000000BF3E5840000000A100929050000000A0000000213F895000BF3E58400000007100929050000000A0000000200000000000000030000000A0000000112FFACF9000000010000000A0000000213E201000B4D440410801105000000020B4D43FE10804D090000000A000000040000000A10804D050B4D43FE10804D090640010212FF70F908C000FC11FC2507033F67C10000000A0000000A000000030000000A0000000112FFACF9000000010000000A0000000410801109000000040640010212FF70F908C000FC11FC2507033F67C10000000A00000007000000030000000A0000000112FFACF9000000010000000A000000020000000000000003128A410700000003022A45810000000A13E201000B4D44040000000A10804D050000000A000000020000000000000001128A7CF900000001078000FC128A7D07022A458113E1C500000000000B4D44040000000A10804D050000000A0000000213E201000B4D44040000000A10804D050B4D43FE10804D090000000A000000040000000A000000020000000000000003128A4107000000030000000A"
theorem small_9784699_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9784699_left_root small_9784699_left_fuel small_9784699_left_count small_9784699_left_encoded = true := by
  decide +kernel
theorem small_9784699_left_covered : CoveredBy scale carrier boxes small_9784699_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9784699_left_root small_9784699_left_fuel small_9784699_left_count small_9784699_left_encoded small_9784699_left_checked

theorem cover_9784699 : CoveredBy scale carrier boxes root_9784699 := by
  apply coveredBy_split_literal root_9784699 small_9784699_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3663.root coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9784699_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3663.covered
#print axioms cover_9784699

def root_9784693 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784693_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784693_left_fuel : Nat := 1
def small_9784693_left_count : Nat := 1
def small_9784693_left_encoded : String := "00000004"
theorem small_9784693_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9784693_left_root small_9784693_left_fuel small_9784693_left_count small_9784693_left_encoded = true := by
  decide +kernel
theorem small_9784693_left_covered : CoveredBy scale carrier boxes small_9784693_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9784693_left_root small_9784693_left_fuel small_9784693_left_count small_9784693_left_encoded small_9784693_left_checked

theorem cover_9784693 : CoveredBy scale carrier boxes root_9784693 := by
  apply coveredBy_split_literal root_9784693 small_9784693_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9784699 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9784693_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9784699
#print axioms cover_9784693

def root_9784553 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784553_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784553_left_fuel : Nat := 13
def small_9784553_left_count : Nat := 67
def small_9784553_left_encoded : String := "0F34D0FE0C9A87040F8751050000000207800102128A40F9078000FC128A7D07022A458113E1C500000000000AD357890000000510D13CFE000000040B4D440400000005000000070000000800000003128A410700000003022A4581000000070000000800000001128A7CF900000001078000FC128A7D07022A458113E1C500000000000AD357890000000710D13CFE000000040000000A13E201000AD357890000000A10D13CFE000000040000000A0000000000000003128A4107000000030000000A0F878D0507800102128A40F9078000FC000000080000000700000001128A7CF900000001078000FC128A7D07022A4581000000070000000800000003000000070000000200000004"
theorem small_9784553_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9784553_left_root small_9784553_left_fuel small_9784553_left_count small_9784553_left_encoded = true := by
  decide +kernel
theorem small_9784553_left_covered : CoveredBy scale carrier boxes small_9784553_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9784553_left_root small_9784553_left_fuel small_9784553_left_count small_9784553_left_encoded small_9784553_left_checked

theorem cover_9784553 : CoveredBy scale carrier boxes root_9784553 := by
  apply coveredBy_split_literal root_9784553 small_9784553_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9784693 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9784553_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9784693
#print axioms cover_9784553

def root_9784548 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784548_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784548_right_fuel : Nat := 1
def small_9784548_right_count : Nat := 1
def small_9784548_right_encoded : String := "00000002"
theorem small_9784548_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9784548_right_root small_9784548_right_fuel small_9784548_right_count small_9784548_right_encoded = true := by
  decide +kernel
theorem small_9784548_right_covered : CoveredBy scale carrier boxes small_9784548_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9784548_right_root small_9784548_right_fuel small_9784548_right_count small_9784548_right_encoded small_9784548_right_checked

theorem cover_9784548 : CoveredBy scale carrier boxes root_9784548 := by
  apply coveredBy_split_literal root_9784548 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9784553 small_9784548_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9784553
  · exact small_9784548_right_covered
#print axioms cover_9784548

def root_9784048 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784048_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784048_left_fuel : Nat := 29
def small_9784048_left_count : Nat := 239
def small_9784048_left_encoded : String := "0F34D104000000020CFD9C090F34D0FE00000007000000040F350CFE000000040C9A86FE0F878D0907800102128A40F9078000FC000000080000000700000001128A7CF900000001078000FC128A7D07022A45810000000713E201000AD357850000000810D13D040DE7C9FE000000070E5FD909000000040000000800000002000000000000000300000007000000040F8751090000000407800102128A40F9078000FC128A7D07022A458113E1C500000000000AD3578510D10104000000020000000710D13D040B4D43FE10804D09064001020000000712FFACF900000001000000070000000410801109000000040640010212FF70F908C000FC11FC25070115234113F85900000000000BE879C5000000071011AD040AA6A27E0000000710ED71090000000405A00102133134F9096000FC000000080000000700000001133170F9000000010000000700000002000000080000000311FBE907000000030115234100000007000000080000000112FFACF90000000108C000FC11FC25070115234113F85900000000000BE879C5000000071011AD040AA6A27E0000000710ED710900000004000000050000000213F895000BE879C51011710400000002000000071011AD040AA6A27E10EDAD0906E001020000000700000005000000040000000500000002000000000000000311FBE907000000030115234100000007000000050000000213E201000AD3578510D10104000000020000000810D13D040B4D43FE000000081080110900000004064001020000000812FFACF90000000108C000FC0000000800000005000000020000000000000003128A410700000003022A458113E1C500000000000AD35785000000070000000713E201000AD357850000000810D13D040B4D43FE0000000800000005000000020000000000000001128A7CF900000001078000FC128A7D07022A458113E1C500000000000AD3578510D10104000000020000000710D13D040B4D43FE10804D0908C001020000000711FC24F9000000010000000700000004108011090000000408C0010211FBE8F908C000FC11FC25070115234113F85900000000000BE879C5000000070000000500000005000000030000000500000001000000050000000213E201000AD3578510D10104000000020B4D43FE10804D0900000007000000040000000510D13D040B4D43FE10804D0908C0010211FBE8F908C000FC000000080000000500000001000000050000000400000005000000020000000000000003128A410700000003022A458113E1C500000000000AD35785000000070000000500000005"
theorem small_9784048_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9784048_left_root small_9784048_left_fuel small_9784048_left_count small_9784048_left_encoded = true := by
  decide +kernel
theorem small_9784048_left_covered : CoveredBy scale carrier boxes small_9784048_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9784048_left_root small_9784048_left_fuel small_9784048_left_count small_9784048_left_encoded small_9784048_left_checked

theorem cover_9784048 : CoveredBy scale carrier boxes root_9784048 := by
  apply coveredBy_split_literal root_9784048 small_9784048_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9784548 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9784048_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9784548
#print axioms cover_9784048

def root_9784042 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784042_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784042_left_fuel : Nat := 1
def small_9784042_left_count : Nat := 1
def small_9784042_left_encoded : String := "00000000"
theorem small_9784042_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9784042_left_root small_9784042_left_fuel small_9784042_left_count small_9784042_left_encoded = true := by
  decide +kernel
theorem small_9784042_left_covered : CoveredBy scale carrier boxes small_9784042_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9784042_left_root small_9784042_left_fuel small_9784042_left_count small_9784042_left_encoded small_9784042_left_checked

theorem cover_9784042 : CoveredBy scale carrier boxes root_9784042 := by
  apply coveredBy_split_literal root_9784042 small_9784042_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9784048 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9784042_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9784048
#print axioms cover_9784042

def root_9784041 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784041_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784041_right_fuel : Nat := 23
def small_9784041_right_count : Nat := 285
def small_9784041_right_encoded : String := "1386AD000CFD9C050F34D104000000020CFD9C09000000080F350CFE000000040C9A86FE0F878D0900000008000000040F8751090000000407800102128A40F90000000800000001128A7CF900000001078000FC128A7D07067ECE8112EA5900000000000AD3578510D10104000000020000000810D13D040B4D43FE10804D09000000080000000400000005000000020000000800000003128A410700000003000000050F350D040CFD9C090F34D0FE0C9A87040F875105000000020780010200000008128A7CF900000001078000FC00000008128A410700000003067ECE810000000A0000000800000008000000040F350CFE000000040C9A87040F875105000000020C9A86FE0F878D0907800102128A40F9078000FC128A7D07067ECE8112EA5900000000000B4D440410801105000000020DE7C9FE0E60150900000008000000040000000A000000080000000800000003128A410700000003067ECE8112EA5900000000000B4D44040000000A000000080000000800000001128A7CF900000001078000FC128A7D07067ECE8112EA5900000000000B4D44040000000A10804D050DE7C9FE0E6015090000000A000000040000000A0000000212EA95000B4D44040000000A000000080000000000000003128A410700000003067ECE810000000A0000000A000000040F8751090000000407800102128A40F9078000FC128A7D07067ECE8112EA5900000000000B4D440410801105000000020B4D43FE10804D090000000A000000040000000A10804D050B4D43FE10804D090640010212FF70F908C000FC00000008000000060000000112FFACF9000000010000000A0000000410801109000000040640010200000006000000050000000212EA95000B4D44040000000610804D0500000006000000020000000000000003128A410700000003067ECE8112EA5900000000000B4D440400000006000000050000000500000001128A7CF900000001078000FC128A7D07067ECE8112EA5900000000000B4D44040000000A000000050000000500000003000000050F878D050C9A86FE0F878D0907800102128A40F90000000800000001128A7CF900000001078000FC128A7D07067ECE8112EA5900000000000DE7CA040E5FD905000000020DE7C9FE0E60150900000008000000040E5FD9090000000408C00102000000080000000A000000080000000800000003128A410700000003067ECE8112EA5900000000000DE7CA040E5FD905000000020000000A0000000800000008000000040F8751090000000407800102128A40F9078000FC128A7D07067ECE8112EA5900000000000DE7CA040E5FD905000000020B4D43FE10804D0900000008000000041080110900000004064001020000000600000005000000080000000800000003128A410700000003067ECE8112EA5900000000000DE7CA040E5FD9050000000200000005000000050000000500000001128A7CF900000001078000FC128A7D07067ECE8112EA5900000000000DE7CA040E5FD905000000020000000500000005000000050000000300000005000000020000000200000000"
theorem small_9784041_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9784041_right_root small_9784041_right_fuel small_9784041_right_count small_9784041_right_encoded = true := by
  decide +kernel
theorem small_9784041_right_covered : CoveredBy scale carrier boxes small_9784041_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9784041_right_root small_9784041_right_fuel small_9784041_right_count small_9784041_right_encoded small_9784041_right_checked

theorem cover_9784041 : CoveredBy scale carrier boxes root_9784041 := by
  apply coveredBy_split_literal root_9784041 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9784042 small_9784041_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9784042
  · exact small_9784041_right_covered
#print axioms cover_9784041

def root_9784036 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784036_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784036_right_fuel : Nat := 1
def small_9784036_right_count : Nat := 1
def small_9784036_right_encoded : String := "00000003"
theorem small_9784036_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9784036_right_root small_9784036_right_fuel small_9784036_right_count small_9784036_right_encoded = true := by
  decide +kernel
theorem small_9784036_right_covered : CoveredBy scale carrier boxes small_9784036_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9784036_right_root small_9784036_right_fuel small_9784036_right_count small_9784036_right_encoded small_9784036_right_checked

theorem cover_9784036 : CoveredBy scale carrier boxes root_9784036 := by
  apply coveredBy_split_literal root_9784036 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9784041 small_9784036_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9784041
  · exact small_9784036_right_covered
#print axioms cover_9784036

def root_9784035 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784035_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784035_right_fuel : Nat := 18
def small_9784035_right_count : Nat := 143
def small_9784035_right_encoded : String := "135D45070000000304548A0113867100000000000CFD9C050F34D104000000020CFD9C09000000070F350CFE000000040C9A86FE000000070F875109000000040780010200000007000000050F350D040CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87040F875105000000020C9A86FE0F878D0907800102128A40F900000009000000010000000A000000040F8751090000000407800102128A40F9028000FC0000000A0000000500000001000000050F878D050C9A86FE0F878D0900000007000000040F8751090000000407800102128A40F9028000FC13D7ED07022A458113E1C5000000000000000005000000050000000300000005000000010000000500000002000000021386AD000CFD9C050F34D104000000020CFD9C09000000080F350CFE000000040C9A86FE0F878D0900000008000000040F87510900000004000000050F350D040CFD9C090F34D0FE0C9A87040F8751050000000207800102128A40F90000000800000001128A7CF900000001028000FC0000000A0000000700000008000000040F350CFE000000040C9A87040F875105000000020C9A86FE0F878D0907800102128A40F9028000FC13D7ED07067ECE810000000A00000006000000030000000600000001128A7CF900000001028000FC0000000A00000005000000040F87510900000004000000050F878D050C9A86FE0F878D0907800102128A40F90000000800000001128A7CF90000000100000005000000040F8751090000000400000005000000020000000200000000"
theorem small_9784035_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9784035_right_root small_9784035_right_fuel small_9784035_right_count small_9784035_right_encoded = true := by
  decide +kernel
theorem small_9784035_right_covered : CoveredBy scale carrier boxes small_9784035_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9784035_right_root small_9784035_right_fuel small_9784035_right_count small_9784035_right_encoded small_9784035_right_checked

theorem cover_9784035 : CoveredBy scale carrier boxes root_9784035 := by
  apply coveredBy_split_literal root_9784035 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9784036 small_9784035_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9784036
  · exact small_9784035_right_covered
#print axioms cover_9784035

def root_9784029 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784029_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784029_left_fuel : Nat := 1
def small_9784029_left_count : Nat := 1
def small_9784029_left_encoded : String := "00000001"
theorem small_9784029_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9784029_left_root small_9784029_left_fuel small_9784029_left_count small_9784029_left_encoded = true := by
  decide +kernel
theorem small_9784029_left_covered : CoveredBy scale carrier boxes small_9784029_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9784029_left_root small_9784029_left_fuel small_9784029_left_count small_9784029_left_encoded small_9784029_left_checked

theorem cover_9784029 : CoveredBy scale carrier boxes root_9784029 := by
  apply coveredBy_split_literal root_9784029 small_9784029_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9784035 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_9784029_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9784035
#print axioms cover_9784029

def root_9781269 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9781269 : CoveredBy scale carrier boxes root_9781269 := by
  apply coveredBy_split_literal root_9781269 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3662.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9784029 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3662.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9784029
#print axioms cover_9781269

def root_9781263 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781263_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781263_left_fuel : Nat := 1
def small_9781263_left_count : Nat := 1
def small_9781263_left_encoded : String := "00000004"
theorem small_9781263_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9781263_left_root small_9781263_left_fuel small_9781263_left_count small_9781263_left_encoded = true := by
  decide +kernel
theorem small_9781263_left_covered : CoveredBy scale carrier boxes small_9781263_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9781263_left_root small_9781263_left_fuel small_9781263_left_count small_9781263_left_encoded small_9781263_left_checked

theorem cover_9781263 : CoveredBy scale carrier boxes root_9781263 := by
  apply coveredBy_split_literal root_9781263 small_9781263_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9781269 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9781263_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9781269
#print axioms cover_9781263

def root_9781245 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781245_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781245_left_fuel : Nat := 5
def small_9781245_left_count : Nat := 9
def small_9781245_left_encoded : String := "120700FE0500010200000008135D80F900000001050000FC000000080000000700000004"
theorem small_9781245_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9781245_left_root small_9781245_left_fuel small_9781245_left_count small_9781245_left_encoded = true := by
  decide +kernel
theorem small_9781245_left_covered : CoveredBy scale carrier boxes small_9781245_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9781245_left_root small_9781245_left_fuel small_9781245_left_count small_9781245_left_encoded small_9781245_left_checked

theorem cover_9781245 : CoveredBy scale carrier boxes root_9781245 := by
  apply coveredBy_split_literal root_9781245 small_9781245_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9781263 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9781245_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9781263
#print axioms cover_9781245

def root_9781240 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781240_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781240_right_fuel : Nat := 1
def small_9781240_right_count : Nat := 1
def small_9781240_right_encoded : String := "00000002"
theorem small_9781240_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9781240_right_root small_9781240_right_fuel small_9781240_right_count small_9781240_right_encoded = true := by
  decide +kernel
theorem small_9781240_right_covered : CoveredBy scale carrier boxes small_9781240_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9781240_right_root small_9781240_right_fuel small_9781240_right_count small_9781240_right_encoded small_9781240_right_checked

theorem cover_9781240 : CoveredBy scale carrier boxes root_9781240 := by
  apply coveredBy_split_literal root_9781240 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9781245 small_9781240_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9781245
  · exact small_9781240_right_covered
#print axioms cover_9781240

def root_9781086 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781086_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781086_left_fuel : Nat := 21
def small_9781086_left_count : Nat := 73
def small_9781086_left_encoded : String := "120701040000000208A913090000000812073CFE0000000405000102135D44F9050000FC00000008135D4507000000030000000800000001135D80F900000001050000FC135D810704548A01138671000000000004548A0513867104000000020CFD9C09000000070F350CFE000000040C9A86FE000000070F875109000000040780010200000007128A7CF900000001000000071386AD040CFD9C09000000070F350CFE000000040C9A86FE0F878D0900000007000000040F8751090000000407800102128A40F9078000FC000000080000000700000001128A7CF900000001078000FC128A7D07022A458100000007000000080000000300000007000000020000000800000003135D45070000000304548A0113867100000000000000000700000008"
theorem small_9781086_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9781086_left_root small_9781086_left_fuel small_9781086_left_count small_9781086_left_encoded = true := by
  decide +kernel
theorem small_9781086_left_covered : CoveredBy scale carrier boxes small_9781086_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9781086_left_root small_9781086_left_fuel small_9781086_left_count small_9781086_left_encoded small_9781086_left_checked

theorem cover_9781086 : CoveredBy scale carrier boxes root_9781086 := by
  apply coveredBy_split_literal root_9781086 small_9781086_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9781240 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9781086_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9781240
#print axioms cover_9781086

def root_9781080 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781080_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781080_left_fuel : Nat := 1
def small_9781080_left_count : Nat := 1
def small_9781080_left_encoded : String := "00000000"
theorem small_9781080_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9781080_left_root small_9781080_left_fuel small_9781080_left_count small_9781080_left_encoded = true := by
  decide +kernel
theorem small_9781080_left_covered : CoveredBy scale carrier boxes small_9781080_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9781080_left_root small_9781080_left_fuel small_9781080_left_count small_9781080_left_encoded small_9781080_left_checked

theorem cover_9781080 : CoveredBy scale carrier boxes root_9781080 := by
  apply coveredBy_split_literal root_9781080 small_9781080_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9781086 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9781080_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9781086
#print axioms cover_9781080

def root_9781079 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781079_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781079_right_fuel : Nat := 25
def small_9781079_right_count : Nat := 103
def small_9781079_right_encoded : String := "12073D0008A9130512070104000000020000000812073D0408A913090000000812073CFE0000000405000102135D44F9050000FC00000008135D4507000000030000000800000001135D80F900000001050000FC135D81070CFD9C010F34D100000000000CFD9C050F34D10400000002000000080F350D040CFD9C09000000080F350CFE000000040C9A87040F875105000000020C9A86FE0F878D090780010200000008128A7CF900000001078000FC00000008128A41070000000300000008000000040F875109000000040780010200000006128A7CF900000001078000FC128A7D070AD357810000000A0000000500000003000000050F878D050C9A86FE000000080F875109000000040780010200000008128A7CF900000001078000FC000000080000000500000002000000020000000800000003135D4507000000030CFD9C010F34D100000000000CFD9C050F34D10400000002000000080F350D040CFD9C09000000080F350CFE000000040C9A8704000000060F878D050C9A86FE00000008000000050000000200000002000000080000000200000000"
theorem small_9781079_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9781079_right_root small_9781079_right_fuel small_9781079_right_count small_9781079_right_encoded = true := by
  decide +kernel
theorem small_9781079_right_covered : CoveredBy scale carrier boxes small_9781079_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9781079_right_root small_9781079_right_fuel small_9781079_right_count small_9781079_right_encoded small_9781079_right_checked

theorem cover_9781079 : CoveredBy scale carrier boxes root_9781079 := by
  apply coveredBy_split_literal root_9781079 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9781080 small_9781079_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9781080
  · exact small_9781079_right_covered
#print axioms cover_9781079

def root_9781074 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781074_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781074_right_fuel : Nat := 1
def small_9781074_right_count : Nat := 1
def small_9781074_right_encoded : String := "00000004"
theorem small_9781074_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9781074_right_root small_9781074_right_fuel small_9781074_right_count small_9781074_right_encoded = true := by
  decide +kernel
theorem small_9781074_right_covered : CoveredBy scale carrier boxes small_9781074_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9781074_right_root small_9781074_right_fuel small_9781074_right_count small_9781074_right_encoded small_9781074_right_checked

theorem cover_9781074 : CoveredBy scale carrier boxes root_9781074 := by
  apply coveredBy_split_literal root_9781074 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9781079 small_9781074_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9781079
  · exact small_9781074_right_covered
#print axioms cover_9781074

def root_9781073 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9781073 : CoveredBy scale carrier boxes root_9781073 := by
  apply coveredBy_split_literal root_9781073 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9781074 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3664.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9781074
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3664.covered
#print axioms cover_9781073

def root_9781067 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781067_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781067_left_fuel : Nat := 1
def small_9781067_left_count : Nat := 1
def small_9781067_left_encoded : String := "00000003"
theorem small_9781067_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9781067_left_root small_9781067_left_fuel small_9781067_left_count small_9781067_left_encoded = true := by
  decide +kernel
theorem small_9781067_left_covered : CoveredBy scale carrier boxes small_9781067_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9781067_left_root small_9781067_left_fuel small_9781067_left_count small_9781067_left_encoded small_9781067_left_checked

theorem cover_9781067 : CoveredBy scale carrier boxes root_9781067 := by
  apply coveredBy_split_literal root_9781067 small_9781067_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9781073 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9781067_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9781073
#print axioms cover_9781067

def root_9760473 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9760473 : CoveredBy scale carrier boxes root_9760473 := by
  apply coveredBy_split_literal root_9760473 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9760474 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9781067 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9760474
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9781067
#print axioms cover_9760473

def root_9760468 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760468_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760468_right_fuel : Nat := 1
def small_9760468_right_count : Nat := 1
def small_9760468_right_encoded : String := "00000002"
theorem small_9760468_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9760468_right_root small_9760468_right_fuel small_9760468_right_count small_9760468_right_encoded = true := by
  decide +kernel
theorem small_9760468_right_covered : CoveredBy scale carrier boxes small_9760468_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9760468_right_root small_9760468_right_fuel small_9760468_right_count small_9760468_right_encoded small_9760468_right_checked

theorem cover_9760468 : CoveredBy scale carrier boxes root_9760468 := by
  apply coveredBy_split_literal root_9760468 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9760473 small_9760468_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9760473
  · exact small_9760468_right_covered
#print axioms cover_9760468

def root_9755896 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9755896 : CoveredBy scale carrier boxes root_9755896 := by
  apply coveredBy_split_literal root_9755896 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9755897 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9760468 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9755897
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9760468
#print axioms cover_9755896

def root_9755891 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9755891_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9755891_right_fuel : Nat := 1
def small_9755891_right_count : Nat := 1
def small_9755891_right_encoded : String := "00000001"
theorem small_9755891_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9755891_right_root small_9755891_right_fuel small_9755891_right_count small_9755891_right_encoded = true := by
  decide +kernel
theorem small_9755891_right_covered : CoveredBy scale carrier boxes small_9755891_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9755891_right_root small_9755891_right_fuel small_9755891_right_count small_9755891_right_encoded small_9755891_right_checked

theorem cover_9755891 : CoveredBy scale carrier boxes root_9755891 := by
  apply coveredBy_split_literal root_9755891 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9755896 small_9755891_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9755896
  · exact small_9755891_right_covered
#print axioms cover_9755891

def root_9792455 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9792455 : CoveredBy scale carrier boxes root_9792455 := by
  apply coveredBy_split_literal root_9792455 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3665.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3666.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3665.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3666.covered
#print axioms cover_9792455

def root_9792450 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9792450_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9792450_right_fuel : Nat := 1
def small_9792450_right_count : Nat := 1
def small_9792450_right_encoded : String := "00000004"
theorem small_9792450_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9792450_right_root small_9792450_right_fuel small_9792450_right_count small_9792450_right_encoded = true := by
  decide +kernel
theorem small_9792450_right_covered : CoveredBy scale carrier boxes small_9792450_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9792450_right_root small_9792450_right_fuel small_9792450_right_count small_9792450_right_encoded small_9792450_right_checked

theorem cover_9792450 : CoveredBy scale carrier boxes root_9792450 := by
  apply coveredBy_split_literal root_9792450 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9792455 small_9792450_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9792455
  · exact small_9792450_right_covered
#print axioms cover_9792450

def root_9792449 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9792449_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9792449_right_fuel : Nat := 21
def small_9792449_right_count : Nat := 263
def small_9792449_right_encoded : String := "1151E9090000000408A91301120701000000000008A912F912073D0208A91307120700FC05000104135D450500000002050000FE0000000700000007135D8105050000FE135D810904548A0113867100000000000CFD9BF90F350D0204548A07000000070000000700000001000000081386AD000CFD9BF900000007000000090000000000000004135D45090000000400000009000000020000000312073CFC0000000305000104135D450500000002050000FE135D810904548A0113867100000000000CFD9BF90F350D020000000800000001000000081386AD000CFD9BF9000000070F34D10200000001000000080000000000000004135D45090000000404548A0113867100000000000000000700000007135D8105050000FE135D810904548A0113867100000000000CFD9BF90F350D020CFD9C070F34D0FC0C9A87020000000800000007000000030F350CFC000000030C9A87020F8750F90C9A86FC00000007000000080000000100000008000000010F34D10200000001000000081386AD000CFD9BF90F350D020CFD9C070F34D0FC00000007000000030F350CFC000000030C9A87020F8750F900000007000000010F878CF9000000010C9A86FC0000000700000005000000010F34D102000000010CFD9C0700000008000000050000000000000004135D45090000000404548A0113867100000000000CFD9BF90F350D020CFD9C07000000070000000700000001000000081386AD000CFD9BF9000000070F34D1020000000100000005000000000000000200000001120701020000000108A913070000000812073CFC000000030500010400000008135D8105050000FE00000008000000050000000212073D0008A912F912073D0208A91307120700FC05000104135D45050000000200000007000000090000000312073CFC0000000305000104135D450500000002050000FE135D81090CFD9C010F34D100000000000CFD9BF9000000070F34D10200000001000000070F350D000CFD9BF9000000070F34D10200000001000000070000000000000004135D4509000000040CFD9C010F34D100000000000000000700000007135D8105050000FE135D81090CFD9C010F34D100000000000CFD9BF90F350D020CFD9C070F34D0FC00000007000000030F350CFC000000030C9A87020F8750F900000007000000010F878CF90000000100000005000000010F34D102000000010CFD9C0700000009000000050F350D000CFD9BF90F350D020CFD9C07000000090F350CFC000000030C9A87000F87510100000000000000050000000700000001000000090000000000000004135D4509000000040CFD9C010F34D100000000000CFD9BF900000007000000050F350D0000000009000000000000000200000001120701020000000108A913070000000912073CFC00000003050001040000000A0000000500000000"
theorem small_9792449_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9792449_right_root small_9792449_right_fuel small_9792449_right_count small_9792449_right_encoded = true := by
  decide +kernel
theorem small_9792449_right_covered : CoveredBy scale carrier boxes small_9792449_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9792449_right_root small_9792449_right_fuel small_9792449_right_count small_9792449_right_encoded small_9792449_right_checked

theorem cover_9792449 : CoveredBy scale carrier boxes root_9792449 := by
  apply coveredBy_split_literal root_9792449 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9792450 small_9792449_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9792450
  · exact small_9792449_right_covered
#print axioms cover_9792449

def root_9792444 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9792444_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9792444_right_fuel : Nat := 1
def small_9792444_right_count : Nat := 1
def small_9792444_right_encoded : String := "00000003"
theorem small_9792444_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9792444_right_root small_9792444_right_fuel small_9792444_right_count small_9792444_right_encoded = true := by
  decide +kernel
theorem small_9792444_right_covered : CoveredBy scale carrier boxes small_9792444_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9792444_right_root small_9792444_right_fuel small_9792444_right_count small_9792444_right_encoded small_9792444_right_checked

theorem cover_9792444 : CoveredBy scale carrier boxes root_9792444 := by
  apply coveredBy_split_literal root_9792444 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9792449 small_9792444_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9792449
  · exact small_9792444_right_covered
#print axioms cover_9792444

def root_9792443 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9792443 : CoveredBy scale carrier boxes root_9792443 := by
  apply coveredBy_split_literal root_9792443 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9792444 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3667.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9792444
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3667.covered
#print axioms cover_9792443

def root_9792437 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9792437_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9792437_left_fuel : Nat := 1
def small_9792437_left_count : Nat := 1
def small_9792437_left_encoded : String := "00000002"
theorem small_9792437_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9792437_left_root small_9792437_left_fuel small_9792437_left_count small_9792437_left_encoded = true := by
  decide +kernel
theorem small_9792437_left_covered : CoveredBy scale carrier boxes small_9792437_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9792437_left_root small_9792437_left_fuel small_9792437_left_count small_9792437_left_encoded small_9792437_left_checked

theorem cover_9792437 : CoveredBy scale carrier boxes root_9792437 := by
  apply coveredBy_split_literal root_9792437 small_9792437_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9792443 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9792437_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9792443
#print axioms cover_9792437

def root_9801017 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9801017 : CoveredBy scale carrier boxes root_9801017 := by
  apply coveredBy_split_literal root_9801017 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3668.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3669.root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3668.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3669.covered
#print axioms cover_9801017

def root_9801011 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9801011_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9801011_left_fuel : Nat := 1
def small_9801011_left_count : Nat := 1
def small_9801011_left_encoded : String := "00000004"
theorem small_9801011_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9801011_left_root small_9801011_left_fuel small_9801011_left_count small_9801011_left_encoded = true := by
  decide +kernel
theorem small_9801011_left_covered : CoveredBy scale carrier boxes small_9801011_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9801011_left_root small_9801011_left_fuel small_9801011_left_count small_9801011_left_encoded small_9801011_left_checked

theorem cover_9801011 : CoveredBy scale carrier boxes root_9801011 := by
  apply coveredBy_split_literal root_9801011 small_9801011_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9801017 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9801011_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9801017
#print axioms cover_9801011

def root_9800635 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9800635_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9800635_left_fuel : Nat := 18
def small_9800635_left_count : Nat := 175
def small_9800635_left_encoded : String := "120700FE04548A0113867100000000000CFD9BF90F350D020CFD9C050F34D104000000020CFD9C070F34D0FC00000005000000030F350CFC0000000304548A09000000071386ACFE000000040C9A8702000000070F878CF900000001000000060F350D040CFD9C070F34D0FC00000005000000030F350CFC0000000304548A09138670FE0C9A8702000000050F878CF90000000100000006000000041386ACFE000000040C9A87020F8750F90C9A87040F875105000000020C9A86FC000000050F87510700000003000000060F878D050C9A86FC000000050000000700000002000000010F878CF9000000010C9A8704000000060000000600000002000000010F34D102000000010CFD9C050F34D10400000002000000060F350D040CFD9C070000000600000006000000021386AD000CFD9BF90F350D020CFD9C050F34D104000000020CFD9C070F34D0FC0000000800000003000000080F350D040CFD9C070F34D0FC04548A09000000051386ACFE000000040C9A8702000000050F878CF9000000010C9A87040000000500000006000000030F350CFC0000000304548A09000000081386ACFE000000040C9A87020F8750F90C9A87040F875105000000020C9A86FC000000080F875107000000030000000800000008000000010F878CF9000000010C9A87040F875105000000020C9A86FC000000060F875107000000030000000A0F878D050C9A86FC000000080F87510700000003000000080000000200000002000000010F34D102000000010CFD9C050F34D104000000020CFD9C070F34D0FC00000006000000030F350CFC0000000304548A0900000007000000060F350D040CFD9C070F34D0FC00000006000000030F350CFC0000000304548A09138670FE0C9A87040000000A00000006000000041386ACFE000000040C9A87040F875105000000020000000600000006000000020000000000000004"
theorem small_9800635_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9800635_left_root small_9800635_left_fuel small_9800635_left_count small_9800635_left_encoded = true := by
  decide +kernel
theorem small_9800635_left_covered : CoveredBy scale carrier boxes small_9800635_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9800635_left_root small_9800635_left_fuel small_9800635_left_count small_9800635_left_encoded small_9800635_left_checked

theorem cover_9800635 : CoveredBy scale carrier boxes root_9800635 := by
  apply coveredBy_split_literal root_9800635 small_9800635_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9801011 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9800635_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9801011
#print axioms cover_9800635

def root_9800629 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9800629_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9800629_left_fuel : Nat := 1
def small_9800629_left_count : Nat := 1
def small_9800629_left_encoded : String := "00000003"
theorem small_9800629_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9800629_left_root small_9800629_left_fuel small_9800629_left_count small_9800629_left_encoded = true := by
  decide +kernel
theorem small_9800629_left_covered : CoveredBy scale carrier boxes small_9800629_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9800629_left_root small_9800629_left_fuel small_9800629_left_count small_9800629_left_encoded small_9800629_left_checked

theorem cover_9800629 : CoveredBy scale carrier boxes root_9800629 := by
  apply coveredBy_split_literal root_9800629 small_9800629_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9800635 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9800629_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9800635
#print axioms cover_9800629

def root_9800333 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9800333_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9800333_left_fuel : Nat := 19
def small_9800333_left_count : Nat := 135
def small_9800333_left_encoded : String := "120700FC08A91309120700FE04548A0113867100000000000CFD9BF9000000050F34D10200000001000000061386AD000CFD9BF90F350D0200000005000000010F34D102000000010CFD9C050F34D104000000020000000600000006000000000000000412073CFE0000000404548A0113867100000000000CFD9BF90F350D020CFD9C050F34D1040000000204548A07000000091386ACFC000000030CFD9C090F34D0FE00000005000000040F350CFE00000004000000090F350D0404548A07138670FC0CFD9C09000000050F350CFE0000000400000009000000031386ACFC000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87020F8750F90C9A87040F875105000000020C9A86FE000000050000000900000009000000010F878CF9000000010C9A8704000000060000000600000002000000010F34D102000000010CFD9C050F34D10400000002000000060F350D0404548A070000000600000006000000021386AD000CFD9BF90F350D020CFD9C050F34D10400000002000000090F350D0404548A07138670FC00000009000000031386ACFC000000030CFD9C090F34D0FE0C9A8702000000050F878CF90000000100000009000000040F350CFE000000040000000900000002000000010F34D102000000010CFD9C050F34D10400000002000000090F350D0404548A07000000091386ACFC000000030CFD9C090000000900000009000000020000000000000003"
theorem small_9800333_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9800333_left_root small_9800333_left_fuel small_9800333_left_count small_9800333_left_encoded = true := by
  decide +kernel
theorem small_9800333_left_covered : CoveredBy scale carrier boxes small_9800333_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9800333_left_root small_9800333_left_fuel small_9800333_left_count small_9800333_left_encoded small_9800333_left_checked

theorem cover_9800333 : CoveredBy scale carrier boxes root_9800333 := by
  apply coveredBy_split_literal root_9800333 small_9800333_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9800629 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9800333_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9800629
#print axioms cover_9800333

def root_9800328 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9800328_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9800328_right_fuel : Nat := 1
def small_9800328_right_count : Nat := 1
def small_9800328_right_encoded : String := "00000002"
theorem small_9800328_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9800328_right_root small_9800328_right_fuel small_9800328_right_count small_9800328_right_encoded = true := by
  decide +kernel
theorem small_9800328_right_covered : CoveredBy scale carrier boxes small_9800328_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9800328_right_root small_9800328_right_fuel small_9800328_right_count small_9800328_right_encoded small_9800328_right_checked

theorem cover_9800328 : CoveredBy scale carrier boxes root_9800328 := by
  apply coveredBy_split_literal root_9800328 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9800333 small_9800328_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9800333
  · exact small_9800328_right_covered
#print axioms cover_9800328

def root_9799494 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799494_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799494_left_fuel : Nat := 27
def small_9799494_left_count : Nat := 389
def small_9799494_left_encoded : String := "120701040000000208A91307120700FC08A91309120700FE04548A01000000051386AD0000000005000000000000000412073CFE0000000404548A0113867100000000000CFD9BF90F350D0204548A0500000009000000090000000100000009000000090000000312073CFC0000000308A91309120700FE04548A0113867100000000000CFD9BF90F350D0204548A0513867104000000020CFD9C070F34D0FC0000000500000003000000081386AD040CFD9C070F34D0FC00000005000000030000000800000002000000010F34D1020000000104548A0513867104000000020CFD9C070F34D0FC0000000600000003000000061386AD040CFD9C070000000600000006000000021386AD000CFD9BF90F350D0200000008000000010F34D1020000000104548A0513867104000000020CFD9C070F34D0FC04548A09000000080000000600000003000000081386AD040CFD9C070F34D0FC00000006000000030F350CFC0000000304548A09000000071386ACFE000000040C9A86FC000000060000000700000002000000000000000412073CFE0000000404548A0113867100000000000CFD9BF90F350D0204548A0513867104000000020CFD9C070F34D0FC0CFD9C090F34D0FE0C9A87020000000500000006000000040F350CFE0000000400000009000000030F350CFC000000030CFD9C090F34D0FE0C9A87020F8750F900000008000000010F878CF9000000010C9A86FC0000000600000007000000040F350CFE000000040C9A87020F8750F90C9A86FC0F878D0700000009000000030F875107000000030C9A86FE0F878D09022A458100000007000000080000000400000009000000010F878CF9000000010C9A86FC0F878D0700000009000000030F875107000000030C9A86FE00000006000000091386AD040CFD9C070F34D0FC0CFD9C090F34D0FE0C9A87020F8750F9000000050000000100000006000000040F350CFE0000000400000009000000030F350CFC000000030CFD9C090F34D0FE0C9A87020F8750F90C9A86FC0000000800000007000000010F878CF90000000100000006000000040F350CFE000000040C9A87020F8750F90C9A86FC0F878D070C9A86FE0F878D09022A458100000006000000090000000400000009000000030F875107000000030C9A86FE0F878D09022A45810000000613E20100067ECE8512EA5904000000020000000712EA95040B4D440200000007000000060000000200000000000000040F87510900000004022A458113E1C50000000000067ECE85000000090000000600000009000000010F878CF9000000010C9A86FC000000060F875107000000030C9A86FE000000060F875109000000040000000500000002000000010F34D1020000000104548A0513867104000000020CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE0000000600000004000000061386AD040CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE000000060000000400000006000000021386AD000CFD9BF90F350D0204548A0513867104000000020CFD9C070F34D0FC00000009000000030F350CFC000000030CFD9C090F34D0FE00000008000000040F350CFE000000040C9A8702000000090F878CF900000001000000091386AD040CFD9C070F34D0FC0CFD9C090000000900000009000000030F350CFC000000030CFD9C090F34D0FE0C9A8702000000080F878CF9000000010C9A86FC000000080F8751070000000300000008000000040F350CFE000000040C9A87020F8750F90C9A86FC000000090F875107000000030C9A86FE0000000800000009000000010F878CF9000000010C9A86FC000000090F875107000000030C9A86FE0F878D0900000009000000040000000900000002000000010F34D1020000000104548A0513867104000000020CFD9C07000000090F350CFC000000030CFD9C090F34D0FE0C9A86FC000000060F87510700000003067ECE810000000600000008000000040F350CFE00000004000000091386AD040CFD9C070F34D0FC00000009000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC000000060F8751070000000300000006000000040F350CFE00000004000000090000000200000000"
theorem small_9799494_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9799494_left_root small_9799494_left_fuel small_9799494_left_count small_9799494_left_encoded = true := by
  decide +kernel
theorem small_9799494_left_covered : CoveredBy scale carrier boxes small_9799494_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9799494_left_root small_9799494_left_fuel small_9799494_left_count small_9799494_left_encoded small_9799494_left_checked

theorem cover_9799494 : CoveredBy scale carrier boxes root_9799494 := by
  apply coveredBy_split_literal root_9799494 small_9799494_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9800328 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9799494_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9800328
#print axioms cover_9799494

def root_9799489 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799489_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799489_right_fuel : Nat := 1
def small_9799489_right_count : Nat := 1
def small_9799489_right_encoded : String := "00000001"
theorem small_9799489_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9799489_right_root small_9799489_right_fuel small_9799489_right_count small_9799489_right_encoded = true := by
  decide +kernel
theorem small_9799489_right_covered : CoveredBy scale carrier boxes small_9799489_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9799489_right_root small_9799489_right_fuel small_9799489_right_count small_9799489_right_encoded small_9799489_right_checked

theorem cover_9799489 : CoveredBy scale carrier boxes root_9799489 := by
  apply coveredBy_split_literal root_9799489 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9799494 small_9799489_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9799494
  · exact small_9799489_right_covered
#print axioms cover_9799489

def root_9799488 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799488_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799488_right_fuel : Nat := 18
def small_9799488_right_count : Nat := 191
def small_9799488_right_encoded : String := "120701020000000108A91305120701040000000208A91307120700FC08A91309120700FE000000060000000412073CFE0000000404548A0100000006000000090000000312073CFC0000000308A91309120700FE04548A01000000061386AD00045489F91386AD0204548A0513867104000000020CFD9C070F34D0FC000000060000000300000006000000060000000100000006000000000000000412073CFE0000000404548A011386710000000000045489F91386AD0204548A051386710400000002000000060000000600000001000000061386AD00045489F91386AD0204548A0513867104000000020CFD9C07000000090F350CFC000000030CFD9C090F34D0FE0000000600000004000000061386AD040CFD9C07000000090F350CFC000000030CFD9C090F34D0FE0000000600000004000000060000000200000001138671020000000104548A0513867104000000020CFD9C070000000900000006000000060000000012073D0408A91307120700FC08A91309120700FE000000060000000412073CFE0000000404548A0100000006000000090000000312073CFC0000000308A91309120700FE04548A01000000061386AD00045489F91386AD020CFD9C050F34D10400000002000000060F350D04000000060000000200000001138671020000000100000006000000000000000412073CFE0000000404548A011386710000000000045489F91386AD020CFD9C050F34D10400000002000000060F350D040CFD9C07000000060000000600000002000000011386710200000001000000061386AD00045489F91386AD020CFD9C050F34D104000000020CFD9C07000000090F350CFC000000030CFD9C090F34D0FE0000000600000004000000060F350D040CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE0000000400000005000000020000000113867102000000010CFD9C050F34D10400000002000000060F350D040CFD9C070F34D0FC000000060000000300000006000000020000000000000002"
theorem small_9799488_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9799488_right_root small_9799488_right_fuel small_9799488_right_count small_9799488_right_encoded = true := by
  decide +kernel
theorem small_9799488_right_covered : CoveredBy scale carrier boxes small_9799488_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9799488_right_root small_9799488_right_fuel small_9799488_right_count small_9799488_right_encoded small_9799488_right_checked

theorem cover_9799488 : CoveredBy scale carrier boxes root_9799488 := by
  apply coveredBy_split_literal root_9799488 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9799489 small_9799488_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9799489
  · exact small_9799488_right_covered
#print axioms cover_9799488

def root_9799482 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799482_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799482_left_fuel : Nat := 1
def small_9799482_left_count : Nat := 1
def small_9799482_left_encoded : String := "00000000"
theorem small_9799482_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9799482_left_root small_9799482_left_fuel small_9799482_left_count small_9799482_left_encoded = true := by
  decide +kernel
theorem small_9799482_left_covered : CoveredBy scale carrier boxes small_9799482_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9799482_left_root small_9799482_left_fuel small_9799482_left_count small_9799482_left_encoded small_9799482_left_checked

theorem cover_9799482 : CoveredBy scale carrier boxes root_9799482 := by
  apply coveredBy_split_literal root_9799482 small_9799482_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9799488 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9799482_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9799488
#print axioms cover_9799482

def root_9799481 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9799481 : CoveredBy scale carrier boxes root_9799481 := by
  apply coveredBy_split_literal root_9799481 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9799482 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3670.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9799482
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3670.covered
#print axioms cover_9799481

def root_9799476 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799476_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799476_right_fuel : Nat := 1
def small_9799476_right_count : Nat := 1
def small_9799476_right_encoded : String := "00000004"
theorem small_9799476_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9799476_right_root small_9799476_right_fuel small_9799476_right_count small_9799476_right_encoded = true := by
  decide +kernel
theorem small_9799476_right_covered : CoveredBy scale carrier boxes small_9799476_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9799476_right_root small_9799476_right_fuel small_9799476_right_count small_9799476_right_encoded small_9799476_right_checked

theorem cover_9799476 : CoveredBy scale carrier boxes root_9799476 := by
  apply coveredBy_split_literal root_9799476 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9799481 small_9799476_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9799481
  · exact small_9799476_right_covered
#print axioms cover_9799476

def root_9799475 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799475_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799475_right_fuel : Nat := 31
def small_9799475_right_count : Nat := 409
def small_9799475_right_encoded : String := "1151E9090000000408A91301120701000000000008A912F912073D0208A91305120701040000000208A913070000000912073CFC00000003050000FE135D810904548A0113867100000000000CFD9BF90F350D0204548A05000000091386AD040CFD9C07000000090F350CFC000000030C9A8702000000090000000900000002000000010F34D10200000001000000091386AD000CFD9BF90F350D0200000009000000010000000900000000000000040000000912073D0408A91307120700FC050000FE135D810904548A0113867100000000000CFD9BF90F350D020000000900000001000000090000000900000004000000090000000312073CFC00000003050000FE135D810904548A0113867100000000000CFD9BF90F350D020CFD9C050F34D104000000020CFD9C070F34D0FC00000009000000030F350CFC000000030C9A87020F8750F90C9A86FC0F878D0700000009000000030F87510700000003078000FE128A7D09022A458113E1C500000000000AD3578510D10104000000020000000500000005000000050000000400000005000000010F878CF9000000010C9A86FC00000009000000050F350D040CFD9C070F34D0FC0C9A87020F8750F90C9A87040F87510500000002078000FE128A7D09022A45810000000800000007000000040000000700000009000000010F878CF9000000010C9A87040000000800000009000000030F350CFC000000030C9A87020F8750F90C9A87040F875105000000020C9A86FC0F878D07078000FE128A7D09022A458100000008000000070000000400000007000000030F87510700000003000000080F878D050C9A86FC0F878D07078000FE128A7D09022A458113E1C500000000000B4D44020000000800000006000000090000000400000009000000030F87510700000003078000FE128A7D09022A458113E1C500000000000000000500000005000000040000000500000002000000010F878CF9000000010C9A8704000000080F878D050C9A86FC0F878D07078000FE000000080000000500000003000000050000000200000002000000010F34D102000000010CFD9C050F34D10400000002000000090F350D040CFD9C07000000080F350CFC0000000300000005000000021386AD000CFD9BF90F350D020CFD9C050F34D10400000002000000090F350D040CFD9C070F34D0FC00000009000000030F350CFC000000030C9A87020F8750F90C9A87040F875105000000020C9A86FC0F878D0700000007000000030F87510700000003000000050F878D050C9A86FC000000090F875107000000030000000500000002000000010F878CF9000000010C9A87040F87510500000002000000050000000500000002000000010F34D102000000010CFD9C050F34D10400000002000000090F350D040CFD9C070000000900000005000000020000000000000004135D45090000000404548A0113867100000000000CFD9BF90F350D020CFD9C050F34D10400000002000000090F350D040CFD9C070F34D0FC00000009000000030F350CFC000000030C9A87020F8750F90C9A87040000000800000005000000010000000500000002000000010F34D102000000010CFD9C0500000009000000051386AD000CFD9BF90F350D020CFD9C05000000090F350D040CFD9C07000000090F350CFC0000000300000005000000020000000100000009000000000000000200000001120701020000000108A9130512070104000000020000000912073D0408A913070000000912073CFC00000003050000FE135D810904548A011386710000000000000000081386AD00045489F91386AD020000000900000001000000050000000000000004000000050000000212073D0008A912F912073D0208A9130512070104000000020000000912073D0408A91307120700FC000000090000000312073CFC00000003050000FE135D81090CFD9C010F34D100000000000CFD9BF90F350D020CFD9C050F34D10400000002000000090F350D040CFD9C07000000090F350CFC000000030C9A87020F8750F90C9A87040F875105000000020000000900000009000000010F878CF9000000010000000900000002000000010F34D10200000001000000090F350D000CFD9BF90F350D020000000900000001000000090000000000000004135D4509000000040CFD9C010F34D1000000000000000009000000090000000200000001120701020000000108A913051207010400000002000000090000000900000000"
theorem small_9799475_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9799475_right_root small_9799475_right_fuel small_9799475_right_count small_9799475_right_encoded = true := by
  decide +kernel
theorem small_9799475_right_covered : CoveredBy scale carrier boxes small_9799475_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9799475_right_root small_9799475_right_fuel small_9799475_right_count small_9799475_right_encoded small_9799475_right_checked

theorem cover_9799475 : CoveredBy scale carrier boxes root_9799475 := by
  apply coveredBy_split_literal root_9799475 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9799476 small_9799475_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9799476
  · exact small_9799475_right_covered
#print axioms cover_9799475

def root_9799470 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799470_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799470_right_fuel : Nat := 1
def small_9799470_right_count : Nat := 1
def small_9799470_right_encoded : String := "00000003"
theorem small_9799470_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9799470_right_root small_9799470_right_fuel small_9799470_right_count small_9799470_right_encoded = true := by
  decide +kernel
theorem small_9799470_right_covered : CoveredBy scale carrier boxes small_9799470_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9799470_right_root small_9799470_right_fuel small_9799470_right_count small_9799470_right_encoded small_9799470_right_checked

theorem cover_9799470 : CoveredBy scale carrier boxes root_9799470 := by
  apply coveredBy_split_literal root_9799470 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9799475 small_9799470_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9799475
  · exact small_9799470_right_covered
#print axioms cover_9799470

def root_9799469 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9799469 : CoveredBy scale carrier boxes root_9799469 := by
  apply coveredBy_split_literal root_9799469 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9799470 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3671.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9799470
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3671.covered
#print axioms cover_9799469

def root_9799464 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799464_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799464_right_fuel : Nat := 1
def small_9799464_right_count : Nat := 1
def small_9799464_right_encoded : String := "00000002"
theorem small_9799464_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9799464_right_root small_9799464_right_fuel small_9799464_right_count small_9799464_right_encoded = true := by
  decide +kernel
theorem small_9799464_right_covered : CoveredBy scale carrier boxes small_9799464_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9799464_right_root small_9799464_right_fuel small_9799464_right_count small_9799464_right_encoded small_9799464_right_checked

theorem cover_9799464 : CoveredBy scale carrier boxes root_9799464 := by
  apply coveredBy_split_literal root_9799464 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9799469 small_9799464_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9799469
  · exact small_9799464_right_covered
#print axioms cover_9799464

def root_9792436 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9792436 : CoveredBy scale carrier boxes root_9792436 := by
  apply coveredBy_split_literal root_9792436 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9792437 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9799464 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9792437
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9799464
#print axioms cover_9792436

def root_9792430 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9792430_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9792430_left_fuel : Nat := 1
def small_9792430_left_count : Nat := 1
def small_9792430_left_encoded : String := "00000001"
theorem small_9792430_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9792430_left_root small_9792430_left_fuel small_9792430_left_count small_9792430_left_encoded = true := by
  decide +kernel
theorem small_9792430_left_covered : CoveredBy scale carrier boxes small_9792430_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9792430_left_root small_9792430_left_fuel small_9792430_left_count small_9792430_left_encoded small_9792430_left_checked

theorem cover_9792430 : CoveredBy scale carrier boxes root_9792430 := by
  apply coveredBy_split_literal root_9792430 small_9792430_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9792436 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9792430_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9792436
#print axioms cover_9792430

def root_9755890 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9755890 : CoveredBy scale carrier boxes root_9755890 := by
  apply coveredBy_split_literal root_9755890 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9755891 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9792430 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9755891
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9792430
#print axioms cover_9755890

def root_9755885 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9755885_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9755885_right_fuel : Nat := 1
def small_9755885_right_count : Nat := 1
def small_9755885_right_encoded : String := "00000000"
theorem small_9755885_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9755885_right_root small_9755885_right_fuel small_9755885_right_count small_9755885_right_encoded = true := by
  decide +kernel
theorem small_9755885_right_covered : CoveredBy scale carrier boxes small_9755885_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9755885_right_root small_9755885_right_fuel small_9755885_right_count small_9755885_right_encoded small_9755885_right_checked

theorem cover_9755885 : CoveredBy scale carrier boxes root_9755885 := by
  apply coveredBy_split_literal root_9755885 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9755890 small_9755885_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9755890
  · exact small_9755885_right_covered
#print axioms cover_9755885

def root_9753877 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9753877 : CoveredBy scale carrier boxes root_9753877 := by
  apply coveredBy_split_literal root_9753877 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3651.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9755885 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3651.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9755885
#print axioms cover_9753877

def root_9748045 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9748045 : CoveredBy scale carrier boxes root_9748045 := by
  apply coveredBy_split_literal root_9748045 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9748046 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9753877 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9748046
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9753877
#print axioms cover_9748045

def root_9810520 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9810520 : CoveredBy scale carrier boxes root_9810520 := by
  apply coveredBy_split_literal root_9810520 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3672.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3673.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3672.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3673.covered
#print axioms cover_9810520

def root_9748044 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9748044 : CoveredBy scale carrier boxes root_9748044 := by
  apply coveredBy_split_literal root_9748044 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9748045 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9810520 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9748045
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9810520
#print axioms cover_9748044

def root_9726650 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9726650 : CoveredBy scale carrier boxes root_9726650 := by
  apply coveredBy_split_literal root_9726650 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9726651 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9748044 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9726651
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9748044
#print axioms cover_9726650

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232
