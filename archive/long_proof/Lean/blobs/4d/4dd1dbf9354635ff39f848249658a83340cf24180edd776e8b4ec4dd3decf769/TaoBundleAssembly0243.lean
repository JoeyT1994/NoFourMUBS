import TaoBundleAssembly0242
import TaoBundleChunkBatch0966
import TaoBundleChunkBatch0968
import TaoBundleChunkBatch0969
import TaoBundleChunkBatch0970
import TaoBundleChunkBatch0971
import TaoBundleChunkBatch0972
import TaoBundleChunkBatch0973
import TaoBundleChunkBatch0974
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243
def root_10320002 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10320002_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10320002_left_fuel : Nat := 33
def small_10320002_left_count : Nat := 479
def small_10320002_left_encoded : String := "0F34D102000000010CFD9C070F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE000000070F8751090000000400000007000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC0F878D070780010400000005128A7CFB00000002022A4581000000050000000A000000030F875107000000030000000A000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D0907800104128A40FB022A4581000000050000000700000002128A7CFB00000002022A458113E1C500000000000AD3578310D10102000000010DE7C9FC000000060000000A10D13D020DE7C9FC000000060E5FD90700000003000000060000000113E201000AD3578310D10102000000010000000710D13D020DE7C9FC0E60150700000007000000030000000A0000000100000000000000040F8751090000000407800104128A40FB022A458113E1C500000000000AD357830000000710D13D020DE7C9FC000000070E5FD907000000030B4D43FE0000000700000008000000010000000700000002128A7CFB00000002022A458113E1C500000000000AD3578310D10102000000010000000810D13D020DE7C9FC0E60150700000008000000030E5FD907000000030B4D43FE00000006000000080000000113E201000AD3578310D10102000000010000000710D13D020DE7C9FC000000070E5FD907000000030B4D43FE000000071080110900000004000000070000000100000000000000030F875107000000030C9A86FE0F878D0907800104128A40FB022A458113E1C500000000000AD3578310D10102000000010000000A10D13D020B4D43FC10804D070DE7C9FE000000050E5FD9090000000406400104000000050000000A000000030000000A000000010000000A00000002128A7CFB00000002022A458113E1C500000000000AD3578310D10102000000010000000A10D13D020B4D43FC10804D070DE7C9FE000000060E5FD9090000000400000006000000030000000A000000010000000A000000040F8751090000000407800104128A40FB022A458113E1C500000000000AD3578310D10102000000010B4D43FC10804D07000000070000000310801107000000030B4D43FE0000000A108011090000000406400104000000070000000A10D13D020B4D43FC10804D070B4D43FE10804D090640010412FF70FB000000070000000212FFACFB000000020115234113F85900000000000BE879C31011710200000001000000060000000600000007000000041080110900000004064001040000000712FFACFB000000020115234100000008000000070000000310801107000000030B4D43FE10804D090640010412FF70FB0115234113F85900000000000BE879C30000000A0000000A0000000A0000000212FFACFB000000020000000A0000000410801109000000040640010412FF70FB0115234113F85900000000000BE879C31011710200000001000000071011AD020AA6A27C10EDAD070AA6A27E00000007000000080000000310ED7107000000030AA6A27E0000000A10ED71090000000405A00104133134FB0000000700000002133170FB00000002008A9221000000080000000700000001000000070000000212FFACFB000000020115234113F85900000000000BE879C310117102000000010000000A1011AD020AA6A27C10EDAD070AA6A27E00000006000000080000000310ED7107000000030AA6A27E0000000A10ED71090000000406E001040000000A12C820FB000000020000000A0000000113F895000BE879C30000000A1011AD020AA6A27C10EDAD070000000A000000030000000A00000001000000000000000113E201000AD3578310D10102000000010000000710D13D020B4D43FC10804D07000000070000000310801107000000030B4D43FE0000000A108011090000000406400104000000070000000A000000010000000000000002128A7CFB00000002022A458113E1C500000000000AD3578310D10102000000010B4D43FC10804D070B4D43FE00000006000000080000000310801107000000030000000A10D13D020B4D43FC10804D070B4D43FE10804D0908C0010411FBE8FB01152341000000060000000A000000020000000600000004108011090000000408C0010411FBE8FB011523410000000613F895000BE879C31011710200000001000000071011AD020BF3E57C000000061008ED070000000300000006000000010000000000000002000000060000000310801107000000030B4D43FE10804D0908C001040000000A0000000600000004108011090000000408C0010411FBE8FB0115234113F85900000000000BE879C31011710200000001000000060000000613F895000BE879C30000000A0000000A000000000000000211FC24FB000000020115234100000006000000050000000113E201000AD3578310D10102000000010000000A10D13D020B4D43FC10804D070B4D43FE10804D090000000A00000004108011090000000408C0010411FBE8FB000000070000000211FC24FB00000002033F67C113BBF500000000000BE879C30000000A0000000A0000000A0000000310801107000000030B4D43FE0000000A108011090000000408C001040000000A000000050000000100000000"
theorem small_10320002_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10320002_left_root small_10320002_left_fuel small_10320002_left_count small_10320002_left_encoded = true := by
  decide +kernel
theorem small_10320002_left_covered : CoveredBy scale carrier boxes small_10320002_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10320002_left_root small_10320002_left_fuel small_10320002_left_count small_10320002_left_encoded small_10320002_left_checked

theorem cover_10320002 : CoveredBy scale carrier boxes root_10320002 := by
  apply coveredBy_split_literal root_10320002 small_10320002_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0242.root_10321022 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_10320002_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0242.cover_10321022
#print axioms cover_10320002

def root_10319996 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10319996_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10319996_left_fuel : Nat := 1
def small_10319996_left_count : Nat := 1
def small_10319996_left_encoded : String := "00000000"
theorem small_10319996_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10319996_left_root small_10319996_left_fuel small_10319996_left_count small_10319996_left_encoded = true := by
  decide +kernel
theorem small_10319996_left_covered : CoveredBy scale carrier boxes small_10319996_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10319996_left_root small_10319996_left_fuel small_10319996_left_count small_10319996_left_encoded small_10319996_left_checked

theorem cover_10319996 : CoveredBy scale carrier boxes root_10319996 := by
  apply coveredBy_split_literal root_10319996 small_10319996_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10320002 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_10319996_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10320002
#print axioms cover_10319996

def root_10319995 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10319995 : CoveredBy scale carrier boxes root_10319995 := by
  apply coveredBy_split_literal root_10319995 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10319996 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3873.root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10319996
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3873.covered
#print axioms cover_10319995

def root_10319989 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10319989_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10319989_left_fuel : Nat := 1
def small_10319989_left_count : Nat := 1
def small_10319989_left_encoded : String := "00000002"
theorem small_10319989_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10319989_left_root small_10319989_left_fuel small_10319989_left_count small_10319989_left_encoded = true := by
  decide +kernel
theorem small_10319989_left_covered : CoveredBy scale carrier boxes small_10319989_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10319989_left_root small_10319989_left_fuel small_10319989_left_count small_10319989_left_encoded small_10319989_left_checked

theorem cover_10319989 : CoveredBy scale carrier boxes root_10319989 := by
  apply coveredBy_split_literal root_10319989 small_10319989_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10319995 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_10319989_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10319995
#print axioms cover_10319989

def root_10318055 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10318055 : CoveredBy scale carrier boxes root_10318055 := by
  apply coveredBy_split_literal root_10318055 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3869.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10319989 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3869.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10319989
#print axioms cover_10318055

def root_10318049 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10318049_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10318049_left_fuel : Nat := 1
def small_10318049_left_count : Nat := 1
def small_10318049_left_encoded : String := "00000004"
theorem small_10318049_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10318049_left_root small_10318049_left_fuel small_10318049_left_count small_10318049_left_encoded = true := by
  decide +kernel
theorem small_10318049_left_covered : CoveredBy scale carrier boxes small_10318049_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10318049_left_root small_10318049_left_fuel small_10318049_left_count small_10318049_left_encoded small_10318049_left_checked

theorem cover_10318049 : CoveredBy scale carrier boxes root_10318049 := by
  apply coveredBy_split_literal root_10318049 small_10318049_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10318055 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10318049_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10318055
#print axioms cover_10318049

def root_10317973 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317973_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317973_left_fuel : Nat := 13
def small_10317973_left_count : Nat := 35
def small_10317973_left_encoded : String := "120700FE05000104135D44FB0000000500000002135D80FB0000000204548A0113867100000000000CFD9C03000000050F350D0200000005000000011386AD000CFD9C030F34D102000000010000000A0F350D020CFD9C07000000050F350CFC0000000304548A09000000051386ACFE000000040C9A8702000000050000000A000000010000000000000004"
theorem small_10317973_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10317973_left_root small_10317973_left_fuel small_10317973_left_count small_10317973_left_encoded = true := by
  decide +kernel
theorem small_10317973_left_covered : CoveredBy scale carrier boxes small_10317973_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10317973_left_root small_10317973_left_fuel small_10317973_left_count small_10317973_left_encoded small_10317973_left_checked

theorem cover_10317973 : CoveredBy scale carrier boxes root_10317973 := by
  apply coveredBy_split_literal root_10317973 small_10317973_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10318049 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10317973_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10318049
#print axioms cover_10317973

def root_10317967 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317967_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317967_left_fuel : Nat := 1
def small_10317967_left_count : Nat := 1
def small_10317967_left_encoded : String := "00000003"
theorem small_10317967_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10317967_left_root small_10317967_left_fuel small_10317967_left_count small_10317967_left_encoded = true := by
  decide +kernel
theorem small_10317967_left_covered : CoveredBy scale carrier boxes small_10317967_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10317967_left_root small_10317967_left_fuel small_10317967_left_count small_10317967_left_encoded small_10317967_left_checked

theorem cover_10317967 : CoveredBy scale carrier boxes root_10317967 := by
  apply coveredBy_split_literal root_10317967 small_10317967_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10317973 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10317967_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10317973
#print axioms cover_10317967

def root_10317891 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317891_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317891_left_fuel : Nat := 13
def small_10317891_left_count : Nat := 35
def small_10317891_left_encoded : String := "120700FC08A913090000000512073CFE0000000405000104135D44FB0000000500000002135D80FB0000000204548A0113867100000000000CFD9C03000000050F350D0200000005000000011386AD000CFD9C030F34D10200000001000000070F350D0204548A07000000051386ACFC000000030CFD9C090000000500000007000000010000000000000003"
theorem small_10317891_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10317891_left_root small_10317891_left_fuel small_10317891_left_count small_10317891_left_encoded = true := by
  decide +kernel
theorem small_10317891_left_covered : CoveredBy scale carrier boxes small_10317891_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10317891_left_root small_10317891_left_fuel small_10317891_left_count small_10317891_left_encoded small_10317891_left_checked

theorem cover_10317891 : CoveredBy scale carrier boxes root_10317891 := by
  apply coveredBy_split_literal root_10317891 small_10317891_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10317967 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10317891_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10317967
#print axioms cover_10317891

def root_10317886 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317886_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317886_right_fuel : Nat := 1
def small_10317886_right_count : Nat := 1
def small_10317886_right_encoded : String := "00000001"
theorem small_10317886_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10317886_right_root small_10317886_right_fuel small_10317886_right_count small_10317886_right_encoded = true := by
  decide +kernel
theorem small_10317886_right_covered : CoveredBy scale carrier boxes small_10317886_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10317886_right_root small_10317886_right_fuel small_10317886_right_count small_10317886_right_encoded small_10317886_right_checked

theorem cover_10317886 : CoveredBy scale carrier boxes root_10317886 := by
  apply coveredBy_split_literal root_10317886 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10317891 small_10317886_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10317891
  · exact small_10317886_right_covered
#print axioms cover_10317886

def root_10317466 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317466_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317466_left_fuel : Nat := 25
def small_10317466_left_count : Nat := 199
def small_10317466_left_encoded : String := "120701020000000108A91307120700FC08A9130900000005000000070000000312073CFC0000000308A91309120700FE0500010400000005135D80FB0000000204548A01000000050000000A0000000412073CFE0000000405000104135D44FB04548A01138671000000000004548A0313867102000000010CFD9C07000000070F350CFC000000030CFD9C0900000009000000071386AD020CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FC000000070F875107000000030C9A86FE000000070F8751090000000400000007000000011386AD0004548A031386710200000001000000071386AD020CFD9C07000000070F350CFC000000030CFD9C090000000A00000007000000010000000000000002135D80FB0000000204548A01138671000000000004548A0313867102000000010CFD9C070F34D0FC0CFD9C090000000500000007000000030F350CFC000000030CFD9C090F34D0FE00000009000000040F350CFE000000040C9A86FC0F878D070C9A86FE0000000700000007000000030F875107000000030C9A86FE0000000A0F8751090000000407800104000000070000000A1386AD020CFD9C070F34D0FC0CFD9C090F34D0FE000000050000000400000007000000030F350CFC000000030CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D090780010400000007128A7CFB00000002022A458113E1C50000000000067ECE830000000A0000000A00000007000000040F8751090000000400000007000000030F875107000000030C9A86FE0F878D090000000A000000040F8751090000000407800104128A40FB0000000700000002128A7CFB00000002022A458113E1C50000000000067ECE830000000A0000000A0000000A000000011386AD0004548A0313867102000000010CFD9C07000000070F350CFC000000030CFD9C090000000A000000071386AD020CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090000000A0F350CFE000000040C9A86FC000000070000000A0000000100000000"
theorem small_10317466_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10317466_left_root small_10317466_left_fuel small_10317466_left_count small_10317466_left_encoded = true := by
  decide +kernel
theorem small_10317466_left_covered : CoveredBy scale carrier boxes small_10317466_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10317466_left_root small_10317466_left_fuel small_10317466_left_count small_10317466_left_encoded small_10317466_left_checked

theorem cover_10317466 : CoveredBy scale carrier boxes root_10317466 := by
  apply coveredBy_split_literal root_10317466 small_10317466_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10317886 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10317466_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10317886
#print axioms cover_10317466

def root_10317460 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317460_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317460_left_fuel : Nat := 1
def small_10317460_left_count : Nat := 1
def small_10317460_left_encoded : String := "00000000"
theorem small_10317460_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10317460_left_root small_10317460_left_fuel small_10317460_left_count small_10317460_left_encoded = true := by
  decide +kernel
theorem small_10317460_left_covered : CoveredBy scale carrier boxes small_10317460_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10317460_left_root small_10317460_left_fuel small_10317460_left_count small_10317460_left_encoded small_10317460_left_checked

theorem cover_10317460 : CoveredBy scale carrier boxes root_10317460 := by
  apply coveredBy_split_literal root_10317460 small_10317460_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10317466 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10317460_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10317466
#print axioms cover_10317460

def root_10317459 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317459_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317459_right_fuel : Nat := 31
def small_10317459_right_count : Nat := 205
def small_10317459_right_encoded : String := "12073D0008A91303120701020000000108A913070000000712073CFC0000000308A91309120700FE0000000A000000040000000712073D0208A91307120700FC08A91309120700FE0000000500000004000000070000000312073CFC0000000308A91309120700FE05000104135D44FB0CFD9C010F34D100000000000CFD9C03000000050000000A0000000A00000002135D80FB000000020CFD9C010F34D100000000000CFD9C030000000A0F350D020CFD9C070000000A0000000A000000010000000A0000000412073CFE0000000405000104135D44FB0CFD9C010F34D100000000000CFD9C030F34D10200000001000000070F350D020CFD9C07000000070F350CFC000000030CFD9C090F34D0FE0C9A87020F875103000000010C9A86FC000000070000000A000000070000000400000007000000010000000700000002135D80FB000000020CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9C07000000070F350CFC000000030CFD9C090000000A000000070F350D020CFD9C070F34D0FC0CFD9C090F34D0FE000000070000000400000007000000030F350CFC000000030CFD9C090F34D0FE0C9A87020F875103000000010C9A86FC0F878D070000000A000000030000000A0000000A000000040F350CFE000000040C9A87020F875103000000010C9A86FC0F878D070C9A86FE0F878D090780010400000007128A7CFB000000020AD3578110D10100000000000B4D440210801103000000010DE7C9FC00000007000000080000000700000007000000040F8751090000000400000007000000030F875107000000030C9A86FE0F878D09078001040000000A0000000A000000040F8751090000000407800104128A40FB0000000700000002128A7CFB000000020AD3578110D10100000000000B4D44020000000810804D030000000A000000010000000A0F878D030C9A86FC0F878D0700000007000000030F875107000000030C9A86FE0000000A0F875109000000040000000700000001000000010F350D000CFD9C030F34D10200000001000000070F350D020CFD9C07000000070F350CFC000000030CFD9C090F34D0FE0000000A000000040000000700000001000000000000000100000000"
theorem small_10317459_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10317459_right_root small_10317459_right_fuel small_10317459_right_count small_10317459_right_encoded = true := by
  decide +kernel
theorem small_10317459_right_covered : CoveredBy scale carrier boxes small_10317459_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10317459_right_root small_10317459_right_fuel small_10317459_right_count small_10317459_right_encoded small_10317459_right_checked

theorem cover_10317459 : CoveredBy scale carrier boxes root_10317459 := by
  apply coveredBy_split_literal root_10317459 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10317460 small_10317459_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10317460
  · exact small_10317459_right_covered
#print axioms cover_10317459

def root_10317454 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317454_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317454_right_fuel : Nat := 1
def small_10317454_right_count : Nat := 1
def small_10317454_right_encoded : String := "00000004"
theorem small_10317454_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10317454_right_root small_10317454_right_fuel small_10317454_right_count small_10317454_right_encoded = true := by
  decide +kernel
theorem small_10317454_right_covered : CoveredBy scale carrier boxes small_10317454_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10317454_right_root small_10317454_right_fuel small_10317454_right_count small_10317454_right_encoded small_10317454_right_checked

theorem cover_10317454 : CoveredBy scale carrier boxes root_10317454 := by
  apply coveredBy_split_literal root_10317454 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10317459 small_10317454_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10317459
  · exact small_10317454_right_covered
#print axioms cover_10317454

def root_10337931 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10337931_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10337931_left_fuel : Nat := 22
def small_10337931_left_count : Nat := 265
def small_10337931_left_encoded : String := "0F875103000000010C9A86FC0F878D0707800104128A40FB078000FE128A7D09022A458113E1C500000000000B4D440210801103000000010DE7C9FC0000000A0000000910804D030DE7C9FC0E6015070640010412FF70FB0000000A0000000200000009000000030E5FD907000000030640010412FF70FB08C000FE11FC250901152341000000090000000900000004000000090000000212FFACFB00000002000000090000000113E201000B4D440210801103000000010DE7C9FC0E60150700000009000000030000000910804D030DE7C9FC0E601507064001040000000712FFACFB0000000200000009000000030E5FD907000000030640010412FF70FB08C000FE00000007000000090000000212FFACFB0000000200000009000000010000000000000004128A410900000004022A45810000000A13E201000B4D44020000000910804D0300000009000000010000000000000002128A7CFB00000002078000FE128A7D09022A458113E1C500000000000B4D44020000000910804D030DE7C9FC0E6015070000000900000003000000090000000113E201000B4D44020000000910804D030DE7C9FC0E601507000000090000000300000009000000010000000000000004128A41090000000400000009000000030F8751070000000307800104128A40FB078000FE128A7D09022A458113E1C500000000000B4D440210801103000000010B4D43FC10804D0700000009000000030000000910804D030B4D43FC10804D070640010412FF70FB08C000FE11FC2509011523410000000913F89500000000090000000000000004000000090000000212FFACFB00000002000000090000000310801107000000030640010412FF70FB08C000FE11FC25090115234113F85900000000000BF3E5820000000910092903000000090000000113F895000BF3E582000000081009290300000009000000010000000000000004000000090000000212FFACFB00000002000000090000000113E201000B4D440210801103000000010B4D43FC10804D0700000009000000030000000910804D030B4D43FC10804D070640010412FF70FB08C000FE11FC2509033F67C1000000090000000900000004000000090000000212FFACFB00000002000000090000000310801107000000030640010412FF70FB08C000FE11FC2509033F67C1000000090000000800000004000000090000000212FFACFB0000000200000009000000010000000000000004128A410900000004022A45810000000913E201000B4D44020000000910804D0300000009000000010000000000000002128A7CFB00000002078000FE128A7D09022A458113E1C500000000000B4D44020000000910804D03000000090000000113E201000B4D44020000000910804D030B4D43FC10804D07000000090000000300000009000000010000000000000004128A41090000000400000009"
theorem small_10337931_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10337931_left_root small_10337931_left_fuel small_10337931_left_count small_10337931_left_encoded = true := by
  decide +kernel
theorem small_10337931_left_covered : CoveredBy scale carrier boxes small_10337931_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10337931_left_root small_10337931_left_fuel small_10337931_left_count small_10337931_left_encoded small_10337931_left_checked

theorem cover_10337931 : CoveredBy scale carrier boxes root_10337931 := by
  apply coveredBy_split_literal root_10337931 small_10337931_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3875.root coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_10337931_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3875.covered
#print axioms cover_10337931

def root_10337925 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10337925_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10337925_left_fuel : Nat := 1
def small_10337925_left_count : Nat := 1
def small_10337925_left_encoded : String := "00000003"
theorem small_10337925_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10337925_left_root small_10337925_left_fuel small_10337925_left_count small_10337925_left_encoded = true := by
  decide +kernel
theorem small_10337925_left_covered : CoveredBy scale carrier boxes small_10337925_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10337925_left_root small_10337925_left_fuel small_10337925_left_count small_10337925_left_encoded small_10337925_left_checked

theorem cover_10337925 : CoveredBy scale carrier boxes root_10337925 := by
  apply coveredBy_split_literal root_10337925 small_10337925_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10337931 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_10337925_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10337931
#print axioms cover_10337925

def root_10337785 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10337785_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10337785_left_fuel : Nat := 13
def small_10337785_left_count : Nat := 67
def small_10337785_left_encoded : String := "0F34D0FC0C9A87020F8751030000000107800104128A40FB078000FE128A7D09022A458113E1C500000000000AD357870000000510D13CFC000000030B4D440200000005000000080000000700000004128A410900000004022A4581000000080000000700000002128A7CFB00000002078000FE128A7D09022A458113E1C500000000000AD357870000000810D13CFC000000030000000913E201000AD357870000000910D13CFC00000003000000090000000000000004128A410900000004000000090F878D0307800104128A40FB078000FE000000070000000700000002128A7CFB00000002078000FE128A7D09022A4581000000080000000700000004000000080000000100000003"
theorem small_10337785_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10337785_left_root small_10337785_left_fuel small_10337785_left_count small_10337785_left_encoded = true := by
  decide +kernel
theorem small_10337785_left_covered : CoveredBy scale carrier boxes small_10337785_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10337785_left_root small_10337785_left_fuel small_10337785_left_count small_10337785_left_encoded small_10337785_left_checked

theorem cover_10337785 : CoveredBy scale carrier boxes root_10337785 := by
  apply coveredBy_split_literal root_10337785 small_10337785_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10337925 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_10337785_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10337925
#print axioms cover_10337785

def root_10337780 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10337780_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10337780_right_fuel : Nat := 1
def small_10337780_right_count : Nat := 1
def small_10337780_right_encoded : String := "00000001"
theorem small_10337780_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10337780_right_root small_10337780_right_fuel small_10337780_right_count small_10337780_right_encoded = true := by
  decide +kernel
theorem small_10337780_right_covered : CoveredBy scale carrier boxes small_10337780_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10337780_right_root small_10337780_right_fuel small_10337780_right_count small_10337780_right_encoded small_10337780_right_checked

theorem cover_10337780 : CoveredBy scale carrier boxes root_10337780 := by
  apply coveredBy_split_literal root_10337780 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10337785 small_10337780_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10337785
  · exact small_10337780_right_covered
#print axioms cover_10337780

def root_10337280 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10337280_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10337280_left_fuel : Nat := 29
def small_10337280_left_count : Nat := 239
def small_10337280_left_encoded : String := "0F34D102000000010CFD9C070F34D0FC00000007000000030F350CFC000000030C9A86FC0F878D0707800104128A40FB078000FE000000070000000800000002128A7CFB00000002078000FE128A7D09022A45810000000813E201000AD357830000000710D13D020DE7C9FC000000070E5FD907000000030000000700000001000000000000000400000008000000030F8751070000000307800104128A40FB078000FE128A7D09022A458113E1C500000000000AD3578310D10102000000010000000810D13D020B4D43FC10804D07064001040000000812FFACFB00000002000000080000000310801107000000030640010412FF70FB08C000FE11FC25090115234113F85900000000000BE879C3000000081011AD020AA6A27C0000000810ED71070000000305A00104133134FB096000FE000000070000000800000002133170FB000000020000000800000001000000070000000411FBE909000000040115234100000008000000070000000212FFACFB0000000208C000FE11FC25090115234113F85900000000000BE879C3000000081011AD020AA6A27C0000000810ED710700000003000000050000000113F895000BE879C31011710200000001000000071011AD020AA6A27C10EDAD0706E001040000000700000005000000030000000500000001000000000000000411FBE909000000040115234100000008000000050000000113E201000AD3578310D10102000000010000000710D13D020B4D43FC000000071080110700000003064001040000000712FFACFB0000000208C000FE0000000700000005000000010000000000000004128A410900000004022A458113E1C500000000000AD35783000000080000000813E201000AD357830000000710D13D020B4D43FC0000000700000005000000010000000000000002128A7CFB00000002078000FE128A7D09022A458113E1C500000000000AD3578310D10102000000010000000810D13D020B4D43FC10804D0708C001040000000811FC24FB000000020000000800000003108011070000000308C0010411FBE8FB08C000FE11FC25090115234113F85900000000000BE879C3000000080000000500000005000000040000000500000002000000050000000113E201000AD3578310D10102000000010B4D43FC10804D0700000007000000030000000510D13D020B4D43FC10804D0708C0010411FBE8FB08C000FE000000070000000500000002000000050000000300000005000000010000000000000004128A410900000004022A458113E1C500000000000AD35783000000080000000500000005"
theorem small_10337280_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10337280_left_root small_10337280_left_fuel small_10337280_left_count small_10337280_left_encoded = true := by
  decide +kernel
theorem small_10337280_left_covered : CoveredBy scale carrier boxes small_10337280_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10337280_left_root small_10337280_left_fuel small_10337280_left_count small_10337280_left_encoded small_10337280_left_checked

theorem cover_10337280 : CoveredBy scale carrier boxes root_10337280 := by
  apply coveredBy_split_literal root_10337280 small_10337280_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10337780 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_10337280_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10337780
#print axioms cover_10337280

def root_10337274 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10337274_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10337274_left_fuel : Nat := 1
def small_10337274_left_count : Nat := 1
def small_10337274_left_encoded : String := "00000000"
theorem small_10337274_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10337274_left_root small_10337274_left_fuel small_10337274_left_count small_10337274_left_encoded = true := by
  decide +kernel
theorem small_10337274_left_covered : CoveredBy scale carrier boxes small_10337274_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10337274_left_root small_10337274_left_fuel small_10337274_left_count small_10337274_left_encoded small_10337274_left_checked

theorem cover_10337274 : CoveredBy scale carrier boxes root_10337274 := by
  apply coveredBy_split_literal root_10337274 small_10337274_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10337280 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_10337274_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10337280
#print axioms cover_10337274

def root_10337273 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10337273_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10337273_right_fuel : Nat := 23
def small_10337273_right_count : Nat := 285
def small_10337273_right_encoded : String := "1386AD000CFD9C030F34D102000000010CFD9C07000000070F350CFC000000030C9A86FC0F878D0700000007000000030F8751070000000307800104128A40FB0000000700000002128A7CFB00000002078000FE128A7D09067ECE8112EA5900000000000AD3578310D10102000000010000000710D13D020B4D43FC10804D07000000070000000300000005000000010000000700000004128A410900000004000000050F350D020CFD9C070F34D0FC0C9A87020F875103000000010780010400000007128A7CFB00000002078000FE00000007128A410900000004067ECE81000000090000000700000007000000030F350CFC000000030C9A87020F875103000000010C9A86FC0F878D0707800104128A40FB078000FE128A7D09067ECE8112EA5900000000000B4D440210801103000000010DE7C9FC0E601507000000070000000300000009000000070000000700000004128A410900000004067ECE8112EA5900000000000B4D440200000009000000070000000700000002128A7CFB00000002078000FE128A7D09067ECE8112EA5900000000000B4D44020000000910804D030DE7C9FC0E6015070000000900000003000000090000000112EA95000B4D440200000009000000070000000000000004128A410900000004067ECE810000000900000009000000030F8751070000000307800104128A40FB078000FE128A7D09067ECE8112EA5900000000000B4D440210801103000000010B4D43FC10804D0700000009000000030000000910804D030B4D43FC10804D070640010412FF70FB08C000FE00000007000000060000000212FFACFB00000002000000090000000310801107000000030640010400000006000000050000000112EA95000B4D44020000000610804D0300000006000000010000000000000004128A410900000004067ECE8112EA5900000000000B4D440200000006000000050000000500000002128A7CFB00000002078000FE128A7D09067ECE8112EA5900000000000B4D440200000009000000050000000500000004000000050F878D030C9A86FC0F878D0707800104128A40FB0000000700000002128A7CFB00000002078000FE128A7D09067ECE8112EA5900000000000DE7CA020E5FD903000000010DE7C9FC0E60150700000007000000030E5FD9070000000308C001040000000700000009000000070000000700000004128A410900000004067ECE8112EA5900000000000DE7CA020E5FD90300000001000000090000000700000007000000030F8751070000000307800104128A40FB078000FE128A7D09067ECE8112EA5900000000000DE7CA020E5FD903000000010B4D43FC10804D0700000007000000031080110700000003064001040000000600000005000000070000000700000004128A410900000004067ECE8112EA5900000000000DE7CA020E5FD9030000000100000005000000050000000500000002128A7CFB00000002078000FE128A7D09067ECE8112EA5900000000000DE7CA020E5FD903000000010000000500000005000000050000000400000005000000010000000100000000"
theorem small_10337273_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10337273_right_root small_10337273_right_fuel small_10337273_right_count small_10337273_right_encoded = true := by
  decide +kernel
theorem small_10337273_right_covered : CoveredBy scale carrier boxes small_10337273_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10337273_right_root small_10337273_right_fuel small_10337273_right_count small_10337273_right_encoded small_10337273_right_checked

theorem cover_10337273 : CoveredBy scale carrier boxes root_10337273 := by
  apply coveredBy_split_literal root_10337273 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10337274 small_10337273_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10337274
  · exact small_10337273_right_covered
#print axioms cover_10337273

def root_10337268 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10337268_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10337268_right_fuel : Nat := 1
def small_10337268_right_count : Nat := 1
def small_10337268_right_encoded : String := "00000004"
theorem small_10337268_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10337268_right_root small_10337268_right_fuel small_10337268_right_count small_10337268_right_encoded = true := by
  decide +kernel
theorem small_10337268_right_covered : CoveredBy scale carrier boxes small_10337268_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10337268_right_root small_10337268_right_fuel small_10337268_right_count small_10337268_right_encoded small_10337268_right_checked

theorem cover_10337268 : CoveredBy scale carrier boxes root_10337268 := by
  apply coveredBy_split_literal root_10337268 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10337273 small_10337268_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10337273
  · exact small_10337268_right_covered
#print axioms cover_10337268

def root_10337267 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10337267_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10337267_right_fuel : Nat := 18
def small_10337267_right_count : Nat := 143
def small_10337267_right_encoded : String := "135D45090000000404548A0113867100000000000CFD9C030F34D102000000010CFD9C07000000080F350CFC000000030C9A86FC000000080F875107000000030780010400000008000000050F350D020CFD9C070F34D0FC00000008000000030F350CFC000000030C9A87020F875103000000010C9A86FC0F878D0707800104128A40FB0000000A0000000200000009000000030F8751070000000307800104128A40FB028000FE000000090000000500000002000000050F878D030C9A86FC0F878D0700000008000000030F8751070000000307800104128A40FB028000FE13D7ED09022A458113E1C5000000000000000005000000050000000400000005000000020000000500000001000000011386AD000CFD9C030F34D102000000010CFD9C07000000070F350CFC000000030C9A86FC0F878D0700000007000000030F87510700000003000000050F350D020CFD9C070F34D0FC0C9A87020F8751030000000107800104128A40FB0000000700000002128A7CFB00000002028000FE000000090000000800000007000000030F350CFC000000030C9A87020F875103000000010C9A86FC0F878D0707800104128A40FB028000FE13D7ED09067ECE810000000900000006000000040000000600000002128A7CFB00000002028000FE0000000900000005000000030F87510700000003000000050F878D030C9A86FC0F878D0707800104128A40FB0000000700000002128A7CFB0000000200000005000000030F8751070000000300000005000000010000000100000000"
theorem small_10337267_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10337267_right_root small_10337267_right_fuel small_10337267_right_count small_10337267_right_encoded = true := by
  decide +kernel
theorem small_10337267_right_covered : CoveredBy scale carrier boxes small_10337267_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10337267_right_root small_10337267_right_fuel small_10337267_right_count small_10337267_right_encoded small_10337267_right_checked

theorem cover_10337267 : CoveredBy scale carrier boxes root_10337267 := by
  apply coveredBy_split_literal root_10337267 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10337268 small_10337267_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10337268
  · exact small_10337267_right_covered
#print axioms cover_10337267

def root_10337261 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10337261_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10337261_left_fuel : Nat := 1
def small_10337261_left_count : Nat := 1
def small_10337261_left_encoded : String := "00000002"
theorem small_10337261_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10337261_left_root small_10337261_left_fuel small_10337261_left_count small_10337261_left_encoded = true := by
  decide +kernel
theorem small_10337261_left_covered : CoveredBy scale carrier boxes small_10337261_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10337261_left_root small_10337261_left_fuel small_10337261_left_count small_10337261_left_encoded small_10337261_left_checked

theorem cover_10337261 : CoveredBy scale carrier boxes root_10337261 := by
  apply coveredBy_split_literal root_10337261 small_10337261_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10337267 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_10337261_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10337267
#print axioms cover_10337261

def root_10334501 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10334501 : CoveredBy scale carrier boxes root_10334501 := by
  apply coveredBy_split_literal root_10334501 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3874.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10337261 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3874.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10337261
#print axioms cover_10334501

def root_10334495 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10334495_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10334495_left_fuel : Nat := 1
def small_10334495_left_count : Nat := 1
def small_10334495_left_encoded : String := "00000003"
theorem small_10334495_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10334495_left_root small_10334495_left_fuel small_10334495_left_count small_10334495_left_encoded = true := by
  decide +kernel
theorem small_10334495_left_covered : CoveredBy scale carrier boxes small_10334495_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10334495_left_root small_10334495_left_fuel small_10334495_left_count small_10334495_left_encoded small_10334495_left_checked

theorem cover_10334495 : CoveredBy scale carrier boxes root_10334495 := by
  apply coveredBy_split_literal root_10334495 small_10334495_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10334501 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10334495_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10334501
#print axioms cover_10334495

def root_10334477 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10334477_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10334477_left_fuel : Nat := 5
def small_10334477_left_count : Nat := 9
def small_10334477_left_encoded : String := "120700FC0500010400000007135D80FB00000002050000FE000000070000000800000003"
theorem small_10334477_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10334477_left_root small_10334477_left_fuel small_10334477_left_count small_10334477_left_encoded = true := by
  decide +kernel
theorem small_10334477_left_covered : CoveredBy scale carrier boxes small_10334477_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10334477_left_root small_10334477_left_fuel small_10334477_left_count small_10334477_left_encoded small_10334477_left_checked

theorem cover_10334477 : CoveredBy scale carrier boxes root_10334477 := by
  apply coveredBy_split_literal root_10334477 small_10334477_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10334495 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10334477_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10334495
#print axioms cover_10334477

def root_10334472 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10334472_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10334472_right_fuel : Nat := 1
def small_10334472_right_count : Nat := 1
def small_10334472_right_encoded : String := "00000001"
theorem small_10334472_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10334472_right_root small_10334472_right_fuel small_10334472_right_count small_10334472_right_encoded = true := by
  decide +kernel
theorem small_10334472_right_covered : CoveredBy scale carrier boxes small_10334472_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10334472_right_root small_10334472_right_fuel small_10334472_right_count small_10334472_right_encoded small_10334472_right_checked

theorem cover_10334472 : CoveredBy scale carrier boxes root_10334472 := by
  apply coveredBy_split_literal root_10334472 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10334477 small_10334472_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10334477
  · exact small_10334472_right_covered
#print axioms cover_10334472

def root_10334318 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10334318_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10334318_left_fuel : Nat := 21
def small_10334318_left_count : Nat := 73
def small_10334318_left_encoded : String := "120701020000000108A913070000000712073CFC0000000305000104135D44FB050000FE00000007135D4509000000040000000700000002135D80FB00000002050000FE135D810904548A01138671000000000004548A0313867102000000010CFD9C07000000070F350CFC000000030C9A86FC000000070F875107000000030780010400000007128A7CFB00000002000000081386AD020CFD9C07000000070F350CFC000000030C9A86FC0F878D0700000008000000030F8751070000000307800104128A40FB078000FE000000070000000700000002128A7CFB00000002078000FE128A7D09022A458100000008000000070000000400000008000000010000000700000004135D45090000000404548A0113867100000000000000000800000007"
theorem small_10334318_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10334318_left_root small_10334318_left_fuel small_10334318_left_count small_10334318_left_encoded = true := by
  decide +kernel
theorem small_10334318_left_covered : CoveredBy scale carrier boxes small_10334318_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10334318_left_root small_10334318_left_fuel small_10334318_left_count small_10334318_left_encoded small_10334318_left_checked

theorem cover_10334318 : CoveredBy scale carrier boxes root_10334318 := by
  apply coveredBy_split_literal root_10334318 small_10334318_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10334472 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10334318_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10334472
#print axioms cover_10334318

def root_10334312 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10334312_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10334312_left_fuel : Nat := 1
def small_10334312_left_count : Nat := 1
def small_10334312_left_encoded : String := "00000000"
theorem small_10334312_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10334312_left_root small_10334312_left_fuel small_10334312_left_count small_10334312_left_encoded = true := by
  decide +kernel
theorem small_10334312_left_covered : CoveredBy scale carrier boxes small_10334312_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10334312_left_root small_10334312_left_fuel small_10334312_left_count small_10334312_left_encoded small_10334312_left_checked

theorem cover_10334312 : CoveredBy scale carrier boxes root_10334312 := by
  apply coveredBy_split_literal root_10334312 small_10334312_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10334318 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10334312_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10334318
#print axioms cover_10334312

def root_10334311 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10334311_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10334311_right_fuel : Nat := 25
def small_10334311_right_count : Nat := 103
def small_10334311_right_encoded : String := "12073D0008A9130312070102000000010000000712073D0208A913070000000712073CFC0000000305000104135D44FB050000FE00000007135D4509000000040000000700000002135D80FB00000002050000FE135D81090CFD9C010F34D100000000000CFD9C030F34D10200000001000000070F350D020CFD9C07000000070F350CFC000000030C9A87020F875103000000010C9A86FC0F878D070780010400000007128A7CFB00000002078000FE00000007128A41090000000400000007000000030F875107000000030780010400000006128A7CFB00000002078000FE128A7D090AD35781000000090000000500000004000000050F878D030C9A86FC000000070F875107000000030780010400000007128A7CFB00000002078000FE000000070000000500000001000000010000000700000004135D4509000000040CFD9C010F34D100000000000CFD9C030F34D10200000001000000070F350D020CFD9C07000000070F350CFC000000030C9A8702000000060F878D030C9A86FC00000007000000050000000100000001000000070000000100000000"
theorem small_10334311_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10334311_right_root small_10334311_right_fuel small_10334311_right_count small_10334311_right_encoded = true := by
  decide +kernel
theorem small_10334311_right_covered : CoveredBy scale carrier boxes small_10334311_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10334311_right_root small_10334311_right_fuel small_10334311_right_count small_10334311_right_encoded small_10334311_right_checked

theorem cover_10334311 : CoveredBy scale carrier boxes root_10334311 := by
  apply coveredBy_split_literal root_10334311 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10334312 small_10334311_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10334312
  · exact small_10334311_right_covered
#print axioms cover_10334311

def root_10334305 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10334305_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10334305_left_fuel : Nat := 1
def small_10334305_left_count : Nat := 1
def small_10334305_left_encoded : String := "00000004"
theorem small_10334305_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10334305_left_root small_10334305_left_fuel small_10334305_left_count small_10334305_left_encoded = true := by
  decide +kernel
theorem small_10334305_left_covered : CoveredBy scale carrier boxes small_10334305_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10334305_left_root small_10334305_left_fuel small_10334305_left_count small_10334305_left_encoded small_10334305_left_checked

theorem cover_10334305 : CoveredBy scale carrier boxes root_10334305 := by
  apply coveredBy_split_literal root_10334305 small_10334305_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10334311 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10334305_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10334311
#print axioms cover_10334305

def root_10317453 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10317453 : CoveredBy scale carrier boxes root_10317453 := by
  apply coveredBy_split_literal root_10317453 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10317454 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10334305 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10317454
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10334305
#print axioms cover_10317453

def root_10317448 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317448_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317448_right_fuel : Nat := 1
def small_10317448_right_count : Nat := 1
def small_10317448_right_encoded : String := "00000003"
theorem small_10317448_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10317448_right_root small_10317448_right_fuel small_10317448_right_count small_10317448_right_encoded = true := by
  decide +kernel
theorem small_10317448_right_covered : CoveredBy scale carrier boxes small_10317448_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10317448_right_root small_10317448_right_fuel small_10317448_right_count small_10317448_right_encoded small_10317448_right_checked

theorem cover_10317448 : CoveredBy scale carrier boxes root_10317448 := by
  apply coveredBy_split_literal root_10317448 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10317453 small_10317448_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10317453
  · exact small_10317448_right_covered
#print axioms cover_10317448

def root_10342895 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10342895 : CoveredBy scale carrier boxes root_10342895 := by
  apply coveredBy_split_literal root_10342895 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3876.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3877.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3876.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3877.covered
#print axioms cover_10342895

def root_10342889 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342889_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342889_left_fuel : Nat := 1
def small_10342889_left_count : Nat := 1
def small_10342889_left_encoded : String := "00000004"
theorem small_10342889_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10342889_left_root small_10342889_left_fuel small_10342889_left_count small_10342889_left_encoded = true := by
  decide +kernel
theorem small_10342889_left_covered : CoveredBy scale carrier boxes small_10342889_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10342889_left_root small_10342889_left_fuel small_10342889_left_count small_10342889_left_encoded small_10342889_left_checked

theorem cover_10342889 : CoveredBy scale carrier boxes root_10342889 := by
  apply coveredBy_split_literal root_10342889 small_10342889_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10342895 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10342889_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10342895
#print axioms cover_10342889

def root_10342833 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342833_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342833_left_fuel : Nat := 9
def small_10342833_left_count : Nat := 27
def small_10342833_left_encoded : String := "120700FE05000104135D44FB050000FC135D810704548A011386710000000000000000090000000A000000030000000A00000002135D80FB00000002050000FC135D810704548A0113867100000000000CFD9C030000000A0000000A0000000A000000030000000A00000004"
theorem small_10342833_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10342833_left_root small_10342833_left_fuel small_10342833_left_count small_10342833_left_encoded = true := by
  decide +kernel
theorem small_10342833_left_covered : CoveredBy scale carrier boxes small_10342833_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10342833_left_root small_10342833_left_fuel small_10342833_left_count small_10342833_left_encoded small_10342833_left_checked

theorem cover_10342833 : CoveredBy scale carrier boxes root_10342833 := by
  apply coveredBy_split_literal root_10342833 small_10342833_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10342889 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10342833_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10342889
#print axioms cover_10342833

def root_10342828 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342828_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342828_right_fuel : Nat := 1
def small_10342828_right_count : Nat := 1
def small_10342828_right_encoded : String := "00000001"
theorem small_10342828_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10342828_right_root small_10342828_right_fuel small_10342828_right_count small_10342828_right_encoded = true := by
  decide +kernel
theorem small_10342828_right_covered : CoveredBy scale carrier boxes small_10342828_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10342828_right_root small_10342828_right_fuel small_10342828_right_count small_10342828_right_encoded small_10342828_right_checked

theorem cover_10342828 : CoveredBy scale carrier boxes root_10342828 := by
  apply coveredBy_split_literal root_10342828 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10342833 small_10342828_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10342833
  · exact small_10342828_right_covered
#print axioms cover_10342828

def root_10342714 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342714_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342714_left_fuel : Nat := 17
def small_10342714_left_count : Nat := 57
def small_10342714_left_encoded : String := "120701020000000108A913090000000A12073CFE0000000405000104135D44FB050000FC135D810704548A01138671000000000004548A03000000091386AD020CFD9C09000000090F350CFE000000040C9A86FE000000090F8751090000000402800104000000090000000A000000010000000A000000030000000A00000002135D80FB00000002050000FC135D810704548A01138671000000000004548A030000000A1386AD020CFD9C090000000A0F350CFE000000040C9A86FE0000000A0F87510900000004078001040000000A0000000A000000010000000A000000030000000A"
theorem small_10342714_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10342714_left_root small_10342714_left_fuel small_10342714_left_count small_10342714_left_encoded = true := by
  decide +kernel
theorem small_10342714_left_covered : CoveredBy scale carrier boxes small_10342714_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10342714_left_root small_10342714_left_fuel small_10342714_left_count small_10342714_left_encoded small_10342714_left_checked

theorem cover_10342714 : CoveredBy scale carrier boxes root_10342714 := by
  apply coveredBy_split_literal root_10342714 small_10342714_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10342828 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10342714_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10342828
#print axioms cover_10342714

def root_10342708 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342708_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342708_left_fuel : Nat := 1
def small_10342708_left_count : Nat := 1
def small_10342708_left_encoded : String := "00000000"
theorem small_10342708_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10342708_left_root small_10342708_left_fuel small_10342708_left_count small_10342708_left_encoded = true := by
  decide +kernel
theorem small_10342708_left_covered : CoveredBy scale carrier boxes small_10342708_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10342708_left_root small_10342708_left_fuel small_10342708_left_count small_10342708_left_encoded small_10342708_left_checked

theorem cover_10342708 : CoveredBy scale carrier boxes root_10342708 := by
  apply coveredBy_split_literal root_10342708 small_10342708_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10342714 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10342708_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10342714
#print axioms cover_10342708

def root_10342707 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342707_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342707_right_fuel : Nat := 20
def small_10342707_right_count : Nat := 97
def small_10342707_right_encoded : String := "12073D0008A9130312070102000000010000000A12073D0208A91309120700FE0000000A0000000412073CFE0000000405000104135D44FB050000FC135D81070CFD9C010F34D100000000000CFD9C030F34D102000000010000000A0F350D020CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A87020F87510300000001000000080F878D030000000A00000001000000010F350D000CFD9C030000000A0000000A0000000000000003135D4507000000030CFD9C010F34D100000000000000000A0000000600000002135D80FB00000002050000FC135D81070CFD9C010F34D100000000000CFD9C030F34D102000000010000000A0F350D020CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A87020F875103000000010C9A86FE000000080F87510900000004000000080F878D030000000A00000001000000010F350D000CFD9C030000000A0000000A0000000000000003135D4507000000030CFD9C010F34D100000000000000000A0000000A0000000100000000"
theorem small_10342707_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10342707_right_root small_10342707_right_fuel small_10342707_right_count small_10342707_right_encoded = true := by
  decide +kernel
theorem small_10342707_right_covered : CoveredBy scale carrier boxes small_10342707_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10342707_right_root small_10342707_right_fuel small_10342707_right_count small_10342707_right_encoded small_10342707_right_checked

theorem cover_10342707 : CoveredBy scale carrier boxes root_10342707 := by
  apply coveredBy_split_literal root_10342707 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10342708 small_10342707_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10342708
  · exact small_10342707_right_covered
#print axioms cover_10342707

def root_10342702 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342702_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342702_right_fuel : Nat := 1
def small_10342702_right_count : Nat := 1
def small_10342702_right_encoded : String := "00000004"
theorem small_10342702_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10342702_right_root small_10342702_right_fuel small_10342702_right_count small_10342702_right_encoded = true := by
  decide +kernel
theorem small_10342702_right_covered : CoveredBy scale carrier boxes small_10342702_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10342702_right_root small_10342702_right_fuel small_10342702_right_count small_10342702_right_encoded small_10342702_right_checked

theorem cover_10342702 : CoveredBy scale carrier boxes root_10342702 := by
  apply coveredBy_split_literal root_10342702 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10342707 small_10342702_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10342707
  · exact small_10342702_right_covered
#print axioms cover_10342702

def root_10342701 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10342701 : CoveredBy scale carrier boxes root_10342701 := by
  apply coveredBy_split_literal root_10342701 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10342702 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3878.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10342702
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3878.covered
#print axioms cover_10342701

def root_10342695 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342695_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342695_left_fuel : Nat := 1
def small_10342695_left_count : Nat := 1
def small_10342695_left_encoded : String := "00000003"
theorem small_10342695_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10342695_left_root small_10342695_left_fuel small_10342695_left_count small_10342695_left_encoded = true := by
  decide +kernel
theorem small_10342695_left_covered : CoveredBy scale carrier boxes small_10342695_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10342695_left_root small_10342695_left_fuel small_10342695_left_count small_10342695_left_encoded small_10342695_left_checked

theorem cover_10342695 : CoveredBy scale carrier boxes root_10342695 := by
  apply coveredBy_split_literal root_10342695 small_10342695_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10342701 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10342695_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10342701
#print axioms cover_10342695

def root_10317447 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10317447 : CoveredBy scale carrier boxes root_10317447 := by
  apply coveredBy_split_literal root_10317447 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10317448 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10342695 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10317448
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10342695
#print axioms cover_10317447

def root_10317442 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317442_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317442_right_fuel : Nat := 1
def small_10317442_right_count : Nat := 1
def small_10317442_right_encoded : String := "00000002"
theorem small_10317442_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10317442_right_root small_10317442_right_fuel small_10317442_right_count small_10317442_right_encoded = true := by
  decide +kernel
theorem small_10317442_right_covered : CoveredBy scale carrier boxes small_10317442_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10317442_right_root small_10317442_right_fuel small_10317442_right_count small_10317442_right_encoded small_10317442_right_checked

theorem cover_10317442 : CoveredBy scale carrier boxes root_10317442 := by
  apply coveredBy_split_literal root_10317442 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10317447 small_10317442_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10317447
  · exact small_10317442_right_covered
#print axioms cover_10317442

def root_10351063 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10351063 : CoveredBy scale carrier boxes root_10351063 := by
  apply coveredBy_split_literal root_10351063 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3879.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3880.root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3879.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3880.covered
#print axioms cover_10351063

def root_10351057 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10351057_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10351057_left_fuel : Nat := 1
def small_10351057_left_count : Nat := 1
def small_10351057_left_encoded : String := "00000004"
theorem small_10351057_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10351057_left_root small_10351057_left_fuel small_10351057_left_count small_10351057_left_encoded = true := by
  decide +kernel
theorem small_10351057_left_covered : CoveredBy scale carrier boxes small_10351057_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10351057_left_root small_10351057_left_fuel small_10351057_left_count small_10351057_left_encoded small_10351057_left_checked

theorem cover_10351057 : CoveredBy scale carrier boxes root_10351057 := by
  apply coveredBy_split_literal root_10351057 small_10351057_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10351063 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10351057_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10351063
#print axioms cover_10351057

def root_10350863 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10350863_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10350863_left_fuel : Nat := 17
def small_10350863_left_count : Nat := 89
def small_10350863_left_encoded : String := "120700FE04548A0113867100000000000CFD9C030F34D102000000010CFD9BFB0F350D040CFD9C070F34D0FC00000005000000030F350CFC000000030000000A000000020F34D10400000002000000060F350D020CFD9BFB0F350D040CFD9C070F34D0FC00000005000000030F350CFC0000000304548A09138670FE0000000A000000041386ACFE000000040C9A87020F875103000000010C9A87040F8750FB0C9A86FC000000050000000A00000002000000060F878D030000000A00000001000000020F34D104000000020CFD9C070000000600000006000000011386AD000CFD9C030F34D102000000010CFD9BFB0F350D040000000A000000020000000A0F350D020CFD9BFB0F350D040CFD9C070F34D0FC04548A09000000051386ACFE000000040C9A8702000000050000000A000000030F350CFC000000030000000A000000020F34D104000000020CFD9C070000000A0000000A000000010000000000000004"
theorem small_10350863_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10350863_left_root small_10350863_left_fuel small_10350863_left_count small_10350863_left_encoded = true := by
  decide +kernel
theorem small_10350863_left_covered : CoveredBy scale carrier boxes small_10350863_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10350863_left_root small_10350863_left_fuel small_10350863_left_count small_10350863_left_encoded small_10350863_left_checked

theorem cover_10350863 : CoveredBy scale carrier boxes root_10350863 := by
  apply coveredBy_split_literal root_10350863 small_10350863_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10351057 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10350863_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10351057
#print axioms cover_10350863

def root_10350857 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10350857_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10350857_left_fuel : Nat := 1
def small_10350857_left_count : Nat := 1
def small_10350857_left_encoded : String := "00000003"
theorem small_10350857_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10350857_left_root small_10350857_left_fuel small_10350857_left_count small_10350857_left_encoded = true := by
  decide +kernel
theorem small_10350857_left_covered : CoveredBy scale carrier boxes small_10350857_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10350857_left_root small_10350857_left_fuel small_10350857_left_count small_10350857_left_encoded small_10350857_left_checked

theorem cover_10350857 : CoveredBy scale carrier boxes root_10350857 := by
  apply coveredBy_split_literal root_10350857 small_10350857_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10350863 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10350857_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10350863
#print axioms cover_10350857

def root_10350369 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10350369_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10350369_left_fuel : Nat := 20
def small_10350369_left_count : Nat := 227
def small_10350369_left_encoded : String := "120700FC08A91309120700FE04548A0113867100000000000CFD9C03000000050F350D0200000005000000011386AD000CFD9C030F34D102000000010CFD9BFB000000050000000A0F350D020CFD9BFB000000050F34D104000000020000000600000001000000000000000412073CFE0000000404548A0113867100000000000CFD9C030F34D102000000010CFD9BFB0F350D0404548A07138670FC0CFD9C090000000500000007000000031386ACFC000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8704000000080F878CFB0000000200000006000000020F34D10400000002000000060F350D020CFD9BFB0F350D0404548A07138670FC0CFD9C09000000050F350CFE000000040C9A87020000000500000008000000031386ACFC000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87020F875103000000010C9A87040F8750FB0C9A86FE000000050F875109000000040000000600000002000000060F878D030C9A87040F8750FB0C9A86FE0000000500000008000000020000000600000001000000020F34D1040000000204548A070000000600000006000000011386AD000CFD9C030F34D102000000010CFD9BFB0F350D0404548A07000000071386ACFC000000030CFD9C090F34D0FE000000070000000400000007000000020F34D1040000000204548A07138670FC0CFD9C090F34D0FE000000060000000400000006000000031386ACFC000000030CFD9C090F34D0FE0000000600000004000000060F350D020CFD9BFB0F350D0404548A07138670FC0CFD9C090F34D0FE000000050000000400000007000000031386ACFC000000030CFD9C090F34D0FE0C9A8702000000050F878D030C9A8704000000050000000600000001000000040F350CFE000000040C9A87020F875103000000010C9A87040F8750FB0C9A86FE000000070F8751090000000400000007000000020F878CFB000000020C9A86FE000000060F87510900000004000000090F878D030C9A8704000000070F878CFB000000020C9A86FE000000070F875109000000040000000700000001000000020F34D1040000000204548A07138670FC0CFD9C090F34D0FE00000006000000040F350CFE000000040C9A87020000000900000006000000031386ACFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A87020F875103000000010000000600000006000000010000000000000003"
theorem small_10350369_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10350369_left_root small_10350369_left_fuel small_10350369_left_count small_10350369_left_encoded = true := by
  decide +kernel
theorem small_10350369_left_covered : CoveredBy scale carrier boxes small_10350369_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10350369_left_root small_10350369_left_fuel small_10350369_left_count small_10350369_left_encoded small_10350369_left_checked

theorem cover_10350369 : CoveredBy scale carrier boxes root_10350369 := by
  apply coveredBy_split_literal root_10350369 small_10350369_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10350857 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10350369_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10350857
#print axioms cover_10350369

def root_10350364 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10350364_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10350364_right_fuel : Nat := 1
def small_10350364_right_count : Nat := 1
def small_10350364_right_encoded : String := "00000002"
theorem small_10350364_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10350364_right_root small_10350364_right_fuel small_10350364_right_count small_10350364_right_encoded = true := by
  decide +kernel
theorem small_10350364_right_covered : CoveredBy scale carrier boxes small_10350364_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10350364_right_root small_10350364_right_fuel small_10350364_right_count small_10350364_right_encoded small_10350364_right_checked

theorem cover_10350364 : CoveredBy scale carrier boxes root_10350364 := by
  apply coveredBy_split_literal root_10350364 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10350369 small_10350364_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10350369
  · exact small_10350364_right_covered
#print axioms cover_10350364

def root_10350363 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10350363_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10350363_right_fuel : Nat := 16
def small_10350363_right_count : Nat := 95
def small_10350363_right_encoded : String := "120701040000000208A91307120700FC08A91309120700FE000000060000000412073CFE0000000404548A01000000061386AD000CFD9C030F34D10200000001000000060F350D02045489FB1386AD0400000006000000020000000600000001000000000000000312073CFC0000000308A91309120700FE04548A01000000060000000A0000000412073CFE0000000404548A0113867100000000000CFD9C030F34D10200000001000000060F350D02045489FB1386AD040CFD9C0700000006000000060000000200000006000000011386AD000CFD9C030F34D10200000001045489FB1386AD040CFD9C070F34D0FC00000006000000030F350CFC000000030000000A000000021386710400000002000000060F350D02045489FB1386AD040CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE00000004000000050000000213867104000000020CFD9C070F34D0FC0000000600000003000000060000000100000000"
theorem small_10350363_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10350363_right_root small_10350363_right_fuel small_10350363_right_count small_10350363_right_encoded = true := by
  decide +kernel
theorem small_10350363_right_covered : CoveredBy scale carrier boxes small_10350363_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10350363_right_root small_10350363_right_fuel small_10350363_right_count small_10350363_right_encoded small_10350363_right_checked

theorem cover_10350363 : CoveredBy scale carrier boxes root_10350363 := by
  apply coveredBy_split_literal root_10350363 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10350364 small_10350363_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10350364
  · exact small_10350363_right_covered
#print axioms cover_10350363

def root_10350358 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10350358_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10350358_right_fuel : Nat := 1
def small_10350358_right_count : Nat := 1
def small_10350358_right_encoded : String := "00000001"
theorem small_10350358_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10350358_right_root small_10350358_right_fuel small_10350358_right_count small_10350358_right_encoded = true := by
  decide +kernel
theorem small_10350358_right_covered : CoveredBy scale carrier boxes small_10350358_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10350358_right_root small_10350358_right_fuel small_10350358_right_count small_10350358_right_encoded small_10350358_right_checked

theorem cover_10350358 : CoveredBy scale carrier boxes root_10350358 := by
  apply coveredBy_split_literal root_10350358 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10350363 small_10350358_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10350363
  · exact small_10350358_right_covered
#print axioms cover_10350358

def root_10349328 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10349328_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10349328_left_fuel : Nat := 29
def small_10349328_left_count : Nat := 481
def small_10349328_left_encoded : String := "120701020000000108A912FB12073D0408A91307120700FC08A91309120700FE04548A01000000051386AD0000000005000000000000000412073CFE0000000404548A01138671000000000004548A0313867102000000010CFD9BFB0F350D0404548A07000000071386ACFC000000030CFD9C090F34D0FE000000050000000400000007000000020F34D1040000000204548A0700000008000000061386AD020CFD9BFB0F350D0404548A07000000071386ACFC000000030CFD9C090F34D0FE000000050000000400000007000000020F34D1040000000204548A070000000600000006000000011386AD0004548A0313867102000000010CFD9BFB000000070F34D1040000000204548A07000000071386ACFC000000030CFD9C090F34D0FE0000000600000004000000071386AD020CFD9BFB0F350D0400000007000000020F34D1040000000204548A07138670FC00000007000000031386ACFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FE000000060000000800000001000000000000000312073CFC0000000308A91309120700FE04548A01138671000000000004548A0313867102000000010CFD9BFB0F350D040000000A000000020000000A1386AD020CFD9BFB0F350D040000000A000000020000000A000000010000000A0000000412073CFE0000000404548A01138671000000000004548A0313867102000000010CFD9BFB0F350D040CFD9C070F34D0FC0CFD9C090F34D0FE0C9A87040000000500000006000000040F350CFE000000040C9A87040F8750FB00000007000000020F878CFB000000020C9A86FE0000000600000008000000030F350CFC000000030CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A87040F8750FB0C9A86FC0F878D070C9A86FE0F878D090000000A000000040F87510900000004022A45810000000800000007000000030000000A000000020F878CFB000000020C9A86FC0F878D070C9A86FE000000060F8751090000000400000006000000030000000A000000020F34D104000000020CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090000000A000000061386AD020CFD9BFB0F350D040CFD9C070F34D0FC0CFD9C090F34D0FE0C9A87040F8750FB000000050000000200000006000000040F350CFE000000040C9A87040F8750FB0C9A86FE0000000700000008000000020F878CFB0000000200000006000000030F350CFC000000030CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A87040F8750FB0C9A86FC0F878D070C9A86FE0F878D09022A4581000000060000000A000000040F87510900000004022A45810000000613E20100067ECE8312EA5902000000010000000712EA95020B4D440400000007000000060000000100000000000000030F875107000000030C9A86FE0000000A0F87510900000004022A458113E1C50000000000067ECE830000000A000000060000000A000000020F878CFB000000020C9A86FC000000060F875107000000030C9A86FE000000060F8751090000000400000005000000020F34D104000000020CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090000000A00000006000000011386AD0004548A0313867102000000010CFD9BFB0F350D040CFD9C070F34D0FC0CFD9C090000000A00000007000000030F350CFC000000030CFD9C090000000A0F350CFE000000040C9A87040000000A0F878CFB000000020000000A000000020F34D104000000020CFD9C070F34D0FC0CFD9C090000000A0F350CFE000000040C9A86FE000000060F87510900000004067ECE810000000600000007000000030F350CFC000000030000000A1386AD020CFD9BFB0F350D040CFD9C070F34D0FC0CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A8704000000070F878CFB000000020C9A86FE000000070F8751090000000400000007000000030F350CFC000000030CFD9C090000000A0F350CFE000000040C9A87040F8750FB0C9A86FC0F878D070000000A000000030000000A000000020F878CFB000000020C9A86FC0F878D070000000A000000030000000A000000020F34D104000000020CFD9C070F34D0FC0CFD9C090000000A0F350CFE000000040C9A86FE000000060F8751090000000400000006000000030F350CFC000000030000000A000000010000000000000002120701040000000208A91307120700FC08A91309120700FE000000060000000412073CFE0000000404548A01000000061386AD0004548A031386710200000001045489FB1386AD0404548A07138670FC000000060000000300000006000000020000000600000006000000000000000312073CFC0000000308A91309120700FE04548A01000000060000000A0000000412073CFE0000000404548A01138671000000000004548A03138671020000000100000006000000061386AD0004548A031386710200000001045489FB1386AD040CFD9C070F34D0FC00000006000000030000000A0000000213867104000000020CFD9C070F34D0FC0000000600000003000000061386AD02045489FB1386AD040CFD9C070F34D0FC00000006000000030000000A000000020000000A0000000100000000"
theorem small_10349328_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10349328_left_root small_10349328_left_fuel small_10349328_left_count small_10349328_left_encoded = true := by
  decide +kernel
theorem small_10349328_left_covered : CoveredBy scale carrier boxes small_10349328_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10349328_left_root small_10349328_left_fuel small_10349328_left_count small_10349328_left_encoded small_10349328_left_checked

theorem cover_10349328 : CoveredBy scale carrier boxes root_10349328 := by
  apply coveredBy_split_literal root_10349328 small_10349328_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10350358 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10349328_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10350358
#print axioms cover_10349328

def root_10349322 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10349322_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10349322_left_fuel : Nat := 1
def small_10349322_left_count : Nat := 1
def small_10349322_left_encoded : String := "00000000"
theorem small_10349322_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10349322_left_root small_10349322_left_fuel small_10349322_left_count small_10349322_left_encoded = true := by
  decide +kernel
theorem small_10349322_left_covered : CoveredBy scale carrier boxes small_10349322_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10349322_left_root small_10349322_left_fuel small_10349322_left_count small_10349322_left_encoded small_10349322_left_checked

theorem cover_10349322 : CoveredBy scale carrier boxes root_10349322 := by
  apply coveredBy_split_literal root_10349322 small_10349322_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10349328 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10349322_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10349328
#print axioms cover_10349322

def root_10349321 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10349321 : CoveredBy scale carrier boxes root_10349321 := by
  apply coveredBy_split_literal root_10349321 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10349322 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3881.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10349322
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3881.covered
#print axioms cover_10349321

def root_10349316 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10349316_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10349316_right_fuel : Nat := 1
def small_10349316_right_count : Nat := 1
def small_10349316_right_encoded : String := "00000004"
theorem small_10349316_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10349316_right_root small_10349316_right_fuel small_10349316_right_count small_10349316_right_encoded = true := by
  decide +kernel
theorem small_10349316_right_covered : CoveredBy scale carrier boxes small_10349316_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10349316_right_root small_10349316_right_fuel small_10349316_right_count small_10349316_right_encoded small_10349316_right_checked

theorem cover_10349316 : CoveredBy scale carrier boxes root_10349316 := by
  apply coveredBy_split_literal root_10349316 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10349321 small_10349316_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10349321
  · exact small_10349316_right_covered
#print axioms cover_10349316

def root_10349315 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10349315 : CoveredBy scale carrier boxes root_10349315 := by
  apply coveredBy_split_literal root_10349315 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10349316 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3882.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10349316
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3882.covered
#print axioms cover_10349315

def root_10349310 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10349310_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10349310_right_fuel : Nat := 1
def small_10349310_right_count : Nat := 1
def small_10349310_right_encoded : String := "00000003"
theorem small_10349310_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10349310_right_root small_10349310_right_fuel small_10349310_right_count small_10349310_right_encoded = true := by
  decide +kernel
theorem small_10349310_right_covered : CoveredBy scale carrier boxes small_10349310_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10349310_right_root small_10349310_right_fuel small_10349310_right_count small_10349310_right_encoded small_10349310_right_checked

theorem cover_10349310 : CoveredBy scale carrier boxes root_10349310 := by
  apply coveredBy_split_literal root_10349310 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10349315 small_10349310_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10349315
  · exact small_10349310_right_covered
#print axioms cover_10349310

def root_10349309 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10349309_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10349309_right_fuel : Nat := 33
def small_10349309_right_count : Nat := 477
def small_10349309_right_encoded : String := "1151E907000000030A0000FE1152250908A91301120701000000000008A91303120701020000000108A912FB12073D0408A913090000000A12073CFE00000004050000FC135D810704548A01138671000000000004548A0313867102000000010CFD9BFB0F350D040000000A000000020000000A1386AD020CFD9BFB0F350D040CFD9C090000000A0F350CFE000000040C9A87040000000A0000000A000000020000000A000000011386AD0004548A030000000A0000000A00000000000000030000000A000000020000000A12073D0208A912FB12073D0408A91309120700FE050000FC135D810704548A0113867100000000000CFD9C030000000A0000000A0000000A000000030000000A0000000412073CFE00000004050000FC135D810704548A0113867100000000000CFD9C030F34D102000000010CFD9BFB0F350D040CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A87040F8750FB0C9A86FE0F878D090000000A000000040F87510900000004078000FC128A7D07022A458113E1C500000000000AD3578310D10102000000010000000500000005000000050000000300000005000000020F878CFB000000020C9A86FE0000000A00000005000000020F34D104000000020000000A0F350D020CFD9BFB0F350D040CFD9C090F34D0FE0C9A87020F875103000000010C9A87040F8750FB078000FC128A7D07022A458100000007000000080000000300000008000000020F878CFB00000002000000070F878D030000000A00000001000000040F350CFE000000040C9A87020F875103000000010C9A87040F8750FB0C9A86FE0F878D09078000FC128A7D07022A458100000007000000070000000300000007000000040F8751090000000400000007000000020F878CFB00000002000000070F878D030C9A87040F8750FB0C9A86FE0F878D09078000FC128A7D07022A458113E1C500000000000DE7CA0200000007000000060000000A000000030000000A000000040F87510900000004078000FC128A7D07022A458113E1C5000000000000000005000000050000000300000005000000020F878CFB000000020C9A86FE0F878D09078000FC0000000700000005000000040000000500000001000000020F34D104000000020CFD9C09000000070F350CFE0000000400000005000000011386AD000CFD9C030F34D102000000010CFD9BFB0F350D040000000A000000020000000A0F350D020CFD9BFB0F350D040CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A87020F875103000000010C9A87040F8750FB0C9A86FE0F878D0900000008000000040F8751090000000400000005000000020F878CFB00000002000000050F878D030C9A87040F8750FB0C9A86FE0000000A0F8751090000000400000005000000020F878CFB000000020000000500000001000000020F34D104000000020CFD9C090000000A00000005000000010000000000000003135D45070000000304548A0113867100000000000CFD9C030F34D102000000010CFD9BFB0F350D040000000A000000020000000A0F350D020CFD9BFB0F350D040CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A87020000000700000005000000020F34D1040000000200000005000000011386AD000CFD9C030F34D102000000010000000A0F350D020CFD9BFB0F350D040CFD9C090000000A0F350CFE0000000400000005000000020000000A000000010000000000000002120701040000000208A913090000000A12073CFE00000004050000FC135D810704548A011386710000000000000000071386AD000CFD9C030000000A000000050000000000000003000000050000000112073D0008A9130312070102000000010000000A12073D0208A912FB12073D0408A91309120700FE0000000A0000000412073CFE00000004050000FC135D81070CFD9C010F34D100000000000CFD9C030F34D102000000010000000A0F350D020CFD9BFB0F350D040CFD9C090000000A0F350CFE000000040C9A87020F875103000000010C9A87040000000A000000050000000A000000020000000A000000010F350D000CFD9C030000000A0000000A0000000000000003135D4507000000030CFD9C010F34D100000000000000000A0000000A0000000212070104000000020000000A0000000100000000000000041151E9090000000408A91301120701000000000008A9130312070102000000010000000512073D0208A912FB12073D04050000FC135D8107050000FE135D810904548A0113867100000000000CFD9C030F34D1020000000100000005000000051386AD000CFD9C030F34D102000000010000000500000005000000000000000400000005000000030000000500000002000000050000000112073D0008A91303120701020000000108A912FB12073D04050000FC135D8107050000FE135D81090CFD9C010F34D10000000000000000050000000A00000004000000050000000300000005000000020000000512073D0208A912FB12073D04050000FC135D8107050000FE135D81090CFD9C010F34D1000000000000000005000000050000000400000005000000030000000500000002000000050000000100000000"
theorem small_10349309_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10349309_right_root small_10349309_right_fuel small_10349309_right_count small_10349309_right_encoded = true := by
  decide +kernel
theorem small_10349309_right_covered : CoveredBy scale carrier boxes small_10349309_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10349309_right_root small_10349309_right_fuel small_10349309_right_count small_10349309_right_encoded small_10349309_right_checked

theorem cover_10349309 : CoveredBy scale carrier boxes root_10349309 := by
  apply coveredBy_split_literal root_10349309 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10349310 small_10349309_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10349310
  · exact small_10349309_right_covered
#print axioms cover_10349309

def root_10349303 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10349303_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10349303_left_fuel : Nat := 1
def small_10349303_left_count : Nat := 1
def small_10349303_left_encoded : String := "00000002"
theorem small_10349303_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10349303_left_root small_10349303_left_fuel small_10349303_left_count small_10349303_left_encoded = true := by
  decide +kernel
theorem small_10349303_left_covered : CoveredBy scale carrier boxes small_10349303_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10349303_left_root small_10349303_left_fuel small_10349303_left_count small_10349303_left_encoded small_10349303_left_checked

theorem cover_10349303 : CoveredBy scale carrier boxes root_10349303 := by
  apply coveredBy_split_literal root_10349303 small_10349303_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10349309 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_10349303_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10349309
#print axioms cover_10349303

def root_10317441 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10317441 : CoveredBy scale carrier boxes root_10317441 := by
  apply coveredBy_split_literal root_10317441 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10317442 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10349303 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10317442
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10349303
#print axioms cover_10317441

def root_10317436 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317436_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317436_right_fuel : Nat := 1
def small_10317436_right_count : Nat := 1
def small_10317436_right_encoded : String := "00000001"
theorem small_10317436_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10317436_right_root small_10317436_right_fuel small_10317436_right_count small_10317436_right_encoded = true := by
  decide +kernel
theorem small_10317436_right_covered : CoveredBy scale carrier boxes small_10317436_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10317436_right_root small_10317436_right_fuel small_10317436_right_count small_10317436_right_encoded small_10317436_right_checked

theorem cover_10317436 : CoveredBy scale carrier boxes root_10317436 := by
  apply coveredBy_split_literal root_10317436 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10317441 small_10317436_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10317441
  · exact small_10317436_right_covered
#print axioms cover_10317436

def root_10305822 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10305822 : CoveredBy scale carrier boxes root_10305822 := by
  apply coveredBy_split_literal root_10305822 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0242.root_10305823 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10317436 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0242.cover_10305823
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10317436
#print axioms cover_10305822

def root_10305817 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10305817_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10305817_right_fuel : Nat := 1
def small_10305817_right_count : Nat := 1
def small_10305817_right_encoded : String := "00000000"
theorem small_10305817_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10305817_right_root small_10305817_right_fuel small_10305817_right_count small_10305817_right_encoded = true := by
  decide +kernel
theorem small_10305817_right_covered : CoveredBy scale carrier boxes small_10305817_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10305817_right_root small_10305817_right_fuel small_10305817_right_count small_10305817_right_encoded small_10305817_right_checked

theorem cover_10305817 : CoveredBy scale carrier boxes root_10305817 := by
  apply coveredBy_split_literal root_10305817 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10305822 small_10305817_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10305822
  · exact small_10305817_right_covered
#print axioms cover_10305817

def root_10303735 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10303735 : CoveredBy scale carrier boxes root_10303735 := by
  apply coveredBy_split_literal root_10303735 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3863.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10305817 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3863.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10305817
#print axioms cover_10303735

def root_10299521 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10299521 : CoveredBy scale carrier boxes root_10299521 := by
  apply coveredBy_split_literal root_10299521 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0242.root_10299522 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10303735 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0242.cover_10299522
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10303735
#print axioms cover_10299521

def root_10362578 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10362578 : CoveredBy scale carrier boxes root_10362578 := by
  apply coveredBy_split_literal root_10362578 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3884.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3885.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3884.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3885.covered
#print axioms cover_10362578

def root_10360282 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10360282 : CoveredBy scale carrier boxes root_10360282 := by
  apply coveredBy_split_literal root_10360282 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3883.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10362578 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3883.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10362578
#print axioms cover_10360282

def root_10299520 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10299520 : CoveredBy scale carrier boxes root_10299520 := by
  apply coveredBy_split_literal root_10299520 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10299521 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10360282 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10299521
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10360282
#print axioms cover_10299520

def root_10282844 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10282844 : CoveredBy scale carrier boxes root_10282844 := by
  apply coveredBy_split_literal root_10282844 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0242.root_10282845 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10299520 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0242.cover_10282845
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10299520
#print axioms cover_10282844

def root_10366924 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10366924 : CoveredBy scale carrier boxes root_10366924 := by
  apply coveredBy_split_literal root_10366924 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3886.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3887.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3886.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3887.covered
#print axioms cover_10366924

def root_10366923 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10366923 : CoveredBy scale carrier boxes root_10366923 := by
  apply coveredBy_split_literal root_10366923 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10366924 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3888.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10366924
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3888.covered
#print axioms cover_10366923

def root_10366922 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10366922 : CoveredBy scale carrier boxes root_10366922 := by
  apply coveredBy_split_literal root_10366922 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10366923 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3889.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10366923
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3889.covered
#print axioms cover_10366922

def root_10379208 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10379208 : CoveredBy scale carrier boxes root_10379208 := by
  apply coveredBy_split_literal root_10379208 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3891.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3892.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3891.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3892.covered
#print axioms cover_10379208

def root_10379203 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10379203_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10379203_right_fuel : Nat := 1
def small_10379203_right_count : Nat := 1
def small_10379203_right_encoded : String := "00000000"
theorem small_10379203_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10379203_right_root small_10379203_right_fuel small_10379203_right_count small_10379203_right_encoded = true := by
  decide +kernel
theorem small_10379203_right_covered : CoveredBy scale carrier boxes small_10379203_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10379203_right_root small_10379203_right_fuel small_10379203_right_count small_10379203_right_encoded small_10379203_right_checked

theorem cover_10379203 : CoveredBy scale carrier boxes root_10379203 := by
  apply coveredBy_split_literal root_10379203 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10379208 small_10379203_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10379208
  · exact small_10379203_right_covered
#print axioms cover_10379203

def root_10377213 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10377213 : CoveredBy scale carrier boxes root_10377213 := by
  apply coveredBy_split_literal root_10377213 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3890.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10379203 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3890.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10379203
#print axioms cover_10377213

def root_10377212 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10377212 : CoveredBy scale carrier boxes root_10377212 := by
  apply coveredBy_split_literal root_10377212 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10377213 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3893.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10377213
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3893.covered
#print axioms cover_10377212

def root_10377211 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10377211 : CoveredBy scale carrier boxes root_10377211 := by
  apply coveredBy_split_literal root_10377211 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10377212 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3894.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10377212
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3894.covered
#print axioms cover_10377211

def root_10366921 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10366921 : CoveredBy scale carrier boxes root_10366921 := by
  apply coveredBy_split_literal root_10366921 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10366922 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10377211 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10366922
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10377211
#print axioms cover_10366921

def root_10282843 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10282843 : CoveredBy scale carrier boxes root_10282843 := by
  apply coveredBy_split_literal root_10282843 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10282844 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10366921 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10282844
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10366921
#print axioms cover_10282843

def root_10387379 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10387379 : CoveredBy scale carrier boxes root_10387379 := by
  apply coveredBy_split_literal root_10387379 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3895.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3896.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3895.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3896.covered
#print axioms cover_10387379

def root_10387374 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10387374_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10387374_right_fuel : Nat := 1
def small_10387374_right_count : Nat := 1
def small_10387374_right_encoded : String := "00000002"
theorem small_10387374_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10387374_right_root small_10387374_right_fuel small_10387374_right_count small_10387374_right_encoded = true := by
  decide +kernel
theorem small_10387374_right_covered : CoveredBy scale carrier boxes small_10387374_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10387374_right_root small_10387374_right_fuel small_10387374_right_count small_10387374_right_encoded small_10387374_right_checked

theorem cover_10387374 : CoveredBy scale carrier boxes root_10387374 := by
  apply coveredBy_split_literal root_10387374 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10387379 small_10387374_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10387379
  · exact small_10387374_right_covered
#print axioms cover_10387374

def root_10387190 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10387190_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10387190_left_fuel : Nat := 16
def small_10387190_left_count : Nat := 87
def small_10387190_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0000FE115224FF0000000408A91303120701020000000108A912FD00000009120700FC08A912FF12073CFE00000004050001000000000500000006000000090000000312073D0208A912FD12073CFC0000000308A912FF00000006120700FE0000000600000004120700FC08A912FF000000060000000900000003000000011151E8FF08A91303120701020000000108A912FD12073CFC0000000305000100135D4501000000000500010400000005135D8105050000FE00000005135D44FF00000006000000040000000200000006120700FC0500010000000005000000060000000312073D0208A912FD00000006120700FC000000060000000300000001000000041151E8FD0A0000FE115224FF0000000408A913030000000912073D0208A912FF00000006120700FE0000000600000004000000011151E8FF000000060000000400000003"
theorem small_10387190_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10387190_left_root small_10387190_left_fuel small_10387190_left_count small_10387190_left_encoded = true := by
  decide +kernel
theorem small_10387190_left_covered : CoveredBy scale carrier boxes small_10387190_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10387190_left_root small_10387190_left_fuel small_10387190_left_count small_10387190_left_encoded small_10387190_left_checked

theorem cover_10387190 : CoveredBy scale carrier boxes root_10387190 := by
  apply coveredBy_split_literal root_10387190 small_10387190_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10387374 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_10387190_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10387374
#print axioms cover_10387190

def root_10387185 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10387185_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10387185_right_fuel : Nat := 1
def small_10387185_right_count : Nat := 1
def small_10387185_right_encoded : String := "00000001"
theorem small_10387185_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10387185_right_root small_10387185_right_fuel small_10387185_right_count small_10387185_right_encoded = true := by
  decide +kernel
theorem small_10387185_right_covered : CoveredBy scale carrier boxes small_10387185_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10387185_right_root small_10387185_right_fuel small_10387185_right_count small_10387185_right_encoded small_10387185_right_checked

theorem cover_10387185 : CoveredBy scale carrier boxes root_10387185 := by
  apply coveredBy_split_literal root_10387185 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10387190 small_10387185_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10387190
  · exact small_10387185_right_covered
#print axioms cover_10387185

def root_10386967 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10386967_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10386967_left_fuel : Nat := 18
def small_10386967_left_count : Nat := 101
def small_10386967_left_encoded : String := "1151E903000000010A0001041151E905000000020A0000FC115224FD000000030A0000FE000000061151E8FF00000006000000041151E8FD0000000600000003115225050A0000FC115224FD000000030A0000FE115224FF0000000408A91305120701040000000208A912FD12073CFC0000000308A912FF0000000A120700FE050001000000000500000006000000040000000A12073D0408A912FD12073CFC0000000308A912FF00000006120700FE0000000600000004120700FC0000000A00000003000000021151E8FF08A913050000000A12073D0408A912FD00000006120700FC000000060000000300000002000000041151E8FD0A0000FE115224FF0000000408A91305120701040000000208A912FF12073CFE0000000405000100135D4501000000000500010200000005135D8103050000FC00000005135D44FD00000006000000030000000100000006120700FE0500010000000005000000060000000412073D0408A912FF00000006120700FE0000000600000004000000021151E8FF00000006000000040000000300000002"
theorem small_10386967_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10386967_left_root small_10386967_left_fuel small_10386967_left_count small_10386967_left_encoded = true := by
  decide +kernel
theorem small_10386967_left_covered : CoveredBy scale carrier boxes small_10386967_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10386967_left_root small_10386967_left_fuel small_10386967_left_count small_10386967_left_encoded small_10386967_left_checked

theorem cover_10386967 : CoveredBy scale carrier boxes root_10386967 := by
  apply coveredBy_split_literal root_10386967 small_10386967_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10387185 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_10386967_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10387185
#print axioms cover_10386967

def root_10386961 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10386961_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10386961_left_fuel : Nat := 1
def small_10386961_left_count : Nat := 1
def small_10386961_left_encoded : String := "00000000"
theorem small_10386961_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10386961_left_root small_10386961_left_fuel small_10386961_left_count small_10386961_left_encoded = true := by
  decide +kernel
theorem small_10386961_left_covered : CoveredBy scale carrier boxes small_10386961_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10386961_left_root small_10386961_left_fuel small_10386961_left_count small_10386961_left_encoded small_10386961_left_checked

theorem cover_10386961 : CoveredBy scale carrier boxes root_10386961 := by
  apply coveredBy_split_literal root_10386961 small_10386961_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.root_10386967 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10386961_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243.cover_10386967
#print axioms cover_10386961

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0243
